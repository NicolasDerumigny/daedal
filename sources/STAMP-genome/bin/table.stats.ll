; ModuleID = 'table.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { %struct.list**, i64 }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.list_node = type { i8*, %struct.list_node* }

; Function Attrs: nounwind uwtable
define %struct.table* @table_alloc(i64 %numBucket, i64 (i8*, i8*)* %compare) #0 {
  %1 = alloca %struct.table*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64 (i8*, i8*)*, align 8
  %tablePtr = alloca %struct.table*, align 8
  %i = alloca i64, align 8
  store i64 %numBucket, i64* %2, align 8
  store i64 (i8*, i8*)* %compare, i64 (i8*, i8*)** %3, align 8
  %4 = call noalias i8* @malloc(i64 16) #3
  %5 = bitcast i8* %4 to %struct.table*
  store %struct.table* %5, %struct.table** %tablePtr, align 8
  %6 = load %struct.table*, %struct.table** %tablePtr, align 8
  %7 = icmp eq %struct.table* %6, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  store %struct.table* null, %struct.table** %1, align 8
  br label %51

; <label>:9                                       ; preds = %0
  %10 = load i64, i64* %2, align 8
  %11 = mul i64 %10, 8
  %12 = call noalias i8* @malloc(i64 %11) #3
  %13 = bitcast i8* %12 to %struct.list**
  %14 = load %struct.table*, %struct.table** %tablePtr, align 8
  %15 = getelementptr inbounds %struct.table, %struct.table* %14, i32 0, i32 0
  store %struct.list** %13, %struct.list*** %15, align 8
  %16 = load %struct.table*, %struct.table** %tablePtr, align 8
  %17 = getelementptr inbounds %struct.table, %struct.table* %16, i32 0, i32 0
  %18 = load %struct.list**, %struct.list*** %17, align 8
  %19 = icmp eq %struct.list** %18, null
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %9
  store %struct.table* null, %struct.table** %1, align 8
  br label %51

; <label>:21                                      ; preds = %9
  store i64 0, i64* %i, align 8
  br label %22

; <label>:22                                      ; preds = %43, %21
  %23 = load i64, i64* %i, align 8
  %24 = load i64, i64* %2, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %46

; <label>:26                                      ; preds = %22
  %27 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %28 = call %struct.list* @list_alloc(i64 (i8*, i8*)* %27)
  %29 = load i64, i64* %i, align 8
  %30 = load %struct.table*, %struct.table** %tablePtr, align 8
  %31 = getelementptr inbounds %struct.table, %struct.table* %30, i32 0, i32 0
  %32 = load %struct.list**, %struct.list*** %31, align 8
  %33 = getelementptr inbounds %struct.list*, %struct.list** %32, i64 %29
  store %struct.list* %28, %struct.list** %33, align 8
  %34 = load i64, i64* %i, align 8
  %35 = load %struct.table*, %struct.table** %tablePtr, align 8
  %36 = getelementptr inbounds %struct.table, %struct.table* %35, i32 0, i32 0
  %37 = load %struct.list**, %struct.list*** %36, align 8
  %38 = getelementptr inbounds %struct.list*, %struct.list** %37, i64 %34
  %39 = load %struct.list*, %struct.list** %38, align 8
  %40 = icmp eq %struct.list* %39, null
  br i1 %40, label %41, label %42

; <label>:41                                      ; preds = %26
  store %struct.table* null, %struct.table** %1, align 8
  br label %51

; <label>:42                                      ; preds = %26
  br label %43

; <label>:43                                      ; preds = %42
  %44 = load i64, i64* %i, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %i, align 8
  br label %22

; <label>:46                                      ; preds = %22
  %47 = load i64, i64* %2, align 8
  %48 = load %struct.table*, %struct.table** %tablePtr, align 8
  %49 = getelementptr inbounds %struct.table, %struct.table* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.table*, %struct.table** %tablePtr, align 8
  store %struct.table* %50, %struct.table** %1, align 8
  br label %51

; <label>:51                                      ; preds = %46, %41, %20, %8
  %52 = load %struct.table*, %struct.table** %1, align 8
  ret %struct.table* %52
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.list* @list_alloc(i64 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define i64 @table_insert(%struct.table* %tablePtr, i64 %hash, i8* %dataPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.table*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %i = alloca i64, align 8
  store %struct.table* %tablePtr, %struct.table** %2, align 8
  store i64 %hash, i64* %3, align 8
  store i8* %dataPtr, i8** %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.table*, %struct.table** %2, align 8
  %7 = getelementptr inbounds %struct.table, %struct.table* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = urem i64 %5, %8
  store i64 %9, i64* %i, align 8
  %10 = load i64, i64* %i, align 8
  %11 = load %struct.table*, %struct.table** %2, align 8
  %12 = getelementptr inbounds %struct.table, %struct.table* %11, i32 0, i32 0
  %13 = load %struct.list**, %struct.list*** %12, align 8
  %14 = getelementptr inbounds %struct.list*, %struct.list** %13, i64 %10
  %15 = load %struct.list*, %struct.list** %14, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @list_insert(%struct.list* %15, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

; <label>:19                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %21

; <label>:20                                      ; preds = %0
  store i64 1, i64* %1, align 8
  br label %21

; <label>:21                                      ; preds = %20, %19
  %22 = load i64, i64* %1, align 8
  ret i64 %22
}

declare i64 @list_insert(%struct.list*, i8*) #2

; Function Attrs: nounwind uwtable
define i64 @TMtable_insert(%struct.table* %tablePtr, i64 %hash, i8* %dataPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.table*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %i = alloca i64, align 8
  store %struct.table* %tablePtr, %struct.table** %2, align 8
  store i64 %hash, i64* %3, align 8
  store i8* %dataPtr, i8** %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.table*, %struct.table** %2, align 8
  %7 = getelementptr inbounds %struct.table, %struct.table* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = urem i64 %5, %8
  store i64 %9, i64* %i, align 8
  %10 = load i64, i64* %i, align 8
  %11 = load %struct.table*, %struct.table** %2, align 8
  %12 = getelementptr inbounds %struct.table, %struct.table* %11, i32 0, i32 0
  %13 = load %struct.list**, %struct.list*** %12, align 8
  %14 = getelementptr inbounds %struct.list*, %struct.list** %13, i64 %10
  %15 = load %struct.list*, %struct.list** %14, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @TMlist_insert(%struct.list* %15, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

; <label>:19                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %21

; <label>:20                                      ; preds = %0
  store i64 1, i64* %1, align 8
  br label %21

; <label>:21                                      ; preds = %20, %19
  %22 = load i64, i64* %1, align 8
  ret i64 %22
}

declare i64 @TMlist_insert(%struct.list*, i8*) #2

; Function Attrs: nounwind uwtable
define i64 @table_remove(%struct.table* %tablePtr, i64 %hash, i8* %dataPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.table*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %i = alloca i64, align 8
  store %struct.table* %tablePtr, %struct.table** %2, align 8
  store i64 %hash, i64* %3, align 8
  store i8* %dataPtr, i8** %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.table*, %struct.table** %2, align 8
  %7 = getelementptr inbounds %struct.table, %struct.table* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = urem i64 %5, %8
  store i64 %9, i64* %i, align 8
  %10 = load i64, i64* %i, align 8
  %11 = load %struct.table*, %struct.table** %2, align 8
  %12 = getelementptr inbounds %struct.table, %struct.table* %11, i32 0, i32 0
  %13 = load %struct.list**, %struct.list*** %12, align 8
  %14 = getelementptr inbounds %struct.list*, %struct.list** %13, i64 %10
  %15 = load %struct.list*, %struct.list** %14, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @list_remove(%struct.list* %15, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

; <label>:19                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %21

; <label>:20                                      ; preds = %0
  store i64 1, i64* %1, align 8
  br label %21

; <label>:21                                      ; preds = %20, %19
  %22 = load i64, i64* %1, align 8
  ret i64 %22
}

declare i64 @list_remove(%struct.list*, i8*) #2

; Function Attrs: nounwind uwtable
define void @table_free(%struct.table* %tablePtr) #0 {
  %1 = alloca %struct.table*, align 8
  store %struct.table* %tablePtr, %struct.table** %1, align 8
  %2 = load %struct.table*, %struct.table** %1, align 8
  %3 = bitcast %struct.table* %2 to i8*
  call void @free(i8* %3) #3
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
