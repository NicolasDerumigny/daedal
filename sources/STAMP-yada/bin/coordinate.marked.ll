; ModuleID = '../bin/coordinate.stats.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coordinate = type { double, double }

@.str = private unnamed_addr constant [19 x i8] c"(%+0.4lg, %+0.4lg)\00", align 1

; Function Attrs: nounwind uwtable
define i64 @coordinate_compare(%struct.coordinate* %aPtr, %struct.coordinate* %bPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.coordinate*, align 8
  %3 = alloca %struct.coordinate*, align 8
  store %struct.coordinate* %aPtr, %struct.coordinate** %2, align 8
  store %struct.coordinate* %bPtr, %struct.coordinate** %3, align 8
  %4 = load %struct.coordinate*, %struct.coordinate** %2, align 8
  %5 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i32 0, i32 0
  %6 = load double, double* %5, align 8
  %7 = load %struct.coordinate*, %struct.coordinate** %3, align 8
  %8 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %7, i32 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = fcmp olt double %6, %9
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  store i64 -1, i64* %1, align 8
  br label %43

; <label>:12                                      ; preds = %0
  %13 = load %struct.coordinate*, %struct.coordinate** %2, align 8
  %14 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %13, i32 0, i32 0
  %15 = load double, double* %14, align 8
  %16 = load %struct.coordinate*, %struct.coordinate** %3, align 8
  %17 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %16, i32 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = fcmp ogt double %15, %18
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %12
  store i64 1, i64* %1, align 8
  br label %43

; <label>:21                                      ; preds = %12
  %22 = load %struct.coordinate*, %struct.coordinate** %2, align 8
  %23 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %22, i32 0, i32 1
  %24 = load double, double* %23, align 8
  %25 = load %struct.coordinate*, %struct.coordinate** %3, align 8
  %26 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %25, i32 0, i32 1
  %27 = load double, double* %26, align 8
  %28 = fcmp olt double %24, %27
  br i1 %28, label %29, label %30

; <label>:29                                      ; preds = %21
  store i64 -1, i64* %1, align 8
  br label %43

; <label>:30                                      ; preds = %21
  %31 = load %struct.coordinate*, %struct.coordinate** %2, align 8
  %32 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %31, i32 0, i32 1
  %33 = load double, double* %32, align 8
  %34 = load %struct.coordinate*, %struct.coordinate** %3, align 8
  %35 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %34, i32 0, i32 1
  %36 = load double, double* %35, align 8
  %37 = fcmp ogt double %33, %36
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %30
  store i64 1, i64* %1, align 8
  br label %43

; <label>:39                                      ; preds = %30
  br label %40

; <label>:40                                      ; preds = %39
  br label %41

; <label>:41                                      ; preds = %40
  br label %42

; <label>:42                                      ; preds = %41
  store i64 0, i64* %1, align 8
  br label %43

; <label>:43                                      ; preds = %42, %38, %29, %20, %11
  %44 = load i64, i64* %1, align 8
  ret i64 %44
}

; Function Attrs: nounwind uwtable
define double @coordinate_distance(%struct.coordinate* %coordinatePtr, %struct.coordinate* %aPtr) #0 {
  %1 = alloca %struct.coordinate*, align 8
  %2 = alloca %struct.coordinate*, align 8
  %delta_x = alloca double, align 8
  %delta_y = alloca double, align 8
  store %struct.coordinate* %coordinatePtr, %struct.coordinate** %1, align 8
  store %struct.coordinate* %aPtr, %struct.coordinate** %2, align 8
  %3 = load %struct.coordinate*, %struct.coordinate** %1, align 8
  %4 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %3, i32 0, i32 0
  %5 = load double, double* %4, align 8
  %6 = load %struct.coordinate*, %struct.coordinate** %2, align 8
  %7 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %6, i32 0, i32 0
  %8 = load double, double* %7, align 8
  %9 = fsub double %5, %8
  store double %9, double* %delta_x, align 8
  %10 = load %struct.coordinate*, %struct.coordinate** %1, align 8
  %11 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %10, i32 0, i32 1
  %12 = load double, double* %11, align 8
  %13 = load %struct.coordinate*, %struct.coordinate** %2, align 8
  %14 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %13, i32 0, i32 1
  %15 = load double, double* %14, align 8
  %16 = fsub double %12, %15
  store double %16, double* %delta_y, align 8
  %17 = load double, double* %delta_x, align 8
  %18 = load double, double* %delta_x, align 8
  %19 = fmul double %17, %18
  %20 = load double, double* %delta_y, align 8
  %21 = load double, double* %delta_y, align 8
  %22 = fmul double %20, %21
  %23 = fadd double %19, %22
  %24 = call double @sqrt(double %23) #3
  ret double %24
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind uwtable
define double @coordinate_angle(%struct.coordinate* %aPtr, %struct.coordinate* %bPtr, %struct.coordinate* %cPtr) #0 {
  %1 = alloca %struct.coordinate*, align 8
  %2 = alloca %struct.coordinate*, align 8
  %3 = alloca %struct.coordinate*, align 8
  %delta_b = alloca %struct.coordinate, align 8
  %delta_c = alloca %struct.coordinate, align 8
  %distance_b = alloca double, align 8
  %distance_c = alloca double, align 8
  %numerator = alloca double, align 8
  %denominator = alloca double, align 8
  %cosine = alloca double, align 8
  %radian = alloca double, align 8
  store %struct.coordinate* %aPtr, %struct.coordinate** %1, align 8
  store %struct.coordinate* %bPtr, %struct.coordinate** %2, align 8
  store %struct.coordinate* %cPtr, %struct.coordinate** %3, align 8
  %4 = load %struct.coordinate*, %struct.coordinate** %2, align 8
  %5 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i32 0, i32 0
  %6 = load double, double* %5, align 8
  %7 = load %struct.coordinate*, %struct.coordinate** %1, align 8
  %8 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %7, i32 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = fsub double %6, %9
  %11 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %delta_b, i32 0, i32 0
  store double %10, double* %11, align 8
  %12 = load %struct.coordinate*, %struct.coordinate** %2, align 8
  %13 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %12, i32 0, i32 1
  %14 = load double, double* %13, align 8
  %15 = load %struct.coordinate*, %struct.coordinate** %1, align 8
  %16 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %15, i32 0, i32 1
  %17 = load double, double* %16, align 8
  %18 = fsub double %14, %17
  %19 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %delta_b, i32 0, i32 1
  store double %18, double* %19, align 8
  %20 = load %struct.coordinate*, %struct.coordinate** %3, align 8
  %21 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %20, i32 0, i32 0
  %22 = load double, double* %21, align 8
  %23 = load %struct.coordinate*, %struct.coordinate** %1, align 8
  %24 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %23, i32 0, i32 0
  %25 = load double, double* %24, align 8
  %26 = fsub double %22, %25
  %27 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %delta_c, i32 0, i32 0
  store double %26, double* %27, align 8
  %28 = load %struct.coordinate*, %struct.coordinate** %3, align 8
  %29 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %28, i32 0, i32 1
  %30 = load double, double* %29, align 8
  %31 = load %struct.coordinate*, %struct.coordinate** %1, align 8
  %32 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %31, i32 0, i32 1
  %33 = load double, double* %32, align 8
  %34 = fsub double %30, %33
  %35 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %delta_c, i32 0, i32 1
  store double %34, double* %35, align 8
  %36 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %delta_b, i32 0, i32 0
  %37 = load double, double* %36, align 8
  %38 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %delta_c, i32 0, i32 0
  %39 = load double, double* %38, align 8
  %40 = fmul double %37, %39
  %41 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %delta_b, i32 0, i32 1
  %42 = load double, double* %41, align 8
  %43 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %delta_c, i32 0, i32 1
  %44 = load double, double* %43, align 8
  %45 = fmul double %42, %44
  %46 = fadd double %40, %45
  store double %46, double* %numerator, align 8
  %47 = load %struct.coordinate*, %struct.coordinate** %1, align 8
  %48 = load %struct.coordinate*, %struct.coordinate** %2, align 8
  %49 = call double @coordinate_distance(%struct.coordinate* %47, %struct.coordinate* %48)
  store double %49, double* %distance_b, align 8
  %50 = load %struct.coordinate*, %struct.coordinate** %1, align 8
  %51 = load %struct.coordinate*, %struct.coordinate** %3, align 8
  %52 = call double @coordinate_distance(%struct.coordinate* %50, %struct.coordinate* %51)
  store double %52, double* %distance_c, align 8
  %53 = load double, double* %distance_b, align 8
  %54 = load double, double* %distance_c, align 8
  %55 = fmul double %53, %54
  store double %55, double* %denominator, align 8
  %56 = load double, double* %numerator, align 8
  %57 = load double, double* %denominator, align 8
  %58 = fdiv double %56, %57
  store double %58, double* %cosine, align 8
  %59 = load double, double* %cosine, align 8
  %60 = call double @acos(double %59) #3
  store double %60, double* %radian, align 8
  %61 = load double, double* %radian, align 8
  %62 = fmul double 1.800000e+02, %61
  %63 = fdiv double %62, 0x400921FB54442D18
  ret double %63
}

; Function Attrs: nounwind
declare double @acos(double) #1

; Function Attrs: nounwind uwtable
define void @coordinate_print(%struct.coordinate* %coordinatePtr) #0 {
  %1 = alloca %struct.coordinate*, align 8
  store %struct.coordinate* %coordinatePtr, %struct.coordinate** %1, align 8
  %2 = load %struct.coordinate*, %struct.coordinate** %1, align 8
  %3 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %2, i32 0, i32 0
  %4 = load double, double* %3, align 8
  %5 = load %struct.coordinate*, %struct.coordinate** %1, align 8
  %6 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %5, i32 0, i32 1
  %7 = load double, double* %6, align 8
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), double %4, double %7)
  ret void
}

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
