; ModuleID = '../bin/preprocessor.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"hex[0]\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"preprocessor.c\00", align 1
@__PRETTY_FUNCTION__.preprocessor_convertURNHex = private unnamed_addr constant [40 x i8] c"void preprocessor_convertURNHex(char *)\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"hex[1]\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"n == 1\00", align 1

; Function Attrs: nounwind uwtable
define void @preprocessor_convertURNHex(i8* nocapture %str) #0 {
  %hex = alloca [3 x i8], align 1
  %i = alloca i32, align 4
  %1 = getelementptr inbounds [3 x i8], [3 x i8]* %hex, i64 0, i64 0
  %2 = getelementptr inbounds [3 x i8], [3 x i8]* %hex, i64 0, i64 1
  %3 = getelementptr inbounds [3 x i8], [3 x i8]* %hex, i64 0, i64 2
  br label %4

; <label>:4                                       ; preds = %29, %0
  %dst.0 = phi i8* [ %str, %0 ], [ %32, %29 ]
  %src.0 = phi i8* [ %str, %0 ], [ %31, %29 ]
  %5 = load i8, i8* %src.0, align 1
  switch i8 %5, label %29 [
    i8 0, label %33
    i8 37, label %6
  ]

; <label>:6                                       ; preds = %4
  %7 = getelementptr inbounds i8, i8* %src.0, i64 1
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = call i32 @tolower(i32 %9) #3
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %1, align 1
  %sext.mask = and i32 %10, 255
  %12 = icmp eq i32 %sext.mask, 0
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %6
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 95, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.preprocessor_convertURNHex, i64 0, i64 0)) #4
  unreachable

; <label>:14                                      ; preds = %6
  %15 = getelementptr inbounds i8, i8* %src.0, i64 2
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = call i32 @tolower(i32 %17) #3
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %2, align 1
  %sext.mask1 = and i32 %18, 255
  %20 = icmp eq i32 %sext.mask1, 0
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %14
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 97, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.preprocessor_convertURNHex, i64 0, i64 0)) #4
  unreachable

; <label>:22                                      ; preds = %14
  store i8 0, i8* %3, align 1
  %23 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %1, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* nonnull %i) #3
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %26, label %25

; <label>:25                                      ; preds = %22
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 101, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.preprocessor_convertURNHex, i64 0, i64 0)) #4
  unreachable

; <label>:26                                      ; preds = %22
  %27 = load i32, i32* %i, align 4
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %15, align 1
  br label %29

; <label>:29                                      ; preds = %4, %26
  %30 = phi i8 [ %28, %26 ], [ %5, %4 ]
  %src.1 = phi i8* [ %15, %26 ], [ %src.0, %4 ]
  store i8 %30, i8* %dst.0, align 1
  %31 = getelementptr inbounds i8, i8* %src.1, i64 1
  %32 = getelementptr inbounds i8, i8* %dst.0, i64 1
  br label %4

; <label>:33                                      ; preds = %4
  %dst.0.lcssa = phi i8* [ %dst.0, %4 ]
  store i8 0, i8* %dst.0.lcssa, align 1
  ret void
}

; Function Attrs: nounwind
declare i32 @tolower(i32) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind uwtable
define void @preprocessor_toLower(i8* nocapture %str) #0 {
  %1 = load i8, i8* %str, align 1
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %3 = phi i8 [ %8, %.lr.ph ], [ %1, %.lr.ph.preheader ]
  %src.01 = phi i8* [ %7, %.lr.ph ], [ %str, %.lr.ph.preheader ]
  %4 = sext i8 %3 to i32
  %5 = tail call i32 @tolower(i32 %4) #3
  %6 = trunc i32 %5 to i8
  store i8 %6, i8* %src.01, align 1
  %7 = getelementptr inbounds i8, i8* %src.01, i64 1
  %8 = load i8, i8* %7, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
