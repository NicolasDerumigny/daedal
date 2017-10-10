; ModuleID = '../bin/dictionary.stats.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector = type { i64, i64, i8** }

@.str = private unnamed_addr constant [6 x i8] c"about\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"after\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"also\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"back\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"because\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"but\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"can\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"come\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"could\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"even\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"give\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"good\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"have\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"him\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"how\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"into\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"its\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"just\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"know\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"like\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"look\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"make\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"most\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"now\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"only\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"over\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"people\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"say\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"see\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"she\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"some\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"take\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"than\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"that\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"their\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"them\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"then\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"there\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"these\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"they\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"think\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"use\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"want\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"way\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"well\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"what\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"when\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"which\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"who\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"will\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"work\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"would\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"year\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"your\00", align 1
@global_defaultSignatures = global [71 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0)], align 16
@global_numDefaultSignature = constant i64 71, align 8
@.str.71 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"dictionary.c\00", align 1
@__PRETTY_FUNCTION__.dictionary_alloc = private unnamed_addr constant [33 x i8] c"dictionary_t *dictionary_alloc()\00", align 1
@__PRETTY_FUNCTION__.Pdictionary_alloc = private unnamed_addr constant [34 x i8] c"dictionary_t *Pdictionary_alloc()\00", align 1

; Function Attrs: nounwind uwtable
define %struct.vector* @dictionary_alloc() #0 {
  %dictionaryPtr = alloca %struct.vector*, align 8
  %s = alloca i64, align 8
  %sig = alloca i8*, align 8
  %status = alloca i64, align 8
  %1 = call %struct.vector* @vector_alloc(i64 71)
  store %struct.vector* %1, %struct.vector** %dictionaryPtr, align 8
  %2 = load %struct.vector*, %struct.vector** %dictionaryPtr, align 8
  %3 = icmp ne %struct.vector* %2, null
  br i1 %3, label %4, label %25

; <label>:4                                       ; preds = %0
  store i64 0, i64* %s, align 8
  br label %5

; <label>:5                                       ; preds = %21, %4
  %6 = load i64, i64* %s, align 8
  %7 = icmp slt i64 %6, 71
  br i1 %7, label %8, label %24

; <label>:8                                       ; preds = %5
  %9 = load i64, i64* %s, align 8
  %10 = getelementptr inbounds [71 x i8*], [71 x i8*]* @global_defaultSignatures, i64 0, i64 %9
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %sig, align 8
  %12 = load %struct.vector*, %struct.vector** %dictionaryPtr, align 8
  %13 = load i8*, i8** %sig, align 8
  %14 = call i64 @vector_pushBack(%struct.vector* %12, i8* %13)
  store i64 %14, i64* %status, align 8
  %15 = load i64, i64* %status, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %8
  br label %20

; <label>:18                                      ; preds = %8
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i32 0, i32 0), i32 174, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.dictionary_alloc, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %20

; <label>:20                                      ; preds = %19, %17
  br label %21

; <label>:21                                      ; preds = %20
  %22 = load i64, i64* %s, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %s, align 8
  br label %5

; <label>:24                                      ; preds = %5
  br label %25

; <label>:25                                      ; preds = %24, %0
  %26 = load %struct.vector*, %struct.vector** %dictionaryPtr, align 8
  ret %struct.vector* %26
}

declare %struct.vector* @vector_alloc(i64) #1

declare i64 @vector_pushBack(%struct.vector*, i8*) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define %struct.vector* @Pdictionary_alloc() #0 {
  %dictionaryPtr = alloca %struct.vector*, align 8
  %s = alloca i64, align 8
  %sig = alloca i8*, align 8
  %status = alloca i64, align 8
  %1 = call %struct.vector* @Pvector_alloc(i64 71)
  store %struct.vector* %1, %struct.vector** %dictionaryPtr, align 8
  %2 = load %struct.vector*, %struct.vector** %dictionaryPtr, align 8
  %3 = icmp ne %struct.vector* %2, null
  br i1 %3, label %4, label %25

; <label>:4                                       ; preds = %0
  store i64 0, i64* %s, align 8
  br label %5

; <label>:5                                       ; preds = %21, %4
  %6 = load i64, i64* %s, align 8
  %7 = icmp slt i64 %6, 71
  br i1 %7, label %8, label %24

; <label>:8                                       ; preds = %5
  %9 = load i64, i64* %s, align 8
  %10 = getelementptr inbounds [71 x i8*], [71 x i8*]* @global_defaultSignatures, i64 0, i64 %9
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %sig, align 8
  %12 = load %struct.vector*, %struct.vector** %dictionaryPtr, align 8
  %13 = load i8*, i8** %sig, align 8
  %14 = call i64 @Pvector_pushBack(%struct.vector* %12, i8* %13)
  store i64 %14, i64* %status, align 8
  %15 = load i64, i64* %status, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %8
  br label %20

; <label>:18                                      ; preds = %8
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i32 0, i32 0), i32 197, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.Pdictionary_alloc, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %20

; <label>:20                                      ; preds = %19, %17
  br label %21

; <label>:21                                      ; preds = %20
  %22 = load i64, i64* %s, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %s, align 8
  br label %5

; <label>:24                                      ; preds = %5
  br label %25

; <label>:25                                      ; preds = %24, %0
  %26 = load %struct.vector*, %struct.vector** %dictionaryPtr, align 8
  ret %struct.vector* %26
}

declare %struct.vector* @Pvector_alloc(i64) #1

declare i64 @Pvector_pushBack(%struct.vector*, i8*) #1

; Function Attrs: nounwind uwtable
define void @dictionary_free(%struct.vector* %dictionaryPtr) #0 {
  %1 = alloca %struct.vector*, align 8
  store %struct.vector* %dictionaryPtr, %struct.vector** %1, align 8
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  call void @vector_free(%struct.vector* %2)
  ret void
}

declare void @vector_free(%struct.vector*) #1

; Function Attrs: nounwind uwtable
define void @Pdictionary_free(%struct.vector* %dictionaryPtr) #0 {
  %1 = alloca %struct.vector*, align 8
  store %struct.vector* %dictionaryPtr, %struct.vector** %1, align 8
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  call void @Pvector_free(%struct.vector* %2)
  ret void
}

declare void @Pvector_free(%struct.vector*) #1

; Function Attrs: nounwind uwtable
define i64 @dictionary_add(%struct.vector* %dictionaryPtr, i8* %str) #0 {
  %1 = alloca %struct.vector*, align 8
  %2 = alloca i8*, align 8
  store %struct.vector* %dictionaryPtr, %struct.vector** %1, align 8
  store i8* %str, i8** %2, align 8
  %3 = load %struct.vector*, %struct.vector** %1, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @vector_pushBack(%struct.vector* %3, i8* %4)
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i8* @dictionary_get(%struct.vector* %dictionaryPtr, i64 %i) #0 {
  %1 = alloca %struct.vector*, align 8
  %2 = alloca i64, align 8
  store %struct.vector* %dictionaryPtr, %struct.vector** %1, align 8
  store i64 %i, i64* %2, align 8
  %3 = load %struct.vector*, %struct.vector** %1, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i8* @vector_at(%struct.vector* %3, i64 %4)
  ret i8* %5
}

declare i8* @vector_at(%struct.vector*, i64) #1

; Function Attrs: nounwind uwtable
define i8* @dictionary_match(%struct.vector* %dictionaryPtr, i8* %str) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.vector*, align 8
  %3 = alloca i8*, align 8
  %s = alloca i64, align 8
  %numSignature = alloca i64, align 8
  %sig = alloca i8*, align 8
  store %struct.vector* %dictionaryPtr, %struct.vector** %2, align 8
  store i8* %str, i8** %3, align 8
  %4 = load %struct.vector*, %struct.vector** %2, align 8
  %5 = call i64 @vector_getSize(%struct.vector* %4)
  store i64 %5, i64* %numSignature, align 8
  store i64 0, i64* %s, align 8
  br label %6

; <label>:6                                       ; preds = %21, %0
  %7 = load i64, i64* %s, align 8
  %8 = load i64, i64* %numSignature, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %24

; <label>:10                                      ; preds = %6
  %11 = load %struct.vector*, %struct.vector** %2, align 8
  %12 = load i64, i64* %s, align 8
  %13 = call i8* @vector_at(%struct.vector* %11, i64 %12)
  store i8* %13, i8** %sig, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load i8*, i8** %sig, align 8
  %16 = call i8* @strstr(i8* %14, i8* %15) #5
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %20

; <label>:18                                      ; preds = %10
  %19 = load i8*, i8** %sig, align 8
  store i8* %19, i8** %1, align 8
  br label %25

; <label>:20                                      ; preds = %10
  br label %21

; <label>:21                                      ; preds = %20
  %22 = load i64, i64* %s, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %s, align 8
  br label %6

; <label>:24                                      ; preds = %6
  store i8* null, i8** %1, align 8
  br label %25

; <label>:25                                      ; preds = %24, %18
  %26 = load i8*, i8** %1, align 8
  ret i8* %26
}

declare i64 @vector_getSize(%struct.vector*) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
