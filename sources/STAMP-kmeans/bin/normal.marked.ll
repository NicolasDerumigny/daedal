; ModuleID = '../bin/normal.stats.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._tm_thread_context_t = type { i32, i32, %struct.simple_metadata*, i32, i32, [44 x i8] }
%struct.simple_metadata = type opaque
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }
%struct.args = type { float**, i32, i32, i32, i32*, float**, i32**, float** }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@global_time = global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [9 x i8] c"clusters\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"normal.c\00", align 1
@__PRETTY_FUNCTION__.normal_exec = private unnamed_addr constant [76 x i8] c"float **normal_exec(int, float **, int, int, int, float, int *, random_t *)\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"clusters[0]\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"alloc_memory && new_centers && new_centers_len\00", align 1
@global_i = common global i64 0, align 8
@global_delta = common global float 0.000000e+00, align 4
@thread_contexts = external global %struct._tm_thread_context_t*, align 8

; Function Attrs: nounwind uwtable
define float** @normal_exec(i32 %nthreads, float** %feature, i32 %nfeatures, i32 %npoints, i32 %nclusters, float %threshold, i32* %membership, %struct.random* %randomPtr) #0 {
  %1 = alloca i32, align 4
  %2 = alloca float**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.random*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %loop = alloca i32, align 4
  %new_centers_len = alloca i32**, align 8
  %delta = alloca float, align 4
  %clusters = alloca float**, align 8
  %new_centers = alloca float**, align 8
  %alloc_memory = alloca i8*, align 8
  %args = alloca %struct.args, align 8
  %start = alloca %struct.timeval, align 8
  %stop = alloca %struct.timeval, align 8
  %n = alloca i32, align 4
  %cluster_size = alloca i32, align 4
  %cacheLineSize = alloca i32, align 4
  store i32 %nthreads, i32* %1, align 4
  store float** %feature, float*** %2, align 8
  store i32 %nfeatures, i32* %3, align 4
  store i32 %npoints, i32* %4, align 4
  store i32 %nclusters, i32* %5, align 4
  store float %threshold, float* %6, align 4
  store i32* %membership, i32** %7, align 8
  store %struct.random* %randomPtr, %struct.random** %8, align 8
  store i32 0, i32* %loop, align 4
  store i8* null, i8** %alloc_memory, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 8
  %12 = call noalias i8* @malloc(i64 %11) #4
  %13 = bitcast i8* %12 to float**
  store float** %13, float*** %clusters, align 8
  %14 = load float**, float*** %clusters, align 8
  %15 = icmp ne float** %14, null
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %0
  br label %19

; <label>:17                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 228, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.normal_exec, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %19

; <label>:19                                      ; preds = %18, %16
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %3, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = call noalias i8* @malloc(i64 %24) #4
  %26 = bitcast i8* %25 to float*
  %27 = load float**, float*** %clusters, align 8
  %28 = getelementptr inbounds float*, float** %27, i64 0
  store float* %26, float** %28, align 8
  %29 = load float**, float*** %clusters, align 8
  %30 = getelementptr inbounds float*, float** %29, i64 0
  %31 = load float*, float** %30, align 8
  %32 = icmp ne float* %31, null
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %19
  br label %36

; <label>:34                                      ; preds = %19
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 230, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.normal_exec, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %36

; <label>:36                                      ; preds = %35, %33
  store i32 1, i32* %i, align 4
  br label %37

; <label>:37                                      ; preds = %55, %36
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %58

; <label>:41                                      ; preds = %37
  %42 = load i32, i32* %i, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = load float**, float*** %clusters, align 8
  %46 = getelementptr inbounds float*, float** %45, i64 %44
  %47 = load float*, float** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %47, i64 %49
  %51 = load i32, i32* %i, align 4
  %52 = sext i32 %51 to i64
  %53 = load float**, float*** %clusters, align 8
  %54 = getelementptr inbounds float*, float** %53, i64 %52
  store float* %50, float** %54, align 8
  br label %55

; <label>:55                                      ; preds = %41
  %56 = load i32, i32* %i, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %i, align 4
  br label %37

; <label>:58                                      ; preds = %37
  store i32 0, i32* %i, align 4
  br label %59

; <label>:59                                      ; preds = %96, %58
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %99

; <label>:63                                      ; preds = %59
  %64 = load %struct.random*, %struct.random** %8, align 8
  %65 = call i64 @random_generate(%struct.random* %64)
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = urem i64 %65, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %n, align 4
  store i32 0, i32* %j, align 4
  br label %70

; <label>:70                                      ; preds = %92, %63
  %71 = load i32, i32* %j, align 4
  %72 = load i32, i32* %3, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %95

; <label>:74                                      ; preds = %70
  %75 = load i32, i32* %j, align 4
  %76 = sext i32 %75 to i64
  %77 = load i32, i32* %n, align 4
  %78 = sext i32 %77 to i64
  %79 = load float**, float*** %2, align 8
  %80 = getelementptr inbounds float*, float** %79, i64 %78
  %81 = load float*, float** %80, align 8
  %82 = getelementptr inbounds float, float* %81, i64 %76
  %83 = load float, float* %82, align 4
  %84 = load i32, i32* %j, align 4
  %85 = sext i32 %84 to i64
  %86 = load i32, i32* %i, align 4
  %87 = sext i32 %86 to i64
  %88 = load float**, float*** %clusters, align 8
  %89 = getelementptr inbounds float*, float** %88, i64 %87
  %90 = load float*, float** %89, align 8
  %91 = getelementptr inbounds float, float* %90, i64 %85
  store float %83, float* %91, align 4
  br label %92

; <label>:92                                      ; preds = %74
  %93 = load i32, i32* %j, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %j, align 4
  br label %70

; <label>:95                                      ; preds = %70
  br label %96

; <label>:96                                      ; preds = %95
  %97 = load i32, i32* %i, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %i, align 4
  br label %59

; <label>:99                                      ; preds = %59
  store i32 0, i32* %i, align 4
  br label %100

; <label>:100                                     ; preds = %109, %99
  %101 = load i32, i32* %i, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %112

; <label>:104                                     ; preds = %100
  %105 = load i32, i32* %i, align 4
  %106 = sext i32 %105 to i64
  %107 = load i32*, i32** %7, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 %106
  store i32 -1, i32* %108, align 4
  br label %109

; <label>:109                                     ; preds = %104
  %110 = load i32, i32* %i, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %i, align 4
  br label %100

; <label>:112                                     ; preds = %100
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 4, %114
  %116 = add i64 4, %115
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %cluster_size, align 4
  store i32 32, i32* %cacheLineSize, align 4
  %118 = load i32, i32* %cluster_size, align 4
  %119 = sub nsw i32 %118, 1
  %120 = srem i32 %119, 32
  %121 = sub nsw i32 31, %120
  %122 = load i32, i32* %cluster_size, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %cluster_size, align 4
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = load i32, i32* %cluster_size, align 4
  %127 = sext i32 %126 to i64
  %128 = call noalias i8* @calloc(i64 %125, i64 %127) #4
  store i8* %128, i8** %alloc_memory, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = mul i64 %130, 8
  %132 = call noalias i8* @malloc(i64 %131) #4
  %133 = bitcast i8* %132 to i32**
  store i32** %133, i32*** %new_centers_len, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = mul i64 %135, 8
  %137 = call noalias i8* @malloc(i64 %136) #4
  %138 = bitcast i8* %137 to float**
  store float** %138, float*** %new_centers, align 8
  %139 = load i8*, i8** %alloc_memory, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %148

; <label>:141                                     ; preds = %112
  %142 = load float**, float*** %new_centers, align 8
  %143 = icmp ne float** %142, null
  br i1 %143, label %144, label %148

; <label>:144                                     ; preds = %141
  %145 = load i32**, i32*** %new_centers_len, align 8
  %146 = icmp ne i32** %145, null
  br i1 %146, label %147, label %148

; <label>:147                                     ; preds = %144
  br label %150

; <label>:148                                     ; preds = %144, %141, %112
  call void @__assert_fail(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 258, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.normal_exec, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %150

; <label>:150                                     ; preds = %149, %147
  store i32 0, i32* %i, align 4
  br label %151

; <label>:151                                     ; preds = %179, %150
  %152 = load i32, i32* %i, align 4
  %153 = load i32, i32* %5, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %182

; <label>:155                                     ; preds = %151
  %156 = load i8*, i8** %alloc_memory, align 8
  %157 = load i32, i32* %cluster_size, align 4
  %158 = load i32, i32* %i, align 4
  %159 = mul nsw i32 %157, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %156, i64 %160
  %162 = bitcast i8* %161 to i32*
  %163 = load i32, i32* %i, align 4
  %164 = sext i32 %163 to i64
  %165 = load i32**, i32*** %new_centers_len, align 8
  %166 = getelementptr inbounds i32*, i32** %165, i64 %164
  store i32* %162, i32** %166, align 8
  %167 = load i8*, i8** %alloc_memory, align 8
  %168 = load i32, i32* %cluster_size, align 4
  %169 = load i32, i32* %i, align 4
  %170 = mul nsw i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %167, i64 %171
  %173 = getelementptr inbounds i8, i8* %172, i64 4
  %174 = bitcast i8* %173 to float*
  %175 = load i32, i32* %i, align 4
  %176 = sext i32 %175 to i64
  %177 = load float**, float*** %new_centers, align 8
  %178 = getelementptr inbounds float*, float** %177, i64 %176
  store float* %174, float** %178, align 8
  br label %179

; <label>:179                                     ; preds = %155
  %180 = load i32, i32* %i, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %i, align 4
  br label %151

; <label>:182                                     ; preds = %151
  %183 = call i32 @gettimeofday(%struct.timeval* %start, %struct.timezone* null) #4
  br label %184

; <label>:184                                     ; preds = %283, %182
  store float 0.000000e+00, float* %delta, align 4
  %185 = load float**, float*** %2, align 8
  %186 = getelementptr inbounds %struct.args, %struct.args* %args, i32 0, i32 0
  store float** %185, float*** %186, align 8
  %187 = load i32, i32* %3, align 4
  %188 = getelementptr inbounds %struct.args, %struct.args* %args, i32 0, i32 1
  store i32 %187, i32* %188, align 8
  %189 = load i32, i32* %4, align 4
  %190 = getelementptr inbounds %struct.args, %struct.args* %args, i32 0, i32 2
  store i32 %189, i32* %190, align 4
  %191 = load i32, i32* %5, align 4
  %192 = getelementptr inbounds %struct.args, %struct.args* %args, i32 0, i32 3
  store i32 %191, i32* %192, align 8
  %193 = load i32*, i32** %7, align 8
  %194 = getelementptr inbounds %struct.args, %struct.args* %args, i32 0, i32 4
  store i32* %193, i32** %194, align 8
  %195 = load float**, float*** %clusters, align 8
  %196 = getelementptr inbounds %struct.args, %struct.args* %args, i32 0, i32 5
  store float** %195, float*** %196, align 8
  %197 = load i32**, i32*** %new_centers_len, align 8
  %198 = getelementptr inbounds %struct.args, %struct.args* %args, i32 0, i32 6
  store i32** %197, i32*** %198, align 8
  %199 = load float**, float*** %new_centers, align 8
  %200 = getelementptr inbounds %struct.args, %struct.args* %args, i32 0, i32 7
  store float** %199, float*** %200, align 8
  %201 = load i32, i32* %1, align 4
  %202 = mul nsw i32 %201, 3
  %203 = sext i32 %202 to i64
  store i64 %203, i64* @global_i, align 8
  %204 = load float, float* %delta, align 4
  store float %204, float* @global_delta, align 4
  %205 = bitcast %struct.args* %args to i8*
  call void @thread_start(void (i8*)* @work, i8* %205)
  %206 = load float, float* @global_delta, align 4
  store float %206, float* %delta, align 4
  store i32 0, i32* %i, align 4
  br label %207

; <label>:207                                     ; preds = %267, %184
  %208 = load i32, i32* %i, align 4
  %209 = load i32, i32* %5, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %270

; <label>:211                                     ; preds = %207
  store i32 0, i32* %j, align 4
  br label %212

; <label>:212                                     ; preds = %258, %211
  %213 = load i32, i32* %j, align 4
  %214 = load i32, i32* %3, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %261

; <label>:216                                     ; preds = %212
  %217 = load i32, i32* %i, align 4
  %218 = sext i32 %217 to i64
  %219 = load i32**, i32*** %new_centers_len, align 8
  %220 = getelementptr inbounds i32*, i32** %219, i64 %218
  %221 = load i32*, i32** %220, align 8
  %222 = icmp ugt i32* %221, null
  br i1 %222, label %223, label %249

; <label>:223                                     ; preds = %216
  %224 = load i32, i32* %j, align 4
  %225 = sext i32 %224 to i64
  %226 = load i32, i32* %i, align 4
  %227 = sext i32 %226 to i64
  %228 = load float**, float*** %new_centers, align 8
  %229 = getelementptr inbounds float*, float** %228, i64 %227
  %230 = load float*, float** %229, align 8
  %231 = getelementptr inbounds float, float* %230, i64 %225
  %232 = load float, float* %231, align 4
  %233 = load i32, i32* %i, align 4
  %234 = sext i32 %233 to i64
  %235 = load i32**, i32*** %new_centers_len, align 8
  %236 = getelementptr inbounds i32*, i32** %235, i64 %234
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %237, align 4
  %239 = sitofp i32 %238 to float
  %240 = fdiv float %232, %239
  %241 = load i32, i32* %j, align 4
  %242 = sext i32 %241 to i64
  %243 = load i32, i32* %i, align 4
  %244 = sext i32 %243 to i64
  %245 = load float**, float*** %clusters, align 8
  %246 = getelementptr inbounds float*, float** %245, i64 %244
  %247 = load float*, float** %246, align 8
  %248 = getelementptr inbounds float, float* %247, i64 %242
  store float %240, float* %248, align 4
  br label %249

; <label>:249                                     ; preds = %223, %216
  %250 = load i32, i32* %j, align 4
  %251 = sext i32 %250 to i64
  %252 = load i32, i32* %i, align 4
  %253 = sext i32 %252 to i64
  %254 = load float**, float*** %new_centers, align 8
  %255 = getelementptr inbounds float*, float** %254, i64 %253
  %256 = load float*, float** %255, align 8
  %257 = getelementptr inbounds float, float* %256, i64 %251
  store float 0.000000e+00, float* %257, align 4
  br label %258

; <label>:258                                     ; preds = %249
  %259 = load i32, i32* %j, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %j, align 4
  br label %212

; <label>:261                                     ; preds = %212
  %262 = load i32, i32* %i, align 4
  %263 = sext i32 %262 to i64
  %264 = load i32**, i32*** %new_centers_len, align 8
  %265 = getelementptr inbounds i32*, i32** %264, i64 %263
  %266 = load i32*, i32** %265, align 8
  store i32 0, i32* %266, align 4
  br label %267

; <label>:267                                     ; preds = %261
  %268 = load i32, i32* %i, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %i, align 4
  br label %207

; <label>:270                                     ; preds = %207
  %271 = load i32, i32* %4, align 4
  %272 = sitofp i32 %271 to float
  %273 = load float, float* %delta, align 4
  %274 = fdiv float %273, %272
  store float %274, float* %delta, align 4
  br label %275

; <label>:275                                     ; preds = %270
  %276 = load float, float* %delta, align 4
  %277 = load float, float* %6, align 4
  %278 = fcmp ogt float %276, %277
  br i1 %278, label %279, label %283

; <label>:279                                     ; preds = %275
  %280 = load i32, i32* %loop, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %loop, align 4
  %282 = icmp slt i32 %280, 500
  br label %283

; <label>:283                                     ; preds = %279, %275
  %284 = phi i1 [ false, %275 ], [ %282, %279 ]
  br i1 %284, label %184, label %285

; <label>:285                                     ; preds = %283
  %286 = call i32 @gettimeofday(%struct.timeval* %stop, %struct.timezone* null) #4
  %287 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = sitofp i64 %288 to double
  %290 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = sitofp i64 %291 to double
  %293 = fdiv double %292, 1.000000e+06
  %294 = fadd double %289, %293
  %295 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = sitofp i64 %296 to double
  %298 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = sitofp i64 %299 to double
  %301 = fdiv double %300, 1.000000e+06
  %302 = fadd double %297, %301
  %303 = fsub double %294, %302
  %304 = load double, double* @global_time, align 8
  %305 = fadd double %304, %303
  store double %305, double* @global_time, align 8
  %306 = load i8*, i8** %alloc_memory, align 8
  call void @free(i8* %306) #4
  %307 = load float**, float*** %new_centers, align 8
  %308 = bitcast float** %307 to i8*
  call void @free(i8* %308) #4
  %309 = load i32**, i32*** %new_centers_len, align 8
  %310 = bitcast i32** %309 to i8*
  call void @free(i8* %310) #4
  %311 = load float**, float*** %clusters, align 8
  ret float** %311
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

declare i64 @random_generate(%struct.random*) #3

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

declare void @thread_start(void (i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @work(i8* %argPtr) #0 {
  %1 = alloca i64, align 8
  %handler.i7 = alloca i64, align 8
  %ret.i8 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %handler.i5 = alloca i64, align 8
  %ret.i6 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %handler.i = alloca i64, align 8
  %ret.i = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %_tm_thread_context = alloca %struct._tm_thread_context_t*, align 8
  %args = alloca %struct.args*, align 8
  %feature = alloca float**, align 8
  %nfeatures = alloca i32, align 4
  %npoints = alloca i32, align 4
  %nclusters = alloca i32, align 4
  %membership = alloca i32*, align 8
  %clusters = alloca float**, align 8
  %new_centers_len = alloca i32**, align 8
  %new_centers = alloca float**, align 8
  %delta = alloca float, align 4
  %index = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %start = alloca i32, align 4
  %stop = alloca i32, align 4
  %myId = alloca i32, align 4
  %__status = alloca i32, align 4
  %tries = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %__status1 = alloca i32, align 4
  %tries2 = alloca i32, align 4
  %13 = alloca i64, align 8
  %__status3 = alloca i32, align 4
  %tries4 = alloca i32, align 4
  %14 = alloca float, align 4
  store i8* %argPtr, i8** %10, align 8
  %15 = call i64 (...) @thread_getId()
  %16 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %17 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %16, i64 %15
  store %struct._tm_thread_context_t* %17, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  br label %18

; <label>:18                                      ; preds = %0
  %19 = call i64 (...) @thread_getId()
  %20 = trunc i64 %19 to i32
  call void @SimRoiStart(i32 %20)
  br label %21

; <label>:21                                      ; preds = %18
  %22 = load i8*, i8** %10, align 8
  %23 = bitcast i8* %22 to %struct.args*
  store %struct.args* %23, %struct.args** %args, align 8
  %24 = load %struct.args*, %struct.args** %args, align 8
  %25 = getelementptr inbounds %struct.args, %struct.args* %24, i32 0, i32 0
  %26 = load float**, float*** %25, align 8
  store float** %26, float*** %feature, align 8
  %27 = load %struct.args*, %struct.args** %args, align 8
  %28 = getelementptr inbounds %struct.args, %struct.args* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %nfeatures, align 4
  %30 = load %struct.args*, %struct.args** %args, align 8
  %31 = getelementptr inbounds %struct.args, %struct.args* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %npoints, align 4
  %33 = load %struct.args*, %struct.args** %args, align 8
  %34 = getelementptr inbounds %struct.args, %struct.args* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %nclusters, align 4
  %36 = load %struct.args*, %struct.args** %args, align 8
  %37 = getelementptr inbounds %struct.args, %struct.args* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %membership, align 8
  %39 = load %struct.args*, %struct.args** %args, align 8
  %40 = getelementptr inbounds %struct.args, %struct.args* %39, i32 0, i32 5
  %41 = load float**, float*** %40, align 8
  store float** %41, float*** %clusters, align 8
  %42 = load %struct.args*, %struct.args** %args, align 8
  %43 = getelementptr inbounds %struct.args, %struct.args* %42, i32 0, i32 6
  %44 = load i32**, i32*** %43, align 8
  store i32** %44, i32*** %new_centers_len, align 8
  %45 = load %struct.args*, %struct.args** %args, align 8
  %46 = getelementptr inbounds %struct.args, %struct.args* %45, i32 0, i32 7
  %47 = load float**, float*** %46, align 8
  store float** %47, float*** %new_centers, align 8
  store float 0.000000e+00, float* %delta, align 4
  %48 = call i64 (...) @thread_getId()
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %myId, align 4
  %50 = load i32, i32* %myId, align 4
  %51 = mul nsw i32 %50, 3
  store i32 %51, i32* %start, align 4
  br label %52

; <label>:52                                      ; preds = %252, %21
  %53 = load i32, i32* %start, align 4
  %54 = load i32, i32* %npoints, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %253

; <label>:56                                      ; preds = %52
  %57 = load i32, i32* %start, align 4
  %58 = add nsw i32 %57, 3
  %59 = load i32, i32* %npoints, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %64

; <label>:61                                      ; preds = %56
  %62 = load i32, i32* %start, align 4
  %63 = add nsw i32 %62, 3
  br label %66

; <label>:64                                      ; preds = %56
  %65 = load i32, i32* %npoints, align 4
  br label %66

; <label>:66                                      ; preds = %64, %61
  %67 = phi i32 [ %63, %61 ], [ %65, %64 ]
  store i32 %67, i32* %stop, align 4
  %68 = load i32, i32* %start, align 4
  store i32 %68, i32* %i, align 4
  br label %69

; <label>:69                                      ; preds = %200, %66
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* %stop, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %203

; <label>:73                                      ; preds = %69
  %74 = load i32, i32* %i, align 4
  %75 = sext i32 %74 to i64
  %76 = load float**, float*** %feature, align 8
  %77 = getelementptr inbounds float*, float** %76, i64 %75
  %78 = load float*, float** %77, align 8
  %79 = load i32, i32* %nfeatures, align 4
  %80 = load float**, float*** %clusters, align 8
  %81 = load i32, i32* %nclusters, align 4
  %82 = call i32 @common_findNearestPoint(float* %78, i32 %79, float** %80, i32 %81)
  store i32 %82, i32* %index, align 4
  %83 = load i32, i32* %i, align 4
  %84 = sext i32 %83 to i64
  %85 = load i32*, i32** %membership, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 %84
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %index, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %95

; <label>:90                                      ; preds = %73
  %91 = load float, float* %delta, align 4
  %92 = fpext float %91 to double
  %93 = fadd double %92, 1.000000e+00
  %94 = fptrunc double %93 to float
  store float %94, float* %delta, align 4
  br label %95

; <label>:95                                      ; preds = %90, %73
  %96 = load i32, i32* %index, align 4
  %97 = load i32, i32* %i, align 4
  %98 = sext i32 %97 to i64
  %99 = load i32*, i32** %membership, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 %98
  store i32 %96, i32* %100, align 4
  store i32 -1, i32* %__status, align 4
  store i32 9, i32* %tries, align 4
  br label %101

; <label>:101                                     ; preds = %122, %95
  br label %102

; <label>:102                                     ; preds = %105, %101
  %103 = call i64 (...) @RTM_fallback_isLocked()
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

; <label>:105                                     ; preds = %102
  call void @llvm.x86.sse2.pause() #4
  br label %102

; <label>:106                                     ; preds = %102
  %107 = load i32, i32* %tries, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %tries, align 4
  %109 = load i32, i32* %tries, align 4
  %110 = icmp sle i32 %109, 0
  br i1 %110, label %111, label %112

; <label>:111                                     ; preds = %106
  call void (...) @RTM_fallback_lock()
  br label %129

; <label>:112                                     ; preds = %106
  store i64 0, i64* %8, align 8
  store i64 0, i64* %handler.i, align 8
  store i64 4294967295, i64* %ret.i, align 8
  %113 = load i64, i64* %ret.i, align 8
  %114 = load i64, i64* %8, align 8
  %115 = load i64, i64* %handler.i, align 8
  %116 = load i64, i64* %8, align 8
  %117 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %114, i64 %115, i64 %116, i64 %113) #4, !srcloc !1
  store i64 %117, i64* %ret.i, align 8
  %118 = load i64, i64* %ret.i, align 8
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %__status, align 4
  %120 = load i32, i32* %__status, align 4
  %121 = icmp ne i32 %120, -1
  br i1 %121, label %122, label %123

; <label>:122                                     ; preds = %112
  br label %101

; <label>:123                                     ; preds = %112
  %124 = call i64 (...) @RTM_fallback_isLocked()
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

; <label>:126                                     ; preds = %123
  store i64 255, i64* %7, align 8
  %127 = load i64, i64* %7, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %127) #4, !srcloc !2
  br label %128

; <label>:128                                     ; preds = %126, %123
  br label %129

; <label>:129                                     ; preds = %128, %111
  %130 = load i32, i32* %index, align 4
  %131 = sext i32 %130 to i64
  %132 = load i32**, i32*** %new_centers_len, align 8
  %133 = getelementptr inbounds i32*, i32** %132, i64 %131
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  %137 = load i32, i32* %index, align 4
  %138 = sext i32 %137 to i64
  %139 = load i32**, i32*** %new_centers_len, align 8
  %140 = getelementptr inbounds i32*, i32** %139, i64 %138
  %141 = load i32*, i32** %140, align 8
  store i32 %136, i32* %141, align 4
  %142 = load i32, i32* %index, align 4
  %143 = sext i32 %142 to i64
  %144 = load i32**, i32*** %new_centers_len, align 8
  %145 = getelementptr inbounds i32*, i32** %144, i64 %143
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %11, align 4
  store i32 0, i32* %j, align 4
  br label %__kernel__work0

__kernel__work0:                                  ; preds = %190, %129
  %149 = load i32, i32* %j, align 4
  %150 = load i32, i32* %nfeatures, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %193

; <label>:152                                     ; preds = %__kernel__work0
  %153 = load i32, i32* %j, align 4
  %154 = sext i32 %153 to i64
  %155 = load i32, i32* %index, align 4
  %156 = sext i32 %155 to i64
  %157 = load float**, float*** %new_centers, align 8
  %158 = getelementptr inbounds float*, float** %157, i64 %156
  %159 = load float*, float** %158, align 8
  %160 = getelementptr inbounds float, float* %159, i64 %154
  %161 = load float, float* %160, align 4
  %162 = load i32, i32* %j, align 4
  %163 = sext i32 %162 to i64
  %164 = load i32, i32* %i, align 4
  %165 = sext i32 %164 to i64
  %166 = load float**, float*** %feature, align 8
  %167 = getelementptr inbounds float*, float** %166, i64 %165
  %168 = load float*, float** %167, align 8
  %169 = getelementptr inbounds float, float* %168, i64 %163
  %170 = load float, float* %169, align 4
  %171 = fadd float %161, %170
  %172 = load i32, i32* %j, align 4
  %173 = sext i32 %172 to i64
  %174 = load i32, i32* %index, align 4
  %175 = sext i32 %174 to i64
  %176 = load float**, float*** %new_centers, align 8
  %177 = getelementptr inbounds float*, float** %176, i64 %175
  %178 = load float*, float** %177, align 8
  %179 = getelementptr inbounds float, float* %178, i64 %173
  store float %171, float* %179, align 4
  %180 = load i32, i32* %j, align 4
  %181 = sext i32 %180 to i64
  %182 = load i32, i32* %index, align 4
  %183 = sext i32 %182 to i64
  %184 = load float**, float*** %new_centers, align 8
  %185 = getelementptr inbounds float*, float** %184, i64 %183
  %186 = load float*, float** %185, align 8
  %187 = getelementptr inbounds float, float* %186, i64 %181
  %188 = load float, float* %187, align 4
  store float %188, float* %12, align 4
  %189 = load float, float* %12, align 4
  br label %190

; <label>:190                                     ; preds = %152
  %191 = load i32, i32* %j, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %j, align 4
  br label %__kernel__work0, !llvm.loop !3

; <label>:193                                     ; preds = %__kernel__work0
  %194 = load i32, i32* %tries, align 4
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %198

; <label>:196                                     ; preds = %193
  store i64 0, i64* %6, align 8
  %197 = load i64, i64* %6, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %197) #4, !srcloc !5
  br label %199

; <label>:198                                     ; preds = %193
  call void (...) @RTM_fallback_unlock()
  br label %199

; <label>:199                                     ; preds = %198, %196
  br label %200

; <label>:200                                     ; preds = %199
  %201 = load i32, i32* %i, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %i, align 4
  br label %69

; <label>:203                                     ; preds = %69
  %204 = load i32, i32* %start, align 4
  %205 = add nsw i32 %204, 3
  %206 = load i32, i32* %npoints, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %251

; <label>:208                                     ; preds = %203
  store i32 -1, i32* %__status1, align 4
  store i32 9, i32* %tries2, align 4
  br label %209

; <label>:209                                     ; preds = %230, %208
  br label %210

; <label>:210                                     ; preds = %213, %209
  %211 = call i64 (...) @RTM_fallback_isLocked()
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %214

; <label>:213                                     ; preds = %210
  call void @llvm.x86.sse2.pause() #4
  br label %210

; <label>:214                                     ; preds = %210
  %215 = load i32, i32* %tries2, align 4
  %216 = add nsw i32 %215, -1
  store i32 %216, i32* %tries2, align 4
  %217 = load i32, i32* %tries2, align 4
  %218 = icmp sle i32 %217, 0
  br i1 %218, label %219, label %220

; <label>:219                                     ; preds = %214
  call void (...) @RTM_fallback_lock()
  br label %237

; <label>:220                                     ; preds = %214
  store i64 1, i64* %4, align 8
  store i64 0, i64* %handler.i5, align 8
  store i64 4294967295, i64* %ret.i6, align 8
  %221 = load i64, i64* %ret.i6, align 8
  %222 = load i64, i64* %4, align 8
  %223 = load i64, i64* %handler.i5, align 8
  %224 = load i64, i64* %4, align 8
  %225 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %222, i64 %223, i64 %224, i64 %221) #4, !srcloc !1
  store i64 %225, i64* %ret.i6, align 8
  %226 = load i64, i64* %ret.i6, align 8
  %227 = trunc i64 %226 to i32
  store i32 %227, i32* %__status1, align 4
  %228 = load i32, i32* %__status1, align 4
  %229 = icmp ne i32 %228, -1
  br i1 %229, label %230, label %231

; <label>:230                                     ; preds = %220
  br label %209

; <label>:231                                     ; preds = %220
  %232 = call i64 (...) @RTM_fallback_isLocked()
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %236

; <label>:234                                     ; preds = %231
  store i64 255, i64* %3, align 8
  %235 = load i64, i64* %3, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %235) #4, !srcloc !2
  br label %236

; <label>:236                                     ; preds = %234, %231
  br label %237

; <label>:237                                     ; preds = %236, %219
  %238 = load i64, i64* @global_i, align 8
  %239 = trunc i64 %238 to i32
  store i32 %239, i32* %start, align 4
  %240 = load i32, i32* %start, align 4
  %241 = add nsw i32 %240, 3
  %242 = sext i32 %241 to i64
  store i64 %242, i64* @global_i, align 8
  %243 = load i64, i64* @global_i, align 8
  store i64 %243, i64* %13, align 8
  %244 = load i64, i64* %13, align 8
  %245 = load i32, i32* %tries2, align 4
  %246 = icmp sgt i32 %245, 0
  br i1 %246, label %247, label %249

; <label>:247                                     ; preds = %237
  store i64 1, i64* %2, align 8
  %248 = load i64, i64* %2, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %248) #4, !srcloc !5
  br label %250

; <label>:249                                     ; preds = %237
  call void (...) @RTM_fallback_unlock()
  br label %250

; <label>:250                                     ; preds = %249, %247
  br label %252

; <label>:251                                     ; preds = %203
  br label %253

; <label>:252                                     ; preds = %250
  br label %52

; <label>:253                                     ; preds = %251, %52
  store i32 -1, i32* %__status3, align 4
  store i32 9, i32* %tries4, align 4
  br label %254

; <label>:254                                     ; preds = %275, %253
  br label %255

; <label>:255                                     ; preds = %258, %254
  %256 = call i64 (...) @RTM_fallback_isLocked()
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %259

; <label>:258                                     ; preds = %255
  call void @llvm.x86.sse2.pause() #4
  br label %255

; <label>:259                                     ; preds = %255
  %260 = load i32, i32* %tries4, align 4
  %261 = add nsw i32 %260, -1
  store i32 %261, i32* %tries4, align 4
  %262 = load i32, i32* %tries4, align 4
  %263 = icmp sle i32 %262, 0
  br i1 %263, label %264, label %265

; <label>:264                                     ; preds = %259
  call void (...) @RTM_fallback_lock()
  br label %282

; <label>:265                                     ; preds = %259
  store i64 2, i64* %1, align 8
  store i64 0, i64* %handler.i7, align 8
  store i64 4294967295, i64* %ret.i8, align 8
  %266 = load i64, i64* %ret.i8, align 8
  %267 = load i64, i64* %1, align 8
  %268 = load i64, i64* %handler.i7, align 8
  %269 = load i64, i64* %1, align 8
  %270 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %267, i64 %268, i64 %269, i64 %266) #4, !srcloc !1
  store i64 %270, i64* %ret.i8, align 8
  %271 = load i64, i64* %ret.i8, align 8
  %272 = trunc i64 %271 to i32
  store i32 %272, i32* %__status3, align 4
  %273 = load i32, i32* %__status3, align 4
  %274 = icmp ne i32 %273, -1
  br i1 %274, label %275, label %276

; <label>:275                                     ; preds = %265
  br label %254

; <label>:276                                     ; preds = %265
  %277 = call i64 (...) @RTM_fallback_isLocked()
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %281

; <label>:279                                     ; preds = %276
  store i64 255, i64* %5, align 8
  %280 = load i64, i64* %5, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %280) #4, !srcloc !2
  br label %281

; <label>:281                                     ; preds = %279, %276
  br label %282

; <label>:282                                     ; preds = %281, %264
  %283 = load float, float* @global_delta, align 4
  %284 = load float, float* %delta, align 4
  %285 = fadd float %283, %284
  store float %285, float* @global_delta, align 4
  %286 = load float, float* @global_delta, align 4
  store float %286, float* %14, align 4
  %287 = load float, float* %14, align 4
  %288 = load i32, i32* %tries4, align 4
  %289 = icmp sgt i32 %288, 0
  br i1 %289, label %290, label %292

; <label>:290                                     ; preds = %282
  store i64 2, i64* %9, align 8
  %291 = load i64, i64* %9, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %291) #4, !srcloc !5
  br label %293

; <label>:292                                     ; preds = %282
  call void (...) @RTM_fallback_unlock()
  br label %293

; <label>:293                                     ; preds = %292, %290
  br label %294

; <label>:294                                     ; preds = %293
  %295 = call i64 (...) @thread_getId()
  %296 = trunc i64 %295 to i32
  %297 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %298 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 4
  call void @SimRoiEnd(i32 %296, i32 %299)
  br label %300

; <label>:300                                     ; preds = %294
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

declare i64 @thread_getId(...) #3

declare void @SimRoiStart(i32) #3

declare i32 @common_findNearestPoint(float*, i32, float**, i32) #3

declare i64 @RTM_fallback_isLocked(...) #3

declare void @RTM_fallback_lock(...) #3

declare void @RTM_fallback_unlock(...) #3

declare void @SimRoiEnd(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 1658281, i32 1658297, i32 1658333, i32 1658369, i32 1658405}
!2 = !{i32 1658882, i32 1658897, i32 1658931}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.vectorize.width", i32 1337}
!5 = !{i32 1658653, i32 1658668, i32 1658696}
