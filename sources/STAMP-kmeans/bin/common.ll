; ModuleID = 'common.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define float @common_euclidDist2(float* %pt1, float* %pt2, i32 %numdims) #0 {
  %1 = alloca float*, align 8
  %2 = alloca float*, align 8
  %3 = alloca i32, align 4
  %i = alloca i32, align 4
  %ans = alloca float, align 4
  store float* %pt1, float** %1, align 8
  store float* %pt2, float** %2, align 8
  store i32 %numdims, i32* %3, align 4
  store float 0.000000e+00, float* %ans, align 4
  store i32 0, i32* %i, align 4
  br label %4

; <label>:4                                       ; preds = %34, %0
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %37

; <label>:8                                       ; preds = %4
  %9 = load i32, i32* %i, align 4
  %10 = sext i32 %9 to i64
  %11 = load float*, float** %1, align 8
  %12 = getelementptr inbounds float, float* %11, i64 %10
  %13 = load float, float* %12, align 4
  %14 = load i32, i32* %i, align 4
  %15 = sext i32 %14 to i64
  %16 = load float*, float** %2, align 8
  %17 = getelementptr inbounds float, float* %16, i64 %15
  %18 = load float, float* %17, align 4
  %19 = fsub float %13, %18
  %20 = load i32, i32* %i, align 4
  %21 = sext i32 %20 to i64
  %22 = load float*, float** %1, align 8
  %23 = getelementptr inbounds float, float* %22, i64 %21
  %24 = load float, float* %23, align 4
  %25 = load i32, i32* %i, align 4
  %26 = sext i32 %25 to i64
  %27 = load float*, float** %2, align 8
  %28 = getelementptr inbounds float, float* %27, i64 %26
  %29 = load float, float* %28, align 4
  %30 = fsub float %24, %29
  %31 = fmul float %19, %30
  %32 = load float, float* %ans, align 4
  %33 = fadd float %32, %31
  store float %33, float* %ans, align 4
  br label %34

; <label>:34                                      ; preds = %8
  %35 = load i32, i32* %i, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %i, align 4
  br label %4

; <label>:37                                      ; preds = %4
  %38 = load float, float* %ans, align 4
  ret float %38
}

; Function Attrs: nounwind uwtable
define i32 @common_findNearestPoint(float* %pt, i32 %nfeatures, float** %pts, i32 %npts) #0 {
  %1 = alloca float*, align 8
  %2 = alloca i32, align 4
  %3 = alloca float**, align 8
  %4 = alloca i32, align 4
  %index = alloca i32, align 4
  %i = alloca i32, align 4
  %max_dist = alloca float, align 4
  %limit = alloca float, align 4
  %dist = alloca float, align 4
  store float* %pt, float** %1, align 8
  store i32 %nfeatures, i32* %2, align 4
  store float** %pts, float*** %3, align 8
  store i32 %npts, i32* %4, align 4
  store i32 -1, i32* %index, align 4
  store float 0x47EFFFFFE0000000, float* %max_dist, align 4
  store float 0x3FEFFFEB00000000, float* %limit, align 4
  store i32 0, i32* %i, align 4
  br label %5

; <label>:5                                       ; preds = %30, %0
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %33

; <label>:9                                       ; preds = %5
  %10 = load float*, float** %1, align 8
  %11 = load i32, i32* %i, align 4
  %12 = sext i32 %11 to i64
  %13 = load float**, float*** %3, align 8
  %14 = getelementptr inbounds float*, float** %13, i64 %12
  %15 = load float*, float** %14, align 8
  %16 = load i32, i32* %2, align 4
  %17 = call float @common_euclidDist2(float* %10, float* %15, i32 %16)
  store float %17, float* %dist, align 4
  %18 = load float, float* %dist, align 4
  %19 = load float, float* %max_dist, align 4
  %20 = fdiv float %18, %19
  %21 = fcmp olt float %20, 0x3FEFFFEB00000000
  br i1 %21, label %22, label %29

; <label>:22                                      ; preds = %9
  %23 = load float, float* %dist, align 4
  store float %23, float* %max_dist, align 4
  %24 = load i32, i32* %i, align 4
  store i32 %24, i32* %index, align 4
  %25 = load float, float* %max_dist, align 4
  %26 = fcmp oeq float %25, 0.000000e+00
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %22
  br label %33

; <label>:28                                      ; preds = %22
  br label %29

; <label>:29                                      ; preds = %28, %9
  br label %30

; <label>:30                                      ; preds = %29
  %31 = load i32, i32* %i, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %i, align 4
  br label %5

; <label>:33                                      ; preds = %27, %5
  %34 = load i32, i32* %index, align 4
  ret i32 %34
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
