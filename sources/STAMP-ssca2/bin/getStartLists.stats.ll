; ModuleID = 'getStartLists.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._tm_thread_context_t = type { i32, i32, %struct.simple_metadata*, i32, i32, [44 x i8] }
%struct.simple_metadata = type opaque
%struct.edge = type { i64, i64, i64 }
%struct.graph = type { i64, i64, i64, i64, i64, i64, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i8* }
%struct.getStartLists_arg = type { %struct.graph*, %struct.edge**, i64*, %struct.edge**, i64* }

@thread_contexts = external global %struct._tm_thread_context_t*, align 8
@global_maxWeight = internal global i64 0, align 8
@MAX_INT_WEIGHT = external global i64, align 8
@.str = private unnamed_addr constant [19 x i8] c"i_edgeStartCounter\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"getStartLists.c\00", align 1
@__PRETTY_FUNCTION__.getStartLists = private unnamed_addr constant [27 x i8] c"void getStartLists(void *)\00", align 1
@global_i_edgeStartCounter = internal global i64* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"i_edgeEndCounter\00", align 1
@global_i_edgeEndCounter = internal global i64* null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"maxIntWtList\00", align 1
@global_maxIntWtList = internal global %struct.edge* null, align 8
@MAX_STRLEN = external global i64, align 8
@SOUGHT_STRING = external global i8*, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"soughtStrWtList\00", align 1
@global_soughtStrWtList = internal global %struct.edge* null, align 8

; Function Attrs: nounwind uwtable
define void @getStartLists(i8* %argPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %handler.i = alloca i64, align 8
  %ret.i = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %_tm_thread_context = alloca %struct._tm_thread_context_t*, align 8
  %GPtr = alloca %struct.graph*, align 8
  %maxIntWtListPtr = alloca %struct.edge**, align 8
  %maxIntWtListSize = alloca i64*, align 8
  %soughtStrWtListPtr = alloca %struct.edge**, align 8
  %soughtStrWtListSize = alloca i64*, align 8
  %myId = alloca i64, align 8
  %numThread = alloca i64, align 8
  %maxWeight = alloca i64, align 8
  %i = alloca i64, align 8
  %i_start = alloca i64, align 8
  %i_stop = alloca i64, align 8
  %__status = alloca i32, align 4
  %tries = alloca i32, align 4
  %tmp_maxWeight = alloca i64, align 8
  %5 = alloca i64, align 8
  %numTmpEdge = alloca i64, align 8
  %tmpEdgeList = alloca %struct.edge*, align 8
  %i_edgeCounter = alloca i64, align 8
  %j = alloca i64, align 8
  %t = alloca i64, align 8
  %i_edgeStartCounter = alloca i64*, align 8
  %i_edgeEndCounter = alloca i64*, align 8
  %maxIntWtList = alloca %struct.edge*, align 8
  %t1 = alloca i64, align 8
  %j2 = alloca i64, align 8
  %soughtStrWtList = alloca %struct.edge*, align 8
  store i8* %argPtr, i8** %4, align 8
  %6 = call i64 (...) @thread_getId()
  %7 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %8 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %7, i64 %6
  store %struct._tm_thread_context_t* %8, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  br label %9

; <label>:9                                       ; preds = %0
  %10 = call i64 (...) @thread_getId()
  %11 = trunc i64 %10 to i32
  call void @SimRoiStart(i32 %11)
  br label %12

; <label>:12                                      ; preds = %9
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.getStartLists_arg*
  %15 = getelementptr inbounds %struct.getStartLists_arg, %struct.getStartLists_arg* %14, i32 0, i32 0
  %16 = load %struct.graph*, %struct.graph** %15, align 8
  store %struct.graph* %16, %struct.graph** %GPtr, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.getStartLists_arg*
  %19 = getelementptr inbounds %struct.getStartLists_arg, %struct.getStartLists_arg* %18, i32 0, i32 1
  %20 = load %struct.edge**, %struct.edge*** %19, align 8
  store %struct.edge** %20, %struct.edge*** %maxIntWtListPtr, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = bitcast i8* %21 to %struct.getStartLists_arg*
  %23 = getelementptr inbounds %struct.getStartLists_arg, %struct.getStartLists_arg* %22, i32 0, i32 2
  %24 = load i64*, i64** %23, align 8
  store i64* %24, i64** %maxIntWtListSize, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = bitcast i8* %25 to %struct.getStartLists_arg*
  %27 = getelementptr inbounds %struct.getStartLists_arg, %struct.getStartLists_arg* %26, i32 0, i32 3
  %28 = load %struct.edge**, %struct.edge*** %27, align 8
  store %struct.edge** %28, %struct.edge*** %soughtStrWtListPtr, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = bitcast i8* %29 to %struct.getStartLists_arg*
  %31 = getelementptr inbounds %struct.getStartLists_arg, %struct.getStartLists_arg* %30, i32 0, i32 4
  %32 = load i64*, i64** %31, align 8
  store i64* %32, i64** %soughtStrWtListSize, align 8
  %33 = call i64 (...) @thread_getId()
  store i64 %33, i64* %myId, align 8
  %34 = call i64 (...) @thread_getNumThread()
  store i64 %34, i64* %numThread, align 8
  store i64 0, i64* %maxWeight, align 8
  %35 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %36 = getelementptr inbounds %struct.graph, %struct.graph* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %myId, align 8
  %39 = load i64, i64* %numThread, align 8
  call void @createPartition(i64 0, i64 %37, i64 %38, i64 %39, i64* %i_start, i64* %i_stop)
  %40 = load i64, i64* %i_start, align 8
  store i64 %40, i64* %i, align 8
  br label %41

; <label>:41                                      ; preds = %62, %12
  %42 = load i64, i64* %i, align 8
  %43 = load i64, i64* %i_stop, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %65

; <label>:45                                      ; preds = %41
  %46 = load i64, i64* %i, align 8
  %47 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %48 = getelementptr inbounds %struct.graph, %struct.graph* %47, i32 0, i32 13
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 %46
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %maxWeight, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %61

; <label>:54                                      ; preds = %45
  %55 = load i64, i64* %i, align 8
  %56 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %57 = getelementptr inbounds %struct.graph, %struct.graph* %56, i32 0, i32 13
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 %55
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %maxWeight, align 8
  br label %61

; <label>:61                                      ; preds = %54, %45
  br label %62

; <label>:62                                      ; preds = %61
  %63 = load i64, i64* %i, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %i, align 8
  br label %41

; <label>:65                                      ; preds = %41
  store i32 -1, i32* %__status, align 4
  store i32 9, i32* %tries, align 4
  br label %66

; <label>:66                                      ; preds = %87, %65
  br label %67

; <label>:67                                      ; preds = %70, %66
  %68 = call i64 (...) @RTM_fallback_isLocked()
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

; <label>:70                                      ; preds = %67
  call void @llvm.x86.sse2.pause() #6
  br label %67

; <label>:71                                      ; preds = %67
  %72 = load i32, i32* %tries, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %tries, align 4
  %74 = load i32, i32* %tries, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %77

; <label>:76                                      ; preds = %71
  call void (...) @RTM_fallback_lock()
  br label %94

; <label>:77                                      ; preds = %71
  store i64 0, i64* %2, align 8
  store i64 0, i64* %handler.i, align 8
  store i64 4294967295, i64* %ret.i, align 8
  %78 = load i64, i64* %ret.i, align 8
  %79 = load i64, i64* %2, align 8
  %80 = load i64, i64* %handler.i, align 8
  %81 = load i64, i64* %2, align 8
  %82 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %79, i64 %80, i64 %81, i64 %78) #6, !srcloc !1
  store i64 %82, i64* %ret.i, align 8
  %83 = load i64, i64* %ret.i, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %__status, align 4
  %85 = load i32, i32* %__status, align 4
  %86 = icmp ne i32 %85, -1
  br i1 %86, label %87, label %88

; <label>:87                                      ; preds = %77
  br label %66

; <label>:88                                      ; preds = %77
  %89 = call i64 (...) @RTM_fallback_isLocked()
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

; <label>:91                                      ; preds = %88
  store i64 255, i64* %1, align 8
  %92 = load i64, i64* %1, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %92) #6, !srcloc !2
  br label %93

; <label>:93                                      ; preds = %91, %88
  br label %94

; <label>:94                                      ; preds = %93, %76
  %95 = load i64, i64* @global_maxWeight, align 8
  store i64 %95, i64* %tmp_maxWeight, align 8
  %96 = load i64, i64* %maxWeight, align 8
  %97 = load i64, i64* %tmp_maxWeight, align 8
  %98 = icmp sgt i64 %96, %97
  br i1 %98, label %99, label %103

; <label>:99                                      ; preds = %94
  %100 = load i64, i64* %maxWeight, align 8
  store i64 %100, i64* @global_maxWeight, align 8
  %101 = load i64, i64* @global_maxWeight, align 8
  store i64 %101, i64* %5, align 8
  %102 = load i64, i64* %5, align 8
  br label %103

; <label>:103                                     ; preds = %99, %94
  %104 = load i32, i32* %tries, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %108

; <label>:106                                     ; preds = %103
  store i64 0, i64* %3, align 8
  %107 = load i64, i64* %3, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %107) #6, !srcloc !3
  br label %109

; <label>:108                                     ; preds = %103
  call void (...) @RTM_fallback_unlock()
  br label %109

; <label>:109                                     ; preds = %108, %106
  call void (...) @thread_barrier_wait()
  %110 = load i64, i64* @global_maxWeight, align 8
  store i64 %110, i64* %maxWeight, align 8
  %111 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %112 = getelementptr inbounds %struct.graph, %struct.graph* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = uitofp i64 %113 to double
  %115 = fmul double 1.500000e+00, %114
  %116 = load i64, i64* @MAX_INT_WEIGHT, align 8
  %117 = uitofp i64 %116 to double
  %118 = fdiv double %115, %117
  %119 = call double @ceil(double %118) #7
  %120 = fadd double 5.000000e+00, %119
  %121 = fptosi double %120 to i64
  store i64 %121, i64* %numTmpEdge, align 8
  %122 = load i64, i64* %numTmpEdge, align 8
  %123 = mul i64 %122, 24
  %124 = call noalias i8* @malloc(i64 %123) #6
  %125 = bitcast i8* %124 to %struct.edge*
  store %struct.edge* %125, %struct.edge** %tmpEdgeList, align 8
  store i64 0, i64* %i_edgeCounter, align 8
  %126 = load i64, i64* %i_start, align 8
  store i64 %126, i64* %i, align 8
  br label %127

; <label>:127                                     ; preds = %210, %109
  %128 = load i64, i64* %i, align 8
  %129 = load i64, i64* %i_stop, align 8
  %130 = icmp slt i64 %128, %129
  br i1 %130, label %131, label %213

; <label>:131                                     ; preds = %127
  %132 = load i64, i64* %i, align 8
  %133 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %134 = getelementptr inbounds %struct.graph, %struct.graph* %133, i32 0, i32 13
  %135 = load i64*, i64** %134, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 %132
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %maxWeight, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %209

; <label>:140                                     ; preds = %131
  store i64 0, i64* %j, align 8
  br label %141

; <label>:141                                     ; preds = %158, %140
  %142 = load i64, i64* %j, align 8
  %143 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %144 = getelementptr inbounds %struct.graph, %struct.graph* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp ult i64 %142, %145
  br i1 %146, label %147, label %161

; <label>:147                                     ; preds = %141
  %148 = load i64, i64* %j, align 8
  %149 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %150 = getelementptr inbounds %struct.graph, %struct.graph* %149, i32 0, i32 9
  %151 = load i64*, i64** %150, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 %148
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %i, align 8
  %155 = icmp ugt i64 %153, %154
  br i1 %155, label %156, label %157

; <label>:156                                     ; preds = %147
  br label %161

; <label>:157                                     ; preds = %147
  br label %158

; <label>:158                                     ; preds = %157
  %159 = load i64, i64* %j, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %j, align 8
  br label %141

; <label>:161                                     ; preds = %156, %141
  %162 = load i64, i64* %j, align 8
  %163 = sub nsw i64 %162, 1
  %164 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %165 = getelementptr inbounds %struct.graph, %struct.graph* %164, i32 0, i32 8
  %166 = load i64*, i64** %165, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 %163
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %i_edgeCounter, align 8
  %170 = load %struct.edge*, %struct.edge** %tmpEdgeList, align 8
  %171 = getelementptr inbounds %struct.edge, %struct.edge* %170, i64 %169
  %172 = getelementptr inbounds %struct.edge, %struct.edge* %171, i32 0, i32 1
  store i64 %168, i64* %172, align 8
  %173 = load i64, i64* %j, align 8
  %174 = sub nsw i64 %173, 1
  %175 = load i64, i64* %i_edgeCounter, align 8
  %176 = load %struct.edge*, %struct.edge** %tmpEdgeList, align 8
  %177 = getelementptr inbounds %struct.edge, %struct.edge* %176, i64 %175
  %178 = getelementptr inbounds %struct.edge, %struct.edge* %177, i32 0, i32 2
  store i64 %174, i64* %178, align 8
  store i64 0, i64* %t, align 8
  br label %179

; <label>:179                                     ; preds = %197, %161
  %180 = load i64, i64* %t, align 8
  %181 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %182 = getelementptr inbounds %struct.graph, %struct.graph* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ult i64 %180, %183
  br i1 %184, label %185, label %200

; <label>:185                                     ; preds = %179
  %186 = load i64, i64* %t, align 8
  %187 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %188 = getelementptr inbounds %struct.graph, %struct.graph* %187, i32 0, i32 7
  %189 = load i64*, i64** %188, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 %186
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %j, align 8
  %193 = sub nsw i64 %192, 1
  %194 = icmp ugt i64 %191, %193
  br i1 %194, label %195, label %196

; <label>:195                                     ; preds = %185
  br label %200

; <label>:196                                     ; preds = %185
  br label %197

; <label>:197                                     ; preds = %196
  %198 = load i64, i64* %t, align 8
  %199 = add nsw i64 %198, 1
  store i64 %199, i64* %t, align 8
  br label %179

; <label>:200                                     ; preds = %195, %179
  %201 = load i64, i64* %t, align 8
  %202 = sub nsw i64 %201, 1
  %203 = load i64, i64* %i_edgeCounter, align 8
  %204 = load %struct.edge*, %struct.edge** %tmpEdgeList, align 8
  %205 = getelementptr inbounds %struct.edge, %struct.edge* %204, i64 %203
  %206 = getelementptr inbounds %struct.edge, %struct.edge* %205, i32 0, i32 0
  store i64 %202, i64* %206, align 8
  %207 = load i64, i64* %i_edgeCounter, align 8
  %208 = add nsw i64 %207, 1
  store i64 %208, i64* %i_edgeCounter, align 8
  br label %209

; <label>:209                                     ; preds = %200, %131
  br label %210

; <label>:210                                     ; preds = %209
  %211 = load i64, i64* %i, align 8
  %212 = add nsw i64 %211, 1
  store i64 %212, i64* %i, align 8
  br label %127

; <label>:213                                     ; preds = %127
  %214 = load i64, i64* %myId, align 8
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %240

; <label>:216                                     ; preds = %213
  %217 = load i64, i64* %numThread, align 8
  %218 = mul i64 %217, 8
  %219 = call noalias i8* @malloc(i64 %218) #6
  %220 = bitcast i8* %219 to i64*
  store i64* %220, i64** %i_edgeStartCounter, align 8
  %221 = load i64*, i64** %i_edgeStartCounter, align 8
  %222 = icmp ne i64* %221, null
  br i1 %222, label %223, label %224

; <label>:223                                     ; preds = %216
  br label %226

; <label>:224                                     ; preds = %216
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 181, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.getStartLists, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %226

; <label>:226                                     ; preds = %225, %223
  %227 = load i64*, i64** %i_edgeStartCounter, align 8
  store i64* %227, i64** @global_i_edgeStartCounter, align 8
  %228 = load i64, i64* %numThread, align 8
  %229 = mul i64 %228, 8
  %230 = call noalias i8* @malloc(i64 %229) #6
  %231 = bitcast i8* %230 to i64*
  store i64* %231, i64** %i_edgeEndCounter, align 8
  %232 = load i64*, i64** %i_edgeEndCounter, align 8
  %233 = icmp ne i64* %232, null
  br i1 %233, label %234, label %235

; <label>:234                                     ; preds = %226
  br label %237

; <label>:235                                     ; preds = %226
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 184, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.getStartLists, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %237

; <label>:237                                     ; preds = %236, %234
  %238 = load i64*, i64** %i_edgeEndCounter, align 8
  store i64* %238, i64** @global_i_edgeEndCounter, align 8
  %239 = load i64*, i64** %maxIntWtListSize, align 8
  store i64 0, i64* %239, align 8
  br label %240

; <label>:240                                     ; preds = %237, %213
  call void (...) @thread_barrier_wait()
  %241 = load i64*, i64** @global_i_edgeStartCounter, align 8
  store i64* %241, i64** %i_edgeStartCounter, align 8
  %242 = load i64*, i64** @global_i_edgeEndCounter, align 8
  store i64* %242, i64** %i_edgeEndCounter, align 8
  %243 = load i64, i64* %i_edgeCounter, align 8
  %244 = load i64, i64* %myId, align 8
  %245 = load i64*, i64** %i_edgeEndCounter, align 8
  %246 = getelementptr inbounds i64, i64* %245, i64 %244
  store i64 %243, i64* %246, align 8
  %247 = load i64, i64* %myId, align 8
  %248 = load i64*, i64** %i_edgeStartCounter, align 8
  %249 = getelementptr inbounds i64, i64* %248, i64 %247
  store i64 0, i64* %249, align 8
  call void (...) @thread_barrier_wait()
  %250 = load i64, i64* %myId, align 8
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %252, label %283

; <label>:252                                     ; preds = %240
  store i64 1, i64* %i, align 8
  br label %253

; <label>:253                                     ; preds = %279, %252
  %254 = load i64, i64* %i, align 8
  %255 = load i64, i64* %numThread, align 8
  %256 = icmp slt i64 %254, %255
  br i1 %256, label %257, label %282

; <label>:257                                     ; preds = %253
  %258 = load i64, i64* %i, align 8
  %259 = sub nsw i64 %258, 1
  %260 = load i64*, i64** %i_edgeEndCounter, align 8
  %261 = getelementptr inbounds i64, i64* %260, i64 %259
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* %i, align 8
  %264 = load i64*, i64** %i_edgeEndCounter, align 8
  %265 = getelementptr inbounds i64, i64* %264, i64 %263
  %266 = load i64, i64* %265, align 8
  %267 = add nsw i64 %262, %266
  %268 = load i64, i64* %i, align 8
  %269 = load i64*, i64** %i_edgeEndCounter, align 8
  %270 = getelementptr inbounds i64, i64* %269, i64 %268
  store i64 %267, i64* %270, align 8
  %271 = load i64, i64* %i, align 8
  %272 = sub nsw i64 %271, 1
  %273 = load i64*, i64** %i_edgeEndCounter, align 8
  %274 = getelementptr inbounds i64, i64* %273, i64 %272
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* %i, align 8
  %277 = load i64*, i64** %i_edgeStartCounter, align 8
  %278 = getelementptr inbounds i64, i64* %277, i64 %276
  store i64 %275, i64* %278, align 8
  br label %279

; <label>:279                                     ; preds = %257
  %280 = load i64, i64* %i, align 8
  %281 = add nsw i64 %280, 1
  store i64 %281, i64* %i, align 8
  br label %253

; <label>:282                                     ; preds = %253
  br label %283

; <label>:283                                     ; preds = %282, %240
  %284 = load i64, i64* %i_edgeCounter, align 8
  %285 = load i64*, i64** %maxIntWtListSize, align 8
  %286 = load i64, i64* %285, align 8
  %287 = add nsw i64 %286, %284
  store i64 %287, i64* %285, align 8
  call void (...) @thread_barrier_wait()
  %288 = load i64, i64* %myId, align 8
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %290, label %306

; <label>:290                                     ; preds = %283
  %291 = load %struct.edge**, %struct.edge*** %maxIntWtListPtr, align 8
  %292 = load %struct.edge*, %struct.edge** %291, align 8
  %293 = bitcast %struct.edge* %292 to i8*
  call void @free(i8* %293) #6
  %294 = load i64*, i64** %maxIntWtListSize, align 8
  %295 = load i64, i64* %294, align 8
  %296 = mul i64 %295, 24
  %297 = call noalias i8* @malloc(i64 %296) #6
  %298 = bitcast i8* %297 to %struct.edge*
  store %struct.edge* %298, %struct.edge** %maxIntWtList, align 8
  %299 = load %struct.edge*, %struct.edge** %maxIntWtList, align 8
  %300 = icmp ne %struct.edge* %299, null
  br i1 %300, label %301, label %302

; <label>:301                                     ; preds = %290
  br label %304

; <label>:302                                     ; preds = %290
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 216, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.getStartLists, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %304

; <label>:304                                     ; preds = %303, %301
  %305 = load %struct.edge*, %struct.edge** %maxIntWtList, align 8
  store %struct.edge* %305, %struct.edge** @global_maxIntWtList, align 8
  br label %306

; <label>:306                                     ; preds = %304, %283
  call void (...) @thread_barrier_wait()
  %307 = load %struct.edge*, %struct.edge** @global_maxIntWtList, align 8
  store %struct.edge* %307, %struct.edge** %maxIntWtList, align 8
  %308 = load i64, i64* %myId, align 8
  %309 = load i64*, i64** %i_edgeStartCounter, align 8
  %310 = getelementptr inbounds i64, i64* %309, i64 %308
  %311 = load i64, i64* %310, align 8
  store i64 %311, i64* %i, align 8
  br label %312

; <label>:312                                     ; preds = %362, %306
  %313 = load i64, i64* %i, align 8
  %314 = load i64, i64* %myId, align 8
  %315 = load i64*, i64** %i_edgeEndCounter, align 8
  %316 = getelementptr inbounds i64, i64* %315, i64 %314
  %317 = load i64, i64* %316, align 8
  %318 = icmp slt i64 %313, %317
  br i1 %318, label %319, label %365

; <label>:319                                     ; preds = %312
  %320 = load i64, i64* %i, align 8
  %321 = load i64, i64* %myId, align 8
  %322 = load i64*, i64** %i_edgeStartCounter, align 8
  %323 = getelementptr inbounds i64, i64* %322, i64 %321
  %324 = load i64, i64* %323, align 8
  %325 = sub nsw i64 %320, %324
  %326 = load %struct.edge*, %struct.edge** %tmpEdgeList, align 8
  %327 = getelementptr inbounds %struct.edge, %struct.edge* %326, i64 %325
  %328 = getelementptr inbounds %struct.edge, %struct.edge* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* %i, align 8
  %331 = load %struct.edge*, %struct.edge** %maxIntWtList, align 8
  %332 = getelementptr inbounds %struct.edge, %struct.edge* %331, i64 %330
  %333 = getelementptr inbounds %struct.edge, %struct.edge* %332, i32 0, i32 0
  store i64 %329, i64* %333, align 8
  %334 = load i64, i64* %i, align 8
  %335 = load i64, i64* %myId, align 8
  %336 = load i64*, i64** %i_edgeStartCounter, align 8
  %337 = getelementptr inbounds i64, i64* %336, i64 %335
  %338 = load i64, i64* %337, align 8
  %339 = sub nsw i64 %334, %338
  %340 = load %struct.edge*, %struct.edge** %tmpEdgeList, align 8
  %341 = getelementptr inbounds %struct.edge, %struct.edge* %340, i64 %339
  %342 = getelementptr inbounds %struct.edge, %struct.edge* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* %i, align 8
  %345 = load %struct.edge*, %struct.edge** %maxIntWtList, align 8
  %346 = getelementptr inbounds %struct.edge, %struct.edge* %345, i64 %344
  %347 = getelementptr inbounds %struct.edge, %struct.edge* %346, i32 0, i32 1
  store i64 %343, i64* %347, align 8
  %348 = load i64, i64* %i, align 8
  %349 = load i64, i64* %myId, align 8
  %350 = load i64*, i64** %i_edgeStartCounter, align 8
  %351 = getelementptr inbounds i64, i64* %350, i64 %349
  %352 = load i64, i64* %351, align 8
  %353 = sub nsw i64 %348, %352
  %354 = load %struct.edge*, %struct.edge** %tmpEdgeList, align 8
  %355 = getelementptr inbounds %struct.edge, %struct.edge* %354, i64 %353
  %356 = getelementptr inbounds %struct.edge, %struct.edge* %355, i32 0, i32 2
  %357 = load i64, i64* %356, align 8
  %358 = load i64, i64* %i, align 8
  %359 = load %struct.edge*, %struct.edge** %maxIntWtList, align 8
  %360 = getelementptr inbounds %struct.edge, %struct.edge* %359, i64 %358
  %361 = getelementptr inbounds %struct.edge, %struct.edge* %360, i32 0, i32 2
  store i64 %357, i64* %361, align 8
  br label %362

; <label>:362                                     ; preds = %319
  %363 = load i64, i64* %i, align 8
  %364 = add nsw i64 %363, 1
  store i64 %364, i64* %i, align 8
  br label %312

; <label>:365                                     ; preds = %312
  %366 = load i64, i64* %myId, align 8
  %367 = icmp eq i64 %366, 0
  br i1 %367, label %368, label %371

; <label>:368                                     ; preds = %365
  %369 = load %struct.edge*, %struct.edge** %maxIntWtList, align 8
  %370 = load %struct.edge**, %struct.edge*** %maxIntWtListPtr, align 8
  store %struct.edge* %369, %struct.edge** %370, align 8
  br label %371

; <label>:371                                     ; preds = %368, %365
  store i64 0, i64* %i_edgeCounter, align 8
  %372 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %373 = getelementptr inbounds %struct.graph, %struct.graph* %372, i32 0, i32 5
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* %myId, align 8
  %376 = load i64, i64* %numThread, align 8
  call void @createPartition(i64 0, i64 %374, i64 %375, i64 %376, i64* %i_start, i64* %i_stop)
  %377 = load i64, i64* %i_start, align 8
  store i64 %377, i64* %i, align 8
  br label %378

; <label>:378                                     ; preds = %486, %371
  %379 = load i64, i64* %i, align 8
  %380 = load i64, i64* %i_stop, align 8
  %381 = icmp slt i64 %379, %380
  br i1 %381, label %382, label %489

; <label>:382                                     ; preds = %378
  %383 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %384 = getelementptr inbounds %struct.graph, %struct.graph* %383, i32 0, i32 14
  %385 = load i8*, i8** %384, align 8
  %386 = load i64, i64* %i, align 8
  %387 = load i64, i64* @MAX_STRLEN, align 8
  %388 = mul nsw i64 %386, %387
  %389 = getelementptr inbounds i8, i8* %385, i64 %388
  %390 = load i8*, i8** @SOUGHT_STRING, align 8
  %391 = load i64, i64* @MAX_STRLEN, align 8
  %392 = call i32 @strncmp(i8* %389, i8* %390, i64 %391) #9
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %485

; <label>:394                                     ; preds = %382
  store i64 0, i64* %t1, align 8
  br label %395

; <label>:395                                     ; preds = %413, %394
  %396 = load i64, i64* %t1, align 8
  %397 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %398 = getelementptr inbounds %struct.graph, %struct.graph* %397, i32 0, i32 1
  %399 = load i64, i64* %398, align 8
  %400 = icmp ult i64 %396, %399
  br i1 %400, label %401, label %416

; <label>:401                                     ; preds = %395
  %402 = load i64, i64* %t1, align 8
  %403 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %404 = getelementptr inbounds %struct.graph, %struct.graph* %403, i32 0, i32 13
  %405 = load i64*, i64** %404, align 8
  %406 = getelementptr inbounds i64, i64* %405, i64 %402
  %407 = load i64, i64* %406, align 8
  %408 = load i64, i64* %i, align 8
  %409 = sub nsw i64 0, %408
  %410 = icmp eq i64 %407, %409
  br i1 %410, label %411, label %412

; <label>:411                                     ; preds = %401
  br label %416

; <label>:412                                     ; preds = %401
  br label %413

; <label>:413                                     ; preds = %412
  %414 = load i64, i64* %t1, align 8
  %415 = add nsw i64 %414, 1
  store i64 %415, i64* %t1, align 8
  br label %395

; <label>:416                                     ; preds = %411, %395
  store i64 0, i64* %j2, align 8
  br label %417

; <label>:417                                     ; preds = %434, %416
  %418 = load i64, i64* %j2, align 8
  %419 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %420 = getelementptr inbounds %struct.graph, %struct.graph* %419, i32 0, i32 2
  %421 = load i64, i64* %420, align 8
  %422 = icmp ult i64 %418, %421
  br i1 %422, label %423, label %437

; <label>:423                                     ; preds = %417
  %424 = load i64, i64* %j2, align 8
  %425 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %426 = getelementptr inbounds %struct.graph, %struct.graph* %425, i32 0, i32 9
  %427 = load i64*, i64** %426, align 8
  %428 = getelementptr inbounds i64, i64* %427, i64 %424
  %429 = load i64, i64* %428, align 8
  %430 = load i64, i64* %t1, align 8
  %431 = icmp ugt i64 %429, %430
  br i1 %431, label %432, label %433

; <label>:432                                     ; preds = %423
  br label %437

; <label>:433                                     ; preds = %423
  br label %434

; <label>:434                                     ; preds = %433
  %435 = load i64, i64* %j2, align 8
  %436 = add nsw i64 %435, 1
  store i64 %436, i64* %j2, align 8
  br label %417

; <label>:437                                     ; preds = %432, %417
  %438 = load i64, i64* %j2, align 8
  %439 = sub nsw i64 %438, 1
  %440 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %441 = getelementptr inbounds %struct.graph, %struct.graph* %440, i32 0, i32 8
  %442 = load i64*, i64** %441, align 8
  %443 = getelementptr inbounds i64, i64* %442, i64 %439
  %444 = load i64, i64* %443, align 8
  %445 = load i64, i64* %i_edgeCounter, align 8
  %446 = load %struct.edge*, %struct.edge** %tmpEdgeList, align 8
  %447 = getelementptr inbounds %struct.edge, %struct.edge* %446, i64 %445
  %448 = getelementptr inbounds %struct.edge, %struct.edge* %447, i32 0, i32 1
  store i64 %444, i64* %448, align 8
  %449 = load i64, i64* %j2, align 8
  %450 = sub nsw i64 %449, 1
  %451 = load i64, i64* %i_edgeCounter, align 8
  %452 = load %struct.edge*, %struct.edge** %tmpEdgeList, align 8
  %453 = getelementptr inbounds %struct.edge, %struct.edge* %452, i64 %451
  %454 = getelementptr inbounds %struct.edge, %struct.edge* %453, i32 0, i32 2
  store i64 %450, i64* %454, align 8
  store i64 0, i64* %t1, align 8
  br label %455

; <label>:455                                     ; preds = %473, %437
  %456 = load i64, i64* %t1, align 8
  %457 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %458 = getelementptr inbounds %struct.graph, %struct.graph* %457, i32 0, i32 0
  %459 = load i64, i64* %458, align 8
  %460 = icmp ult i64 %456, %459
  br i1 %460, label %461, label %476

; <label>:461                                     ; preds = %455
  %462 = load i64, i64* %t1, align 8
  %463 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %464 = getelementptr inbounds %struct.graph, %struct.graph* %463, i32 0, i32 7
  %465 = load i64*, i64** %464, align 8
  %466 = getelementptr inbounds i64, i64* %465, i64 %462
  %467 = load i64, i64* %466, align 8
  %468 = load i64, i64* %j2, align 8
  %469 = sub nsw i64 %468, 1
  %470 = icmp ugt i64 %467, %469
  br i1 %470, label %471, label %472

; <label>:471                                     ; preds = %461
  br label %476

; <label>:472                                     ; preds = %461
  br label %473

; <label>:473                                     ; preds = %472
  %474 = load i64, i64* %t1, align 8
  %475 = add nsw i64 %474, 1
  store i64 %475, i64* %t1, align 8
  br label %455

; <label>:476                                     ; preds = %471, %455
  %477 = load i64, i64* %t1, align 8
  %478 = sub nsw i64 %477, 1
  %479 = load i64, i64* %i_edgeCounter, align 8
  %480 = load %struct.edge*, %struct.edge** %tmpEdgeList, align 8
  %481 = getelementptr inbounds %struct.edge, %struct.edge* %480, i64 %479
  %482 = getelementptr inbounds %struct.edge, %struct.edge* %481, i32 0, i32 0
  store i64 %478, i64* %482, align 8
  %483 = load i64, i64* %i_edgeCounter, align 8
  %484 = add nsw i64 %483, 1
  store i64 %484, i64* %i_edgeCounter, align 8
  br label %485

; <label>:485                                     ; preds = %476, %382
  br label %486

; <label>:486                                     ; preds = %485
  %487 = load i64, i64* %i, align 8
  %488 = add nsw i64 %487, 1
  store i64 %488, i64* %i, align 8
  br label %378

; <label>:489                                     ; preds = %378
  call void (...) @thread_barrier_wait()
  %490 = load i64, i64* %i_edgeCounter, align 8
  %491 = load i64, i64* %myId, align 8
  %492 = load i64*, i64** %i_edgeEndCounter, align 8
  %493 = getelementptr inbounds i64, i64* %492, i64 %491
  store i64 %490, i64* %493, align 8
  %494 = load i64, i64* %myId, align 8
  %495 = load i64*, i64** %i_edgeStartCounter, align 8
  %496 = getelementptr inbounds i64, i64* %495, i64 %494
  store i64 0, i64* %496, align 8
  %497 = load i64, i64* %myId, align 8
  %498 = icmp eq i64 %497, 0
  br i1 %498, label %499, label %501

; <label>:499                                     ; preds = %489
  %500 = load i64*, i64** %soughtStrWtListSize, align 8
  store i64 0, i64* %500, align 8
  br label %501

; <label>:501                                     ; preds = %499, %489
  call void (...) @thread_barrier_wait()
  %502 = load i64, i64* %myId, align 8
  %503 = icmp eq i64 %502, 0
  br i1 %503, label %504, label %535

; <label>:504                                     ; preds = %501
  store i64 1, i64* %i, align 8
  br label %505

; <label>:505                                     ; preds = %531, %504
  %506 = load i64, i64* %i, align 8
  %507 = load i64, i64* %numThread, align 8
  %508 = icmp slt i64 %506, %507
  br i1 %508, label %509, label %534

; <label>:509                                     ; preds = %505
  %510 = load i64, i64* %i, align 8
  %511 = sub nsw i64 %510, 1
  %512 = load i64*, i64** %i_edgeEndCounter, align 8
  %513 = getelementptr inbounds i64, i64* %512, i64 %511
  %514 = load i64, i64* %513, align 8
  %515 = load i64, i64* %i, align 8
  %516 = load i64*, i64** %i_edgeEndCounter, align 8
  %517 = getelementptr inbounds i64, i64* %516, i64 %515
  %518 = load i64, i64* %517, align 8
  %519 = add nsw i64 %514, %518
  %520 = load i64, i64* %i, align 8
  %521 = load i64*, i64** %i_edgeEndCounter, align 8
  %522 = getelementptr inbounds i64, i64* %521, i64 %520
  store i64 %519, i64* %522, align 8
  %523 = load i64, i64* %i, align 8
  %524 = sub nsw i64 %523, 1
  %525 = load i64*, i64** %i_edgeEndCounter, align 8
  %526 = getelementptr inbounds i64, i64* %525, i64 %524
  %527 = load i64, i64* %526, align 8
  %528 = load i64, i64* %i, align 8
  %529 = load i64*, i64** %i_edgeStartCounter, align 8
  %530 = getelementptr inbounds i64, i64* %529, i64 %528
  store i64 %527, i64* %530, align 8
  br label %531

; <label>:531                                     ; preds = %509
  %532 = load i64, i64* %i, align 8
  %533 = add nsw i64 %532, 1
  store i64 %533, i64* %i, align 8
  br label %505

; <label>:534                                     ; preds = %505
  br label %535

; <label>:535                                     ; preds = %534, %501
  %536 = load i64, i64* %i_edgeCounter, align 8
  %537 = load i64*, i64** %soughtStrWtListSize, align 8
  %538 = load i64, i64* %537, align 8
  %539 = add nsw i64 %538, %536
  store i64 %539, i64* %537, align 8
  call void (...) @thread_barrier_wait()
  %540 = load i64, i64* %myId, align 8
  %541 = icmp eq i64 %540, 0
  br i1 %541, label %542, label %558

; <label>:542                                     ; preds = %535
  %543 = load %struct.edge**, %struct.edge*** %soughtStrWtListPtr, align 8
  %544 = load %struct.edge*, %struct.edge** %543, align 8
  %545 = bitcast %struct.edge* %544 to i8*
  call void @free(i8* %545) #6
  %546 = load i64*, i64** %soughtStrWtListSize, align 8
  %547 = load i64, i64* %546, align 8
  %548 = mul i64 %547, 24
  %549 = call noalias i8* @malloc(i64 %548) #6
  %550 = bitcast i8* %549 to %struct.edge*
  store %struct.edge* %550, %struct.edge** %soughtStrWtList, align 8
  %551 = load %struct.edge*, %struct.edge** %soughtStrWtList, align 8
  %552 = icmp ne %struct.edge* %551, null
  br i1 %552, label %553, label %554

; <label>:553                                     ; preds = %542
  br label %556

; <label>:554                                     ; preds = %542
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 302, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.getStartLists, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %556

; <label>:556                                     ; preds = %555, %553
  %557 = load %struct.edge*, %struct.edge** %soughtStrWtList, align 8
  store %struct.edge* %557, %struct.edge** @global_soughtStrWtList, align 8
  br label %558

; <label>:558                                     ; preds = %556, %535
  call void (...) @thread_barrier_wait()
  %559 = load %struct.edge*, %struct.edge** @global_soughtStrWtList, align 8
  store %struct.edge* %559, %struct.edge** %soughtStrWtList, align 8
  %560 = load i64, i64* %myId, align 8
  %561 = load i64*, i64** %i_edgeStartCounter, align 8
  %562 = getelementptr inbounds i64, i64* %561, i64 %560
  %563 = load i64, i64* %562, align 8
  store i64 %563, i64* %i, align 8
  br label %564

; <label>:564                                     ; preds = %614, %558
  %565 = load i64, i64* %i, align 8
  %566 = load i64, i64* %myId, align 8
  %567 = load i64*, i64** %i_edgeEndCounter, align 8
  %568 = getelementptr inbounds i64, i64* %567, i64 %566
  %569 = load i64, i64* %568, align 8
  %570 = icmp slt i64 %565, %569
  br i1 %570, label %571, label %617

; <label>:571                                     ; preds = %564
  %572 = load i64, i64* %i, align 8
  %573 = load i64, i64* %myId, align 8
  %574 = load i64*, i64** %i_edgeStartCounter, align 8
  %575 = getelementptr inbounds i64, i64* %574, i64 %573
  %576 = load i64, i64* %575, align 8
  %577 = sub nsw i64 %572, %576
  %578 = load %struct.edge*, %struct.edge** %tmpEdgeList, align 8
  %579 = getelementptr inbounds %struct.edge, %struct.edge* %578, i64 %577
  %580 = getelementptr inbounds %struct.edge, %struct.edge* %579, i32 0, i32 0
  %581 = load i64, i64* %580, align 8
  %582 = load i64, i64* %i, align 8
  %583 = load %struct.edge*, %struct.edge** %soughtStrWtList, align 8
  %584 = getelementptr inbounds %struct.edge, %struct.edge* %583, i64 %582
  %585 = getelementptr inbounds %struct.edge, %struct.edge* %584, i32 0, i32 0
  store i64 %581, i64* %585, align 8
  %586 = load i64, i64* %i, align 8
  %587 = load i64, i64* %myId, align 8
  %588 = load i64*, i64** %i_edgeStartCounter, align 8
  %589 = getelementptr inbounds i64, i64* %588, i64 %587
  %590 = load i64, i64* %589, align 8
  %591 = sub nsw i64 %586, %590
  %592 = load %struct.edge*, %struct.edge** %tmpEdgeList, align 8
  %593 = getelementptr inbounds %struct.edge, %struct.edge* %592, i64 %591
  %594 = getelementptr inbounds %struct.edge, %struct.edge* %593, i32 0, i32 1
  %595 = load i64, i64* %594, align 8
  %596 = load i64, i64* %i, align 8
  %597 = load %struct.edge*, %struct.edge** %soughtStrWtList, align 8
  %598 = getelementptr inbounds %struct.edge, %struct.edge* %597, i64 %596
  %599 = getelementptr inbounds %struct.edge, %struct.edge* %598, i32 0, i32 1
  store i64 %595, i64* %599, align 8
  %600 = load i64, i64* %i, align 8
  %601 = load i64, i64* %myId, align 8
  %602 = load i64*, i64** %i_edgeStartCounter, align 8
  %603 = getelementptr inbounds i64, i64* %602, i64 %601
  %604 = load i64, i64* %603, align 8
  %605 = sub nsw i64 %600, %604
  %606 = load %struct.edge*, %struct.edge** %tmpEdgeList, align 8
  %607 = getelementptr inbounds %struct.edge, %struct.edge* %606, i64 %605
  %608 = getelementptr inbounds %struct.edge, %struct.edge* %607, i32 0, i32 2
  %609 = load i64, i64* %608, align 8
  %610 = load i64, i64* %i, align 8
  %611 = load %struct.edge*, %struct.edge** %soughtStrWtList, align 8
  %612 = getelementptr inbounds %struct.edge, %struct.edge* %611, i64 %610
  %613 = getelementptr inbounds %struct.edge, %struct.edge* %612, i32 0, i32 2
  store i64 %609, i64* %613, align 8
  br label %614

; <label>:614                                     ; preds = %571
  %615 = load i64, i64* %i, align 8
  %616 = add nsw i64 %615, 1
  store i64 %616, i64* %i, align 8
  br label %564

; <label>:617                                     ; preds = %564
  call void (...) @thread_barrier_wait()
  %618 = load i64, i64* %myId, align 8
  %619 = icmp eq i64 %618, 0
  br i1 %619, label %620, label %627

; <label>:620                                     ; preds = %617
  %621 = load %struct.edge*, %struct.edge** %soughtStrWtList, align 8
  %622 = load %struct.edge**, %struct.edge*** %soughtStrWtListPtr, align 8
  store %struct.edge* %621, %struct.edge** %622, align 8
  %623 = load i64*, i64** %i_edgeStartCounter, align 8
  %624 = bitcast i64* %623 to i8*
  call void @free(i8* %624) #6
  %625 = load i64*, i64** %i_edgeEndCounter, align 8
  %626 = bitcast i64* %625 to i8*
  call void @free(i8* %626) #6
  br label %627

; <label>:627                                     ; preds = %620, %617
  %628 = load %struct.edge*, %struct.edge** %tmpEdgeList, align 8
  %629 = bitcast %struct.edge* %628 to i8*
  call void @free(i8* %629) #6
  br label %630

; <label>:630                                     ; preds = %627
  %631 = call i64 (...) @thread_getId()
  %632 = trunc i64 %631 to i32
  %633 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %634 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %633, i32 0, i32 4
  %635 = load i32, i32* %634, align 4
  call void @SimRoiEnd(i32 %632, i32 %635)
  br label %636

; <label>:636                                     ; preds = %630
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

; Function Attrs: nounwind readnone
declare double @ceil(double) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #5

declare void @SimRoiEnd(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 1667257, i32 1667273, i32 1667309, i32 1667345, i32 1667381}
!2 = !{i32 1667858, i32 1667873, i32 1667907}
!3 = !{i32 1667629, i32 1667644, i32 1667672}
