; ModuleID = 'cutClusters.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._tm_thread_context_t = type { i32, i32, %struct.simple_metadata*, i32, i32, [44 x i8] }
%struct.simple_metadata = type opaque
%struct.edge = type { i64, i64, i64 }
%struct.graph = type { i64, i64, i64, i64, i64, i64, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i8* }

@thread_contexts = external global %struct._tm_thread_context_t*, align 8
@.str = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"cutClusters.c\00", align 1
@__PRETTY_FUNCTION__.cutClusters = private unnamed_addr constant [25 x i8] c"void cutClusters(void *)\00", align 1
@global_Index = internal global i64* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"neighbourArray\00", align 1
@global_neighbourArray = internal global i64* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"IndexSorted\00", align 1
@global_IndexSorted = internal global i64* null, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"neighbourArraySorted\00", align 1
@global_neighbourArraySorted = internal global i64* null, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"vStatus\00", align 1
@global_vStatus = internal global i64* null, align 8
@SCALE = external global i64, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"pCutSet\00", align 1
@global_pCutSet = internal global %struct.edge* null, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"startV\00", align 1
@global_startV = internal global i64* null, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"clusterSize\00", align 1
@global_clusterSize = internal global i64* null, align 8
@MAX_CLUSTER_SIZE = external global i64, align 8
@global_cliqueSize = internal global i64 0, align 8
@global_iter = internal global i64 0, align 8
@.str.9 = private unnamed_addr constant [17 x i8] c"edgeStartCounter\00", align 1
@global_edgeStartCounter = internal global i64* null, align 8
@.str.10 = private unnamed_addr constant [15 x i8] c"edgeEndCounter\00", align 1
@global_edgeEndCounter = internal global i64* null, align 8
@global_cutSetIndex = internal global i64 0, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"cutSet\00", align 1
@global_cutSet = internal global %struct.edge* null, align 8

; Function Attrs: nounwind uwtable
define void @cutClusters(i8* %argPtr) #0 {
  %1 = alloca i64, align 8
  %handler.i25 = alloca i64, align 8
  %ret.i26 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %handler.i = alloca i64, align 8
  %ret.i = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %_tm_thread_context = alloca %struct._tm_thread_context_t*, align 8
  %GPtr = alloca %struct.graph*, align 8
  %myId = alloca i64, align 8
  %numThread = alloca i64, align 8
  %Index = alloca i64*, align 8
  %neighbourArray = alloca i64*, align 8
  %IndexSorted = alloca i64*, align 8
  %neighbourArraySorted = alloca i64*, align 8
  %numByte = alloca i64, align 8
  %i = alloca i64, align 8
  %i_start = alloca i64, align 8
  %i_stop = alloca i64, align 8
  %vStatus = alloca i64*, align 8
  %pCutSet = alloca %struct.edge*, align 8
  %startV = alloca i64*, align 8
  %clusterSize = alloca i64*, align 8
  %verticesVisited = alloca i64, align 8
  %iter = alloca i64, align 8
  %currIndex = alloca i64, align 8
  %cutSetIndex = alloca i64, align 8
  %t = alloca i64, align 8
  %r = alloca i64, align 8
  %j = alloca i64, align 8
  %outVertexListIndex = alloca i64, align 8
  %vStatusIndex = alloca i64, align 8
  %inVertexIndex = alloca i64, align 8
  %vStatusIndex1 = alloca i64, align 8
  %cliqueSize = alloca i64, align 8
  %j2 = alloca i64, align 8
  %clusterCounter = alloca i64, align 8
  %cutSetIndexPrev = alloca i64, align 8
  %cutSetCounter = alloca i64, align 8
  %v = alloca i64, align 8
  %k = alloca i64, align 8
  %outVertexListIndex3 = alloca i64, align 8
  %vStatusIndex4 = alloca i64, align 8
  %inVertexListIndex = alloca i64, align 8
  %vStatusIndex5 = alloca i64, align 8
  %clusterCounter6 = alloca i64, align 8
  %cutSetIndexPrev7 = alloca i64, align 8
  %cutSetCounter8 = alloca i64, align 8
  %v9 = alloca i64, align 8
  %k10 = alloca i64, align 8
  %outVertexListIndex11 = alloca i64, align 8
  %vStatusIndex12 = alloca i64, align 8
  %inVertexListIndex13 = alloca i64, align 8
  %vStatusIndex14 = alloca i64, align 8
  %j15 = alloca i64, align 8
  %outVertexListIndex16 = alloca i64, align 8
  %vStatusIndex17 = alloca i64, align 8
  %inVertexListIndex18 = alloca i64, align 8
  %vStatusIndex19 = alloca i64, align 8
  %__status = alloca i32, align 4
  %tries = alloca i32, align 4
  %tmp_cliqueSize = alloca i64, align 8
  %8 = alloca i64, align 8
  %edgeStartCounter = alloca i64*, align 8
  %edgeEndCounter = alloca i64*, align 8
  %t20 = alloca i64, align 8
  %__status21 = alloca i32, align 4
  %tries22 = alloca i32, align 4
  %tmp_cutSetIndex = alloca i64, align 8
  %9 = alloca i64, align 8
  %cutSetCounter23 = alloca i64, align 8
  %cutSet = alloca %struct.edge*, align 8
  %j24 = alloca i64, align 8
  store i8* %argPtr, i8** %7, align 8
  %10 = call i64 (...) @thread_getId()
  %11 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %12 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %11, i64 %10
  store %struct._tm_thread_context_t* %12, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  br label %13

; <label>:13                                      ; preds = %0
  %14 = call i64 (...) @thread_getId()
  %15 = trunc i64 %14 to i32
  call void @SimRoiStart(i32 %15)
  br label %16

; <label>:16                                      ; preds = %13
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.graph*
  store %struct.graph* %18, %struct.graph** %GPtr, align 8
  %19 = call i64 (...) @thread_getId()
  store i64 %19, i64* %myId, align 8
  %20 = call i64 (...) @thread_getNumThread()
  store i64 %20, i64* %numThread, align 8
  %21 = load i64, i64* %myId, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %68

; <label>:23                                      ; preds = %16
  %24 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %25 = getelementptr inbounds %struct.graph, %struct.graph* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = mul i64 %26, 8
  store i64 %27, i64* %numByte, align 8
  %28 = load i64, i64* %numByte, align 8
  %29 = call noalias i8* @malloc(i64 %28) #4
  %30 = bitcast i8* %29 to i64*
  store i64* %30, i64** %Index, align 8
  %31 = load i64*, i64** %Index, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %23
  br label %36

; <label>:34                                      ; preds = %23
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 121, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %36

; <label>:36                                      ; preds = %35, %33
  %37 = load i64*, i64** %Index, align 8
  store i64* %37, i64** @global_Index, align 8
  %38 = load i64, i64* %numByte, align 8
  %39 = call noalias i8* @malloc(i64 %38) #4
  %40 = bitcast i8* %39 to i64*
  store i64* %40, i64** %neighbourArray, align 8
  %41 = load i64*, i64** %neighbourArray, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %44

; <label>:43                                      ; preds = %36
  br label %46

; <label>:44                                      ; preds = %36
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 124, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %46

; <label>:46                                      ; preds = %45, %43
  %47 = load i64*, i64** %neighbourArray, align 8
  store i64* %47, i64** @global_neighbourArray, align 8
  %48 = load i64, i64* %numByte, align 8
  %49 = call noalias i8* @malloc(i64 %48) #4
  %50 = bitcast i8* %49 to i64*
  store i64* %50, i64** %IndexSorted, align 8
  %51 = load i64*, i64** %IndexSorted, align 8
  %52 = icmp ne i64* %51, null
  br i1 %52, label %53, label %54

; <label>:53                                      ; preds = %46
  br label %56

; <label>:54                                      ; preds = %46
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 127, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %56

; <label>:56                                      ; preds = %55, %53
  %57 = load i64*, i64** %IndexSorted, align 8
  store i64* %57, i64** @global_IndexSorted, align 8
  %58 = load i64, i64* %numByte, align 8
  %59 = call noalias i8* @malloc(i64 %58) #4
  %60 = bitcast i8* %59 to i64*
  store i64* %60, i64** %neighbourArraySorted, align 8
  %61 = load i64*, i64** %neighbourArraySorted, align 8
  %62 = icmp ne i64* %61, null
  br i1 %62, label %63, label %64

; <label>:63                                      ; preds = %56
  br label %66

; <label>:64                                      ; preds = %56
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 130, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %66

; <label>:66                                      ; preds = %65, %63
  %67 = load i64*, i64** %neighbourArraySorted, align 8
  store i64* %67, i64** @global_neighbourArraySorted, align 8
  br label %68

; <label>:68                                      ; preds = %66, %16
  call void (...) @thread_barrier_wait()
  %69 = load i64*, i64** @global_Index, align 8
  store i64* %69, i64** %Index, align 8
  %70 = load i64*, i64** @global_neighbourArray, align 8
  store i64* %70, i64** %neighbourArray, align 8
  %71 = load i64*, i64** @global_IndexSorted, align 8
  store i64* %71, i64** %IndexSorted, align 8
  %72 = load i64*, i64** @global_neighbourArraySorted, align 8
  store i64* %72, i64** %neighbourArraySorted, align 8
  %73 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %74 = getelementptr inbounds %struct.graph, %struct.graph* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %myId, align 8
  %77 = load i64, i64* %numThread, align 8
  call void @createPartition(i64 0, i64 %75, i64 %76, i64 %77, i64* %i_start, i64* %i_stop)
  %78 = load i64, i64* %i_start, align 8
  store i64 %78, i64* %i, align 8
  br label %79

; <label>:79                                      ; preds = %104, %68
  %80 = load i64, i64* %i, align 8
  %81 = load i64, i64* %i_stop, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %107

; <label>:83                                      ; preds = %79
  %84 = load i64, i64* %i, align 8
  %85 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %86 = getelementptr inbounds %struct.graph, %struct.graph* %85, i32 0, i32 10
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 %84
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %i, align 8
  %91 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %92 = getelementptr inbounds %struct.graph, %struct.graph* %91, i32 0, i32 6
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 %90
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %89, %95
  %97 = load i64, i64* %i, align 8
  %98 = load i64*, i64** %neighbourArray, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 %97
  store i64 %96, i64* %99, align 8
  %100 = load i64, i64* %i, align 8
  %101 = load i64, i64* %i, align 8
  %102 = load i64*, i64** %Index, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 %101
  store i64 %100, i64* %103, align 8
  br label %104

; <label>:104                                     ; preds = %83
  %105 = load i64, i64* %i, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %i, align 8
  br label %79

; <label>:107                                     ; preds = %79
  call void (...) @thread_barrier_wait()
  %108 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %109 = getelementptr inbounds %struct.graph, %struct.graph* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64*, i64** %neighbourArray, align 8
  %112 = load i64*, i64** %neighbourArraySorted, align 8
  %113 = load i64*, i64** %Index, align 8
  %114 = load i64*, i64** %IndexSorted, align 8
  call void @all_radixsort_node_aux_s3(i64 %110, i64* %111, i64* %112, i64* %113, i64* %114)
  call void (...) @thread_barrier_wait()
  %115 = load i64, i64* %myId, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %190

; <label>:117                                     ; preds = %107
  %118 = load i64*, i64** %Index, align 8
  %119 = bitcast i64* %118 to i8*
  call void @free(i8* %119) #4
  %120 = load i64*, i64** %neighbourArray, align 8
  %121 = bitcast i64* %120 to i8*
  call void @free(i8* %121) #4
  %122 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %123 = getelementptr inbounds %struct.graph, %struct.graph* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = mul i64 %124, 8
  %126 = call noalias i8* @malloc(i64 %125) #4
  %127 = bitcast i8* %126 to i64*
  store i64* %127, i64** %vStatus, align 8
  %128 = load i64*, i64** %vStatus, align 8
  %129 = icmp ne i64* %128, null
  br i1 %129, label %130, label %131

; <label>:130                                     ; preds = %117
  br label %133

; <label>:131                                     ; preds = %117
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 179, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %133

; <label>:133                                     ; preds = %132, %130
  %134 = load i64*, i64** %vStatus, align 8
  store i64* %134, i64** @global_vStatus, align 8
  %135 = load i64, i64* @SCALE, align 8
  %136 = icmp slt i64 %135, 12
  br i1 %136, label %137, label %147

; <label>:137                                     ; preds = %133
  %138 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %139 = getelementptr inbounds %struct.graph, %struct.graph* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = mul i64 1, %140
  %142 = load i64, i64* %numThread, align 8
  %143 = udiv i64 %141, %142
  %144 = mul i64 %143, 24
  %145 = call noalias i8* @malloc(i64 %144) #4
  %146 = bitcast i8* %145 to %struct.edge*
  store %struct.edge* %146, %struct.edge** %pCutSet, align 8
  br label %160

; <label>:147                                     ; preds = %133
  %148 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %149 = getelementptr inbounds %struct.graph, %struct.graph* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = uitofp i64 %150 to double
  %152 = fmul double 2.000000e-01, %151
  %153 = load i64, i64* %numThread, align 8
  %154 = sitofp i64 %153 to double
  %155 = fdiv double %152, %154
  %156 = fmul double %155, 2.400000e+01
  %157 = fptoui double %156 to i64
  %158 = call noalias i8* @malloc(i64 %157) #4
  %159 = bitcast i8* %158 to %struct.edge*
  store %struct.edge* %159, %struct.edge** %pCutSet, align 8
  br label %160

; <label>:160                                     ; preds = %147, %137
  %161 = load %struct.edge*, %struct.edge** %pCutSet, align 8
  %162 = icmp ne %struct.edge* %161, null
  br i1 %162, label %163, label %164

; <label>:163                                     ; preds = %160
  br label %166

; <label>:164                                     ; preds = %160
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 194, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %166

; <label>:166                                     ; preds = %165, %163
  %167 = load %struct.edge*, %struct.edge** %pCutSet, align 8
  store %struct.edge* %167, %struct.edge** @global_pCutSet, align 8
  %168 = load i64, i64* %numThread, align 8
  %169 = mul i64 %168, 8
  %170 = call noalias i8* @malloc(i64 %169) #4
  %171 = bitcast i8* %170 to i64*
  store i64* %171, i64** %startV, align 8
  %172 = load i64*, i64** %startV, align 8
  %173 = icmp ne i64* %172, null
  br i1 %173, label %174, label %175

; <label>:174                                     ; preds = %166
  br label %177

; <label>:175                                     ; preds = %166
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 201, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %177

; <label>:177                                     ; preds = %176, %174
  %178 = load i64*, i64** %startV, align 8
  store i64* %178, i64** @global_startV, align 8
  %179 = load i64, i64* %numThread, align 8
  %180 = mul i64 %179, 8
  %181 = call noalias i8* @malloc(i64 %180) #4
  %182 = bitcast i8* %181 to i64*
  store i64* %182, i64** %clusterSize, align 8
  %183 = load i64*, i64** %clusterSize, align 8
  %184 = icmp ne i64* %183, null
  br i1 %184, label %185, label %186

; <label>:185                                     ; preds = %177
  br label %188

; <label>:186                                     ; preds = %177
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 204, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %188

; <label>:188                                     ; preds = %187, %185
  %189 = load i64*, i64** %clusterSize, align 8
  store i64* %189, i64** @global_clusterSize, align 8
  br label %190

; <label>:190                                     ; preds = %188, %107
  call void (...) @thread_barrier_wait()
  %191 = load i64*, i64** @global_vStatus, align 8
  store i64* %191, i64** %vStatus, align 8
  %192 = load %struct.edge*, %struct.edge** @global_pCutSet, align 8
  store %struct.edge* %192, %struct.edge** %pCutSet, align 8
  %193 = load i64*, i64** @global_startV, align 8
  store i64* %193, i64** %startV, align 8
  %194 = load i64*, i64** @global_clusterSize, align 8
  store i64* %194, i64** %clusterSize, align 8
  %195 = load i64, i64* %i_start, align 8
  store i64 %195, i64* %i, align 8
  br label %196

; <label>:196                                     ; preds = %204, %190
  %197 = load i64, i64* %i, align 8
  %198 = load i64, i64* %i_stop, align 8
  %199 = icmp slt i64 %197, %198
  br i1 %199, label %200, label %207

; <label>:200                                     ; preds = %196
  %201 = load i64, i64* %i, align 8
  %202 = load i64*, i64** %vStatus, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 %201
  store i64 -1, i64* %203, align 8
  br label %204

; <label>:204                                     ; preds = %200
  %205 = load i64, i64* %i, align 8
  %206 = add nsw i64 %205, 1
  store i64 %206, i64* %i, align 8
  br label %196

; <label>:207                                     ; preds = %196
  call void (...) @thread_barrier_wait()
  store i64 0, i64* %verticesVisited, align 8
  store i64 0, i64* %iter, align 8
  store i64 0, i64* %currIndex, align 8
  store i64 0, i64* %cutSetIndex, align 8
  br label %208

; <label>:208                                     ; preds = %1114, %207
  %209 = load i64, i64* %verticesVisited, align 8
  %210 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %211 = getelementptr inbounds %struct.graph, %struct.graph* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp ult i64 %209, %212
  br i1 %213, label %214, label %1115

; <label>:214                                     ; preds = %208
  %215 = load i64, i64* %myId, align 8
  %216 = load i64*, i64** %startV, align 8
  %217 = getelementptr inbounds i64, i64* %216, i64 %215
  store i64 -1, i64* %217, align 8
  %218 = load i64, i64* %myId, align 8
  %219 = load i64*, i64** %clusterSize, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 %218
  store i64 0, i64* %220, align 8
  %221 = load i64, i64* %currIndex, align 8
  %222 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %223 = getelementptr inbounds %struct.graph, %struct.graph* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = icmp eq i64 %221, %224
  br i1 %225, label %226, label %227

; <label>:226                                     ; preds = %214
  store i64 0, i64* %currIndex, align 8
  br label %227

; <label>:227                                     ; preds = %226, %214
  call void (...) @thread_barrier_wait()
  %228 = load i64, i64* %myId, align 8
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %400

; <label>:230                                     ; preds = %227
  store i64 0, i64* %t, align 8
  br label %231

; <label>:231                                     ; preds = %396, %230
  %232 = load i64, i64* %t, align 8
  %233 = load i64, i64* %numThread, align 8
  %234 = icmp slt i64 %232, %233
  br i1 %234, label %235, label %399

; <label>:235                                     ; preds = %231
  %236 = load i64, i64* %currIndex, align 8
  store i64 %236, i64* %r, align 8
  br label %237

; <label>:237                                     ; preds = %392, %235
  %238 = load i64, i64* %r, align 8
  %239 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %240 = getelementptr inbounds %struct.graph, %struct.graph* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp ult i64 %238, %241
  br i1 %242, label %243, label %395

; <label>:243                                     ; preds = %237
  %244 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %245 = getelementptr inbounds %struct.graph, %struct.graph* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* %r, align 8
  %248 = sub i64 %246, %247
  %249 = sub i64 %248, 1
  %250 = load i64*, i64** %IndexSorted, align 8
  %251 = getelementptr inbounds i64, i64* %250, i64 %249
  %252 = load i64, i64* %251, align 8
  %253 = load i64*, i64** %vStatus, align 8
  %254 = getelementptr inbounds i64, i64* %253, i64 %252
  %255 = load i64, i64* %254, align 8
  %256 = icmp eq i64 %255, -1
  br i1 %256, label %257, label %391

; <label>:257                                     ; preds = %243
  %258 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %259 = getelementptr inbounds %struct.graph, %struct.graph* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* %r, align 8
  %262 = sub i64 %260, %261
  %263 = sub i64 %262, 1
  %264 = load i64*, i64** %IndexSorted, align 8
  %265 = getelementptr inbounds i64, i64* %264, i64 %263
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* %t, align 8
  %268 = load i64*, i64** %startV, align 8
  %269 = getelementptr inbounds i64, i64* %268, i64 %267
  store i64 %266, i64* %269, align 8
  %270 = load i64, i64* %iter, align 8
  %271 = load i64, i64* %numThread, align 8
  %272 = mul nsw i64 %270, %271
  %273 = load i64, i64* %t, align 8
  %274 = add nsw i64 %272, %273
  %275 = load i64, i64* %t, align 8
  %276 = load i64*, i64** %startV, align 8
  %277 = getelementptr inbounds i64, i64* %276, i64 %275
  %278 = load i64, i64* %277, align 8
  %279 = load i64*, i64** %vStatus, align 8
  %280 = getelementptr inbounds i64, i64* %279, i64 %278
  store i64 %274, i64* %280, align 8
  store i64 0, i64* %j, align 8
  br label %281

; <label>:281                                     ; preds = %331, %257
  %282 = load i64, i64* %j, align 8
  %283 = load i64, i64* %t, align 8
  %284 = load i64*, i64** %startV, align 8
  %285 = getelementptr inbounds i64, i64* %284, i64 %283
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %288 = getelementptr inbounds %struct.graph, %struct.graph* %287, i32 0, i32 6
  %289 = load i64*, i64** %288, align 8
  %290 = getelementptr inbounds i64, i64* %289, i64 %286
  %291 = load i64, i64* %290, align 8
  %292 = icmp slt i64 %282, %291
  br i1 %292, label %293, label %334

; <label>:293                                     ; preds = %281
  %294 = load i64, i64* %j, align 8
  %295 = load i64, i64* %t, align 8
  %296 = load i64*, i64** %startV, align 8
  %297 = getelementptr inbounds i64, i64* %296, i64 %295
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %300 = getelementptr inbounds %struct.graph, %struct.graph* %299, i32 0, i32 7
  %301 = load i64*, i64** %300, align 8
  %302 = getelementptr inbounds i64, i64* %301, i64 %298
  %303 = load i64, i64* %302, align 8
  %304 = add i64 %294, %303
  store i64 %304, i64* %outVertexListIndex, align 8
  %305 = load i64, i64* %outVertexListIndex, align 8
  %306 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %307 = getelementptr inbounds %struct.graph, %struct.graph* %306, i32 0, i32 8
  %308 = load i64*, i64** %307, align 8
  %309 = getelementptr inbounds i64, i64* %308, i64 %305
  %310 = load i64, i64* %309, align 8
  store i64 %310, i64* %vStatusIndex, align 8
  %311 = load i64, i64* %vStatusIndex, align 8
  %312 = load i64*, i64** %vStatus, align 8
  %313 = getelementptr inbounds i64, i64* %312, i64 %311
  %314 = load i64, i64* %313, align 8
  %315 = icmp eq i64 %314, -1
  br i1 %315, label %316, label %330

; <label>:316                                     ; preds = %293
  %317 = load i64, i64* %iter, align 8
  %318 = load i64, i64* %numThread, align 8
  %319 = mul nsw i64 %317, %318
  %320 = load i64, i64* %t, align 8
  %321 = add nsw i64 %319, %320
  %322 = load i64, i64* %vStatusIndex, align 8
  %323 = load i64*, i64** %vStatus, align 8
  %324 = getelementptr inbounds i64, i64* %323, i64 %322
  store i64 %321, i64* %324, align 8
  %325 = load i64, i64* %t, align 8
  %326 = load i64*, i64** %clusterSize, align 8
  %327 = getelementptr inbounds i64, i64* %326, i64 %325
  %328 = load i64, i64* %327, align 8
  %329 = add i64 %328, 1
  store i64 %329, i64* %327, align 8
  br label %330

; <label>:330                                     ; preds = %316, %293
  br label %331

; <label>:331                                     ; preds = %330
  %332 = load i64, i64* %j, align 8
  %333 = add nsw i64 %332, 1
  store i64 %333, i64* %j, align 8
  br label %281

; <label>:334                                     ; preds = %281
  store i64 0, i64* %j, align 8
  br label %335

; <label>:335                                     ; preds = %385, %334
  %336 = load i64, i64* %j, align 8
  %337 = load i64, i64* %t, align 8
  %338 = load i64*, i64** %startV, align 8
  %339 = getelementptr inbounds i64, i64* %338, i64 %337
  %340 = load i64, i64* %339, align 8
  %341 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %342 = getelementptr inbounds %struct.graph, %struct.graph* %341, i32 0, i32 10
  %343 = load i64*, i64** %342, align 8
  %344 = getelementptr inbounds i64, i64* %343, i64 %340
  %345 = load i64, i64* %344, align 8
  %346 = icmp slt i64 %336, %345
  br i1 %346, label %347, label %388

; <label>:347                                     ; preds = %335
  %348 = load i64, i64* %j, align 8
  %349 = load i64, i64* %t, align 8
  %350 = load i64*, i64** %startV, align 8
  %351 = getelementptr inbounds i64, i64* %350, i64 %349
  %352 = load i64, i64* %351, align 8
  %353 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %354 = getelementptr inbounds %struct.graph, %struct.graph* %353, i32 0, i32 11
  %355 = load i64*, i64** %354, align 8
  %356 = getelementptr inbounds i64, i64* %355, i64 %352
  %357 = load i64, i64* %356, align 8
  %358 = add i64 %348, %357
  store i64 %358, i64* %inVertexIndex, align 8
  %359 = load i64, i64* %inVertexIndex, align 8
  %360 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %361 = getelementptr inbounds %struct.graph, %struct.graph* %360, i32 0, i32 12
  %362 = load i64*, i64** %361, align 8
  %363 = getelementptr inbounds i64, i64* %362, i64 %359
  %364 = load i64, i64* %363, align 8
  store i64 %364, i64* %vStatusIndex1, align 8
  %365 = load i64, i64* %vStatusIndex1, align 8
  %366 = load i64*, i64** %vStatus, align 8
  %367 = getelementptr inbounds i64, i64* %366, i64 %365
  %368 = load i64, i64* %367, align 8
  %369 = icmp eq i64 %368, -1
  br i1 %369, label %370, label %384

; <label>:370                                     ; preds = %347
  %371 = load i64, i64* %iter, align 8
  %372 = load i64, i64* %numThread, align 8
  %373 = mul nsw i64 %371, %372
  %374 = load i64, i64* %t, align 8
  %375 = add nsw i64 %373, %374
  %376 = load i64, i64* %vStatusIndex1, align 8
  %377 = load i64*, i64** %vStatus, align 8
  %378 = getelementptr inbounds i64, i64* %377, i64 %376
  store i64 %375, i64* %378, align 8
  %379 = load i64, i64* %t, align 8
  %380 = load i64*, i64** %clusterSize, align 8
  %381 = getelementptr inbounds i64, i64* %380, i64 %379
  %382 = load i64, i64* %381, align 8
  %383 = add i64 %382, 1
  store i64 %383, i64* %381, align 8
  br label %384

; <label>:384                                     ; preds = %370, %347
  br label %385

; <label>:385                                     ; preds = %384
  %386 = load i64, i64* %j, align 8
  %387 = add nsw i64 %386, 1
  store i64 %387, i64* %j, align 8
  br label %335

; <label>:388                                     ; preds = %335
  %389 = load i64, i64* %r, align 8
  %390 = add nsw i64 %389, 1
  store i64 %390, i64* %currIndex, align 8
  br label %395

; <label>:391                                     ; preds = %243
  br label %392

; <label>:392                                     ; preds = %391
  %393 = load i64, i64* %r, align 8
  %394 = add nsw i64 %393, 1
  store i64 %394, i64* %r, align 8
  br label %237

; <label>:395                                     ; preds = %388, %237
  br label %396

; <label>:396                                     ; preds = %395
  %397 = load i64, i64* %t, align 8
  %398 = add nsw i64 %397, 1
  store i64 %398, i64* %t, align 8
  br label %231

; <label>:399                                     ; preds = %231
  br label %400

; <label>:400                                     ; preds = %399, %227
  call void (...) @thread_barrier_wait()
  %401 = load i64, i64* %myId, align 8
  %402 = load i64*, i64** %startV, align 8
  %403 = getelementptr inbounds i64, i64* %402, i64 %401
  %404 = load i64, i64* %403, align 8
  store i64 %404, i64* %i, align 8
  store i64 0, i64* %cliqueSize, align 8
  %405 = load i64, i64* %i, align 8
  %406 = icmp ne i64 %405, -1
  br i1 %406, label %407, label %1041

; <label>:407                                     ; preds = %400
  store i64 1, i64* %cliqueSize, align 8
  %408 = load i64, i64* %myId, align 8
  %409 = load i64*, i64** %clusterSize, align 8
  %410 = getelementptr inbounds i64, i64* %409, i64 %408
  %411 = load i64, i64* %410, align 8
  %412 = uitofp i64 %411 to double
  %413 = load i64, i64* %i, align 8
  %414 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %415 = getelementptr inbounds %struct.graph, %struct.graph* %414, i32 0, i32 10
  %416 = load i64*, i64** %415, align 8
  %417 = getelementptr inbounds i64, i64* %416, i64 %413
  %418 = load i64, i64* %417, align 8
  %419 = load i64, i64* %i, align 8
  %420 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %421 = getelementptr inbounds %struct.graph, %struct.graph* %420, i32 0, i32 6
  %422 = load i64*, i64** %421, align 8
  %423 = getelementptr inbounds i64, i64* %422, i64 %419
  %424 = load i64, i64* %423, align 8
  %425 = add nsw i64 %418, %424
  %426 = sitofp i64 %425 to double
  %427 = fmul double 6.000000e-01, %426
  %428 = fcmp oge double %412, %427
  br i1 %428, label %445, label %429

; <label>:429                                     ; preds = %407
  %430 = load i64, i64* %iter, align 8
  %431 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %432 = getelementptr inbounds %struct.graph, %struct.graph* %431, i32 0, i32 0
  %433 = load i64, i64* %432, align 8
  %434 = load i64, i64* %numThread, align 8
  %435 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %436 = mul nsw i64 %434, %435
  %437 = udiv i64 %433, %436
  %438 = icmp ugt i64 %430, %437
  br i1 %438, label %439, label %910

; <label>:439                                     ; preds = %429
  %440 = load i64, i64* %myId, align 8
  %441 = load i64*, i64** %clusterSize, align 8
  %442 = getelementptr inbounds i64, i64* %441, i64 %440
  %443 = load i64, i64* %442, align 8
  %444 = icmp ugt i64 %443, 0
  br i1 %444, label %445, label %910

; <label>:445                                     ; preds = %439, %407
  store i64 0, i64* %j2, align 8
  br label %446

; <label>:446                                     ; preds = %674, %445
  %447 = load i64, i64* %j2, align 8
  %448 = load i64, i64* %i, align 8
  %449 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %450 = getelementptr inbounds %struct.graph, %struct.graph* %449, i32 0, i32 6
  %451 = load i64*, i64** %450, align 8
  %452 = getelementptr inbounds i64, i64* %451, i64 %448
  %453 = load i64, i64* %452, align 8
  %454 = icmp slt i64 %447, %453
  br i1 %454, label %455, label %677

; <label>:455                                     ; preds = %446
  store i64 0, i64* %clusterCounter, align 8
  %456 = load i64, i64* %cutSetIndex, align 8
  store i64 %456, i64* %cutSetIndexPrev, align 8
  store i64 0, i64* %cutSetCounter, align 8
  %457 = load i64, i64* %j2, align 8
  %458 = load i64, i64* %i, align 8
  %459 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %460 = getelementptr inbounds %struct.graph, %struct.graph* %459, i32 0, i32 7
  %461 = load i64*, i64** %460, align 8
  %462 = getelementptr inbounds i64, i64* %461, i64 %458
  %463 = load i64, i64* %462, align 8
  %464 = add i64 %457, %463
  %465 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %466 = getelementptr inbounds %struct.graph, %struct.graph* %465, i32 0, i32 8
  %467 = load i64*, i64** %466, align 8
  %468 = getelementptr inbounds i64, i64* %467, i64 %464
  %469 = load i64, i64* %468, align 8
  %470 = load i64*, i64** %vStatus, align 8
  %471 = getelementptr inbounds i64, i64* %470, i64 %469
  %472 = load i64, i64* %471, align 8
  %473 = load i64, i64* %iter, align 8
  %474 = load i64, i64* %numThread, align 8
  %475 = mul nsw i64 %473, %474
  %476 = load i64, i64* %myId, align 8
  %477 = add nsw i64 %475, %476
  %478 = icmp eq i64 %472, %477
  br i1 %478, label %479, label %673

; <label>:479                                     ; preds = %455
  %480 = load i64, i64* %j2, align 8
  %481 = load i64, i64* %i, align 8
  %482 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %483 = getelementptr inbounds %struct.graph, %struct.graph* %482, i32 0, i32 7
  %484 = load i64*, i64** %483, align 8
  %485 = getelementptr inbounds i64, i64* %484, i64 %481
  %486 = load i64, i64* %485, align 8
  %487 = add i64 %480, %486
  %488 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %489 = getelementptr inbounds %struct.graph, %struct.graph* %488, i32 0, i32 8
  %490 = load i64*, i64** %489, align 8
  %491 = getelementptr inbounds i64, i64* %490, i64 %487
  %492 = load i64, i64* %491, align 8
  store i64 %492, i64* %v, align 8
  store i64 0, i64* %k, align 8
  br label %493

; <label>:493                                     ; preds = %553, %479
  %494 = load i64, i64* %k, align 8
  %495 = load i64, i64* %v, align 8
  %496 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %497 = getelementptr inbounds %struct.graph, %struct.graph* %496, i32 0, i32 6
  %498 = load i64*, i64** %497, align 8
  %499 = getelementptr inbounds i64, i64* %498, i64 %495
  %500 = load i64, i64* %499, align 8
  %501 = icmp slt i64 %494, %500
  br i1 %501, label %502, label %556

; <label>:502                                     ; preds = %493
  %503 = load i64, i64* %k, align 8
  %504 = load i64, i64* %v, align 8
  %505 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %506 = getelementptr inbounds %struct.graph, %struct.graph* %505, i32 0, i32 7
  %507 = load i64*, i64** %506, align 8
  %508 = getelementptr inbounds i64, i64* %507, i64 %504
  %509 = load i64, i64* %508, align 8
  %510 = add i64 %503, %509
  store i64 %510, i64* %outVertexListIndex3, align 8
  %511 = load i64, i64* %outVertexListIndex3, align 8
  %512 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %513 = getelementptr inbounds %struct.graph, %struct.graph* %512, i32 0, i32 8
  %514 = load i64*, i64** %513, align 8
  %515 = getelementptr inbounds i64, i64* %514, i64 %511
  %516 = load i64, i64* %515, align 8
  store i64 %516, i64* %vStatusIndex4, align 8
  %517 = load i64, i64* %vStatusIndex4, align 8
  %518 = load i64*, i64** %vStatus, align 8
  %519 = getelementptr inbounds i64, i64* %518, i64 %517
  %520 = load i64, i64* %519, align 8
  %521 = load i64, i64* %iter, align 8
  %522 = load i64, i64* %numThread, align 8
  %523 = mul nsw i64 %521, %522
  %524 = load i64, i64* %myId, align 8
  %525 = add nsw i64 %523, %524
  %526 = icmp eq i64 %520, %525
  br i1 %526, label %527, label %530

; <label>:527                                     ; preds = %502
  %528 = load i64, i64* %clusterCounter, align 8
  %529 = add i64 %528, 1
  store i64 %529, i64* %clusterCounter, align 8
  br label %552

; <label>:530                                     ; preds = %502
  %531 = load i64, i64* %cutSetCounter, align 8
  %532 = add i64 %531, 1
  store i64 %532, i64* %cutSetCounter, align 8
  %533 = load i64, i64* %vStatusIndex4, align 8
  %534 = load i64*, i64** %vStatus, align 8
  %535 = getelementptr inbounds i64, i64* %534, i64 %533
  %536 = load i64, i64* %535, align 8
  %537 = icmp eq i64 %536, -1
  br i1 %537, label %538, label %551

; <label>:538                                     ; preds = %530
  %539 = load i64, i64* %v, align 8
  %540 = load i64, i64* %cutSetIndex, align 8
  %541 = load %struct.edge*, %struct.edge** %pCutSet, align 8
  %542 = getelementptr inbounds %struct.edge, %struct.edge* %541, i64 %540
  %543 = getelementptr inbounds %struct.edge, %struct.edge* %542, i32 0, i32 0
  store i64 %539, i64* %543, align 8
  %544 = load i64, i64* %vStatusIndex4, align 8
  %545 = load i64, i64* %cutSetIndex, align 8
  %546 = load %struct.edge*, %struct.edge** %pCutSet, align 8
  %547 = getelementptr inbounds %struct.edge, %struct.edge* %546, i64 %545
  %548 = getelementptr inbounds %struct.edge, %struct.edge* %547, i32 0, i32 1
  store i64 %544, i64* %548, align 8
  %549 = load i64, i64* %cutSetIndex, align 8
  %550 = add i64 %549, 1
  store i64 %550, i64* %cutSetIndex, align 8
  br label %551

; <label>:551                                     ; preds = %538, %530
  br label %552

; <label>:552                                     ; preds = %551, %527
  br label %553

; <label>:553                                     ; preds = %552
  %554 = load i64, i64* %k, align 8
  %555 = add nsw i64 %554, 1
  store i64 %555, i64* %k, align 8
  br label %493

; <label>:556                                     ; preds = %493
  %557 = load i64, i64* %cutSetCounter, align 8
  %558 = load i64, i64* %clusterCounter, align 8
  %559 = icmp uge i64 %557, %558
  br i1 %559, label %605, label %560

; <label>:560                                     ; preds = %556
  %561 = load i64, i64* @SCALE, align 8
  %562 = icmp slt i64 %561, 9
  br i1 %562, label %563, label %592

; <label>:563                                     ; preds = %560
  %564 = load i64, i64* %clusterCounter, align 8
  %565 = icmp ule i64 %564, 2
  br i1 %565, label %566, label %592

; <label>:566                                     ; preds = %563
  %567 = load i64, i64* %v, align 8
  %568 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %569 = getelementptr inbounds %struct.graph, %struct.graph* %568, i32 0, i32 10
  %570 = load i64*, i64** %569, align 8
  %571 = getelementptr inbounds i64, i64* %570, i64 %567
  %572 = load i64, i64* %571, align 8
  %573 = load i64, i64* %v, align 8
  %574 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %575 = getelementptr inbounds %struct.graph, %struct.graph* %574, i32 0, i32 6
  %576 = load i64*, i64** %575, align 8
  %577 = getelementptr inbounds i64, i64* %576, i64 %573
  %578 = load i64, i64* %577, align 8
  %579 = add nsw i64 %572, %578
  %580 = load i64, i64* %clusterCounter, align 8
  %581 = load i64, i64* %cutSetCounter, align 8
  %582 = add i64 %580, %581
  %583 = icmp ugt i64 %579, %582
  br i1 %583, label %584, label %592

; <label>:584                                     ; preds = %566
  %585 = load i64, i64* %myId, align 8
  %586 = load i64*, i64** %clusterSize, align 8
  %587 = getelementptr inbounds i64, i64* %586, i64 %585
  %588 = load i64, i64* %587, align 8
  %589 = load i64, i64* %clusterCounter, align 8
  %590 = add i64 %589, 2
  %591 = icmp ugt i64 %588, %590
  br i1 %591, label %605, label %592

; <label>:592                                     ; preds = %584, %566, %563, %560
  %593 = load i64, i64* @SCALE, align 8
  %594 = icmp sgt i64 %593, 9
  br i1 %594, label %595, label %622

; <label>:595                                     ; preds = %592
  %596 = load i64, i64* %clusterCounter, align 8
  %597 = uitofp i64 %596 to double
  %598 = load i64, i64* %myId, align 8
  %599 = load i64*, i64** %clusterSize, align 8
  %600 = getelementptr inbounds i64, i64* %599, i64 %598
  %601 = load i64, i64* %600, align 8
  %602 = uitofp i64 %601 to double
  %603 = fmul double 5.000000e-01, %602
  %604 = fcmp olt double %597, %603
  br i1 %604, label %605, label %622

; <label>:605                                     ; preds = %595, %584, %556
  %606 = load i64, i64* %v, align 8
  %607 = load i64*, i64** %vStatus, align 8
  %608 = getelementptr inbounds i64, i64* %607, i64 %606
  store i64 -1, i64* %608, align 8
  %609 = load i64, i64* %cutSetIndexPrev, align 8
  store i64 %609, i64* %cutSetIndex, align 8
  %610 = load i64, i64* %i, align 8
  %611 = load i64, i64* %cutSetIndex, align 8
  %612 = load %struct.edge*, %struct.edge** %pCutSet, align 8
  %613 = getelementptr inbounds %struct.edge, %struct.edge* %612, i64 %611
  %614 = getelementptr inbounds %struct.edge, %struct.edge* %613, i32 0, i32 0
  store i64 %610, i64* %614, align 8
  %615 = load i64, i64* %v, align 8
  %616 = load i64, i64* %cutSetIndex, align 8
  %617 = load %struct.edge*, %struct.edge** %pCutSet, align 8
  %618 = getelementptr inbounds %struct.edge, %struct.edge* %617, i64 %616
  %619 = getelementptr inbounds %struct.edge, %struct.edge* %618, i32 0, i32 1
  store i64 %615, i64* %619, align 8
  %620 = load i64, i64* %cutSetIndex, align 8
  %621 = add i64 %620, 1
  store i64 %621, i64* %cutSetIndex, align 8
  br label %672

; <label>:622                                     ; preds = %595, %592
  %623 = load i64, i64* %cliqueSize, align 8
  %624 = add i64 %623, 1
  store i64 %624, i64* %cliqueSize, align 8
  store i64 0, i64* %k, align 8
  br label %625

; <label>:625                                     ; preds = %668, %622
  %626 = load i64, i64* %k, align 8
  %627 = load i64, i64* %v, align 8
  %628 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %629 = getelementptr inbounds %struct.graph, %struct.graph* %628, i32 0, i32 10
  %630 = load i64*, i64** %629, align 8
  %631 = getelementptr inbounds i64, i64* %630, i64 %627
  %632 = load i64, i64* %631, align 8
  %633 = icmp slt i64 %626, %632
  br i1 %633, label %634, label %671

; <label>:634                                     ; preds = %625
  %635 = load i64, i64* %k, align 8
  %636 = load i64, i64* %v, align 8
  %637 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %638 = getelementptr inbounds %struct.graph, %struct.graph* %637, i32 0, i32 11
  %639 = load i64*, i64** %638, align 8
  %640 = getelementptr inbounds i64, i64* %639, i64 %636
  %641 = load i64, i64* %640, align 8
  %642 = add i64 %635, %641
  store i64 %642, i64* %inVertexListIndex, align 8
  %643 = load i64, i64* %inVertexListIndex, align 8
  %644 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %645 = getelementptr inbounds %struct.graph, %struct.graph* %644, i32 0, i32 12
  %646 = load i64*, i64** %645, align 8
  %647 = getelementptr inbounds i64, i64* %646, i64 %643
  %648 = load i64, i64* %647, align 8
  store i64 %648, i64* %vStatusIndex5, align 8
  %649 = load i64, i64* %vStatusIndex5, align 8
  %650 = load i64*, i64** %vStatus, align 8
  %651 = getelementptr inbounds i64, i64* %650, i64 %649
  %652 = load i64, i64* %651, align 8
  %653 = icmp eq i64 %652, -1
  br i1 %653, label %654, label %667

; <label>:654                                     ; preds = %634
  %655 = load i64, i64* %v, align 8
  %656 = load i64, i64* %cutSetIndex, align 8
  %657 = load %struct.edge*, %struct.edge** %pCutSet, align 8
  %658 = getelementptr inbounds %struct.edge, %struct.edge* %657, i64 %656
  %659 = getelementptr inbounds %struct.edge, %struct.edge* %658, i32 0, i32 0
  store i64 %655, i64* %659, align 8
  %660 = load i64, i64* %vStatusIndex5, align 8
  %661 = load i64, i64* %cutSetIndex, align 8
  %662 = load %struct.edge*, %struct.edge** %pCutSet, align 8
  %663 = getelementptr inbounds %struct.edge, %struct.edge* %662, i64 %661
  %664 = getelementptr inbounds %struct.edge, %struct.edge* %663, i32 0, i32 1
  store i64 %660, i64* %664, align 8
  %665 = load i64, i64* %cutSetIndex, align 8
  %666 = add i64 %665, 1
  store i64 %666, i64* %cutSetIndex, align 8
  br label %667

; <label>:667                                     ; preds = %654, %634
  br label %668

; <label>:668                                     ; preds = %667
  %669 = load i64, i64* %k, align 8
  %670 = add nsw i64 %669, 1
  store i64 %670, i64* %k, align 8
  br label %625

; <label>:671                                     ; preds = %625
  br label %672

; <label>:672                                     ; preds = %671, %605
  br label %673

; <label>:673                                     ; preds = %672, %455
  br label %674

; <label>:674                                     ; preds = %673
  %675 = load i64, i64* %j2, align 8
  %676 = add nsw i64 %675, 1
  store i64 %676, i64* %j2, align 8
  br label %446

; <label>:677                                     ; preds = %446
  store i64 0, i64* %j2, align 8
  br label %678

; <label>:678                                     ; preds = %906, %677
  %679 = load i64, i64* %j2, align 8
  %680 = load i64, i64* %i, align 8
  %681 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %682 = getelementptr inbounds %struct.graph, %struct.graph* %681, i32 0, i32 10
  %683 = load i64*, i64** %682, align 8
  %684 = getelementptr inbounds i64, i64* %683, i64 %680
  %685 = load i64, i64* %684, align 8
  %686 = icmp slt i64 %679, %685
  br i1 %686, label %687, label %909

; <label>:687                                     ; preds = %678
  store i64 0, i64* %clusterCounter6, align 8
  %688 = load i64, i64* %cutSetIndex, align 8
  store i64 %688, i64* %cutSetIndexPrev7, align 8
  store i64 0, i64* %cutSetCounter8, align 8
  %689 = load i64, i64* %j2, align 8
  %690 = load i64, i64* %i, align 8
  %691 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %692 = getelementptr inbounds %struct.graph, %struct.graph* %691, i32 0, i32 11
  %693 = load i64*, i64** %692, align 8
  %694 = getelementptr inbounds i64, i64* %693, i64 %690
  %695 = load i64, i64* %694, align 8
  %696 = add i64 %689, %695
  %697 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %698 = getelementptr inbounds %struct.graph, %struct.graph* %697, i32 0, i32 12
  %699 = load i64*, i64** %698, align 8
  %700 = getelementptr inbounds i64, i64* %699, i64 %696
  %701 = load i64, i64* %700, align 8
  %702 = load i64*, i64** %vStatus, align 8
  %703 = getelementptr inbounds i64, i64* %702, i64 %701
  %704 = load i64, i64* %703, align 8
  %705 = load i64, i64* %iter, align 8
  %706 = load i64, i64* %numThread, align 8
  %707 = mul nsw i64 %705, %706
  %708 = load i64, i64* %myId, align 8
  %709 = add nsw i64 %707, %708
  %710 = icmp eq i64 %704, %709
  br i1 %710, label %711, label %905

; <label>:711                                     ; preds = %687
  %712 = load i64, i64* %j2, align 8
  %713 = load i64, i64* %i, align 8
  %714 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %715 = getelementptr inbounds %struct.graph, %struct.graph* %714, i32 0, i32 11
  %716 = load i64*, i64** %715, align 8
  %717 = getelementptr inbounds i64, i64* %716, i64 %713
  %718 = load i64, i64* %717, align 8
  %719 = add i64 %712, %718
  %720 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %721 = getelementptr inbounds %struct.graph, %struct.graph* %720, i32 0, i32 12
  %722 = load i64*, i64** %721, align 8
  %723 = getelementptr inbounds i64, i64* %722, i64 %719
  %724 = load i64, i64* %723, align 8
  store i64 %724, i64* %v9, align 8
  store i64 0, i64* %k10, align 8
  br label %725

; <label>:725                                     ; preds = %785, %711
  %726 = load i64, i64* %k10, align 8
  %727 = load i64, i64* %v9, align 8
  %728 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %729 = getelementptr inbounds %struct.graph, %struct.graph* %728, i32 0, i32 6
  %730 = load i64*, i64** %729, align 8
  %731 = getelementptr inbounds i64, i64* %730, i64 %727
  %732 = load i64, i64* %731, align 8
  %733 = icmp slt i64 %726, %732
  br i1 %733, label %734, label %788

; <label>:734                                     ; preds = %725
  %735 = load i64, i64* %k10, align 8
  %736 = load i64, i64* %v9, align 8
  %737 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %738 = getelementptr inbounds %struct.graph, %struct.graph* %737, i32 0, i32 7
  %739 = load i64*, i64** %738, align 8
  %740 = getelementptr inbounds i64, i64* %739, i64 %736
  %741 = load i64, i64* %740, align 8
  %742 = add i64 %735, %741
  store i64 %742, i64* %outVertexListIndex11, align 8
  %743 = load i64, i64* %outVertexListIndex11, align 8
  %744 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %745 = getelementptr inbounds %struct.graph, %struct.graph* %744, i32 0, i32 8
  %746 = load i64*, i64** %745, align 8
  %747 = getelementptr inbounds i64, i64* %746, i64 %743
  %748 = load i64, i64* %747, align 8
  store i64 %748, i64* %vStatusIndex12, align 8
  %749 = load i64, i64* %vStatusIndex12, align 8
  %750 = load i64*, i64** %vStatus, align 8
  %751 = getelementptr inbounds i64, i64* %750, i64 %749
  %752 = load i64, i64* %751, align 8
  %753 = load i64, i64* %iter, align 8
  %754 = load i64, i64* %numThread, align 8
  %755 = mul nsw i64 %753, %754
  %756 = load i64, i64* %myId, align 8
  %757 = add nsw i64 %755, %756
  %758 = icmp eq i64 %752, %757
  br i1 %758, label %759, label %762

; <label>:759                                     ; preds = %734
  %760 = load i64, i64* %clusterCounter6, align 8
  %761 = add i64 %760, 1
  store i64 %761, i64* %clusterCounter6, align 8
  br label %784

; <label>:762                                     ; preds = %734
  %763 = load i64, i64* %cutSetCounter8, align 8
  %764 = add i64 %763, 1
  store i64 %764, i64* %cutSetCounter8, align 8
  %765 = load i64, i64* %vStatusIndex12, align 8
  %766 = load i64*, i64** %vStatus, align 8
  %767 = getelementptr inbounds i64, i64* %766, i64 %765
  %768 = load i64, i64* %767, align 8
  %769 = icmp eq i64 %768, -1
  br i1 %769, label %770, label %783

; <label>:770                                     ; preds = %762
  %771 = load i64, i64* %v9, align 8
  %772 = load i64, i64* %cutSetIndex, align 8
  %773 = load %struct.edge*, %struct.edge** %pCutSet, align 8
  %774 = getelementptr inbounds %struct.edge, %struct.edge* %773, i64 %772
  %775 = getelementptr inbounds %struct.edge, %struct.edge* %774, i32 0, i32 0
  store i64 %771, i64* %775, align 8
  %776 = load i64, i64* %vStatusIndex12, align 8
  %777 = load i64, i64* %cutSetIndex, align 8
  %778 = load %struct.edge*, %struct.edge** %pCutSet, align 8
  %779 = getelementptr inbounds %struct.edge, %struct.edge* %778, i64 %777
  %780 = getelementptr inbounds %struct.edge, %struct.edge* %779, i32 0, i32 1
  store i64 %776, i64* %780, align 8
  %781 = load i64, i64* %cutSetIndex, align 8
  %782 = add i64 %781, 1
  store i64 %782, i64* %cutSetIndex, align 8
  br label %783

; <label>:783                                     ; preds = %770, %762
  br label %784

; <label>:784                                     ; preds = %783, %759
  br label %785

; <label>:785                                     ; preds = %784
  %786 = load i64, i64* %k10, align 8
  %787 = add nsw i64 %786, 1
  store i64 %787, i64* %k10, align 8
  br label %725

; <label>:788                                     ; preds = %725
  %789 = load i64, i64* %cutSetCounter8, align 8
  %790 = load i64, i64* %clusterCounter6, align 8
  %791 = icmp uge i64 %789, %790
  br i1 %791, label %837, label %792

; <label>:792                                     ; preds = %788
  %793 = load i64, i64* @SCALE, align 8
  %794 = icmp slt i64 %793, 9
  br i1 %794, label %795, label %824

; <label>:795                                     ; preds = %792
  %796 = load i64, i64* %clusterCounter6, align 8
  %797 = icmp ule i64 %796, 2
  br i1 %797, label %798, label %824

; <label>:798                                     ; preds = %795
  %799 = load i64, i64* %v9, align 8
  %800 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %801 = getelementptr inbounds %struct.graph, %struct.graph* %800, i32 0, i32 10
  %802 = load i64*, i64** %801, align 8
  %803 = getelementptr inbounds i64, i64* %802, i64 %799
  %804 = load i64, i64* %803, align 8
  %805 = load i64, i64* %v9, align 8
  %806 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %807 = getelementptr inbounds %struct.graph, %struct.graph* %806, i32 0, i32 6
  %808 = load i64*, i64** %807, align 8
  %809 = getelementptr inbounds i64, i64* %808, i64 %805
  %810 = load i64, i64* %809, align 8
  %811 = add nsw i64 %804, %810
  %812 = load i64, i64* %clusterCounter6, align 8
  %813 = load i64, i64* %cutSetCounter8, align 8
  %814 = add i64 %812, %813
  %815 = icmp ugt i64 %811, %814
  br i1 %815, label %816, label %824

; <label>:816                                     ; preds = %798
  %817 = load i64, i64* %myId, align 8
  %818 = load i64*, i64** %clusterSize, align 8
  %819 = getelementptr inbounds i64, i64* %818, i64 %817
  %820 = load i64, i64* %819, align 8
  %821 = load i64, i64* %clusterCounter6, align 8
  %822 = add i64 %821, 2
  %823 = icmp ugt i64 %820, %822
  br i1 %823, label %837, label %824

; <label>:824                                     ; preds = %816, %798, %795, %792
  %825 = load i64, i64* @SCALE, align 8
  %826 = icmp sgt i64 %825, 9
  br i1 %826, label %827, label %854

; <label>:827                                     ; preds = %824
  %828 = load i64, i64* %clusterCounter6, align 8
  %829 = uitofp i64 %828 to double
  %830 = load i64, i64* %myId, align 8
  %831 = load i64*, i64** %clusterSize, align 8
  %832 = getelementptr inbounds i64, i64* %831, i64 %830
  %833 = load i64, i64* %832, align 8
  %834 = uitofp i64 %833 to double
  %835 = fmul double 5.000000e-01, %834
  %836 = fcmp olt double %829, %835
  br i1 %836, label %837, label %854

; <label>:837                                     ; preds = %827, %816, %788
  %838 = load i64, i64* %v9, align 8
  %839 = load i64*, i64** %vStatus, align 8
  %840 = getelementptr inbounds i64, i64* %839, i64 %838
  store i64 -1, i64* %840, align 8
  %841 = load i64, i64* %cutSetIndexPrev7, align 8
  store i64 %841, i64* %cutSetIndex, align 8
  %842 = load i64, i64* %i, align 8
  %843 = load i64, i64* %cutSetIndex, align 8
  %844 = load %struct.edge*, %struct.edge** %pCutSet, align 8
  %845 = getelementptr inbounds %struct.edge, %struct.edge* %844, i64 %843
  %846 = getelementptr inbounds %struct.edge, %struct.edge* %845, i32 0, i32 0
  store i64 %842, i64* %846, align 8
  %847 = load i64, i64* %v9, align 8
  %848 = load i64, i64* %cutSetIndex, align 8
  %849 = load %struct.edge*, %struct.edge** %pCutSet, align 8
  %850 = getelementptr inbounds %struct.edge, %struct.edge* %849, i64 %848
  %851 = getelementptr inbounds %struct.edge, %struct.edge* %850, i32 0, i32 1
  store i64 %847, i64* %851, align 8
  %852 = load i64, i64* %cutSetIndex, align 8
  %853 = add i64 %852, 1
  store i64 %853, i64* %cutSetIndex, align 8
  br label %904

; <label>:854                                     ; preds = %827, %824
  %855 = load i64, i64* %cliqueSize, align 8
  %856 = add i64 %855, 1
  store i64 %856, i64* %cliqueSize, align 8
  store i64 0, i64* %k10, align 8
  br label %857

; <label>:857                                     ; preds = %900, %854
  %858 = load i64, i64* %k10, align 8
  %859 = load i64, i64* %v9, align 8
  %860 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %861 = getelementptr inbounds %struct.graph, %struct.graph* %860, i32 0, i32 10
  %862 = load i64*, i64** %861, align 8
  %863 = getelementptr inbounds i64, i64* %862, i64 %859
  %864 = load i64, i64* %863, align 8
  %865 = icmp slt i64 %858, %864
  br i1 %865, label %866, label %903

; <label>:866                                     ; preds = %857
  %867 = load i64, i64* %k10, align 8
  %868 = load i64, i64* %v9, align 8
  %869 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %870 = getelementptr inbounds %struct.graph, %struct.graph* %869, i32 0, i32 11
  %871 = load i64*, i64** %870, align 8
  %872 = getelementptr inbounds i64, i64* %871, i64 %868
  %873 = load i64, i64* %872, align 8
  %874 = add i64 %867, %873
  store i64 %874, i64* %inVertexListIndex13, align 8
  %875 = load i64, i64* %inVertexListIndex13, align 8
  %876 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %877 = getelementptr inbounds %struct.graph, %struct.graph* %876, i32 0, i32 12
  %878 = load i64*, i64** %877, align 8
  %879 = getelementptr inbounds i64, i64* %878, i64 %875
  %880 = load i64, i64* %879, align 8
  store i64 %880, i64* %vStatusIndex14, align 8
  %881 = load i64, i64* %vStatusIndex14, align 8
  %882 = load i64*, i64** %vStatus, align 8
  %883 = getelementptr inbounds i64, i64* %882, i64 %881
  %884 = load i64, i64* %883, align 8
  %885 = icmp eq i64 %884, -1
  br i1 %885, label %886, label %899

; <label>:886                                     ; preds = %866
  %887 = load i64, i64* %v9, align 8
  %888 = load i64, i64* %cutSetIndex, align 8
  %889 = load %struct.edge*, %struct.edge** %pCutSet, align 8
  %890 = getelementptr inbounds %struct.edge, %struct.edge* %889, i64 %888
  %891 = getelementptr inbounds %struct.edge, %struct.edge* %890, i32 0, i32 0
  store i64 %887, i64* %891, align 8
  %892 = load i64, i64* %vStatusIndex14, align 8
  %893 = load i64, i64* %cutSetIndex, align 8
  %894 = load %struct.edge*, %struct.edge** %pCutSet, align 8
  %895 = getelementptr inbounds %struct.edge, %struct.edge* %894, i64 %893
  %896 = getelementptr inbounds %struct.edge, %struct.edge* %895, i32 0, i32 1
  store i64 %892, i64* %896, align 8
  %897 = load i64, i64* %cutSetIndex, align 8
  %898 = add i64 %897, 1
  store i64 %898, i64* %cutSetIndex, align 8
  br label %899

; <label>:899                                     ; preds = %886, %866
  br label %900

; <label>:900                                     ; preds = %899
  %901 = load i64, i64* %k10, align 8
  %902 = add nsw i64 %901, 1
  store i64 %902, i64* %k10, align 8
  br label %857

; <label>:903                                     ; preds = %857
  br label %904

; <label>:904                                     ; preds = %903, %837
  br label %905

; <label>:905                                     ; preds = %904, %687
  br label %906

; <label>:906                                     ; preds = %905
  %907 = load i64, i64* %j2, align 8
  %908 = add nsw i64 %907, 1
  store i64 %908, i64* %j2, align 8
  br label %678

; <label>:909                                     ; preds = %678
  br label %910

; <label>:910                                     ; preds = %909, %439, %429
  %911 = load i64, i64* %myId, align 8
  %912 = load i64*, i64** %clusterSize, align 8
  %913 = getelementptr inbounds i64, i64* %912, i64 %911
  %914 = load i64, i64* %913, align 8
  %915 = icmp eq i64 %914, 0
  br i1 %915, label %916, label %917

; <label>:916                                     ; preds = %910
  store i64 1, i64* %cliqueSize, align 8
  br label %1040

; <label>:917                                     ; preds = %910
  %918 = load i64, i64* %myId, align 8
  %919 = load i64*, i64** %clusterSize, align 8
  %920 = getelementptr inbounds i64, i64* %919, i64 %918
  %921 = load i64, i64* %920, align 8
  %922 = uitofp i64 %921 to double
  %923 = load i64, i64* %i, align 8
  %924 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %925 = getelementptr inbounds %struct.graph, %struct.graph* %924, i32 0, i32 10
  %926 = load i64*, i64** %925, align 8
  %927 = getelementptr inbounds i64, i64* %926, i64 %923
  %928 = load i64, i64* %927, align 8
  %929 = load i64, i64* %i, align 8
  %930 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %931 = getelementptr inbounds %struct.graph, %struct.graph* %930, i32 0, i32 6
  %932 = load i64*, i64** %931, align 8
  %933 = getelementptr inbounds i64, i64* %932, i64 %929
  %934 = load i64, i64* %933, align 8
  %935 = add nsw i64 %928, %934
  %936 = sitofp i64 %935 to double
  %937 = fmul double 6.000000e-01, %936
  %938 = fcmp olt double %922, %937
  br i1 %938, label %939, label %1039

; <label>:939                                     ; preds = %917
  %940 = load i64, i64* %iter, align 8
  %941 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %942 = getelementptr inbounds %struct.graph, %struct.graph* %941, i32 0, i32 0
  %943 = load i64, i64* %942, align 8
  %944 = load i64, i64* %numThread, align 8
  %945 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %946 = mul nsw i64 %944, %945
  %947 = udiv i64 %943, %946
  %948 = icmp ule i64 %940, %947
  br i1 %948, label %949, label %1039

; <label>:949                                     ; preds = %939
  store i64 0, i64* %cliqueSize, align 8
  %950 = load i64, i64* %i, align 8
  %951 = load i64*, i64** %vStatus, align 8
  %952 = getelementptr inbounds i64, i64* %951, i64 %950
  store i64 -1, i64* %952, align 8
  store i64 0, i64* %j15, align 8
  br label %953

; <label>:953                                     ; preds = %992, %949
  %954 = load i64, i64* %j15, align 8
  %955 = load i64, i64* %i, align 8
  %956 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %957 = getelementptr inbounds %struct.graph, %struct.graph* %956, i32 0, i32 6
  %958 = load i64*, i64** %957, align 8
  %959 = getelementptr inbounds i64, i64* %958, i64 %955
  %960 = load i64, i64* %959, align 8
  %961 = icmp slt i64 %954, %960
  br i1 %961, label %962, label %995

; <label>:962                                     ; preds = %953
  %963 = load i64, i64* %j15, align 8
  %964 = load i64, i64* %i, align 8
  %965 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %966 = getelementptr inbounds %struct.graph, %struct.graph* %965, i32 0, i32 7
  %967 = load i64*, i64** %966, align 8
  %968 = getelementptr inbounds i64, i64* %967, i64 %964
  %969 = load i64, i64* %968, align 8
  %970 = add i64 %963, %969
  store i64 %970, i64* %outVertexListIndex16, align 8
  %971 = load i64, i64* %outVertexListIndex16, align 8
  %972 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %973 = getelementptr inbounds %struct.graph, %struct.graph* %972, i32 0, i32 8
  %974 = load i64*, i64** %973, align 8
  %975 = getelementptr inbounds i64, i64* %974, i64 %971
  %976 = load i64, i64* %975, align 8
  store i64 %976, i64* %vStatusIndex17, align 8
  %977 = load i64, i64* %vStatusIndex17, align 8
  %978 = load i64*, i64** %vStatus, align 8
  %979 = getelementptr inbounds i64, i64* %978, i64 %977
  %980 = load i64, i64* %979, align 8
  %981 = load i64, i64* %iter, align 8
  %982 = load i64, i64* %numThread, align 8
  %983 = mul nsw i64 %981, %982
  %984 = load i64, i64* %myId, align 8
  %985 = add nsw i64 %983, %984
  %986 = icmp eq i64 %980, %985
  br i1 %986, label %987, label %991

; <label>:987                                     ; preds = %962
  %988 = load i64, i64* %vStatusIndex17, align 8
  %989 = load i64*, i64** %vStatus, align 8
  %990 = getelementptr inbounds i64, i64* %989, i64 %988
  store i64 -1, i64* %990, align 8
  br label %991

; <label>:991                                     ; preds = %987, %962
  br label %992

; <label>:992                                     ; preds = %991
  %993 = load i64, i64* %j15, align 8
  %994 = add nsw i64 %993, 1
  store i64 %994, i64* %j15, align 8
  br label %953

; <label>:995                                     ; preds = %953
  store i64 0, i64* %j15, align 8
  br label %996

; <label>:996                                     ; preds = %1035, %995
  %997 = load i64, i64* %j15, align 8
  %998 = load i64, i64* %i, align 8
  %999 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1000 = getelementptr inbounds %struct.graph, %struct.graph* %999, i32 0, i32 10
  %1001 = load i64*, i64** %1000, align 8
  %1002 = getelementptr inbounds i64, i64* %1001, i64 %998
  %1003 = load i64, i64* %1002, align 8
  %1004 = icmp slt i64 %997, %1003
  br i1 %1004, label %1005, label %1038

; <label>:1005                                    ; preds = %996
  %1006 = load i64, i64* %j15, align 8
  %1007 = load i64, i64* %i, align 8
  %1008 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1009 = getelementptr inbounds %struct.graph, %struct.graph* %1008, i32 0, i32 11
  %1010 = load i64*, i64** %1009, align 8
  %1011 = getelementptr inbounds i64, i64* %1010, i64 %1007
  %1012 = load i64, i64* %1011, align 8
  %1013 = add i64 %1006, %1012
  store i64 %1013, i64* %inVertexListIndex18, align 8
  %1014 = load i64, i64* %inVertexListIndex18, align 8
  %1015 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1016 = getelementptr inbounds %struct.graph, %struct.graph* %1015, i32 0, i32 12
  %1017 = load i64*, i64** %1016, align 8
  %1018 = getelementptr inbounds i64, i64* %1017, i64 %1014
  %1019 = load i64, i64* %1018, align 8
  store i64 %1019, i64* %vStatusIndex19, align 8
  %1020 = load i64, i64* %vStatusIndex19, align 8
  %1021 = load i64*, i64** %vStatus, align 8
  %1022 = getelementptr inbounds i64, i64* %1021, i64 %1020
  %1023 = load i64, i64* %1022, align 8
  %1024 = load i64, i64* %iter, align 8
  %1025 = load i64, i64* %numThread, align 8
  %1026 = mul nsw i64 %1024, %1025
  %1027 = load i64, i64* %myId, align 8
  %1028 = add nsw i64 %1026, %1027
  %1029 = icmp eq i64 %1023, %1028
  br i1 %1029, label %1030, label %1034

; <label>:1030                                    ; preds = %1005
  %1031 = load i64, i64* %vStatusIndex19, align 8
  %1032 = load i64*, i64** %vStatus, align 8
  %1033 = getelementptr inbounds i64, i64* %1032, i64 %1031
  store i64 -1, i64* %1033, align 8
  br label %1034

; <label>:1034                                    ; preds = %1030, %1005
  br label %1035

; <label>:1035                                    ; preds = %1034
  %1036 = load i64, i64* %j15, align 8
  %1037 = add nsw i64 %1036, 1
  store i64 %1037, i64* %j15, align 8
  br label %996

; <label>:1038                                    ; preds = %996
  br label %1039

; <label>:1039                                    ; preds = %1038, %939, %917
  br label %1040

; <label>:1040                                    ; preds = %1039, %916
  br label %1041

; <label>:1041                                    ; preds = %1040, %400
  %1042 = load i64, i64* %myId, align 8
  %1043 = icmp eq i64 %1042, 0
  br i1 %1043, label %1044, label %1045

; <label>:1044                                    ; preds = %1041
  store i64 0, i64* @global_cliqueSize, align 8
  br label %1045

; <label>:1045                                    ; preds = %1044, %1041
  call void (...) @thread_barrier_wait()
  %1046 = load i64, i64* %myId, align 8
  %1047 = icmp eq i64 %1046, 0
  br i1 %1047, label %1048, label %1052

; <label>:1048                                    ; preds = %1045
  %1049 = load i64, i64* %iter, align 8
  %1050 = add nsw i64 %1049, 1
  store i64 %1050, i64* %iter, align 8
  %1051 = load i64, i64* %iter, align 8
  store i64 %1051, i64* @global_iter, align 8
  br label %1052

; <label>:1052                                    ; preds = %1048, %1045
  store i32 -1, i32* %__status, align 4
  store i32 9, i32* %tries, align 4
  br label %1053

; <label>:1053                                    ; preds = %1074, %1052
  br label %1054

; <label>:1054                                    ; preds = %1057, %1053
  %1055 = call i64 (...) @RTM_fallback_isLocked()
  %1056 = icmp ne i64 %1055, 0
  br i1 %1056, label %1057, label %1058

; <label>:1057                                    ; preds = %1054
  call void @llvm.x86.sse2.pause() #4
  br label %1054

; <label>:1058                                    ; preds = %1054
  %1059 = load i32, i32* %tries, align 4
  %1060 = add nsw i32 %1059, -1
  store i32 %1060, i32* %tries, align 4
  %1061 = load i32, i32* %tries, align 4
  %1062 = icmp sle i32 %1061, 0
  br i1 %1062, label %1063, label %1064

; <label>:1063                                    ; preds = %1058
  call void (...) @RTM_fallback_lock()
  br label %1081

; <label>:1064                                    ; preds = %1058
  store i64 5, i64* %5, align 8
  store i64 0, i64* %handler.i, align 8
  store i64 4294967295, i64* %ret.i, align 8
  %1065 = load i64, i64* %ret.i, align 8
  %1066 = load i64, i64* %5, align 8
  %1067 = load i64, i64* %handler.i, align 8
  %1068 = load i64, i64* %5, align 8
  %1069 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %1066, i64 %1067, i64 %1068, i64 %1065) #4, !srcloc !1
  store i64 %1069, i64* %ret.i, align 8
  %1070 = load i64, i64* %ret.i, align 8
  %1071 = trunc i64 %1070 to i32
  store i32 %1071, i32* %__status, align 4
  %1072 = load i32, i32* %__status, align 4
  %1073 = icmp ne i32 %1072, -1
  br i1 %1073, label %1074, label %1075

; <label>:1074                                    ; preds = %1064
  br label %1053

; <label>:1075                                    ; preds = %1064
  %1076 = call i64 (...) @RTM_fallback_isLocked()
  %1077 = icmp ne i64 %1076, 0
  br i1 %1077, label %1078, label %1080

; <label>:1078                                    ; preds = %1075
  store i64 255, i64* %4, align 8
  %1079 = load i64, i64* %4, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %1079) #4, !srcloc !2
  br label %1080

; <label>:1080                                    ; preds = %1078, %1075
  br label %1081

; <label>:1081                                    ; preds = %1080, %1063
  %1082 = load i64, i64* @global_cliqueSize, align 8
  store i64 %1082, i64* %tmp_cliqueSize, align 8
  %1083 = load i64, i64* %tmp_cliqueSize, align 8
  %1084 = load i64, i64* %cliqueSize, align 8
  %1085 = add i64 %1083, %1084
  store i64 %1085, i64* @global_cliqueSize, align 8
  %1086 = load i64, i64* @global_cliqueSize, align 8
  store i64 %1086, i64* %8, align 8
  %1087 = load i64, i64* %8, align 8
  %1088 = load i32, i32* %tries, align 4
  %1089 = icmp sgt i32 %1088, 0
  br i1 %1089, label %1090, label %1092

; <label>:1090                                    ; preds = %1081
  store i64 5, i64* %3, align 8
  %1091 = load i64, i64* %3, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %1091) #4, !srcloc !3
  br label %1093

; <label>:1092                                    ; preds = %1081
  call void (...) @RTM_fallback_unlock()
  br label %1093

; <label>:1093                                    ; preds = %1092, %1090
  call void (...) @thread_barrier_wait()
  %1094 = load i64, i64* @global_iter, align 8
  store i64 %1094, i64* %iter, align 8
  %1095 = load i64, i64* @global_cliqueSize, align 8
  %1096 = load i64, i64* %verticesVisited, align 8
  %1097 = add i64 %1096, %1095
  store i64 %1097, i64* %verticesVisited, align 8
  %1098 = load i64, i64* %verticesVisited, align 8
  %1099 = uitofp i64 %1098 to double
  %1100 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1101 = getelementptr inbounds %struct.graph, %struct.graph* %1100, i32 0, i32 0
  %1102 = load i64, i64* %1101, align 8
  %1103 = uitofp i64 %1102 to double
  %1104 = fmul double 9.500000e-01, %1103
  %1105 = fcmp oge double %1099, %1104
  br i1 %1105, label %1113, label %1106

; <label>:1106                                    ; preds = %1093
  %1107 = load i64, i64* %iter, align 8
  %1108 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1109 = getelementptr inbounds %struct.graph, %struct.graph* %1108, i32 0, i32 0
  %1110 = load i64, i64* %1109, align 8
  %1111 = udiv i64 %1110, 2
  %1112 = icmp ugt i64 %1107, %1111
  br i1 %1112, label %1113, label %1114

; <label>:1113                                    ; preds = %1106, %1093
  br label %1115

; <label>:1114                                    ; preds = %1106
  br label %208

; <label>:1115                                    ; preds = %1113, %208
  call void (...) @thread_barrier_wait()
  %1116 = load i64, i64* %myId, align 8
  %1117 = icmp eq i64 %1116, 0
  br i1 %1117, label %1118, label %1141

; <label>:1118                                    ; preds = %1115
  %1119 = load i64, i64* %numThread, align 8
  %1120 = mul i64 %1119, 8
  %1121 = call noalias i8* @malloc(i64 %1120) #4
  %1122 = bitcast i8* %1121 to i64*
  store i64* %1122, i64** %edgeStartCounter, align 8
  %1123 = load i64*, i64** %edgeStartCounter, align 8
  %1124 = icmp ne i64* %1123, null
  br i1 %1124, label %1125, label %1126

; <label>:1125                                    ; preds = %1118
  br label %1128

; <label>:1126                                    ; preds = %1118
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 579, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %1128

; <label>:1128                                    ; preds = %1127, %1125
  %1129 = load i64*, i64** %edgeStartCounter, align 8
  store i64* %1129, i64** @global_edgeStartCounter, align 8
  %1130 = load i64, i64* %numThread, align 8
  %1131 = mul i64 %1130, 8
  %1132 = call noalias i8* @malloc(i64 %1131) #4
  %1133 = bitcast i8* %1132 to i64*
  store i64* %1133, i64** %edgeEndCounter, align 8
  %1134 = load i64*, i64** %edgeEndCounter, align 8
  %1135 = icmp ne i64* %1134, null
  br i1 %1135, label %1136, label %1137

; <label>:1136                                    ; preds = %1128
  br label %1139

; <label>:1137                                    ; preds = %1128
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 582, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %1139

; <label>:1139                                    ; preds = %1138, %1136
  %1140 = load i64*, i64** %edgeEndCounter, align 8
  store i64* %1140, i64** @global_edgeEndCounter, align 8
  br label %1141

; <label>:1141                                    ; preds = %1139, %1115
  call void (...) @thread_barrier_wait()
  %1142 = load i64*, i64** @global_edgeStartCounter, align 8
  store i64* %1142, i64** %edgeStartCounter, align 8
  %1143 = load i64*, i64** @global_edgeEndCounter, align 8
  store i64* %1143, i64** %edgeEndCounter, align 8
  %1144 = load i64, i64* %cutSetIndex, align 8
  %1145 = load i64, i64* %myId, align 8
  %1146 = load i64*, i64** %edgeEndCounter, align 8
  %1147 = getelementptr inbounds i64, i64* %1146, i64 %1145
  store i64 %1144, i64* %1147, align 8
  %1148 = load i64, i64* %myId, align 8
  %1149 = load i64*, i64** %edgeStartCounter, align 8
  %1150 = getelementptr inbounds i64, i64* %1149, i64 %1148
  store i64 0, i64* %1150, align 8
  call void (...) @thread_barrier_wait()
  %1151 = load i64, i64* %myId, align 8
  %1152 = icmp eq i64 %1151, 0
  br i1 %1152, label %1153, label %1184

; <label>:1153                                    ; preds = %1141
  store i64 1, i64* %t20, align 8
  br label %1154

; <label>:1154                                    ; preds = %1180, %1153
  %1155 = load i64, i64* %t20, align 8
  %1156 = load i64, i64* %numThread, align 8
  %1157 = icmp slt i64 %1155, %1156
  br i1 %1157, label %1158, label %1183

; <label>:1158                                    ; preds = %1154
  %1159 = load i64, i64* %t20, align 8
  %1160 = sub nsw i64 %1159, 1
  %1161 = load i64*, i64** %edgeEndCounter, align 8
  %1162 = getelementptr inbounds i64, i64* %1161, i64 %1160
  %1163 = load i64, i64* %1162, align 8
  %1164 = load i64, i64* %t20, align 8
  %1165 = load i64*, i64** %edgeEndCounter, align 8
  %1166 = getelementptr inbounds i64, i64* %1165, i64 %1164
  %1167 = load i64, i64* %1166, align 8
  %1168 = add i64 %1163, %1167
  %1169 = load i64, i64* %t20, align 8
  %1170 = load i64*, i64** %edgeEndCounter, align 8
  %1171 = getelementptr inbounds i64, i64* %1170, i64 %1169
  store i64 %1168, i64* %1171, align 8
  %1172 = load i64, i64* %t20, align 8
  %1173 = sub nsw i64 %1172, 1
  %1174 = load i64*, i64** %edgeEndCounter, align 8
  %1175 = getelementptr inbounds i64, i64* %1174, i64 %1173
  %1176 = load i64, i64* %1175, align 8
  %1177 = load i64, i64* %t20, align 8
  %1178 = load i64*, i64** %edgeStartCounter, align 8
  %1179 = getelementptr inbounds i64, i64* %1178, i64 %1177
  store i64 %1176, i64* %1179, align 8
  br label %1180

; <label>:1180                                    ; preds = %1158
  %1181 = load i64, i64* %t20, align 8
  %1182 = add nsw i64 %1181, 1
  store i64 %1182, i64* %t20, align 8
  br label %1154

; <label>:1183                                    ; preds = %1154
  br label %1184

; <label>:1184                                    ; preds = %1183, %1141
  store i32 -1, i32* %__status21, align 4
  store i32 9, i32* %tries22, align 4
  br label %1185

; <label>:1185                                    ; preds = %1206, %1184
  br label %1186

; <label>:1186                                    ; preds = %1189, %1185
  %1187 = call i64 (...) @RTM_fallback_isLocked()
  %1188 = icmp ne i64 %1187, 0
  br i1 %1188, label %1189, label %1190

; <label>:1189                                    ; preds = %1186
  call void @llvm.x86.sse2.pause() #4
  br label %1186

; <label>:1190                                    ; preds = %1186
  %1191 = load i32, i32* %tries22, align 4
  %1192 = add nsw i32 %1191, -1
  store i32 %1192, i32* %tries22, align 4
  %1193 = load i32, i32* %tries22, align 4
  %1194 = icmp sle i32 %1193, 0
  br i1 %1194, label %1195, label %1196

; <label>:1195                                    ; preds = %1190
  call void (...) @RTM_fallback_lock()
  br label %1213

; <label>:1196                                    ; preds = %1190
  store i64 6, i64* %1, align 8
  store i64 0, i64* %handler.i25, align 8
  store i64 4294967295, i64* %ret.i26, align 8
  %1197 = load i64, i64* %ret.i26, align 8
  %1198 = load i64, i64* %1, align 8
  %1199 = load i64, i64* %handler.i25, align 8
  %1200 = load i64, i64* %1, align 8
  %1201 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %1198, i64 %1199, i64 %1200, i64 %1197) #4, !srcloc !1
  store i64 %1201, i64* %ret.i26, align 8
  %1202 = load i64, i64* %ret.i26, align 8
  %1203 = trunc i64 %1202 to i32
  store i32 %1203, i32* %__status21, align 4
  %1204 = load i32, i32* %__status21, align 4
  %1205 = icmp ne i32 %1204, -1
  br i1 %1205, label %1206, label %1207

; <label>:1206                                    ; preds = %1196
  br label %1185

; <label>:1207                                    ; preds = %1196
  %1208 = call i64 (...) @RTM_fallback_isLocked()
  %1209 = icmp ne i64 %1208, 0
  br i1 %1209, label %1210, label %1212

; <label>:1210                                    ; preds = %1207
  store i64 255, i64* %2, align 8
  %1211 = load i64, i64* %2, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %1211) #4, !srcloc !2
  br label %1212

; <label>:1212                                    ; preds = %1210, %1207
  br label %1213

; <label>:1213                                    ; preds = %1212, %1195
  %1214 = load i64, i64* @global_cutSetIndex, align 8
  store i64 %1214, i64* %tmp_cutSetIndex, align 8
  %1215 = load i64, i64* %tmp_cutSetIndex, align 8
  %1216 = load i64, i64* %cutSetIndex, align 8
  %1217 = add i64 %1215, %1216
  store i64 %1217, i64* @global_cutSetIndex, align 8
  %1218 = load i64, i64* @global_cutSetIndex, align 8
  store i64 %1218, i64* %9, align 8
  %1219 = load i64, i64* %9, align 8
  %1220 = load i32, i32* %tries22, align 4
  %1221 = icmp sgt i32 %1220, 0
  br i1 %1221, label %1222, label %1224

; <label>:1222                                    ; preds = %1213
  store i64 6, i64* %6, align 8
  %1223 = load i64, i64* %6, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %1223) #4, !srcloc !3
  br label %1225

; <label>:1224                                    ; preds = %1213
  call void (...) @RTM_fallback_unlock()
  br label %1225

; <label>:1225                                    ; preds = %1224, %1222
  call void (...) @thread_barrier_wait()
  %1226 = load i64, i64* @global_cutSetIndex, align 8
  store i64 %1226, i64* %cutSetIndex, align 8
  %1227 = load i64, i64* %cutSetIndex, align 8
  store i64 %1227, i64* %cutSetCounter23, align 8
  %1228 = load i64, i64* %myId, align 8
  %1229 = icmp eq i64 %1228, 0
  br i1 %1229, label %1230, label %1242

; <label>:1230                                    ; preds = %1225
  %1231 = load i64, i64* %cutSetCounter23, align 8
  %1232 = mul i64 %1231, 24
  %1233 = call noalias i8* @malloc(i64 %1232) #4
  %1234 = bitcast i8* %1233 to %struct.edge*
  store %struct.edge* %1234, %struct.edge** %cutSet, align 8
  %1235 = load %struct.edge*, %struct.edge** %cutSet, align 8
  %1236 = icmp ne %struct.edge* %1235, null
  br i1 %1236, label %1237, label %1238

; <label>:1237                                    ; preds = %1230
  br label %1240

; <label>:1238                                    ; preds = %1230
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 619, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %1240

; <label>:1240                                    ; preds = %1239, %1237
  %1241 = load %struct.edge*, %struct.edge** %cutSet, align 8
  store %struct.edge* %1241, %struct.edge** @global_cutSet, align 8
  br label %1242

; <label>:1242                                    ; preds = %1240, %1225
  call void (...) @thread_barrier_wait()
  %1243 = load %struct.edge*, %struct.edge** @global_cutSet, align 8
  store %struct.edge* %1243, %struct.edge** %cutSet, align 8
  %1244 = load i64, i64* %myId, align 8
  %1245 = load i64*, i64** %edgeStartCounter, align 8
  %1246 = getelementptr inbounds i64, i64* %1245, i64 %1244
  %1247 = load i64, i64* %1246, align 8
  store i64 %1247, i64* %j24, align 8
  br label %1248

; <label>:1248                                    ; preds = %1284, %1242
  %1249 = load i64, i64* %j24, align 8
  %1250 = load i64, i64* %myId, align 8
  %1251 = load i64*, i64** %edgeEndCounter, align 8
  %1252 = getelementptr inbounds i64, i64* %1251, i64 %1250
  %1253 = load i64, i64* %1252, align 8
  %1254 = icmp ult i64 %1249, %1253
  br i1 %1254, label %1255, label %1287

; <label>:1255                                    ; preds = %1248
  %1256 = load i64, i64* %j24, align 8
  %1257 = load i64, i64* %myId, align 8
  %1258 = load i64*, i64** %edgeStartCounter, align 8
  %1259 = getelementptr inbounds i64, i64* %1258, i64 %1257
  %1260 = load i64, i64* %1259, align 8
  %1261 = sub i64 %1256, %1260
  %1262 = load %struct.edge*, %struct.edge** %pCutSet, align 8
  %1263 = getelementptr inbounds %struct.edge, %struct.edge* %1262, i64 %1261
  %1264 = getelementptr inbounds %struct.edge, %struct.edge* %1263, i32 0, i32 0
  %1265 = load i64, i64* %1264, align 8
  %1266 = load i64, i64* %j24, align 8
  %1267 = load %struct.edge*, %struct.edge** %cutSet, align 8
  %1268 = getelementptr inbounds %struct.edge, %struct.edge* %1267, i64 %1266
  %1269 = getelementptr inbounds %struct.edge, %struct.edge* %1268, i32 0, i32 0
  store i64 %1265, i64* %1269, align 8
  %1270 = load i64, i64* %j24, align 8
  %1271 = load i64, i64* %myId, align 8
  %1272 = load i64*, i64** %edgeStartCounter, align 8
  %1273 = getelementptr inbounds i64, i64* %1272, i64 %1271
  %1274 = load i64, i64* %1273, align 8
  %1275 = sub i64 %1270, %1274
  %1276 = load %struct.edge*, %struct.edge** %pCutSet, align 8
  %1277 = getelementptr inbounds %struct.edge, %struct.edge* %1276, i64 %1275
  %1278 = getelementptr inbounds %struct.edge, %struct.edge* %1277, i32 0, i32 1
  %1279 = load i64, i64* %1278, align 8
  %1280 = load i64, i64* %j24, align 8
  %1281 = load %struct.edge*, %struct.edge** %cutSet, align 8
  %1282 = getelementptr inbounds %struct.edge, %struct.edge* %1281, i64 %1280
  %1283 = getelementptr inbounds %struct.edge, %struct.edge* %1282, i32 0, i32 1
  store i64 %1279, i64* %1283, align 8
  br label %1284

; <label>:1284                                    ; preds = %1255
  %1285 = load i64, i64* %j24, align 8
  %1286 = add nsw i64 %1285, 1
  store i64 %1286, i64* %j24, align 8
  br label %1248

; <label>:1287                                    ; preds = %1248
  call void (...) @thread_barrier_wait()
  %1288 = load i64, i64* %myId, align 8
  %1289 = icmp eq i64 %1288, 0
  br i1 %1289, label %1290, label %1309

; <label>:1290                                    ; preds = %1287
  %1291 = load i64*, i64** %edgeStartCounter, align 8
  %1292 = bitcast i64* %1291 to i8*
  call void @free(i8* %1292) #4
  %1293 = load i64*, i64** %edgeEndCounter, align 8
  %1294 = bitcast i64* %1293 to i8*
  call void @free(i8* %1294) #4
  %1295 = load %struct.edge*, %struct.edge** %pCutSet, align 8
  %1296 = bitcast %struct.edge* %1295 to i8*
  call void @free(i8* %1296) #4
  %1297 = load i64*, i64** %IndexSorted, align 8
  %1298 = bitcast i64* %1297 to i8*
  call void @free(i8* %1298) #4
  %1299 = load i64*, i64** %neighbourArraySorted, align 8
  %1300 = bitcast i64* %1299 to i8*
  call void @free(i8* %1300) #4
  %1301 = load i64*, i64** %startV, align 8
  %1302 = bitcast i64* %1301 to i8*
  call void @free(i8* %1302) #4
  %1303 = load i64*, i64** %clusterSize, align 8
  %1304 = bitcast i64* %1303 to i8*
  call void @free(i8* %1304) #4
  %1305 = load %struct.edge*, %struct.edge** %cutSet, align 8
  %1306 = bitcast %struct.edge* %1305 to i8*
  call void @free(i8* %1306) #4
  %1307 = load i64*, i64** %vStatus, align 8
  %1308 = bitcast i64* %1307 to i8*
  call void @free(i8* %1308) #4
  br label %1309

; <label>:1309                                    ; preds = %1290, %1287
  br label %1310

; <label>:1310                                    ; preds = %1309
  %1311 = call i64 (...) @thread_getId()
  %1312 = trunc i64 %1311 to i32
  %1313 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %1314 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %1313, i32 0, i32 4
  %1315 = load i32, i32* %1314, align 4
  call void @SimRoiEnd(i32 %1312, i32 %1315)
  br label %1316

; <label>:1316                                    ; preds = %1310
  ret void
}

declare i64 @thread_getId(...) #1

declare void @SimRoiStart(i32) #1

declare i64 @thread_getNumThread(...) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare void @thread_barrier_wait(...) #1

declare void @createPartition(i64, i64, i64, i64, i64*, i64*) #1

declare void @all_radixsort_node_aux_s3(i64, i64*, i64*, i64*, i64*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i64 @RTM_fallback_isLocked(...) #1

declare void @RTM_fallback_lock(...) #1

declare void @RTM_fallback_unlock(...) #1

declare void @SimRoiEnd(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 1445680, i32 1445696, i32 1445732, i32 1445768, i32 1445804}
!2 = !{i32 1446281, i32 1446296, i32 1446330}
!3 = !{i32 1446052, i32 1446067, i32 1446095}
