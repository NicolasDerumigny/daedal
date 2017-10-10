; ModuleID = 'sort.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @sort(i8* %base, i32 %num, i32 %width, i32 (i8*, i8*, i64, i64)* %cmp, i64 %n, i64 %offset) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32 (i8*, i8*, i64, i64)*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %lostk = alloca [30 x i8*], align 16
  %histk = alloca [30 x i8*], align 16
  %stkptr = alloca i32, align 4
  %lo = alloca i8*, align 8
  %hi = alloca i8*, align 8
  %size = alloca i32, align 4
  %mid = alloca i8*, align 8
  %loguy = alloca i8*, align 8
  %higuy = alloca i8*, align 8
  store i8* %base, i8** %1, align 8
  store i32 %num, i32* %2, align 4
  store i32 %width, i32* %3, align 4
  store i32 (i8*, i8*, i64, i64)* %cmp, i32 (i8*, i8*, i64, i64)** %4, align 8
  store i64 %n, i64* %5, align 8
  store i64 %offset, i64* %6, align 8
  %7 = load i32, i32* %2, align 4
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %12, label %9

; <label>:9                                       ; preds = %0
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %9, %0
  br label %197

; <label>:13                                      ; preds = %9
  store i32 0, i32* %stkptr, align 4
  %14 = load i8*, i8** %1, align 8
  store i8* %14, i8** %lo, align 8
  %15 = load i8*, i8** %1, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %2, align 4
  %18 = sub i32 %17, 1
  %19 = mul i32 %16, %18
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %15, i64 %20
  store i8* %21, i8** %hi, align 8
  br label %22

; <label>:22                                      ; preds = %188, %175, %150, %13
  %23 = load i8*, i8** %hi, align 8
  %24 = load i8*, i8** %lo, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = load i32, i32* %3, align 4
  %29 = zext i32 %28 to i64
  %30 = sdiv i64 %27, %29
  %31 = add nsw i64 %30, 1
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %size, align 4
  %33 = load i32, i32* %size, align 4
  %34 = icmp ule i32 %33, 8
  br i1 %34, label %35, label %42

; <label>:35                                      ; preds = %22
  %36 = load i8*, i8** %lo, align 8
  %37 = load i8*, i8** %hi, align 8
  %38 = load i32, i32* %3, align 4
  %39 = load i32 (i8*, i8*, i64, i64)*, i32 (i8*, i8*, i64, i64)** %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %6, align 8
  call void @shortsort(i8* %36, i8* %37, i32 %38, i32 (i8*, i8*, i64, i64)* %39, i64 %40, i64 %41)
  br label %183

; <label>:42                                      ; preds = %22
  %43 = load i8*, i8** %lo, align 8
  %44 = load i32, i32* %size, align 4
  %45 = udiv i32 %44, 2
  %46 = load i32, i32* %3, align 4
  %47 = mul i32 %45, %46
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %43, i64 %48
  store i8* %49, i8** %mid, align 8
  %50 = load i8*, i8** %mid, align 8
  %51 = load i8*, i8** %lo, align 8
  %52 = load i32, i32* %3, align 4
  call void @swap(i8* %50, i8* %51, i32 %52)
  %53 = load i8*, i8** %lo, align 8
  store i8* %53, i8** %loguy, align 8
  %54 = load i8*, i8** %hi, align 8
  %55 = load i32, i32* %3, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8* %57, i8** %higuy, align 8
  br label %58

; <label>:58                                      ; preds = %104, %42
  br label %59

; <label>:59                                      ; preds = %76, %58
  %60 = load i32, i32* %3, align 4
  %61 = load i8*, i8** %loguy, align 8
  %62 = zext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %loguy, align 8
  br label %64

; <label>:64                                      ; preds = %59
  %65 = load i8*, i8** %loguy, align 8
  %66 = load i8*, i8** %hi, align 8
  %67 = icmp ule i8* %65, %66
  br i1 %67, label %68, label %76

; <label>:68                                      ; preds = %64
  %69 = load i32 (i8*, i8*, i64, i64)*, i32 (i8*, i8*, i64, i64)** %4, align 8
  %70 = load i8*, i8** %loguy, align 8
  %71 = load i8*, i8** %lo, align 8
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i32 %69(i8* %70, i8* %71, i64 %72, i64 %73)
  %75 = icmp sle i32 %74, 0
  br label %76

; <label>:76                                      ; preds = %68, %64
  %77 = phi i1 [ false, %64 ], [ %75, %68 ]
  br i1 %77, label %59, label %78

; <label>:78                                      ; preds = %76
  br label %79

; <label>:79                                      ; preds = %97, %78
  %80 = load i32, i32* %3, align 4
  %81 = load i8*, i8** %higuy, align 8
  %82 = zext i32 %80 to i64
  %83 = sub i64 0, %82
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  store i8* %84, i8** %higuy, align 8
  br label %85

; <label>:85                                      ; preds = %79
  %86 = load i8*, i8** %higuy, align 8
  %87 = load i8*, i8** %lo, align 8
  %88 = icmp ugt i8* %86, %87
  br i1 %88, label %89, label %97

; <label>:89                                      ; preds = %85
  %90 = load i32 (i8*, i8*, i64, i64)*, i32 (i8*, i8*, i64, i64)** %4, align 8
  %91 = load i8*, i8** %higuy, align 8
  %92 = load i8*, i8** %lo, align 8
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* %6, align 8
  %95 = call i32 %90(i8* %91, i8* %92, i64 %93, i64 %94)
  %96 = icmp sge i32 %95, 0
  br label %97

; <label>:97                                      ; preds = %89, %85
  %98 = phi i1 [ false, %85 ], [ %96, %89 ]
  br i1 %98, label %79, label %99

; <label>:99                                      ; preds = %97
  %100 = load i8*, i8** %higuy, align 8
  %101 = load i8*, i8** %loguy, align 8
  %102 = icmp ult i8* %100, %101
  br i1 %102, label %103, label %104

; <label>:103                                     ; preds = %99
  br label %108

; <label>:104                                     ; preds = %99
  %105 = load i8*, i8** %loguy, align 8
  %106 = load i8*, i8** %higuy, align 8
  %107 = load i32, i32* %3, align 4
  call void @swap(i8* %105, i8* %106, i32 %107)
  br label %58

; <label>:108                                     ; preds = %103
  %109 = load i8*, i8** %lo, align 8
  %110 = load i8*, i8** %higuy, align 8
  %111 = load i32, i32* %3, align 4
  call void @swap(i8* %109, i8* %110, i32 %111)
  %112 = load i8*, i8** %higuy, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 -1
  %114 = load i8*, i8** %lo, align 8
  %115 = ptrtoint i8* %113 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = load i8*, i8** %hi, align 8
  %119 = load i8*, i8** %loguy, align 8
  %120 = ptrtoint i8* %118 to i64
  %121 = ptrtoint i8* %119 to i64
  %122 = sub i64 %120, %121
  %123 = icmp sge i64 %117, %122
  br i1 %123, label %124, label %153

; <label>:124                                     ; preds = %108
  %125 = load i8*, i8** %lo, align 8
  %126 = load i32, i32* %3, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i8*, i8** %higuy, align 8
  %130 = icmp ult i8* %128, %129
  br i1 %130, label %131, label %146

; <label>:131                                     ; preds = %124
  %132 = load i8*, i8** %lo, align 8
  %133 = load i32, i32* %stkptr, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [30 x i8*], [30 x i8*]* %lostk, i64 0, i64 %134
  store i8* %132, i8** %135, align 8
  %136 = load i8*, i8** %higuy, align 8
  %137 = load i32, i32* %3, align 4
  %138 = zext i32 %137 to i64
  %139 = sub i64 0, %138
  %140 = getelementptr inbounds i8, i8* %136, i64 %139
  %141 = load i32, i32* %stkptr, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [30 x i8*], [30 x i8*]* %histk, i64 0, i64 %142
  store i8* %140, i8** %143, align 8
  %144 = load i32, i32* %stkptr, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %stkptr, align 4
  br label %146

; <label>:146                                     ; preds = %131, %124
  %147 = load i8*, i8** %loguy, align 8
  %148 = load i8*, i8** %hi, align 8
  %149 = icmp ult i8* %147, %148
  br i1 %149, label %150, label %152

; <label>:150                                     ; preds = %146
  %151 = load i8*, i8** %loguy, align 8
  store i8* %151, i8** %lo, align 8
  br label %22

; <label>:152                                     ; preds = %146
  br label %182

; <label>:153                                     ; preds = %108
  %154 = load i8*, i8** %loguy, align 8
  %155 = load i8*, i8** %hi, align 8
  %156 = icmp ult i8* %154, %155
  br i1 %156, label %157, label %168

; <label>:157                                     ; preds = %153
  %158 = load i8*, i8** %loguy, align 8
  %159 = load i32, i32* %stkptr, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [30 x i8*], [30 x i8*]* %lostk, i64 0, i64 %160
  store i8* %158, i8** %161, align 8
  %162 = load i8*, i8** %hi, align 8
  %163 = load i32, i32* %stkptr, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [30 x i8*], [30 x i8*]* %histk, i64 0, i64 %164
  store i8* %162, i8** %165, align 8
  %166 = load i32, i32* %stkptr, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %stkptr, align 4
  br label %168

; <label>:168                                     ; preds = %157, %153
  %169 = load i8*, i8** %lo, align 8
  %170 = load i32, i32* %3, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = load i8*, i8** %higuy, align 8
  %174 = icmp ult i8* %172, %173
  br i1 %174, label %175, label %181

; <label>:175                                     ; preds = %168
  %176 = load i8*, i8** %higuy, align 8
  %177 = load i32, i32* %3, align 4
  %178 = zext i32 %177 to i64
  %179 = sub i64 0, %178
  %180 = getelementptr inbounds i8, i8* %176, i64 %179
  store i8* %180, i8** %hi, align 8
  br label %22

; <label>:181                                     ; preds = %168
  br label %182

; <label>:182                                     ; preds = %181, %152
  br label %183

; <label>:183                                     ; preds = %182, %35
  %184 = load i32, i32* %stkptr, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %stkptr, align 4
  %186 = load i32, i32* %stkptr, align 4
  %187 = icmp sge i32 %186, 0
  br i1 %187, label %188, label %197

; <label>:188                                     ; preds = %183
  %189 = load i32, i32* %stkptr, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [30 x i8*], [30 x i8*]* %lostk, i64 0, i64 %190
  %192 = load i8*, i8** %191, align 8
  store i8* %192, i8** %lo, align 8
  %193 = load i32, i32* %stkptr, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [30 x i8*], [30 x i8*]* %histk, i64 0, i64 %194
  %196 = load i8*, i8** %195, align 8
  store i8* %196, i8** %hi, align 8
  br label %22

; <label>:197                                     ; preds = %12, %183
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @shortsort(i8* %lo, i8* %hi, i32 %width, i32 (i8*, i8*, i64, i64)* %cmp, i64 %n, i64 %offset) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32 (i8*, i8*, i64, i64)*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %max = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %lo, i8** %1, align 8
  store i8* %hi, i8** %2, align 8
  store i32 %width, i32* %3, align 4
  store i32 (i8*, i8*, i64, i64)* %cmp, i32 (i8*, i8*, i64, i64)** %4, align 8
  store i64 %n, i64* %5, align 8
  store i64 %offset, i64* %6, align 8
  br label %7

; <label>:7                                       ; preds = %37, %0
  %8 = load i8*, i8** %2, align 8
  %9 = load i8*, i8** %1, align 8
  %10 = icmp ugt i8* %8, %9
  br i1 %10, label %11, label %46

; <label>:11                                      ; preds = %7
  %12 = load i8*, i8** %1, align 8
  store i8* %12, i8** %max, align 8
  %13 = load i8*, i8** %1, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  store i8* %16, i8** %p, align 8
  br label %17

; <label>:17                                      ; preds = %32, %11
  %18 = load i8*, i8** %p, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = icmp ule i8* %18, %19
  br i1 %20, label %21, label %37

; <label>:21                                      ; preds = %17
  %22 = load i32 (i8*, i8*, i64, i64)*, i32 (i8*, i8*, i64, i64)** %4, align 8
  %23 = load i8*, i8** %p, align 8
  %24 = load i8*, i8** %max, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 %22(i8* %23, i8* %24, i64 %25, i64 %26)
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %31

; <label>:29                                      ; preds = %21
  %30 = load i8*, i8** %p, align 8
  store i8* %30, i8** %max, align 8
  br label %31

; <label>:31                                      ; preds = %29, %21
  br label %32

; <label>:32                                      ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = load i8*, i8** %p, align 8
  %35 = zext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %p, align 8
  br label %17

; <label>:37                                      ; preds = %17
  %38 = load i8*, i8** %max, align 8
  %39 = load i8*, i8** %2, align 8
  %40 = load i32, i32* %3, align 4
  call void @swap(i8* %38, i8* %39, i32 %40)
  %41 = load i32, i32* %3, align 4
  %42 = load i8*, i8** %2, align 8
  %43 = zext i32 %41 to i64
  %44 = sub i64 0, %43
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8* %45, i8** %2, align 8
  br label %7

; <label>:46                                      ; preds = %7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @swap(i8* %a, i8* %b, i32 %width) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %tmp = alloca i8, align 1
  store i8* %a, i8** %1, align 8
  store i8* %b, i8** %2, align 8
  store i32 %width, i32* %3, align 4
  %4 = load i8*, i8** %1, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp ne i8* %4, %5
  br i1 %6, label %7, label %23

; <label>:7                                       ; preds = %0
  br label %8

; <label>:8                                       ; preds = %12, %7
  %9 = load i32, i32* %3, align 4
  %10 = add i32 %9, -1
  store i32 %10, i32* %3, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %22

; <label>:12                                      ; preds = %8
  %13 = load i8*, i8** %1, align 8
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %tmp, align 1
  %15 = load i8*, i8** %2, align 8
  %16 = load i8, i8* %15, align 1
  %17 = load i8*, i8** %1, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %1, align 8
  store i8 %16, i8* %17, align 1
  %19 = load i8, i8* %tmp, align 1
  %20 = load i8*, i8** %2, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %2, align 8
  store i8 %19, i8* %20, align 1
  br label %8

; <label>:22                                      ; preds = %8
  br label %23

; <label>:23                                      ; preds = %22, %0
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
