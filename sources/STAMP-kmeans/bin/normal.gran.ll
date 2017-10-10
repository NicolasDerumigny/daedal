; ModuleID = '../bin/normal.marked.ll'
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
@"../bin/normal.marked.ll_work___kernel__work0_vi" = external global i64
@"../bin/normal.marked.ll_work___kernel__work0_lsup" = external global i64
@"../bin/normal.marked.ll_work___kernel__work0_granularity" = external global i64

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
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 228, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.normal_exec, i32 0, i32 0)) #5
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
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 230, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.normal_exec, i32 0, i32 0)) #5
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
  call void @__assert_fail(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 258, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.normal_exec, i32 0, i32 0)) #5
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

; <label>:162                                     ; preds = %._crit_edge3, %144
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

; <label>:183                                     ; preds = %._crit_edge4, %180
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

; <label>:28                                      ; preds = %156, %7
  %delta.0 = phi float [ 0.000000e+00, %7 ], [ %delta.1, %156 ]
  %start.0 = phi i32 [ %27, %7 ], [ %147, %156 ]
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

; <label>:37                                      ; preds = %120, %36
  %delta.1 = phi float [ %delta.0, %36 ], [ %delta.2, %120 ]
  %i.0 = phi i32 [ %start.0, %36 ], [ %121, %120 ]
  %38 = icmp slt i32 %i.0, %.reg2mem6.0
  store i64 0, i64* @"../bin/normal.marked.ll_work___kernel__work0_vi"
  br i1 %38, label %39, label %122

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

; <label>:52                                      ; preds = %._crit_edge, %48
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

; <label>:73                                      ; preds = %._crit_edge1, %72
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
  br label %__kernel__work0_outer_chunking

__kernel__work0_outer_chunking:                   ; preds = %74, %__kernel__work0_exitChunk
  %j.0 = phi i32 [ 0, %74 ], [ %j.1, %__kernel__work0_exitChunk ]
  %lsup_value = load i64, i64* @"../bin/normal.marked.ll_work___kernel__work0_lsup"
  store i64 %lsup_value, i64* @"../bin/normal.marked.ll_work___kernel__work0_vi"
  %granularity_value = load i64, i64* @"../bin/normal.marked.ll_work___kernel__work0_granularity"
  %new_lsup = add i64 %lsup_value, %granularity_value
  store i64 %new_lsup, i64* @"../bin/normal.marked.ll_work___kernel__work0_lsup"
  %outer_vi = load i64, i64* @"../bin/normal.marked.ll_work___kernel__work0_vi"
  br label %__kernel____kernel__work0_viCond

__kernel____kernel__work0_viCond:                 ; preds = %__kernel__work0_outer_chunking, %113
  %j.1 = phi i32 [ %j.0, %__kernel__work0_outer_chunking ], [ %114, %113 ]
  %vi_value = phi i64 [ %outer_vi, %__kernel__work0_outer_chunking ], [ %"../bin/normal.marked.ll_work___kernel__work0_vi_inc", %113 ]
  %lsup_value8 = load i64, i64* @"../bin/normal.marked.ll_work___kernel__work0_lsup"
  %"../bin/normal.marked.ll_work___kernel__work0_vi_cmp" = icmp slt i64 %vi_value, %lsup_value8
  br i1 %"../bin/normal.marked.ll_work___kernel__work0_vi_cmp", label %__kernel__work0, label %__kernel__work0_exitChunk

__kernel__work0_exitChunk:                        ; preds = %__kernel____kernel__work0_viCond
  br label %__kernel__work0_outer_chunking

__kernel__work0:                                  ; preds = %__kernel____kernel__work0_viCond
  %95 = icmp slt i32 %j.1, %12
  br i1 %95, label %96, label %115

; <label>:96                                      ; preds = %__kernel__work0
  %97 = sext i32 %j.1 to i64
  %98 = load float*, float** %88, align 8
  %99 = getelementptr inbounds float, float* %98, i64 %97
  %100 = load float, float* %99, align 4
  %101 = sext i32 %j.1 to i64
  %102 = load float*, float** %90, align 8
  %103 = getelementptr inbounds float, float* %102, i64 %101
  %104 = load float, float* %103, align 4
  %105 = fadd float %100, %104
  %106 = sext i32 %j.1 to i64
  %107 = load float*, float** %92, align 8
  %108 = getelementptr inbounds float, float* %107, i64 %106
  store float %105, float* %108, align 4
  %109 = sext i32 %j.1 to i64
  %110 = load float*, float** %94, align 8
  %111 = getelementptr inbounds float, float* %110, i64 %109
  %112 = load float, float* %111, align 4
  br label %113

; <label>:113                                     ; preds = %96
  %114 = add nsw i32 %j.1, 1
  %"../bin/normal.marked.ll_work___kernel__work0_vi_inc" = add i64 %vi_value, 1
  store i64 %"../bin/normal.marked.ll_work___kernel__work0_vi_inc", i64* @"../bin/normal.marked.ll_work___kernel__work0_vi"
  br label %__kernel____kernel__work0_viCond, !llvm.loop !3

; <label>:115                                     ; preds = %__kernel__work0
  %116 = icmp sgt i32 %61, 0
  br i1 %116, label %117, label %118

; <label>:117                                     ; preds = %115
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #4, !srcloc !5
  br label %119

; <label>:118                                     ; preds = %115
  call void (...) @RTM_fallback_unlock()
  br label %119

; <label>:119                                     ; preds = %118, %117
  br label %120

; <label>:120                                     ; preds = %119
  %121 = add nsw i32 %i.0, 1
  br label %37

; <label>:122                                     ; preds = %37
  %123 = add nsw i32 %start.0, 3
  %124 = icmp slt i32 %123, %14
  br i1 %124, label %125, label %155

; <label>:125                                     ; preds = %122
  br label %126

; <label>:126                                     ; preds = %139, %125
  %tries2.0 = phi i32 [ 9, %125 ], [ %132, %139 ]
  br label %127

; <label>:127                                     ; preds = %130, %126
  %128 = call i64 (...) @RTM_fallback_isLocked()
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

; <label>:130                                     ; preds = %127
  call void @llvm.x86.sse2.pause() #4
  br label %127

; <label>:131                                     ; preds = %127
  %132 = add nsw i32 %tries2.0, -1
  %133 = icmp sle i32 %132, 0
  br i1 %133, label %134, label %135

; <label>:134                                     ; preds = %131
  call void (...) @RTM_fallback_lock()
  br label %145

; <label>:135                                     ; preds = %131
  %136 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 0, i64 1, i64 4294967295) #4, !srcloc !1
  %137 = trunc i64 %136 to i32
  %138 = icmp ne i32 %137, -1
  br i1 %138, label %139, label %140

; <label>:139                                     ; preds = %135
  br label %126

; <label>:140                                     ; preds = %135
  %141 = call i64 (...) @RTM_fallback_isLocked()
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %._crit_edge2

._crit_edge2:                                     ; preds = %140
  br label %144

; <label>:143                                     ; preds = %140
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !2
  br label %144

; <label>:144                                     ; preds = %._crit_edge2, %143
  br label %145

; <label>:145                                     ; preds = %144, %134
  %146 = load i64, i64* @global_i, align 8
  %147 = trunc i64 %146 to i32
  %148 = add nsw i32 %147, 3
  %149 = sext i32 %148 to i64
  store i64 %149, i64* @global_i, align 8
  %150 = load i64, i64* @global_i, align 8
  %151 = icmp sgt i32 %132, 0
  br i1 %151, label %152, label %153

; <label>:152                                     ; preds = %145
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 1) #4, !srcloc !5
  br label %154

; <label>:153                                     ; preds = %145
  call void (...) @RTM_fallback_unlock()
  br label %154

; <label>:154                                     ; preds = %153, %152
  br label %156

; <label>:155                                     ; preds = %122
  br label %157

; <label>:156                                     ; preds = %154
  br label %28

.loopexit:                                        ; preds = %28
  br label %157

; <label>:157                                     ; preds = %.loopexit, %155
  %delta.3 = phi float [ %delta.1, %155 ], [ %delta.0, %.loopexit ]
  br label %158

; <label>:158                                     ; preds = %171, %157
  %tries4.0 = phi i32 [ 9, %157 ], [ %164, %171 ]
  br label %159

; <label>:159                                     ; preds = %162, %158
  %160 = call i64 (...) @RTM_fallback_isLocked()
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

; <label>:162                                     ; preds = %159
  call void @llvm.x86.sse2.pause() #4
  br label %159

; <label>:163                                     ; preds = %159
  %164 = add nsw i32 %tries4.0, -1
  %165 = icmp sle i32 %164, 0
  br i1 %165, label %166, label %167

; <label>:166                                     ; preds = %163
  call void (...) @RTM_fallback_lock()
  br label %177

; <label>:167                                     ; preds = %163
  %168 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 0, i64 2, i64 4294967295) #4, !srcloc !1
  %169 = trunc i64 %168 to i32
  %170 = icmp ne i32 %169, -1
  br i1 %170, label %171, label %172

; <label>:171                                     ; preds = %167
  br label %158

; <label>:172                                     ; preds = %167
  %173 = call i64 (...) @RTM_fallback_isLocked()
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %._crit_edge3

._crit_edge3:                                     ; preds = %172
  br label %176

; <label>:175                                     ; preds = %172
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !2
  br label %176

; <label>:176                                     ; preds = %._crit_edge3, %175
  br label %177

; <label>:177                                     ; preds = %176, %166
  %178 = load float, float* @global_delta, align 4
  %179 = fadd float %178, %delta.3
  store float %179, float* @global_delta, align 4
  %180 = load float, float* @global_delta, align 4
  %181 = icmp sgt i32 %164, 0
  br i1 %181, label %182, label %183

; <label>:182                                     ; preds = %177
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 2) #4, !srcloc !5
  br label %184

; <label>:183                                     ; preds = %177
  call void (...) @RTM_fallback_unlock()
  br label %184

; <label>:184                                     ; preds = %183, %182
  br label %185

; <label>:185                                     ; preds = %184
  %186 = call i64 (...) @thread_getId()
  %187 = trunc i64 %186 to i32
  %188 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  call void @SimRoiEnd(i32 %187, i32 %189)
  br label %190

; <label>:190                                     ; preds = %185
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
