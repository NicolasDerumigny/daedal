; ModuleID = 'coordinate.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coordinate = type { i64, i64, i64 }
%struct.pair = type { i8*, i8* }

; Function Attrs: nounwind uwtable
define %struct.coordinate* @coordinate_alloc(i64 %x, i64 %y, i64 %z) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %coordinatePtr = alloca %struct.coordinate*, align 8
  store i64 %x, i64* %1, align 8
  store i64 %y, i64* %2, align 8
  store i64 %z, i64* %3, align 8
  %4 = call noalias i8* @malloc(i64 24) #2
  %5 = bitcast i8* %4 to %struct.coordinate*
  store %struct.coordinate* %5, %struct.coordinate** %coordinatePtr, align 8
  %6 = load %struct.coordinate*, %struct.coordinate** %coordinatePtr, align 8
  %7 = icmp ne %struct.coordinate* %6, null
  br i1 %7, label %8, label %18

; <label>:8                                       ; preds = %0
  %9 = load i64, i64* %1, align 8
  %10 = load %struct.coordinate*, %struct.coordinate** %coordinatePtr, align 8
  %11 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load i64, i64* %2, align 8
  %13 = load %struct.coordinate*, %struct.coordinate** %coordinatePtr, align 8
  %14 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %13, i32 0, i32 1
  store i64 %12, i64* %14, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.coordinate*, %struct.coordinate** %coordinatePtr, align 8
  %17 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %16, i32 0, i32 2
  store i64 %15, i64* %17, align 8
  br label %18

; <label>:18                                      ; preds = %8, %0
  %19 = load %struct.coordinate*, %struct.coordinate** %coordinatePtr, align 8
  ret %struct.coordinate* %19
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @coordinate_free(%struct.coordinate* %coordinatePtr) #0 {
  %1 = alloca %struct.coordinate*, align 8
  store %struct.coordinate* %coordinatePtr, %struct.coordinate** %1, align 8
  %2 = load %struct.coordinate*, %struct.coordinate** %1, align 8
  %3 = bitcast %struct.coordinate* %2 to i8*
  call void @free(i8* %3) #2
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i64 @coordinate_isEqual(%struct.coordinate* %aPtr, %struct.coordinate* %bPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.coordinate*, align 8
  %3 = alloca %struct.coordinate*, align 8
  store %struct.coordinate* %aPtr, %struct.coordinate** %2, align 8
  store %struct.coordinate* %bPtr, %struct.coordinate** %3, align 8
  %4 = load %struct.coordinate*, %struct.coordinate** %2, align 8
  %5 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.coordinate*, %struct.coordinate** %3, align 8
  %8 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %6, %9
  br i1 %10, label %11, label %28

; <label>:11                                      ; preds = %0
  %12 = load %struct.coordinate*, %struct.coordinate** %2, align 8
  %13 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.coordinate*, %struct.coordinate** %3, align 8
  %16 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %28

; <label>:19                                      ; preds = %11
  %20 = load %struct.coordinate*, %struct.coordinate** %2, align 8
  %21 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.coordinate*, %struct.coordinate** %3, align 8
  %24 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %19
  store i64 1, i64* %1, align 8
  br label %29

; <label>:28                                      ; preds = %19, %11, %0
  store i64 0, i64* %1, align 8
  br label %29

; <label>:29                                      ; preds = %28, %27
  %30 = load i64, i64* %1, align 8
  ret i64 %30
}

; Function Attrs: nounwind uwtable
define i64 @coordinate_comparePair(i8* %aPtr, i8* %bPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %aDistance = alloca double, align 8
  %bDistance = alloca double, align 8
  store i8* %aPtr, i8** %2, align 8
  store i8* %bPtr, i8** %3, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.pair*
  %6 = call double @getPairDistance(%struct.pair* %5)
  store double %6, double* %aDistance, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.pair*
  %9 = call double @getPairDistance(%struct.pair* %8)
  store double %9, double* %bDistance, align 8
  %10 = load double, double* %aDistance, align 8
  %11 = load double, double* %bDistance, align 8
  %12 = fcmp olt double %10, %11
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %0
  store i64 1, i64* %1, align 8
  br label %21

; <label>:14                                      ; preds = %0
  %15 = load double, double* %aDistance, align 8
  %16 = load double, double* %bDistance, align 8
  %17 = fcmp ogt double %15, %16
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %14
  store i64 -1, i64* %1, align 8
  br label %21

; <label>:19                                      ; preds = %14
  br label %20

; <label>:20                                      ; preds = %19
  store i64 0, i64* %1, align 8
  br label %21

; <label>:21                                      ; preds = %20, %18, %13
  %22 = load i64, i64* %1, align 8
  ret i64 %22
}

; Function Attrs: nounwind uwtable
define internal double @getPairDistance(%struct.pair* %pairPtr) #0 {
  %1 = alloca %struct.pair*, align 8
  %aPtr = alloca %struct.coordinate*, align 8
  %bPtr = alloca %struct.coordinate*, align 8
  %dx = alloca i64, align 8
  %dy = alloca i64, align 8
  %dz = alloca i64, align 8
  %dx2 = alloca i64, align 8
  %dy2 = alloca i64, align 8
  %dz2 = alloca i64, align 8
  store %struct.pair* %pairPtr, %struct.pair** %1, align 8
  %2 = load %struct.pair*, %struct.pair** %1, align 8
  %3 = getelementptr inbounds %struct.pair, %struct.pair* %2, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.coordinate*
  store %struct.coordinate* %5, %struct.coordinate** %aPtr, align 8
  %6 = load %struct.pair*, %struct.pair** %1, align 8
  %7 = getelementptr inbounds %struct.pair, %struct.pair* %6, i32 0, i32 1
  %8 = load i8*, i8** %7, align 8
  %9 = bitcast i8* %8 to %struct.coordinate*
  store %struct.coordinate* %9, %struct.coordinate** %bPtr, align 8
  %10 = load %struct.coordinate*, %struct.coordinate** %aPtr, align 8
  %11 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.coordinate*, %struct.coordinate** %bPtr, align 8
  %14 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %12, %15
  store i64 %16, i64* %dx, align 8
  %17 = load %struct.coordinate*, %struct.coordinate** %aPtr, align 8
  %18 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.coordinate*, %struct.coordinate** %bPtr, align 8
  %21 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  store i64 %23, i64* %dy, align 8
  %24 = load %struct.coordinate*, %struct.coordinate** %aPtr, align 8
  %25 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.coordinate*, %struct.coordinate** %bPtr, align 8
  %28 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  store i64 %30, i64* %dz, align 8
  %31 = load i64, i64* %dx, align 8
  %32 = load i64, i64* %dx, align 8
  %33 = mul nsw i64 %31, %32
  store i64 %33, i64* %dx2, align 8
  %34 = load i64, i64* %dy, align 8
  %35 = load i64, i64* %dy, align 8
  %36 = mul nsw i64 %34, %35
  store i64 %36, i64* %dy2, align 8
  %37 = load i64, i64* %dz, align 8
  %38 = load i64, i64* %dz, align 8
  %39 = mul nsw i64 %37, %38
  store i64 %39, i64* %dz2, align 8
  %40 = load i64, i64* %dx2, align 8
  %41 = load i64, i64* %dy2, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i64, i64* %dz2, align 8
  %44 = add nsw i64 %42, %43
  %45 = sitofp i64 %44 to double
  %46 = call double @sqrt(double %45) #2
  ret double %46
}

; Function Attrs: nounwind uwtable
define i64 @coordinate_areAdjacent(%struct.coordinate* %aPtr, %struct.coordinate* %bPtr) #0 {
  %1 = alloca %struct.coordinate*, align 8
  %2 = alloca %struct.coordinate*, align 8
  %dx = alloca i64, align 8
  %dy = alloca i64, align 8
  %dz = alloca i64, align 8
  %dx2 = alloca i64, align 8
  %dy2 = alloca i64, align 8
  %dz2 = alloca i64, align 8
  store %struct.coordinate* %aPtr, %struct.coordinate** %1, align 8
  store %struct.coordinate* %bPtr, %struct.coordinate** %2, align 8
  %3 = load %struct.coordinate*, %struct.coordinate** %1, align 8
  %4 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.coordinate*, %struct.coordinate** %2, align 8
  %7 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = sub nsw i64 %5, %8
  store i64 %9, i64* %dx, align 8
  %10 = load %struct.coordinate*, %struct.coordinate** %1, align 8
  %11 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.coordinate*, %struct.coordinate** %2, align 8
  %14 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %12, %15
  store i64 %16, i64* %dy, align 8
  %17 = load %struct.coordinate*, %struct.coordinate** %1, align 8
  %18 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.coordinate*, %struct.coordinate** %2, align 8
  %21 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  store i64 %23, i64* %dz, align 8
  %24 = load i64, i64* %dx, align 8
  %25 = load i64, i64* %dx, align 8
  %26 = mul nsw i64 %24, %25
  store i64 %26, i64* %dx2, align 8
  %27 = load i64, i64* %dy, align 8
  %28 = load i64, i64* %dy, align 8
  %29 = mul nsw i64 %27, %28
  store i64 %29, i64* %dy2, align 8
  %30 = load i64, i64* %dz, align 8
  %31 = load i64, i64* %dz, align 8
  %32 = mul nsw i64 %30, %31
  store i64 %32, i64* %dz2, align 8
  %33 = load i64, i64* %dx2, align 8
  %34 = load i64, i64* %dy2, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i64, i64* %dz2, align 8
  %37 = add nsw i64 %35, %36
  %38 = icmp eq i64 %37, 1
  %39 = select i1 %38, i32 1, i32 0
  %40 = sext i32 %39 to i64
  ret i64 %40
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
