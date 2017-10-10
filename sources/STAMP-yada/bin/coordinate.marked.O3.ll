; ModuleID = '../bin/coordinate.marked.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coordinate = type { double, double }

@.str = private unnamed_addr constant [19 x i8] c"(%+0.4lg, %+0.4lg)\00", align 1

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @coordinate_compare(%struct.coordinate* nocapture readonly %aPtr, %struct.coordinate* nocapture readonly %bPtr) #0 {
  %1 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %aPtr, i64 0, i32 0
  %2 = load double, double* %1, align 8
  %3 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %bPtr, i64 0, i32 0
  %4 = load double, double* %3, align 8
  %5 = fcmp olt double %2, %4
  br i1 %5, label %16, label %6

; <label>:6                                       ; preds = %0
  %7 = fcmp ogt double %2, %4
  br i1 %7, label %16, label %8

; <label>:8                                       ; preds = %6
  %9 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %aPtr, i64 0, i32 1
  %10 = load double, double* %9, align 8
  %11 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %bPtr, i64 0, i32 1
  %12 = load double, double* %11, align 8
  %13 = fcmp olt double %10, %12
  br i1 %13, label %16, label %14

; <label>:14                                      ; preds = %8
  %15 = fcmp ogt double %10, %12
  %. = zext i1 %15 to i64
  br label %16

; <label>:16                                      ; preds = %14, %8, %6, %0
  %.0 = phi i64 [ -1, %0 ], [ 1, %6 ], [ -1, %8 ], [ %., %14 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define double @coordinate_distance(%struct.coordinate* nocapture readonly %coordinatePtr, %struct.coordinate* nocapture readonly %aPtr) #1 {
  %1 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinatePtr, i64 0, i32 0
  %2 = load double, double* %1, align 8
  %3 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %aPtr, i64 0, i32 0
  %4 = load double, double* %3, align 8
  %5 = fsub double %2, %4
  %6 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinatePtr, i64 0, i32 1
  %7 = load double, double* %6, align 8
  %8 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %aPtr, i64 0, i32 1
  %9 = load double, double* %8, align 8
  %10 = fsub double %7, %9
  %11 = fmul double %5, %5
  %12 = fmul double %10, %10
  %13 = fadd double %11, %12
  %14 = tail call double @sqrt(double %13) #3
  ret double %14
}

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define double @coordinate_angle(%struct.coordinate* nocapture readonly %aPtr, %struct.coordinate* nocapture readonly %bPtr, %struct.coordinate* nocapture readonly %cPtr) #1 {
  %1 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %bPtr, i64 0, i32 0
  %2 = load double, double* %1, align 8
  %3 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %aPtr, i64 0, i32 0
  %4 = load double, double* %3, align 8
  %5 = fsub double %2, %4
  %6 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %bPtr, i64 0, i32 1
  %7 = load double, double* %6, align 8
  %8 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %aPtr, i64 0, i32 1
  %9 = load double, double* %8, align 8
  %10 = fsub double %7, %9
  %11 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %cPtr, i64 0, i32 0
  %12 = load double, double* %11, align 8
  %13 = fsub double %12, %4
  %14 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %cPtr, i64 0, i32 1
  %15 = load double, double* %14, align 8
  %16 = fsub double %15, %9
  %17 = fmul double %5, %13
  %18 = fmul double %10, %16
  %19 = fadd double %17, %18
  %20 = fsub double %4, %2
  %21 = fsub double %9, %7
  %22 = fmul double %20, %20
  %23 = fmul double %21, %21
  %24 = fadd double %22, %23
  %25 = tail call double @sqrt(double %24) #3
  %26 = load double, double* %3, align 8
  %27 = load double, double* %11, align 8
  %28 = fsub double %26, %27
  %29 = load double, double* %8, align 8
  %30 = load double, double* %14, align 8
  %31 = fsub double %29, %30
  %32 = fmul double %28, %28
  %33 = fmul double %31, %31
  %34 = fadd double %32, %33
  %35 = tail call double @sqrt(double %34) #3
  %36 = fmul double %25, %35
  %37 = fdiv double %19, %36
  %38 = tail call double @acos(double %37) #3
  %39 = fmul double %38, 1.800000e+02
  %40 = fdiv double %39, 0x400921FB54442D18
  ret double %40
}

; Function Attrs: nounwind
declare double @acos(double) #2

; Function Attrs: nounwind uwtable
define void @coordinate_print(%struct.coordinate* nocapture readonly %coordinatePtr) #1 {
  %1 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinatePtr, i64 0, i32 0
  %2 = load double, double* %1, align 8
  %3 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinatePtr, i64 0, i32 1
  %4 = load double, double* %3, align 8
  %5 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), double %2, double %4)
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #2

attributes #0 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
