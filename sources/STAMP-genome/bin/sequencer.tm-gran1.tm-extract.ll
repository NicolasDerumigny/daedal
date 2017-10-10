; ModuleID = '../bin/sequencer.tm-gran.ll'
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
  %5 = call i32 @strcmp(i8* %2, i8* %4) #8
  %6 = sext i32 %5 to i64
  ret i64 %6
}

declare %struct.table* @table_alloc(i64, i64 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define void @sequencer_run(i8* %argPtr) #0 {
  %structArg3 = alloca { i64, i64, %struct.vector*, %struct.hashtable* }
  %structArg = alloca { i64, %struct.constructEntry*, i64, i64 }
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
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 257, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #9
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

; <label>:45                                      ; preds = %84, %42
  %i.0 = phi i64 [ %36, %42 ], [ %85, %84 ]
  %46 = icmp slt i64 %i.0, %i_stop.0
  br i1 %46, label %47, label %86

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

; <label>:70                                      ; preds = %69, %._crit_edge
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
  br label %codeRepl2

codeRepl2:                                        ; preds = %76
  %gep_i.0 = getelementptr { i64, i64, %struct.vector*, %struct.hashtable* }, { i64, i64, %struct.vector*, %struct.hashtable* }* %structArg3, i32 0, i32 0
  store i64 %i.0, i64* %gep_i.0
  %gep_.reg2mem25.0 = getelementptr { i64, i64, %struct.vector*, %struct.hashtable* }, { i64, i64, %struct.vector*, %struct.hashtable* }* %structArg3, i32 0, i32 1
  store i64 %.reg2mem25.0, i64* %gep_.reg2mem25.0
  %gep_4 = getelementptr { i64, i64, %struct.vector*, %struct.hashtable* }, { i64, i64, %struct.vector*, %struct.hashtable* }* %structArg3, i32 0, i32 2
  store %struct.vector* %28, %struct.vector** %gep_4
  %gep_5 = getelementptr { i64, i64, %struct.vector*, %struct.hashtable* }, { i64, i64, %struct.vector*, %struct.hashtable* }* %structArg3, i32 0, i32 3
  store %struct.hashtable* %11, %struct.hashtable** %gep_5
  call void @sequencer_run___kernel__sequencer_run1({ i64, i64, %struct.vector*, %struct.hashtable* }* %structArg3)
  br label %77

; <label>:77                                      ; preds = %codeRepl2
  %78 = icmp sgt i32 %58, 0
  br i1 %78, label %79, label %80

; <label>:79                                      ; preds = %77
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #6, !srcloc !3
  br label %81

; <label>:80                                      ; preds = %77
  call void (...) @RTM_fallback_unlock()
  br label %81

; <label>:81                                      ; preds = %80, %79
  br label %82

; <label>:82                                      ; preds = %81
  call void @workEnd(i32 0, i32 0)
  br label %83

; <label>:83                                      ; preds = %82
  br label %84

; <label>:84                                      ; preds = %83
  %85 = add nsw i64 %i.0, 12
  br label %45

; <label>:86                                      ; preds = %45
  call void (...) @thread_barrier_wait()
  %87 = call i64 @hashtable_getSize(%struct.hashtable* %11)
  %88 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = sdiv i64 %32, 2
  %91 = add nsw i64 %89, %90
  %92 = sdiv i64 %91, %32
  %93 = mul nsw i64 %8, %92
  %94 = sub nsw i64 %32, 1
  %95 = icmp eq i64 %8, %94
  br i1 %95, label %96, label %97

; <label>:96                                      ; preds = %86
  br label %99

; <label>:97                                      ; preds = %86
  %98 = add nsw i64 %93, %92
  br label %99

; <label>:99                                      ; preds = %97, %96
  %i_stop.1 = phi i64 [ %89, %96 ], [ %98, %97 ]
  %100 = sdiv i64 %32, 2
  %101 = add nsw i64 %87, %100
  %102 = sdiv i64 %101, %32
  %103 = mul nsw i64 %8, %102
  %104 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 0
  %105 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 4
  %106 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 0
  br label %107

; <label>:107                                     ; preds = %250, %99
  %i.1 = phi i64 [ %93, %99 ], [ %251, %250 ]
  %entryIndex.0 = phi i64 [ %103, %99 ], [ %entryIndex.1, %250 ]
  %108 = icmp slt i64 %i.1, %i_stop.1
  br i1 %108, label %109, label %252

; <label>:109                                     ; preds = %107
  br label %110

; <label>:110                                     ; preds = %109
  %111 = load i32, i32* %104, align 8
  %112 = call i32 @workBegin(i32 0, i32 %111)
  store i32 %112, i32* %105, align 4
  br label %113

; <label>:113                                     ; preds = %110
  %114 = load %struct.list**, %struct.list*** %106, align 8
  %115 = getelementptr inbounds %struct.list*, %struct.list** %114, i64 %i.1
  %116 = load %struct.list*, %struct.list** %115, align 8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %116)
  br label %117

; <label>:117                                     ; preds = %246, %113
  %entryIndex.1 = phi i64 [ %entryIndex.0, %113 ], [ %155, %246 ]
  %118 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %116) #8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %247

; <label>:120                                     ; preds = %117
  %121 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %116)
  %122 = bitcast i8* %121 to %struct.pair*
  %123 = getelementptr inbounds %struct.pair, %struct.pair* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  br label %125

; <label>:125                                     ; preds = %138, %120
  %tries8.0 = phi i32 [ 9, %120 ], [ %131, %138 ]
  br label %126

; <label>:126                                     ; preds = %129, %125
  %127 = call i64 (...) @RTM_fallback_isLocked()
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

; <label>:129                                     ; preds = %126
  call void @llvm.x86.sse2.pause() #6
  br label %126

; <label>:130                                     ; preds = %126
  %131 = add nsw i32 %tries8.0, -1
  %132 = icmp sle i32 %131, 0
  br i1 %132, label %133, label %134

; <label>:133                                     ; preds = %130
  call void (...) @RTM_fallback_lock()
  br label %144

; <label>:134                                     ; preds = %130
  %135 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 0, i64 1, i64 4294967295) #6, !srcloc !1
  %136 = trunc i64 %135 to i32
  %137 = icmp ne i32 %136, -1
  br i1 %137, label %138, label %139

; <label>:138                                     ; preds = %134
  br label %125

; <label>:139                                     ; preds = %134
  %140 = call i64 (...) @RTM_fallback_isLocked()
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %._crit_edge2

._crit_edge2:                                     ; preds = %139
  br label %143

; <label>:142                                     ; preds = %139
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %143

; <label>:143                                     ; preds = %142, %._crit_edge2
  br label %144

; <label>:144                                     ; preds = %143, %133
  br label %codeRepl

codeRepl:                                         ; preds = %144
  %gep_entryIndex.1 = getelementptr { i64, %struct.constructEntry*, i64, i64 }, { i64, %struct.constructEntry*, i64, i64 }* %structArg, i32 0, i32 0
  store i64 %entryIndex.1, i64* %gep_entryIndex.1
  %gep_ = getelementptr { i64, %struct.constructEntry*, i64, i64 }, { i64, %struct.constructEntry*, i64, i64 }* %structArg, i32 0, i32 1
  store %struct.constructEntry* %17, %struct.constructEntry** %gep_
  %gep_1 = getelementptr { i64, %struct.constructEntry*, i64, i64 }, { i64, %struct.constructEntry*, i64, i64 }* %structArg, i32 0, i32 2
  store i64 %87, i64* %gep_1
  call void @sequencer_run___kernel__sequencer_run0({ i64, %struct.constructEntry*, i64, i64 }* %structArg)
  %gep_reload_entryIndex.2 = getelementptr { i64, %struct.constructEntry*, i64, i64 }, { i64, %struct.constructEntry*, i64, i64 }* %structArg, i32 0, i32 3
  %entryIndex.2.reload = load i64, i64* %gep_reload_entryIndex.2
  br label %145

; <label>:145                                     ; preds = %codeRepl
  %146 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %17, i64 %entryIndex.2.reload
  %147 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %146, i32 0, i32 1
  store i8* %124, i8** %147, align 8
  %148 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %146, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = icmp sgt i32 %131, 0
  br i1 %150, label %151, label %152

; <label>:151                                     ; preds = %145
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 1) #6, !srcloc !3
  br label %153

; <label>:152                                     ; preds = %145
  call void (...) @RTM_fallback_unlock()
  br label %153

; <label>:153                                     ; preds = %152, %151
  %154 = add nsw i64 %entryIndex.2.reload, 1
  %155 = srem i64 %154, %87
  %156 = getelementptr inbounds i8, i8* %124, i64 1
  %157 = call i64 @hashString(i8* %156)
  %158 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %146, i32 0, i32 2
  store i64 %157, i64* %158, align 8
  %159 = bitcast %struct.constructEntry* %146 to i8*
  br label %160

; <label>:160                                     ; preds = %204, %153
  %j6.0 = phi i64 [ 1, %153 ], [ %205, %204 ]
  %startHash.0 = phi i64 [ 0, %153 ], [ %171, %204 ]
  %161 = icmp slt i64 %j6.0, %31
  br i1 %161, label %162, label %206

; <label>:162                                     ; preds = %160
  %163 = sub nsw i64 %j6.0, 1
  %164 = getelementptr inbounds i8, i8* %124, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i64
  %167 = shl i64 %startHash.0, 6
  %168 = add i64 %166, %167
  %169 = shl i64 %startHash.0, 16
  %170 = add i64 %168, %169
  %171 = sub i64 %170, %startHash.0
  br label %172

; <label>:172                                     ; preds = %185, %162
  %tries10.0 = phi i32 [ 9, %162 ], [ %178, %185 ]
  br label %173

; <label>:173                                     ; preds = %176, %172
  %174 = call i64 (...) @RTM_fallback_isLocked()
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

; <label>:176                                     ; preds = %173
  call void @llvm.x86.sse2.pause() #6
  br label %173

; <label>:177                                     ; preds = %173
  %178 = add nsw i32 %tries10.0, -1
  %179 = icmp sle i32 %178, 0
  br i1 %179, label %180, label %181

; <label>:180                                     ; preds = %177
  call void (...) @RTM_fallback_lock()
  br label %191

; <label>:181                                     ; preds = %177
  %182 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 0, i64 2, i64 4294967295) #6, !srcloc !1
  %183 = trunc i64 %182 to i32
  %184 = icmp ne i32 %183, -1
  br i1 %184, label %185, label %186

; <label>:185                                     ; preds = %181
  br label %172

; <label>:186                                     ; preds = %181
  %187 = call i64 (...) @RTM_fallback_isLocked()
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %._crit_edge3

._crit_edge3:                                     ; preds = %186
  br label %190

; <label>:189                                     ; preds = %186
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %190

; <label>:190                                     ; preds = %189, %._crit_edge3
  br label %191

; <label>:191                                     ; preds = %190, %180
  %192 = getelementptr inbounds %struct.table*, %struct.table** %15, i64 %j6.0
  %193 = load %struct.table*, %struct.table** %192, align 8
  %194 = call i64 @TMtable_insert(%struct.table* %193, i64 %171, i8* %159)
  %195 = icmp sgt i32 %178, 0
  br i1 %195, label %196, label %197

; <label>:196                                     ; preds = %191
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 2) #6, !srcloc !3
  br label %198

; <label>:197                                     ; preds = %191
  call void (...) @RTM_fallback_unlock()
  br label %198

; <label>:198                                     ; preds = %197, %196
  %199 = icmp ne i64 %194, 0
  br i1 %199, label %200, label %201

; <label>:200                                     ; preds = %198
  br label %203

; <label>:201                                     ; preds = %198
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 405, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #9
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:203                                     ; preds = %200
  br label %204

; <label>:204                                     ; preds = %203
  %205 = add nsw i64 %j6.0, 1
  br label %160

; <label>:206                                     ; preds = %160
  %207 = sub nsw i64 %j6.0, 1
  %208 = getelementptr inbounds i8, i8* %124, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i64
  %211 = shl i64 %startHash.0, 6
  %212 = add i64 %210, %211
  %213 = shl i64 %startHash.0, 16
  %214 = add i64 %212, %213
  %215 = sub i64 %214, %startHash.0
  br label %216

; <label>:216                                     ; preds = %229, %206
  %tries12.0 = phi i32 [ 9, %206 ], [ %222, %229 ]
  br label %217

; <label>:217                                     ; preds = %220, %216
  %218 = call i64 (...) @RTM_fallback_isLocked()
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %221

; <label>:220                                     ; preds = %217
  call void @llvm.x86.sse2.pause() #6
  br label %217

; <label>:221                                     ; preds = %217
  %222 = add nsw i32 %tries12.0, -1
  %223 = icmp sle i32 %222, 0
  br i1 %223, label %224, label %225

; <label>:224                                     ; preds = %221
  call void (...) @RTM_fallback_lock()
  br label %235

; <label>:225                                     ; preds = %221
  %226 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 3, i64 0, i64 3, i64 4294967295) #6, !srcloc !1
  %227 = trunc i64 %226 to i32
  %228 = icmp ne i32 %227, -1
  br i1 %228, label %229, label %230

; <label>:229                                     ; preds = %225
  br label %216

; <label>:230                                     ; preds = %225
  %231 = call i64 (...) @RTM_fallback_isLocked()
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %._crit_edge4

._crit_edge4:                                     ; preds = %230
  br label %234

; <label>:233                                     ; preds = %230
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %234

; <label>:234                                     ; preds = %233, %._crit_edge4
  br label %235

; <label>:235                                     ; preds = %234, %224
  %236 = bitcast %struct.constructEntry* %146 to i8*
  %237 = call i64 @TMtable_insert(%struct.table* %19, i64 %215, i8* %236)
  %238 = icmp sgt i32 %222, 0
  br i1 %238, label %239, label %240

; <label>:239                                     ; preds = %235
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 3) #6, !srcloc !3
  br label %241

; <label>:240                                     ; preds = %235
  call void (...) @RTM_fallback_unlock()
  br label %241

; <label>:241                                     ; preds = %240, %239
  %242 = icmp ne i64 %237, 0
  br i1 %242, label %243, label %244

; <label>:243                                     ; preds = %241
  br label %246

; <label>:244                                     ; preds = %241
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 418, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #9
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:246                                     ; preds = %243
  br label %117

; <label>:247                                     ; preds = %117
  br label %248

; <label>:248                                     ; preds = %247
  call void @workEnd(i32 0, i32 0)
  br label %249

; <label>:249                                     ; preds = %248
  br label %250

; <label>:250                                     ; preds = %249
  %251 = add nsw i64 %i.1, 1
  br label %107

; <label>:252                                     ; preds = %107
  call void (...) @thread_barrier_wait()
  %253 = sub nsw i64 %31, 1
  %254 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 0
  %255 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 4
  %256 = sdiv i64 %32, 2
  %257 = add nsw i64 %87, %256
  %258 = sub nsw i64 %32, 1
  %259 = icmp eq i64 %8, %258
  %260 = icmp eq i64 %8, 0
  %261 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 0
  %262 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 0
  %264 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %17, i64 0
  br label %266

; <label>:266                                     ; preds = %468, %252
  %substringLength.0 = phi i64 [ %253, %252 ], [ %469, %468 ]
  %267 = icmp sgt i64 %substringLength.0, 0
  br i1 %267, label %268, label %470

; <label>:268                                     ; preds = %266
  br label %269

; <label>:269                                     ; preds = %268
  %270 = load i32, i32* %254, align 8
  %271 = call i32 @workBegin(i32 0, i32 %270)
  store i32 %271, i32* %255, align 4
  br label %272

; <label>:272                                     ; preds = %269
  %273 = getelementptr inbounds %struct.table*, %struct.table** %15, i64 %substringLength.0
  %274 = load %struct.table*, %struct.table** %273, align 8
  %275 = getelementptr inbounds %struct.table, %struct.table* %274, i32 0, i32 0
  %276 = load %struct.list**, %struct.list*** %275, align 8
  %277 = getelementptr inbounds %struct.table, %struct.table* %274, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = sdiv i64 %257, %32
  %280 = mul nsw i64 %8, %279
  br i1 %259, label %281, label %282

; <label>:281                                     ; preds = %272
  br label %284

; <label>:282                                     ; preds = %272
  %283 = add nsw i64 %280, %279
  br label %284

; <label>:284                                     ; preds = %282, %281
  %index_stop.0 = phi i64 [ %87, %281 ], [ %283, %282 ]
  %285 = sub nsw i64 %31, %substringLength.0
  br label %286

; <label>:286                                     ; preds = %398, %284
  %entryIndex.3 = phi i64 [ %280, %284 ], [ %402, %398 ]
  %287 = icmp slt i64 %entryIndex.3, %index_stop.0
  br i1 %287, label %288, label %403

; <label>:288                                     ; preds = %286
  %289 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %entryIndex.3
  %290 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %294, label %293

; <label>:293                                     ; preds = %288
  br label %398

; <label>:294                                     ; preds = %288
  %295 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %17, i64 %entryIndex.3
  %296 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %295, i32 0, i32 1
  %297 = load i8*, i8** %296, align 8
  %298 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %295, i32 0, i32 2
  %299 = load i64, i64* %298, align 8
  %300 = urem i64 %299, %278
  %301 = getelementptr inbounds %struct.list*, %struct.list** %276, i64 %300
  %302 = load %struct.list*, %struct.list** %301, align 8
  call void @list_iter_reset(%struct.list_node** %it16, %struct.list* %302)
  %303 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %295, i32 0, i32 3
  %304 = getelementptr inbounds i8, i8* %297, i64 %285
  %305 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %entryIndex.3
  %306 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %entryIndex.3
  %308 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %295, i32 0, i32 3
  %310 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %295, i32 0, i32 4
  %311 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %295, i32 0, i32 4
  %312 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %295, i32 0, i32 6
  %313 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %295, i32 0, i32 6
  %314 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %entryIndex.3
  %315 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %314, i32 0, i32 0
  br label %316

; <label>:316                                     ; preds = %396, %294
  %317 = call i64 @list_iter_hasNext(%struct.list_node** %it16, %struct.list* %302) #8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %.loopexit1

; <label>:319                                     ; preds = %316
  %320 = call i8* @list_iter_next(%struct.list_node** %it16, %struct.list* %302)
  %321 = bitcast i8* %320 to %struct.constructEntry*
  %322 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %321, i32 0, i32 1
  %323 = load i8*, i8** %322, align 8
  br label %324

; <label>:324                                     ; preds = %337, %319
  %tries18.0 = phi i32 [ 9, %319 ], [ %330, %337 ]
  br label %325

; <label>:325                                     ; preds = %328, %324
  %326 = call i64 (...) @RTM_fallback_isLocked()
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %329

; <label>:328                                     ; preds = %325
  call void @llvm.x86.sse2.pause() #6
  br label %325

; <label>:329                                     ; preds = %325
  %330 = add nsw i32 %tries18.0, -1
  %331 = icmp sle i32 %330, 0
  br i1 %331, label %332, label %333

; <label>:332                                     ; preds = %329
  call void (...) @RTM_fallback_lock()
  br label %343

; <label>:333                                     ; preds = %329
  %334 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 4, i64 0, i64 4, i64 4294967295) #6, !srcloc !1
  %335 = trunc i64 %334 to i32
  %336 = icmp ne i32 %335, -1
  br i1 %336, label %337, label %338

; <label>:337                                     ; preds = %333
  br label %324

; <label>:338                                     ; preds = %333
  %339 = call i64 (...) @RTM_fallback_isLocked()
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %._crit_edge5

._crit_edge5:                                     ; preds = %338
  br label %342

; <label>:341                                     ; preds = %338
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %342

; <label>:342                                     ; preds = %341, %._crit_edge5
  br label %343

; <label>:343                                     ; preds = %342, %332
  %344 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %321, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %._crit_edge6

._crit_edge6:                                     ; preds = %343
  br label %388

; <label>:347                                     ; preds = %343
  %348 = load %struct.constructEntry*, %struct.constructEntry** %303, align 8
  %349 = icmp ne %struct.constructEntry* %348, %321
  br i1 %349, label %350, label %._crit_edge7

._crit_edge7:                                     ; preds = %347
  br label %388

; <label>:350                                     ; preds = %347
  %351 = call i32 @strncmp(i8* %323, i8* %304, i64 %substringLength.0) #8
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %._crit_edge8

._crit_edge8:                                     ; preds = %350
  br label %388

; <label>:353                                     ; preds = %350
  %354 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %321, i32 0, i32 0
  store i64 0, i64* %354, align 8
  %355 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %321, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  store i64 0, i64* %306, align 8
  %357 = load i64, i64* %308, align 8
  %358 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %321, i32 0, i32 5
  %359 = load %struct.constructEntry*, %struct.constructEntry** %358, align 8
  %360 = load %struct.constructEntry*, %struct.constructEntry** %309, align 8
  %361 = icmp ne %struct.constructEntry* %359, null
  br i1 %361, label %362, label %363

; <label>:362                                     ; preds = %353
  br label %365

; <label>:363                                     ; preds = %353
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 506, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #9
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:365                                     ; preds = %362
  %366 = icmp ne %struct.constructEntry* %360, null
  br i1 %366, label %367, label %368

; <label>:367                                     ; preds = %365
  br label %370

; <label>:368                                     ; preds = %365
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 507, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #9
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:370                                     ; preds = %367
  %371 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %359, i32 0, i32 3
  store %struct.constructEntry* %360, %struct.constructEntry** %371, align 8
  %372 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %359, i32 0, i32 3
  %373 = load %struct.constructEntry*, %struct.constructEntry** %372, align 8
  store %struct.constructEntry* %321, %struct.constructEntry** %310, align 8
  %374 = load %struct.constructEntry*, %struct.constructEntry** %311, align 8
  %375 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %360, i32 0, i32 5
  store %struct.constructEntry* %359, %struct.constructEntry** %375, align 8
  %376 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %360, i32 0, i32 5
  %377 = load %struct.constructEntry*, %struct.constructEntry** %376, align 8
  store i64 %substringLength.0, i64* %312, align 8
  %378 = load i64, i64* %313, align 8
  %379 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %360, i32 0, i32 7
  %380 = load i64, i64* %379, align 8
  %381 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %321, i32 0, i32 7
  %382 = load i64, i64* %381, align 8
  %383 = add nsw i64 %380, %382
  %384 = sub nsw i64 %383, %substringLength.0
  %385 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %360, i32 0, i32 7
  store i64 %384, i64* %385, align 8
  %386 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %360, i32 0, i32 7
  %387 = load i64, i64* %386, align 8
  br label %388

; <label>:388                                     ; preds = %370, %._crit_edge8, %._crit_edge7, %._crit_edge6
  %389 = icmp sgt i32 %330, 0
  br i1 %389, label %390, label %391

; <label>:390                                     ; preds = %388
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 4) #6, !srcloc !3
  br label %392

; <label>:391                                     ; preds = %388
  call void (...) @RTM_fallback_unlock()
  br label %392

; <label>:392                                     ; preds = %391, %390
  %393 = load i64, i64* %315, align 8
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %396, label %395

; <label>:395                                     ; preds = %392
  br label %397

; <label>:396                                     ; preds = %392
  br label %316

.loopexit1:                                       ; preds = %316
  br label %397

; <label>:397                                     ; preds = %.loopexit1, %395
  br label %398

; <label>:398                                     ; preds = %397, %293
  %399 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %entryIndex.3
  %400 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %399, i32 0, i32 1
  %401 = load i64, i64* %400, align 8
  %402 = add nsw i64 %entryIndex.3, %401
  br label %286

; <label>:403                                     ; preds = %286
  call void (...) @thread_barrier_wait()
  br i1 %260, label %404, label %._crit_edge9

._crit_edge9:                                     ; preds = %403
  br label %465

; <label>:404                                     ; preds = %403
  %405 = icmp sgt i64 %substringLength.0, 1
  br i1 %405, label %406, label %._crit_edge10

._crit_edge10:                                    ; preds = %404
  br label %464

; <label>:406                                     ; preds = %404
  %407 = sub nsw i64 %31, %substringLength.0
  %408 = add nsw i64 %407, 1
  br label %409

; <label>:409                                     ; preds = %416, %406
  %i.2 = phi i64 [ 1, %406 ], [ %420, %416 ]
  %410 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %i.2
  %411 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = icmp ne i64 %412, 0
  %414 = xor i1 %413, true
  br i1 %414, label %415, label %421

; <label>:415                                     ; preds = %409
  br label %416

; <label>:416                                     ; preds = %415
  %417 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %i.2
  %418 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %417, i32 0, i32 1
  %419 = load i64, i64* %418, align 8
  %420 = add nsw i64 %i.2, %419
  br label %409

; <label>:421                                     ; preds = %409
  store i64 %i.2, i64* %262, align 8
  %422 = load i64, i64* %264, align 8
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %._crit_edge11

._crit_edge11:                                    ; preds = %421
  br label %430

; <label>:424                                     ; preds = %421
  %425 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %265, i32 0, i32 1
  %426 = load i8*, i8** %425, align 8
  %427 = getelementptr inbounds i8, i8* %426, i64 %408
  %428 = call i64 @hashString(i8* %427)
  %429 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %265, i32 0, i32 2
  store i64 %428, i64* %429, align 8
  br label %430

; <label>:430                                     ; preds = %424, %._crit_edge11
  br label %431

; <label>:431                                     ; preds = %455, %430
  %i.3 = phi i64 [ %i.2, %430 ], [ %459, %455 ]
  %j.0 = phi i64 [ 0, %430 ], [ %j.1, %455 ]
  %432 = icmp slt i64 %i.3, %87
  br i1 %432, label %433, label %460

; <label>:433                                     ; preds = %431
  %434 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %i.3
  %435 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %434, i32 0, i32 0
  %436 = load i64, i64* %435, align 8
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %._crit_edge12

._crit_edge12:                                    ; preds = %433
  br label %454

; <label>:438                                     ; preds = %433
  %439 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %17, i64 %i.3
  %440 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %439, i32 0, i32 1
  %441 = load i8*, i8** %440, align 8
  %442 = getelementptr inbounds i8, i8* %441, i64 %408
  %443 = call i64 @hashString(i8* %442)
  %444 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %439, i32 0, i32 2
  store i64 %443, i64* %444, align 8
  %445 = sub nsw i64 %i.3, %j.0
  %446 = sext i32 1 to i64
  %447 = icmp sgt i64 %446, %445
  br i1 %447, label %448, label %450

; <label>:448                                     ; preds = %438
  %449 = sext i32 1 to i64
  br label %451

; <label>:450                                     ; preds = %438
  br label %451

; <label>:451                                     ; preds = %450, %448
  %.reg2mem23.0 = phi i64 [ %449, %448 ], [ %445, %450 ]
  %452 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %j.0
  %453 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %452, i32 0, i32 1
  store i64 %.reg2mem23.0, i64* %453, align 8
  br label %454

; <label>:454                                     ; preds = %451, %._crit_edge12
  %j.1 = phi i64 [ %i.3, %451 ], [ %j.0, %._crit_edge12 ]
  br label %455

; <label>:455                                     ; preds = %454
  %456 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %i.3
  %457 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %456, i32 0, i32 1
  %458 = load i64, i64* %457, align 8
  %459 = add nsw i64 %i.3, %458
  br label %431

; <label>:460                                     ; preds = %431
  %461 = sub nsw i64 %i.3, %j.0
  %462 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %j.0
  %463 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %462, i32 0, i32 1
  store i64 %461, i64* %463, align 8
  br label %464

; <label>:464                                     ; preds = %460, %._crit_edge10
  br label %465

; <label>:465                                     ; preds = %464, %._crit_edge9
  call void (...) @thread_barrier_wait()
  br label %466

; <label>:466                                     ; preds = %465
  call void @workEnd(i32 0, i32 0)
  br label %467

; <label>:467                                     ; preds = %466
  br label %468

; <label>:468                                     ; preds = %467
  %469 = add nsw i64 %substringLength.0, -1
  br label %266

; <label>:470                                     ; preds = %266
  call void (...) @thread_barrier_wait()
  %471 = icmp eq i64 %8, 0
  br i1 %471, label %472, label %._crit_edge13

._crit_edge13:                                    ; preds = %470
  br label %551

; <label>:472                                     ; preds = %470
  br label %473

; <label>:473                                     ; preds = %485, %472
  %i.4 = phi i64 [ 0, %472 ], [ %486, %485 ]
  %totalLength.0 = phi i64 [ 0, %472 ], [ %totalLength.1, %485 ]
  %474 = icmp slt i64 %i.4, %87
  br i1 %474, label %475, label %487

; <label>:475                                     ; preds = %473
  %476 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %17, i64 %i.4
  %477 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %476, i32 0, i32 0
  %478 = load i64, i64* %477, align 8
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %._crit_edge14

._crit_edge14:                                    ; preds = %475
  br label %484

; <label>:480                                     ; preds = %475
  %481 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %476, i32 0, i32 7
  %482 = load i64, i64* %481, align 8
  %483 = add nsw i64 %totalLength.0, %482
  br label %484

; <label>:484                                     ; preds = %480, %._crit_edge14
  %totalLength.1 = phi i64 [ %483, %480 ], [ %totalLength.0, %._crit_edge14 ]
  br label %485

; <label>:485                                     ; preds = %484
  %486 = add nsw i64 %i.4, 1
  br label %473

; <label>:487                                     ; preds = %473
  %488 = add nsw i64 %totalLength.0, 1
  %489 = mul i64 %488, 1
  %490 = call noalias i8* @malloc(i64 %489) #6
  %491 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %9, i32 0, i32 0
  store i8* %490, i8** %491, align 8
  %492 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %9, i32 0, i32 0
  %493 = load i8*, i8** %492, align 8
  %494 = icmp ne i8* %493, null
  br i1 %494, label %495, label %496

; <label>:495                                     ; preds = %487
  br label %498

; <label>:496                                     ; preds = %487
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 593, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #9
  unreachable
                                                  ; No predecessors!
  br label %498

; <label>:498                                     ; preds = %497, %495
  br label %499

; <label>:499                                     ; preds = %542, %498
  %i.5 = phi i64 [ 0, %498 ], [ %543, %542 ]
  %sequenceLength.0 = phi i64 [ 0, %498 ], [ %sequenceLength.1, %542 ]
  %500 = icmp slt i64 %i.5, %87
  br i1 %500, label %501, label %544

; <label>:501                                     ; preds = %499
  %502 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %17, i64 %i.5
  %503 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %502, i32 0, i32 0
  %504 = load i64, i64* %503, align 8
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %._crit_edge15

._crit_edge15:                                    ; preds = %501
  br label %541

; <label>:506                                     ; preds = %501
  %507 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %502, i32 0, i32 7
  %508 = load i64, i64* %507, align 8
  %509 = add nsw i64 %sequenceLength.0, %508
  %510 = icmp sle i64 %509, %totalLength.0
  br i1 %510, label %511, label %512

; <label>:511                                     ; preds = %506
  br label %514

; <label>:512                                     ; preds = %506
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 603, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #9
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:514                                     ; preds = %511
  %515 = getelementptr inbounds i8, i8* %493, i64 %sequenceLength.0
  %516 = getelementptr inbounds i8, i8* %493, i64 %509
  br label %517

; <label>:517                                     ; preds = %._crit_edge16, %514
  %copyPtr.0 = phi i8* [ %515, %514 ], [ %529, %._crit_edge16 ]
  %constructEntryPtr26.0 = phi %struct.constructEntry* [ %502, %514 ], [ %532, %._crit_edge16 ]
  %518 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %constructEntryPtr26.0, i32 0, i32 6
  %519 = load i64, i64* %518, align 8
  %520 = sub nsw i64 %31, %519
  %521 = getelementptr inbounds i8, i8* %copyPtr.0, i64 %520
  %522 = icmp ugt i8* %521, %516
  br i1 %522, label %523, label %525

; <label>:523                                     ; preds = %517
  %.lcssa = phi i64 [ %520, %517 ]
  %524 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0))
  br label %534

; <label>:525                                     ; preds = %517
  %526 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %constructEntryPtr26.0, i32 0, i32 1
  %527 = load i8*, i8** %526, align 8
  %528 = mul i64 %520, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %copyPtr.0, i8* %527, i64 %528, i32 1, i1 false)
  %529 = getelementptr inbounds i8, i8* %copyPtr.0, i64 %520
  br label %530

; <label>:530                                     ; preds = %525
  %531 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %constructEntryPtr26.0, i32 0, i32 4
  %532 = load %struct.constructEntry*, %struct.constructEntry** %531, align 8
  %533 = icmp ne %struct.constructEntry* %532, null
  br i1 %533, label %._crit_edge16, label %.loopexit

._crit_edge16:                                    ; preds = %530
  br label %517

.loopexit:                                        ; preds = %530
  %.lcssa27 = phi i64 [ %520, %530 ]
  br label %534

; <label>:534                                     ; preds = %.loopexit, %523
  %copyPtr.1 = phi i8* [ %copyPtr.0, %523 ], [ %529, %.loopexit ]
  %535 = getelementptr inbounds i8, i8* %493, i64 %509
  %536 = icmp ule i8* %copyPtr.1, %535
  br i1 %536, label %537, label %538

; <label>:537                                     ; preds = %534
  br label %540

; <label>:538                                     ; preds = %534
  call void @__assert_fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 617, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #9
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:540                                     ; preds = %537
  br label %541

; <label>:541                                     ; preds = %540, %._crit_edge15
  %sequenceLength.1 = phi i64 [ %509, %540 ], [ %sequenceLength.0, %._crit_edge15 ]
  br label %542

; <label>:542                                     ; preds = %541
  %543 = add nsw i64 %i.5, 1
  br label %499

; <label>:544                                     ; preds = %499
  %545 = icmp ne i8* %493, null
  br i1 %545, label %546, label %547

; <label>:546                                     ; preds = %544
  br label %549

; <label>:547                                     ; preds = %544
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 621, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #9
  unreachable
                                                  ; No predecessors!
  br label %549

; <label>:549                                     ; preds = %548, %546
  %550 = getelementptr inbounds i8, i8* %493, i64 %sequenceLength.0
  store i8 0, i8* %550, align 1
  br label %551

; <label>:551                                     ; preds = %549, %._crit_edge13
  br label %552

; <label>:552                                     ; preds = %551
  %553 = call i64 (...) @thread_getId()
  %554 = trunc i64 %553 to i32
  %555 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 4
  %556 = load i32, i32* %555, align 4
  call void @SimRoiEnd(i32 %554, i32 %556)
  br label %557

; <label>:557                                     ; preds = %552
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

; Function Attrs: alwaysinline nounwind
define internal void @sequencer_run___kernel__sequencer_run0({ i64, %struct.constructEntry*, i64, i64 }*) #7 {
newFuncRoot:
  %gep_entryIndex.1 = getelementptr { i64, %struct.constructEntry*, i64, i64 }, { i64, %struct.constructEntry*, i64, i64 }* %0, i32 0, i32 0
  %loadgep_entryIndex.1 = load i64, i64* %gep_entryIndex.1
  %gep_ = getelementptr { i64, %struct.constructEntry*, i64, i64 }, { i64, %struct.constructEntry*, i64, i64 }* %0, i32 0, i32 1
  %loadgep_ = load %struct.constructEntry*, %struct.constructEntry** %gep_
  %gep_1 = getelementptr { i64, %struct.constructEntry*, i64, i64 }, { i64, %struct.constructEntry*, i64, i64 }* %0, i32 0, i32 2
  %loadgep_2 = load i64, i64* %gep_1
  br label %__kernel__sequencer_run0

.exitStub:                                        ; preds = %__kernel__sequencer_run0
  %gep_entryIndex.2 = getelementptr { i64, %struct.constructEntry*, i64, i64 }, { i64, %struct.constructEntry*, i64, i64 }* %0, i32 0, i32 3
  store i64 %entryIndex.2, i64* %gep_entryIndex.2
  ret void

__kernel__sequencer_run0:                         ; preds = %newFuncRoot, %5
  %entryIndex.2 = phi i64 [ %loadgep_entryIndex.1, %newFuncRoot ], [ %7, %5 ]
  %1 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %loadgep_, i64 %entryIndex.2
  %2 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %1, i32 0, i32 1
  %3 = load i8*, i8** %2, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %.exitStub

; <label>:5                                       ; preds = %__kernel__sequencer_run0
  %6 = add nsw i64 %entryIndex.2, 1
  %7 = srem i64 %6, %loadgep_2
  br label %__kernel__sequencer_run0, !llvm.loop !4
}

; Function Attrs: alwaysinline nounwind
define internal void @sequencer_run___kernel__sequencer_run1({ i64, i64, %struct.vector*, %struct.hashtable* }*) #7 {
newFuncRoot:
  %gep_i.0 = getelementptr { i64, i64, %struct.vector*, %struct.hashtable* }, { i64, i64, %struct.vector*, %struct.hashtable* }* %0, i32 0, i32 0
  %loadgep_i.0 = load i64, i64* %gep_i.0
  %gep_.reg2mem25.0 = getelementptr { i64, i64, %struct.vector*, %struct.hashtable* }, { i64, i64, %struct.vector*, %struct.hashtable* }* %0, i32 0, i32 1
  %loadgep_.reg2mem25.0 = load i64, i64* %gep_.reg2mem25.0
  %gep_ = getelementptr { i64, i64, %struct.vector*, %struct.hashtable* }, { i64, i64, %struct.vector*, %struct.hashtable* }* %0, i32 0, i32 2
  %loadgep_ = load %struct.vector*, %struct.vector** %gep_
  %gep_1 = getelementptr { i64, i64, %struct.vector*, %struct.hashtable* }, { i64, i64, %struct.vector*, %struct.hashtable* }* %0, i32 0, i32 3
  %loadgep_2 = load %struct.hashtable*, %struct.hashtable** %gep_1
  br label %__kernel__sequencer_run1

.exitStub:                                        ; preds = %__kernel__sequencer_run1
  ret void

__kernel__sequencer_run1:                         ; preds = %newFuncRoot, %5
  %ii.0 = phi i64 [ %loadgep_i.0, %newFuncRoot ], [ %6, %5 ]
  %1 = icmp slt i64 %ii.0, %loadgep_.reg2mem25.0
  br i1 %1, label %2, label %.exitStub

; <label>:2                                       ; preds = %__kernel__sequencer_run1
  %3 = call i8* @vector_at(%struct.vector* %loadgep_, i64 %ii.0)
  %4 = call i64 @TMhashtable_insert(%struct.hashtable* %loadgep_2, i8* %3, i8* %3)
  br label %5

; <label>:5                                       ; preds = %2
  %6 = add nsw i64 %ii.0, 1
  br label %__kernel__sequencer_run1, !llvm.loop !6
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }
attributes #7 = { alwaysinline nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 1398597, i32 1398613, i32 1398649, i32 1398685, i32 1398721}
!2 = !{i32 1399198, i32 1399213, i32 1399247}
!3 = !{i32 1398969, i32 1398984, i32 1399012}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.vectorize.width", i32 1337}
!6 = distinct !{!6, !5}
