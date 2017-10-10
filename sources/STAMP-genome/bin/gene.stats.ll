; ModuleID = 'gene.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gene = type { i64, i8*, %struct.bitmap* }
%struct.bitmap = type { i64, i64, i64* }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }

@.str = private unnamed_addr constant [11 x i8] c"length > 1\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"gene.c\00", align 1
@__PRETTY_FUNCTION__.gene_alloc = private unnamed_addr constant [25 x i8] c"gene_t *gene_alloc(long)\00", align 1
@gene_create.nucleotides = internal constant [4 x i8] c"acgt", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"genePtr != NULL\00", align 1
@__PRETTY_FUNCTION__.gene_create = private unnamed_addr constant [39 x i8] c"void gene_create(gene_t *, random_t *)\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"randomPtr != NULL\00", align 1

; Function Attrs: nounwind uwtable
define %struct.gene* @gene_alloc(i64 %length) #0 {
  %1 = alloca %struct.gene*, align 8
  %2 = alloca i64, align 8
  %genePtr = alloca %struct.gene*, align 8
  store i64 %length, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp sgt i64 %3, 1
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  br label %8

; <label>:6                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.gene_alloc, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %8

; <label>:8                                       ; preds = %7, %5
  %9 = call noalias i8* @malloc(i64 24) #5
  %10 = bitcast i8* %9 to %struct.gene*
  store %struct.gene* %10, %struct.gene** %genePtr, align 8
  %11 = load %struct.gene*, %struct.gene** %genePtr, align 8
  %12 = icmp eq %struct.gene* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %8
  store %struct.gene* null, %struct.gene** %1, align 8
  br label %46

; <label>:14                                      ; preds = %8
  %15 = load i64, i64* %2, align 8
  %16 = add nsw i64 %15, 1
  %17 = mul i64 %16, 1
  %18 = call noalias i8* @malloc(i64 %17) #5
  %19 = load %struct.gene*, %struct.gene** %genePtr, align 8
  %20 = getelementptr inbounds %struct.gene, %struct.gene* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.gene*, %struct.gene** %genePtr, align 8
  %22 = getelementptr inbounds %struct.gene, %struct.gene* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %14
  store %struct.gene* null, %struct.gene** %1, align 8
  br label %46

; <label>:26                                      ; preds = %14
  %27 = load i64, i64* %2, align 8
  %28 = load %struct.gene*, %struct.gene** %genePtr, align 8
  %29 = getelementptr inbounds %struct.gene, %struct.gene* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 %27
  store i8 0, i8* %31, align 1
  %32 = load i64, i64* %2, align 8
  %33 = load %struct.gene*, %struct.gene** %genePtr, align 8
  %34 = getelementptr inbounds %struct.gene, %struct.gene* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* %2, align 8
  %36 = call %struct.bitmap* @bitmap_alloc(i64 %35)
  %37 = load %struct.gene*, %struct.gene** %genePtr, align 8
  %38 = getelementptr inbounds %struct.gene, %struct.gene* %37, i32 0, i32 2
  store %struct.bitmap* %36, %struct.bitmap** %38, align 8
  %39 = load %struct.gene*, %struct.gene** %genePtr, align 8
  %40 = getelementptr inbounds %struct.gene, %struct.gene* %39, i32 0, i32 2
  %41 = load %struct.bitmap*, %struct.bitmap** %40, align 8
  %42 = icmp eq %struct.bitmap* %41, null
  br i1 %42, label %43, label %44

; <label>:43                                      ; preds = %26
  store %struct.gene* null, %struct.gene** %1, align 8
  br label %46

; <label>:44                                      ; preds = %26
  %45 = load %struct.gene*, %struct.gene** %genePtr, align 8
  store %struct.gene* %45, %struct.gene** %1, align 8
  br label %46

; <label>:46                                      ; preds = %44, %43, %25, %13
  %47 = load %struct.gene*, %struct.gene** %1, align 8
  ret %struct.gene* %47
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare %struct.bitmap* @bitmap_alloc(i64) #3

; Function Attrs: nounwind uwtable
define void @gene_create(%struct.gene* %genePtr, %struct.random* %randomPtr) #0 {
  %1 = alloca %struct.gene*, align 8
  %2 = alloca %struct.random*, align 8
  %length = alloca i64, align 8
  %contents = alloca i8*, align 8
  %i = alloca i64, align 8
  store %struct.gene* %genePtr, %struct.gene** %1, align 8
  store %struct.random* %randomPtr, %struct.random** %2, align 8
  %3 = load %struct.gene*, %struct.gene** %1, align 8
  %4 = icmp ne %struct.gene* %3, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  br label %8

; <label>:6                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 133, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.gene_create, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %8

; <label>:8                                       ; preds = %7, %5
  %9 = load %struct.random*, %struct.random** %2, align 8
  %10 = icmp ne %struct.random* %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %8
  br label %14

; <label>:12                                      ; preds = %8
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 134, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.gene_create, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %14

; <label>:14                                      ; preds = %13, %11
  %15 = load %struct.gene*, %struct.gene** %1, align 8
  %16 = getelementptr inbounds %struct.gene, %struct.gene* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %length, align 8
  %18 = load %struct.gene*, %struct.gene** %1, align 8
  %19 = getelementptr inbounds %struct.gene, %struct.gene* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %contents, align 8
  store i64 0, i64* %i, align 8
  br label %21

; <label>:21                                      ; preds = %34, %14
  %22 = load i64, i64* %i, align 8
  %23 = load i64, i64* %length, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %37

; <label>:25                                      ; preds = %21
  %26 = load %struct.random*, %struct.random** %2, align 8
  %27 = call i64 @random_generate(%struct.random* %26)
  %28 = urem i64 %27, 4
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* @gene_create.nucleotides, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = load i64, i64* %i, align 8
  %32 = load i8*, i8** %contents, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 %31
  store i8 %30, i8* %33, align 1
  br label %34

; <label>:34                                      ; preds = %25
  %35 = load i64, i64* %i, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %i, align 8
  br label %21

; <label>:37                                      ; preds = %21
  ret void
}

declare i64 @random_generate(%struct.random*) #3

; Function Attrs: nounwind uwtable
define void @gene_free(%struct.gene* %genePtr) #0 {
  %1 = alloca %struct.gene*, align 8
  store %struct.gene* %genePtr, %struct.gene** %1, align 8
  %2 = load %struct.gene*, %struct.gene** %1, align 8
  %3 = getelementptr inbounds %struct.gene, %struct.gene* %2, i32 0, i32 2
  %4 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  call void @bitmap_free(%struct.bitmap* %4)
  %5 = load %struct.gene*, %struct.gene** %1, align 8
  %6 = getelementptr inbounds %struct.gene, %struct.gene* %5, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8
  call void @free(i8* %7) #5
  %8 = load %struct.gene*, %struct.gene** %1, align 8
  %9 = bitcast %struct.gene* %8 to i8*
  call void @free(i8* %9) #5
  ret void
}

declare void @bitmap_free(%struct.bitmap*) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
