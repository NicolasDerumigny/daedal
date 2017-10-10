; ModuleID = '../bin/sequencer.stats.ll'
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

; <label>:91                                      ; preds = %171, %89
  %92 = load i64, i64* %i, align 8
  %93 = load i64, i64* %i_stop, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %174

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
  br label %__kernel__sequencer_run1

__kernel__sequencer_run1:                         ; preds = %159, %144
  %148 = load i64, i64* %ii, align 8
  %149 = load i64, i64* %ii_stop, align 8
  %150 = icmp slt i64 %148, %149
  br i1 %150, label %151, label %162

; <label>:151                                     ; preds = %__kernel__sequencer_run1
  %152 = load %struct.vector*, %struct.vector** %segmentsContentsPtr, align 8
  %153 = load i64, i64* %ii, align 8
  %154 = call i8* @vector_at(%struct.vector* %152, i64 %153)
  store i8* %154, i8** %segment, align 8
  %155 = load %struct.hashtable*, %struct.hashtable** %uniqueSegmentsPtr, align 8
  %156 = load i8*, i8** %segment, align 8
  %157 = load i8*, i8** %segment, align 8
  %158 = call i64 @TMhashtable_insert(%struct.hashtable* %155, i8* %156, i8* %157)
  br label %159

; <label>:159                                     ; preds = %151
  %160 = load i64, i64* %ii, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %ii, align 8
  br label %__kernel__sequencer_run1, !llvm.loop !3

; <label>:162                                     ; preds = %__kernel__sequencer_run1
  %163 = load i32, i32* %tries, align 4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %167

; <label>:165                                     ; preds = %162
  store i64 0, i64* %13, align 8
  %166 = load i64, i64* %13, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %166) #6, !srcloc !5
  br label %168

; <label>:167                                     ; preds = %162
  call void (...) @RTM_fallback_unlock()
  br label %168

; <label>:168                                     ; preds = %167, %165
  br label %169

; <label>:169                                     ; preds = %168
  call void @workEnd(i32 0, i32 0)
  br label %170

; <label>:170                                     ; preds = %169
  br label %171

; <label>:171                                     ; preds = %170
  %172 = load i64, i64* %i, align 8
  %173 = add nsw i64 %172, 12
  store i64 %173, i64* %i, align 8
  br label %91

; <label>:174                                     ; preds = %91
  call void (...) @thread_barrier_wait()
  %175 = load %struct.hashtable*, %struct.hashtable** %uniqueSegmentsPtr, align 8
  %176 = call i64 @hashtable_getSize(%struct.hashtable* %175)
  store i64 %176, i64* %numUniqueSegment, align 8
  store i64 0, i64* %entryIndex, align 8
  %177 = load %struct.hashtable*, %struct.hashtable** %uniqueSegmentsPtr, align 8
  %178 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %num, align 8
  %180 = load i64, i64* %num, align 8
  %181 = load i64, i64* %numThread, align 8
  %182 = sdiv i64 %181, 2
  %183 = add nsw i64 %180, %182
  %184 = load i64, i64* %numThread, align 8
  %185 = sdiv i64 %183, %184
  store i64 %185, i64* %partitionSize2, align 8
  %186 = load i64, i64* %threadId, align 8
  %187 = load i64, i64* %partitionSize2, align 8
  %188 = mul nsw i64 %186, %187
  store i64 %188, i64* %i_start, align 8
  %189 = load i64, i64* %threadId, align 8
  %190 = load i64, i64* %numThread, align 8
  %191 = sub nsw i64 %190, 1
  %192 = icmp eq i64 %189, %191
  br i1 %192, label %193, label %195

; <label>:193                                     ; preds = %174
  %194 = load i64, i64* %num, align 8
  store i64 %194, i64* %i_stop, align 8
  br label %199

; <label>:195                                     ; preds = %174
  %196 = load i64, i64* %i_start, align 8
  %197 = load i64, i64* %partitionSize2, align 8
  %198 = add nsw i64 %196, %197
  store i64 %198, i64* %i_stop, align 8
  br label %199

; <label>:199                                     ; preds = %195, %193
  %200 = load i64, i64* %numUniqueSegment, align 8
  %201 = load i64, i64* %numThread, align 8
  %202 = sdiv i64 %201, 2
  %203 = add nsw i64 %200, %202
  %204 = load i64, i64* %numThread, align 8
  %205 = sdiv i64 %203, %204
  store i64 %205, i64* %partitionSize3, align 8
  %206 = load i64, i64* %threadId, align 8
  %207 = load i64, i64* %partitionSize3, align 8
  %208 = mul nsw i64 %206, %207
  store i64 %208, i64* %entryIndex, align 8
  %209 = load i64, i64* %i_start, align 8
  store i64 %209, i64* %i, align 8
  br label %210

; <label>:210                                     ; preds = %442, %199
  %211 = load i64, i64* %i, align 8
  %212 = load i64, i64* %i_stop, align 8
  %213 = icmp slt i64 %211, %212
  br i1 %213, label %214, label %445

; <label>:214                                     ; preds = %210
  br label %215

; <label>:215                                     ; preds = %214
  %216 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %217 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  store i32 %218, i32* %threadId4, align 4
  %219 = load i32, i32* %threadId4, align 4
  %220 = call i32 @workBegin(i32 0, i32 %219)
  %221 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %222 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %221, i32 0, i32 4
  store i32 %220, i32* %222, align 4
  br label %223

; <label>:223                                     ; preds = %215
  %224 = load i64, i64* %i, align 8
  %225 = load %struct.hashtable*, %struct.hashtable** %uniqueSegmentsPtr, align 8
  %226 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %225, i32 0, i32 0
  %227 = load %struct.list**, %struct.list*** %226, align 8
  %228 = getelementptr inbounds %struct.list*, %struct.list** %227, i64 %224
  %229 = load %struct.list*, %struct.list** %228, align 8
  store %struct.list* %229, %struct.list** %chainPtr, align 8
  %230 = load %struct.list*, %struct.list** %chainPtr, align 8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %230)
  br label %231

; <label>:231                                     ; preds = %438, %223
  %232 = load %struct.list*, %struct.list** %chainPtr, align 8
  %233 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %232) #7
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %439

; <label>:235                                     ; preds = %231
  %236 = load %struct.list*, %struct.list** %chainPtr, align 8
  %237 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %236)
  %238 = bitcast i8* %237 to %struct.pair*
  %239 = getelementptr inbounds %struct.pair, %struct.pair* %238, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  store i8* %240, i8** %segment5, align 8
  store i32 -1, i32* %__status7, align 4
  store i32 9, i32* %tries8, align 4
  br label %241

; <label>:241                                     ; preds = %262, %235
  br label %242

; <label>:242                                     ; preds = %245, %241
  %243 = call i64 (...) @RTM_fallback_isLocked()
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %246

; <label>:245                                     ; preds = %242
  call void @llvm.x86.sse2.pause() #6
  br label %242

; <label>:246                                     ; preds = %242
  %247 = load i32, i32* %tries8, align 4
  %248 = add nsw i32 %247, -1
  store i32 %248, i32* %tries8, align 4
  %249 = load i32, i32* %tries8, align 4
  %250 = icmp sle i32 %249, 0
  br i1 %250, label %251, label %252

; <label>:251                                     ; preds = %246
  call void (...) @RTM_fallback_lock()
  br label %269

; <label>:252                                     ; preds = %246
  store i64 1, i64* %12, align 8
  store i64 0, i64* %handler.i27, align 8
  store i64 4294967295, i64* %ret.i28, align 8
  %253 = load i64, i64* %ret.i28, align 8
  %254 = load i64, i64* %12, align 8
  %255 = load i64, i64* %handler.i27, align 8
  %256 = load i64, i64* %12, align 8
  %257 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %254, i64 %255, i64 %256, i64 %253) #6, !srcloc !1
  store i64 %257, i64* %ret.i28, align 8
  %258 = load i64, i64* %ret.i28, align 8
  %259 = trunc i64 %258 to i32
  store i32 %259, i32* %__status7, align 4
  %260 = load i32, i32* %__status7, align 4
  %261 = icmp ne i32 %260, -1
  br i1 %261, label %262, label %263

; <label>:262                                     ; preds = %252
  br label %241

; <label>:263                                     ; preds = %252
  %264 = call i64 (...) @RTM_fallback_isLocked()
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %268

; <label>:266                                     ; preds = %263
  store i64 255, i64* %11, align 8
  %267 = load i64, i64* %11, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %267) #6, !srcloc !2
  br label %268

; <label>:268                                     ; preds = %266, %263
  br label %269

; <label>:269                                     ; preds = %268, %251
  br label %__kernel__sequencer_run0

__kernel__sequencer_run0:                         ; preds = %276, %269
  %270 = load i64, i64* %entryIndex, align 8
  %271 = load %struct.constructEntry*, %struct.constructEntry** %constructEntries, align 8
  %272 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %271, i64 %270
  %273 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %272, i32 0, i32 1
  %274 = load i8*, i8** %273, align 8
  %275 = icmp ne i8* %274, null
  br i1 %275, label %276, label %281

; <label>:276                                     ; preds = %__kernel__sequencer_run0
  %277 = load i64, i64* %entryIndex, align 8
  %278 = add nsw i64 %277, 1
  %279 = load i64, i64* %numUniqueSegment, align 8
  %280 = srem i64 %278, %279
  store i64 %280, i64* %entryIndex, align 8
  br label %__kernel__sequencer_run0, !llvm.loop !6

; <label>:281                                     ; preds = %__kernel__sequencer_run0
  %282 = load i64, i64* %entryIndex, align 8
  %283 = load %struct.constructEntry*, %struct.constructEntry** %constructEntries, align 8
  %284 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %283, i64 %282
  store %struct.constructEntry* %284, %struct.constructEntry** %constructEntryPtr, align 8
  %285 = load i8*, i8** %segment5, align 8
  %286 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr, align 8
  %287 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %286, i32 0, i32 1
  store i8* %285, i8** %287, align 8
  %288 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr, align 8
  %289 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %288, i32 0, i32 1
  %290 = load i8*, i8** %289, align 8
  store i8* %290, i8** %18, align 8
  %291 = load i8*, i8** %18, align 8
  %292 = load i32, i32* %tries8, align 4
  %293 = icmp sgt i32 %292, 0
  br i1 %293, label %294, label %296

; <label>:294                                     ; preds = %281
  store i64 1, i64* %10, align 8
  %295 = load i64, i64* %10, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %295) #6, !srcloc !5
  br label %297

; <label>:296                                     ; preds = %281
  call void (...) @RTM_fallback_unlock()
  br label %297

; <label>:297                                     ; preds = %296, %294
  %298 = load i64, i64* %entryIndex, align 8
  %299 = add nsw i64 %298, 1
  %300 = load i64, i64* %numUniqueSegment, align 8
  %301 = srem i64 %299, %300
  store i64 %301, i64* %entryIndex, align 8
  %302 = load i8*, i8** %segment5, align 8
  %303 = getelementptr inbounds i8, i8* %302, i64 1
  %304 = call i64 @hashString(i8* %303)
  %305 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr, align 8
  %306 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %305, i32 0, i32 2
  store i64 %304, i64* %306, align 8
  store i64 0, i64* %startHash, align 8
  store i64 1, i64* %j6, align 8
  br label %307

; <label>:307                                     ; preds = %375, %297
  %308 = load i64, i64* %j6, align 8
  %309 = load i64, i64* %segmentLength, align 8
  %310 = icmp slt i64 %308, %309
  br i1 %310, label %311, label %378

; <label>:311                                     ; preds = %307
  %312 = load i64, i64* %j6, align 8
  %313 = sub nsw i64 %312, 1
  %314 = load i8*, i8** %segment5, align 8
  %315 = getelementptr inbounds i8, i8* %314, i64 %313
  %316 = load i8, i8* %315, align 1
  %317 = sext i8 %316 to i64
  %318 = load i64, i64* %startHash, align 8
  %319 = shl i64 %318, 6
  %320 = add i64 %317, %319
  %321 = load i64, i64* %startHash, align 8
  %322 = shl i64 %321, 16
  %323 = add i64 %320, %322
  %324 = load i64, i64* %startHash, align 8
  %325 = sub i64 %323, %324
  store i64 %325, i64* %startHash, align 8
  store i32 -1, i32* %__status9, align 4
  store i32 9, i32* %tries10, align 4
  br label %326

; <label>:326                                     ; preds = %347, %311
  br label %327

; <label>:327                                     ; preds = %330, %326
  %328 = call i64 (...) @RTM_fallback_isLocked()
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %331

; <label>:330                                     ; preds = %327
  call void @llvm.x86.sse2.pause() #6
  br label %327

; <label>:331                                     ; preds = %327
  %332 = load i32, i32* %tries10, align 4
  %333 = add nsw i32 %332, -1
  store i32 %333, i32* %tries10, align 4
  %334 = load i32, i32* %tries10, align 4
  %335 = icmp sle i32 %334, 0
  br i1 %335, label %336, label %337

; <label>:336                                     ; preds = %331
  call void (...) @RTM_fallback_lock()
  br label %354

; <label>:337                                     ; preds = %331
  store i64 2, i64* %8, align 8
  store i64 0, i64* %handler.i29, align 8
  store i64 4294967295, i64* %ret.i30, align 8
  %338 = load i64, i64* %ret.i30, align 8
  %339 = load i64, i64* %8, align 8
  %340 = load i64, i64* %handler.i29, align 8
  %341 = load i64, i64* %8, align 8
  %342 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %339, i64 %340, i64 %341, i64 %338) #6, !srcloc !1
  store i64 %342, i64* %ret.i30, align 8
  %343 = load i64, i64* %ret.i30, align 8
  %344 = trunc i64 %343 to i32
  store i32 %344, i32* %__status9, align 4
  %345 = load i32, i32* %__status9, align 4
  %346 = icmp ne i32 %345, -1
  br i1 %346, label %347, label %348

; <label>:347                                     ; preds = %337
  br label %326

; <label>:348                                     ; preds = %337
  %349 = call i64 (...) @RTM_fallback_isLocked()
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %353

; <label>:351                                     ; preds = %348
  store i64 255, i64* %7, align 8
  %352 = load i64, i64* %7, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %352) #6, !srcloc !2
  br label %353

; <label>:353                                     ; preds = %351, %348
  br label %354

; <label>:354                                     ; preds = %353, %336
  %355 = load i64, i64* %j6, align 8
  %356 = load %struct.table**, %struct.table*** %startHashToConstructEntryTables, align 8
  %357 = getelementptr inbounds %struct.table*, %struct.table** %356, i64 %355
  %358 = load %struct.table*, %struct.table** %357, align 8
  %359 = load i64, i64* %startHash, align 8
  %360 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr, align 8
  %361 = bitcast %struct.constructEntry* %360 to i8*
  %362 = call i64 @TMtable_insert(%struct.table* %358, i64 %359, i8* %361)
  store i64 %362, i64* %status, align 8
  %363 = load i32, i32* %tries10, align 4
  %364 = icmp sgt i32 %363, 0
  br i1 %364, label %365, label %367

; <label>:365                                     ; preds = %354
  store i64 2, i64* %6, align 8
  %366 = load i64, i64* %6, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %366) #6, !srcloc !5
  br label %368

; <label>:367                                     ; preds = %354
  call void (...) @RTM_fallback_unlock()
  br label %368

; <label>:368                                     ; preds = %367, %365
  %369 = load i64, i64* %status, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %372

; <label>:371                                     ; preds = %368
  br label %374

; <label>:372                                     ; preds = %368
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 405, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %374

; <label>:374                                     ; preds = %373, %371
  br label %375

; <label>:375                                     ; preds = %374
  %376 = load i64, i64* %j6, align 8
  %377 = add nsw i64 %376, 1
  store i64 %377, i64* %j6, align 8
  br label %307

; <label>:378                                     ; preds = %307
  %379 = load i64, i64* %j6, align 8
  %380 = sub nsw i64 %379, 1
  %381 = load i8*, i8** %segment5, align 8
  %382 = getelementptr inbounds i8, i8* %381, i64 %380
  %383 = load i8, i8* %382, align 1
  %384 = sext i8 %383 to i64
  %385 = load i64, i64* %startHash, align 8
  %386 = shl i64 %385, 6
  %387 = add i64 %384, %386
  %388 = load i64, i64* %startHash, align 8
  %389 = shl i64 %388, 16
  %390 = add i64 %387, %389
  %391 = load i64, i64* %startHash, align 8
  %392 = sub i64 %390, %391
  store i64 %392, i64* %startHash, align 8
  store i32 -1, i32* %__status11, align 4
  store i32 9, i32* %tries12, align 4
  br label %393

; <label>:393                                     ; preds = %414, %378
  br label %394

; <label>:394                                     ; preds = %397, %393
  %395 = call i64 (...) @RTM_fallback_isLocked()
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %398

; <label>:397                                     ; preds = %394
  call void @llvm.x86.sse2.pause() #6
  br label %394

; <label>:398                                     ; preds = %394
  %399 = load i32, i32* %tries12, align 4
  %400 = add nsw i32 %399, -1
  store i32 %400, i32* %tries12, align 4
  %401 = load i32, i32* %tries12, align 4
  %402 = icmp sle i32 %401, 0
  br i1 %402, label %403, label %404

; <label>:403                                     ; preds = %398
  call void (...) @RTM_fallback_lock()
  br label %421

; <label>:404                                     ; preds = %398
  store i64 3, i64* %4, align 8
  store i64 0, i64* %handler.i31, align 8
  store i64 4294967295, i64* %ret.i32, align 8
  %405 = load i64, i64* %ret.i32, align 8
  %406 = load i64, i64* %4, align 8
  %407 = load i64, i64* %handler.i31, align 8
  %408 = load i64, i64* %4, align 8
  %409 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %406, i64 %407, i64 %408, i64 %405) #6, !srcloc !1
  store i64 %409, i64* %ret.i32, align 8
  %410 = load i64, i64* %ret.i32, align 8
  %411 = trunc i64 %410 to i32
  store i32 %411, i32* %__status11, align 4
  %412 = load i32, i32* %__status11, align 4
  %413 = icmp ne i32 %412, -1
  br i1 %413, label %414, label %415

; <label>:414                                     ; preds = %404
  br label %393

; <label>:415                                     ; preds = %404
  %416 = call i64 (...) @RTM_fallback_isLocked()
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %420

; <label>:418                                     ; preds = %415
  store i64 255, i64* %3, align 8
  %419 = load i64, i64* %3, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %419) #6, !srcloc !2
  br label %420

; <label>:420                                     ; preds = %418, %415
  br label %421

; <label>:421                                     ; preds = %420, %403
  %422 = load %struct.table*, %struct.table** %hashToConstructEntryTable, align 8
  %423 = load i64, i64* %startHash, align 8
  %424 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr, align 8
  %425 = bitcast %struct.constructEntry* %424 to i8*
  %426 = call i64 @TMtable_insert(%struct.table* %422, i64 %423, i8* %425)
  store i64 %426, i64* %status, align 8
  %427 = load i32, i32* %tries12, align 4
  %428 = icmp sgt i32 %427, 0
  br i1 %428, label %429, label %431

; <label>:429                                     ; preds = %421
  store i64 3, i64* %2, align 8
  %430 = load i64, i64* %2, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %430) #6, !srcloc !5
  br label %432

; <label>:431                                     ; preds = %421
  call void (...) @RTM_fallback_unlock()
  br label %432

; <label>:432                                     ; preds = %431, %429
  %433 = load i64, i64* %status, align 8
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %436

; <label>:435                                     ; preds = %432
  br label %438

; <label>:436                                     ; preds = %432
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 418, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %438

; <label>:438                                     ; preds = %437, %435
  br label %231

; <label>:439                                     ; preds = %231
  br label %440

; <label>:440                                     ; preds = %439
  call void @workEnd(i32 0, i32 0)
  br label %441

; <label>:441                                     ; preds = %440
  br label %442

; <label>:442                                     ; preds = %441
  %443 = load i64, i64* %i, align 8
  %444 = add nsw i64 %443, 1
  store i64 %444, i64* %i, align 8
  br label %210

; <label>:445                                     ; preds = %210
  call void (...) @thread_barrier_wait()
  %446 = load i64, i64* %segmentLength, align 8
  %447 = sub nsw i64 %446, 1
  store i64 %447, i64* %substringLength, align 8
  br label %448

; <label>:448                                     ; preds = %800, %445
  %449 = load i64, i64* %substringLength, align 8
  %450 = icmp sgt i64 %449, 0
  br i1 %450, label %451, label %803

; <label>:451                                     ; preds = %448
  br label %452

; <label>:452                                     ; preds = %451
  %453 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %454 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 8
  store i32 %455, i32* %threadId13, align 4
  %456 = load i32, i32* %threadId13, align 4
  %457 = call i32 @workBegin(i32 0, i32 %456)
  %458 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %459 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %458, i32 0, i32 4
  store i32 %457, i32* %459, align 4
  br label %460

; <label>:460                                     ; preds = %452
  %461 = load i64, i64* %substringLength, align 8
  %462 = load %struct.table**, %struct.table*** %startHashToConstructEntryTables, align 8
  %463 = getelementptr inbounds %struct.table*, %struct.table** %462, i64 %461
  %464 = load %struct.table*, %struct.table** %463, align 8
  store %struct.table* %464, %struct.table** %startHashToConstructEntryTablePtr, align 8
  %465 = load %struct.table*, %struct.table** %startHashToConstructEntryTablePtr, align 8
  %466 = getelementptr inbounds %struct.table, %struct.table* %465, i32 0, i32 0
  %467 = load %struct.list**, %struct.list*** %466, align 8
  store %struct.list** %467, %struct.list*** %buckets, align 8
  %468 = load %struct.table*, %struct.table** %startHashToConstructEntryTablePtr, align 8
  %469 = getelementptr inbounds %struct.table, %struct.table* %468, i32 0, i32 1
  %470 = load i64, i64* %469, align 8
  store i64 %470, i64* %numBucket, align 8
  %471 = load i64, i64* %numUniqueSegment, align 8
  %472 = load i64, i64* %numThread, align 8
  %473 = sdiv i64 %472, 2
  %474 = add nsw i64 %471, %473
  %475 = load i64, i64* %numThread, align 8
  %476 = sdiv i64 %474, %475
  store i64 %476, i64* %partitionSize14, align 8
  %477 = load i64, i64* %threadId, align 8
  %478 = load i64, i64* %partitionSize14, align 8
  %479 = mul nsw i64 %477, %478
  store i64 %479, i64* %index_start, align 8
  %480 = load i64, i64* %threadId, align 8
  %481 = load i64, i64* %numThread, align 8
  %482 = sub nsw i64 %481, 1
  %483 = icmp eq i64 %480, %482
  br i1 %483, label %484, label %486

; <label>:484                                     ; preds = %460
  %485 = load i64, i64* %numUniqueSegment, align 8
  store i64 %485, i64* %index_stop, align 8
  br label %490

; <label>:486                                     ; preds = %460
  %487 = load i64, i64* %index_start, align 8
  %488 = load i64, i64* %partitionSize14, align 8
  %489 = add nsw i64 %487, %488
  store i64 %489, i64* %index_stop, align 8
  br label %490

; <label>:490                                     ; preds = %486, %484
  %491 = load i64, i64* %index_start, align 8
  store i64 %491, i64* %entryIndex, align 8
  br label %492

; <label>:492                                     ; preds = %676, %490
  %493 = load i64, i64* %entryIndex, align 8
  %494 = load i64, i64* %index_stop, align 8
  %495 = icmp slt i64 %493, %494
  br i1 %495, label %496, label %684

; <label>:496                                     ; preds = %492
  %497 = load i64, i64* %entryIndex, align 8
  %498 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntries, align 8
  %499 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %498, i64 %497
  %500 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %499, i32 0, i32 0
  %501 = load i64, i64* %500, align 8
  %502 = icmp ne i64 %501, 0
  br i1 %502, label %504, label %503

; <label>:503                                     ; preds = %496
  br label %676

; <label>:504                                     ; preds = %496
  %505 = load i64, i64* %entryIndex, align 8
  %506 = load %struct.constructEntry*, %struct.constructEntry** %constructEntries, align 8
  %507 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %506, i64 %505
  store %struct.constructEntry* %507, %struct.constructEntry** %endConstructEntryPtr, align 8
  %508 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntryPtr, align 8
  %509 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %508, i32 0, i32 1
  %510 = load i8*, i8** %509, align 8
  store i8* %510, i8** %endSegment, align 8
  %511 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntryPtr, align 8
  %512 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %511, i32 0, i32 2
  %513 = load i64, i64* %512, align 8
  store i64 %513, i64* %endHash, align 8
  %514 = load i64, i64* %endHash, align 8
  %515 = load i64, i64* %numBucket, align 8
  %516 = urem i64 %514, %515
  %517 = load %struct.list**, %struct.list*** %buckets, align 8
  %518 = getelementptr inbounds %struct.list*, %struct.list** %517, i64 %516
  %519 = load %struct.list*, %struct.list** %518, align 8
  store %struct.list* %519, %struct.list** %chainPtr15, align 8
  %520 = load %struct.list*, %struct.list** %chainPtr15, align 8
  call void @list_iter_reset(%struct.list_node** %it16, %struct.list* %520)
  br label %521

; <label>:521                                     ; preds = %674, %504
  %522 = load %struct.list*, %struct.list** %chainPtr15, align 8
  %523 = call i64 @list_iter_hasNext(%struct.list_node** %it16, %struct.list* %522) #7
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %525, label %675

; <label>:525                                     ; preds = %521
  %526 = load %struct.list*, %struct.list** %chainPtr15, align 8
  %527 = call i8* @list_iter_next(%struct.list_node** %it16, %struct.list* %526)
  %528 = bitcast i8* %527 to %struct.constructEntry*
  store %struct.constructEntry* %528, %struct.constructEntry** %startConstructEntryPtr, align 8
  %529 = load %struct.constructEntry*, %struct.constructEntry** %startConstructEntryPtr, align 8
  %530 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %529, i32 0, i32 1
  %531 = load i8*, i8** %530, align 8
  store i8* %531, i8** %startSegment, align 8
  store i64 0, i64* %newLength, align 8
  store i32 -1, i32* %__status17, align 4
  store i32 9, i32* %tries18, align 4
  br label %532

; <label>:532                                     ; preds = %553, %525
  br label %533

; <label>:533                                     ; preds = %536, %532
  %534 = call i64 (...) @RTM_fallback_isLocked()
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %536, label %537

; <label>:536                                     ; preds = %533
  call void @llvm.x86.sse2.pause() #6
  br label %533

; <label>:537                                     ; preds = %533
  %538 = load i32, i32* %tries18, align 4
  %539 = add nsw i32 %538, -1
  store i32 %539, i32* %tries18, align 4
  %540 = load i32, i32* %tries18, align 4
  %541 = icmp sle i32 %540, 0
  br i1 %541, label %542, label %543

; <label>:542                                     ; preds = %537
  call void (...) @RTM_fallback_lock()
  br label %560

; <label>:543                                     ; preds = %537
  store i64 4, i64* %1, align 8
  store i64 0, i64* %handler.i33, align 8
  store i64 4294967295, i64* %ret.i34, align 8
  %544 = load i64, i64* %ret.i34, align 8
  %545 = load i64, i64* %1, align 8
  %546 = load i64, i64* %handler.i33, align 8
  %547 = load i64, i64* %1, align 8
  %548 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %545, i64 %546, i64 %547, i64 %544) #6, !srcloc !1
  store i64 %548, i64* %ret.i34, align 8
  %549 = load i64, i64* %ret.i34, align 8
  %550 = trunc i64 %549 to i32
  store i32 %550, i32* %__status17, align 4
  %551 = load i32, i32* %__status17, align 4
  %552 = icmp ne i32 %551, -1
  br i1 %552, label %553, label %554

; <label>:553                                     ; preds = %543
  br label %532

; <label>:554                                     ; preds = %543
  %555 = call i64 (...) @RTM_fallback_isLocked()
  %556 = icmp ne i64 %555, 0
  br i1 %556, label %557, label %559

; <label>:557                                     ; preds = %554
  store i64 255, i64* %5, align 8
  %558 = load i64, i64* %5, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %558) #6, !srcloc !2
  br label %559

; <label>:559                                     ; preds = %557, %554
  br label %560

; <label>:560                                     ; preds = %559, %542
  %561 = load %struct.constructEntry*, %struct.constructEntry** %startConstructEntryPtr, align 8
  %562 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %561, i32 0, i32 0
  %563 = load i64, i64* %562, align 8
  %564 = icmp ne i64 %563, 0
  br i1 %564, label %565, label %660

; <label>:565                                     ; preds = %560
  %566 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntryPtr, align 8
  %567 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %566, i32 0, i32 3
  %568 = load %struct.constructEntry*, %struct.constructEntry** %567, align 8
  %569 = load %struct.constructEntry*, %struct.constructEntry** %startConstructEntryPtr, align 8
  %570 = icmp ne %struct.constructEntry* %568, %569
  br i1 %570, label %571, label %660

; <label>:571                                     ; preds = %565
  %572 = load i8*, i8** %startSegment, align 8
  %573 = load i64, i64* %segmentLength, align 8
  %574 = load i64, i64* %substringLength, align 8
  %575 = sub nsw i64 %573, %574
  %576 = load i8*, i8** %endSegment, align 8
  %577 = getelementptr inbounds i8, i8* %576, i64 %575
  %578 = load i64, i64* %substringLength, align 8
  %579 = call i32 @strncmp(i8* %572, i8* %577, i64 %578) #7
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %581, label %660

; <label>:581                                     ; preds = %571
  %582 = load %struct.constructEntry*, %struct.constructEntry** %startConstructEntryPtr, align 8
  %583 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %582, i32 0, i32 0
  store i64 0, i64* %583, align 8
  %584 = load %struct.constructEntry*, %struct.constructEntry** %startConstructEntryPtr, align 8
  %585 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %584, i32 0, i32 0
  %586 = load i64, i64* %585, align 8
  store i64 %586, i64* %19, align 8
  %587 = load i64, i64* %19, align 8
  %588 = load i64, i64* %entryIndex, align 8
  %589 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntries, align 8
  %590 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %589, i64 %588
  %591 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %590, i32 0, i32 0
  store i64 0, i64* %591, align 8
  %592 = load i64, i64* %entryIndex, align 8
  %593 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntries, align 8
  %594 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %593, i64 %592
  %595 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %594, i32 0, i32 0
  %596 = load i64, i64* %595, align 8
  store i64 %596, i64* %20, align 8
  %597 = load i64, i64* %20, align 8
  %598 = load %struct.constructEntry*, %struct.constructEntry** %startConstructEntryPtr, align 8
  %599 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %598, i32 0, i32 5
  %600 = load %struct.constructEntry*, %struct.constructEntry** %599, align 8
  store %struct.constructEntry* %600, %struct.constructEntry** %startConstructEntry_endPtr, align 8
  %601 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntryPtr, align 8
  %602 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %601, i32 0, i32 3
  %603 = load %struct.constructEntry*, %struct.constructEntry** %602, align 8
  store %struct.constructEntry* %603, %struct.constructEntry** %endConstructEntry_startPtr, align 8
  %604 = load %struct.constructEntry*, %struct.constructEntry** %startConstructEntry_endPtr, align 8
  %605 = icmp ne %struct.constructEntry* %604, null
  br i1 %605, label %606, label %607

; <label>:606                                     ; preds = %581
  br label %609

; <label>:607                                     ; preds = %581
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 506, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %609

; <label>:609                                     ; preds = %608, %606
  %610 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntry_startPtr, align 8
  %611 = icmp ne %struct.constructEntry* %610, null
  br i1 %611, label %612, label %613

; <label>:612                                     ; preds = %609
  br label %615

; <label>:613                                     ; preds = %609
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 507, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %615

; <label>:615                                     ; preds = %614, %612
  %616 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntry_startPtr, align 8
  %617 = load %struct.constructEntry*, %struct.constructEntry** %startConstructEntry_endPtr, align 8
  %618 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %617, i32 0, i32 3
  store %struct.constructEntry* %616, %struct.constructEntry** %618, align 8
  %619 = load %struct.constructEntry*, %struct.constructEntry** %startConstructEntry_endPtr, align 8
  %620 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %619, i32 0, i32 3
  %621 = load %struct.constructEntry*, %struct.constructEntry** %620, align 8
  store %struct.constructEntry* %621, %struct.constructEntry** %21, align 8
  %622 = load %struct.constructEntry*, %struct.constructEntry** %21, align 8
  %623 = load %struct.constructEntry*, %struct.constructEntry** %startConstructEntryPtr, align 8
  %624 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntryPtr, align 8
  %625 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %624, i32 0, i32 4
  store %struct.constructEntry* %623, %struct.constructEntry** %625, align 8
  %626 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntryPtr, align 8
  %627 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %626, i32 0, i32 4
  %628 = load %struct.constructEntry*, %struct.constructEntry** %627, align 8
  store %struct.constructEntry* %628, %struct.constructEntry** %22, align 8
  %629 = load %struct.constructEntry*, %struct.constructEntry** %22, align 8
  %630 = load %struct.constructEntry*, %struct.constructEntry** %startConstructEntry_endPtr, align 8
  %631 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntry_startPtr, align 8
  %632 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %631, i32 0, i32 5
  store %struct.constructEntry* %630, %struct.constructEntry** %632, align 8
  %633 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntry_startPtr, align 8
  %634 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %633, i32 0, i32 5
  %635 = load %struct.constructEntry*, %struct.constructEntry** %634, align 8
  store %struct.constructEntry* %635, %struct.constructEntry** %23, align 8
  %636 = load %struct.constructEntry*, %struct.constructEntry** %23, align 8
  %637 = load i64, i64* %substringLength, align 8
  %638 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntryPtr, align 8
  %639 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %638, i32 0, i32 6
  store i64 %637, i64* %639, align 8
  %640 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntryPtr, align 8
  %641 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %640, i32 0, i32 6
  %642 = load i64, i64* %641, align 8
  store i64 %642, i64* %24, align 8
  %643 = load i64, i64* %24, align 8
  %644 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntry_startPtr, align 8
  %645 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %644, i32 0, i32 7
  %646 = load i64, i64* %645, align 8
  %647 = load %struct.constructEntry*, %struct.constructEntry** %startConstructEntryPtr, align 8
  %648 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %647, i32 0, i32 7
  %649 = load i64, i64* %648, align 8
  %650 = add nsw i64 %646, %649
  %651 = load i64, i64* %substringLength, align 8
  %652 = sub nsw i64 %650, %651
  store i64 %652, i64* %newLength, align 8
  %653 = load i64, i64* %newLength, align 8
  %654 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntry_startPtr, align 8
  %655 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %654, i32 0, i32 7
  store i64 %653, i64* %655, align 8
  %656 = load %struct.constructEntry*, %struct.constructEntry** %endConstructEntry_startPtr, align 8
  %657 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %656, i32 0, i32 7
  %658 = load i64, i64* %657, align 8
  store i64 %658, i64* %25, align 8
  %659 = load i64, i64* %25, align 8
  br label %660

; <label>:660                                     ; preds = %615, %571, %565, %560
  %661 = load i32, i32* %tries18, align 4
  %662 = icmp sgt i32 %661, 0
  br i1 %662, label %663, label %665

; <label>:663                                     ; preds = %660
  store i64 4, i64* %9, align 8
  %664 = load i64, i64* %9, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %664) #6, !srcloc !5
  br label %666

; <label>:665                                     ; preds = %660
  call void (...) @RTM_fallback_unlock()
  br label %666

; <label>:666                                     ; preds = %665, %663
  %667 = load i64, i64* %entryIndex, align 8
  %668 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntries, align 8
  %669 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %668, i64 %667
  %670 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %669, i32 0, i32 0
  %671 = load i64, i64* %670, align 8
  %672 = icmp ne i64 %671, 0
  br i1 %672, label %674, label %673

; <label>:673                                     ; preds = %666
  br label %675

; <label>:674                                     ; preds = %666
  br label %521

; <label>:675                                     ; preds = %673, %521
  br label %676

; <label>:676                                     ; preds = %675, %503
  %677 = load i64, i64* %entryIndex, align 8
  %678 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntries, align 8
  %679 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %678, i64 %677
  %680 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %679, i32 0, i32 1
  %681 = load i64, i64* %680, align 8
  %682 = load i64, i64* %entryIndex, align 8
  %683 = add nsw i64 %682, %681
  store i64 %683, i64* %entryIndex, align 8
  br label %492

; <label>:684                                     ; preds = %492
  call void (...) @thread_barrier_wait()
  %685 = load i64, i64* %threadId, align 8
  %686 = icmp eq i64 %685, 0
  br i1 %686, label %687, label %797

; <label>:687                                     ; preds = %684
  %688 = load i64, i64* %substringLength, align 8
  %689 = icmp sgt i64 %688, 1
  br i1 %689, label %690, label %796

; <label>:690                                     ; preds = %687
  %691 = load i64, i64* %segmentLength, align 8
  %692 = load i64, i64* %substringLength, align 8
  %693 = sub nsw i64 %691, %692
  %694 = add nsw i64 %693, 1
  store i64 %694, i64* %index, align 8
  store i64 1, i64* %i, align 8
  br label %695

; <label>:695                                     ; preds = %704, %690
  %696 = load i64, i64* %i, align 8
  %697 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntries, align 8
  %698 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %697, i64 %696
  %699 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %698, i32 0, i32 0
  %700 = load i64, i64* %699, align 8
  %701 = icmp ne i64 %700, 0
  %702 = xor i1 %701, true
  br i1 %702, label %703, label %712

; <label>:703                                     ; preds = %695
  br label %704

; <label>:704                                     ; preds = %703
  %705 = load i64, i64* %i, align 8
  %706 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntries, align 8
  %707 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %706, i64 %705
  %708 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %707, i32 0, i32 1
  %709 = load i64, i64* %708, align 8
  %710 = load i64, i64* %i, align 8
  %711 = add nsw i64 %710, %709
  store i64 %711, i64* %i, align 8
  br label %695

; <label>:712                                     ; preds = %695
  %713 = load i64, i64* %i, align 8
  %714 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntries, align 8
  %715 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %714, i64 0
  %716 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %715, i32 0, i32 1
  store i64 %713, i64* %716, align 8
  %717 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntries, align 8
  %718 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %717, i64 0
  %719 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %718, i32 0, i32 0
  %720 = load i64, i64* %719, align 8
  %721 = icmp ne i64 %720, 0
  br i1 %721, label %722, label %734

; <label>:722                                     ; preds = %712
  %723 = load %struct.constructEntry*, %struct.constructEntry** %constructEntries, align 8
  %724 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %723, i64 0
  store %struct.constructEntry* %724, %struct.constructEntry** %constructEntryPtr19, align 8
  %725 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr19, align 8
  %726 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %725, i32 0, i32 1
  %727 = load i8*, i8** %726, align 8
  store i8* %727, i8** %segment20, align 8
  %728 = load i64, i64* %index, align 8
  %729 = load i8*, i8** %segment20, align 8
  %730 = getelementptr inbounds i8, i8* %729, i64 %728
  %731 = call i64 @hashString(i8* %730)
  %732 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr19, align 8
  %733 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %732, i32 0, i32 2
  store i64 %731, i64* %733, align 8
  br label %734

; <label>:734                                     ; preds = %722, %712
  store i64 0, i64* %j, align 8
  br label %735

; <label>:735                                     ; preds = %780, %734
  %736 = load i64, i64* %i, align 8
  %737 = load i64, i64* %numUniqueSegment, align 8
  %738 = icmp slt i64 %736, %737
  br i1 %738, label %739, label %788

; <label>:739                                     ; preds = %735
  %740 = load i64, i64* %i, align 8
  %741 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntries, align 8
  %742 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %741, i64 %740
  %743 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %742, i32 0, i32 0
  %744 = load i64, i64* %743, align 8
  %745 = icmp ne i64 %744, 0
  br i1 %745, label %746, label %779

; <label>:746                                     ; preds = %739
  %747 = load i64, i64* %i, align 8
  %748 = load %struct.constructEntry*, %struct.constructEntry** %constructEntries, align 8
  %749 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %748, i64 %747
  store %struct.constructEntry* %749, %struct.constructEntry** %constructEntryPtr21, align 8
  %750 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr21, align 8
  %751 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %750, i32 0, i32 1
  %752 = load i8*, i8** %751, align 8
  store i8* %752, i8** %segment22, align 8
  %753 = load i64, i64* %index, align 8
  %754 = load i8*, i8** %segment22, align 8
  %755 = getelementptr inbounds i8, i8* %754, i64 %753
  %756 = call i64 @hashString(i8* %755)
  %757 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr21, align 8
  %758 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %757, i32 0, i32 2
  store i64 %756, i64* %758, align 8
  store i32 1, i32* %_a23, align 4
  %759 = load i64, i64* %i, align 8
  %760 = load i64, i64* %j, align 8
  %761 = sub nsw i64 %759, %760
  store i64 %761, i64* %_b24, align 8
  %762 = load i32, i32* %_a23, align 4
  %763 = sext i32 %762 to i64
  %764 = load i64, i64* %_b24, align 8
  %765 = icmp sgt i64 %763, %764
  br i1 %765, label %766, label %769

; <label>:766                                     ; preds = %746
  %767 = load i32, i32* %_a23, align 4
  %768 = sext i32 %767 to i64
  br label %771

; <label>:769                                     ; preds = %746
  %770 = load i64, i64* %_b24, align 8
  br label %771

; <label>:771                                     ; preds = %769, %766
  %772 = phi i64 [ %768, %766 ], [ %770, %769 ]
  store i64 %772, i64* %26, align 8
  %773 = load i64, i64* %26, align 8
  %774 = load i64, i64* %j, align 8
  %775 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntries, align 8
  %776 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %775, i64 %774
  %777 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %776, i32 0, i32 1
  store i64 %773, i64* %777, align 8
  %778 = load i64, i64* %i, align 8
  store i64 %778, i64* %j, align 8
  br label %779

; <label>:779                                     ; preds = %771, %739
  br label %780

; <label>:780                                     ; preds = %779
  %781 = load i64, i64* %i, align 8
  %782 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntries, align 8
  %783 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %782, i64 %781
  %784 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %783, i32 0, i32 1
  %785 = load i64, i64* %784, align 8
  %786 = load i64, i64* %i, align 8
  %787 = add nsw i64 %786, %785
  store i64 %787, i64* %i, align 8
  br label %735

; <label>:788                                     ; preds = %735
  %789 = load i64, i64* %i, align 8
  %790 = load i64, i64* %j, align 8
  %791 = sub nsw i64 %789, %790
  %792 = load i64, i64* %j, align 8
  %793 = load %struct.endInfoEntry*, %struct.endInfoEntry** %endInfoEntries, align 8
  %794 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %793, i64 %792
  %795 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %794, i32 0, i32 1
  store i64 %791, i64* %795, align 8
  br label %796

; <label>:796                                     ; preds = %788, %687
  br label %797

; <label>:797                                     ; preds = %796, %684
  call void (...) @thread_barrier_wait()
  br label %798

; <label>:798                                     ; preds = %797
  call void @workEnd(i32 0, i32 0)
  br label %799

; <label>:799                                     ; preds = %798
  br label %800

; <label>:800                                     ; preds = %799
  %801 = load i64, i64* %substringLength, align 8
  %802 = add nsw i64 %801, -1
  store i64 %802, i64* %substringLength, align 8
  br label %448

; <label>:803                                     ; preds = %448
  call void (...) @thread_barrier_wait()
  %804 = load i64, i64* %threadId, align 8
  %805 = icmp eq i64 %804, 0
  br i1 %805, label %806, label %929

; <label>:806                                     ; preds = %803
  store i64 0, i64* %totalLength, align 8
  store i64 0, i64* %i, align 8
  br label %807

; <label>:807                                     ; preds = %826, %806
  %808 = load i64, i64* %i, align 8
  %809 = load i64, i64* %numUniqueSegment, align 8
  %810 = icmp slt i64 %808, %809
  br i1 %810, label %811, label %829

; <label>:811                                     ; preds = %807
  %812 = load i64, i64* %i, align 8
  %813 = load %struct.constructEntry*, %struct.constructEntry** %constructEntries, align 8
  %814 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %813, i64 %812
  store %struct.constructEntry* %814, %struct.constructEntry** %constructEntryPtr25, align 8
  %815 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr25, align 8
  %816 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %815, i32 0, i32 0
  %817 = load i64, i64* %816, align 8
  %818 = icmp ne i64 %817, 0
  br i1 %818, label %819, label %825

; <label>:819                                     ; preds = %811
  %820 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr25, align 8
  %821 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %820, i32 0, i32 7
  %822 = load i64, i64* %821, align 8
  %823 = load i64, i64* %totalLength, align 8
  %824 = add nsw i64 %823, %822
  store i64 %824, i64* %totalLength, align 8
  br label %825

; <label>:825                                     ; preds = %819, %811
  br label %826

; <label>:826                                     ; preds = %825
  %827 = load i64, i64* %i, align 8
  %828 = add nsw i64 %827, 1
  store i64 %828, i64* %i, align 8
  br label %807

; <label>:829                                     ; preds = %807
  %830 = load i64, i64* %totalLength, align 8
  %831 = add nsw i64 %830, 1
  %832 = mul i64 %831, 1
  %833 = call noalias i8* @malloc(i64 %832) #6
  %834 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %835 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %834, i32 0, i32 0
  store i8* %833, i8** %835, align 8
  %836 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %837 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %836, i32 0, i32 0
  %838 = load i8*, i8** %837, align 8
  store i8* %838, i8** %sequence, align 8
  %839 = load i8*, i8** %sequence, align 8
  %840 = icmp ne i8* %839, null
  br i1 %840, label %841, label %842

; <label>:841                                     ; preds = %829
  br label %844

; <label>:842                                     ; preds = %829
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 593, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %844

; <label>:844                                     ; preds = %843, %841
  %845 = load i8*, i8** %sequence, align 8
  store i8* %845, i8** %copyPtr, align 8
  store i64 0, i64* %sequenceLength, align 8
  store i64 0, i64* %i, align 8
  br label %846

; <label>:846                                     ; preds = %916, %844
  %847 = load i64, i64* %i, align 8
  %848 = load i64, i64* %numUniqueSegment, align 8
  %849 = icmp slt i64 %847, %848
  br i1 %849, label %850, label %919

; <label>:850                                     ; preds = %846
  %851 = load i64, i64* %i, align 8
  %852 = load %struct.constructEntry*, %struct.constructEntry** %constructEntries, align 8
  %853 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %852, i64 %851
  store %struct.constructEntry* %853, %struct.constructEntry** %constructEntryPtr26, align 8
  %854 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr26, align 8
  %855 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %854, i32 0, i32 0
  %856 = load i64, i64* %855, align 8
  %857 = icmp ne i64 %856, 0
  br i1 %857, label %858, label %915

; <label>:858                                     ; preds = %850
  %859 = load i64, i64* %sequenceLength, align 8
  %860 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr26, align 8
  %861 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %860, i32 0, i32 7
  %862 = load i64, i64* %861, align 8
  %863 = add nsw i64 %859, %862
  store i64 %863, i64* %newSequenceLength, align 8
  %864 = load i64, i64* %newSequenceLength, align 8
  %865 = load i64, i64* %totalLength, align 8
  %866 = icmp sle i64 %864, %865
  br i1 %866, label %867, label %868

; <label>:867                                     ; preds = %858
  br label %870

; <label>:868                                     ; preds = %858
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 603, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %870

; <label>:870                                     ; preds = %869, %867
  %871 = load i8*, i8** %sequence, align 8
  %872 = load i64, i64* %sequenceLength, align 8
  %873 = getelementptr inbounds i8, i8* %871, i64 %872
  store i8* %873, i8** %copyPtr, align 8
  %874 = load i64, i64* %newSequenceLength, align 8
  store i64 %874, i64* %sequenceLength, align 8
  br label %875

; <label>:875                                     ; preds = %900, %870
  %876 = load i64, i64* %segmentLength, align 8
  %877 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr26, align 8
  %878 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %877, i32 0, i32 6
  %879 = load i64, i64* %878, align 8
  %880 = sub nsw i64 %876, %879
  store i64 %880, i64* %numChar, align 8
  %881 = load i8*, i8** %copyPtr, align 8
  %882 = load i64, i64* %numChar, align 8
  %883 = getelementptr inbounds i8, i8* %881, i64 %882
  %884 = load i8*, i8** %sequence, align 8
  %885 = load i64, i64* %newSequenceLength, align 8
  %886 = getelementptr inbounds i8, i8* %884, i64 %885
  %887 = icmp ugt i8* %883, %886
  br i1 %887, label %888, label %890

; <label>:888                                     ; preds = %875
  %889 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0))
  br label %905

; <label>:890                                     ; preds = %875
  %891 = load i8*, i8** %copyPtr, align 8
  %892 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr26, align 8
  %893 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %892, i32 0, i32 1
  %894 = load i8*, i8** %893, align 8
  %895 = load i64, i64* %numChar, align 8
  %896 = mul i64 %895, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %891, i8* %894, i64 %896, i32 1, i1 false)
  %897 = load i64, i64* %numChar, align 8
  %898 = load i8*, i8** %copyPtr, align 8
  %899 = getelementptr inbounds i8, i8* %898, i64 %897
  store i8* %899, i8** %copyPtr, align 8
  br label %900

; <label>:900                                     ; preds = %890
  %901 = load %struct.constructEntry*, %struct.constructEntry** %constructEntryPtr26, align 8
  %902 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %901, i32 0, i32 4
  %903 = load %struct.constructEntry*, %struct.constructEntry** %902, align 8
  store %struct.constructEntry* %903, %struct.constructEntry** %constructEntryPtr26, align 8
  %904 = icmp ne %struct.constructEntry* %903, null
  br i1 %904, label %875, label %905

; <label>:905                                     ; preds = %900, %888
  %906 = load i8*, i8** %copyPtr, align 8
  %907 = load i8*, i8** %sequence, align 8
  %908 = load i64, i64* %sequenceLength, align 8
  %909 = getelementptr inbounds i8, i8* %907, i64 %908
  %910 = icmp ule i8* %906, %909
  br i1 %910, label %911, label %912

; <label>:911                                     ; preds = %905
  br label %914

; <label>:912                                     ; preds = %905
  call void @__assert_fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 617, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %914

; <label>:914                                     ; preds = %913, %911
  br label %915

; <label>:915                                     ; preds = %914, %850
  br label %916

; <label>:916                                     ; preds = %915
  %917 = load i64, i64* %i, align 8
  %918 = add nsw i64 %917, 1
  store i64 %918, i64* %i, align 8
  br label %846

; <label>:919                                     ; preds = %846
  %920 = load i8*, i8** %sequence, align 8
  %921 = icmp ne i8* %920, null
  br i1 %921, label %922, label %923

; <label>:922                                     ; preds = %919
  br label %925

; <label>:923                                     ; preds = %919
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 621, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %925

; <label>:925                                     ; preds = %924, %922
  %926 = load i64, i64* %sequenceLength, align 8
  %927 = load i8*, i8** %sequence, align 8
  %928 = getelementptr inbounds i8, i8* %927, i64 %926
  store i8 0, i8* %928, align 1
  br label %929

; <label>:929                                     ; preds = %925, %803
  br label %930

; <label>:930                                     ; preds = %929
  %931 = call i64 (...) @thread_getId()
  %932 = trunc i64 %931 to i32
  %933 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %934 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %933, i32 0, i32 4
  %935 = load i32, i32* %934, align 4
  call void @SimRoiEnd(i32 %932, i32 %935)
  br label %936

; <label>:936                                     ; preds = %930
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
