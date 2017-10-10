; ModuleID = 'preprocessor.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"hex[0]\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"preprocessor.c\00", align 1
@__PRETTY_FUNCTION__.preprocessor_convertURNHex = private unnamed_addr constant [40 x i8] c"void preprocessor_convertURNHex(char *)\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"hex[1]\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"n == 1\00", align 1

; Function Attrs: nounwind uwtable
define void @preprocessor_convertURNHex(i8* %str) #0 {
  %1 = alloca i8*, align 8
  %src = alloca i8*, align 8
  %dst = alloca i8*, align 8
  %c = alloca i8, align 1
  %hex = alloca [3 x i8], align 1
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %str, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  store i8* %2, i8** %src, align 8
  %3 = load i8*, i8** %1, align 8
  store i8* %3, i8** %dst, align 8
  br label %4

; <label>:4                                       ; preds = %58, %0
  %5 = load i8*, i8** %src, align 8
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %c, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %66

; <label>:9                                       ; preds = %4
  %10 = load i8, i8* %c, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %13, label %58

; <label>:13                                      ; preds = %9
  %14 = load i8*, i8** %src, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = call i32 @tolower(i32 %17) #3
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds [3 x i8], [3 x i8]* %hex, i64 0, i64 0
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds [3 x i8], [3 x i8]* %hex, i64 0, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %13
  br label %28

; <label>:26                                      ; preds = %13
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 95, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.preprocessor_convertURNHex, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %28

; <label>:28                                      ; preds = %27, %25
  %29 = load i8*, i8** %src, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = call i32 @tolower(i32 %32) #3
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds [3 x i8], [3 x i8]* %hex, i64 0, i64 1
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds [3 x i8], [3 x i8]* %hex, i64 0, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %28
  br label %43

; <label>:41                                      ; preds = %28
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 97, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.preprocessor_convertURNHex, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %43

; <label>:43                                      ; preds = %42, %40
  %44 = getelementptr inbounds [3 x i8], [3 x i8]* %hex, i64 0, i64 2
  store i8 0, i8* %44, align 1
  %45 = getelementptr inbounds [3 x i8], [3 x i8]* %hex, i32 0, i32 0
  %46 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32* %i) #3
  store i32 %46, i32* %n, align 4
  %47 = load i32, i32* %n, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %50

; <label>:49                                      ; preds = %43
  br label %52

; <label>:50                                      ; preds = %43
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 101, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.preprocessor_convertURNHex, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %52

; <label>:52                                      ; preds = %51, %49
  %53 = load i8*, i8** %src, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  store i8* %54, i8** %src, align 8
  %55 = load i32, i32* %i, align 4
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %src, align 8
  store i8 %56, i8* %57, align 1
  br label %58

; <label>:58                                      ; preds = %52, %9
  %59 = load i8*, i8** %src, align 8
  %60 = load i8, i8* %59, align 1
  %61 = load i8*, i8** %dst, align 8
  store i8 %60, i8* %61, align 1
  %62 = load i8*, i8** %src, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %src, align 8
  %64 = load i8*, i8** %dst, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %dst, align 8
  br label %4

; <label>:66                                      ; preds = %4
  %67 = load i8*, i8** %dst, align 8
  store i8 0, i8* %67, align 1
  ret void
}

; Function Attrs: nounwind
declare i32 @tolower(i32) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @preprocessor_toLower(i8* %str) #0 {
  %1 = alloca i8*, align 8
  %src = alloca i8*, align 8
  store i8* %str, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  store i8* %2, i8** %src, align 8
  br label %3

; <label>:3                                       ; preds = %8, %0
  %4 = load i8*, i8** %src, align 8
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %17

; <label>:8                                       ; preds = %3
  %9 = load i8*, i8** %src, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = call i32 @tolower(i32 %11) #3
  %13 = trunc i32 %12 to i8
  %14 = load i8*, i8** %src, align 8
  store i8 %13, i8* %14, align 1
  %15 = load i8*, i8** %src, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %src, align 8
  br label %3

; <label>:17                                      ; preds = %3
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
