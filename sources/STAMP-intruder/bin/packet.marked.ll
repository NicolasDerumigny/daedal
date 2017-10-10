; ModuleID = '../bin/packet.stats.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet = type { i64, i64, i64, i64, [0 x i8] }

; Function Attrs: nounwind uwtable
define i64 @packet_compareFlowId(i8* %aPtr, i8* %bPtr) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %aPacketPtr = alloca %struct.packet*, align 8
  %bPacketPtr = alloca %struct.packet*, align 8
  store i8* %aPtr, i8** %1, align 8
  store i8* %bPtr, i8** %2, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = bitcast i8* %3 to %struct.packet*
  store %struct.packet* %4, %struct.packet** %aPacketPtr, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.packet*
  store %struct.packet* %6, %struct.packet** %bPacketPtr, align 8
  %7 = load %struct.packet*, %struct.packet** %aPacketPtr, align 8
  %8 = getelementptr inbounds %struct.packet, %struct.packet* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.packet*, %struct.packet** %bPacketPtr, align 8
  %11 = getelementptr inbounds %struct.packet, %struct.packet* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define i64 @packet_compareFragmentId(i8* %aPtr, i8* %bPtr) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %aPacketPtr = alloca %struct.packet*, align 8
  %bPacketPtr = alloca %struct.packet*, align 8
  store i8* %aPtr, i8** %1, align 8
  store i8* %bPtr, i8** %2, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = bitcast i8* %3 to %struct.packet*
  store %struct.packet* %4, %struct.packet** %aPacketPtr, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.packet*
  store %struct.packet* %6, %struct.packet** %bPacketPtr, align 8
  %7 = load %struct.packet*, %struct.packet** %aPacketPtr, align 8
  %8 = getelementptr inbounds %struct.packet, %struct.packet* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.packet*, %struct.packet** %bPacketPtr, align 8
  %11 = getelementptr inbounds %struct.packet, %struct.packet* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  %14 = trunc i64 %13 to i32
  %15 = sext i32 %14 to i64
  ret i64 %15
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
