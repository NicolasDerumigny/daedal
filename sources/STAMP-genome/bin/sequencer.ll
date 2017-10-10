; ModuleID = 'sequencer.c'
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
  %1 = alloca %struct.sequencer*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.segments*, align 8
  %sequencerPtr = alloca %struct.sequencer*, align 8
  %maxNumUniqueSegment = alloca i64, align 8
  %i = alloca i64, align 8
  %endInfoEntryPtr = alloca %struct.endInfoEntry*, align 8
  %constructEntryPtr = alloca %struct.constructEntry*, align 8
  store i64 %geneLength, i64* %2, align 8
  store i64 %segmentLength, i64* %3, align 8
  store %struct.segments* %segmentsPtr, %struct.segments** %4, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = sub nsw i64 %5, %6
  %8 = add nsw i64 %7, 1
  store i64 %8, i64* %maxNumUniqueSegment, align 8
  %9 = call noalias i8* @malloc(i64 64) #6
  %10 = bitcast i8* %9 to %struct.sequencer*
  store %struct.sequencer* %10, %struct.sequencer** %sequencerPtr, align 8
  %11 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %12 = icmp eq %struct.sequencer* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %0
  store %struct.sequencer* null, %struct.sequencer** %1, align 8
  br label %148

; <label>:14                                      ; preds = %0
  %15 = load i64, i64* %2, align 8
  %16 = call %struct.hashtable* @hashtable_alloc(i64 %15, i64 (i8*)* @hashSegment, i64 (%struct.pair*, %struct.pair*)* @compareSegment, i64 -1, i64 -1)
  %17 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %18 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %17, i32 0, i32 2
  store %struct.hashtable* %16, %struct.hashtable** %18, align 8
  %19 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %20 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %19, i32 0, i32 2
  %21 = load %struct.hashtable*, %struct.hashtable** %20, align 8
  %22 = icmp eq %struct.hashtable* %21, null
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %14
  store %struct.sequencer* null, %struct.sequencer** %1, align 8
  br label %148

; <label>:24                                      ; preds = %14
  %25 = load i64, i64* %maxNumUniqueSegment, align 8
  %26 = mul i64 %25, 16
  %27 = call noalias i8* @malloc(i64 %26) #6
  %28 = bitcast i8* %27 to %struct.endInfoEntry*
  %29 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %30 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %29, i32 0, i32 3
  store %struct.endInfoEntry* %28, %struct.endInfoEntry** %30, align 8
  store i64 0, i64* %i, align 8
  br label %31

; <label>:31                                      ; preds = %45, %24
  %32 = load i64, i64* %i, align 8
  %33 = load i64, i64* %maxNumUniqueSegment, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %48

; <label>:35                                      ; preds = %31
  %36 = load i64, i64* %i, align 8
  %37 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %38 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %37, i32 0, i32 3
  %39 = load %struct.endInfoEntry*, %struct.endInfoEntry** %38, align 8
  %40 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %39, i64 %36
  store %struct.endInfoEntry* %40, %struct.endInfoEntry** %endInfoEntryPtr, align 8
  %41 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntryPtr, align 8
  %42 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %41, i32 0, i32 0
  store i64 1, i64* %42, align 8
  %43 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntryPtr, align 8
  %44 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %43, i32 0, i32 1
  store i64 1, i64* %44, align 8
  br label %45

; <label>:45                                      ; preds = %35
  %46 = load i64, i64* %i, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %i, align 8
  br label %31

; <label>:48                                      ; preds = %31
  %49 = load i64, i64* %3, align 8
  %50 = mul i64 %49, 8
  %51 = call noalias i8* @malloc(i64 %50) #6
  %52 = bitcast i8* %51 to %struct.table**
  %53 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %54 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %53, i32 0, i32 4
  store %struct.table** %52, %struct.table*** %54, align 8
  %55 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %56 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %55, i32 0, i32 4
  %57 = load %struct.table**, %struct.table*** %56, align 8
  %58 = icmp eq %struct.table** %57, null
  br i1 %58, label %59, label %60

; <label>:59                                      ; preds = %48
  store %struct.sequencer* null, %struct.sequencer** %1, align 8
  br label %148

; <label>:60                                      ; preds = %48
  store i64 1, i64* %i, align 8
  br label %61

; <label>:61                                      ; preds = %82, %60
  %62 = load i64, i64* %i, align 8
  %63 = load i64, i64* %3, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %85

; <label>:65                                      ; preds = %61
  %66 = load i64, i64* %2, align 8
  %67 = call %struct.table* @table_alloc(i64 %66, i64 (i8*, i8*)* null)
  %68 = load i64, i64* %i, align 8
  %69 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %70 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %69, i32 0, i32 4
  %71 = load %struct.table**, %struct.table*** %70, align 8
  %72 = getelementptr inbounds %struct.table*, %struct.table** %71, i64 %68
  store %struct.table* %67, %struct.table** %72, align 8
  %73 = load i64, i64* %i, align 8
  %74 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %75 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %74, i32 0, i32 4
  %76 = load %struct.table**, %struct.table*** %75, align 8
  %77 = getelementptr inbounds %struct.table*, %struct.table** %76, i64 %73
  %78 = load %struct.table*, %struct.table** %77, align 8
  %79 = icmp eq %struct.table* %78, null
  br i1 %79, label %80, label %81

; <label>:80                                      ; preds = %65
  store %struct.sequencer* null, %struct.sequencer** %1, align 8
  br label %148

; <label>:81                                      ; preds = %65
  br label %82

; <label>:82                                      ; preds = %81
  %83 = load i64, i64* %i, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %i, align 8
  br label %61

; <label>:85                                      ; preds = %61
  %86 = load i64, i64* %3, align 8
  %87 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %88 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %87, i32 0, i32 7
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* %maxNumUniqueSegment, align 8
  %90 = mul i64 %89, 64
  %91 = call noalias i8* @malloc(i64 %90) #6
  %92 = bitcast i8* %91 to %struct.constructEntry*
  %93 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %94 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %93, i32 0, i32 5
  store %struct.constructEntry* %92, %struct.constructEntry** %94, align 8
  %95 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %96 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %95, i32 0, i32 5
  %97 = load %struct.constructEntry*, %struct.constructEntry** %96, align 8
  %98 = icmp eq %struct.constructEntry* %97, null
  br i1 %98, label %99, label %100

; <label>:99                                      ; preds = %85
  store %struct.sequencer* null, %struct.sequencer** %1, align 8
  br label %148

; <label>:100                                     ; preds = %85
  store i64 0, i64* %i, align 8
  br label %101

; <label>:101                                     ; preds = %130, %100
  %102 = load i64, i64* %i, align 8
  %103 = load i64, i64* %maxNumUniqueSegment, align 8
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %105, label %133

; <label>:105                                     ; preds = %101
  %106 = load i64, i64* %i, align 8
  %107 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %108 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %107, i32 0, i32 5
  %109 = load %struct.constructEntry*, %struct.constructEntry** %108, align 8
  %110 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %109, i64 %106
  store %struct.constructEntry* %110, %struct.constructEntry** %constructEntryPtr, align 8
  %111 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr, align 8
  %112 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %111, i32 0, i32 0
  store i64 1, i64* %112, align 8
  %113 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr, align 8
  %114 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %113, i32 0, i32 1
  store i8* null, i8** %114, align 8
  %115 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr, align 8
  %116 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %115, i32 0, i32 2
  store i64 0, i64* %116, align 8
  %117 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr, align 8
  %118 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr, align 8
  %119 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %118, i32 0, i32 3
  store %struct.constructEntry* %117, %struct.constructEntry** %119, align 8
  %120 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr, align 8
  %121 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %120, i32 0, i32 4
  store %struct.constructEntry* null, %struct.constructEntry** %121, align 8
  %122 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr, align 8
  %123 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr, align 8
  %124 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %123, i32 0, i32 5
  store %struct.constructEntry* %122, %struct.constructEntry** %124, align 8
  %125 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr, align 8
  %126 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %125, i32 0, i32 6
  store i64 0, i64* %126, align 8
  %127 = load i64, i64* %3, align 8
  %128 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr, align 8
  %129 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %128, i32 0, i32 7
  store i64 %127, i64* %129, align 8
  br label %130

; <label>:130                                     ; preds = %105
  %131 = load i64, i64* %i, align 8
  %132 = add nsw i64 %131, 1
  store i64 %132, i64* %i, align 8
  br label %101

; <label>:133                                     ; preds = %101
  %134 = load i64, i64* %2, align 8
  %135 = call %struct.table* @table_alloc(i64 %134, i64 (i8*, i8*)* null)
  %136 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %137 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %136, i32 0, i32 6
  store %struct.table* %135, %struct.table** %137, align 8
  %138 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %139 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %138, i32 0, i32 6
  %140 = load %struct.table*, %struct.table** %139, align 8
  %141 = icmp eq %struct.table* %140, null
  br i1 %141, label %142, label %143

; <label>:142                                     ; preds = %133
  store %struct.sequencer* null, %struct.sequencer** %1, align 8
  br label %148

; <label>:143                                     ; preds = %133
  %144 = load %struct.segments*, %struct.segments** %4, align 8
  %145 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %146 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %145, i32 0, i32 1
  store %struct.segments* %144, %struct.segments** %146, align 8
  %147 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  store %struct.sequencer* %147, %struct.sequencer** %1, align 8
  br label %148

; <label>:148                                     ; preds = %143, %142, %99, %80, %59, %23, %13
  %149 = load %struct.sequencer*, %struct.sequencer** %1, align 8
  ret %struct.sequencer* %149
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.hashtable* @hashtable_alloc(i64, i64 (i8*)*, i64 (%struct.pair*, %struct.pair*)*, i64, i64) #2

; Function Attrs: nounwind uwtable
define internal i64 @hashSegment(i8* %keyPtr) #0 {
  %1 = alloca i8*, align 8
  store i8* %keyPtr, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = call i64 @hash_sdbm(i8* %2)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal i64 @compareSegment(%struct.pair* %a, %struct.pair* %b) #0 {
  %1 = alloca %struct.pair*, align 8
  %2 = alloca %struct.pair*, align 8
  store %struct.pair* %a, %struct.pair** %1, align 8
  store %struct.pair* %b, %struct.pair** %2, align 8
  %3 = load %struct.pair*, %struct.pair** %1, align 8
  %4 = getelementptr inbounds %struct.pair, %struct.pair* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.pair*, %struct.pair** %2, align 8
  %7 = getelementptr inbounds %struct.pair, %struct.pair* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @strcmp(i8* %5, i8* %8) #7
  %10 = sext i32 %9 to i64
  ret i64 %10
}

declare %struct.table* @table_alloc(i64, i64 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define void @sequencer_run(i8* %argPtr) #0 {
  %1 = alloca i64, align 8
  %handler.i33 = alloca i64, align 8
  %ret.i34 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %handler.i31 = alloca i64, align 8
  %ret.i32 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %handler.i29 = alloca i64, align 8
  %ret.i30 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %handler.i27 = alloca i64, align 8
  %ret.i28 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %handler.i = alloca i64, align 8
  %ret.i = alloca i64, align 8
  %16 = alloca i8*, align 8
  %_tm_thread_context = alloca %struct._tm_thread_context_t*, align 8
  %threadId = alloca i64, align 8
  %sequencerPtr = alloca %struct.sequencer*, align 8
  %uniqueSegmentsPtr = alloca %struct.hashtable*, align 8
  %endInfoEntries = alloca %struct.endInfoEntry*, align 8
  %startHashToConstructEntryTables = alloca %struct.table**, align 8
  %constructEntries = alloca %struct.constructEntry*, align 8
  %hashToConstructEntryTable = alloca %struct.table*, align 8
  %segmentsPtr = alloca %struct.segments*, align 8
  %segmentsContentsPtr = alloca %struct.vector*, align 8
  %numSegment = alloca i64, align 8
  %segmentLength = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %i_start = alloca i64, align 8
  %i_stop = alloca i64, align 8
  %numUniqueSegment = alloca i64, align 8
  %substringLength = alloca i64, align 8
  %entryIndex = alloca i64, align 8
  %numThread = alloca i64, align 8
  %partitionSize = alloca i64, align 8
  %threadId1 = alloca i32, align 4
  %__status = alloca i32, align 4
  %tries = alloca i32, align 4
  %ii = alloca i64, align 8
  %ii_stop = alloca i64, align 8
  %_a = alloca i64, align 8
  %_b = alloca i64, align 8
  %17 = alloca i64, align 8
  %segment = alloca i8*, align 8
  %num = alloca i64, align 8
  %partitionSize2 = alloca i64, align 8
  %partitionSize3 = alloca i64, align 8
  %threadId4 = alloca i32, align 4
  %chainPtr = alloca %struct.list*, align 8
  %it = alloca %struct.list_node*, align 8
  %segment5 = alloca i8*, align 8
  %constructEntryPtr = alloca %struct.constructEntry*, align 8
  %j6 = alloca i64, align 8
  %startHash = alloca i64, align 8
  %status = alloca i64, align 8
  %__status7 = alloca i32, align 4
  %tries8 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %__status9 = alloca i32, align 4
  %tries10 = alloca i32, align 4
  %__status11 = alloca i32, align 4
  %tries12 = alloca i32, align 4
  %threadId13 = alloca i32, align 4
  %startHashToConstructEntryTablePtr = alloca %struct.table*, align 8
  %buckets = alloca %struct.list**, align 8
  %numBucket = alloca i64, align 8
  %index_start = alloca i64, align 8
  %index_stop = alloca i64, align 8
  %partitionSize14 = alloca i64, align 8
  %endConstructEntryPtr = alloca %struct.constructEntry*, align 8
  %endSegment = alloca i8*, align 8
  %endHash = alloca i64, align 8
  %chainPtr15 = alloca %struct.list*, align 8
  %it16 = alloca %struct.list_node*, align 8
  %startConstructEntryPtr = alloca %struct.constructEntry*, align 8
  %startSegment = alloca i8*, align 8
  %newLength = alloca i64, align 8
  %__status17 = alloca i32, align 4
  %tries18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %startConstructEntry_endPtr = alloca %struct.constructEntry*, align 8
  %endConstructEntry_startPtr = alloca %struct.constructEntry*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.constructEntry*, align 8
  %22 = alloca %struct.constructEntry*, align 8
  %23 = alloca %struct.constructEntry*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %index = alloca i64, align 8
  %constructEntryPtr19 = alloca %struct.constructEntry*, align 8
  %segment20 = alloca i8*, align 8
  %constructEntryPtr21 = alloca %struct.constructEntry*, align 8
  %segment22 = alloca i8*, align 8
  %_a23 = alloca i32, align 4
  %_b24 = alloca i64, align 8
  %26 = alloca i64, align 8
  %totalLength = alloca i64, align 8
  %constructEntryPtr25 = alloca %struct.constructEntry*, align 8
  %sequence = alloca i8*, align 8
  %copyPtr = alloca i8*, align 8
  %sequenceLength = alloca i64, align 8
  %constructEntryPtr26 = alloca %struct.constructEntry*, align 8
  %newSequenceLength = alloca i64, align 8
  %numChar = alloca i64, align 8
  store i8* %argPtr, i8** %16, align 8
  %27 = call i64 (...) @thread_getId()
  %28 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %29 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %28, i64 %27
  store %struct._tm_thread_context_t* %29, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  br label %30

; <label>:30                                      ; preds = %0
  %31 = call i64 (...) @thread_getId()
  %32 = trunc i64 %31 to i32
  call void @SimRoiStart(i32 %32)
  br label %33

; <label>:33                                      ; preds = %30
  %34 = call i64 (...) @thread_getId()
  store i64 %34, i64* %threadId, align 8
  %35 = load i8*, i8** %16, align 8
  %36 = bitcast i8* %35 to %struct.sequencer*
  store %struct.sequencer* %36, %struct.sequencer** %sequencerPtr, align 8
  %37 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %38 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %37, i32 0, i32 2
  %39 = load %struct.hashtable*, %struct.hashtable** %38, align 8
  store %struct.hashtable* %39, %struct.hashtable** %uniqueSegmentsPtr, align 8
  %40 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %41 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %40, i32 0, i32 3
  %42 = load %struct.endInfoEntry*, %struct.endInfoEntry** %41, align 8
  store %struct.endInfoEntry* %42, %struct.endInfoEntry** %endInfoEntries, align 8
  %43 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %44 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %43, i32 0, i32 4
  %45 = load %struct.table**, %struct.table*** %44, align 8
  store %struct.table** %45, %struct.table*** %startHashToConstructEntryTables, align 8
  %46 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %47 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %46, i32 0, i32 5
  %48 = load %struct.constructEntry*, %struct.constructEntry** %47, align 8
  store %struct.constructEntry* %48, %struct.constructEntry** %constructEntries, align 8
  %49 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %50 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %49, i32 0, i32 6
  %51 = load %struct.table*, %struct.table** %50, align 8
  store %struct.table* %51, %struct.table** %hashToConstructEntryTable, align 8
  %52 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %53 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %52, i32 0, i32 1
  %54 = load %struct.segments*, %struct.segments** %53, align 8
  store %struct.segments* %54, %struct.segments** %segmentsPtr, align 8
  %55 = load %struct.segments*, %struct.segments** %segmentsPtr, align 8
  %56 = icmp ne %struct.segments* %55, null
  br i1 %56, label %57, label %58

; <label>:57                                      ; preds = %33
  br label %60

; <label>:58                                      ; preds = %33
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 257, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %60

; <label>:60                                      ; preds = %59, %57
  %61 = load %struct.segments*, %struct.segments** %segmentsPtr, align 8
  %62 = getelementptr inbounds %struct.segments, %struct.segments* %61, i32 0, i32 2
  %63 = load %struct.vector*, %struct.vector** %62, align 8
  store %struct.vector* %63, %struct.vector** %segmentsContentsPtr, align 8
  %64 = load %struct.vector*, %struct.vector** %segmentsContentsPtr, align 8
  %65 = call i64 @vector_getSize(%struct.vector* %64)
  store i64 %65, i64* %numSegment, align 8
  %66 = load %struct.segments*, %struct.segments** %segmentsPtr, align 8
  %67 = getelementptr inbounds %struct.segments, %struct.segments* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %segmentLength, align 8
  %69 = call i64 (...) @thread_getNumThread()
  store i64 %69, i64* %numThread, align 8
  %70 = load i64, i64* %numSegment, align 8
  %71 = load i64, i64* %numThread, align 8
  %72 = sdiv i64 %71, 2
  %73 = add nsw i64 %70, %72
  %74 = load i64, i64* %numThread, align 8
  %75 = sdiv i64 %73, %74
  store i64 %75, i64* %partitionSize, align 8
  %76 = load i64, i64* %threadId, align 8
  %77 = load i64, i64* %partitionSize, align 8
  %78 = mul nsw i64 %76, %77
  store i64 %78, i64* %i_start, align 8
  %79 = load i64, i64* %threadId, align 8
  %80 = load i64, i64* %numThread, align 8
  %81 = sub nsw i64 %80, 1
  %82 = icmp eq i64 %79, %81
  br i1 %82, label %83, label %85

; <label>:83                                      ; preds = %60
  %84 = load i64, i64* %numSegment, align 8
  store i64 %84, i64* %i_stop, align 8
  br label %89

; <label>:85                                      ; preds = %60
  %86 = load i64, i64* %i_start, align 8
  %87 = load i64, i64* %partitionSize, align 8
  %88 = add nsw i64 %86, %87
  store i64 %88, i64* %i_stop, align 8
  br label %89

; <label>:89                                      ; preds = %85, %83
  %90 = load i64, i64* %i_start, align 8
  store i64 %90, i64* %i, align 8
  br label %91

; <label>:91                                      ; preds = %172, %89
  %92 = load i64, i64* %i, align 8
  %93 = load i64, i64* %i_stop, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %175

; <label>:95                                      ; preds = %91
  br label %96

; <label>:96                                      ; preds = %95
  %97 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %98 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %threadId1, align 4
  %100 = load i32, i32* %threadId1, align 4
  %101 = call i32 @workBegin(i32 0, i32 %100)
  %102 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %103 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 4
  br label %104

; <label>:104                                     ; preds = %96
  store i32 -1, i32* %__status, align 4
  store i32 9, i32* %tries, align 4
  br label %105

; <label>:105                                     ; preds = %126, %104
  br label %106

; <label>:106                                     ; preds = %109, %105
  %107 = call i64 (...) @RTM_fallback_isLocked()
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

; <label>:109                                     ; preds = %106
  call void @llvm.x86.sse2.pause() #6
  br label %106

; <label>:110                                     ; preds = %106
  %111 = load i32, i32* %tries, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %tries, align 4
  %113 = load i32, i32* %tries, align 4
  %114 = icmp sle i32 %113, 0
  br i1 %114, label %115, label %116

; <label>:115                                     ; preds = %110
  call void (...) @RTM_fallback_lock()
  br label %133

; <label>:116                                     ; preds = %110
  store i64 0, i64* %15, align 8
  store i64 0, i64* %handler.i, align 8
  store i64 4294967295, i64* %ret.i, align 8
  %117 = load i64, i64* %ret.i, align 8
  %118 = load i64, i64* %15, align 8
  %119 = load i64, i64* %handler.i, align 8
  %120 = load i64, i64* %15, align 8
  %121 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %118, i64 %119, i64 %120, i64 %117) #6, !srcloc !1
  store i64 %121, i64* %ret.i, align 8
  %122 = load i64, i64* %ret.i, align 8
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %__status, align 4
  %124 = load i32, i32* %__status, align 4
  %125 = icmp ne i32 %124, -1
  br i1 %125, label %126, label %127

; <label>:126                                     ; preds = %116
  br label %105

; <label>:127                                     ; preds = %116
  %128 = call i64 (...) @RTM_fallback_isLocked()
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

; <label>:130                                     ; preds = %127
  store i64 255, i64* %14, align 8
  %131 = load i64, i64* %14, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %131) #6, !srcloc !2
  br label %132

; <label>:132                                     ; preds = %130, %127
  br label %133

; <label>:133                                     ; preds = %132, %115
  %134 = load i64, i64* %i_stop, align 8
  store i64 %134, i64* %_a, align 8
  %135 = load i64, i64* %i, align 8
  %136 = add nsw i64 %135, 12
  store i64 %136, i64* %_b, align 8
  %137 = load i64, i64* %_a, align 8
  %138 = load i64, i64* %_b, align 8
  %139 = icmp slt i64 %137, %138
  br i1 %139, label %140, label %142

; <label>:140                                     ; preds = %133
  %141 = load i64, i64* %_a, align 8
  br label %144

; <label>:142                                     ; preds = %133
  %143 = load i64, i64* %_b, align 8
  br label %144

; <label>:144                                     ; preds = %142, %140
  %145 = phi i64 [ %141, %140 ], [ %143, %142 ]
  store i64 %145, i64* %17, align 8
  %146 = load i64, i64* %17, align 8
  store i64 %146, i64* %ii_stop, align 8
  %147 = load i64, i64* %i, align 8
  store i64 %147, i64* %ii, align 8
  br label %148

; <label>:148                                     ; preds = %160, %144
  %149 = load i64, i64* %ii, align 8
  %150 = load i64, i64* %ii_stop, align 8
  %151 = icmp slt i64 %149, %150
  br i1 %151, label %152, label %163

; <label>:152                                     ; preds = %148
  %153 = load %struct.vector*, %struct.vector** %segmentsContentsPtr, align 8
  %154 = load i64, i64* %ii, align 8
  %155 = call i8* @vector_at(%struct.vector* %153, i64 %154)
  store i8* %155, i8** %segment, align 8
  %156 = load %struct.hashtable*, %struct.hashtable** %uniqueSegmentsPtr, align 8
  %157 = load i8*, i8** %segment, align 8
  %158 = load i8*, i8** %segment, align 8
  %159 = call i64 @TMhashtable_insert(%struct.hashtable* %156, i8* %157, i8* %158)
  br label %160

; <label>:160                                     ; preds = %152
  %161 = load i64, i64* %ii, align 8
  %162 = add nsw i64 %161, 1
  store i64 %162, i64* %ii, align 8
  br label %148, !llvm.loop !3

; <label>:163                                     ; preds = %148
  %164 = load i32, i32* %tries, align 4
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %168

; <label>:166                                     ; preds = %163
  store i64 0, i64* %13, align 8
  %167 = load i64, i64* %13, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %167) #6, !srcloc !5
  br label %169

; <label>:168                                     ; preds = %163
  call void (...) @RTM_fallback_unlock()
  br label %169

; <label>:169                                     ; preds = %168, %166
  br label %170

; <label>:170                                     ; preds = %169
  call void @workEnd(i32 0, i32 0)
  br label %171

; <label>:171                                     ; preds = %170
  br label %172

; <label>:172                                     ; preds = %171
  %173 = load i64, i64* %i, align 8
  %174 = add nsw i64 %173, 12
  store i64 %174, i64* %i, align 8
  br label %91

; <label>:175                                     ; preds = %91
  call void (...) @thread_barrier_wait()
  %176 = load %struct.hashtable*, %struct.hashtable** %uniqueSegmentsPtr, align 8
  %177 = call i64 @hashtable_getSize(%struct.hashtable* %176)
  store i64 %177, i64* %numUniqueSegment, align 8
  store i64 0, i64* %entryIndex, align 8
  %178 = load %struct.hashtable*, %struct.hashtable** %uniqueSegmentsPtr, align 8
  %179 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %num, align 8
  %181 = load i64, i64* %num, align 8
  %182 = load i64, i64* %numThread, align 8
  %183 = sdiv i64 %182, 2
  %184 = add nsw i64 %181, %183
  %185 = load i64, i64* %numThread, align 8
  %186 = sdiv i64 %184, %185
  store i64 %186, i64* %partitionSize2, align 8
  %187 = load i64, i64* %threadId, align 8
  %188 = load i64, i64* %partitionSize2, align 8
  %189 = mul nsw i64 %187, %188
  store i64 %189, i64* %i_start, align 8
  %190 = load i64, i64* %threadId, align 8
  %191 = load i64, i64* %numThread, align 8
  %192 = sub nsw i64 %191, 1
  %193 = icmp eq i64 %190, %192
  br i1 %193, label %194, label %196

; <label>:194                                     ; preds = %175
  %195 = load i64, i64* %num, align 8
  store i64 %195, i64* %i_stop, align 8
  br label %200

; <label>:196                                     ; preds = %175
  %197 = load i64, i64* %i_start, align 8
  %198 = load i64, i64* %partitionSize2, align 8
  %199 = add nsw i64 %197, %198
  store i64 %199, i64* %i_stop, align 8
  br label %200

; <label>:200                                     ; preds = %196, %194
  %201 = load i64, i64* %numUniqueSegment, align 8
  %202 = load i64, i64* %numThread, align 8
  %203 = sdiv i64 %202, 2
  %204 = add nsw i64 %201, %203
  %205 = load i64, i64* %numThread, align 8
  %206 = sdiv i64 %204, %205
  store i64 %206, i64* %partitionSize3, align 8
  %207 = load i64, i64* %threadId, align 8
  %208 = load i64, i64* %partitionSize3, align 8
  %209 = mul nsw i64 %207, %208
  store i64 %209, i64* %entryIndex, align 8
  %210 = load i64, i64* %i_start, align 8
  store i64 %210, i64* %i, align 8
  br label %211

; <label>:211                                     ; preds = %444, %200
  %212 = load i64, i64* %i, align 8
  %213 = load i64, i64* %i_stop, align 8
  %214 = icmp slt i64 %212, %213
  br i1 %214, label %215, label %447

; <label>:215                                     ; preds = %211
  br label %216

; <label>:216                                     ; preds = %215
  %217 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %218 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  store i32 %219, i32* %threadId4, align 4
  %220 = load i32, i32* %threadId4, align 4
  %221 = call i32 @workBegin(i32 0, i32 %220)
  %222 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %223 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %222, i32 0, i32 4
  store i32 %221, i32* %223, align 4
  br label %224

; <label>:224                                     ; preds = %216
  %225 = load i64, i64* %i, align 8
  %226 = load %struct.hashtable*, %struct.hashtable** %uniqueSegmentsPtr, align 8
  %227 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %226, i32 0, i32 0
  %228 = load %struct.list**, %struct.list*** %227, align 8
  %229 = getelementptr inbounds %struct.list*, %struct.list** %228, i64 %225
  %230 = load %struct.list*, %struct.list** %229, align 8
  store %struct.list* %230, %struct.list** %chainPtr, align 8
  %231 = load %struct.list*, %struct.list** %chainPtr, align 8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %231)
  br label %232

; <label>:232                                     ; preds = %440, %224
  %233 = load %struct.list*, %struct.list** %chainPtr, align 8
  %234 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %233) #7
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %441

; <label>:236                                     ; preds = %232
  %237 = load %struct.list*, %struct.list** %chainPtr, align 8
  %238 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %237)
  %239 = bitcast i8* %238 to %struct.pair*
  %240 = getelementptr inbounds %struct.pair, %struct.pair* %239, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  store i8* %241, i8** %segment5, align 8
  store i32 -1, i32* %__status7, align 4
  store i32 9, i32* %tries8, align 4
  br label %242

; <label>:242                                     ; preds = %263, %236
  br label %243

; <label>:243                                     ; preds = %246, %242
  %244 = call i64 (...) @RTM_fallback_isLocked()
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %247

; <label>:246                                     ; preds = %243
  call void @llvm.x86.sse2.pause() #6
  br label %243

; <label>:247                                     ; preds = %243
  %248 = load i32, i32* %tries8, align 4
  %249 = add nsw i32 %248, -1
  store i32 %249, i32* %tries8, align 4
  %250 = load i32, i32* %tries8, align 4
  %251 = icmp sle i32 %250, 0
  br i1 %251, label %252, label %253

; <label>:252                                     ; preds = %247
  call void (...) @RTM_fallback_lock()
  br label %270

; <label>:253                                     ; preds = %247
  store i64 1, i64* %12, align 8
  store i64 0, i64* %handler.i27, align 8
  store i64 4294967295, i64* %ret.i28, align 8
  %254 = load i64, i64* %ret.i28, align 8
  %255 = load i64, i64* %12, align 8
  %256 = load i64, i64* %handler.i27, align 8
  %257 = load i64, i64* %12, align 8
  %258 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %255, i64 %256, i64 %257, i64 %254) #6, !srcloc !1
  store i64 %258, i64* %ret.i28, align 8
  %259 = load i64, i64* %ret.i28, align 8
  %260 = trunc i64 %259 to i32
  store i32 %260, i32* %__status7, align 4
  %261 = load i32, i32* %__status7, align 4
  %262 = icmp ne i32 %261, -1
  br i1 %262, label %263, label %264

; <label>:263                                     ; preds = %253
  br label %242

; <label>:264                                     ; preds = %253
  %265 = call i64 (...) @RTM_fallback_isLocked()
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %269

; <label>:267                                     ; preds = %264
  store i64 255, i64* %11, align 8
  %268 = load i64, i64* %11, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %268) #6, !srcloc !2
  br label %269

; <label>:269                                     ; preds = %267, %264
  br label %270

; <label>:270                                     ; preds = %269, %252
  br label %271

; <label>:271                                     ; preds = %278, %270
  %272 = load i64, i64* %entryIndex, align 8
  %273 = load %struct.constructEntry*, %struct.constructEntry** %constructEntries, align 8
  %274 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %273, i64 %272
  %275 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %274, i32 0, i32 1
  %276 = load i8*, i8** %275, align 8
  %277 = icmp ne i8* %276, null
  br i1 %277, label %278, label %283

; <label>:278                                     ; preds = %271
  %279 = load i64, i64* %entryIndex, align 8
  %280 = add nsw i64 %279, 1
  %281 = load i64, i64* %numUniqueSegment, align 8
  %282 = srem i64 %280, %281
  store i64 %282, i64* %entryIndex, align 8
  br label %271, !llvm.loop !6

; <label>:283                                     ; preds = %271
  %284 = load i64, i64* %entryIndex, align 8
  %285 = load %struct.constructEntry*, %struct.constructEntry** %constructEntries, align 8
  %286 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %285, i64 %284
  store %struct.constructEntry* %286, %struct.constructEntry** %constructEntryPtr, align 8
  %287 = load i8*, i8** %segment5, align 8
  %288 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr, align 8
  %289 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %288, i32 0, i32 1
  store i8* %287, i8** %289, align 8
  %290 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr, align 8
  %291 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %290, i32 0, i32 1
  %292 = load i8*, i8** %291, align 8
  store i8* %292, i8** %18, align 8
  %293 = load i8*, i8** %18, align 8
  %294 = load i32, i32* %tries8, align 4
  %295 = icmp sgt i32 %294, 0
  br i1 %295, label %296, label %298

; <label>:296                                     ; preds = %283
  store i64 1, i64* %10, align 8
  %297 = load i64, i64* %10, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %297) #6, !srcloc !5
  br label %299

; <label>:298                                     ; preds = %283
  call void (...) @RTM_fallback_unlock()
  br label %299

; <label>:299                                     ; preds = %298, %296
  %300 = load i64, i64* %entryIndex, align 8
  %301 = add nsw i64 %300, 1
  %302 = load i64, i64* %numUniqueSegment, align 8
  %303 = srem i64 %301, %302
  store i64 %303, i64* %entryIndex, align 8
  %304 = load i8*, i8** %segment5, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 1
  %306 = call i64 @hashString(i8* %305)
  %307 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr, align 8
  %308 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %307, i32 0, i32 2
  store i64 %306, i64* %308, align 8
  store i64 0, i64* %startHash, align 8
  store i64 1, i64* %j6, align 8
  br label %309

; <label>:309                                     ; preds = %377, %299
  %310 = load i64, i64* %j6, align 8
  %311 = load i64, i64* %segmentLength, align 8
  %312 = icmp slt i64 %310, %311
  br i1 %312, label %313, label %380

; <label>:313                                     ; preds = %309
  %314 = load i64, i64* %j6, align 8
  %315 = sub nsw i64 %314, 1
  %316 = load i8*, i8** %segment5, align 8
  %317 = getelementptr inbounds i8, i8* %316, i64 %315
  %318 = load i8, i8* %317, align 1
  %319 = sext i8 %318 to i64
  %320 = load i64, i64* %startHash, align 8
  %321 = shl i64 %320, 6
  %322 = add i64 %319, %321
  %323 = load i64, i64* %startHash, align 8
  %324 = shl i64 %323, 16
  %325 = add i64 %322, %324
  %326 = load i64, i64* %startHash, align 8
  %327 = sub i64 %325, %326
  store i64 %327, i64* %startHash, align 8
  store i32 -1, i32* %__status9, align 4
  store i32 9, i32* %tries10, align 4
  br label %328

; <label>:328                                     ; preds = %349, %313
  br label %329

; <label>:329                                     ; preds = %332, %328
  %330 = call i64 (...) @RTM_fallback_isLocked()
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %333

; <label>:332                                     ; preds = %329
  call void @llvm.x86.sse2.pause() #6
  br label %329

; <label>:333                                     ; preds = %329
  %334 = load i32, i32* %tries10, align 4
  %335 = add nsw i32 %334, -1
  store i32 %335, i32* %tries10, align 4
  %336 = load i32, i32* %tries10, align 4
  %337 = icmp sle i32 %336, 0
  br i1 %337, label %338, label %339

; <label>:338                                     ; preds = %333
  call void (...) @RTM_fallback_lock()
  br label %356

; <label>:339                                     ; preds = %333
  store i64 2, i64* %8, align 8
  store i64 0, i64* %handler.i29, align 8
  store i64 4294967295, i64* %ret.i30, align 8
  %340 = load i64, i64* %ret.i30, align 8
  %341 = load i64, i64* %8, align 8
  %342 = load i64, i64* %handler.i29, align 8
  %343 = load i64, i64* %8, align 8
  %344 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %341, i64 %342, i64 %343, i64 %340) #6, !srcloc !1
  store i64 %344, i64* %ret.i30, align 8
  %345 = load i64, i64* %ret.i30, align 8
  %346 = trunc i64 %345 to i32
  store i32 %346, i32* %__status9, align 4
  %347 = load i32, i32* %__status9, align 4
  %348 = icmp ne i32 %347, -1
  br i1 %348, label %349, label %350

; <label>:349                                     ; preds = %339
  br label %328

; <label>:350                                     ; preds = %339
  %351 = call i64 (...) @RTM_fallback_isLocked()
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %355

; <label>:353                                     ; preds = %350
  store i64 255, i64* %7, align 8
  %354 = load i64, i64* %7, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %354) #6, !srcloc !2
  br label %355

; <label>:355                                     ; preds = %353, %350
  br label %356

; <label>:356                                     ; preds = %355, %338
  %357 = load i64, i64* %j6, align 8
  %358 = load %struct.table**, %struct.table*** %startHashToConstructEntryTables, align 8
  %359 = getelementptr inbounds %struct.table*, %struct.table** %358, i64 %357
  %360 = load %struct.table*, %struct.table** %359, align 8
  %361 = load i64, i64* %startHash, align 8
  %362 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr, align 8
  %363 = bitcast %struct.constructEntry* %362 to i8*
  %364 = call i64 @TMtable_insert(%struct.table* %360, i64 %361, i8* %363)
  store i64 %364, i64* %status, align 8
  %365 = load i32, i32* %tries10, align 4
  %366 = icmp sgt i32 %365, 0
  br i1 %366, label %367, label %369

; <label>:367                                     ; preds = %356
  store i64 2, i64* %6, align 8
  %368 = load i64, i64* %6, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %368) #6, !srcloc !5
  br label %370

; <label>:369                                     ; preds = %356
  call void (...) @RTM_fallback_unlock()
  br label %370

; <label>:370                                     ; preds = %369, %367
  %371 = load i64, i64* %status, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %374

; <label>:373                                     ; preds = %370
  br label %376

; <label>:374                                     ; preds = %370
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 405, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %376

; <label>:376                                     ; preds = %375, %373
  br label %377

; <label>:377                                     ; preds = %376
  %378 = load i64, i64* %j6, align 8
  %379 = add nsw i64 %378, 1
  store i64 %379, i64* %j6, align 8
  br label %309

; <label>:380                                     ; preds = %309
  %381 = load i64, i64* %j6, align 8
  %382 = sub nsw i64 %381, 1
  %383 = load i8*, i8** %segment5, align 8
  %384 = getelementptr inbounds i8, i8* %383, i64 %382
  %385 = load i8, i8* %384, align 1
  %386 = sext i8 %385 to i64
  %387 = load i64, i64* %startHash, align 8
  %388 = shl i64 %387, 6
  %389 = add i64 %386, %388
  %390 = load i64, i64* %startHash, align 8
  %391 = shl i64 %390, 16
  %392 = add i64 %389, %391
  %393 = load i64, i64* %startHash, align 8
  %394 = sub i64 %392, %393
  store i64 %394, i64* %startHash, align 8
  store i32 -1, i32* %__status11, align 4
  store i32 9, i32* %tries12, align 4
  br label %395

; <label>:395                                     ; preds = %416, %380
  br label %396

; <label>:396                                     ; preds = %399, %395
  %397 = call i64 (...) @RTM_fallback_isLocked()
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %400

; <label>:399                                     ; preds = %396
  call void @llvm.x86.sse2.pause() #6
  br label %396

; <label>:400                                     ; preds = %396
  %401 = load i32, i32* %tries12, align 4
  %402 = add nsw i32 %401, -1
  store i32 %402, i32* %tries12, align 4
  %403 = load i32, i32* %tries12, align 4
  %404 = icmp sle i32 %403, 0
  br i1 %404, label %405, label %406

; <label>:405                                     ; preds = %400
  call void (...) @RTM_fallback_lock()
  br label %423

; <label>:406                                     ; preds = %400
  store i64 3, i64* %4, align 8
  store i64 0, i64* %handler.i31, align 8
  store i64 4294967295, i64* %ret.i32, align 8
  %407 = load i64, i64* %ret.i32, align 8
  %408 = load i64, i64* %4, align 8
  %409 = load i64, i64* %handler.i31, align 8
  %410 = load i64, i64* %4, align 8
  %411 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %408, i64 %409, i64 %410, i64 %407) #6, !srcloc !1
  store i64 %411, i64* %ret.i32, align 8
  %412 = load i64, i64* %ret.i32, align 8
  %413 = trunc i64 %412 to i32
  store i32 %413, i32* %__status11, align 4
  %414 = load i32, i32* %__status11, align 4
  %415 = icmp ne i32 %414, -1
  br i1 %415, label %416, label %417

; <label>:416                                     ; preds = %406
  br label %395

; <label>:417                                     ; preds = %406
  %418 = call i64 (...) @RTM_fallback_isLocked()
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %422

; <label>:420                                     ; preds = %417
  store i64 255, i64* %3, align 8
  %421 = load i64, i64* %3, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %421) #6, !srcloc !2
  br label %422

; <label>:422                                     ; preds = %420, %417
  br label %423

; <label>:423                                     ; preds = %422, %405
  %424 = load %struct.table*, %struct.table** %hashToConstructEntryTable, align 8
  %425 = load i64, i64* %startHash, align 8
  %426 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr, align 8
  %427 = bitcast %struct.constructEntry* %426 to i8*
  %428 = call i64 @TMtable_insert(%struct.table* %424, i64 %425, i8* %427)
  store i64 %428, i64* %status, align 8
  %429 = load i32, i32* %tries12, align 4
  %430 = icmp sgt i32 %429, 0
  br i1 %430, label %431, label %433

; <label>:431                                     ; preds = %423
  store i64 3, i64* %2, align 8
  %432 = load i64, i64* %2, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %432) #6, !srcloc !5
  br label %434

; <label>:433                                     ; preds = %423
  call void (...) @RTM_fallback_unlock()
  br label %434

; <label>:434                                     ; preds = %433, %431
  %435 = load i64, i64* %status, align 8
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %438

; <label>:437                                     ; preds = %434
  br label %440

; <label>:438                                     ; preds = %434
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 418, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %440

; <label>:440                                     ; preds = %439, %437
  br label %232

; <label>:441                                     ; preds = %232
  br label %442

; <label>:442                                     ; preds = %441
  call void @workEnd(i32 0, i32 0)
  br label %443

; <label>:443                                     ; preds = %442
  br label %444

; <label>:444                                     ; preds = %443
  %445 = load i64, i64* %i, align 8
  %446 = add nsw i64 %445, 1
  store i64 %446, i64* %i, align 8
  br label %211

; <label>:447                                     ; preds = %211
  call void (...) @thread_barrier_wait()
  %448 = load i64, i64* %segmentLength, align 8
  %449 = sub nsw i64 %448, 1
  store i64 %449, i64* %substringLength, align 8
  br label %450

; <label>:450                                     ; preds = %802, %447
  %451 = load i64, i64* %substringLength, align 8
  %452 = icmp sgt i64 %451, 0
  br i1 %452, label %453, label %805

; <label>:453                                     ; preds = %450
  br label %454

; <label>:454                                     ; preds = %453
  %455 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %456 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  store i32 %457, i32* %threadId13, align 4
  %458 = load i32, i32* %threadId13, align 4
  %459 = call i32 @workBegin(i32 0, i32 %458)
  %460 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %461 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %460, i32 0, i32 4
  store i32 %459, i32* %461, align 4
  br label %462

; <label>:462                                     ; preds = %454
  %463 = load i64, i64* %substringLength, align 8
  %464 = load %struct.table**, %struct.table*** %startHashToConstructEntryTables, align 8
  %465 = getelementptr inbounds %struct.table*, %struct.table** %464, i64 %463
  %466 = load %struct.table*, %struct.table** %465, align 8
  store %struct.table* %466, %struct.table** %startHashToConstructEntryTablePtr, align 8
  %467 = load %struct.table*, %struct.table** %startHashToConstructEntryTablePtr, align 8
  %468 = getelementptr inbounds %struct.table, %struct.table* %467, i32 0, i32 0
  %469 = load %struct.list**, %struct.list*** %468, align 8
  store %struct.list** %469, %struct.list*** %buckets, align 8
  %470 = load %struct.table*, %struct.table** %startHashToConstructEntryTablePtr, align 8
  %471 = getelementptr inbounds %struct.table, %struct.table* %470, i32 0, i32 1
  %472 = load i64, i64* %471, align 8
  store i64 %472, i64* %numBucket, align 8
  %473 = load i64, i64* %numUniqueSegment, align 8
  %474 = load i64, i64* %numThread, align 8
  %475 = sdiv i64 %474, 2
  %476 = add nsw i64 %473, %475
  %477 = load i64, i64* %numThread, align 8
  %478 = sdiv i64 %476, %477
  store i64 %478, i64* %partitionSize14, align 8
  %479 = load i64, i64* %threadId, align 8
  %480 = load i64, i64* %partitionSize14, align 8
  %481 = mul nsw i64 %479, %480
  store i64 %481, i64* %index_start, align 8
  %482 = load i64, i64* %threadId, align 8
  %483 = load i64, i64* %numThread, align 8
  %484 = sub nsw i64 %483, 1
  %485 = icmp eq i64 %482, %484
  br i1 %485, label %486, label %488

; <label>:486                                     ; preds = %462
  %487 = load i64, i64* %numUniqueSegment, align 8
  store i64 %487, i64* %index_stop, align 8
  br label %492

; <label>:488                                     ; preds = %462
  %489 = load i64, i64* %index_start, align 8
  %490 = load i64, i64* %partitionSize14, align 8
  %491 = add nsw i64 %489, %490
  store i64 %491, i64* %index_stop, align 8
  br label %492

; <label>:492                                     ; preds = %488, %486
  %493 = load i64, i64* %index_start, align 8
  store i64 %493, i64* %entryIndex, align 8
  br label %494

; <label>:494                                     ; preds = %678, %492
  %495 = load i64, i64* %entryIndex, align 8
  %496 = load i64, i64* %index_stop, align 8
  %497 = icmp slt i64 %495, %496
  br i1 %497, label %498, label %686

; <label>:498                                     ; preds = %494
  %499 = load i64, i64* %entryIndex, align 8
  %500 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntries, align 8
  %501 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %500, i64 %499
  %502 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %501, i32 0, i32 0
  %503 = load i64, i64* %502, align 8
  %504 = icmp ne i64 %503, 0
  br i1 %504, label %506, label %505

; <label>:505                                     ; preds = %498
  br label %678

; <label>:506                                     ; preds = %498
  %507 = load i64, i64* %entryIndex, align 8
  %508 = load %struct.constructEntry*, %struct.constructEntry** %constructEntries, align 8
  %509 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %508, i64 %507
  store %struct.constructEntry* %509, %struct.constructEntry** %endConstructEntryPtr, align 8
  %510 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntryPtr, align 8
  %511 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %510, i32 0, i32 1
  %512 = load i8*, i8** %511, align 8
  store i8* %512, i8** %endSegment, align 8
  %513 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntryPtr, align 8
  %514 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %513, i32 0, i32 2
  %515 = load i64, i64* %514, align 8
  store i64 %515, i64* %endHash, align 8
  %516 = load i64, i64* %endHash, align 8
  %517 = load i64, i64* %numBucket, align 8
  %518 = urem i64 %516, %517
  %519 = load %struct.list**, %struct.list*** %buckets, align 8
  %520 = getelementptr inbounds %struct.list*, %struct.list** %519, i64 %518
  %521 = load %struct.list*, %struct.list** %520, align 8
  store %struct.list* %521, %struct.list** %chainPtr15, align 8
  %522 = load %struct.list*, %struct.list** %chainPtr15, align 8
  call void @list_iter_reset(%struct.list_node** %it16, %struct.list* %522)
  br label %523

; <label>:523                                     ; preds = %676, %506
  %524 = load %struct.list*, %struct.list** %chainPtr15, align 8
  %525 = call i64 @list_iter_hasNext(%struct.list_node** %it16, %struct.list* %524) #7
  %526 = icmp ne i64 %525, 0
  br i1 %526, label %527, label %677

; <label>:527                                     ; preds = %523
  %528 = load %struct.list*, %struct.list** %chainPtr15, align 8
  %529 = call i8* @list_iter_next(%struct.list_node** %it16, %struct.list* %528)
  %530 = bitcast i8* %529 to %struct.constructEntry*
  store %struct.constructEntry* %530, %struct.constructEntry** %startConstructEntryPtr, align 8
  %531 = load %struct.constructEntry*, %struct.constructEntry** %startConstructEntryPtr, align 8
  %532 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %531, i32 0, i32 1
  %533 = load i8*, i8** %532, align 8
  store i8* %533, i8** %startSegment, align 8
  store i64 0, i64* %newLength, align 8
  store i32 -1, i32* %__status17, align 4
  store i32 9, i32* %tries18, align 4
  br label %534

; <label>:534                                     ; preds = %555, %527
  br label %535

; <label>:535                                     ; preds = %538, %534
  %536 = call i64 (...) @RTM_fallback_isLocked()
  %537 = icmp ne i64 %536, 0
  br i1 %537, label %538, label %539

; <label>:538                                     ; preds = %535
  call void @llvm.x86.sse2.pause() #6
  br label %535

; <label>:539                                     ; preds = %535
  %540 = load i32, i32* %tries18, align 4
  %541 = add nsw i32 %540, -1
  store i32 %541, i32* %tries18, align 4
  %542 = load i32, i32* %tries18, align 4
  %543 = icmp sle i32 %542, 0
  br i1 %543, label %544, label %545

; <label>:544                                     ; preds = %539
  call void (...) @RTM_fallback_lock()
  br label %562

; <label>:545                                     ; preds = %539
  store i64 4, i64* %1, align 8
  store i64 0, i64* %handler.i33, align 8
  store i64 4294967295, i64* %ret.i34, align 8
  %546 = load i64, i64* %ret.i34, align 8
  %547 = load i64, i64* %1, align 8
  %548 = load i64, i64* %handler.i33, align 8
  %549 = load i64, i64* %1, align 8
  %550 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %547, i64 %548, i64 %549, i64 %546) #6, !srcloc !1
  store i64 %550, i64* %ret.i34, align 8
  %551 = load i64, i64* %ret.i34, align 8
  %552 = trunc i64 %551 to i32
  store i32 %552, i32* %__status17, align 4
  %553 = load i32, i32* %__status17, align 4
  %554 = icmp ne i32 %553, -1
  br i1 %554, label %555, label %556

; <label>:555                                     ; preds = %545
  br label %534

; <label>:556                                     ; preds = %545
  %557 = call i64 (...) @RTM_fallback_isLocked()
  %558 = icmp ne i64 %557, 0
  br i1 %558, label %559, label %561

; <label>:559                                     ; preds = %556
  store i64 255, i64* %5, align 8
  %560 = load i64, i64* %5, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %560) #6, !srcloc !2
  br label %561

; <label>:561                                     ; preds = %559, %556
  br label %562

; <label>:562                                     ; preds = %561, %544
  %563 = load %struct.constructEntry*, %struct.constructEntry** %startConstructEntryPtr, align 8
  %564 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %563, i32 0, i32 0
  %565 = load i64, i64* %564, align 8
  %566 = icmp ne i64 %565, 0
  br i1 %566, label %567, label %662

; <label>:567                                     ; preds = %562
  %568 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntryPtr, align 8
  %569 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %568, i32 0, i32 3
  %570 = load %struct.constructEntry*, %struct.constructEntry** %569, align 8
  %571 = load %struct.constructEntry*, %struct.constructEntry** %startConstructEntryPtr, align 8
  %572 = icmp ne %struct.constructEntry* %570, %571
  br i1 %572, label %573, label %662

; <label>:573                                     ; preds = %567
  %574 = load i8*, i8** %startSegment, align 8
  %575 = load i64, i64* %segmentLength, align 8
  %576 = load i64, i64* %substringLength, align 8
  %577 = sub nsw i64 %575, %576
  %578 = load i8*, i8** %endSegment, align 8
  %579 = getelementptr inbounds i8, i8* %578, i64 %577
  %580 = load i64, i64* %substringLength, align 8
  %581 = call i32 @strncmp(i8* %574, i8* %579, i64 %580) #7
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %583, label %662

; <label>:583                                     ; preds = %573
  %584 = load %struct.constructEntry*, %struct.constructEntry** %startConstructEntryPtr, align 8
  %585 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %584, i32 0, i32 0
  store i64 0, i64* %585, align 8
  %586 = load %struct.constructEntry*, %struct.constructEntry** %startConstructEntryPtr, align 8
  %587 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %586, i32 0, i32 0
  %588 = load i64, i64* %587, align 8
  store i64 %588, i64* %19, align 8
  %589 = load i64, i64* %19, align 8
  %590 = load i64, i64* %entryIndex, align 8
  %591 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntries, align 8
  %592 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %591, i64 %590
  %593 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %592, i32 0, i32 0
  store i64 0, i64* %593, align 8
  %594 = load i64, i64* %entryIndex, align 8
  %595 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntries, align 8
  %596 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %595, i64 %594
  %597 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %596, i32 0, i32 0
  %598 = load i64, i64* %597, align 8
  store i64 %598, i64* %20, align 8
  %599 = load i64, i64* %20, align 8
  %600 = load %struct.constructEntry*, %struct.constructEntry** %startConstructEntryPtr, align 8
  %601 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %600, i32 0, i32 5
  %602 = load %struct.constructEntry*, %struct.constructEntry** %601, align 8
  store %struct.constructEntry* %602, %struct.constructEntry** %startConstructEntry_endPtr, align 8
  %603 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntryPtr, align 8
  %604 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %603, i32 0, i32 3
  %605 = load %struct.constructEntry*, %struct.constructEntry** %604, align 8
  store %struct.constructEntry* %605, %struct.constructEntry** %endConstructEntry_startPtr, align 8
  %606 = load %struct.constructEntry*, %struct.constructEntry** %startConstructEntry_endPtr, align 8
  %607 = icmp ne %struct.constructEntry* %606, null
  br i1 %607, label %608, label %609

; <label>:608                                     ; preds = %583
  br label %611

; <label>:609                                     ; preds = %583
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 506, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %611

; <label>:611                                     ; preds = %610, %608
  %612 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntry_startPtr, align 8
  %613 = icmp ne %struct.constructEntry* %612, null
  br i1 %613, label %614, label %615

; <label>:614                                     ; preds = %611
  br label %617

; <label>:615                                     ; preds = %611
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 507, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %617

; <label>:617                                     ; preds = %616, %614
  %618 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntry_startPtr, align 8
  %619 = load %struct.constructEntry*, %struct.constructEntry** %startConstructEntry_endPtr, align 8
  %620 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %619, i32 0, i32 3
  store %struct.constructEntry* %618, %struct.constructEntry** %620, align 8
  %621 = load %struct.constructEntry*, %struct.constructEntry** %startConstructEntry_endPtr, align 8
  %622 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %621, i32 0, i32 3
  %623 = load %struct.constructEntry*, %struct.constructEntry** %622, align 8
  store %struct.constructEntry* %623, %struct.constructEntry** %21, align 8
  %624 = load %struct.constructEntry*, %struct.constructEntry** %21, align 8
  %625 = load %struct.constructEntry*, %struct.constructEntry** %startConstructEntryPtr, align 8
  %626 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntryPtr, align 8
  %627 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %626, i32 0, i32 4
  store %struct.constructEntry* %625, %struct.constructEntry** %627, align 8
  %628 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntryPtr, align 8
  %629 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %628, i32 0, i32 4
  %630 = load %struct.constructEntry*, %struct.constructEntry** %629, align 8
  store %struct.constructEntry* %630, %struct.constructEntry** %22, align 8
  %631 = load %struct.constructEntry*, %struct.constructEntry** %22, align 8
  %632 = load %struct.constructEntry*, %struct.constructEntry** %startConstructEntry_endPtr, align 8
  %633 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntry_startPtr, align 8
  %634 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %633, i32 0, i32 5
  store %struct.constructEntry* %632, %struct.constructEntry** %634, align 8
  %635 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntry_startPtr, align 8
  %636 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %635, i32 0, i32 5
  %637 = load %struct.constructEntry*, %struct.constructEntry** %636, align 8
  store %struct.constructEntry* %637, %struct.constructEntry** %23, align 8
  %638 = load %struct.constructEntry*, %struct.constructEntry** %23, align 8
  %639 = load i64, i64* %substringLength, align 8
  %640 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntryPtr, align 8
  %641 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %640, i32 0, i32 6
  store i64 %639, i64* %641, align 8
  %642 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntryPtr, align 8
  %643 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %642, i32 0, i32 6
  %644 = load i64, i64* %643, align 8
  store i64 %644, i64* %24, align 8
  %645 = load i64, i64* %24, align 8
  %646 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntry_startPtr, align 8
  %647 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %646, i32 0, i32 7
  %648 = load i64, i64* %647, align 8
  %649 = load %struct.constructEntry*, %struct.constructEntry** %startConstructEntryPtr, align 8
  %650 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %649, i32 0, i32 7
  %651 = load i64, i64* %650, align 8
  %652 = add nsw i64 %648, %651
  %653 = load i64, i64* %substringLength, align 8
  %654 = sub nsw i64 %652, %653
  store i64 %654, i64* %newLength, align 8
  %655 = load i64, i64* %newLength, align 8
  %656 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntry_startPtr, align 8
  %657 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %656, i32 0, i32 7
  store i64 %655, i64* %657, align 8
  %658 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntry_startPtr, align 8
  %659 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %658, i32 0, i32 7
  %660 = load i64, i64* %659, align 8
  store i64 %660, i64* %25, align 8
  %661 = load i64, i64* %25, align 8
  br label %662

; <label>:662                                     ; preds = %617, %573, %567, %562
  %663 = load i32, i32* %tries18, align 4
  %664 = icmp sgt i32 %663, 0
  br i1 %664, label %665, label %667

; <label>:665                                     ; preds = %662
  store i64 4, i64* %9, align 8
  %666 = load i64, i64* %9, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %666) #6, !srcloc !5
  br label %668

; <label>:667                                     ; preds = %662
  call void (...) @RTM_fallback_unlock()
  br label %668

; <label>:668                                     ; preds = %667, %665
  %669 = load i64, i64* %entryIndex, align 8
  %670 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntries, align 8
  %671 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %670, i64 %669
  %672 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %671, i32 0, i32 0
  %673 = load i64, i64* %672, align 8
  %674 = icmp ne i64 %673, 0
  br i1 %674, label %676, label %675

; <label>:675                                     ; preds = %668
  br label %677

; <label>:676                                     ; preds = %668
  br label %523

; <label>:677                                     ; preds = %675, %523
  br label %678

; <label>:678                                     ; preds = %677, %505
  %679 = load i64, i64* %entryIndex, align 8
  %680 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntries, align 8
  %681 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %680, i64 %679
  %682 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %681, i32 0, i32 1
  %683 = load i64, i64* %682, align 8
  %684 = load i64, i64* %entryIndex, align 8
  %685 = add nsw i64 %684, %683
  store i64 %685, i64* %entryIndex, align 8
  br label %494

; <label>:686                                     ; preds = %494
  call void (...) @thread_barrier_wait()
  %687 = load i64, i64* %threadId, align 8
  %688 = icmp eq i64 %687, 0
  br i1 %688, label %689, label %799

; <label>:689                                     ; preds = %686
  %690 = load i64, i64* %substringLength, align 8
  %691 = icmp sgt i64 %690, 1
  br i1 %691, label %692, label %798

; <label>:692                                     ; preds = %689
  %693 = load i64, i64* %segmentLength, align 8
  %694 = load i64, i64* %substringLength, align 8
  %695 = sub nsw i64 %693, %694
  %696 = add nsw i64 %695, 1
  store i64 %696, i64* %index, align 8
  store i64 1, i64* %i, align 8
  br label %697

; <label>:697                                     ; preds = %706, %692
  %698 = load i64, i64* %i, align 8
  %699 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntries, align 8
  %700 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %699, i64 %698
  %701 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %700, i32 0, i32 0
  %702 = load i64, i64* %701, align 8
  %703 = icmp ne i64 %702, 0
  %704 = xor i1 %703, true
  br i1 %704, label %705, label %714

; <label>:705                                     ; preds = %697
  br label %706

; <label>:706                                     ; preds = %705
  %707 = load i64, i64* %i, align 8
  %708 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntries, align 8
  %709 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %708, i64 %707
  %710 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %709, i32 0, i32 1
  %711 = load i64, i64* %710, align 8
  %712 = load i64, i64* %i, align 8
  %713 = add nsw i64 %712, %711
  store i64 %713, i64* %i, align 8
  br label %697

; <label>:714                                     ; preds = %697
  %715 = load i64, i64* %i, align 8
  %716 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntries, align 8
  %717 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %716, i64 0
  %718 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %717, i32 0, i32 1
  store i64 %715, i64* %718, align 8
  %719 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntries, align 8
  %720 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %719, i64 0
  %721 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %720, i32 0, i32 0
  %722 = load i64, i64* %721, align 8
  %723 = icmp ne i64 %722, 0
  br i1 %723, label %724, label %736

; <label>:724                                     ; preds = %714
  %725 = load %struct.constructEntry*, %struct.constructEntry** %constructEntries, align 8
  %726 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %725, i64 0
  store %struct.constructEntry* %726, %struct.constructEntry** %constructEntryPtr19, align 8
  %727 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr19, align 8
  %728 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %727, i32 0, i32 1
  %729 = load i8*, i8** %728, align 8
  store i8* %729, i8** %segment20, align 8
  %730 = load i64, i64* %index, align 8
  %731 = load i8*, i8** %segment20, align 8
  %732 = getelementptr inbounds i8, i8* %731, i64 %730
  %733 = call i64 @hashString(i8* %732)
  %734 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr19, align 8
  %735 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %734, i32 0, i32 2
  store i64 %733, i64* %735, align 8
  br label %736

; <label>:736                                     ; preds = %724, %714
  store i64 0, i64* %j, align 8
  br label %737

; <label>:737                                     ; preds = %782, %736
  %738 = load i64, i64* %i, align 8
  %739 = load i64, i64* %numUniqueSegment, align 8
  %740 = icmp slt i64 %738, %739
  br i1 %740, label %741, label %790

; <label>:741                                     ; preds = %737
  %742 = load i64, i64* %i, align 8
  %743 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntries, align 8
  %744 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %743, i64 %742
  %745 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %744, i32 0, i32 0
  %746 = load i64, i64* %745, align 8
  %747 = icmp ne i64 %746, 0
  br i1 %747, label %748, label %781

; <label>:748                                     ; preds = %741
  %749 = load i64, i64* %i, align 8
  %750 = load %struct.constructEntry*, %struct.constructEntry** %constructEntries, align 8
  %751 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %750, i64 %749
  store %struct.constructEntry* %751, %struct.constructEntry** %constructEntryPtr21, align 8
  %752 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr21, align 8
  %753 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %752, i32 0, i32 1
  %754 = load i8*, i8** %753, align 8
  store i8* %754, i8** %segment22, align 8
  %755 = load i64, i64* %index, align 8
  %756 = load i8*, i8** %segment22, align 8
  %757 = getelementptr inbounds i8, i8* %756, i64 %755
  %758 = call i64 @hashString(i8* %757)
  %759 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr21, align 8
  %760 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %759, i32 0, i32 2
  store i64 %758, i64* %760, align 8
  store i32 1, i32* %_a23, align 4
  %761 = load i64, i64* %i, align 8
  %762 = load i64, i64* %j, align 8
  %763 = sub nsw i64 %761, %762
  store i64 %763, i64* %_b24, align 8
  %764 = load i32, i32* %_a23, align 4
  %765 = sext i32 %764 to i64
  %766 = load i64, i64* %_b24, align 8
  %767 = icmp sgt i64 %765, %766
  br i1 %767, label %768, label %771

; <label>:768                                     ; preds = %748
  %769 = load i32, i32* %_a23, align 4
  %770 = sext i32 %769 to i64
  br label %773

; <label>:771                                     ; preds = %748
  %772 = load i64, i64* %_b24, align 8
  br label %773

; <label>:773                                     ; preds = %771, %768
  %774 = phi i64 [ %770, %768 ], [ %772, %771 ]
  store i64 %774, i64* %26, align 8
  %775 = load i64, i64* %26, align 8
  %776 = load i64, i64* %j, align 8
  %777 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntries, align 8
  %778 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %777, i64 %776
  %779 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %778, i32 0, i32 1
  store i64 %775, i64* %779, align 8
  %780 = load i64, i64* %i, align 8
  store i64 %780, i64* %j, align 8
  br label %781

; <label>:781                                     ; preds = %773, %741
  br label %782

; <label>:782                                     ; preds = %781
  %783 = load i64, i64* %i, align 8
  %784 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntries, align 8
  %785 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %784, i64 %783
  %786 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %785, i32 0, i32 1
  %787 = load i64, i64* %786, align 8
  %788 = load i64, i64* %i, align 8
  %789 = add nsw i64 %788, %787
  store i64 %789, i64* %i, align 8
  br label %737

; <label>:790                                     ; preds = %737
  %791 = load i64, i64* %i, align 8
  %792 = load i64, i64* %j, align 8
  %793 = sub nsw i64 %791, %792
  %794 = load i64, i64* %j, align 8
  %795 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntries, align 8
  %796 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %795, i64 %794
  %797 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %796, i32 0, i32 1
  store i64 %793, i64* %797, align 8
  br label %798

; <label>:798                                     ; preds = %790, %689
  br label %799

; <label>:799                                     ; preds = %798, %686
  call void (...) @thread_barrier_wait()
  br label %800

; <label>:800                                     ; preds = %799
  call void @workEnd(i32 0, i32 0)
  br label %801

; <label>:801                                     ; preds = %800
  br label %802

; <label>:802                                     ; preds = %801
  %803 = load i64, i64* %substringLength, align 8
  %804 = add nsw i64 %803, -1
  store i64 %804, i64* %substringLength, align 8
  br label %450

; <label>:805                                     ; preds = %450
  call void (...) @thread_barrier_wait()
  %806 = load i64, i64* %threadId, align 8
  %807 = icmp eq i64 %806, 0
  br i1 %807, label %808, label %931

; <label>:808                                     ; preds = %805
  store i64 0, i64* %totalLength, align 8
  store i64 0, i64* %i, align 8
  br label %809

; <label>:809                                     ; preds = %828, %808
  %810 = load i64, i64* %i, align 8
  %811 = load i64, i64* %numUniqueSegment, align 8
  %812 = icmp slt i64 %810, %811
  br i1 %812, label %813, label %831

; <label>:813                                     ; preds = %809
  %814 = load i64, i64* %i, align 8
  %815 = load %struct.constructEntry*, %struct.constructEntry** %constructEntries, align 8
  %816 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %815, i64 %814
  store %struct.constructEntry* %816, %struct.constructEntry** %constructEntryPtr25, align 8
  %817 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr25, align 8
  %818 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %817, i32 0, i32 0
  %819 = load i64, i64* %818, align 8
  %820 = icmp ne i64 %819, 0
  br i1 %820, label %821, label %827

; <label>:821                                     ; preds = %813
  %822 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr25, align 8
  %823 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %822, i32 0, i32 7
  %824 = load i64, i64* %823, align 8
  %825 = load i64, i64* %totalLength, align 8
  %826 = add nsw i64 %825, %824
  store i64 %826, i64* %totalLength, align 8
  br label %827

; <label>:827                                     ; preds = %821, %813
  br label %828

; <label>:828                                     ; preds = %827
  %829 = load i64, i64* %i, align 8
  %830 = add nsw i64 %829, 1
  store i64 %830, i64* %i, align 8
  br label %809

; <label>:831                                     ; preds = %809
  %832 = load i64, i64* %totalLength, align 8
  %833 = add nsw i64 %832, 1
  %834 = mul i64 %833, 1
  %835 = call noalias i8* @malloc(i64 %834) #6
  %836 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %837 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %836, i32 0, i32 0
  store i8* %835, i8** %837, align 8
  %838 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %839 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %838, i32 0, i32 0
  %840 = load i8*, i8** %839, align 8
  store i8* %840, i8** %sequence, align 8
  %841 = load i8*, i8** %sequence, align 8
  %842 = icmp ne i8* %841, null
  br i1 %842, label %843, label %844

; <label>:843                                     ; preds = %831
  br label %846

; <label>:844                                     ; preds = %831
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 593, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %846

; <label>:846                                     ; preds = %845, %843
  %847 = load i8*, i8** %sequence, align 8
  store i8* %847, i8** %copyPtr, align 8
  store i64 0, i64* %sequenceLength, align 8
  store i64 0, i64* %i, align 8
  br label %848

; <label>:848                                     ; preds = %918, %846
  %849 = load i64, i64* %i, align 8
  %850 = load i64, i64* %numUniqueSegment, align 8
  %851 = icmp slt i64 %849, %850
  br i1 %851, label %852, label %921

; <label>:852                                     ; preds = %848
  %853 = load i64, i64* %i, align 8
  %854 = load %struct.constructEntry*, %struct.constructEntry** %constructEntries, align 8
  %855 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %854, i64 %853
  store %struct.constructEntry* %855, %struct.constructEntry** %constructEntryPtr26, align 8
  %856 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr26, align 8
  %857 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %856, i32 0, i32 0
  %858 = load i64, i64* %857, align 8
  %859 = icmp ne i64 %858, 0
  br i1 %859, label %860, label %917

; <label>:860                                     ; preds = %852
  %861 = load i64, i64* %sequenceLength, align 8
  %862 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr26, align 8
  %863 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %862, i32 0, i32 7
  %864 = load i64, i64* %863, align 8
  %865 = add nsw i64 %861, %864
  store i64 %865, i64* %newSequenceLength, align 8
  %866 = load i64, i64* %newSequenceLength, align 8
  %867 = load i64, i64* %totalLength, align 8
  %868 = icmp sle i64 %866, %867
  br i1 %868, label %869, label %870

; <label>:869                                     ; preds = %860
  br label %872

; <label>:870                                     ; preds = %860
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 603, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %872

; <label>:872                                     ; preds = %871, %869
  %873 = load i8*, i8** %sequence, align 8
  %874 = load i64, i64* %sequenceLength, align 8
  %875 = getelementptr inbounds i8, i8* %873, i64 %874
  store i8* %875, i8** %copyPtr, align 8
  %876 = load i64, i64* %newSequenceLength, align 8
  store i64 %876, i64* %sequenceLength, align 8
  br label %877

; <label>:877                                     ; preds = %902, %872
  %878 = load i64, i64* %segmentLength, align 8
  %879 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr26, align 8
  %880 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %879, i32 0, i32 6
  %881 = load i64, i64* %880, align 8
  %882 = sub nsw i64 %878, %881
  store i64 %882, i64* %numChar, align 8
  %883 = load i8*, i8** %copyPtr, align 8
  %884 = load i64, i64* %numChar, align 8
  %885 = getelementptr inbounds i8, i8* %883, i64 %884
  %886 = load i8*, i8** %sequence, align 8
  %887 = load i64, i64* %newSequenceLength, align 8
  %888 = getelementptr inbounds i8, i8* %886, i64 %887
  %889 = icmp ugt i8* %885, %888
  br i1 %889, label %890, label %892

; <label>:890                                     ; preds = %877
  %891 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0))
  br label %907

; <label>:892                                     ; preds = %877
  %893 = load i8*, i8** %copyPtr, align 8
  %894 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr26, align 8
  %895 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %894, i32 0, i32 1
  %896 = load i8*, i8** %895, align 8
  %897 = load i64, i64* %numChar, align 8
  %898 = mul i64 %897, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %893, i8* %896, i64 %898, i32 1, i1 false)
  %899 = load i64, i64* %numChar, align 8
  %900 = load i8*, i8** %copyPtr, align 8
  %901 = getelementptr inbounds i8, i8* %900, i64 %899
  store i8* %901, i8** %copyPtr, align 8
  br label %902

; <label>:902                                     ; preds = %892
  %903 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr26, align 8
  %904 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %903, i32 0, i32 4
  %905 = load %struct.constructEntry*, %struct.constructEntry** %904, align 8
  store %struct.constructEntry* %905, %struct.constructEntry** %constructEntryPtr26, align 8
  %906 = icmp ne %struct.constructEntry* %905, null
  br i1 %906, label %877, label %907

; <label>:907                                     ; preds = %902, %890
  %908 = load i8*, i8** %copyPtr, align 8
  %909 = load i8*, i8** %sequence, align 8
  %910 = load i64, i64* %sequenceLength, align 8
  %911 = getelementptr inbounds i8, i8* %909, i64 %910
  %912 = icmp ule i8* %908, %911
  br i1 %912, label %913, label %914

; <label>:913                                     ; preds = %907
  br label %916

; <label>:914                                     ; preds = %907
  call void @__assert_fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 617, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %916

; <label>:916                                     ; preds = %915, %913
  br label %917

; <label>:917                                     ; preds = %916, %852
  br label %918

; <label>:918                                     ; preds = %917
  %919 = load i64, i64* %i, align 8
  %920 = add nsw i64 %919, 1
  store i64 %920, i64* %i, align 8
  br label %848

; <label>:921                                     ; preds = %848
  %922 = load i8*, i8** %sequence, align 8
  %923 = icmp ne i8* %922, null
  br i1 %923, label %924, label %925

; <label>:924                                     ; preds = %921
  br label %927

; <label>:925                                     ; preds = %921
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 621, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %927

; <label>:927                                     ; preds = %926, %924
  %928 = load i64, i64* %sequenceLength, align 8
  %929 = load i8*, i8** %sequence, align 8
  %930 = getelementptr inbounds i8, i8* %929, i64 %928
  store i8 0, i8* %930, align 1
  br label %931

; <label>:931                                     ; preds = %927, %805
  br label %932

; <label>:932                                     ; preds = %931
  %933 = call i64 (...) @thread_getId()
  %934 = trunc i64 %933 to i32
  %935 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %936 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %935, i32 0, i32 4
  %937 = load i32, i32* %936, align 4
  call void @SimRoiEnd(i32 %934, i32 %937)
  br label %938

; <label>:938                                     ; preds = %932
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
  %1 = alloca i8*, align 8
  %hash = alloca i64, align 8
  %c = alloca i64, align 8
  store i8* %str, i8** %1, align 8
  store i64 0, i64* %hash, align 8
  br label %2

; <label>:2                                       ; preds = %8, %0
  %3 = load i8*, i8** %1, align 8
  %4 = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %4, i8** %1, align 8
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i64
  store i64 %6, i64* %c, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

; <label>:8                                       ; preds = %2
  %9 = load i64, i64* %c, align 8
  %10 = load i64, i64* %hash, align 8
  %11 = shl i64 %10, 6
  %12 = add i64 %9, %11
  %13 = load i64, i64* %hash, align 8
  %14 = shl i64 %13, 16
  %15 = add i64 %12, %14
  %16 = load i64, i64* %hash, align 8
  %17 = sub i64 %15, %16
  store i64 %17, i64* %hash, align 8
  br label %2

; <label>:18                                      ; preds = %2
  %19 = load i64, i64* %hash, align 8
  ret i64 %19
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
  %1 = alloca %struct.sequencer*, align 8
  %i = alloca i64, align 8
  store %struct.sequencer* %sequencerPtr, %struct.sequencer** %1, align 8
  %2 = load %struct.sequencer*, %struct.sequencer** %1, align 8
  %3 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %2, i32 0, i32 6
  %4 = load %struct.table*, %struct.table** %3, align 8
  call void @table_free(%struct.table* %4)
  %5 = load %struct.sequencer*, %struct.sequencer** %1, align 8
  %6 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %5, i32 0, i32 5
  %7 = load %struct.constructEntry*, %struct.constructEntry** %6, align 8
  %8 = bitcast %struct.constructEntry* %7 to i8*
  call void @free(i8* %8) #6
  store i64 1, i64* %i, align 8
  br label %9

; <label>:9                                       ; preds = %22, %0
  %10 = load i64, i64* %i, align 8
  %11 = load %struct.sequencer*, %struct.sequencer** %1, align 8
  %12 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %11, i32 0, i32 7
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %25

; <label>:15                                      ; preds = %9
  %16 = load i64, i64* %i, align 8
  %17 = load %struct.sequencer*, %struct.sequencer** %1, align 8
  %18 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %17, i32 0, i32 4
  %19 = load %struct.table**, %struct.table*** %18, align 8
  %20 = getelementptr inbounds %struct.table*, %struct.table** %19, i64 %16
  %21 = load %struct.table*, %struct.table** %20, align 8
  call void @table_free(%struct.table* %21)
  br label %22

; <label>:22                                      ; preds = %15
  %23 = load i64, i64* %i, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %i, align 8
  br label %9

; <label>:25                                      ; preds = %9
  %26 = load %struct.sequencer*, %struct.sequencer** %1, align 8
  %27 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %26, i32 0, i32 4
  %28 = load %struct.table**, %struct.table*** %27, align 8
  %29 = bitcast %struct.table** %28 to i8*
  call void @free(i8* %29) #6
  %30 = load %struct.sequencer*, %struct.sequencer** %1, align 8
  %31 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %30, i32 0, i32 3
  %32 = load %struct.endInfoEntry*, %struct.endInfoEntry** %31, align 8
  %33 = bitcast %struct.endInfoEntry* %32 to i8*
  call void @free(i8* %33) #6
  %34 = load %struct.sequencer*, %struct.sequencer** %1, align 8
  %35 = bitcast %struct.sequencer* %34 to i8*
  call void @free(i8* %35) #6
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
