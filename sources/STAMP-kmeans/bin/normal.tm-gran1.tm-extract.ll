; ModuleID = '../bin/normal.tm-gran.ll'
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
  %args = alloca %struct.args, align 8
  %start = alloca %struct.timeval, align 8
  %stop = alloca %struct.timeval, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = sext i32 %nclusters to i64
  %2 = mul i64 %1, 8
  %3 = call noalias i8* @malloc(i64 %2) #4
  %4 = bitcast i8* %3 to float**
  %5 = icmp ne float** %4, null
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  br label %9

; <label>:7                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 228, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.normal_exec, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %8, %6
  %10 = mul nsw i32 %nclusters, %nfeatures
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = call noalias i8* @malloc(i64 %12) #4
  %14 = bitcast i8* %13 to float*
  %15 = getelementptr inbounds float*, float** %4, i64 0
  store float* %14, float** %15, align 8
  %16 = getelementptr inbounds float*, float** %4, i64 0
  %17 = load float*, float** %16, align 8
  %18 = icmp ne float* %17, null
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %9
  br label %22

; <label>:20                                      ; preds = %9
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 230, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.normal_exec, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %22

; <label>:22                                      ; preds = %21, %19
  %23 = sext i32 %nfeatures to i64
  br label %24

; <label>:24                                      ; preds = %34, %22
  %i.0 = phi i32 [ 1, %22 ], [ %35, %34 ]
  %25 = icmp slt i32 %i.0, %nclusters
  br i1 %25, label %26, label %36

; <label>:26                                      ; preds = %24
  %27 = sub nsw i32 %i.0, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float*, float** %4, i64 %28
  %30 = load float*, float** %29, align 8
  %31 = getelementptr inbounds float, float* %30, i64 %23
  %32 = sext i32 %i.0 to i64
  %33 = getelementptr inbounds float*, float** %4, i64 %32
  store float* %31, float** %33, align 8
  br label %34

; <label>:34                                      ; preds = %26
  %35 = add nsw i32 %i.0, 1
  br label %24

; <label>:36                                      ; preds = %24
  %37 = sext i32 %npoints to i64
  br label %38

; <label>:38                                      ; preds = %61, %36
  %i.1 = phi i32 [ 0, %36 ], [ %62, %61 ]
  %39 = icmp slt i32 %i.1, %nclusters
  br i1 %39, label %40, label %63

; <label>:40                                      ; preds = %38
  %41 = call i64 @random_generate(%struct.random* %randomPtr)
  %42 = urem i64 %41, %37
  %43 = trunc i64 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float*, float** %feature, i64 %44
  br label %46

; <label>:46                                      ; preds = %58, %40
  %j.0 = phi i32 [ 0, %40 ], [ %59, %58 ]
  %47 = icmp slt i32 %j.0, %nfeatures
  br i1 %47, label %48, label %60

; <label>:48                                      ; preds = %46
  %49 = sext i32 %j.0 to i64
  %50 = load float*, float** %45, align 8
  %51 = getelementptr inbounds float, float* %50, i64 %49
  %52 = load float, float* %51, align 4
  %53 = sext i32 %j.0 to i64
  %54 = sext i32 %i.1 to i64
  %55 = getelementptr inbounds float*, float** %4, i64 %54
  %56 = load float*, float** %55, align 8
  %57 = getelementptr inbounds float, float* %56, i64 %53
  store float %52, float* %57, align 4
  br label %58

; <label>:58                                      ; preds = %48
  %59 = add nsw i32 %j.0, 1
  br label %46

; <label>:60                                      ; preds = %46
  br label %61

; <label>:61                                      ; preds = %60
  %62 = add nsw i32 %i.1, 1
  br label %38

; <label>:63                                      ; preds = %38
  br label %64

; <label>:64                                      ; preds = %69, %63
  %i.2 = phi i32 [ 0, %63 ], [ %70, %69 ]
  %65 = icmp slt i32 %i.2, %npoints
  br i1 %65, label %66, label %71

; <label>:66                                      ; preds = %64
  %67 = sext i32 %i.2 to i64
  %68 = getelementptr inbounds i32, i32* %membership, i64 %67
  store i32 -1, i32* %68, align 4
  br label %69

; <label>:69                                      ; preds = %66
  %70 = add nsw i32 %i.2, 1
  br label %64

; <label>:71                                      ; preds = %64
  %72 = sext i32 %nfeatures to i64
  %73 = mul i64 4, %72
  %74 = add i64 4, %73
  %75 = trunc i64 %74 to i32
  %76 = sub nsw i32 %75, 1
  %77 = srem i32 %76, 32
  %78 = sub nsw i32 31, %77
  %79 = add nsw i32 %75, %78
  %80 = sext i32 %nclusters to i64
  %81 = sext i32 %79 to i64
  %82 = call noalias i8* @calloc(i64 %80, i64 %81) #4
  %83 = sext i32 %nclusters to i64
  %84 = mul i64 %83, 8
  %85 = call noalias i8* @malloc(i64 %84) #4
  %86 = bitcast i8* %85 to i32**
  %87 = sext i32 %nclusters to i64
  %88 = mul i64 %87, 8
  %89 = call noalias i8* @malloc(i64 %88) #4
  %90 = bitcast i8* %89 to float**
  %91 = icmp ne i8* %82, null
  br i1 %91, label %92, label %._crit_edge

._crit_edge:                                      ; preds = %71
  br label %97

; <label>:92                                      ; preds = %71
  %93 = icmp ne float** %90, null
  br i1 %93, label %94, label %._crit_edge1

._crit_edge1:                                     ; preds = %92
  br label %97

; <label>:94                                      ; preds = %92
  %95 = icmp ne i32** %86, null
  br i1 %95, label %96, label %._crit_edge2

._crit_edge2:                                     ; preds = %94
  br label %97

; <label>:96                                      ; preds = %94
  br label %99

; <label>:97                                      ; preds = %._crit_edge2, %._crit_edge1, %._crit_edge
  call void @__assert_fail(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 258, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.normal_exec, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %99

; <label>:99                                      ; preds = %98, %96
  br label %100

; <label>:100                                     ; preds = %116, %99
  %i.3 = phi i32 [ 0, %99 ], [ %117, %116 ]
  %101 = icmp slt i32 %i.3, %nclusters
  br i1 %101, label %102, label %118

; <label>:102                                     ; preds = %100
  %103 = mul nsw i32 %79, %i.3
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %82, i64 %104
  %106 = bitcast i8* %105 to i32*
  %107 = sext i32 %i.3 to i64
  %108 = getelementptr inbounds i32*, i32** %86, i64 %107
  store i32* %106, i32** %108, align 8
  %109 = mul nsw i32 %79, %i.3
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %82, i64 %110
  %112 = getelementptr inbounds i8, i8* %111, i64 4
  %113 = bitcast i8* %112 to float*
  %114 = sext i32 %i.3 to i64
  %115 = getelementptr inbounds float*, float** %90, i64 %114
  store float* %113, float** %115, align 8
  br label %116

; <label>:116                                     ; preds = %102
  %117 = add nsw i32 %i.3, 1
  br label %100

; <label>:118                                     ; preds = %100
  %119 = call i32 @gettimeofday(%struct.timeval* %start, %struct.timezone* null) #4
  %120 = getelementptr inbounds %struct.args, %struct.args* %args, i32 0, i32 0
  %121 = getelementptr inbounds %struct.args, %struct.args* %args, i32 0, i32 1
  %122 = getelementptr inbounds %struct.args, %struct.args* %args, i32 0, i32 2
  %123 = getelementptr inbounds %struct.args, %struct.args* %args, i32 0, i32 3
  %124 = getelementptr inbounds %struct.args, %struct.args* %args, i32 0, i32 4
  %125 = getelementptr inbounds %struct.args, %struct.args* %args, i32 0, i32 5
  %126 = getelementptr inbounds %struct.args, %struct.args* %args, i32 0, i32 6
  %127 = getelementptr inbounds %struct.args, %struct.args* %args, i32 0, i32 7
  %128 = mul nsw i32 %nthreads, 3
  %129 = sext i32 %128 to i64
  %130 = bitcast %struct.args* %args to i8*
  %131 = sitofp i32 %npoints to float
  br label %132

; <label>:132                                     ; preds = %._crit_edge5, %118
  %loop.0 = phi i32 [ 0, %118 ], [ %loop.1, %._crit_edge5 ]
  store float** %feature, float*** %120, align 8
  store i32 %nfeatures, i32* %121, align 8
  store i32 %npoints, i32* %122, align 4
  store i32 %nclusters, i32* %123, align 8
  store i32* %membership, i32** %124, align 8
  store float** %4, float*** %125, align 8
  store i32** %86, i32*** %126, align 8
  store float** %90, float*** %127, align 8
  store i64 %129, i64* @global_i, align 8
  store float 0.000000e+00, float* @global_delta, align 4
  call void @thread_start(void (i8*)* @work, i8* %130)
  %133 = load float, float* @global_delta, align 4
  br label %134

; <label>:134                                     ; preds = %174, %132
  %i.4 = phi i32 [ 0, %132 ], [ %175, %174 ]
  %135 = icmp slt i32 %i.4, %nclusters
  br i1 %135, label %136, label %176

; <label>:136                                     ; preds = %134
  br label %137

; <label>:137                                     ; preds = %168, %136
  %j.1 = phi i32 [ 0, %136 ], [ %169, %168 ]
  %138 = icmp slt i32 %j.1, %nfeatures
  br i1 %138, label %139, label %170

; <label>:139                                     ; preds = %137
  %140 = sext i32 %i.4 to i64
  %141 = getelementptr inbounds i32*, i32** %86, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ugt i32* %142, null
  br i1 %143, label %144, label %._crit_edge3

._crit_edge3:                                     ; preds = %139
  br label %162

; <label>:144                                     ; preds = %139
  %145 = sext i32 %j.1 to i64
  %146 = sext i32 %i.4 to i64
  %147 = getelementptr inbounds float*, float** %90, i64 %146
  %148 = load float*, float** %147, align 8
  %149 = getelementptr inbounds float, float* %148, i64 %145
  %150 = load float, float* %149, align 4
  %151 = sext i32 %i.4 to i64
  %152 = getelementptr inbounds i32*, i32** %86, i64 %151
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %153, align 4
  %155 = sitofp i32 %154 to float
  %156 = fdiv float %150, %155
  %157 = sext i32 %j.1 to i64
  %158 = sext i32 %i.4 to i64
  %159 = getelementptr inbounds float*, float** %4, i64 %158
  %160 = load float*, float** %159, align 8
  %161 = getelementptr inbounds float, float* %160, i64 %157
  store float %156, float* %161, align 4
  br label %162

; <label>:162                                     ; preds = %144, %._crit_edge3
  %163 = sext i32 %j.1 to i64
  %164 = sext i32 %i.4 to i64
  %165 = getelementptr inbounds float*, float** %90, i64 %164
  %166 = load float*, float** %165, align 8
  %167 = getelementptr inbounds float, float* %166, i64 %163
  store float 0.000000e+00, float* %167, align 4
  br label %168

; <label>:168                                     ; preds = %162
  %169 = add nsw i32 %j.1, 1
  br label %137

; <label>:170                                     ; preds = %137
  %171 = sext i32 %i.4 to i64
  %172 = getelementptr inbounds i32*, i32** %86, i64 %171
  %173 = load i32*, i32** %172, align 8
  store i32 0, i32* %173, align 4
  br label %174

; <label>:174                                     ; preds = %170
  %175 = add nsw i32 %i.4, 1
  br label %134

; <label>:176                                     ; preds = %134
  %177 = fdiv float %133, %131
  br label %178

; <label>:178                                     ; preds = %176
  %179 = fcmp ogt float %177, %threshold
  br i1 %179, label %180, label %._crit_edge4

._crit_edge4:                                     ; preds = %178
  br label %183

; <label>:180                                     ; preds = %178
  %181 = add nsw i32 %loop.0, 1
  %182 = icmp slt i32 %loop.0, 500
  br label %183

; <label>:183                                     ; preds = %180, %._crit_edge4
  %loop.1 = phi i32 [ %181, %180 ], [ %loop.0, %._crit_edge4 ]
  %.reg2mem6.0 = phi i1 [ %182, %180 ], [ false, %._crit_edge4 ]
  br i1 %.reg2mem6.0, label %._crit_edge5, label %184

._crit_edge5:                                     ; preds = %183
  br label %132

; <label>:184                                     ; preds = %183
  %185 = call i32 @gettimeofday(%struct.timeval* %stop, %struct.timezone* null) #4
  %186 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = sitofp i64 %187 to double
  %189 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = sitofp i64 %190 to double
  %192 = fdiv double %191, 1.000000e+06
  %193 = fadd double %188, %192
  %194 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = sitofp i64 %195 to double
  %197 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = sitofp i64 %198 to double
  %200 = fdiv double %199, 1.000000e+06
  %201 = fadd double %196, %200
  %202 = fsub double %193, %201
  %203 = load double, double* @global_time, align 8
  %204 = fadd double %203, %202
  store double %204, double* @global_time, align 8
  call void @free(i8* %82) #4
  %205 = bitcast float** %90 to i8*
  call void @free(i8* %205) #4
  %206 = bitcast i32** %86 to i8*
  call void @free(i8* %206) #4
  ret float** %4
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
  %structArg = alloca { i32, float**, float**, float**, float** }
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
  %8 = bitcast i8* %argPtr to %struct.args*
  %9 = getelementptr inbounds %struct.args, %struct.args* %8, i32 0, i32 0
  %10 = load float**, float*** %9, align 8
  %11 = getelementptr inbounds %struct.args, %struct.args* %8, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.args, %struct.args* %8, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.args, %struct.args* %8, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.args, %struct.args* %8, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds %struct.args, %struct.args* %8, i32 0, i32 5
  %20 = load float**, float*** %19, align 8
  %21 = getelementptr inbounds %struct.args, %struct.args* %8, i32 0, i32 6
  %22 = load i32**, i32*** %21, align 8
  %23 = getelementptr inbounds %struct.args, %struct.args* %8, i32 0, i32 7
  %24 = load float**, float*** %23, align 8
  %25 = call i64 (...) @thread_getId()
  %26 = trunc i64 %25 to i32
  %27 = mul nsw i32 %26, 3
  br label %28

; <label>:28                                      ; preds = %136, %7
  %delta.0 = phi float [ 0.000000e+00, %7 ], [ %delta.1, %136 ]
  %start.0 = phi i32 [ %27, %7 ], [ %127, %136 ]
  %29 = icmp slt i32 %start.0, %14
  br i1 %29, label %30, label %.loopexit

; <label>:30                                      ; preds = %28
  %31 = add nsw i32 %start.0, 3
  %32 = icmp slt i32 %31, %14
  br i1 %32, label %33, label %35

; <label>:33                                      ; preds = %30
  %34 = add nsw i32 %start.0, 3
  br label %36

; <label>:35                                      ; preds = %30
  br label %36

; <label>:36                                      ; preds = %35, %33
  %.reg2mem6.0 = phi i32 [ %34, %33 ], [ %14, %35 ]
  br label %37

; <label>:37                                      ; preds = %100, %36
  %delta.1 = phi float [ %delta.0, %36 ], [ %delta.2, %100 ]
  %i.0 = phi i32 [ %start.0, %36 ], [ %101, %100 ]
  %38 = icmp slt i32 %i.0, %.reg2mem6.0
  br i1 %38, label %39, label %102

; <label>:39                                      ; preds = %37
  %40 = sext i32 %i.0 to i64
  %41 = getelementptr inbounds float*, float** %10, i64 %40
  %42 = load float*, float** %41, align 8
  %43 = call i32 @common_findNearestPoint(float* %42, i32 %12, float** %20, i32 %16)
  %44 = sext i32 %i.0 to i64
  %45 = getelementptr inbounds i32, i32* %18, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, %43
  br i1 %47, label %48, label %._crit_edge

._crit_edge:                                      ; preds = %39
  br label %52

; <label>:48                                      ; preds = %39
  %49 = fpext float %delta.1 to double
  %50 = fadd double %49, 1.000000e+00
  %51 = fptrunc double %50 to float
  br label %52

; <label>:52                                      ; preds = %48, %._crit_edge
  %delta.2 = phi float [ %51, %48 ], [ %delta.1, %._crit_edge ]
  %53 = sext i32 %i.0 to i64
  %54 = getelementptr inbounds i32, i32* %18, i64 %53
  store i32 %43, i32* %54, align 4
  br label %55

; <label>:55                                      ; preds = %68, %52
  %tries.0 = phi i32 [ 9, %52 ], [ %61, %68 ]
  br label %56

; <label>:56                                      ; preds = %59, %55
  %57 = call i64 (...) @RTM_fallback_isLocked()
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

; <label>:59                                      ; preds = %56
  call void @llvm.x86.sse2.pause() #4
  br label %56

; <label>:60                                      ; preds = %56
  %61 = add nsw i32 %tries.0, -1
  %62 = icmp sle i32 %61, 0
  br i1 %62, label %63, label %64

; <label>:63                                      ; preds = %60
  call void (...) @RTM_fallback_lock()
  br label %74

; <label>:64                                      ; preds = %60
  %65 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0, i64 0, i64 4294967295) #4, !srcloc !1
  %66 = trunc i64 %65 to i32
  %67 = icmp ne i32 %66, -1
  br i1 %67, label %68, label %69

; <label>:68                                      ; preds = %64
  br label %55

; <label>:69                                      ; preds = %64
  %70 = call i64 (...) @RTM_fallback_isLocked()
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %._crit_edge1

._crit_edge1:                                     ; preds = %69
  br label %73

; <label>:72                                      ; preds = %69
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !2
  br label %73

; <label>:73                                      ; preds = %72, %._crit_edge1
  br label %74

; <label>:74                                      ; preds = %73, %63
  %75 = sext i32 %43 to i64
  %76 = getelementptr inbounds i32*, i32** %22, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %43 to i64
  %81 = getelementptr inbounds i32*, i32** %22, i64 %80
  %82 = load i32*, i32** %81, align 8
  store i32 %79, i32* %82, align 4
  %83 = sext i32 %43 to i64
  %84 = getelementptr inbounds i32*, i32** %22, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %43 to i64
  %88 = getelementptr inbounds float*, float** %24, i64 %87
  %89 = sext i32 %i.0 to i64
  %90 = getelementptr inbounds float*, float** %10, i64 %89
  %91 = sext i32 %43 to i64
  %92 = getelementptr inbounds float*, float** %24, i64 %91
  %93 = sext i32 %43 to i64
  %94 = getelementptr inbounds float*, float** %24, i64 %93
  br label %codeRepl

codeRepl:                                         ; preds = %74
  %gep_ = getelementptr { i32, float**, float**, float**, float** }, { i32, float**, float**, float**, float** }* %structArg, i32 0, i32 0
  store i32 %12, i32* %gep_
  %gep_1 = getelementptr { i32, float**, float**, float**, float** }, { i32, float**, float**, float**, float** }* %structArg, i32 0, i32 1
  store float** %88, float*** %gep_1
  %gep_2 = getelementptr { i32, float**, float**, float**, float** }, { i32, float**, float**, float**, float** }* %structArg, i32 0, i32 2
  store float** %90, float*** %gep_2
  %gep_3 = getelementptr { i32, float**, float**, float**, float** }, { i32, float**, float**, float**, float** }* %structArg, i32 0, i32 3
  store float** %92, float*** %gep_3
  %gep_4 = getelementptr { i32, float**, float**, float**, float** }, { i32, float**, float**, float**, float** }* %structArg, i32 0, i32 4
  store float** %94, float*** %gep_4
  call void @work___kernel__work0({ i32, float**, float**, float**, float** }* %structArg)
  br label %95

; <label>:95                                      ; preds = %codeRepl
  %96 = icmp sgt i32 %61, 0
  br i1 %96, label %97, label %98

; <label>:97                                      ; preds = %95
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #4, !srcloc !3
  br label %99

; <label>:98                                      ; preds = %95
  call void (...) @RTM_fallback_unlock()
  br label %99

; <label>:99                                      ; preds = %98, %97
  br label %100

; <label>:100                                     ; preds = %99
  %101 = add nsw i32 %i.0, 1
  br label %37

; <label>:102                                     ; preds = %37
  %103 = add nsw i32 %start.0, 3
  %104 = icmp slt i32 %103, %14
  br i1 %104, label %105, label %135

; <label>:105                                     ; preds = %102
  br label %106

; <label>:106                                     ; preds = %119, %105
  %tries2.0 = phi i32 [ 9, %105 ], [ %112, %119 ]
  br label %107

; <label>:107                                     ; preds = %110, %106
  %108 = call i64 (...) @RTM_fallback_isLocked()
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

; <label>:110                                     ; preds = %107
  call void @llvm.x86.sse2.pause() #4
  br label %107

; <label>:111                                     ; preds = %107
  %112 = add nsw i32 %tries2.0, -1
  %113 = icmp sle i32 %112, 0
  br i1 %113, label %114, label %115

; <label>:114                                     ; preds = %111
  call void (...) @RTM_fallback_lock()
  br label %125

; <label>:115                                     ; preds = %111
  %116 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 0, i64 1, i64 4294967295) #4, !srcloc !1
  %117 = trunc i64 %116 to i32
  %118 = icmp ne i32 %117, -1
  br i1 %118, label %119, label %120

; <label>:119                                     ; preds = %115
  br label %106

; <label>:120                                     ; preds = %115
  %121 = call i64 (...) @RTM_fallback_isLocked()
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %._crit_edge2

._crit_edge2:                                     ; preds = %120
  br label %124

; <label>:123                                     ; preds = %120
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !2
  br label %124

; <label>:124                                     ; preds = %123, %._crit_edge2
  br label %125

; <label>:125                                     ; preds = %124, %114
  %126 = load i64, i64* @global_i, align 8
  %127 = trunc i64 %126 to i32
  %128 = add nsw i32 %127, 3
  %129 = sext i32 %128 to i64
  store i64 %129, i64* @global_i, align 8
  %130 = load i64, i64* @global_i, align 8
  %131 = icmp sgt i32 %112, 0
  br i1 %131, label %132, label %133

; <label>:132                                     ; preds = %125
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 1) #4, !srcloc !3
  br label %134

; <label>:133                                     ; preds = %125
  call void (...) @RTM_fallback_unlock()
  br label %134

; <label>:134                                     ; preds = %133, %132
  br label %136

; <label>:135                                     ; preds = %102
  br label %137

; <label>:136                                     ; preds = %134
  br label %28

.loopexit:                                        ; preds = %28
  br label %137

; <label>:137                                     ; preds = %.loopexit, %135
  %delta.3 = phi float [ %delta.1, %135 ], [ %delta.0, %.loopexit ]
  br label %138

; <label>:138                                     ; preds = %151, %137
  %tries4.0 = phi i32 [ 9, %137 ], [ %144, %151 ]
  br label %139

; <label>:139                                     ; preds = %142, %138
  %140 = call i64 (...) @RTM_fallback_isLocked()
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

; <label>:142                                     ; preds = %139
  call void @llvm.x86.sse2.pause() #4
  br label %139

; <label>:143                                     ; preds = %139
  %144 = add nsw i32 %tries4.0, -1
  %145 = icmp sle i32 %144, 0
  br i1 %145, label %146, label %147

; <label>:146                                     ; preds = %143
  call void (...) @RTM_fallback_lock()
  br label %157

; <label>:147                                     ; preds = %143
  %148 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 0, i64 2, i64 4294967295) #4, !srcloc !1
  %149 = trunc i64 %148 to i32
  %150 = icmp ne i32 %149, -1
  br i1 %150, label %151, label %152

; <label>:151                                     ; preds = %147
  br label %138

; <label>:152                                     ; preds = %147
  %153 = call i64 (...) @RTM_fallback_isLocked()
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %._crit_edge3

._crit_edge3:                                     ; preds = %152
  br label %156

; <label>:155                                     ; preds = %152
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !2
  br label %156

; <label>:156                                     ; preds = %155, %._crit_edge3
  br label %157

; <label>:157                                     ; preds = %156, %146
  %158 = load float, float* @global_delta, align 4
  %159 = fadd float %158, %delta.3
  store float %159, float* @global_delta, align 4
  %160 = load float, float* @global_delta, align 4
  %161 = icmp sgt i32 %144, 0
  br i1 %161, label %162, label %163

; <label>:162                                     ; preds = %157
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 2) #4, !srcloc !3
  br label %164

; <label>:163                                     ; preds = %157
  call void (...) @RTM_fallback_unlock()
  br label %164

; <label>:164                                     ; preds = %163, %162
  br label %165

; <label>:165                                     ; preds = %164
  %166 = call i64 (...) @thread_getId()
  %167 = trunc i64 %166 to i32
  %168 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  call void @SimRoiEnd(i32 %167, i32 %169)
  br label %170

; <label>:170                                     ; preds = %165
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

; Function Attrs: alwaysinline nounwind
define internal void @work___kernel__work0({ i32, float**, float**, float**, float** }*) #5 {
newFuncRoot:
  %gep_ = getelementptr { i32, float**, float**, float**, float** }, { i32, float**, float**, float**, float** }* %0, i32 0, i32 0
  %loadgep_ = load i32, i32* %gep_
  %gep_1 = getelementptr { i32, float**, float**, float**, float** }, { i32, float**, float**, float**, float** }* %0, i32 0, i32 1
  %loadgep_2 = load float**, float*** %gep_1
  %gep_3 = getelementptr { i32, float**, float**, float**, float** }, { i32, float**, float**, float**, float** }* %0, i32 0, i32 2
  %loadgep_4 = load float**, float*** %gep_3
  %gep_5 = getelementptr { i32, float**, float**, float**, float** }, { i32, float**, float**, float**, float** }* %0, i32 0, i32 3
  %loadgep_6 = load float**, float*** %gep_5
  %gep_7 = getelementptr { i32, float**, float**, float**, float** }, { i32, float**, float**, float**, float** }* %0, i32 0, i32 4
  %loadgep_8 = load float**, float*** %gep_7
  br label %__kernel__work0

.exitStub:                                        ; preds = %__kernel__work0
  ret void

__kernel__work0:                                  ; preds = %newFuncRoot, %19
  %j.0 = phi i32 [ 0, %newFuncRoot ], [ %20, %19 ]
  %1 = icmp slt i32 %j.0, %loadgep_
  br i1 %1, label %2, label %.exitStub

; <label>:2                                       ; preds = %__kernel__work0
  %3 = sext i32 %j.0 to i64
  %4 = load float*, float** %loadgep_2, align 8
  %5 = getelementptr inbounds float, float* %4, i64 %3
  %6 = load float, float* %5, align 4
  %7 = sext i32 %j.0 to i64
  %8 = load float*, float** %loadgep_4, align 8
  %9 = getelementptr inbounds float, float* %8, i64 %7
  %10 = load float, float* %9, align 4
  %11 = fadd float %6, %10
  %12 = sext i32 %j.0 to i64
  %13 = load float*, float** %loadgep_6, align 8
  %14 = getelementptr inbounds float, float* %13, i64 %12
  store float %11, float* %14, align 4
  %15 = sext i32 %j.0 to i64
  %16 = load float*, float** %loadgep_8, align 8
  %17 = getelementptr inbounds float, float* %16, i64 %15
  %18 = load float, float* %17, align 4
  br label %19

; <label>:19                                      ; preds = %2
  %20 = add nsw i32 %j.0, 1
  br label %__kernel__work0, !llvm.loop !4
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { alwaysinline nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 1658281, i32 1658297, i32 1658333, i32 1658369, i32 1658405}
!2 = !{i32 1658882, i32 1658897, i32 1658931}
!3 = !{i32 1658653, i32 1658668, i32 1658696}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.vectorize.width", i32 1337}
