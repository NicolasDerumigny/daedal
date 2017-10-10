; ModuleID = '../bin/cluster.stats.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }

@.str = private unnamed_addr constant [11 x i8] c"membership\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"cluster.c\00", align 1
@__PRETTY_FUNCTION__.cluster_exec = private unnamed_addr constant [89 x i8] c"int cluster_exec(int, int, int, float **, int, int, int, float, int *, float ***, int *)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"randomPtr\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"single_variable\00", align 1
@__PRETTY_FUNCTION__.zscoreTransform = private unnamed_addr constant [41 x i8] c"void zscoreTransform(float **, int, int)\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"moments\00", align 1
@__PRETTY_FUNCTION__.extractMoments = private unnamed_addr constant [41 x i8] c"float *extractMoments(float *, int, int)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cluster_exec(i32 %nthreads, i32 %numObjects, i32 %numAttributes, float** %attributes, i32 %use_zscore_transform, i32 %min_nclusters, i32 %max_nclusters, float %threshold, i32* %best_nclusters, float*** %cluster_centres, i32* %cluster_assign) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca float**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32*, align 8
  %10 = alloca float***, align 8
  %11 = alloca i32*, align 8
  %itime = alloca i32, align 4
  %nclusters = alloca i32, align 4
  %membership = alloca i32*, align 8
  %tmp_cluster_centres = alloca float**, align 8
  %randomPtr = alloca %struct.random*, align 8
  store i32 %nthreads, i32* %1, align 4
  store i32 %numObjects, i32* %2, align 4
  store i32 %numAttributes, i32* %3, align 4
  store float** %attributes, float*** %4, align 8
  store i32 %use_zscore_transform, i32* %5, align 4
  store i32 %min_nclusters, i32* %6, align 4
  store i32 %max_nclusters, i32* %7, align 4
  store float %threshold, float* %8, align 4
  store i32* %best_nclusters, i32** %9, align 8
  store float*** %cluster_centres, float**** %10, align 8
  store i32* %cluster_assign, i32** %11, align 8
  store i32* null, i32** %membership, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = call noalias i8* @malloc(i64 %14) #4
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %membership, align 8
  %17 = load i32*, i32** %membership, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %0
  br label %22

; <label>:20                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 192, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @__PRETTY_FUNCTION__.cluster_exec, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %22

; <label>:22                                      ; preds = %21, %19
  %23 = call %struct.random* (...) @random_alloc()
  store %struct.random* %23, %struct.random** %randomPtr, align 8
  %24 = load %struct.random*, %struct.random** %randomPtr, align 8
  %25 = icmp ne %struct.random* %24, null
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %22
  br label %29

; <label>:27                                      ; preds = %22
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 195, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @__PRETTY_FUNCTION__.cluster_exec, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %29

; <label>:29                                      ; preds = %28, %26
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

; <label>:32                                      ; preds = %29
  %33 = load float**, float*** %4, align 8
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* %3, align 4
  call void @zscoreTransform(float** %33, i32 %34, i32 %35)
  br label %36

; <label>:36                                      ; preds = %32, %29
  store i32 0, i32* %itime, align 4
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %nclusters, align 4
  br label %38

; <label>:38                                      ; preds = %72, %36
  %39 = load i32, i32* %nclusters, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %75

; <label>:42                                      ; preds = %38
  %43 = load %struct.random*, %struct.random** %randomPtr, align 8
  call void @random_seed(%struct.random* %43, i64 7)
  %44 = load i32, i32* %1, align 4
  %45 = load float**, float*** %4, align 8
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* %nclusters, align 4
  %49 = load float, float* %8, align 4
  %50 = load i32*, i32** %membership, align 8
  %51 = load %struct.random*, %struct.random** %randomPtr, align 8
  %52 = call float** @normal_exec(i32 %44, float** %45, i32 %46, i32 %47, i32 %48, float %49, i32* %50, %struct.random* %51)
  store float** %52, float*** %tmp_cluster_centres, align 8
  %53 = load float***, float**** %10, align 8
  %54 = load float**, float*** %53, align 8
  %55 = icmp ne float** %54, null
  br i1 %55, label %56, label %65

; <label>:56                                      ; preds = %42
  %57 = load float***, float**** %10, align 8
  %58 = load float**, float*** %57, align 8
  %59 = getelementptr inbounds float*, float** %58, i64 0
  %60 = load float*, float** %59, align 8
  %61 = bitcast float* %60 to i8*
  call void @free(i8* %61) #4
  %62 = load float***, float**** %10, align 8
  %63 = load float**, float*** %62, align 8
  %64 = bitcast float** %63 to i8*
  call void @free(i8* %64) #4
  br label %65

; <label>:65                                      ; preds = %56, %42
  %66 = load float**, float*** %tmp_cluster_centres, align 8
  %67 = load float***, float**** %10, align 8
  store float** %66, float*** %67, align 8
  %68 = load i32, i32* %nclusters, align 4
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %itime, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %itime, align 4
  br label %72

; <label>:72                                      ; preds = %65
  %73 = load i32, i32* %nclusters, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %nclusters, align 4
  br label %38

; <label>:75                                      ; preds = %38
  %76 = load i32*, i32** %membership, align 8
  %77 = bitcast i32* %76 to i8*
  call void @free(i8* %77) #4
  %78 = load %struct.random*, %struct.random** %randomPtr, align 8
  call void @random_free(%struct.random* %78)
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

declare %struct.random* @random_alloc(...) #3

; Function Attrs: nounwind uwtable
define internal void @zscoreTransform(float** %data, i32 %numObjects, i32 %numAttributes) #0 {
  %1 = alloca float**, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %single_variable = alloca float*, align 8
  %moments = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store float** %data, float*** %1, align 8
  store i32 %numObjects, i32* %2, align 4
  store i32 %numAttributes, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = call noalias i8* @calloc(i64 %5, i64 4) #4
  %7 = bitcast i8* %6 to float*
  store float* %7, float** %single_variable, align 8
  %8 = load float*, float** %single_variable, align 8
  %9 = icmp ne float* %8, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  br label %13

; <label>:11                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 150, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.zscoreTransform, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %12, %10
  store i32 0, i32* %i, align 4
  br label %14

; <label>:14                                      ; preds = %88, %13
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %91

; <label>:18                                      ; preds = %14
  store i32 0, i32* %j, align 4
  br label %19

; <label>:19                                      ; preds = %37, %18
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %40

; <label>:23                                      ; preds = %19
  %24 = load i32, i32* %i, align 4
  %25 = sext i32 %24 to i64
  %26 = load i32, i32* %j, align 4
  %27 = sext i32 %26 to i64
  %28 = load float**, float*** %1, align 8
  %29 = getelementptr inbounds float*, float** %28, i64 %27
  %30 = load float*, float** %29, align 8
  %31 = getelementptr inbounds float, float* %30, i64 %25
  %32 = load float, float* %31, align 4
  %33 = load i32, i32* %j, align 4
  %34 = sext i32 %33 to i64
  %35 = load float*, float** %single_variable, align 8
  %36 = getelementptr inbounds float, float* %35, i64 %34
  store float %32, float* %36, align 4
  br label %37

; <label>:37                                      ; preds = %23
  %38 = load i32, i32* %j, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %j, align 4
  br label %19

; <label>:40                                      ; preds = %19
  %41 = load float*, float** %single_variable, align 8
  %42 = load i32, i32* %2, align 4
  %43 = call float* @extractMoments(float* %41, i32 %42, i32 2)
  store float* %43, float** %moments, align 8
  %44 = load float*, float** %moments, align 8
  %45 = getelementptr inbounds float, float* %44, i64 1
  %46 = load float, float* %45, align 4
  %47 = fpext float %46 to double
  %48 = call double @sqrt(double %47) #4
  %49 = fptrunc double %48 to float
  %50 = load float*, float** %moments, align 8
  %51 = getelementptr inbounds float, float* %50, i64 1
  store float %49, float* %51, align 4
  store i32 0, i32* %j, align 4
  br label %52

; <label>:52                                      ; preds = %82, %40
  %53 = load i32, i32* %j, align 4
  %54 = load i32, i32* %2, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %85

; <label>:56                                      ; preds = %52
  %57 = load i32, i32* %i, align 4
  %58 = sext i32 %57 to i64
  %59 = load i32, i32* %j, align 4
  %60 = sext i32 %59 to i64
  %61 = load float**, float*** %1, align 8
  %62 = getelementptr inbounds float*, float** %61, i64 %60
  %63 = load float*, float** %62, align 8
  %64 = getelementptr inbounds float, float* %63, i64 %58
  %65 = load float, float* %64, align 4
  %66 = load float*, float** %moments, align 8
  %67 = getelementptr inbounds float, float* %66, i64 0
  %68 = load float, float* %67, align 4
  %69 = fsub float %65, %68
  %70 = load float*, float** %moments, align 8
  %71 = getelementptr inbounds float, float* %70, i64 1
  %72 = load float, float* %71, align 4
  %73 = fdiv float %69, %72
  %74 = load i32, i32* %i, align 4
  %75 = sext i32 %74 to i64
  %76 = load i32, i32* %j, align 4
  %77 = sext i32 %76 to i64
  %78 = load float**, float*** %1, align 8
  %79 = getelementptr inbounds float*, float** %78, i64 %77
  %80 = load float*, float** %79, align 8
  %81 = getelementptr inbounds float, float* %80, i64 %75
  store float %73, float* %81, align 4
  br label %82

; <label>:82                                      ; preds = %56
  %83 = load i32, i32* %j, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %j, align 4
  br label %52

; <label>:85                                      ; preds = %52
  %86 = load float*, float** %moments, align 8
  %87 = bitcast float* %86 to i8*
  call void @free(i8* %87) #4
  br label %88

; <label>:88                                      ; preds = %85
  %89 = load i32, i32* %i, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %i, align 4
  br label %14

; <label>:91                                      ; preds = %14
  %92 = load float*, float** %single_variable, align 8
  %93 = bitcast float* %92 to i8*
  call void @free(i8* %93) #4
  ret void
}

declare void @random_seed(%struct.random*, i64) #3

declare float** @normal_exec(i32, float**, i32, i32, i32, float, i32*, %struct.random*) #3

; Function Attrs: nounwind
declare void @free(i8*) #1

declare void @random_free(%struct.random*) #3

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal float* @extractMoments(float* %data, i32 %num_elts, i32 %num_moments) #0 {
  %1 = alloca float*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %moments = alloca float*, align 8
  store float* %data, float** %1, align 8
  store i32 %num_elts, i32* %2, align 4
  store i32 %num_moments, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = call noalias i8* @calloc(i64 %5, i64 4) #4
  %7 = bitcast i8* %6 to float*
  store float* %7, float** %moments, align 8
  %8 = load float*, float** %moments, align 8
  %9 = icmp ne float* %8, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  br label %13

; <label>:11                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 118, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.extractMoments, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %12, %10
  store i32 0, i32* %i, align 4
  br label %14

; <label>:14                                      ; preds = %28, %13
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %31

; <label>:18                                      ; preds = %14
  %19 = load i32, i32* %i, align 4
  %20 = sext i32 %19 to i64
  %21 = load float*, float** %1, align 8
  %22 = getelementptr inbounds float, float* %21, i64 %20
  %23 = load float, float* %22, align 4
  %24 = load float*, float** %moments, align 8
  %25 = getelementptr inbounds float, float* %24, i64 0
  %26 = load float, float* %25, align 4
  %27 = fadd float %26, %23
  store float %27, float* %25, align 4
  br label %28

; <label>:28                                      ; preds = %18
  %29 = load i32, i32* %i, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %i, align 4
  br label %14

; <label>:31                                      ; preds = %14
  %32 = load float*, float** %moments, align 8
  %33 = getelementptr inbounds float, float* %32, i64 0
  %34 = load float, float* %33, align 4
  %35 = load i32, i32* %2, align 4
  %36 = sitofp i32 %35 to float
  %37 = fdiv float %34, %36
  %38 = load float*, float** %moments, align 8
  %39 = getelementptr inbounds float, float* %38, i64 0
  store float %37, float* %39, align 4
  store i32 1, i32* %j, align 4
  br label %40

; <label>:40                                      ; preds = %92, %31
  %41 = load i32, i32* %j, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %95

; <label>:44                                      ; preds = %40
  %45 = load i32, i32* %j, align 4
  %46 = sext i32 %45 to i64
  %47 = load float*, float** %moments, align 8
  %48 = getelementptr inbounds float, float* %47, i64 %46
  store float 0.000000e+00, float* %48, align 4
  store i32 0, i32* %i, align 4
  br label %49

; <label>:49                                      ; preds = %76, %44
  %50 = load i32, i32* %i, align 4
  %51 = load i32, i32* %2, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %79

; <label>:53                                      ; preds = %49
  %54 = load i32, i32* %i, align 4
  %55 = sext i32 %54 to i64
  %56 = load float*, float** %1, align 8
  %57 = getelementptr inbounds float, float* %56, i64 %55
  %58 = load float, float* %57, align 4
  %59 = load float*, float** %moments, align 8
  %60 = getelementptr inbounds float, float* %59, i64 0
  %61 = load float, float* %60, align 4
  %62 = fsub float %58, %61
  %63 = fpext float %62 to double
  %64 = load i32, i32* %j, align 4
  %65 = add nsw i32 %64, 1
  %66 = sitofp i32 %65 to double
  %67 = call double @pow(double %63, double %66) #4
  %68 = load i32, i32* %j, align 4
  %69 = sext i32 %68 to i64
  %70 = load float*, float** %moments, align 8
  %71 = getelementptr inbounds float, float* %70, i64 %69
  %72 = load float, float* %71, align 4
  %73 = fpext float %72 to double
  %74 = fadd double %73, %67
  %75 = fptrunc double %74 to float
  store float %75, float* %71, align 4
  br label %76

; <label>:76                                      ; preds = %53
  %77 = load i32, i32* %i, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %i, align 4
  br label %49

; <label>:79                                      ; preds = %49
  %80 = load i32, i32* %j, align 4
  %81 = sext i32 %80 to i64
  %82 = load float*, float** %moments, align 8
  %83 = getelementptr inbounds float, float* %82, i64 %81
  %84 = load float, float* %83, align 4
  %85 = load i32, i32* %2, align 4
  %86 = sitofp i32 %85 to float
  %87 = fdiv float %84, %86
  %88 = load i32, i32* %j, align 4
  %89 = sext i32 %88 to i64
  %90 = load float*, float** %moments, align 8
  %91 = getelementptr inbounds float, float* %90, i64 %89
  store float %87, float* %91, align 4
  br label %92

; <label>:92                                      ; preds = %79
  %93 = load i32, i32* %j, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %j, align 4
  br label %40

; <label>:95                                      ; preds = %40
  %96 = load float*, float** %moments, align 8
  ret float* %96
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind
declare double @pow(double, double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
