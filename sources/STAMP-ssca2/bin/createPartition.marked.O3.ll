; ModuleID = '../bin/createPartition.marked.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: norecurse nounwind uwtable
define void @createPartition(i64 %min, i64 %max, i64 %id, i64 %n, i64* nocapture %startPtr, i64* nocapture %stopPtr) #0 {
  %1 = sub i64 %max, %min
  %2 = sdiv i64 %n, 2
  %3 = add nsw i64 %1, %2
  %4 = sdiv i64 %3, %n
  %5 = icmp slt i64 %4, 1
  %6 = select i1 %5, i64 1, i64 %4
  %7 = mul nsw i64 %6, %id
  %8 = add nsw i64 %7, %min
  %9 = add nsw i64 %n, -1
  %10 = icmp eq i64 %9, %id
  br i1 %10, label %15, label %11

; <label>:11                                      ; preds = %0
  %12 = add nsw i64 %8, %6
  %13 = icmp sgt i64 %12, %max
  %14 = select i1 %13, i64 %max, i64 %12
  br label %15

; <label>:15                                      ; preds = %0, %11
  %stop.0 = phi i64 [ %14, %11 ], [ %max, %0 ]
  store i64 %8, i64* %startPtr, align 8
  store i64 %stop.0, i64* %stopPtr, align 8
  ret void
}

attributes #0 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
