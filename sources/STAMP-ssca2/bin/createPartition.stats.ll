; ModuleID = 'createPartition.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @createPartition(i64 %min, i64 %max, i64 %id, i64 %n, i64* %startPtr, i64* %stopPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %range = alloca i64, align 8
  %chunk = alloca i64, align 8
  %_a = alloca i32, align 4
  %_b = alloca i64, align 8
  %7 = alloca i64, align 8
  %start = alloca i64, align 8
  %stop = alloca i64, align 8
  %_a1 = alloca i64, align 8
  %_b2 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %min, i64* %1, align 8
  store i64 %max, i64* %2, align 8
  store i64 %id, i64* %3, align 8
  store i64 %n, i64* %4, align 8
  store i64* %startPtr, i64** %5, align 8
  store i64* %stopPtr, i64** %6, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* %1, align 8
  %11 = sub nsw i64 %9, %10
  store i64 %11, i64* %range, align 8
  store i32 1, i32* %_a, align 4
  %12 = load i64, i64* %range, align 8
  %13 = load i64, i64* %4, align 8
  %14 = sdiv i64 %13, 2
  %15 = add nsw i64 %12, %14
  %16 = load i64, i64* %4, align 8
  %17 = sdiv i64 %15, %16
  store i64 %17, i64* %_b, align 8
  %18 = load i32, i32* %_a, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %_b, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %25

; <label>:22                                      ; preds = %0
  %23 = load i32, i32* %_a, align 4
  %24 = sext i32 %23 to i64
  br label %27

; <label>:25                                      ; preds = %0
  %26 = load i64, i64* %_b, align 8
  br label %27

; <label>:27                                      ; preds = %25, %22
  %28 = phi i64 [ %24, %22 ], [ %26, %25 ]
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  store i64 %29, i64* %chunk, align 8
  %30 = load i64, i64* %1, align 8
  %31 = load i64, i64* %chunk, align 8
  %32 = load i64, i64* %3, align 8
  %33 = mul nsw i64 %31, %32
  %34 = add nsw i64 %30, %33
  store i64 %34, i64* %start, align 8
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* %4, align 8
  %37 = sub nsw i64 %36, 1
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %39, label %41

; <label>:39                                      ; preds = %27
  %40 = load i64, i64* %2, align 8
  store i64 %40, i64* %stop, align 8
  br label %56

; <label>:41                                      ; preds = %27
  %42 = load i64, i64* %2, align 8
  store i64 %42, i64* %_a1, align 8
  %43 = load i64, i64* %start, align 8
  %44 = load i64, i64* %chunk, align 8
  %45 = add nsw i64 %43, %44
  store i64 %45, i64* %_b2, align 8
  %46 = load i64, i64* %_a1, align 8
  %47 = load i64, i64* %_b2, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %51

; <label>:49                                      ; preds = %41
  %50 = load i64, i64* %_a1, align 8
  br label %53

; <label>:51                                      ; preds = %41
  %52 = load i64, i64* %_b2, align 8
  br label %53

; <label>:53                                      ; preds = %51, %49
  %54 = phi i64 [ %50, %49 ], [ %52, %51 ]
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  store i64 %55, i64* %stop, align 8
  br label %56

; <label>:56                                      ; preds = %53, %39
  %57 = load i64, i64* %start, align 8
  %58 = load i64*, i64** %5, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i64, i64* %stop, align 8
  %60 = load i64*, i64** %6, align 8
  store i64 %59, i64* %60, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
