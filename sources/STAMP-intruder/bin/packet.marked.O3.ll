; ModuleID = '../bin/packet.marked.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @packet_compareFlowId(i8* nocapture readonly %aPtr, i8* nocapture readonly %bPtr) #0 {
  %1 = bitcast i8* %aPtr to i64*
  %2 = load i64, i64* %1, align 8
  %3 = bitcast i8* %bPtr to i64*
  %4 = load i64, i64* %3, align 8
  %5 = sub nsw i64 %2, %4
  ret i64 %5
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @packet_compareFragmentId(i8* nocapture readonly %aPtr, i8* nocapture readonly %bPtr) #0 {
  %1 = getelementptr inbounds i8, i8* %aPtr, i64 8
  %2 = bitcast i8* %1 to i64*
  %3 = load i64, i64* %2, align 8
  %4 = getelementptr inbounds i8, i8* %bPtr, i64 8
  %5 = bitcast i8* %4 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = sub nsw i64 %3, %6
  %sext = shl i64 %7, 32
  %8 = ashr exact i64 %sext, 32
  ret i64 %8
}

attributes #0 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
