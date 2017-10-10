; ModuleID = '../bin/computeGraph.stats.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._tm_thread_context_t = type { i32, i32, %struct.simple_metadata*, i32, i32, [44 x i8] }
%struct.simple_metadata = type opaque
%struct.graph = type { i64, i64, i64, i64, i64, i64, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i8* }
%struct.graphSDG = type { i64*, i64*, i64*, i8*, i64 }
%struct.computeGragh_arg = type { %struct.graph*, %struct.graphSDG* }

@thread_contexts = external global %struct._tm_thread_context_t*, align 8
@global_maxNumVertices = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GPtr->outDegree\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"computeGraph.c\00", align 1
@__PRETTY_FUNCTION__.computeGraph = private unnamed_addr constant [26 x i8] c"void computeGraph(void *)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"GPtr->outVertexIndex\00", align 1
@global_outVertexListSize = internal global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"GPtr->outVertexList\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"GPtr->paralEdgeIndex\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"GPtr->inDegree\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"GPtr->inVertexIndex\00", align 1
@MAX_CLUSTER_SIZE = external global i64, align 8
@global_impliedEdgeList = internal global i64* null, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"auxArr\00", align 1
@global_auxArr = internal global i64** null, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@__PRETTY_FUNCTION__.prefix_sums = private unnamed_addr constant [56 x i8] c"void prefix_sums(ULONGINT_T *, LONGINT_T *, ULONGINT_T)\00", align 1
@global_p = internal global i64* null, align 8

; Function Attrs: nounwind uwtable
define void @computeGraph(i8* %argPtr) #0 {
  %1 = alloca i64, align 8
  %handler.i14 = alloca i64, align 8
  %ret.i15 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %handler.i12 = alloca i64, align 8
  %ret.i13 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %handler.i = alloca i64, align 8
  %ret.i = alloca i64, align 8
  %10 = alloca i8*, align 8
  %_tm_thread_context = alloca %struct._tm_thread_context_t*, align 8
  %GPtr = alloca %struct.graph*, align 8
  %SDGdataPtr = alloca %struct.graphSDG*, align 8
  %myId = alloca i64, align 8
  %numThread = alloca i64, align 8
  %j = alloca i64, align 8
  %maxNumVertices = alloca i64, align 8
  %numEdgesPlaced = alloca i64, align 8
  %i = alloca i64, align 8
  %i_start = alloca i64, align 8
  %i_stop = alloca i64, align 8
  %__status = alloca i32, align 4
  %tries = alloca i32, align 4
  %tmp_maxNumVertices = alloca i64, align 8
  %new_maxNumVertices = alloca i64, align 8
  %_a = alloca i64, align 8
  %_b = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %outVertexListSize = alloca i64, align 8
  %i0 = alloca i64, align 8
  %k = alloca i64, align 8
  %t = alloca i64, align 8
  %t1 = alloca i64, align 8
  %__status2 = alloca i32, align 4
  %tries3 = alloca i32, align 4
  %13 = alloca i64, align 8
  %k4 = alloca i64, align 8
  %ii = alloca i64, align 8
  %r = alloca i64, align 8
  %t5 = alloca i64, align 8
  %r6 = alloca i64, align 8
  %ii7 = alloca i64, align 8
  %t8 = alloca i64, align 8
  %impliedEdgeList = alloca i64*, align 8
  %auxArr = alloca i64**, align 8
  %v = alloca i64, align 8
  %k9 = alloca i64, align 8
  %__status10 = alloca i32, align 4
  %tries11 = alloca i32, align 4
  %inDegree = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %a = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  store i8* %argPtr, i8** %10, align 8
  %18 = call i64 (...) @thread_getId()
  %19 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %20 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %19, i64 %18
  store %struct._tm_thread_context_t* %20, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  br label %21

; <label>:21                                      ; preds = %0
  %22 = call i64 (...) @thread_getId()
  %23 = trunc i64 %22 to i32
  call void @SimRoiStart(i32 %23)
  br label %24

; <label>:24                                      ; preds = %21
  %25 = load i8*, i8** %10, align 8
  %26 = bitcast i8* %25 to %struct.computeGragh_arg*
  %27 = getelementptr inbounds %struct.computeGragh_arg, %struct.computeGragh_arg* %26, i32 0, i32 0
  %28 = load %struct.graph*, %struct.graph** %27, align 8
  store %struct.graph* %28, %struct.graph** %GPtr, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = bitcast i8* %29 to %struct.computeGragh_arg*
  %31 = getelementptr inbounds %struct.computeGragh_arg, %struct.computeGragh_arg* %30, i32 0, i32 1
  %32 = load %struct.graphSDG*, %struct.graphSDG** %31, align 8
  store %struct.graphSDG* %32, %struct.graphSDG** %SDGdataPtr, align 8
  %33 = call i64 (...) @thread_getId()
  store i64 %33, i64* %myId, align 8
  %34 = call i64 (...) @thread_getNumThread()
  store i64 %34, i64* %numThread, align 8
  store i64 0, i64* %maxNumVertices, align 8
  %35 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %36 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %numEdgesPlaced, align 8
  %38 = load i64, i64* %numEdgesPlaced, align 8
  %39 = load i64, i64* %myId, align 8
  %40 = load i64, i64* %numThread, align 8
  call void @createPartition(i64 0, i64 %38, i64 %39, i64 %40, i64* %i_start, i64* %i_stop)
  %41 = load i64, i64* %i_start, align 8
  store i64 %41, i64* %i, align 8
  br label %42

; <label>:42                                      ; preds = %63, %24
  %43 = load i64, i64* %i, align 8
  %44 = load i64, i64* %i_stop, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %66

; <label>:46                                      ; preds = %42
  %47 = load i64, i64* %i, align 8
  %48 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %49 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 %47
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %maxNumVertices, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %62

; <label>:55                                      ; preds = %46
  %56 = load i64, i64* %i, align 8
  %57 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %58 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 %56
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %maxNumVertices, align 8
  br label %62

; <label>:62                                      ; preds = %55, %46
  br label %63

; <label>:63                                      ; preds = %62
  %64 = load i64, i64* %i, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %i, align 8
  br label %42

; <label>:66                                      ; preds = %42
  store i32 -1, i32* %__status, align 4
  store i32 9, i32* %tries, align 4
  br label %67

; <label>:67                                      ; preds = %88, %66
  br label %68

; <label>:68                                      ; preds = %71, %67
  %69 = call i64 (...) @RTM_fallback_isLocked()
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

; <label>:71                                      ; preds = %68
  call void @llvm.x86.sse2.pause() #4
  br label %68

; <label>:72                                      ; preds = %68
  %73 = load i32, i32* %tries, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %tries, align 4
  %75 = load i32, i32* %tries, align 4
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %77, label %78

; <label>:77                                      ; preds = %72
  call void (...) @RTM_fallback_lock()
  br label %95

; <label>:78                                      ; preds = %72
  store i64 7, i64* %9, align 8
  store i64 0, i64* %handler.i, align 8
  store i64 4294967295, i64* %ret.i, align 8
  %79 = load i64, i64* %ret.i, align 8
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* %handler.i, align 8
  %82 = load i64, i64* %9, align 8
  %83 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %80, i64 %81, i64 %82, i64 %79) #4, !srcloc !1
  store i64 %83, i64* %ret.i, align 8
  %84 = load i64, i64* %ret.i, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %__status, align 4
  %86 = load i32, i32* %__status, align 4
  %87 = icmp ne i32 %86, -1
  br i1 %87, label %88, label %89

; <label>:88                                      ; preds = %78
  br label %67

; <label>:89                                      ; preds = %78
  %90 = call i64 (...) @RTM_fallback_isLocked()
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

; <label>:92                                      ; preds = %89
  store i64 255, i64* %8, align 8
  %93 = load i64, i64* %8, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %93) #4, !srcloc !2
  br label %94

; <label>:94                                      ; preds = %92, %89
  br label %95

; <label>:95                                      ; preds = %94, %77
  %96 = load i64, i64* @global_maxNumVertices, align 8
  store i64 %96, i64* %tmp_maxNumVertices, align 8
  %97 = load i64, i64* %tmp_maxNumVertices, align 8
  store i64 %97, i64* %_a, align 8
  %98 = load i64, i64* %maxNumVertices, align 8
  store i64 %98, i64* %_b, align 8
  %99 = load i64, i64* %_a, align 8
  %100 = load i64, i64* %_b, align 8
  %101 = icmp ugt i64 %99, %100
  br i1 %101, label %102, label %104

; <label>:102                                     ; preds = %95
  %103 = load i64, i64* %_a, align 8
  br label %106

; <label>:104                                     ; preds = %95
  %105 = load i64, i64* %_b, align 8
  br label %106

; <label>:106                                     ; preds = %104, %102
  %107 = phi i64 [ %103, %102 ], [ %105, %104 ]
  store i64 %107, i64* %11, align 8
  %108 = load i64, i64* %11, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %new_maxNumVertices, align 8
  %110 = load i64, i64* %new_maxNumVertices, align 8
  store i64 %110, i64* @global_maxNumVertices, align 8
  %111 = load i64, i64* @global_maxNumVertices, align 8
  store i64 %111, i64* %12, align 8
  %112 = load i64, i64* %12, align 8
  %113 = load i32, i32* %tries, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %117

; <label>:115                                     ; preds = %106
  store i64 7, i64* %7, align 8
  %116 = load i64, i64* %7, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %116) #4, !srcloc !3
  br label %118

; <label>:117                                     ; preds = %106
  call void (...) @RTM_fallback_unlock()
  br label %118

; <label>:118                                     ; preds = %117, %115
  call void (...) @thread_barrier_wait()
  %119 = load i64, i64* @global_maxNumVertices, align 8
  store i64 %119, i64* %maxNumVertices, align 8
  %120 = load i64, i64* %myId, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %212

; <label>:122                                     ; preds = %118
  %123 = load i64, i64* %maxNumVertices, align 8
  %124 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %125 = getelementptr inbounds %struct.graph, %struct.graph* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = load i64, i64* %numEdgesPlaced, align 8
  %127 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %128 = getelementptr inbounds %struct.graph, %struct.graph* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  %129 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %130 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %129, i32 0, i32 2
  %131 = load i64*, i64** %130, align 8
  %132 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %133 = getelementptr inbounds %struct.graph, %struct.graph* %132, i32 0, i32 13
  store i64* %131, i64** %133, align 8
  %134 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %135 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %134, i32 0, i32 3
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %138 = getelementptr inbounds %struct.graph, %struct.graph* %137, i32 0, i32 14
  store i8* %136, i8** %138, align 8
  store i64 0, i64* %i, align 8
  br label %139

; <label>:139                                     ; preds = %176, %122
  %140 = load i64, i64* %i, align 8
  %141 = load i64, i64* %numEdgesPlaced, align 8
  %142 = icmp ult i64 %140, %141
  br i1 %142, label %143, label %179

; <label>:143                                     ; preds = %139
  %144 = load i64, i64* %numEdgesPlaced, align 8
  %145 = load i64, i64* %i, align 8
  %146 = sub i64 %144, %145
  %147 = sub i64 %146, 1
  %148 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %149 = getelementptr inbounds %struct.graph, %struct.graph* %148, i32 0, i32 13
  %150 = load i64*, i64** %149, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 %147
  %152 = load i64, i64* %151, align 8
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %154, label %175

; <label>:154                                     ; preds = %143
  %155 = load i64, i64* %numEdgesPlaced, align 8
  %156 = load i64, i64* %i, align 8
  %157 = sub i64 %155, %156
  %158 = sub i64 %157, 1
  %159 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %160 = getelementptr inbounds %struct.graph, %struct.graph* %159, i32 0, i32 13
  %161 = load i64*, i64** %160, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 %158
  %163 = load i64, i64* %162, align 8
  %164 = sub nsw i64 0, %163
  %165 = add nsw i64 %164, 1
  %166 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %167 = getelementptr inbounds %struct.graph, %struct.graph* %166, i32 0, i32 5
  store i64 %165, i64* %167, align 8
  %168 = load i64, i64* %numEdgesPlaced, align 8
  %169 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %170 = getelementptr inbounds %struct.graph, %struct.graph* %169, i32 0, i32 5
  %171 = load i64, i64* %170, align 8
  %172 = sub i64 %168, %171
  %173 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %174 = getelementptr inbounds %struct.graph, %struct.graph* %173, i32 0, i32 4
  store i64 %172, i64* %174, align 8
  br label %179

; <label>:175                                     ; preds = %143
  br label %176

; <label>:176                                     ; preds = %175
  %177 = load i64, i64* %i, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %i, align 8
  br label %139

; <label>:179                                     ; preds = %154, %139
  %180 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %181 = getelementptr inbounds %struct.graph, %struct.graph* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = mul i64 %182, 8
  %184 = call noalias i8* @malloc(i64 %183) #4
  %185 = bitcast i8* %184 to i64*
  %186 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %187 = getelementptr inbounds %struct.graph, %struct.graph* %186, i32 0, i32 6
  store i64* %185, i64** %187, align 8
  %188 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %189 = getelementptr inbounds %struct.graph, %struct.graph* %188, i32 0, i32 6
  %190 = load i64*, i64** %189, align 8
  %191 = icmp ne i64* %190, null
  br i1 %191, label %192, label %193

; <label>:192                                     ; preds = %179
  br label %195

; <label>:193                                     ; preds = %179
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 210, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %195

; <label>:195                                     ; preds = %194, %192
  %196 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %197 = getelementptr inbounds %struct.graph, %struct.graph* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = mul i64 %198, 8
  %200 = call noalias i8* @malloc(i64 %199) #4
  %201 = bitcast i8* %200 to i64*
  %202 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %203 = getelementptr inbounds %struct.graph, %struct.graph* %202, i32 0, i32 7
  store i64* %201, i64** %203, align 8
  %204 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %205 = getelementptr inbounds %struct.graph, %struct.graph* %204, i32 0, i32 7
  %206 = load i64*, i64** %205, align 8
  %207 = icmp ne i64* %206, null
  br i1 %207, label %208, label %209

; <label>:208                                     ; preds = %195
  br label %211

; <label>:209                                     ; preds = %195
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 214, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %211

; <label>:211                                     ; preds = %210, %208
  br label %212

; <label>:212                                     ; preds = %211, %118
  call void (...) @thread_barrier_wait()
  %213 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %214 = getelementptr inbounds %struct.graph, %struct.graph* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* %myId, align 8
  %217 = load i64, i64* %numThread, align 8
  call void @createPartition(i64 0, i64 %215, i64 %216, i64 %217, i64* %i_start, i64* %i_stop)
  %218 = load i64, i64* %i_start, align 8
  store i64 %218, i64* %i, align 8
  br label %219

; <label>:219                                     ; preds = %234, %212
  %220 = load i64, i64* %i, align 8
  %221 = load i64, i64* %i_stop, align 8
  %222 = icmp slt i64 %220, %221
  br i1 %222, label %223, label %237

; <label>:223                                     ; preds = %219
  %224 = load i64, i64* %i, align 8
  %225 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %226 = getelementptr inbounds %struct.graph, %struct.graph* %225, i32 0, i32 6
  %227 = load i64*, i64** %226, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 %224
  store i64 0, i64* %228, align 8
  %229 = load i64, i64* %i, align 8
  %230 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %231 = getelementptr inbounds %struct.graph, %struct.graph* %230, i32 0, i32 7
  %232 = load i64*, i64** %231, align 8
  %233 = getelementptr inbounds i64, i64* %232, i64 %229
  store i64 0, i64* %233, align 8
  br label %234

; <label>:234                                     ; preds = %223
  %235 = load i64, i64* %i, align 8
  %236 = add nsw i64 %235, 1
  store i64 %236, i64* %i, align 8
  br label %219

; <label>:237                                     ; preds = %219
  store i64 0, i64* %outVertexListSize, align 8
  call void (...) @thread_barrier_wait()
  store i64 -1, i64* %i0, align 8
  %238 = load i64, i64* %i_start, align 8
  store i64 %238, i64* %i, align 8
  br label %239

; <label>:239                                     ; preds = %444, %237
  %240 = load i64, i64* %i, align 8
  %241 = load i64, i64* %i_stop, align 8
  %242 = icmp slt i64 %240, %241
  br i1 %242, label %243, label %447

; <label>:243                                     ; preds = %239
  %244 = load i64, i64* %i, align 8
  store i64 %244, i64* %k, align 8
  %245 = load i64, i64* %outVertexListSize, align 8
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %278

; <label>:247                                     ; preds = %243
  %248 = load i64, i64* %k, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %278

; <label>:250                                     ; preds = %247
  br label %251

; <label>:251                                     ; preds = %274, %250
  %252 = load i64, i64* %i0, align 8
  %253 = icmp eq i64 %252, -1
  br i1 %253, label %254, label %277

; <label>:254                                     ; preds = %251
  store i64 0, i64* %j, align 8
  br label %255

; <label>:255                                     ; preds = %271, %254
  %256 = load i64, i64* %j, align 8
  %257 = load i64, i64* %numEdgesPlaced, align 8
  %258 = icmp ult i64 %256, %257
  br i1 %258, label %259, label %274

; <label>:259                                     ; preds = %255
  %260 = load i64, i64* %k, align 8
  %261 = load i64, i64* %j, align 8
  %262 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %263 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %262, i32 0, i32 0
  %264 = load i64*, i64** %263, align 8
  %265 = getelementptr inbounds i64, i64* %264, i64 %261
  %266 = load i64, i64* %265, align 8
  %267 = icmp eq i64 %260, %266
  br i1 %267, label %268, label %270

; <label>:268                                     ; preds = %259
  %269 = load i64, i64* %j, align 8
  store i64 %269, i64* %i0, align 8
  br label %274

; <label>:270                                     ; preds = %259
  br label %271

; <label>:271                                     ; preds = %270
  %272 = load i64, i64* %j, align 8
  %273 = add i64 %272, 1
  store i64 %273, i64* %j, align 8
  br label %255

; <label>:274                                     ; preds = %268, %255
  %275 = load i64, i64* %k, align 8
  %276 = add i64 %275, -1
  store i64 %276, i64* %k, align 8
  br label %251

; <label>:277                                     ; preds = %251
  br label %278

; <label>:278                                     ; preds = %277, %247, %243
  %279 = load i64, i64* %outVertexListSize, align 8
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %281, label %285

; <label>:281                                     ; preds = %278
  %282 = load i64, i64* %k, align 8
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %284, label %285

; <label>:284                                     ; preds = %281
  store i64 0, i64* %i0, align 8
  br label %285

; <label>:285                                     ; preds = %284, %281, %278
  %286 = load i64, i64* %i0, align 8
  store i64 %286, i64* %j, align 8
  br label %287

; <label>:287                                     ; preds = %381, %285
  %288 = load i64, i64* %j, align 8
  %289 = load i64, i64* %numEdgesPlaced, align 8
  %290 = icmp ult i64 %288, %289
  br i1 %290, label %291, label %384

; <label>:291                                     ; preds = %287
  %292 = load i64, i64* %i, align 8
  %293 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %294 = getelementptr inbounds %struct.graph, %struct.graph* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = sub i64 %295, 1
  %297 = icmp eq i64 %292, %296
  br i1 %297, label %298, label %299

; <label>:298                                     ; preds = %291
  br label %384

; <label>:299                                     ; preds = %291
  %300 = load i64, i64* %i, align 8
  %301 = load i64, i64* %j, align 8
  %302 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %303 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %302, i32 0, i32 0
  %304 = load i64*, i64** %303, align 8
  %305 = getelementptr inbounds i64, i64* %304, i64 %301
  %306 = load i64, i64* %305, align 8
  %307 = icmp ne i64 %300, %306
  br i1 %307, label %308, label %380

; <label>:308                                     ; preds = %299
  %309 = load i64, i64* %j, align 8
  %310 = icmp ugt i64 %309, 0
  br i1 %310, label %311, label %378

; <label>:311                                     ; preds = %308
  %312 = load i64, i64* %i, align 8
  %313 = load i64, i64* %j, align 8
  %314 = sub i64 %313, 1
  %315 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %316 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %315, i32 0, i32 0
  %317 = load i64*, i64** %316, align 8
  %318 = getelementptr inbounds i64, i64* %317, i64 %314
  %319 = load i64, i64* %318, align 8
  %320 = icmp eq i64 %312, %319
  br i1 %320, label %321, label %378

; <label>:321                                     ; preds = %311
  %322 = load i64, i64* %j, align 8
  %323 = load i64, i64* %i0, align 8
  %324 = sub i64 %322, %323
  %325 = icmp uge i64 %324, 1
  br i1 %325, label %326, label %377

; <label>:326                                     ; preds = %321
  %327 = load i64, i64* %outVertexListSize, align 8
  %328 = add i64 %327, 1
  store i64 %328, i64* %outVertexListSize, align 8
  %329 = load i64, i64* %i, align 8
  %330 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %331 = getelementptr inbounds %struct.graph, %struct.graph* %330, i32 0, i32 6
  %332 = load i64*, i64** %331, align 8
  %333 = getelementptr inbounds i64, i64* %332, i64 %329
  %334 = load i64, i64* %333, align 8
  %335 = add nsw i64 %334, 1
  store i64 %335, i64* %333, align 8
  %336 = load i64, i64* %i0, align 8
  %337 = add i64 %336, 1
  store i64 %337, i64* %t, align 8
  br label %338

; <label>:338                                     ; preds = %373, %326
  %339 = load i64, i64* %t, align 8
  %340 = load i64, i64* %j, align 8
  %341 = icmp ult i64 %339, %340
  br i1 %341, label %342, label %376

; <label>:342                                     ; preds = %338
  %343 = load i64, i64* %t, align 8
  %344 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %345 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %344, i32 0, i32 1
  %346 = load i64*, i64** %345, align 8
  %347 = getelementptr inbounds i64, i64* %346, i64 %343
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* %t, align 8
  %350 = sub i64 %349, 1
  %351 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %352 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %351, i32 0, i32 1
  %353 = load i64*, i64** %352, align 8
  %354 = getelementptr inbounds i64, i64* %353, i64 %350
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %348, %355
  br i1 %356, label %357, label %372

; <label>:357                                     ; preds = %342
  %358 = load i64, i64* %outVertexListSize, align 8
  %359 = add i64 %358, 1
  store i64 %359, i64* %outVertexListSize, align 8
  %360 = load i64, i64* %i, align 8
  %361 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %362 = getelementptr inbounds %struct.graph, %struct.graph* %361, i32 0, i32 6
  %363 = load i64*, i64** %362, align 8
  %364 = getelementptr inbounds i64, i64* %363, i64 %360
  %365 = load i64, i64* %364, align 8
  %366 = add nsw i64 %365, 1
  %367 = load i64, i64* %i, align 8
  %368 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %369 = getelementptr inbounds %struct.graph, %struct.graph* %368, i32 0, i32 6
  %370 = load i64*, i64** %369, align 8
  %371 = getelementptr inbounds i64, i64* %370, i64 %367
  store i64 %366, i64* %371, align 8
  br label %372

; <label>:372                                     ; preds = %357, %342
  br label %373

; <label>:373                                     ; preds = %372
  %374 = load i64, i64* %t, align 8
  %375 = add i64 %374, 1
  store i64 %375, i64* %t, align 8
  br label %338

; <label>:376                                     ; preds = %338
  br label %377

; <label>:377                                     ; preds = %376, %321
  br label %378

; <label>:378                                     ; preds = %377, %311, %308
  %379 = load i64, i64* %j, align 8
  store i64 %379, i64* %i0, align 8
  br label %384

; <label>:380                                     ; preds = %299
  br label %381

; <label>:381                                     ; preds = %380
  %382 = load i64, i64* %j, align 8
  %383 = add i64 %382, 1
  store i64 %383, i64* %j, align 8
  br label %287

; <label>:384                                     ; preds = %378, %298, %287
  %385 = load i64, i64* %i, align 8
  %386 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %387 = getelementptr inbounds %struct.graph, %struct.graph* %386, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = sub i64 %388, 1
  %390 = icmp eq i64 %385, %389
  br i1 %390, label %391, label %443

; <label>:391                                     ; preds = %384
  %392 = load i64, i64* %numEdgesPlaced, align 8
  %393 = load i64, i64* %i0, align 8
  %394 = sub i64 %392, %393
  %395 = icmp uge i64 %394, 0
  br i1 %395, label %396, label %442

; <label>:396                                     ; preds = %391
  %397 = load i64, i64* %outVertexListSize, align 8
  %398 = add i64 %397, 1
  store i64 %398, i64* %outVertexListSize, align 8
  %399 = load i64, i64* %i, align 8
  %400 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %401 = getelementptr inbounds %struct.graph, %struct.graph* %400, i32 0, i32 6
  %402 = load i64*, i64** %401, align 8
  %403 = getelementptr inbounds i64, i64* %402, i64 %399
  %404 = load i64, i64* %403, align 8
  %405 = add nsw i64 %404, 1
  store i64 %405, i64* %403, align 8
  %406 = load i64, i64* %i0, align 8
  %407 = add i64 %406, 1
  store i64 %407, i64* %t1, align 8
  br label %408

; <label>:408                                     ; preds = %438, %396
  %409 = load i64, i64* %t1, align 8
  %410 = load i64, i64* %numEdgesPlaced, align 8
  %411 = icmp ult i64 %409, %410
  br i1 %411, label %412, label %441

; <label>:412                                     ; preds = %408
  %413 = load i64, i64* %t1, align 8
  %414 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %415 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %414, i32 0, i32 1
  %416 = load i64*, i64** %415, align 8
  %417 = getelementptr inbounds i64, i64* %416, i64 %413
  %418 = load i64, i64* %417, align 8
  %419 = load i64, i64* %t1, align 8
  %420 = sub i64 %419, 1
  %421 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %422 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %421, i32 0, i32 1
  %423 = load i64*, i64** %422, align 8
  %424 = getelementptr inbounds i64, i64* %423, i64 %420
  %425 = load i64, i64* %424, align 8
  %426 = icmp ne i64 %418, %425
  br i1 %426, label %427, label %437

; <label>:427                                     ; preds = %412
  %428 = load i64, i64* %outVertexListSize, align 8
  %429 = add i64 %428, 1
  store i64 %429, i64* %outVertexListSize, align 8
  %430 = load i64, i64* %i, align 8
  %431 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %432 = getelementptr inbounds %struct.graph, %struct.graph* %431, i32 0, i32 6
  %433 = load i64*, i64** %432, align 8
  %434 = getelementptr inbounds i64, i64* %433, i64 %430
  %435 = load i64, i64* %434, align 8
  %436 = add nsw i64 %435, 1
  store i64 %436, i64* %434, align 8
  br label %437

; <label>:437                                     ; preds = %427, %412
  br label %438

; <label>:438                                     ; preds = %437
  %439 = load i64, i64* %t1, align 8
  %440 = add i64 %439, 1
  store i64 %440, i64* %t1, align 8
  br label %408

; <label>:441                                     ; preds = %408
  br label %442

; <label>:442                                     ; preds = %441, %391
  br label %443

; <label>:443                                     ; preds = %442, %384
  br label %444

; <label>:444                                     ; preds = %443
  %445 = load i64, i64* %i, align 8
  %446 = add nsw i64 %445, 1
  store i64 %446, i64* %i, align 8
  br label %239

; <label>:447                                     ; preds = %239
  call void (...) @thread_barrier_wait()
  %448 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %449 = getelementptr inbounds %struct.graph, %struct.graph* %448, i32 0, i32 7
  %450 = load i64*, i64** %449, align 8
  %451 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %452 = getelementptr inbounds %struct.graph, %struct.graph* %451, i32 0, i32 6
  %453 = load i64*, i64** %452, align 8
  %454 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %455 = getelementptr inbounds %struct.graph, %struct.graph* %454, i32 0, i32 0
  %456 = load i64, i64* %455, align 8
  call void @prefix_sums(i64* %450, i64* %453, i64 %456)
  call void (...) @thread_barrier_wait()
  store i32 -1, i32* %__status2, align 4
  store i32 9, i32* %tries3, align 4
  br label %457

; <label>:457                                     ; preds = %478, %447
  br label %458

; <label>:458                                     ; preds = %461, %457
  %459 = call i64 (...) @RTM_fallback_isLocked()
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %462

; <label>:461                                     ; preds = %458
  call void @llvm.x86.sse2.pause() #4
  br label %458

; <label>:462                                     ; preds = %458
  %463 = load i32, i32* %tries3, align 4
  %464 = add nsw i32 %463, -1
  store i32 %464, i32* %tries3, align 4
  %465 = load i32, i32* %tries3, align 4
  %466 = icmp sle i32 %465, 0
  br i1 %466, label %467, label %468

; <label>:467                                     ; preds = %462
  call void (...) @RTM_fallback_lock()
  br label %485

; <label>:468                                     ; preds = %462
  store i64 8, i64* %5, align 8
  store i64 0, i64* %handler.i12, align 8
  store i64 4294967295, i64* %ret.i13, align 8
  %469 = load i64, i64* %ret.i13, align 8
  %470 = load i64, i64* %5, align 8
  %471 = load i64, i64* %handler.i12, align 8
  %472 = load i64, i64* %5, align 8
  %473 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %470, i64 %471, i64 %472, i64 %469) #4, !srcloc !1
  store i64 %473, i64* %ret.i13, align 8
  %474 = load i64, i64* %ret.i13, align 8
  %475 = trunc i64 %474 to i32
  store i32 %475, i32* %__status2, align 4
  %476 = load i32, i32* %__status2, align 4
  %477 = icmp ne i32 %476, -1
  br i1 %477, label %478, label %479

; <label>:478                                     ; preds = %468
  br label %457

; <label>:479                                     ; preds = %468
  %480 = call i64 (...) @RTM_fallback_isLocked()
  %481 = icmp ne i64 %480, 0
  br i1 %481, label %482, label %484

; <label>:482                                     ; preds = %479
  store i64 255, i64* %4, align 8
  %483 = load i64, i64* %4, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %483) #4, !srcloc !2
  br label %484

; <label>:484                                     ; preds = %482, %479
  br label %485

; <label>:485                                     ; preds = %484, %467
  %486 = load i64, i64* @global_outVertexListSize, align 8
  %487 = load i64, i64* %outVertexListSize, align 8
  %488 = add i64 %486, %487
  store i64 %488, i64* @global_outVertexListSize, align 8
  %489 = load i64, i64* @global_outVertexListSize, align 8
  store i64 %489, i64* %13, align 8
  %490 = load i64, i64* %13, align 8
  %491 = load i32, i32* %tries3, align 4
  %492 = icmp sgt i32 %491, 0
  br i1 %492, label %493, label %495

; <label>:493                                     ; preds = %485
  store i64 8, i64* %3, align 8
  %494 = load i64, i64* %3, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %494) #4, !srcloc !3
  br label %496

; <label>:495                                     ; preds = %485
  call void (...) @RTM_fallback_unlock()
  br label %496

; <label>:496                                     ; preds = %495, %493
  call void (...) @thread_barrier_wait()
  %497 = load i64, i64* @global_outVertexListSize, align 8
  store i64 %497, i64* %outVertexListSize, align 8
  %498 = load i64, i64* %myId, align 8
  %499 = icmp eq i64 %498, 0
  br i1 %499, label %500, label %541

; <label>:500                                     ; preds = %496
  %501 = load i64, i64* %outVertexListSize, align 8
  %502 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %503 = getelementptr inbounds %struct.graph, %struct.graph* %502, i32 0, i32 2
  store i64 %501, i64* %503, align 8
  %504 = load i64, i64* %outVertexListSize, align 8
  %505 = mul i64 %504, 8
  %506 = call noalias i8* @malloc(i64 %505) #4
  %507 = bitcast i8* %506 to i64*
  %508 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %509 = getelementptr inbounds %struct.graph, %struct.graph* %508, i32 0, i32 8
  store i64* %507, i64** %509, align 8
  %510 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %511 = getelementptr inbounds %struct.graph, %struct.graph* %510, i32 0, i32 8
  %512 = load i64*, i64** %511, align 8
  %513 = icmp ne i64* %512, null
  br i1 %513, label %514, label %515

; <label>:514                                     ; preds = %500
  br label %517

; <label>:515                                     ; preds = %500
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 314, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %517

; <label>:517                                     ; preds = %516, %514
  %518 = load i64, i64* %outVertexListSize, align 8
  %519 = mul i64 %518, 8
  %520 = call noalias i8* @malloc(i64 %519) #4
  %521 = bitcast i8* %520 to i64*
  %522 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %523 = getelementptr inbounds %struct.graph, %struct.graph* %522, i32 0, i32 9
  store i64* %521, i64** %523, align 8
  %524 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %525 = getelementptr inbounds %struct.graph, %struct.graph* %524, i32 0, i32 9
  %526 = load i64*, i64** %525, align 8
  %527 = icmp ne i64* %526, null
  br i1 %527, label %528, label %529

; <label>:528                                     ; preds = %517
  br label %531

; <label>:529                                     ; preds = %517
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 317, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %531

; <label>:531                                     ; preds = %530, %528
  %532 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %533 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %532, i32 0, i32 1
  %534 = load i64*, i64** %533, align 8
  %535 = getelementptr inbounds i64, i64* %534, i64 0
  %536 = load i64, i64* %535, align 8
  %537 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %538 = getelementptr inbounds %struct.graph, %struct.graph* %537, i32 0, i32 8
  %539 = load i64*, i64** %538, align 8
  %540 = getelementptr inbounds i64, i64* %539, i64 0
  store i64 %536, i64* %540, align 8
  br label %541

; <label>:541                                     ; preds = %531, %496
  call void (...) @thread_barrier_wait()
  store i64 -1, i64* %i0, align 8
  %542 = load i64, i64* %i_start, align 8
  store i64 %542, i64* %i, align 8
  br label %543

; <label>:543                                     ; preds = %805, %541
  %544 = load i64, i64* %i, align 8
  %545 = load i64, i64* %i_stop, align 8
  %546 = icmp slt i64 %544, %545
  br i1 %546, label %547, label %808

; <label>:547                                     ; preds = %543
  %548 = load i64, i64* %i, align 8
  store i64 %548, i64* %k4, align 8
  br label %549

; <label>:549                                     ; preds = %577, %547
  %550 = load i64, i64* %i0, align 8
  %551 = icmp eq i64 %550, -1
  br i1 %551, label %552, label %555

; <label>:552                                     ; preds = %549
  %553 = load i64, i64* %k4, align 8
  %554 = icmp ne i64 %553, 0
  br label %555

; <label>:555                                     ; preds = %552, %549
  %556 = phi i1 [ false, %549 ], [ %554, %552 ]
  br i1 %556, label %557, label %580

; <label>:557                                     ; preds = %555
  store i64 0, i64* %j, align 8
  br label %558

; <label>:558                                     ; preds = %574, %557
  %559 = load i64, i64* %j, align 8
  %560 = load i64, i64* %numEdgesPlaced, align 8
  %561 = icmp ult i64 %559, %560
  br i1 %561, label %562, label %577

; <label>:562                                     ; preds = %558
  %563 = load i64, i64* %k4, align 8
  %564 = load i64, i64* %j, align 8
  %565 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %566 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %565, i32 0, i32 0
  %567 = load i64*, i64** %566, align 8
  %568 = getelementptr inbounds i64, i64* %567, i64 %564
  %569 = load i64, i64* %568, align 8
  %570 = icmp eq i64 %563, %569
  br i1 %570, label %571, label %573

; <label>:571                                     ; preds = %562
  %572 = load i64, i64* %j, align 8
  store i64 %572, i64* %i0, align 8
  br label %577

; <label>:573                                     ; preds = %562
  br label %574

; <label>:574                                     ; preds = %573
  %575 = load i64, i64* %j, align 8
  %576 = add i64 %575, 1
  store i64 %576, i64* %j, align 8
  br label %558

; <label>:577                                     ; preds = %571, %558
  %578 = load i64, i64* %k4, align 8
  %579 = add i64 %578, -1
  store i64 %579, i64* %k4, align 8
  br label %549

; <label>:580                                     ; preds = %555
  %581 = load i64, i64* %i0, align 8
  %582 = icmp eq i64 %581, -1
  br i1 %582, label %583, label %587

; <label>:583                                     ; preds = %580
  %584 = load i64, i64* %k4, align 8
  %585 = icmp eq i64 %584, 0
  br i1 %585, label %586, label %587

; <label>:586                                     ; preds = %583
  store i64 0, i64* %i0, align 8
  br label %587

; <label>:587                                     ; preds = %586, %583, %580
  %588 = load i64, i64* %i0, align 8
  store i64 %588, i64* %j, align 8
  br label %589

; <label>:589                                     ; preds = %708, %587
  %590 = load i64, i64* %j, align 8
  %591 = load i64, i64* %numEdgesPlaced, align 8
  %592 = icmp ult i64 %590, %591
  br i1 %592, label %593, label %711

; <label>:593                                     ; preds = %589
  %594 = load i64, i64* %i, align 8
  %595 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %596 = getelementptr inbounds %struct.graph, %struct.graph* %595, i32 0, i32 0
  %597 = load i64, i64* %596, align 8
  %598 = sub i64 %597, 1
  %599 = icmp eq i64 %594, %598
  br i1 %599, label %600, label %601

; <label>:600                                     ; preds = %593
  br label %711

; <label>:601                                     ; preds = %593
  %602 = load i64, i64* %i, align 8
  %603 = load i64, i64* %j, align 8
  %604 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %605 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %604, i32 0, i32 0
  %606 = load i64*, i64** %605, align 8
  %607 = getelementptr inbounds i64, i64* %606, i64 %603
  %608 = load i64, i64* %607, align 8
  %609 = icmp ne i64 %602, %608
  br i1 %609, label %610, label %707

; <label>:610                                     ; preds = %601
  %611 = load i64, i64* %j, align 8
  %612 = icmp ugt i64 %611, 0
  br i1 %612, label %613, label %705

; <label>:613                                     ; preds = %610
  %614 = load i64, i64* %i, align 8
  %615 = load i64, i64* %j, align 8
  %616 = sub i64 %615, 1
  %617 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %618 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %617, i32 0, i32 0
  %619 = load i64*, i64** %618, align 8
  %620 = getelementptr inbounds i64, i64* %619, i64 %616
  %621 = load i64, i64* %620, align 8
  %622 = icmp eq i64 %614, %621
  br i1 %622, label %623, label %705

; <label>:623                                     ; preds = %613
  %624 = load i64, i64* %j, align 8
  %625 = load i64, i64* %i0, align 8
  %626 = sub i64 %624, %625
  %627 = icmp uge i64 %626, 1
  br i1 %627, label %628, label %704

; <label>:628                                     ; preds = %623
  %629 = load i64, i64* %i, align 8
  %630 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %631 = getelementptr inbounds %struct.graph, %struct.graph* %630, i32 0, i32 7
  %632 = load i64*, i64** %631, align 8
  %633 = getelementptr inbounds i64, i64* %632, i64 %629
  %634 = load i64, i64* %633, align 8
  store i64 %634, i64* %ii, align 8
  store i64 0, i64* %r, align 8
  %635 = load i64, i64* %i0, align 8
  %636 = load i64, i64* %ii, align 8
  %637 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %638 = getelementptr inbounds %struct.graph, %struct.graph* %637, i32 0, i32 9
  %639 = load i64*, i64** %638, align 8
  %640 = getelementptr inbounds i64, i64* %639, i64 %636
  store i64 %635, i64* %640, align 8
  %641 = load i64, i64* %i0, align 8
  %642 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %643 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %642, i32 0, i32 1
  %644 = load i64*, i64** %643, align 8
  %645 = getelementptr inbounds i64, i64* %644, i64 %641
  %646 = load i64, i64* %645, align 8
  %647 = load i64, i64* %ii, align 8
  %648 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %649 = getelementptr inbounds %struct.graph, %struct.graph* %648, i32 0, i32 8
  %650 = load i64*, i64** %649, align 8
  %651 = getelementptr inbounds i64, i64* %650, i64 %647
  store i64 %646, i64* %651, align 8
  %652 = load i64, i64* %r, align 8
  %653 = add i64 %652, 1
  store i64 %653, i64* %r, align 8
  %654 = load i64, i64* %i0, align 8
  %655 = add i64 %654, 1
  store i64 %655, i64* %t5, align 8
  br label %656

; <label>:656                                     ; preds = %700, %628
  %657 = load i64, i64* %t5, align 8
  %658 = load i64, i64* %j, align 8
  %659 = icmp ult i64 %657, %658
  br i1 %659, label %660, label %703

; <label>:660                                     ; preds = %656
  %661 = load i64, i64* %t5, align 8
  %662 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %663 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %662, i32 0, i32 1
  %664 = load i64*, i64** %663, align 8
  %665 = getelementptr inbounds i64, i64* %664, i64 %661
  %666 = load i64, i64* %665, align 8
  %667 = load i64, i64* %t5, align 8
  %668 = sub i64 %667, 1
  %669 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %670 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %669, i32 0, i32 1
  %671 = load i64*, i64** %670, align 8
  %672 = getelementptr inbounds i64, i64* %671, i64 %668
  %673 = load i64, i64* %672, align 8
  %674 = icmp ne i64 %666, %673
  br i1 %674, label %675, label %699

; <label>:675                                     ; preds = %660
  %676 = load i64, i64* %t5, align 8
  %677 = load i64, i64* %ii, align 8
  %678 = load i64, i64* %r, align 8
  %679 = add i64 %677, %678
  %680 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %681 = getelementptr inbounds %struct.graph, %struct.graph* %680, i32 0, i32 9
  %682 = load i64*, i64** %681, align 8
  %683 = getelementptr inbounds i64, i64* %682, i64 %679
  store i64 %676, i64* %683, align 8
  %684 = load i64, i64* %t5, align 8
  %685 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %686 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %685, i32 0, i32 1
  %687 = load i64*, i64** %686, align 8
  %688 = getelementptr inbounds i64, i64* %687, i64 %684
  %689 = load i64, i64* %688, align 8
  %690 = load i64, i64* %ii, align 8
  %691 = load i64, i64* %r, align 8
  %692 = add i64 %690, %691
  %693 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %694 = getelementptr inbounds %struct.graph, %struct.graph* %693, i32 0, i32 8
  %695 = load i64*, i64** %694, align 8
  %696 = getelementptr inbounds i64, i64* %695, i64 %692
  store i64 %689, i64* %696, align 8
  %697 = load i64, i64* %r, align 8
  %698 = add i64 %697, 1
  store i64 %698, i64* %r, align 8
  br label %699

; <label>:699                                     ; preds = %675, %660
  br label %700

; <label>:700                                     ; preds = %699
  %701 = load i64, i64* %t5, align 8
  %702 = add i64 %701, 1
  store i64 %702, i64* %t5, align 8
  br label %656

; <label>:703                                     ; preds = %656
  br label %704

; <label>:704                                     ; preds = %703, %623
  br label %705

; <label>:705                                     ; preds = %704, %613, %610
  %706 = load i64, i64* %j, align 8
  store i64 %706, i64* %i0, align 8
  br label %711

; <label>:707                                     ; preds = %601
  br label %708

; <label>:708                                     ; preds = %707
  %709 = load i64, i64* %j, align 8
  %710 = add i64 %709, 1
  store i64 %710, i64* %j, align 8
  br label %589

; <label>:711                                     ; preds = %705, %600, %589
  %712 = load i64, i64* %i, align 8
  %713 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %714 = getelementptr inbounds %struct.graph, %struct.graph* %713, i32 0, i32 0
  %715 = load i64, i64* %714, align 8
  %716 = sub i64 %715, 1
  %717 = icmp eq i64 %712, %716
  br i1 %717, label %718, label %804

; <label>:718                                     ; preds = %711
  store i64 0, i64* %r6, align 8
  %719 = load i64, i64* %numEdgesPlaced, align 8
  %720 = load i64, i64* %i0, align 8
  %721 = sub i64 %719, %720
  %722 = icmp uge i64 %721, 0
  br i1 %722, label %723, label %803

; <label>:723                                     ; preds = %718
  %724 = load i64, i64* %i, align 8
  %725 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %726 = getelementptr inbounds %struct.graph, %struct.graph* %725, i32 0, i32 7
  %727 = load i64*, i64** %726, align 8
  %728 = getelementptr inbounds i64, i64* %727, i64 %724
  %729 = load i64, i64* %728, align 8
  store i64 %729, i64* %ii7, align 8
  %730 = load i64, i64* %i0, align 8
  %731 = load i64, i64* %ii7, align 8
  %732 = load i64, i64* %r6, align 8
  %733 = add i64 %731, %732
  %734 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %735 = getelementptr inbounds %struct.graph, %struct.graph* %734, i32 0, i32 9
  %736 = load i64*, i64** %735, align 8
  %737 = getelementptr inbounds i64, i64* %736, i64 %733
  store i64 %730, i64* %737, align 8
  %738 = load i64, i64* %i0, align 8
  %739 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %740 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %739, i32 0, i32 1
  %741 = load i64*, i64** %740, align 8
  %742 = getelementptr inbounds i64, i64* %741, i64 %738
  %743 = load i64, i64* %742, align 8
  %744 = load i64, i64* %ii7, align 8
  %745 = load i64, i64* %r6, align 8
  %746 = add i64 %744, %745
  %747 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %748 = getelementptr inbounds %struct.graph, %struct.graph* %747, i32 0, i32 8
  %749 = load i64*, i64** %748, align 8
  %750 = getelementptr inbounds i64, i64* %749, i64 %746
  store i64 %743, i64* %750, align 8
  %751 = load i64, i64* %r6, align 8
  %752 = add i64 %751, 1
  store i64 %752, i64* %r6, align 8
  %753 = load i64, i64* %i0, align 8
  %754 = add i64 %753, 1
  store i64 %754, i64* %t8, align 8
  br label %755

; <label>:755                                     ; preds = %799, %723
  %756 = load i64, i64* %t8, align 8
  %757 = load i64, i64* %numEdgesPlaced, align 8
  %758 = icmp ult i64 %756, %757
  br i1 %758, label %759, label %802

; <label>:759                                     ; preds = %755
  %760 = load i64, i64* %t8, align 8
  %761 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %762 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %761, i32 0, i32 1
  %763 = load i64*, i64** %762, align 8
  %764 = getelementptr inbounds i64, i64* %763, i64 %760
  %765 = load i64, i64* %764, align 8
  %766 = load i64, i64* %t8, align 8
  %767 = sub i64 %766, 1
  %768 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %769 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %768, i32 0, i32 1
  %770 = load i64*, i64** %769, align 8
  %771 = getelementptr inbounds i64, i64* %770, i64 %767
  %772 = load i64, i64* %771, align 8
  %773 = icmp ne i64 %765, %772
  br i1 %773, label %774, label %798

; <label>:774                                     ; preds = %759
  %775 = load i64, i64* %t8, align 8
  %776 = load i64, i64* %ii7, align 8
  %777 = load i64, i64* %r6, align 8
  %778 = add i64 %776, %777
  %779 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %780 = getelementptr inbounds %struct.graph, %struct.graph* %779, i32 0, i32 9
  %781 = load i64*, i64** %780, align 8
  %782 = getelementptr inbounds i64, i64* %781, i64 %778
  store i64 %775, i64* %782, align 8
  %783 = load i64, i64* %t8, align 8
  %784 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %785 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %784, i32 0, i32 1
  %786 = load i64*, i64** %785, align 8
  %787 = getelementptr inbounds i64, i64* %786, i64 %783
  %788 = load i64, i64* %787, align 8
  %789 = load i64, i64* %ii7, align 8
  %790 = load i64, i64* %r6, align 8
  %791 = add i64 %789, %790
  %792 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %793 = getelementptr inbounds %struct.graph, %struct.graph* %792, i32 0, i32 8
  %794 = load i64*, i64** %793, align 8
  %795 = getelementptr inbounds i64, i64* %794, i64 %791
  store i64 %788, i64* %795, align 8
  %796 = load i64, i64* %r6, align 8
  %797 = add i64 %796, 1
  store i64 %797, i64* %r6, align 8
  br label %798

; <label>:798                                     ; preds = %774, %759
  br label %799

; <label>:799                                     ; preds = %798
  %800 = load i64, i64* %t8, align 8
  %801 = add i64 %800, 1
  store i64 %801, i64* %t8, align 8
  br label %755

; <label>:802                                     ; preds = %755
  br label %803

; <label>:803                                     ; preds = %802, %718
  br label %804

; <label>:804                                     ; preds = %803, %711
  br label %805

; <label>:805                                     ; preds = %804
  %806 = load i64, i64* %i, align 8
  %807 = add nsw i64 %806, 1
  store i64 %807, i64* %i, align 8
  br label %543

; <label>:808                                     ; preds = %543
  call void (...) @thread_barrier_wait()
  %809 = load i64, i64* %myId, align 8
  %810 = icmp eq i64 %809, 0
  br i1 %810, label %811, label %852

; <label>:811                                     ; preds = %808
  %812 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %813 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %812, i32 0, i32 0
  %814 = load i64*, i64** %813, align 8
  %815 = bitcast i64* %814 to i8*
  call void @free(i8* %815) #4
  %816 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %817 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %816, i32 0, i32 1
  %818 = load i64*, i64** %817, align 8
  %819 = bitcast i64* %818 to i8*
  call void @free(i8* %819) #4
  %820 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %821 = getelementptr inbounds %struct.graph, %struct.graph* %820, i32 0, i32 0
  %822 = load i64, i64* %821, align 8
  %823 = mul i64 %822, 8
  %824 = call noalias i8* @malloc(i64 %823) #4
  %825 = bitcast i8* %824 to i64*
  %826 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %827 = getelementptr inbounds %struct.graph, %struct.graph* %826, i32 0, i32 10
  store i64* %825, i64** %827, align 8
  %828 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %829 = getelementptr inbounds %struct.graph, %struct.graph* %828, i32 0, i32 10
  %830 = load i64*, i64** %829, align 8
  %831 = icmp ne i64* %830, null
  br i1 %831, label %832, label %833

; <label>:832                                     ; preds = %811
  br label %835

; <label>:833                                     ; preds = %811
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 403, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %835

; <label>:835                                     ; preds = %834, %832
  %836 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %837 = getelementptr inbounds %struct.graph, %struct.graph* %836, i32 0, i32 0
  %838 = load i64, i64* %837, align 8
  %839 = mul i64 %838, 8
  %840 = call noalias i8* @malloc(i64 %839) #4
  %841 = bitcast i8* %840 to i64*
  %842 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %843 = getelementptr inbounds %struct.graph, %struct.graph* %842, i32 0, i32 11
  store i64* %841, i64** %843, align 8
  %844 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %845 = getelementptr inbounds %struct.graph, %struct.graph* %844, i32 0, i32 11
  %846 = load i64*, i64** %845, align 8
  %847 = icmp ne i64* %846, null
  br i1 %847, label %848, label %849

; <label>:848                                     ; preds = %835
  br label %851

; <label>:849                                     ; preds = %835
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 406, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %851

; <label>:851                                     ; preds = %850, %848
  br label %852

; <label>:852                                     ; preds = %851, %808
  call void (...) @thread_barrier_wait()
  %853 = load i64, i64* %i_start, align 8
  store i64 %853, i64* %i, align 8
  br label %854

; <label>:854                                     ; preds = %869, %852
  %855 = load i64, i64* %i, align 8
  %856 = load i64, i64* %i_stop, align 8
  %857 = icmp slt i64 %855, %856
  br i1 %857, label %858, label %872

; <label>:858                                     ; preds = %854
  %859 = load i64, i64* %i, align 8
  %860 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %861 = getelementptr inbounds %struct.graph, %struct.graph* %860, i32 0, i32 10
  %862 = load i64*, i64** %861, align 8
  %863 = getelementptr inbounds i64, i64* %862, i64 %859
  store i64 0, i64* %863, align 8
  %864 = load i64, i64* %i, align 8
  %865 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %866 = getelementptr inbounds %struct.graph, %struct.graph* %865, i32 0, i32 11
  %867 = load i64*, i64** %866, align 8
  %868 = getelementptr inbounds i64, i64* %867, i64 %864
  store i64 0, i64* %868, align 8
  br label %869

; <label>:869                                     ; preds = %858
  %870 = load i64, i64* %i, align 8
  %871 = add nsw i64 %870, 1
  store i64 %871, i64* %i, align 8
  br label %854

; <label>:872                                     ; preds = %854
  %873 = load i64, i64* %myId, align 8
  %874 = icmp eq i64 %873, 0
  br i1 %874, label %875, label %885

; <label>:875                                     ; preds = %872
  %876 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %877 = getelementptr inbounds %struct.graph, %struct.graph* %876, i32 0, i32 0
  %878 = load i64, i64* %877, align 8
  %879 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %880 = mul i64 %878, %879
  %881 = mul i64 %880, 8
  %882 = call noalias i8* @malloc(i64 %881) #4
  %883 = bitcast i8* %882 to i64*
  store i64* %883, i64** %impliedEdgeList, align 8
  %884 = load i64*, i64** %impliedEdgeList, align 8
  store i64* %884, i64** @global_impliedEdgeList, align 8
  br label %885

; <label>:885                                     ; preds = %875, %872
  call void (...) @thread_barrier_wait()
  %886 = load i64*, i64** @global_impliedEdgeList, align 8
  store i64* %886, i64** %impliedEdgeList, align 8
  %887 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %888 = getelementptr inbounds %struct.graph, %struct.graph* %887, i32 0, i32 0
  %889 = load i64, i64* %888, align 8
  %890 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %891 = mul i64 %889, %890
  %892 = load i64, i64* %myId, align 8
  %893 = load i64, i64* %numThread, align 8
  call void @createPartition(i64 0, i64 %891, i64 %892, i64 %893, i64* %i_start, i64* %i_stop)
  %894 = load i64, i64* %i_start, align 8
  store i64 %894, i64* %i, align 8
  br label %895

; <label>:895                                     ; preds = %903, %885
  %896 = load i64, i64* %i, align 8
  %897 = load i64, i64* %i_stop, align 8
  %898 = icmp slt i64 %896, %897
  br i1 %898, label %899, label %906

; <label>:899                                     ; preds = %895
  %900 = load i64, i64* %i, align 8
  %901 = load i64*, i64** %impliedEdgeList, align 8
  %902 = getelementptr inbounds i64, i64* %901, i64 %900
  store i64 0, i64* %902, align 8
  br label %903

; <label>:903                                     ; preds = %899
  %904 = load i64, i64* %i, align 8
  %905 = add nsw i64 %904, 1
  store i64 %905, i64* %i, align 8
  br label %895

; <label>:906                                     ; preds = %895
  %907 = load i64, i64* %myId, align 8
  %908 = icmp eq i64 %907, 0
  br i1 %908, label %909, label %923

; <label>:909                                     ; preds = %906
  %910 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %911 = getelementptr inbounds %struct.graph, %struct.graph* %910, i32 0, i32 0
  %912 = load i64, i64* %911, align 8
  %913 = mul i64 %912, 8
  %914 = call noalias i8* @malloc(i64 %913) #4
  %915 = bitcast i8* %914 to i64**
  store i64** %915, i64*** %auxArr, align 8
  %916 = load i64**, i64*** %auxArr, align 8
  %917 = icmp ne i64** %916, null
  br i1 %917, label %918, label %919

; <label>:918                                     ; preds = %909
  br label %921

; <label>:919                                     ; preds = %909
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 448, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %921

; <label>:921                                     ; preds = %920, %918
  %922 = load i64**, i64*** %auxArr, align 8
  store i64** %922, i64*** @global_auxArr, align 8
  br label %923

; <label>:923                                     ; preds = %921, %906
  call void (...) @thread_barrier_wait()
  %924 = load i64**, i64*** @global_auxArr, align 8
  store i64** %924, i64*** %auxArr, align 8
  %925 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %926 = getelementptr inbounds %struct.graph, %struct.graph* %925, i32 0, i32 0
  %927 = load i64, i64* %926, align 8
  %928 = load i64, i64* %myId, align 8
  %929 = load i64, i64* %numThread, align 8
  call void @createPartition(i64 0, i64 %927, i64 %928, i64 %929, i64* %i_start, i64* %i_stop)
  %930 = load i64, i64* %i_start, align 8
  store i64 %930, i64* %i, align 8
  br label %931

; <label>:931                                     ; preds = %1144, %923
  %932 = load i64, i64* %i, align 8
  %933 = load i64, i64* %i_stop, align 8
  %934 = icmp slt i64 %932, %933
  br i1 %934, label %935, label %1147

; <label>:935                                     ; preds = %931
  %936 = load i64, i64* %i, align 8
  %937 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %938 = getelementptr inbounds %struct.graph, %struct.graph* %937, i32 0, i32 7
  %939 = load i64*, i64** %938, align 8
  %940 = getelementptr inbounds i64, i64* %939, i64 %936
  %941 = load i64, i64* %940, align 8
  store i64 %941, i64* %j, align 8
  br label %942

; <label>:942                                     ; preds = %1140, %935
  %943 = load i64, i64* %j, align 8
  %944 = load i64, i64* %i, align 8
  %945 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %946 = getelementptr inbounds %struct.graph, %struct.graph* %945, i32 0, i32 7
  %947 = load i64*, i64** %946, align 8
  %948 = getelementptr inbounds i64, i64* %947, i64 %944
  %949 = load i64, i64* %948, align 8
  %950 = load i64, i64* %i, align 8
  %951 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %952 = getelementptr inbounds %struct.graph, %struct.graph* %951, i32 0, i32 6
  %953 = load i64*, i64** %952, align 8
  %954 = getelementptr inbounds i64, i64* %953, i64 %950
  %955 = load i64, i64* %954, align 8
  %956 = add i64 %949, %955
  %957 = icmp ult i64 %943, %956
  br i1 %957, label %958, label %1143

; <label>:958                                     ; preds = %942
  %959 = load i64, i64* %j, align 8
  %960 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %961 = getelementptr inbounds %struct.graph, %struct.graph* %960, i32 0, i32 8
  %962 = load i64*, i64** %961, align 8
  %963 = getelementptr inbounds i64, i64* %962, i64 %959
  %964 = load i64, i64* %963, align 8
  store i64 %964, i64* %v, align 8
  %965 = load i64, i64* %v, align 8
  %966 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %967 = getelementptr inbounds %struct.graph, %struct.graph* %966, i32 0, i32 7
  %968 = load i64*, i64** %967, align 8
  %969 = getelementptr inbounds i64, i64* %968, i64 %965
  %970 = load i64, i64* %969, align 8
  store i64 %970, i64* %k9, align 8
  br label %971

; <label>:971                                     ; preds = %998, %958
  %972 = load i64, i64* %k9, align 8
  %973 = load i64, i64* %v, align 8
  %974 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %975 = getelementptr inbounds %struct.graph, %struct.graph* %974, i32 0, i32 7
  %976 = load i64*, i64** %975, align 8
  %977 = getelementptr inbounds i64, i64* %976, i64 %973
  %978 = load i64, i64* %977, align 8
  %979 = load i64, i64* %v, align 8
  %980 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %981 = getelementptr inbounds %struct.graph, %struct.graph* %980, i32 0, i32 6
  %982 = load i64*, i64** %981, align 8
  %983 = getelementptr inbounds i64, i64* %982, i64 %979
  %984 = load i64, i64* %983, align 8
  %985 = add i64 %978, %984
  %986 = icmp ult i64 %972, %985
  br i1 %986, label %987, label %1001

; <label>:987                                     ; preds = %971
  %988 = load i64, i64* %k9, align 8
  %989 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %990 = getelementptr inbounds %struct.graph, %struct.graph* %989, i32 0, i32 8
  %991 = load i64*, i64** %990, align 8
  %992 = getelementptr inbounds i64, i64* %991, i64 %988
  %993 = load i64, i64* %992, align 8
  %994 = load i64, i64* %i, align 8
  %995 = icmp eq i64 %993, %994
  br i1 %995, label %996, label %997

; <label>:996                                     ; preds = %987
  br label %1001

; <label>:997                                     ; preds = %987
  br label %998

; <label>:998                                     ; preds = %997
  %999 = load i64, i64* %k9, align 8
  %1000 = add i64 %999, 1
  store i64 %1000, i64* %k9, align 8
  br label %971

; <label>:1001                                    ; preds = %996, %971
  %1002 = load i64, i64* %k9, align 8
  %1003 = load i64, i64* %v, align 8
  %1004 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1005 = getelementptr inbounds %struct.graph, %struct.graph* %1004, i32 0, i32 7
  %1006 = load i64*, i64** %1005, align 8
  %1007 = getelementptr inbounds i64, i64* %1006, i64 %1003
  %1008 = load i64, i64* %1007, align 8
  %1009 = load i64, i64* %v, align 8
  %1010 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1011 = getelementptr inbounds %struct.graph, %struct.graph* %1010, i32 0, i32 6
  %1012 = load i64*, i64** %1011, align 8
  %1013 = getelementptr inbounds i64, i64* %1012, i64 %1009
  %1014 = load i64, i64* %1013, align 8
  %1015 = add i64 %1008, %1014
  %1016 = icmp eq i64 %1002, %1015
  br i1 %1016, label %1017, label %1139

; <label>:1017                                    ; preds = %1001
  store i32 -1, i32* %__status10, align 4
  store i32 9, i32* %tries11, align 4
  br label %1018

; <label>:1018                                    ; preds = %1039, %1017
  br label %1019

; <label>:1019                                    ; preds = %1022, %1018
  %1020 = call i64 (...) @RTM_fallback_isLocked()
  %1021 = icmp ne i64 %1020, 0
  br i1 %1021, label %1022, label %1023

; <label>:1022                                    ; preds = %1019
  call void @llvm.x86.sse2.pause() #4
  br label %1019

; <label>:1023                                    ; preds = %1019
  %1024 = load i32, i32* %tries11, align 4
  %1025 = add nsw i32 %1024, -1
  store i32 %1025, i32* %tries11, align 4
  %1026 = load i32, i32* %tries11, align 4
  %1027 = icmp sle i32 %1026, 0
  br i1 %1027, label %1028, label %1029

; <label>:1028                                    ; preds = %1023
  call void (...) @RTM_fallback_lock()
  br label %1046

; <label>:1029                                    ; preds = %1023
  store i64 9, i64* %1, align 8
  store i64 0, i64* %handler.i14, align 8
  store i64 4294967295, i64* %ret.i15, align 8
  %1030 = load i64, i64* %ret.i15, align 8
  %1031 = load i64, i64* %1, align 8
  %1032 = load i64, i64* %handler.i14, align 8
  %1033 = load i64, i64* %1, align 8
  %1034 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %1031, i64 %1032, i64 %1033, i64 %1030) #4, !srcloc !1
  store i64 %1034, i64* %ret.i15, align 8
  %1035 = load i64, i64* %ret.i15, align 8
  %1036 = trunc i64 %1035 to i32
  store i32 %1036, i32* %__status10, align 4
  %1037 = load i32, i32* %__status10, align 4
  %1038 = icmp ne i32 %1037, -1
  br i1 %1038, label %1039, label %1040

; <label>:1039                                    ; preds = %1029
  br label %1018

; <label>:1040                                    ; preds = %1029
  %1041 = call i64 (...) @RTM_fallback_isLocked()
  %1042 = icmp ne i64 %1041, 0
  br i1 %1042, label %1043, label %1045

; <label>:1043                                    ; preds = %1040
  store i64 255, i64* %2, align 8
  %1044 = load i64, i64* %2, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %1044) #4, !srcloc !2
  br label %1045

; <label>:1045                                    ; preds = %1043, %1040
  br label %1046

; <label>:1046                                    ; preds = %1045, %1028
  %1047 = load i64, i64* %v, align 8
  %1048 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1049 = getelementptr inbounds %struct.graph, %struct.graph* %1048, i32 0, i32 10
  %1050 = load i64*, i64** %1049, align 8
  %1051 = getelementptr inbounds i64, i64* %1050, i64 %1047
  %1052 = load i64, i64* %1051, align 8
  store i64 %1052, i64* %inDegree, align 8
  %1053 = load i64, i64* %inDegree, align 8
  %1054 = add nsw i64 %1053, 1
  %1055 = load i64, i64* %v, align 8
  %1056 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1057 = getelementptr inbounds %struct.graph, %struct.graph* %1056, i32 0, i32 10
  %1058 = load i64*, i64** %1057, align 8
  %1059 = getelementptr inbounds i64, i64* %1058, i64 %1055
  store i64 %1054, i64* %1059, align 8
  %1060 = load i64, i64* %v, align 8
  %1061 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1062 = getelementptr inbounds %struct.graph, %struct.graph* %1061, i32 0, i32 10
  %1063 = load i64*, i64** %1062, align 8
  %1064 = getelementptr inbounds i64, i64* %1063, i64 %1060
  %1065 = load i64, i64* %1064, align 8
  store i64 %1065, i64* %14, align 8
  %1066 = load i64, i64* %14, align 8
  %1067 = load i64, i64* %inDegree, align 8
  %1068 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %1069 = icmp slt i64 %1067, %1068
  br i1 %1069, label %1070, label %1088

; <label>:1070                                    ; preds = %1046
  %1071 = load i64, i64* %i, align 8
  %1072 = load i64, i64* %v, align 8
  %1073 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %1074 = mul i64 %1072, %1073
  %1075 = load i64, i64* %inDegree, align 8
  %1076 = add i64 %1074, %1075
  %1077 = load i64*, i64** %impliedEdgeList, align 8
  %1078 = getelementptr inbounds i64, i64* %1077, i64 %1076
  store i64 %1071, i64* %1078, align 8
  %1079 = load i64, i64* %v, align 8
  %1080 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %1081 = mul i64 %1079, %1080
  %1082 = load i64, i64* %inDegree, align 8
  %1083 = add i64 %1081, %1082
  %1084 = load i64*, i64** %impliedEdgeList, align 8
  %1085 = getelementptr inbounds i64, i64* %1084, i64 %1083
  %1086 = load i64, i64* %1085, align 8
  store i64 %1086, i64* %15, align 8
  %1087 = load i64, i64* %15, align 8
  br label %1132

; <label>:1088                                    ; preds = %1046
  store i64* null, i64** %a, align 8
  %1089 = load i64, i64* %inDegree, align 8
  %1090 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %1091 = srem i64 %1089, %1090
  %1092 = icmp eq i64 %1091, 0
  br i1 %1092, label %1093, label %1113

; <label>:1093                                    ; preds = %1088
  %1094 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %1095 = mul i64 %1094, 8
  %1096 = call noalias i8* @malloc(i64 %1095) #4
  %1097 = bitcast i8* %1096 to i64*
  store i64* %1097, i64** %a, align 8
  %1098 = load i64*, i64** %a, align 8
  %1099 = icmp ne i64* %1098, null
  br i1 %1099, label %1100, label %1101

; <label>:1100                                    ; preds = %1093
  br label %1103

; <label>:1101                                    ; preds = %1093
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 489, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %1103

; <label>:1103                                    ; preds = %1102, %1100
  %1104 = load i64*, i64** %a, align 8
  %1105 = load i64, i64* %v, align 8
  %1106 = load i64**, i64*** %auxArr, align 8
  %1107 = getelementptr inbounds i64*, i64** %1106, i64 %1105
  store i64* %1104, i64** %1107, align 8
  %1108 = load i64, i64* %v, align 8
  %1109 = load i64**, i64*** %auxArr, align 8
  %1110 = getelementptr inbounds i64*, i64** %1109, i64 %1108
  %1111 = load i64*, i64** %1110, align 8
  store i64* %1111, i64** %16, align 8
  %1112 = load i64*, i64** %16, align 8
  br label %1118

; <label>:1113                                    ; preds = %1088
  %1114 = load i64, i64* %v, align 8
  %1115 = load i64**, i64*** %auxArr, align 8
  %1116 = getelementptr inbounds i64*, i64** %1115, i64 %1114
  %1117 = load i64*, i64** %1116, align 8
  store i64* %1117, i64** %a, align 8
  br label %1118

; <label>:1118                                    ; preds = %1113, %1103
  %1119 = load i64, i64* %i, align 8
  %1120 = load i64, i64* %inDegree, align 8
  %1121 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %1122 = srem i64 %1120, %1121
  %1123 = load i64*, i64** %a, align 8
  %1124 = getelementptr inbounds i64, i64* %1123, i64 %1122
  store i64 %1119, i64* %1124, align 8
  %1125 = load i64, i64* %inDegree, align 8
  %1126 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %1127 = srem i64 %1125, %1126
  %1128 = load i64*, i64** %a, align 8
  %1129 = getelementptr inbounds i64, i64* %1128, i64 %1127
  %1130 = load i64, i64* %1129, align 8
  store i64 %1130, i64* %17, align 8
  %1131 = load i64, i64* %17, align 8
  br label %1132

; <label>:1132                                    ; preds = %1118, %1070
  %1133 = load i32, i32* %tries11, align 4
  %1134 = icmp sgt i32 %1133, 0
  br i1 %1134, label %1135, label %1137

; <label>:1135                                    ; preds = %1132
  store i64 9, i64* %6, align 8
  %1136 = load i64, i64* %6, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %1136) #4, !srcloc !3
  br label %1138

; <label>:1137                                    ; preds = %1132
  call void (...) @RTM_fallback_unlock()
  br label %1138

; <label>:1138                                    ; preds = %1137, %1135
  br label %1139

; <label>:1139                                    ; preds = %1138, %1001
  br label %1140

; <label>:1140                                    ; preds = %1139
  %1141 = load i64, i64* %j, align 8
  %1142 = add i64 %1141, 1
  store i64 %1142, i64* %j, align 8
  br label %942

; <label>:1143                                    ; preds = %942
  br label %1144

; <label>:1144                                    ; preds = %1143
  %1145 = load i64, i64* %i, align 8
  %1146 = add nsw i64 %1145, 1
  store i64 %1146, i64* %i, align 8
  br label %931

; <label>:1147                                    ; preds = %931
  call void (...) @thread_barrier_wait()
  %1148 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1149 = getelementptr inbounds %struct.graph, %struct.graph* %1148, i32 0, i32 11
  %1150 = load i64*, i64** %1149, align 8
  %1151 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1152 = getelementptr inbounds %struct.graph, %struct.graph* %1151, i32 0, i32 10
  %1153 = load i64*, i64** %1152, align 8
  %1154 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1155 = getelementptr inbounds %struct.graph, %struct.graph* %1154, i32 0, i32 0
  %1156 = load i64, i64* %1155, align 8
  call void @prefix_sums(i64* %1150, i64* %1153, i64 %1156)
  %1157 = load i64, i64* %myId, align 8
  %1158 = icmp eq i64 %1157, 0
  br i1 %1158, label %1159, label %1189

; <label>:1159                                    ; preds = %1147
  %1160 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1161 = getelementptr inbounds %struct.graph, %struct.graph* %1160, i32 0, i32 0
  %1162 = load i64, i64* %1161, align 8
  %1163 = sub i64 %1162, 1
  %1164 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1165 = getelementptr inbounds %struct.graph, %struct.graph* %1164, i32 0, i32 11
  %1166 = load i64*, i64** %1165, align 8
  %1167 = getelementptr inbounds i64, i64* %1166, i64 %1163
  %1168 = load i64, i64* %1167, align 8
  %1169 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1170 = getelementptr inbounds %struct.graph, %struct.graph* %1169, i32 0, i32 0
  %1171 = load i64, i64* %1170, align 8
  %1172 = sub i64 %1171, 1
  %1173 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1174 = getelementptr inbounds %struct.graph, %struct.graph* %1173, i32 0, i32 10
  %1175 = load i64*, i64** %1174, align 8
  %1176 = getelementptr inbounds i64, i64* %1175, i64 %1172
  %1177 = load i64, i64* %1176, align 8
  %1178 = add i64 %1168, %1177
  %1179 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1180 = getelementptr inbounds %struct.graph, %struct.graph* %1179, i32 0, i32 3
  store i64 %1178, i64* %1180, align 8
  %1181 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1182 = getelementptr inbounds %struct.graph, %struct.graph* %1181, i32 0, i32 3
  %1183 = load i64, i64* %1182, align 8
  %1184 = mul i64 %1183, 8
  %1185 = call noalias i8* @malloc(i64 %1184) #4
  %1186 = bitcast i8* %1185 to i64*
  %1187 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1188 = getelementptr inbounds %struct.graph, %struct.graph* %1187, i32 0, i32 12
  store i64* %1186, i64** %1188, align 8
  br label %1189

; <label>:1189                                    ; preds = %1159, %1147
  call void (...) @thread_barrier_wait()
  %1190 = load i64, i64* %i_start, align 8
  store i64 %1190, i64* %i, align 8
  br label %1191

; <label>:1191                                    ; preds = %1277, %1189
  %1192 = load i64, i64* %i, align 8
  %1193 = load i64, i64* %i_stop, align 8
  %1194 = icmp slt i64 %1192, %1193
  br i1 %1194, label %1195, label %1280

; <label>:1195                                    ; preds = %1191
  %1196 = load i64, i64* %i, align 8
  %1197 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1198 = getelementptr inbounds %struct.graph, %struct.graph* %1197, i32 0, i32 11
  %1199 = load i64*, i64** %1198, align 8
  %1200 = getelementptr inbounds i64, i64* %1199, i64 %1196
  %1201 = load i64, i64* %1200, align 8
  store i64 %1201, i64* %j, align 8
  br label %1202

; <label>:1202                                    ; preds = %1273, %1195
  %1203 = load i64, i64* %j, align 8
  %1204 = load i64, i64* %i, align 8
  %1205 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1206 = getelementptr inbounds %struct.graph, %struct.graph* %1205, i32 0, i32 11
  %1207 = load i64*, i64** %1206, align 8
  %1208 = getelementptr inbounds i64, i64* %1207, i64 %1204
  %1209 = load i64, i64* %1208, align 8
  %1210 = load i64, i64* %i, align 8
  %1211 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1212 = getelementptr inbounds %struct.graph, %struct.graph* %1211, i32 0, i32 10
  %1213 = load i64*, i64** %1212, align 8
  %1214 = getelementptr inbounds i64, i64* %1213, i64 %1210
  %1215 = load i64, i64* %1214, align 8
  %1216 = add i64 %1209, %1215
  %1217 = icmp ult i64 %1203, %1216
  br i1 %1217, label %1218, label %1276

; <label>:1218                                    ; preds = %1202
  %1219 = load i64, i64* %j, align 8
  %1220 = load i64, i64* %i, align 8
  %1221 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1222 = getelementptr inbounds %struct.graph, %struct.graph* %1221, i32 0, i32 11
  %1223 = load i64*, i64** %1222, align 8
  %1224 = getelementptr inbounds i64, i64* %1223, i64 %1220
  %1225 = load i64, i64* %1224, align 8
  %1226 = sub i64 %1219, %1225
  %1227 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %1228 = icmp ult i64 %1226, %1227
  br i1 %1228, label %1229, label %1250

; <label>:1229                                    ; preds = %1218
  %1230 = load i64, i64* %i, align 8
  %1231 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %1232 = mul nsw i64 %1230, %1231
  %1233 = load i64, i64* %j, align 8
  %1234 = add i64 %1232, %1233
  %1235 = load i64, i64* %i, align 8
  %1236 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1237 = getelementptr inbounds %struct.graph, %struct.graph* %1236, i32 0, i32 11
  %1238 = load i64*, i64** %1237, align 8
  %1239 = getelementptr inbounds i64, i64* %1238, i64 %1235
  %1240 = load i64, i64* %1239, align 8
  %1241 = sub i64 %1234, %1240
  %1242 = load i64*, i64** %impliedEdgeList, align 8
  %1243 = getelementptr inbounds i64, i64* %1242, i64 %1241
  %1244 = load i64, i64* %1243, align 8
  %1245 = load i64, i64* %j, align 8
  %1246 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1247 = getelementptr inbounds %struct.graph, %struct.graph* %1246, i32 0, i32 12
  %1248 = load i64*, i64** %1247, align 8
  %1249 = getelementptr inbounds i64, i64* %1248, i64 %1245
  store i64 %1244, i64* %1249, align 8
  br label %1272

; <label>:1250                                    ; preds = %1218
  %1251 = load i64, i64* %j, align 8
  %1252 = load i64, i64* %i, align 8
  %1253 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1254 = getelementptr inbounds %struct.graph, %struct.graph* %1253, i32 0, i32 11
  %1255 = load i64*, i64** %1254, align 8
  %1256 = getelementptr inbounds i64, i64* %1255, i64 %1252
  %1257 = load i64, i64* %1256, align 8
  %1258 = sub i64 %1251, %1257
  %1259 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %1260 = urem i64 %1258, %1259
  %1261 = load i64, i64* %i, align 8
  %1262 = load i64**, i64*** %auxArr, align 8
  %1263 = getelementptr inbounds i64*, i64** %1262, i64 %1261
  %1264 = load i64*, i64** %1263, align 8
  %1265 = getelementptr inbounds i64, i64* %1264, i64 %1260
  %1266 = load i64, i64* %1265, align 8
  %1267 = load i64, i64* %j, align 8
  %1268 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1269 = getelementptr inbounds %struct.graph, %struct.graph* %1268, i32 0, i32 12
  %1270 = load i64*, i64** %1269, align 8
  %1271 = getelementptr inbounds i64, i64* %1270, i64 %1267
  store i64 %1266, i64* %1271, align 8
  br label %1272

; <label>:1272                                    ; preds = %1250, %1229
  br label %1273

; <label>:1273                                    ; preds = %1272
  %1274 = load i64, i64* %j, align 8
  %1275 = add i64 %1274, 1
  store i64 %1275, i64* %j, align 8
  br label %1202

; <label>:1276                                    ; preds = %1202
  br label %1277

; <label>:1277                                    ; preds = %1276
  %1278 = load i64, i64* %i, align 8
  %1279 = add nsw i64 %1278, 1
  store i64 %1279, i64* %i, align 8
  br label %1191

; <label>:1280                                    ; preds = %1191
  call void (...) @thread_barrier_wait()
  %1281 = load i64, i64* %myId, align 8
  %1282 = icmp eq i64 %1281, 0
  br i1 %1282, label %1283, label %1286

; <label>:1283                                    ; preds = %1280
  %1284 = load i64*, i64** %impliedEdgeList, align 8
  %1285 = bitcast i64* %1284 to i8*
  call void @free(i8* %1285) #4
  br label %1286

; <label>:1286                                    ; preds = %1283, %1280
  %1287 = load i64, i64* %i_start, align 8
  store i64 %1287, i64* %i, align 8
  br label %1288

; <label>:1288                                    ; preds = %1308, %1286
  %1289 = load i64, i64* %i, align 8
  %1290 = load i64, i64* %i_stop, align 8
  %1291 = icmp slt i64 %1289, %1290
  br i1 %1291, label %1292, label %1311

; <label>:1292                                    ; preds = %1288
  %1293 = load i64, i64* %i, align 8
  %1294 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %1295 = getelementptr inbounds %struct.graph, %struct.graph* %1294, i32 0, i32 10
  %1296 = load i64*, i64** %1295, align 8
  %1297 = getelementptr inbounds i64, i64* %1296, i64 %1293
  %1298 = load i64, i64* %1297, align 8
  %1299 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %1300 = icmp sgt i64 %1298, %1299
  br i1 %1300, label %1301, label %1307

; <label>:1301                                    ; preds = %1292
  %1302 = load i64, i64* %i, align 8
  %1303 = load i64**, i64*** %auxArr, align 8
  %1304 = getelementptr inbounds i64*, i64** %1303, i64 %1302
  %1305 = load i64*, i64** %1304, align 8
  %1306 = bitcast i64* %1305 to i8*
  call void @free(i8* %1306) #4
  br label %1307

; <label>:1307                                    ; preds = %1301, %1292
  br label %1308

; <label>:1308                                    ; preds = %1307
  %1309 = load i64, i64* %i, align 8
  %1310 = add nsw i64 %1309, 1
  store i64 %1310, i64* %i, align 8
  br label %1288

; <label>:1311                                    ; preds = %1288
  call void (...) @thread_barrier_wait()
  %1312 = load i64, i64* %myId, align 8
  %1313 = icmp eq i64 %1312, 0
  br i1 %1313, label %1314, label %1317

; <label>:1314                                    ; preds = %1311
  %1315 = load i64**, i64*** %auxArr, align 8
  %1316 = bitcast i64** %1315 to i8*
  call void @free(i8* %1316) #4
  br label %1317

; <label>:1317                                    ; preds = %1314, %1311
  br label %1318

; <label>:1318                                    ; preds = %1317
  %1319 = call i64 (...) @thread_getId()
  %1320 = trunc i64 %1319 to i32
  %1321 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %1322 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %1321, i32 0, i32 4
  %1323 = load i32, i32* %1322, align 4
  call void @SimRoiEnd(i32 %1320, i32 %1323)
  br label %1324

; <label>:1324                                    ; preds = %1318
  ret void
}

declare i64 @thread_getId(...) #1

declare void @SimRoiStart(i32) #1

declare i64 @thread_getNumThread(...) #1

declare void @createPartition(i64, i64, i64, i64, i64*, i64*) #1

declare i64 @RTM_fallback_isLocked(...) #1

declare void @RTM_fallback_lock(...) #1

declare void @RTM_fallback_unlock(...) #1

declare void @thread_barrier_wait(...) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @prefix_sums(i64* %result, i64* %input, i64 %arraySize) #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %myId = alloca i64, align 8
  %numThread = alloca i64, align 8
  %p = alloca i64*, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %r = alloca i64, align 8
  %j = alloca i64, align 8
  %add_value = alloca i64, align 8
  store i64* %result, i64** %1, align 8
  store i64* %input, i64** %2, align 8
  store i64 %arraySize, i64* %3, align 8
  %4 = call i64 (...) @thread_getId()
  store i64 %4, i64* %myId, align 8
  %5 = call i64 (...) @thread_getNumThread()
  store i64 %5, i64* %numThread, align 8
  store i64* null, i64** %p, align 8
  %6 = load i64, i64* %myId, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %21

; <label>:8                                       ; preds = %0
  %9 = load i64, i64* %numThread, align 8
  %10 = shl i64 %9, 7
  %11 = mul i64 %10, 8
  %12 = call noalias i8* @malloc(i64 %11) #4
  %13 = bitcast i8* %12 to i64*
  store i64* %13, i64** %p, align 8
  %14 = load i64*, i64** %p, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %8
  br label %19

; <label>:17                                      ; preds = %8
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 98, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.prefix_sums, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %19

; <label>:19                                      ; preds = %18, %16
  %20 = load i64*, i64** %p, align 8
  store i64* %20, i64** @global_p, align 8
  br label %21

; <label>:21                                      ; preds = %19, %0
  call void (...) @thread_barrier_wait()
  %22 = load i64*, i64** @global_p, align 8
  store i64* %22, i64** %p, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* %numThread, align 8
  %25 = udiv i64 %23, %24
  store i64 %25, i64* %r, align 8
  %26 = load i64, i64* %myId, align 8
  %27 = load i64, i64* %r, align 8
  %28 = mul nsw i64 %26, %27
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %start, align 8
  %30 = load i64, i64* %myId, align 8
  %31 = add nsw i64 %30, 1
  %32 = load i64, i64* %r, align 8
  %33 = mul nsw i64 %31, %32
  store i64 %33, i64* %end, align 8
  %34 = load i64, i64* %myId, align 8
  %35 = load i64, i64* %numThread, align 8
  %36 = sub nsw i64 %35, 1
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %40

; <label>:38                                      ; preds = %21
  %39 = load i64, i64* %3, align 8
  store i64 %39, i64* %end, align 8
  br label %40

; <label>:40                                      ; preds = %38, %21
  %41 = load i64, i64* %start, align 8
  store i64 %41, i64* %j, align 8
  br label %42

; <label>:42                                      ; preds = %61, %40
  %43 = load i64, i64* %j, align 8
  %44 = load i64, i64* %end, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %64

; <label>:46                                      ; preds = %42
  %47 = load i64, i64* %j, align 8
  %48 = sub i64 %47, 1
  %49 = load i64*, i64** %2, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 %48
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %j, align 8
  %53 = sub i64 %52, 1
  %54 = load i64*, i64** %1, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 %53
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %51, %56
  %58 = load i64, i64* %j, align 8
  %59 = load i64*, i64** %1, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 %58
  store i64 %57, i64* %60, align 8
  br label %61

; <label>:61                                      ; preds = %46
  %62 = load i64, i64* %j, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %j, align 8
  br label %42

; <label>:64                                      ; preds = %42
  %65 = load i64, i64* %end, align 8
  %66 = sub nsw i64 %65, 1
  %67 = load i64*, i64** %1, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 %66
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %myId, align 8
  %71 = shl i64 %70, 7
  %72 = load i64*, i64** %p, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 %71
  store i64 %69, i64* %73, align 8
  call void (...) @thread_barrier_wait()
  %74 = load i64, i64* %myId, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %98

; <label>:76                                      ; preds = %64
  store i64 1, i64* %j, align 8
  br label %77

; <label>:77                                      ; preds = %94, %76
  %78 = load i64, i64* %j, align 8
  %79 = load i64, i64* %numThread, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %97

; <label>:81                                      ; preds = %77
  %82 = load i64, i64* %j, align 8
  %83 = sub i64 %82, 1
  %84 = shl i64 %83, 7
  %85 = load i64*, i64** %p, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 %84
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %j, align 8
  %89 = shl i64 %88, 7
  %90 = load i64*, i64** %p, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 %89
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, %87
  store i64 %93, i64* %91, align 8
  br label %94

; <label>:94                                      ; preds = %81
  %95 = load i64, i64* %j, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %j, align 8
  br label %77

; <label>:97                                      ; preds = %77
  br label %98

; <label>:98                                      ; preds = %97, %64
  call void (...) @thread_barrier_wait()
  %99 = load i64, i64* %myId, align 8
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %125

; <label>:101                                     ; preds = %98
  %102 = load i64, i64* %myId, align 8
  %103 = sub nsw i64 %102, 1
  %104 = shl i64 %103, 7
  %105 = load i64*, i64** %p, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 %104
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %add_value, align 8
  %108 = load i64, i64* %start, align 8
  %109 = sub nsw i64 %108, 1
  store i64 %109, i64* %j, align 8
  br label %110

; <label>:110                                     ; preds = %121, %101
  %111 = load i64, i64* %j, align 8
  %112 = load i64, i64* %end, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %124

; <label>:114                                     ; preds = %110
  %115 = load i64, i64* %add_value, align 8
  %116 = load i64, i64* %j, align 8
  %117 = load i64*, i64** %1, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 %116
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, %115
  store i64 %120, i64* %118, align 8
  br label %121

; <label>:121                                     ; preds = %114
  %122 = load i64, i64* %j, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %j, align 8
  br label %110

; <label>:124                                     ; preds = %110
  br label %125

; <label>:125                                     ; preds = %124, %98
  call void (...) @thread_barrier_wait()
  %126 = load i64, i64* %myId, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %131

; <label>:128                                     ; preds = %125
  %129 = load i64*, i64** %p, align 8
  %130 = bitcast i64* %129 to i8*
  call void @free(i8* %130) #4
  br label %131

; <label>:131                                     ; preds = %128, %125
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

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
!1 = !{i32 1436342, i32 1436358, i32 1436394, i32 1436430, i32 1436466}
!2 = !{i32 1436943, i32 1436958, i32 1436992}
!3 = !{i32 1436714, i32 1436729, i32 1436757}
