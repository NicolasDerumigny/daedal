; ModuleID = '../bin/coordinate.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coordinate = type { i64, i64, i64 }

; Function Attrs: nounwind uwtable
define noalias %struct.coordinate* @coordinate_alloc(i64 %x, i64 %y, i64 %z) #0 {
  %1 = tail call noalias i8* @malloc(i64 24) #3
  %2 = bitcast i8* %1 to %struct.coordinate*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %10, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %1 to i64*
  store i64 %x, i64* %5, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i64*
  store i64 %y, i64* %7, align 8
  %8 = getelementptr inbounds i8, i8* %1, i64 16
  %9 = bitcast i8* %8 to i64*
  store i64 %z, i64* %9, align 8
  br label %10

; <label>:10                                      ; preds = %0, %4
  ret %struct.coordinate* %2
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @coordinate_free(%struct.coordinate* nocapture %coordinatePtr) #0 {
  %1 = bitcast %struct.coordinate* %coordinatePtr to i8*
  tail call void @free(i8* %1) #3
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @coordinate_isEqual(%struct.coordinate* nocapture readonly %aPtr, %struct.coordinate* nocapture readonly %bPtr) #2 {
  %1 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %aPtr, i64 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %bPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %2, %4
  br i1 %5, label %6, label %18

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %aPtr, i64 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %bPtr, i64 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %8, %10
  br i1 %11, label %12, label %18

; <label>:12                                      ; preds = %6
  %13 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %aPtr, i64 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %bPtr, i64 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %14, %16
  br i1 %17, label %19, label %18

; <label>:18                                      ; preds = %12, %6, %0
  br label %19

; <label>:19                                      ; preds = %12, %18
  %.0 = phi i64 [ 0, %18 ], [ 1, %12 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @coordinate_comparePair(i8* nocapture readonly %aPtr, i8* nocapture readonly %bPtr) #0 {
  %1 = bitcast i8* %aPtr to %struct.coordinate**
  %2 = load %struct.coordinate*, %struct.coordinate** %1, align 8
  %3 = getelementptr inbounds i8, i8* %aPtr, i64 8
  %4 = bitcast i8* %3 to %struct.coordinate**
  %5 = load %struct.coordinate*, %struct.coordinate** %4, align 8
  %6 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %2, i64 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %5, i64 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = sub nsw i64 %7, %9
  %11 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %2, i64 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %5, i64 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %12, %14
  %16 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %2, i64 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %5, i64 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %17, %19
  %21 = mul nsw i64 %10, %10
  %22 = mul nsw i64 %15, %15
  %23 = mul nsw i64 %20, %20
  %24 = add nuw nsw i64 %22, %21
  %25 = add nuw nsw i64 %24, %23
  %26 = sitofp i64 %25 to double
  %27 = tail call double @sqrt(double %26) #3
  %28 = bitcast i8* %bPtr to %struct.coordinate**
  %29 = load %struct.coordinate*, %struct.coordinate** %28, align 8
  %30 = getelementptr inbounds i8, i8* %bPtr, i64 8
  %31 = bitcast i8* %30 to %struct.coordinate**
  %32 = load %struct.coordinate*, %struct.coordinate** %31, align 8
  %33 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %29, i64 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %32, i64 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %34, %36
  %38 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %29, i64 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %32, i64 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %39, %41
  %43 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %29, i64 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %32, i64 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %44, %46
  %48 = mul nsw i64 %37, %37
  %49 = mul nsw i64 %42, %42
  %50 = mul nsw i64 %47, %47
  %51 = add nuw nsw i64 %49, %48
  %52 = add nuw nsw i64 %51, %50
  %53 = sitofp i64 %52 to double
  %54 = tail call double @sqrt(double %53) #3
  %55 = fcmp olt double %27, %54
  %56 = fcmp ogt double %27, %54
  %. = sext i1 %56 to i64
  %.0 = select i1 %55, i64 1, i64 %.
  ret i64 %.0
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @coordinate_areAdjacent(%struct.coordinate* nocapture readonly %aPtr, %struct.coordinate* nocapture readonly %bPtr) #2 {
  %1 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %aPtr, i64 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %bPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = sub nsw i64 %2, %4
  %6 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %aPtr, i64 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %bPtr, i64 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = sub nsw i64 %7, %9
  %11 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %aPtr, i64 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %bPtr, i64 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %12, %14
  %16 = mul nsw i64 %5, %5
  %17 = mul nsw i64 %10, %10
  %18 = mul nsw i64 %15, %15
  %19 = add nuw nsw i64 %17, %16
  %20 = add nuw nsw i64 %19, %18
  %21 = icmp eq i64 %20, 1
  %22 = zext i1 %21 to i64
  ret i64 %22
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
