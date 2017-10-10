; ModuleID = '../bin/sequencer.marked.ll'
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
@.str.7 = private unnamed_addr constant [41 x i8] c"ERROR: sequence length != actual length\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"copyPtr <= (sequence + sequenceLength)\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"sequence != NULL\00", align 1
@"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run0_vi" = external global i64
@"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run0_lsup" = external global i64
@"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run0_granularity" = external global i64
@"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run1_vi" = external global i64
@"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run1_lsup" = external global i64
@"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run1_granularity" = external global i64

; Function Attrs: nounwind uwtable
define %struct.sequencer* @sequencer_alloc(i64 %geneLength, i64 %segmentLength, %struct.segments* %segmentsPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = sub nsw i64 %geneLength, %segmentLength
  %2 = add nsw i64 %1, 1
  %3 = call noalias i8* @malloc(i64 64) #6
  %4 = bitcast i8* %3 to %struct.sequencer*
  %5 = icmp eq %struct.sequencer* %4, null
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  br label %91

; <label>:7                                       ; preds = %0
  %8 = call %struct.hashtable* @hashtable_alloc(i64 %geneLength, i64 (i8*)* @hashSegment, i64 (%struct.pair*, %struct.pair*)* @compareSegment, i64 -1, i64 -1)
  %9 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 2
  store %struct.hashtable* %8, %struct.hashtable** %9, align 8
  %10 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 2
  %11 = load %struct.hashtable*, %struct.hashtable** %10, align 8
  %12 = icmp eq %struct.hashtable* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %7
  br label %91

; <label>:14                                      ; preds = %7
  %15 = mul i64 %2, 16
  %16 = call noalias i8* @malloc(i64 %15) #6
  %17 = bitcast i8* %16 to %struct.endInfoEntry*
  %18 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 3
  store %struct.endInfoEntry* %17, %struct.endInfoEntry** %18, align 8
  %19 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 3
  br label %20

; <label>:20                                      ; preds = %27, %14
  %i.0 = phi i64 [ 0, %14 ], [ %28, %27 ]
  %21 = icmp slt i64 %i.0, %2
  br i1 %21, label %22, label %29

; <label>:22                                      ; preds = %20
  %23 = load %struct.endInfoEntry*, %struct.endInfoEntry** %19, align 8
  %24 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %23, i64 %i.0
  %25 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %24, i32 0, i32 0
  store i64 1, i64* %25, align 8
  %26 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %24, i32 0, i32 1
  store i64 1, i64* %26, align 8
  br label %27

; <label>:27                                      ; preds = %22
  %28 = add nsw i64 %i.0, 1
  br label %20

; <label>:29                                      ; preds = %20
  %30 = mul i64 %segmentLength, 8
  %31 = call noalias i8* @malloc(i64 %30) #6
  %32 = bitcast i8* %31 to %struct.table**
  %33 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 4
  store %struct.table** %32, %struct.table*** %33, align 8
  %34 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 4
  %35 = load %struct.table**, %struct.table*** %34, align 8
  %36 = icmp eq %struct.table** %35, null
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %29
  br label %91

; <label>:38                                      ; preds = %29
  %39 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 4
  %40 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 4
  br label %41

; <label>:41                                      ; preds = %53, %38
  %i.1 = phi i64 [ 1, %38 ], [ %54, %53 ]
  %42 = icmp slt i64 %i.1, %segmentLength
  br i1 %42, label %43, label %55

; <label>:43                                      ; preds = %41
  %44 = call %struct.table* @table_alloc(i64 %geneLength, i64 (i8*, i8*)* null)
  %45 = load %struct.table**, %struct.table*** %39, align 8
  %46 = getelementptr inbounds %struct.table*, %struct.table** %45, i64 %i.1
  store %struct.table* %44, %struct.table** %46, align 8
  %47 = load %struct.table**, %struct.table*** %40, align 8
  %48 = getelementptr inbounds %struct.table*, %struct.table** %47, i64 %i.1
  %49 = load %struct.table*, %struct.table** %48, align 8
  %50 = icmp eq %struct.table* %49, null
  br i1 %50, label %51, label %52

; <label>:51                                      ; preds = %43
  br label %91

; <label>:52                                      ; preds = %43
  br label %53

; <label>:53                                      ; preds = %52
  %54 = add nsw i64 %i.1, 1
  br label %41

; <label>:55                                      ; preds = %41
  %56 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 7
  store i64 %segmentLength, i64* %56, align 8
  %57 = mul i64 %2, 64
  %58 = call noalias i8* @malloc(i64 %57) #6
  %59 = bitcast i8* %58 to %struct.constructEntry*
  %60 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 5
  store %struct.constructEntry* %59, %struct.constructEntry** %60, align 8
  %61 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 5
  %62 = load %struct.constructEntry*, %struct.constructEntry** %61, align 8
  %63 = icmp eq %struct.constructEntry* %62, null
  br i1 %63, label %64, label %65

; <label>:64                                      ; preds = %55
  br label %91

; <label>:65                                      ; preds = %55
  %66 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 5
  br label %67

; <label>:67                                      ; preds = %80, %65
  %i.2 = phi i64 [ 0, %65 ], [ %81, %80 ]
  %68 = icmp slt i64 %i.2, %2
  br i1 %68, label %69, label %82

; <label>:69                                      ; preds = %67
  %70 = load %struct.constructEntry*, %struct.constructEntry** %66, align 8
  %71 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %70, i64 %i.2
  %72 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i32 0, i32 0
  store i64 1, i64* %72, align 8
  %73 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i32 0, i32 1
  store i8* null, i8** %73, align 8
  %74 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i32 0, i32 3
  store %struct.constructEntry* %71, %struct.constructEntry** %75, align 8
  %76 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i32 0, i32 4
  store %struct.constructEntry* null, %struct.constructEntry** %76, align 8
  %77 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i32 0, i32 5
  store %struct.constructEntry* %71, %struct.constructEntry** %77, align 8
  %78 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i32 0, i32 6
  store i64 0, i64* %78, align 8
  %79 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i32 0, i32 7
  store i64 %segmentLength, i64* %79, align 8
  br label %80

; <label>:80                                      ; preds = %69
  %81 = add nsw i64 %i.2, 1
  br label %67

; <label>:82                                      ; preds = %67
  %83 = call %struct.table* @table_alloc(i64 %geneLength, i64 (i8*, i8*)* null)
  %84 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 6
  store %struct.table* %83, %struct.table** %84, align 8
  %85 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 6
  %86 = load %struct.table*, %struct.table** %85, align 8
  %87 = icmp eq %struct.table* %86, null
  br i1 %87, label %88, label %89

; <label>:88                                      ; preds = %82
  br label %91

; <label>:89                                      ; preds = %82
  %90 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 1
  store %struct.segments* %segmentsPtr, %struct.segments** %90, align 8
  br label %91

; <label>:91                                      ; preds = %89, %88, %64, %51, %37, %13, %6
  %.0 = phi %struct.sequencer* [ null, %6 ], [ null, %13 ], [ null, %37 ], [ null, %51 ], [ null, %64 ], [ null, %88 ], [ %4, %89 ]
  ret %struct.sequencer* %.0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.hashtable* @hashtable_alloc(i64, i64 (i8*)*, i64 (%struct.pair*, %struct.pair*)*, i64, i64) #2

; Function Attrs: nounwind uwtable
define internal i64 @hashSegment(i8* %keyPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i64 @hash_sdbm(i8* %keyPtr)
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal i64 @compareSegment(%struct.pair* %a, %struct.pair* %b) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.pair, %struct.pair* %a, i32 0, i32 0
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds %struct.pair, %struct.pair* %b, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @strcmp(i8* %2, i8* %4) #7
  %6 = sext i32 %5 to i64
  ret i64 %6
}

declare %struct.table* @table_alloc(i64, i64 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define void @sequencer_run(i8* %argPtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %it16 = alloca %struct.list_node*, align 8
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
  %9 = bitcast i8* %argPtr to %struct.sequencer*
  %10 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %9, i32 0, i32 2
  %11 = load %struct.hashtable*, %struct.hashtable** %10, align 8
  %12 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %9, i32 0, i32 3
  %13 = load %struct.endInfoEntry*, %struct.endInfoEntry** %12, align 8
  %14 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %9, i32 0, i32 4
  %15 = load %struct.table**, %struct.table*** %14, align 8
  %16 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %9, i32 0, i32 5
  %17 = load %struct.constructEntry*, %struct.constructEntry** %16, align 8
  %18 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %9, i32 0, i32 6
  %19 = load %struct.table*, %struct.table** %18, align 8
  %20 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %9, i32 0, i32 1
  %21 = load %struct.segments*, %struct.segments** %20, align 8
  %22 = icmp ne %struct.segments* %21, null
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %7
  br label %26

; <label>:24                                      ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 257, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %26

; <label>:26                                      ; preds = %25, %23
  %27 = getelementptr inbounds %struct.segments, %struct.segments* %21, i32 0, i32 2
  %28 = load %struct.vector*, %struct.vector** %27, align 8
  %29 = call i64 @vector_getSize(%struct.vector* %28)
  %30 = getelementptr inbounds %struct.segments, %struct.segments* %21, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 (...) @thread_getNumThread()
  %33 = sdiv i64 %32, 2
  %34 = add nsw i64 %29, %33
  %35 = sdiv i64 %34, %32
  %36 = mul nsw i64 %8, %35
  %37 = sub nsw i64 %32, 1
  %38 = icmp eq i64 %8, %37
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %26
  br label %42

; <label>:40                                      ; preds = %26
  %41 = add nsw i64 %36, %35
  br label %42

; <label>:42                                      ; preds = %40, %39
  %i_stop.0 = phi i64 [ %29, %39 ], [ %41, %40 ]
  %43 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 0
  %44 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 4
  br label %45

; <label>:45                                      ; preds = %90, %42
  %i.0 = phi i64 [ %36, %42 ], [ %91, %90 ]
  %46 = icmp slt i64 %i.0, %i_stop.0
  store i64 0, i64* @"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run1_vi"
  br i1 %46, label %47, label %92

; <label>:47                                      ; preds = %45
  br label %48

; <label>:48                                      ; preds = %47
  %49 = load i32, i32* %43, align 8
  %50 = call i32 @workBegin(i32 0, i32 %49)
  store i32 %50, i32* %44, align 4
  br label %51

; <label>:51                                      ; preds = %48
  br label %52

; <label>:52                                      ; preds = %65, %51
  %tries.0 = phi i32 [ 9, %51 ], [ %58, %65 ]
  br label %53

; <label>:53                                      ; preds = %56, %52
  %54 = call i64 (...) @RTM_fallback_isLocked()
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %53
  call void @llvm.x86.sse2.pause() #6
  br label %53

; <label>:57                                      ; preds = %53
  %58 = add nsw i32 %tries.0, -1
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %61

; <label>:60                                      ; preds = %57
  call void (...) @RTM_fallback_lock()
  br label %71

; <label>:61                                      ; preds = %57
  %62 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0, i64 0, i64 4294967295) #6, !srcloc !1
  %63 = trunc i64 %62 to i32
  %64 = icmp ne i32 %63, -1
  br i1 %64, label %65, label %66

; <label>:65                                      ; preds = %61
  br label %52

; <label>:66                                      ; preds = %61
  %67 = call i64 (...) @RTM_fallback_isLocked()
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %._crit_edge

._crit_edge:                                      ; preds = %66
  br label %70

; <label>:69                                      ; preds = %66
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %70

; <label>:70                                      ; preds = %._crit_edge, %69
  br label %71

; <label>:71                                      ; preds = %70, %60
  %72 = add nsw i64 %i.0, 12
  %73 = icmp slt i64 %i_stop.0, %72
  br i1 %73, label %74, label %75

; <label>:74                                      ; preds = %71
  br label %76

; <label>:75                                      ; preds = %71
  br label %76

; <label>:76                                      ; preds = %75, %74
  %.reg2mem25.0 = phi i64 [ %i_stop.0, %74 ], [ %72, %75 ]
  br label %__kernel__sequencer_run1_outer_chunking

__kernel__sequencer_run1_outer_chunking:          ; preds = %76, %__kernel__sequencer_run1_exitChunk
  %ii.0 = phi i64 [ %i.0, %76 ], [ %ii.1, %__kernel__sequencer_run1_exitChunk ]
  %lsup_value29 = load i64, i64* @"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run1_lsup"
  store i64 %lsup_value29, i64* @"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run1_vi"
  %granularity_value30 = load i64, i64* @"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run1_granularity"
  %new_lsup31 = add i64 %lsup_value29, %granularity_value30
  store i64 %new_lsup31, i64* @"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run1_lsup"
  %outer_vi32 = load i64, i64* @"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run1_vi"
  br label %__kernel____kernel__sequencer_run1_viCond

__kernel____kernel__sequencer_run1_viCond:        ; preds = %__kernel__sequencer_run1_outer_chunking, %81
  %ii.1 = phi i64 [ %ii.0, %__kernel__sequencer_run1_outer_chunking ], [ %82, %81 ]
  %vi_value33 = phi i64 [ %outer_vi32, %__kernel__sequencer_run1_outer_chunking ], [ %"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run1_vi_inc", %81 ]
  %lsup_value34 = load i64, i64* @"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run1_lsup"
  %"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run1_vi_cmp" = icmp slt i64 %vi_value33, %lsup_value34
  br i1 %"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run1_vi_cmp", label %__kernel__sequencer_run1, label %__kernel__sequencer_run1_exitChunk

__kernel__sequencer_run1_exitChunk:               ; preds = %__kernel____kernel__sequencer_run1_viCond
  br label %__kernel__sequencer_run1_outer_chunking

__kernel__sequencer_run1:                         ; preds = %__kernel____kernel__sequencer_run1_viCond
  %77 = icmp slt i64 %ii.1, %.reg2mem25.0
  br i1 %77, label %78, label %83

; <label>:78                                      ; preds = %__kernel__sequencer_run1
  %79 = call i8* @vector_at(%struct.vector* %28, i64 %ii.1)
  %80 = call i64 @TMhashtable_insert(%struct.hashtable* %11, i8* %79, i8* %79)
  br label %81

; <label>:81                                      ; preds = %78
  %82 = add nsw i64 %ii.1, 1
  %"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run1_vi_inc" = add i64 %vi_value33, 1
  store i64 %"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run1_vi_inc", i64* @"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run1_vi"
  br label %__kernel____kernel__sequencer_run1_viCond, !llvm.loop !3

; <label>:83                                      ; preds = %__kernel__sequencer_run1
  %84 = icmp sgt i32 %58, 0
  br i1 %84, label %85, label %86

; <label>:85                                      ; preds = %83
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #6, !srcloc !5
  br label %87

; <label>:86                                      ; preds = %83
  call void (...) @RTM_fallback_unlock()
  br label %87

; <label>:87                                      ; preds = %86, %85
  br label %88

; <label>:88                                      ; preds = %87
  call void @workEnd(i32 0, i32 0)
  br label %89

; <label>:89                                      ; preds = %88
  br label %90

; <label>:90                                      ; preds = %89
  %91 = add nsw i64 %i.0, 12
  br label %45

; <label>:92                                      ; preds = %45
  call void (...) @thread_barrier_wait()
  %93 = call i64 @hashtable_getSize(%struct.hashtable* %11)
  %94 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = sdiv i64 %32, 2
  %97 = add nsw i64 %95, %96
  %98 = sdiv i64 %97, %32
  %99 = mul nsw i64 %8, %98
  %100 = sub nsw i64 %32, 1
  %101 = icmp eq i64 %8, %100
  br i1 %101, label %102, label %103

; <label>:102                                     ; preds = %92
  br label %105

; <label>:103                                     ; preds = %92
  %104 = add nsw i64 %99, %98
  br label %105

; <label>:105                                     ; preds = %103, %102
  %i_stop.1 = phi i64 [ %95, %102 ], [ %104, %103 ]
  %106 = sdiv i64 %32, 2
  %107 = add nsw i64 %93, %106
  %108 = sdiv i64 %107, %32
  %109 = mul nsw i64 %8, %108
  %110 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 0
  %111 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 4
  %112 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 0
  br label %113

; <label>:113                                     ; preds = %263, %105
  %i.1 = phi i64 [ %99, %105 ], [ %264, %263 ]
  %entryIndex.0 = phi i64 [ %109, %105 ], [ %entryIndex.1, %263 ]
  %114 = icmp slt i64 %i.1, %i_stop.1
  br i1 %114, label %115, label %265

; <label>:115                                     ; preds = %113
  br label %116

; <label>:116                                     ; preds = %115
  %117 = load i32, i32* %110, align 8
  %118 = call i32 @workBegin(i32 0, i32 %117)
  store i32 %118, i32* %111, align 4
  br label %119

; <label>:119                                     ; preds = %116
  %120 = load %struct.list**, %struct.list*** %112, align 8
  %121 = getelementptr inbounds %struct.list*, %struct.list** %120, i64 %i.1
  %122 = load %struct.list*, %struct.list** %121, align 8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %122)
  br label %123

; <label>:123                                     ; preds = %259, %119
  %entryIndex.1 = phi i64 [ %entryIndex.0, %119 ], [ %168, %259 ]
  %124 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %122) #7
  %125 = icmp ne i64 %124, 0
  store i64 0, i64* @"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run0_vi"
  br i1 %125, label %126, label %260

; <label>:126                                     ; preds = %123
  %127 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %122)
  %128 = bitcast i8* %127 to %struct.pair*
  %129 = getelementptr inbounds %struct.pair, %struct.pair* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  br label %131

; <label>:131                                     ; preds = %144, %126
  %tries8.0 = phi i32 [ 9, %126 ], [ %137, %144 ]
  br label %132

; <label>:132                                     ; preds = %135, %131
  %133 = call i64 (...) @RTM_fallback_isLocked()
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

; <label>:135                                     ; preds = %132
  call void @llvm.x86.sse2.pause() #6
  br label %132

; <label>:136                                     ; preds = %132
  %137 = add nsw i32 %tries8.0, -1
  %138 = icmp sle i32 %137, 0
  br i1 %138, label %139, label %140

; <label>:139                                     ; preds = %136
  call void (...) @RTM_fallback_lock()
  br label %150

; <label>:140                                     ; preds = %136
  %141 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 0, i64 1, i64 4294967295) #6, !srcloc !1
  %142 = trunc i64 %141 to i32
  %143 = icmp ne i32 %142, -1
  br i1 %143, label %144, label %145

; <label>:144                                     ; preds = %140
  br label %131

; <label>:145                                     ; preds = %140
  %146 = call i64 (...) @RTM_fallback_isLocked()
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %._crit_edge2

._crit_edge2:                                     ; preds = %145
  br label %149

; <label>:148                                     ; preds = %145
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %149

; <label>:149                                     ; preds = %._crit_edge2, %148
  br label %150

; <label>:150                                     ; preds = %149, %139
  br label %__kernel__sequencer_run0_outer_chunking

__kernel__sequencer_run0_outer_chunking:          ; preds = %150, %__kernel__sequencer_run0_exitChunk
  %entryIndex.2 = phi i64 [ %entryIndex.1, %150 ], [ %entryIndex.3, %__kernel__sequencer_run0_exitChunk ]
  %lsup_value = load i64, i64* @"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run0_lsup"
  store i64 %lsup_value, i64* @"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run0_vi"
  %granularity_value = load i64, i64* @"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run0_granularity"
  %new_lsup = add i64 %lsup_value, %granularity_value
  store i64 %new_lsup, i64* @"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run0_lsup"
  %outer_vi = load i64, i64* @"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run0_vi"
  br label %__kernel____kernel__sequencer_run0_viCond

__kernel____kernel__sequencer_run0_viCond:        ; preds = %__kernel__sequencer_run0_outer_chunking, %155
  %entryIndex.3 = phi i64 [ %entryIndex.2, %__kernel__sequencer_run0_outer_chunking ], [ %157, %155 ]
  %vi_value = phi i64 [ %outer_vi, %__kernel__sequencer_run0_outer_chunking ], [ %"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run0_vi_inc", %155 ]
  %lsup_value28 = load i64, i64* @"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run0_lsup"
  %"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run0_vi_cmp" = icmp slt i64 %vi_value, %lsup_value28
  br i1 %"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run0_vi_cmp", label %__kernel__sequencer_run0, label %__kernel__sequencer_run0_exitChunk

__kernel__sequencer_run0_exitChunk:               ; preds = %__kernel____kernel__sequencer_run0_viCond
  br label %__kernel__sequencer_run0_outer_chunking

__kernel__sequencer_run0:                         ; preds = %__kernel____kernel__sequencer_run0_viCond
  %151 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %17, i64 %entryIndex.3
  %152 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %158

; <label>:155                                     ; preds = %__kernel__sequencer_run0
  %156 = add nsw i64 %entryIndex.3, 1
  %157 = srem i64 %156, %93
  %"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run0_vi_inc" = add i64 %vi_value, 1
  store i64 %"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run0_vi_inc", i64* @"../bin/sequencer.marked.ll_sequencer_run___kernel__sequencer_run0_vi"
  br label %__kernel____kernel__sequencer_run0_viCond, !llvm.loop !6

; <label>:158                                     ; preds = %__kernel__sequencer_run0
  %159 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %17, i64 %entryIndex.3
  %160 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %159, i32 0, i32 1
  store i8* %130, i8** %160, align 8
  %161 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %159, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  %163 = icmp sgt i32 %137, 0
  br i1 %163, label %164, label %165

; <label>:164                                     ; preds = %158
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 1) #6, !srcloc !5
  br label %166

; <label>:165                                     ; preds = %158
  call void (...) @RTM_fallback_unlock()
  br label %166

; <label>:166                                     ; preds = %165, %164
  %167 = add nsw i64 %entryIndex.3, 1
  %168 = srem i64 %167, %93
  %169 = getelementptr inbounds i8, i8* %130, i64 1
  %170 = call i64 @hashString(i8* %169)
  %171 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %159, i32 0, i32 2
  store i64 %170, i64* %171, align 8
  %172 = bitcast %struct.constructEntry* %159 to i8*
  br label %173

; <label>:173                                     ; preds = %217, %166
  %j6.0 = phi i64 [ 1, %166 ], [ %218, %217 ]
  %startHash.0 = phi i64 [ 0, %166 ], [ %184, %217 ]
  %174 = icmp slt i64 %j6.0, %31
  br i1 %174, label %175, label %219

; <label>:175                                     ; preds = %173
  %176 = sub nsw i64 %j6.0, 1
  %177 = getelementptr inbounds i8, i8* %130, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i64
  %180 = shl i64 %startHash.0, 6
  %181 = add i64 %179, %180
  %182 = shl i64 %startHash.0, 16
  %183 = add i64 %181, %182
  %184 = sub i64 %183, %startHash.0
  br label %185

; <label>:185                                     ; preds = %198, %175
  %tries10.0 = phi i32 [ 9, %175 ], [ %191, %198 ]
  br label %186

; <label>:186                                     ; preds = %189, %185
  %187 = call i64 (...) @RTM_fallback_isLocked()
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %190

; <label>:189                                     ; preds = %186
  call void @llvm.x86.sse2.pause() #6
  br label %186

; <label>:190                                     ; preds = %186
  %191 = add nsw i32 %tries10.0, -1
  %192 = icmp sle i32 %191, 0
  br i1 %192, label %193, label %194

; <label>:193                                     ; preds = %190
  call void (...) @RTM_fallback_lock()
  br label %204

; <label>:194                                     ; preds = %190
  %195 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 0, i64 2, i64 4294967295) #6, !srcloc !1
  %196 = trunc i64 %195 to i32
  %197 = icmp ne i32 %196, -1
  br i1 %197, label %198, label %199

; <label>:198                                     ; preds = %194
  br label %185

; <label>:199                                     ; preds = %194
  %200 = call i64 (...) @RTM_fallback_isLocked()
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %._crit_edge3

._crit_edge3:                                     ; preds = %199
  br label %203

; <label>:202                                     ; preds = %199
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %203

; <label>:203                                     ; preds = %._crit_edge3, %202
  br label %204

; <label>:204                                     ; preds = %203, %193
  %205 = getelementptr inbounds %struct.table*, %struct.table** %15, i64 %j6.0
  %206 = load %struct.table*, %struct.table** %205, align 8
  %207 = call i64 @TMtable_insert(%struct.table* %206, i64 %184, i8* %172)
  %208 = icmp sgt i32 %191, 0
  br i1 %208, label %209, label %210

; <label>:209                                     ; preds = %204
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 2) #6, !srcloc !5
  br label %211

; <label>:210                                     ; preds = %204
  call void (...) @RTM_fallback_unlock()
  br label %211

; <label>:211                                     ; preds = %210, %209
  %212 = icmp ne i64 %207, 0
  br i1 %212, label %213, label %214

; <label>:213                                     ; preds = %211
  br label %216

; <label>:214                                     ; preds = %211
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 405, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:216                                     ; preds = %213
  br label %217

; <label>:217                                     ; preds = %216
  %218 = add nsw i64 %j6.0, 1
  br label %173

; <label>:219                                     ; preds = %173
  %220 = sub nsw i64 %j6.0, 1
  %221 = getelementptr inbounds i8, i8* %130, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i64
  %224 = shl i64 %startHash.0, 6
  %225 = add i64 %223, %224
  %226 = shl i64 %startHash.0, 16
  %227 = add i64 %225, %226
  %228 = sub i64 %227, %startHash.0
  br label %229

; <label>:229                                     ; preds = %242, %219
  %tries12.0 = phi i32 [ 9, %219 ], [ %235, %242 ]
  br label %230

; <label>:230                                     ; preds = %233, %229
  %231 = call i64 (...) @RTM_fallback_isLocked()
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %234

; <label>:233                                     ; preds = %230
  call void @llvm.x86.sse2.pause() #6
  br label %230

; <label>:234                                     ; preds = %230
  %235 = add nsw i32 %tries12.0, -1
  %236 = icmp sle i32 %235, 0
  br i1 %236, label %237, label %238

; <label>:237                                     ; preds = %234
  call void (...) @RTM_fallback_lock()
  br label %248

; <label>:238                                     ; preds = %234
  %239 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 3, i64 0, i64 3, i64 4294967295) #6, !srcloc !1
  %240 = trunc i64 %239 to i32
  %241 = icmp ne i32 %240, -1
  br i1 %241, label %242, label %243

; <label>:242                                     ; preds = %238
  br label %229

; <label>:243                                     ; preds = %238
  %244 = call i64 (...) @RTM_fallback_isLocked()
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %._crit_edge4

._crit_edge4:                                     ; preds = %243
  br label %247

; <label>:246                                     ; preds = %243
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %247

; <label>:247                                     ; preds = %._crit_edge4, %246
  br label %248

; <label>:248                                     ; preds = %247, %237
  %249 = bitcast %struct.constructEntry* %159 to i8*
  %250 = call i64 @TMtable_insert(%struct.table* %19, i64 %228, i8* %249)
  %251 = icmp sgt i32 %235, 0
  br i1 %251, label %252, label %253

; <label>:252                                     ; preds = %248
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 3) #6, !srcloc !5
  br label %254

; <label>:253                                     ; preds = %248
  call void (...) @RTM_fallback_unlock()
  br label %254

; <label>:254                                     ; preds = %253, %252
  %255 = icmp ne i64 %250, 0
  br i1 %255, label %256, label %257

; <label>:256                                     ; preds = %254
  br label %259

; <label>:257                                     ; preds = %254
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 418, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:259                                     ; preds = %256
  br label %123

; <label>:260                                     ; preds = %123
  br label %261

; <label>:261                                     ; preds = %260
  call void @workEnd(i32 0, i32 0)
  br label %262

; <label>:262                                     ; preds = %261
  br label %263

; <label>:263                                     ; preds = %262
  %264 = add nsw i64 %i.1, 1
  br label %113

; <label>:265                                     ; preds = %113
  call void (...) @thread_barrier_wait()
  %266 = sub nsw i64 %31, 1
  %267 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 0
  %268 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 4
  %269 = sdiv i64 %32, 2
  %270 = add nsw i64 %93, %269
  %271 = sub nsw i64 %32, 1
  %272 = icmp eq i64 %8, %271
  %273 = icmp eq i64 %8, 0
  %274 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 0
  %275 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 0
  %277 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %17, i64 0
  br label %279

; <label>:279                                     ; preds = %481, %265
  %substringLength.0 = phi i64 [ %266, %265 ], [ %482, %481 ]
  %280 = icmp sgt i64 %substringLength.0, 0
  br i1 %280, label %281, label %483

; <label>:281                                     ; preds = %279
  br label %282

; <label>:282                                     ; preds = %281
  %283 = load i32, i32* %267, align 8
  %284 = call i32 @workBegin(i32 0, i32 %283)
  store i32 %284, i32* %268, align 4
  br label %285

; <label>:285                                     ; preds = %282
  %286 = getelementptr inbounds %struct.table*, %struct.table** %15, i64 %substringLength.0
  %287 = load %struct.table*, %struct.table** %286, align 8
  %288 = getelementptr inbounds %struct.table, %struct.table* %287, i32 0, i32 0
  %289 = load %struct.list**, %struct.list*** %288, align 8
  %290 = getelementptr inbounds %struct.table, %struct.table* %287, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = sdiv i64 %270, %32
  %293 = mul nsw i64 %8, %292
  br i1 %272, label %294, label %295

; <label>:294                                     ; preds = %285
  br label %297

; <label>:295                                     ; preds = %285
  %296 = add nsw i64 %293, %292
  br label %297

; <label>:297                                     ; preds = %295, %294
  %index_stop.0 = phi i64 [ %93, %294 ], [ %296, %295 ]
  %298 = sub nsw i64 %31, %substringLength.0
  br label %299

; <label>:299                                     ; preds = %411, %297
  %entryIndex.4 = phi i64 [ %293, %297 ], [ %415, %411 ]
  %300 = icmp slt i64 %entryIndex.4, %index_stop.0
  br i1 %300, label %301, label %416

; <label>:301                                     ; preds = %299
  %302 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %entryIndex.4
  %303 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %307, label %306

; <label>:306                                     ; preds = %301
  br label %411

; <label>:307                                     ; preds = %301
  %308 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %17, i64 %entryIndex.4
  %309 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %308, i32 0, i32 1
  %310 = load i8*, i8** %309, align 8
  %311 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %308, i32 0, i32 2
  %312 = load i64, i64* %311, align 8
  %313 = urem i64 %312, %291
  %314 = getelementptr inbounds %struct.list*, %struct.list** %289, i64 %313
  %315 = load %struct.list*, %struct.list** %314, align 8
  call void @list_iter_reset(%struct.list_node** %it16, %struct.list* %315)
  %316 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %308, i32 0, i32 3
  %317 = getelementptr inbounds i8, i8* %310, i64 %298
  %318 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %entryIndex.4
  %319 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %entryIndex.4
  %321 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %308, i32 0, i32 3
  %323 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %308, i32 0, i32 4
  %324 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %308, i32 0, i32 4
  %325 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %308, i32 0, i32 6
  %326 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %308, i32 0, i32 6
  %327 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %entryIndex.4
  %328 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %327, i32 0, i32 0
  br label %329

; <label>:329                                     ; preds = %409, %307
  %330 = call i64 @list_iter_hasNext(%struct.list_node** %it16, %struct.list* %315) #7
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %.loopexit1

; <label>:332                                     ; preds = %329
  %333 = call i8* @list_iter_next(%struct.list_node** %it16, %struct.list* %315)
  %334 = bitcast i8* %333 to %struct.constructEntry*
  %335 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %334, i32 0, i32 1
  %336 = load i8*, i8** %335, align 8
  br label %337

; <label>:337                                     ; preds = %350, %332
  %tries18.0 = phi i32 [ 9, %332 ], [ %343, %350 ]
  br label %338

; <label>:338                                     ; preds = %341, %337
  %339 = call i64 (...) @RTM_fallback_isLocked()
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %342

; <label>:341                                     ; preds = %338
  call void @llvm.x86.sse2.pause() #6
  br label %338

; <label>:342                                     ; preds = %338
  %343 = add nsw i32 %tries18.0, -1
  %344 = icmp sle i32 %343, 0
  br i1 %344, label %345, label %346

; <label>:345                                     ; preds = %342
  call void (...) @RTM_fallback_lock()
  br label %356

; <label>:346                                     ; preds = %342
  %347 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 4, i64 0, i64 4, i64 4294967295) #6, !srcloc !1
  %348 = trunc i64 %347 to i32
  %349 = icmp ne i32 %348, -1
  br i1 %349, label %350, label %351

; <label>:350                                     ; preds = %346
  br label %337

; <label>:351                                     ; preds = %346
  %352 = call i64 (...) @RTM_fallback_isLocked()
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %._crit_edge5

._crit_edge5:                                     ; preds = %351
  br label %355

; <label>:354                                     ; preds = %351
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %355

; <label>:355                                     ; preds = %._crit_edge5, %354
  br label %356

; <label>:356                                     ; preds = %355, %345
  %357 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %334, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %._crit_edge6

._crit_edge6:                                     ; preds = %356
  br label %401

; <label>:360                                     ; preds = %356
  %361 = load %struct.constructEntry*, %struct.constructEntry** %316, align 8
  %362 = icmp ne %struct.constructEntry* %361, %334
  br i1 %362, label %363, label %._crit_edge7

._crit_edge7:                                     ; preds = %360
  br label %401

; <label>:363                                     ; preds = %360
  %364 = call i32 @strncmp(i8* %336, i8* %317, i64 %substringLength.0) #7
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %._crit_edge8

._crit_edge8:                                     ; preds = %363
  br label %401

; <label>:366                                     ; preds = %363
  %367 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %334, i32 0, i32 0
  store i64 0, i64* %367, align 8
  %368 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %334, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  store i64 0, i64* %319, align 8
  %370 = load i64, i64* %321, align 8
  %371 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %334, i32 0, i32 5
  %372 = load %struct.constructEntry*, %struct.constructEntry** %371, align 8
  %373 = load %struct.constructEntry*, %struct.constructEntry** %322, align 8
  %374 = icmp ne %struct.constructEntry* %372, null
  br i1 %374, label %375, label %376

; <label>:375                                     ; preds = %366
  br label %378

; <label>:376                                     ; preds = %366
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 506, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:378                                     ; preds = %375
  %379 = icmp ne %struct.constructEntry* %373, null
  br i1 %379, label %380, label %381

; <label>:380                                     ; preds = %378
  br label %383

; <label>:381                                     ; preds = %378
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 507, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:383                                     ; preds = %380
  %384 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %372, i32 0, i32 3
  store %struct.constructEntry* %373, %struct.constructEntry** %384, align 8
  %385 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %372, i32 0, i32 3
  %386 = load %struct.constructEntry*, %struct.constructEntry** %385, align 8
  store %struct.constructEntry* %334, %struct.constructEntry** %323, align 8
  %387 = load %struct.constructEntry*, %struct.constructEntry** %324, align 8
  %388 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %373, i32 0, i32 5
  store %struct.constructEntry* %372, %struct.constructEntry** %388, align 8
  %389 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %373, i32 0, i32 5
  %390 = load %struct.constructEntry*, %struct.constructEntry** %389, align 8
  store i64 %substringLength.0, i64* %325, align 8
  %391 = load i64, i64* %326, align 8
  %392 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %373, i32 0, i32 7
  %393 = load i64, i64* %392, align 8
  %394 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %334, i32 0, i32 7
  %395 = load i64, i64* %394, align 8
  %396 = add nsw i64 %393, %395
  %397 = sub nsw i64 %396, %substringLength.0
  %398 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %373, i32 0, i32 7
  store i64 %397, i64* %398, align 8
  %399 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %373, i32 0, i32 7
  %400 = load i64, i64* %399, align 8
  br label %401

; <label>:401                                     ; preds = %._crit_edge8, %._crit_edge7, %._crit_edge6, %383
  %402 = icmp sgt i32 %343, 0
  br i1 %402, label %403, label %404

; <label>:403                                     ; preds = %401
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 4) #6, !srcloc !5
  br label %405

; <label>:404                                     ; preds = %401
  call void (...) @RTM_fallback_unlock()
  br label %405

; <label>:405                                     ; preds = %404, %403
  %406 = load i64, i64* %328, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %409, label %408

; <label>:408                                     ; preds = %405
  br label %410

; <label>:409                                     ; preds = %405
  br label %329

.loopexit1:                                       ; preds = %329
  br label %410

; <label>:410                                     ; preds = %.loopexit1, %408
  br label %411

; <label>:411                                     ; preds = %410, %306
  %412 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %entryIndex.4
  %413 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %412, i32 0, i32 1
  %414 = load i64, i64* %413, align 8
  %415 = add nsw i64 %entryIndex.4, %414
  br label %299

; <label>:416                                     ; preds = %299
  call void (...) @thread_barrier_wait()
  br i1 %273, label %417, label %._crit_edge9

._crit_edge9:                                     ; preds = %416
  br label %478

; <label>:417                                     ; preds = %416
  %418 = icmp sgt i64 %substringLength.0, 1
  br i1 %418, label %419, label %._crit_edge10

._crit_edge10:                                    ; preds = %417
  br label %477

; <label>:419                                     ; preds = %417
  %420 = sub nsw i64 %31, %substringLength.0
  %421 = add nsw i64 %420, 1
  br label %422

; <label>:422                                     ; preds = %429, %419
  %i.2 = phi i64 [ 1, %419 ], [ %433, %429 ]
  %423 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %i.2
  %424 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %423, i32 0, i32 0
  %425 = load i64, i64* %424, align 8
  %426 = icmp ne i64 %425, 0
  %427 = xor i1 %426, true
  br i1 %427, label %428, label %434

; <label>:428                                     ; preds = %422
  br label %429

; <label>:429                                     ; preds = %428
  %430 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %i.2
  %431 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %430, i32 0, i32 1
  %432 = load i64, i64* %431, align 8
  %433 = add nsw i64 %i.2, %432
  br label %422

; <label>:434                                     ; preds = %422
  store i64 %i.2, i64* %275, align 8
  %435 = load i64, i64* %277, align 8
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %._crit_edge11

._crit_edge11:                                    ; preds = %434
  br label %443

; <label>:437                                     ; preds = %434
  %438 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %278, i32 0, i32 1
  %439 = load i8*, i8** %438, align 8
  %440 = getelementptr inbounds i8, i8* %439, i64 %421
  %441 = call i64 @hashString(i8* %440)
  %442 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %278, i32 0, i32 2
  store i64 %441, i64* %442, align 8
  br label %443

; <label>:443                                     ; preds = %._crit_edge11, %437
  br label %444

; <label>:444                                     ; preds = %468, %443
  %i.3 = phi i64 [ %i.2, %443 ], [ %472, %468 ]
  %j.0 = phi i64 [ 0, %443 ], [ %j.1, %468 ]
  %445 = icmp slt i64 %i.3, %93
  br i1 %445, label %446, label %473

; <label>:446                                     ; preds = %444
  %447 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %i.3
  %448 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %447, i32 0, i32 0
  %449 = load i64, i64* %448, align 8
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %._crit_edge12

._crit_edge12:                                    ; preds = %446
  br label %467

; <label>:451                                     ; preds = %446
  %452 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %17, i64 %i.3
  %453 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %452, i32 0, i32 1
  %454 = load i8*, i8** %453, align 8
  %455 = getelementptr inbounds i8, i8* %454, i64 %421
  %456 = call i64 @hashString(i8* %455)
  %457 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %452, i32 0, i32 2
  store i64 %456, i64* %457, align 8
  %458 = sub nsw i64 %i.3, %j.0
  %459 = sext i32 1 to i64
  %460 = icmp sgt i64 %459, %458
  br i1 %460, label %461, label %463

; <label>:461                                     ; preds = %451
  %462 = sext i32 1 to i64
  br label %464

; <label>:463                                     ; preds = %451
  br label %464

; <label>:464                                     ; preds = %463, %461
  %.reg2mem23.0 = phi i64 [ %462, %461 ], [ %458, %463 ]
  %465 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %j.0
  %466 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %465, i32 0, i32 1
  store i64 %.reg2mem23.0, i64* %466, align 8
  br label %467

; <label>:467                                     ; preds = %._crit_edge12, %464
  %j.1 = phi i64 [ %i.3, %464 ], [ %j.0, %._crit_edge12 ]
  br label %468

; <label>:468                                     ; preds = %467
  %469 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %i.3
  %470 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %469, i32 0, i32 1
  %471 = load i64, i64* %470, align 8
  %472 = add nsw i64 %i.3, %471
  br label %444

; <label>:473                                     ; preds = %444
  %474 = sub nsw i64 %i.3, %j.0
  %475 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %j.0
  %476 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %475, i32 0, i32 1
  store i64 %474, i64* %476, align 8
  br label %477

; <label>:477                                     ; preds = %._crit_edge10, %473
  br label %478

; <label>:478                                     ; preds = %._crit_edge9, %477
  call void (...) @thread_barrier_wait()
  br label %479

; <label>:479                                     ; preds = %478
  call void @workEnd(i32 0, i32 0)
  br label %480

; <label>:480                                     ; preds = %479
  br label %481

; <label>:481                                     ; preds = %480
  %482 = add nsw i64 %substringLength.0, -1
  br label %279

; <label>:483                                     ; preds = %279
  call void (...) @thread_barrier_wait()
  %484 = icmp eq i64 %8, 0
  br i1 %484, label %485, label %._crit_edge13

._crit_edge13:                                    ; preds = %483
  br label %564

; <label>:485                                     ; preds = %483
  br label %486

; <label>:486                                     ; preds = %498, %485
  %i.4 = phi i64 [ 0, %485 ], [ %499, %498 ]
  %totalLength.0 = phi i64 [ 0, %485 ], [ %totalLength.1, %498 ]
  %487 = icmp slt i64 %i.4, %93
  br i1 %487, label %488, label %500

; <label>:488                                     ; preds = %486
  %489 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %17, i64 %i.4
  %490 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %489, i32 0, i32 0
  %491 = load i64, i64* %490, align 8
  %492 = icmp ne i64 %491, 0
  br i1 %492, label %493, label %._crit_edge14

._crit_edge14:                                    ; preds = %488
  br label %497

; <label>:493                                     ; preds = %488
  %494 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %489, i32 0, i32 7
  %495 = load i64, i64* %494, align 8
  %496 = add nsw i64 %totalLength.0, %495
  br label %497

; <label>:497                                     ; preds = %._crit_edge14, %493
  %totalLength.1 = phi i64 [ %496, %493 ], [ %totalLength.0, %._crit_edge14 ]
  br label %498

; <label>:498                                     ; preds = %497
  %499 = add nsw i64 %i.4, 1
  br label %486

; <label>:500                                     ; preds = %486
  %501 = add nsw i64 %totalLength.0, 1
  %502 = mul i64 %501, 1
  %503 = call noalias i8* @malloc(i64 %502) #6
  %504 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %9, i32 0, i32 0
  store i8* %503, i8** %504, align 8
  %505 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %9, i32 0, i32 0
  %506 = load i8*, i8** %505, align 8
  %507 = icmp ne i8* %506, null
  br i1 %507, label %508, label %509

; <label>:508                                     ; preds = %500
  br label %511

; <label>:509                                     ; preds = %500
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 593, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %511

; <label>:511                                     ; preds = %510, %508
  br label %512

; <label>:512                                     ; preds = %555, %511
  %i.5 = phi i64 [ 0, %511 ], [ %556, %555 ]
  %sequenceLength.0 = phi i64 [ 0, %511 ], [ %sequenceLength.1, %555 ]
  %513 = icmp slt i64 %i.5, %93
  br i1 %513, label %514, label %557

; <label>:514                                     ; preds = %512
  %515 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %17, i64 %i.5
  %516 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %515, i32 0, i32 0
  %517 = load i64, i64* %516, align 8
  %518 = icmp ne i64 %517, 0
  br i1 %518, label %519, label %._crit_edge15

._crit_edge15:                                    ; preds = %514
  br label %554

; <label>:519                                     ; preds = %514
  %520 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %515, i32 0, i32 7
  %521 = load i64, i64* %520, align 8
  %522 = add nsw i64 %sequenceLength.0, %521
  %523 = icmp sle i64 %522, %totalLength.0
  br i1 %523, label %524, label %525

; <label>:524                                     ; preds = %519
  br label %527

; <label>:525                                     ; preds = %519
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 603, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:527                                     ; preds = %524
  %528 = getelementptr inbounds i8, i8* %506, i64 %sequenceLength.0
  %529 = getelementptr inbounds i8, i8* %506, i64 %522
  br label %530

; <label>:530                                     ; preds = %._crit_edge16, %527
  %copyPtr.0 = phi i8* [ %528, %527 ], [ %542, %._crit_edge16 ]
  %constructEntryPtr26.0 = phi %struct.constructEntry* [ %515, %527 ], [ %545, %._crit_edge16 ]
  %531 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %constructEntryPtr26.0, i32 0, i32 6
  %532 = load i64, i64* %531, align 8
  %533 = sub nsw i64 %31, %532
  %534 = getelementptr inbounds i8, i8* %copyPtr.0, i64 %533
  %535 = icmp ugt i8* %534, %529
  br i1 %535, label %536, label %538

; <label>:536                                     ; preds = %530
  %.lcssa = phi i64 [ %533, %530 ]
  %537 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0))
  br label %547

; <label>:538                                     ; preds = %530
  %539 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %constructEntryPtr26.0, i32 0, i32 1
  %540 = load i8*, i8** %539, align 8
  %541 = mul i64 %533, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %copyPtr.0, i8* %540, i64 %541, i32 1, i1 false)
  %542 = getelementptr inbounds i8, i8* %copyPtr.0, i64 %533
  br label %543

; <label>:543                                     ; preds = %538
  %544 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %constructEntryPtr26.0, i32 0, i32 4
  %545 = load %struct.constructEntry*, %struct.constructEntry** %544, align 8
  %546 = icmp ne %struct.constructEntry* %545, null
  br i1 %546, label %._crit_edge16, label %.loopexit

._crit_edge16:                                    ; preds = %543
  br label %530

.loopexit:                                        ; preds = %543
  %.lcssa27 = phi i64 [ %533, %543 ]
  br label %547

; <label>:547                                     ; preds = %.loopexit, %536
  %copyPtr.1 = phi i8* [ %copyPtr.0, %536 ], [ %542, %.loopexit ]
  %548 = getelementptr inbounds i8, i8* %506, i64 %522
  %549 = icmp ule i8* %copyPtr.1, %548
  br i1 %549, label %550, label %551

; <label>:550                                     ; preds = %547
  br label %553

; <label>:551                                     ; preds = %547
  call void @__assert_fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 617, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:553                                     ; preds = %550
  br label %554

; <label>:554                                     ; preds = %._crit_edge15, %553
  %sequenceLength.1 = phi i64 [ %522, %553 ], [ %sequenceLength.0, %._crit_edge15 ]
  br label %555

; <label>:555                                     ; preds = %554
  %556 = add nsw i64 %i.5, 1
  br label %512

; <label>:557                                     ; preds = %512
  %558 = icmp ne i8* %506, null
  br i1 %558, label %559, label %560

; <label>:559                                     ; preds = %557
  br label %562

; <label>:560                                     ; preds = %557
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 621, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %562

; <label>:562                                     ; preds = %561, %559
  %563 = getelementptr inbounds i8, i8* %506, i64 %sequenceLength.0
  store i8 0, i8* %563, align 1
  br label %564

; <label>:564                                     ; preds = %._crit_edge13, %562
  br label %565

; <label>:565                                     ; preds = %564
  %566 = call i64 (...) @thread_getId()
  %567 = trunc i64 %566 to i32
  %568 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 4
  %569 = load i32, i32* %568, align 4
  call void @SimRoiEnd(i32 %567, i32 %569)
  br label %570

; <label>:570                                     ; preds = %565
  ret void
}

declare i64 @thread_getId(...) #2

declare void @SimRoiStart(i32) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

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
declare i64 @list_iter_hasNext(%struct.list_node**, %struct.list*) #4

declare i8* @list_iter_next(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind uwtable
define internal i64 @hashString(i8* %str) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  br label %1

; <label>:1                                       ; preds = %7, %0
  %hash.0 = phi i64 [ 0, %0 ], [ %12, %7 ]
  %2 = phi i8* [ %3, %7 ], [ %str, %0 ]
  %3 = getelementptr inbounds i8, i8* %2, i32 1
  %4 = load i8, i8* %2, align 1
  %5 = sext i8 %4 to i64
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

; <label>:7                                       ; preds = %1
  %8 = shl i64 %hash.0, 6
  %9 = add i64 %5, %8
  %10 = shl i64 %hash.0, 16
  %11 = add i64 %9, %10
  %12 = sub i64 %11, %hash.0
  br label %1

; <label>:13                                      ; preds = %1
  %.lcssa1 = phi i64 [ %5, %1 ]
  %.lcssa = phi i8* [ %3, %1 ]
  ret i64 %hash.0
}

declare i64 @TMtable_insert(%struct.table*, i64, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @SimRoiEnd(i32, i32) #2

; Function Attrs: nounwind uwtable
define void @sequencer_free(%struct.sequencer* %sequencerPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %sequencerPtr, i32 0, i32 6
  %2 = load %struct.table*, %struct.table** %1, align 8
  call void @table_free(%struct.table* %2)
  %3 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %sequencerPtr, i32 0, i32 5
  %4 = load %struct.constructEntry*, %struct.constructEntry** %3, align 8
  %5 = bitcast %struct.constructEntry* %4 to i8*
  call void @free(i8* %5) #6
  %6 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %sequencerPtr, i32 0, i32 7
  %7 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %sequencerPtr, i32 0, i32 4
  br label %8

; <label>:8                                       ; preds = %15, %0
  %i.0 = phi i64 [ 1, %0 ], [ %16, %15 ]
  %9 = load i64, i64* %6, align 8
  %10 = icmp slt i64 %i.0, %9
  br i1 %10, label %11, label %17

; <label>:11                                      ; preds = %8
  %12 = load %struct.table**, %struct.table*** %7, align 8
  %13 = getelementptr inbounds %struct.table*, %struct.table** %12, i64 %i.0
  %14 = load %struct.table*, %struct.table** %13, align 8
  call void @table_free(%struct.table* %14)
  br label %15

; <label>:15                                      ; preds = %11
  %16 = add nsw i64 %i.0, 1
  br label %8

; <label>:17                                      ; preds = %8
  %18 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %sequencerPtr, i32 0, i32 4
  %19 = load %struct.table**, %struct.table*** %18, align 8
  %20 = bitcast %struct.table** %19 to i8*
  call void @free(i8* %20) #6
  %21 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %sequencerPtr, i32 0, i32 3
  %22 = load %struct.endInfoEntry*, %struct.endInfoEntry** %21, align 8
  %23 = bitcast %struct.endInfoEntry* %22 to i8*
  call void @free(i8* %23) #6
  %24 = bitcast %struct.sequencer* %sequencerPtr to i8*
  call void @free(i8* %24) #6
  ret void
}

declare void @table_free(%struct.table*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

declare i64 @hash_sdbm(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 1398597, i32 1398613, i32 1398649, i32 1398685, i32 1398721}
!2 = !{i32 1399198, i32 1399213, i32 1399247}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.vectorize.width", i32 1337}
!5 = !{i32 1398969, i32 1398984, i32 1399012}
!6 = distinct !{!6, !4}
