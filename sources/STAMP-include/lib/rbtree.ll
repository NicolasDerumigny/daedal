; ModuleID = 'rbtree.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbtree = type { %struct.node*, i64 (i8*, i8*)* }
%struct.node = type { i8*, i8*, %struct.node*, %struct.node*, %struct.node*, i64 }

@.str = private unnamed_addr constant [18 x i8] c"Integrity check: \00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"  (WARNING) root %lX parent=%lX\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"  (WARNING) root %lX color=%lX\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Bad parent\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Key order %lX (%ld %ld) %lX (%ld %ld)\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c" Nodes=%ld Depth=%ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c" Imbalance @depth=%ld : %ld %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" lineage\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"VERIFY %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i64 @rbtree_verify(%struct.rbtree* %s, i64 %verbose) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.rbtree*, align 8
  %3 = alloca i64, align 8
  %root = alloca %struct.node*, align 8
  %ctr = alloca i64, align 8
  %its = alloca %struct.node*, align 8
  %child = alloca %struct.node*, align 8
  %nxt = alloca %struct.node*, align 8
  %vfy = alloca i64, align 8
  store %struct.rbtree* %s, %struct.rbtree** %2, align 8
  store i64 %verbose, i64* %3, align 8
  %4 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %5 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %4, i32 0, i32 0
  %6 = load %struct.node*, %struct.node** %5, align 8
  store %struct.node* %6, %struct.node** %root, align 8
  %7 = load %struct.node*, %struct.node** %root, align 8
  %8 = icmp eq %struct.node* %7, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  store i64 1, i64* %1, align 8
  br label %129

; <label>:10                                      ; preds = %0
  %11 = load i64, i64* %3, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

; <label>:13                                      ; preds = %10
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  br label %15

; <label>:15                                      ; preds = %13, %10
  %16 = load %struct.node*, %struct.node** %root, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 2
  %18 = load %struct.node*, %struct.node** %17, align 8
  %19 = icmp ne %struct.node* %18, null
  br i1 %19, label %20, label %28

; <label>:20                                      ; preds = %15
  %21 = load %struct.node*, %struct.node** %root, align 8
  %22 = ptrtoint %struct.node* %21 to i64
  %23 = load %struct.node*, %struct.node** %root, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 2
  %25 = load %struct.node*, %struct.node** %24, align 8
  %26 = ptrtoint %struct.node* %25 to i64
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i64 %22, i64 %26)
  store i64 -1, i64* %1, align 8
  br label %129

; <label>:28                                      ; preds = %15
  %29 = load %struct.node*, %struct.node** %root, align 8
  %30 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 1
  br i1 %32, label %33, label %40

; <label>:33                                      ; preds = %28
  %34 = load %struct.node*, %struct.node** %root, align 8
  %35 = ptrtoint %struct.node* %34 to i64
  %36 = load %struct.node*, %struct.node** %root, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i64 %35, i64 %38)
  br label %40

; <label>:40                                      ; preds = %33, %28
  store i64 0, i64* %ctr, align 8
  %41 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %42 = call %struct.node* @firstEntry(%struct.rbtree* %41)
  store %struct.node* %42, %struct.node** %its, align 8
  br label %43

; <label>:43                                      ; preds = %116, %40
  %44 = load %struct.node*, %struct.node** %its, align 8
  %45 = icmp ne %struct.node* %44, null
  br i1 %45, label %46, label %118

; <label>:46                                      ; preds = %43
  %47 = load i64, i64* %ctr, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %ctr, align 8
  %49 = load %struct.node*, %struct.node** %its, align 8
  %50 = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 3
  %51 = load %struct.node*, %struct.node** %50, align 8
  store %struct.node* %51, %struct.node** %child, align 8
  %52 = load %struct.node*, %struct.node** %child, align 8
  %53 = icmp ne %struct.node* %52, null
  br i1 %53, label %54, label %62

; <label>:54                                      ; preds = %46
  %55 = load %struct.node*, %struct.node** %child, align 8
  %56 = getelementptr inbounds %struct.node, %struct.node* %55, i32 0, i32 2
  %57 = load %struct.node*, %struct.node** %56, align 8
  %58 = load %struct.node*, %struct.node** %its, align 8
  %59 = icmp ne %struct.node* %57, %58
  br i1 %59, label %60, label %62

; <label>:60                                      ; preds = %54
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  br label %62

; <label>:62                                      ; preds = %60, %54, %46
  %63 = load %struct.node*, %struct.node** %its, align 8
  %64 = getelementptr inbounds %struct.node, %struct.node* %63, i32 0, i32 4
  %65 = load %struct.node*, %struct.node** %64, align 8
  store %struct.node* %65, %struct.node** %child, align 8
  %66 = load %struct.node*, %struct.node** %child, align 8
  %67 = icmp ne %struct.node* %66, null
  br i1 %67, label %68, label %76

; <label>:68                                      ; preds = %62
  %69 = load %struct.node*, %struct.node** %child, align 8
  %70 = getelementptr inbounds %struct.node, %struct.node* %69, i32 0, i32 2
  %71 = load %struct.node*, %struct.node** %70, align 8
  %72 = load %struct.node*, %struct.node** %its, align 8
  %73 = icmp ne %struct.node* %71, %72
  br i1 %73, label %74, label %76

; <label>:74                                      ; preds = %68
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  br label %76

; <label>:76                                      ; preds = %74, %68, %62
  %77 = load %struct.node*, %struct.node** %its, align 8
  %78 = call %struct.node* @successor(%struct.node* %77)
  store %struct.node* %78, %struct.node** %nxt, align 8
  %79 = load %struct.node*, %struct.node** %nxt, align 8
  %80 = icmp eq %struct.node* %79, null
  br i1 %80, label %81, label %82

; <label>:81                                      ; preds = %76
  br label %118

; <label>:82                                      ; preds = %76
  %83 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %84 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %83, i32 0, i32 1
  %85 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %84, align 8
  %86 = load %struct.node*, %struct.node** %its, align 8
  %87 = getelementptr inbounds %struct.node, %struct.node* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.node*, %struct.node** %nxt, align 8
  %90 = getelementptr inbounds %struct.node, %struct.node* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 %85(i8* %88, i8* %91)
  %93 = icmp sge i64 %92, 0
  br i1 %93, label %94, label %116

; <label>:94                                      ; preds = %82
  %95 = load %struct.node*, %struct.node** %its, align 8
  %96 = ptrtoint %struct.node* %95 to i64
  %97 = load %struct.node*, %struct.node** %its, align 8
  %98 = getelementptr inbounds %struct.node, %struct.node* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = ptrtoint i8* %99 to i64
  %101 = load %struct.node*, %struct.node** %its, align 8
  %102 = getelementptr inbounds %struct.node, %struct.node* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = ptrtoint i8* %103 to i64
  %105 = load %struct.node*, %struct.node** %nxt, align 8
  %106 = ptrtoint %struct.node* %105 to i64
  %107 = load %struct.node*, %struct.node** %nxt, align 8
  %108 = getelementptr inbounds %struct.node, %struct.node* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = ptrtoint i8* %109 to i64
  %111 = load %struct.node*, %struct.node** %nxt, align 8
  %112 = getelementptr inbounds %struct.node, %struct.node* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = ptrtoint i8* %113 to i64
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0), i64 %96, i64 %100, i64 %104, i64 %106, i64 %110, i64 %114)
  store i64 -3, i64* %1, align 8
  br label %129

; <label>:116                                     ; preds = %82
  %117 = load %struct.node*, %struct.node** %nxt, align 8
  store %struct.node* %117, %struct.node** %its, align 8
  br label %43

; <label>:118                                     ; preds = %81, %43
  %119 = load %struct.node*, %struct.node** %root, align 8
  %120 = call i64 @verifyRedBlack(%struct.node* %119, i64 0)
  store i64 %120, i64* %vfy, align 8
  %121 = load i64, i64* %3, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

; <label>:123                                     ; preds = %118
  %124 = load i64, i64* %ctr, align 8
  %125 = load i64, i64* %vfy, align 8
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i64 %124, i64 %125)
  br label %127

; <label>:127                                     ; preds = %123, %118
  %128 = load i64, i64* %vfy, align 8
  store i64 %128, i64* %1, align 8
  br label %129

; <label>:129                                     ; preds = %127, %94, %20, %9
  %130 = load i64, i64* %1, align 8
  ret i64 %130
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct.node* @firstEntry(%struct.rbtree* %s) #0 {
  %1 = alloca %struct.rbtree*, align 8
  %p = alloca %struct.node*, align 8
  store %struct.rbtree* %s, %struct.rbtree** %1, align 8
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %2, i32 0, i32 0
  %4 = load %struct.node*, %struct.node** %3, align 8
  store %struct.node* %4, %struct.node** %p, align 8
  %5 = load %struct.node*, %struct.node** %p, align 8
  %6 = icmp ne %struct.node* %5, null
  br i1 %6, label %7, label %18

; <label>:7                                       ; preds = %0
  br label %8

; <label>:8                                       ; preds = %13, %7
  %9 = load %struct.node*, %struct.node** %p, align 8
  %10 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 3
  %11 = load %struct.node*, %struct.node** %10, align 8
  %12 = icmp ne %struct.node* %11, null
  br i1 %12, label %13, label %17

; <label>:13                                      ; preds = %8
  %14 = load %struct.node*, %struct.node** %p, align 8
  %15 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 3
  %16 = load %struct.node*, %struct.node** %15, align 8
  store %struct.node* %16, %struct.node** %p, align 8
  br label %8

; <label>:17                                      ; preds = %8
  br label %18

; <label>:18                                      ; preds = %17, %0
  %19 = load %struct.node*, %struct.node** %p, align 8
  ret %struct.node* %19
}

; Function Attrs: nounwind uwtable
define internal %struct.node* @successor(%struct.node* %t) #0 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca %struct.node*, align 8
  %p = alloca %struct.node*, align 8
  %p1 = alloca %struct.node*, align 8
  %ch = alloca %struct.node*, align 8
  store %struct.node* %t, %struct.node** %2, align 8
  %3 = load %struct.node*, %struct.node** %2, align 8
  %4 = icmp eq %struct.node* %3, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  store %struct.node* null, %struct.node** %1, align 8
  br label %49

; <label>:6                                       ; preds = %0
  %7 = load %struct.node*, %struct.node** %2, align 8
  %8 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 4
  %9 = load %struct.node*, %struct.node** %8, align 8
  %10 = icmp ne %struct.node* %9, null
  br i1 %10, label %11, label %26

; <label>:11                                      ; preds = %6
  %12 = load %struct.node*, %struct.node** %2, align 8
  %13 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 4
  %14 = load %struct.node*, %struct.node** %13, align 8
  store %struct.node* %14, %struct.node** %p, align 8
  br label %15

; <label>:15                                      ; preds = %20, %11
  %16 = load %struct.node*, %struct.node** %p, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 3
  %18 = load %struct.node*, %struct.node** %17, align 8
  %19 = icmp ne %struct.node* %18, null
  br i1 %19, label %20, label %24

; <label>:20                                      ; preds = %15
  %21 = load %struct.node*, %struct.node** %p, align 8
  %22 = getelementptr inbounds %struct.node, %struct.node* %21, i32 0, i32 3
  %23 = load %struct.node*, %struct.node** %22, align 8
  store %struct.node* %23, %struct.node** %p, align 8
  br label %15

; <label>:24                                      ; preds = %15
  %25 = load %struct.node*, %struct.node** %p, align 8
  store %struct.node* %25, %struct.node** %1, align 8
  br label %49

; <label>:26                                      ; preds = %6
  %27 = load %struct.node*, %struct.node** %2, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 2
  %29 = load %struct.node*, %struct.node** %28, align 8
  store %struct.node* %29, %struct.node** %p1, align 8
  %30 = load %struct.node*, %struct.node** %2, align 8
  store %struct.node* %30, %struct.node** %ch, align 8
  br label %31

; <label>:31                                      ; preds = %42, %26
  %32 = load %struct.node*, %struct.node** %p1, align 8
  %33 = icmp ne %struct.node* %32, null
  br i1 %33, label %34, label %40

; <label>:34                                      ; preds = %31
  %35 = load %struct.node*, %struct.node** %ch, align 8
  %36 = load %struct.node*, %struct.node** %p1, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 4
  %38 = load %struct.node*, %struct.node** %37, align 8
  %39 = icmp eq %struct.node* %35, %38
  br label %40

; <label>:40                                      ; preds = %34, %31
  %41 = phi i1 [ false, %31 ], [ %39, %34 ]
  br i1 %41, label %42, label %47

; <label>:42                                      ; preds = %40
  %43 = load %struct.node*, %struct.node** %p1, align 8
  store %struct.node* %43, %struct.node** %ch, align 8
  %44 = load %struct.node*, %struct.node** %p1, align 8
  %45 = getelementptr inbounds %struct.node, %struct.node* %44, i32 0, i32 2
  %46 = load %struct.node*, %struct.node** %45, align 8
  store %struct.node* %46, %struct.node** %p1, align 8
  br label %31

; <label>:47                                      ; preds = %40
  %48 = load %struct.node*, %struct.node** %p1, align 8
  store %struct.node* %48, %struct.node** %1, align 8
  br label %49

; <label>:49                                      ; preds = %47, %24, %5
  %50 = load %struct.node*, %struct.node** %1, align 8
  ret %struct.node* %50
}

; Function Attrs: nounwind uwtable
define internal i64 @verifyRedBlack(%struct.node* %root, i64 %depth) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.node*, align 8
  %3 = alloca i64, align 8
  %height_left = alloca i64, align 8
  %height_right = alloca i64, align 8
  store %struct.node* %root, %struct.node** %2, align 8
  store i64 %depth, i64* %3, align 8
  %4 = load %struct.node*, %struct.node** %2, align 8
  %5 = icmp eq %struct.node* %4, null
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store i64 1, i64* %1, align 8
  br label %110

; <label>:7                                       ; preds = %0
  %8 = load %struct.node*, %struct.node** %2, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 3
  %10 = load %struct.node*, %struct.node** %9, align 8
  %11 = load i64, i64* %3, align 8
  %12 = add nsw i64 %11, 1
  %13 = call i64 @verifyRedBlack(%struct.node* %10, i64 %12)
  store i64 %13, i64* %height_left, align 8
  %14 = load %struct.node*, %struct.node** %2, align 8
  %15 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 4
  %16 = load %struct.node*, %struct.node** %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = add nsw i64 %17, 1
  %19 = call i64 @verifyRedBlack(%struct.node* %16, i64 %18)
  store i64 %19, i64* %height_right, align 8
  %20 = load i64, i64* %height_left, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %25, label %22

; <label>:22                                      ; preds = %7
  %23 = load i64, i64* %height_right, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %22, %7
  store i64 0, i64* %1, align 8
  br label %110

; <label>:26                                      ; preds = %22
  %27 = load i64, i64* %height_left, align 8
  %28 = load i64, i64* %height_right, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %35

; <label>:30                                      ; preds = %26
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* %height_left, align 8
  %33 = load i64, i64* %height_right, align 8
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0), i64 %31, i64 %32, i64 %33)
  br label %35

; <label>:35                                      ; preds = %30, %26
  %36 = load %struct.node*, %struct.node** %2, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 3
  %38 = load %struct.node*, %struct.node** %37, align 8
  %39 = icmp ne %struct.node* %38, null
  br i1 %39, label %40, label %50

; <label>:40                                      ; preds = %35
  %41 = load %struct.node*, %struct.node** %2, align 8
  %42 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 3
  %43 = load %struct.node*, %struct.node** %42, align 8
  %44 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 2
  %45 = load %struct.node*, %struct.node** %44, align 8
  %46 = load %struct.node*, %struct.node** %2, align 8
  %47 = icmp ne %struct.node* %45, %46
  br i1 %47, label %48, label %50

; <label>:48                                      ; preds = %40
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  br label %50

; <label>:50                                      ; preds = %48, %40, %35
  %51 = load %struct.node*, %struct.node** %2, align 8
  %52 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 4
  %53 = load %struct.node*, %struct.node** %52, align 8
  %54 = icmp ne %struct.node* %53, null
  br i1 %54, label %55, label %65

; <label>:55                                      ; preds = %50
  %56 = load %struct.node*, %struct.node** %2, align 8
  %57 = getelementptr inbounds %struct.node, %struct.node* %56, i32 0, i32 4
  %58 = load %struct.node*, %struct.node** %57, align 8
  %59 = getelementptr inbounds %struct.node, %struct.node* %58, i32 0, i32 2
  %60 = load %struct.node*, %struct.node** %59, align 8
  %61 = load %struct.node*, %struct.node** %2, align 8
  %62 = icmp ne %struct.node* %60, %61
  br i1 %62, label %63, label %65

; <label>:63                                      ; preds = %55
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  br label %65

; <label>:65                                      ; preds = %63, %55, %50
  %66 = load %struct.node*, %struct.node** %2, align 8
  %67 = getelementptr inbounds %struct.node, %struct.node* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %100

; <label>:70                                      ; preds = %65
  %71 = load %struct.node*, %struct.node** %2, align 8
  %72 = getelementptr inbounds %struct.node, %struct.node* %71, i32 0, i32 3
  %73 = load %struct.node*, %struct.node** %72, align 8
  %74 = icmp ne %struct.node* %73, null
  br i1 %74, label %75, label %84

; <label>:75                                      ; preds = %70
  %76 = load %struct.node*, %struct.node** %2, align 8
  %77 = getelementptr inbounds %struct.node, %struct.node* %76, i32 0, i32 3
  %78 = load %struct.node*, %struct.node** %77, align 8
  %79 = getelementptr inbounds %struct.node, %struct.node* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 1
  br i1 %81, label %82, label %84

; <label>:82                                      ; preds = %75
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 1179)
  store i64 0, i64* %1, align 8
  br label %110

; <label>:84                                      ; preds = %75, %70
  %85 = load %struct.node*, %struct.node** %2, align 8
  %86 = getelementptr inbounds %struct.node, %struct.node* %85, i32 0, i32 4
  %87 = load %struct.node*, %struct.node** %86, align 8
  %88 = icmp ne %struct.node* %87, null
  br i1 %88, label %89, label %98

; <label>:89                                      ; preds = %84
  %90 = load %struct.node*, %struct.node** %2, align 8
  %91 = getelementptr inbounds %struct.node, %struct.node* %90, i32 0, i32 4
  %92 = load %struct.node*, %struct.node** %91, align 8
  %93 = getelementptr inbounds %struct.node, %struct.node* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 1
  br i1 %95, label %96, label %98

; <label>:96                                      ; preds = %89
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 1183)
  store i64 0, i64* %1, align 8
  br label %110

; <label>:98                                      ; preds = %89, %84
  %99 = load i64, i64* %height_left, align 8
  store i64 %99, i64* %1, align 8
  br label %110

; <label>:100                                     ; preds = %65
  %101 = load %struct.node*, %struct.node** %2, align 8
  %102 = getelementptr inbounds %struct.node, %struct.node* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 1
  br i1 %104, label %105, label %107

; <label>:105                                     ; preds = %100
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 1189)
  store i64 0, i64* %1, align 8
  br label %110

; <label>:107                                     ; preds = %100
  %108 = load i64, i64* %height_left, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %1, align 8
  br label %110

; <label>:110                                     ; preds = %107, %105, %98, %96, %82, %25, %6
  %111 = load i64, i64* %1, align 8
  ret i64 %111
}

; Function Attrs: nounwind uwtable
define %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)* %compare) #0 {
  %1 = alloca i64 (i8*, i8*)*, align 8
  %n = alloca %struct.rbtree*, align 8
  store i64 (i8*, i8*)* %compare, i64 (i8*, i8*)** %1, align 8
  %2 = call noalias i8* @malloc(i64 16) #4
  %3 = bitcast i8* %2 to %struct.rbtree*
  store %struct.rbtree* %3, %struct.rbtree** %n, align 8
  %4 = load %struct.rbtree*, %struct.rbtree** %n, align 8
  %5 = icmp ne %struct.rbtree* %4, null
  br i1 %5, label %6, label %18

; <label>:6                                       ; preds = %0
  %7 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %1, align 8
  %8 = icmp ne i64 (i8*, i8*)* %7, null
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %6
  %10 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %1, align 8
  br label %12

; <label>:11                                      ; preds = %6
  br label %12

; <label>:12                                      ; preds = %11, %9
  %13 = phi i64 (i8*, i8*)* [ %10, %9 ], [ @compareKeysDefault, %11 ]
  %14 = load %struct.rbtree*, %struct.rbtree** %n, align 8
  %15 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %14, i32 0, i32 1
  store i64 (i8*, i8*)* %13, i64 (i8*, i8*)** %15, align 8
  %16 = load %struct.rbtree*, %struct.rbtree** %n, align 8
  %17 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %16, i32 0, i32 0
  store %struct.node* null, %struct.node** %17, align 8
  br label %18

; <label>:18                                      ; preds = %12, %0
  %19 = load %struct.rbtree*, %struct.rbtree** %n, align 8
  ret %struct.rbtree* %19
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define internal i64 @compareKeysDefault(i8* %a, i8* %b) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  store i8* %a, i8** %1, align 8
  store i8* %b, i8** %2, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = ptrtoint i8* %3 to i64
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i64
  %7 = sub nsw i64 %4, %6
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define %struct.rbtree* @TMrbtree_alloc(i64 (i8*, i8*)* %compare) #0 {
  %1 = alloca i64 (i8*, i8*)*, align 8
  %n = alloca %struct.rbtree*, align 8
  store i64 (i8*, i8*)* %compare, i64 (i8*, i8*)** %1, align 8
  %2 = call noalias i8* @malloc(i64 16) #4
  %3 = bitcast i8* %2 to %struct.rbtree*
  store %struct.rbtree* %3, %struct.rbtree** %n, align 8
  %4 = load %struct.rbtree*, %struct.rbtree** %n, align 8
  %5 = icmp ne %struct.rbtree* %4, null
  br i1 %5, label %6, label %18

; <label>:6                                       ; preds = %0
  %7 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %1, align 8
  %8 = icmp ne i64 (i8*, i8*)* %7, null
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %6
  %10 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %1, align 8
  br label %12

; <label>:11                                      ; preds = %6
  br label %12

; <label>:12                                      ; preds = %11, %9
  %13 = phi i64 (i8*, i8*)* [ %10, %9 ], [ @compareKeysDefault, %11 ]
  %14 = load %struct.rbtree*, %struct.rbtree** %n, align 8
  %15 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %14, i32 0, i32 1
  store i64 (i8*, i8*)* %13, i64 (i8*, i8*)** %15, align 8
  %16 = load %struct.rbtree*, %struct.rbtree** %n, align 8
  %17 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %16, i32 0, i32 0
  store %struct.node* null, %struct.node** %17, align 8
  br label %18

; <label>:18                                      ; preds = %12, %0
  %19 = load %struct.rbtree*, %struct.rbtree** %n, align 8
  ret %struct.rbtree* %19
}

; Function Attrs: nounwind uwtable
define void @rbtree_free(%struct.rbtree* %r) #0 {
  %1 = alloca %struct.rbtree*, align 8
  store %struct.rbtree* %r, %struct.rbtree** %1, align 8
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %2, i32 0, i32 0
  %4 = load %struct.node*, %struct.node** %3, align 8
  call void @freeNode(%struct.node* %4)
  %5 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %6 = bitcast %struct.rbtree* %5 to i8*
  call void @free(i8* %6) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @freeNode(%struct.node* %n) #0 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = icmp ne %struct.node* %2, null
  br i1 %3, label %4, label %12

; <label>:4                                       ; preds = %0
  %5 = load %struct.node*, %struct.node** %1, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 3
  %7 = load %struct.node*, %struct.node** %6, align 8
  call void @freeNode(%struct.node* %7)
  %8 = load %struct.node*, %struct.node** %1, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 4
  %10 = load %struct.node*, %struct.node** %9, align 8
  call void @freeNode(%struct.node* %10)
  %11 = load %struct.node*, %struct.node** %1, align 8
  call void @releaseNode(%struct.node* %11)
  br label %12

; <label>:12                                      ; preds = %4, %0
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @TMrbtree_free(%struct.rbtree* %r) #0 {
  %1 = alloca %struct.rbtree*, align 8
  store %struct.rbtree* %r, %struct.rbtree** %1, align 8
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %2, i32 0, i32 0
  %4 = load %struct.node*, %struct.node** %3, align 8
  call void @TMfreeNode(%struct.node* %4)
  %5 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %6 = bitcast %struct.rbtree* %5 to i8*
  call void @free(i8* %6) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TMfreeNode(%struct.node* %n) #0 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = icmp ne %struct.node* %2, null
  br i1 %3, label %4, label %12

; <label>:4                                       ; preds = %0
  %5 = load %struct.node*, %struct.node** %1, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 3
  %7 = load %struct.node*, %struct.node** %6, align 8
  call void @TMfreeNode(%struct.node* %7)
  %8 = load %struct.node*, %struct.node** %1, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 4
  %10 = load %struct.node*, %struct.node** %9, align 8
  call void @TMfreeNode(%struct.node* %10)
  %11 = load %struct.node*, %struct.node** %1, align 8
  call void @TMreleaseNode(%struct.node* %11)
  br label %12

; <label>:12                                      ; preds = %4, %0
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @rbtree_insert(%struct.rbtree* %r, i8* %key, i8* %val) #0 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %node = alloca %struct.node*, align 8
  %ex = alloca %struct.node*, align 8
  store %struct.rbtree* %r, %struct.rbtree** %1, align 8
  store i8* %key, i8** %2, align 8
  store i8* %val, i8** %3, align 8
  %4 = call %struct.node* @getNode()
  store %struct.node* %4, %struct.node** %node, align 8
  %5 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load %struct.node*, %struct.node** %node, align 8
  %9 = call %struct.node* @insert(%struct.rbtree* %5, i8* %6, i8* %7, %struct.node* %8)
  store %struct.node* %9, %struct.node** %ex, align 8
  %10 = load %struct.node*, %struct.node** %ex, align 8
  %11 = icmp ne %struct.node* %10, null
  br i1 %11, label %12, label %14

; <label>:12                                      ; preds = %0
  %13 = load %struct.node*, %struct.node** %node, align 8
  call void @releaseNode(%struct.node* %13)
  br label %14

; <label>:14                                      ; preds = %12, %0
  %15 = load %struct.node*, %struct.node** %ex, align 8
  %16 = icmp eq %struct.node* %15, null
  %17 = select i1 %16, i32 1, i32 0
  %18 = sext i32 %17 to i64
  ret i64 %18
}

; Function Attrs: nounwind uwtable
define internal %struct.node* @insert(%struct.rbtree* %s, i8* %k, i8* %v, %struct.node* %n) #0 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca %struct.rbtree*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.node*, align 8
  %t = alloca %struct.node*, align 8
  %cmp = alloca i64, align 8
  %tl = alloca %struct.node*, align 8
  %tr = alloca %struct.node*, align 8
  store %struct.rbtree* %s, %struct.rbtree** %2, align 8
  store i8* %k, i8** %3, align 8
  store i8* %v, i8** %4, align 8
  store %struct.node* %n, %struct.node** %5, align 8
  %6 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %7 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %6, i32 0, i32 0
  %8 = load %struct.node*, %struct.node** %7, align 8
  store %struct.node* %8, %struct.node** %t, align 8
  %9 = load %struct.node*, %struct.node** %t, align 8
  %10 = icmp eq %struct.node* %9, null
  br i1 %10, label %11, label %33

; <label>:11                                      ; preds = %0
  %12 = load %struct.node*, %struct.node** %5, align 8
  %13 = icmp eq %struct.node* %12, null
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %11
  store %struct.node* null, %struct.node** %1, align 8
  br label %108

; <label>:15                                      ; preds = %11
  %16 = load %struct.node*, %struct.node** %5, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 3
  store %struct.node* null, %struct.node** %17, align 8
  %18 = load %struct.node*, %struct.node** %5, align 8
  %19 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 4
  store %struct.node* null, %struct.node** %19, align 8
  %20 = load %struct.node*, %struct.node** %5, align 8
  %21 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 2
  store %struct.node* null, %struct.node** %21, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = load %struct.node*, %struct.node** %5, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load %struct.node*, %struct.node** %5, align 8
  %27 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.node*, %struct.node** %5, align 8
  %29 = getelementptr inbounds %struct.node, %struct.node* %28, i32 0, i32 5
  store i64 1, i64* %29, align 8
  %30 = load %struct.node*, %struct.node** %5, align 8
  %31 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %32 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %31, i32 0, i32 0
  store %struct.node* %30, %struct.node** %32, align 8
  store %struct.node* null, %struct.node** %1, align 8
  br label %108

; <label>:33                                      ; preds = %0
  br label %34

; <label>:34                                      ; preds = %107, %33
  %35 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %36 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %35, i32 0, i32 1
  %37 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %36, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = load %struct.node*, %struct.node** %t, align 8
  %40 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 %37(i8* %38, i8* %41)
  store i64 %42, i64* %cmp, align 8
  %43 = load i64, i64* %cmp, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

; <label>:45                                      ; preds = %34
  %46 = load %struct.node*, %struct.node** %t, align 8
  store %struct.node* %46, %struct.node** %1, align 8
  br label %108

; <label>:47                                      ; preds = %34
  %48 = load i64, i64* %cmp, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %78

; <label>:50                                      ; preds = %47
  %51 = load %struct.node*, %struct.node** %t, align 8
  %52 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 3
  %53 = load %struct.node*, %struct.node** %52, align 8
  store %struct.node* %53, %struct.node** %tl, align 8
  %54 = load %struct.node*, %struct.node** %tl, align 8
  %55 = icmp ne %struct.node* %54, null
  br i1 %55, label %56, label %58

; <label>:56                                      ; preds = %50
  %57 = load %struct.node*, %struct.node** %tl, align 8
  store %struct.node* %57, %struct.node** %t, align 8
  br label %77

; <label>:58                                      ; preds = %50
  %59 = load %struct.node*, %struct.node** %5, align 8
  %60 = getelementptr inbounds %struct.node, %struct.node* %59, i32 0, i32 3
  store %struct.node* null, %struct.node** %60, align 8
  %61 = load %struct.node*, %struct.node** %5, align 8
  %62 = getelementptr inbounds %struct.node, %struct.node* %61, i32 0, i32 4
  store %struct.node* null, %struct.node** %62, align 8
  %63 = load i8*, i8** %3, align 8
  %64 = load %struct.node*, %struct.node** %5, align 8
  %65 = getelementptr inbounds %struct.node, %struct.node* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = load %struct.node*, %struct.node** %5, align 8
  %68 = getelementptr inbounds %struct.node, %struct.node* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.node*, %struct.node** %t, align 8
  %70 = load %struct.node*, %struct.node** %5, align 8
  %71 = getelementptr inbounds %struct.node, %struct.node* %70, i32 0, i32 2
  store %struct.node* %69, %struct.node** %71, align 8
  %72 = load %struct.node*, %struct.node** %5, align 8
  %73 = load %struct.node*, %struct.node** %t, align 8
  %74 = getelementptr inbounds %struct.node, %struct.node* %73, i32 0, i32 3
  store %struct.node* %72, %struct.node** %74, align 8
  %75 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %76 = load %struct.node*, %struct.node** %5, align 8
  call void @fixAfterInsertion(%struct.rbtree* %75, %struct.node* %76)
  store %struct.node* null, %struct.node** %1, align 8
  br label %108

; <label>:77                                      ; preds = %56
  br label %106

; <label>:78                                      ; preds = %47
  %79 = load %struct.node*, %struct.node** %t, align 8
  %80 = getelementptr inbounds %struct.node, %struct.node* %79, i32 0, i32 4
  %81 = load %struct.node*, %struct.node** %80, align 8
  store %struct.node* %81, %struct.node** %tr, align 8
  %82 = load %struct.node*, %struct.node** %tr, align 8
  %83 = icmp ne %struct.node* %82, null
  br i1 %83, label %84, label %86

; <label>:84                                      ; preds = %78
  %85 = load %struct.node*, %struct.node** %tr, align 8
  store %struct.node* %85, %struct.node** %t, align 8
  br label %105

; <label>:86                                      ; preds = %78
  %87 = load %struct.node*, %struct.node** %5, align 8
  %88 = getelementptr inbounds %struct.node, %struct.node* %87, i32 0, i32 3
  store %struct.node* null, %struct.node** %88, align 8
  %89 = load %struct.node*, %struct.node** %5, align 8
  %90 = getelementptr inbounds %struct.node, %struct.node* %89, i32 0, i32 4
  store %struct.node* null, %struct.node** %90, align 8
  %91 = load i8*, i8** %3, align 8
  %92 = load %struct.node*, %struct.node** %5, align 8
  %93 = getelementptr inbounds %struct.node, %struct.node* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = load %struct.node*, %struct.node** %5, align 8
  %96 = getelementptr inbounds %struct.node, %struct.node* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load %struct.node*, %struct.node** %t, align 8
  %98 = load %struct.node*, %struct.node** %5, align 8
  %99 = getelementptr inbounds %struct.node, %struct.node* %98, i32 0, i32 2
  store %struct.node* %97, %struct.node** %99, align 8
  %100 = load %struct.node*, %struct.node** %5, align 8
  %101 = load %struct.node*, %struct.node** %t, align 8
  %102 = getelementptr inbounds %struct.node, %struct.node* %101, i32 0, i32 4
  store %struct.node* %100, %struct.node** %102, align 8
  %103 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %104 = load %struct.node*, %struct.node** %5, align 8
  call void @fixAfterInsertion(%struct.rbtree* %103, %struct.node* %104)
  store %struct.node* null, %struct.node** %1, align 8
  br label %108

; <label>:105                                     ; preds = %84
  br label %106

; <label>:106                                     ; preds = %105, %77
  br label %107

; <label>:107                                     ; preds = %106
  br label %34

; <label>:108                                     ; preds = %86, %58, %45, %15, %14
  %109 = load %struct.node*, %struct.node** %1, align 8
  ret %struct.node* %109
}

; Function Attrs: nounwind uwtable
define internal void @releaseNode(%struct.node* %n) #0 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = bitcast %struct.node* %2 to i8*
  call void @free(i8* %3) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @TMrbtree_insert(%struct.rbtree* %r, i8* %key, i8* %val) #0 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %node = alloca %struct.node*, align 8
  %ex = alloca %struct.node*, align 8
  store %struct.rbtree* %r, %struct.rbtree** %1, align 8
  store i8* %key, i8** %2, align 8
  store i8* %val, i8** %3, align 8
  %4 = call %struct.node* @TMgetNode()
  store %struct.node* %4, %struct.node** %node, align 8
  %5 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load %struct.node*, %struct.node** %node, align 8
  %9 = call %struct.node* @TMinsert(%struct.rbtree* %5, i8* %6, i8* %7, %struct.node* %8)
  store %struct.node* %9, %struct.node** %ex, align 8
  %10 = load %struct.node*, %struct.node** %ex, align 8
  %11 = icmp ne %struct.node* %10, null
  br i1 %11, label %12, label %14

; <label>:12                                      ; preds = %0
  %13 = load %struct.node*, %struct.node** %node, align 8
  call void @TMreleaseNode(%struct.node* %13)
  br label %14

; <label>:14                                      ; preds = %12, %0
  %15 = load %struct.node*, %struct.node** %ex, align 8
  %16 = icmp eq %struct.node* %15, null
  %17 = select i1 %16, i32 1, i32 0
  %18 = sext i32 %17 to i64
  ret i64 %18
}

; Function Attrs: nounwind uwtable
define internal %struct.node* @TMinsert(%struct.rbtree* %s, i8* %k, i8* %v, %struct.node* %n) #0 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca %struct.rbtree*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.node*, align 8
  %t = alloca %struct.node*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.node*, align 8
  %cmp = alloca i64, align 8
  %tl = alloca %struct.node*, align 8
  %13 = alloca %struct.node*, align 8
  %14 = alloca %struct.node*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.node*, align 8
  %18 = alloca %struct.node*, align 8
  %tr = alloca %struct.node*, align 8
  %19 = alloca %struct.node*, align 8
  %20 = alloca %struct.node*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.node*, align 8
  %24 = alloca %struct.node*, align 8
  store %struct.rbtree* %s, %struct.rbtree** %2, align 8
  store i8* %k, i8** %3, align 8
  store i8* %v, i8** %4, align 8
  store %struct.node* %n, %struct.node** %5, align 8
  %25 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %26 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %25, i32 0, i32 0
  %27 = load %struct.node*, %struct.node** %26, align 8
  %28 = bitcast %struct.node* %27 to i8*
  %29 = bitcast i8* %28 to %struct.node*
  store %struct.node* %29, %struct.node** %t, align 8
  %30 = load %struct.node*, %struct.node** %t, align 8
  %31 = icmp eq %struct.node* %30, null
  br i1 %31, label %32, label %82

; <label>:32                                      ; preds = %0
  %33 = load %struct.node*, %struct.node** %5, align 8
  %34 = icmp eq %struct.node* %33, null
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %32
  store %struct.node* null, %struct.node** %1, align 8
  br label %209

; <label>:36                                      ; preds = %32
  %37 = load %struct.node*, %struct.node** %5, align 8
  %38 = getelementptr inbounds %struct.node, %struct.node* %37, i32 0, i32 3
  store %struct.node* null, %struct.node** %38, align 8
  %39 = load %struct.node*, %struct.node** %5, align 8
  %40 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 3
  %41 = load %struct.node*, %struct.node** %40, align 8
  store %struct.node* %41, %struct.node** %6, align 8
  %42 = load %struct.node*, %struct.node** %6, align 8
  %43 = load %struct.node*, %struct.node** %5, align 8
  %44 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 4
  store %struct.node* null, %struct.node** %44, align 8
  %45 = load %struct.node*, %struct.node** %5, align 8
  %46 = getelementptr inbounds %struct.node, %struct.node* %45, i32 0, i32 4
  %47 = load %struct.node*, %struct.node** %46, align 8
  store %struct.node* %47, %struct.node** %7, align 8
  %48 = load %struct.node*, %struct.node** %7, align 8
  %49 = load %struct.node*, %struct.node** %5, align 8
  %50 = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 2
  store %struct.node* null, %struct.node** %50, align 8
  %51 = load %struct.node*, %struct.node** %5, align 8
  %52 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 2
  %53 = load %struct.node*, %struct.node** %52, align 8
  store %struct.node* %53, %struct.node** %8, align 8
  %54 = load %struct.node*, %struct.node** %8, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = load %struct.node*, %struct.node** %5, align 8
  %57 = getelementptr inbounds %struct.node, %struct.node* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.node*, %struct.node** %5, align 8
  %59 = getelementptr inbounds %struct.node, %struct.node* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %9, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = load %struct.node*, %struct.node** %5, align 8
  %64 = getelementptr inbounds %struct.node, %struct.node* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.node*, %struct.node** %5, align 8
  %66 = getelementptr inbounds %struct.node, %struct.node* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %10, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load %struct.node*, %struct.node** %5, align 8
  %70 = getelementptr inbounds %struct.node, %struct.node* %69, i32 0, i32 5
  store i64 1, i64* %70, align 8
  %71 = load %struct.node*, %struct.node** %5, align 8
  %72 = getelementptr inbounds %struct.node, %struct.node* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %11, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load %struct.node*, %struct.node** %5, align 8
  %76 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %77 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %76, i32 0, i32 0
  store %struct.node* %75, %struct.node** %77, align 8
  %78 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %79 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %78, i32 0, i32 0
  %80 = load %struct.node*, %struct.node** %79, align 8
  store %struct.node* %80, %struct.node** %12, align 8
  %81 = load %struct.node*, %struct.node** %12, align 8
  store %struct.node* null, %struct.node** %1, align 8
  br label %209

; <label>:82                                      ; preds = %0
  br label %83

; <label>:83                                      ; preds = %208, %82
  %84 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %85 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %84, i32 0, i32 1
  %86 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %85, align 8
  %87 = load i8*, i8** %3, align 8
  %88 = load %struct.node*, %struct.node** %t, align 8
  %89 = getelementptr inbounds %struct.node, %struct.node* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 %86(i8* %87, i8* %90)
  store i64 %91, i64* %cmp, align 8
  %92 = load i64, i64* %cmp, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %96

; <label>:94                                      ; preds = %83
  %95 = load %struct.node*, %struct.node** %t, align 8
  store %struct.node* %95, %struct.node** %1, align 8
  br label %209

; <label>:96                                      ; preds = %83
  %97 = load i64, i64* %cmp, align 8
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %153

; <label>:99                                      ; preds = %96
  %100 = load %struct.node*, %struct.node** %t, align 8
  %101 = getelementptr inbounds %struct.node, %struct.node* %100, i32 0, i32 3
  %102 = load %struct.node*, %struct.node** %101, align 8
  %103 = bitcast %struct.node* %102 to i8*
  %104 = bitcast i8* %103 to %struct.node*
  store %struct.node* %104, %struct.node** %tl, align 8
  %105 = load %struct.node*, %struct.node** %tl, align 8
  %106 = icmp ne %struct.node* %105, null
  br i1 %106, label %107, label %109

; <label>:107                                     ; preds = %99
  %108 = load %struct.node*, %struct.node** %tl, align 8
  store %struct.node* %108, %struct.node** %t, align 8
  br label %152

; <label>:109                                     ; preds = %99
  %110 = load %struct.node*, %struct.node** %5, align 8
  %111 = getelementptr inbounds %struct.node, %struct.node* %110, i32 0, i32 3
  store %struct.node* null, %struct.node** %111, align 8
  %112 = load %struct.node*, %struct.node** %5, align 8
  %113 = getelementptr inbounds %struct.node, %struct.node* %112, i32 0, i32 3
  %114 = load %struct.node*, %struct.node** %113, align 8
  store %struct.node* %114, %struct.node** %13, align 8
  %115 = load %struct.node*, %struct.node** %13, align 8
  %116 = load %struct.node*, %struct.node** %5, align 8
  %117 = getelementptr inbounds %struct.node, %struct.node* %116, i32 0, i32 4
  store %struct.node* null, %struct.node** %117, align 8
  %118 = load %struct.node*, %struct.node** %5, align 8
  %119 = getelementptr inbounds %struct.node, %struct.node* %118, i32 0, i32 4
  %120 = load %struct.node*, %struct.node** %119, align 8
  store %struct.node* %120, %struct.node** %14, align 8
  %121 = load %struct.node*, %struct.node** %14, align 8
  %122 = load i8*, i8** %3, align 8
  %123 = load %struct.node*, %struct.node** %5, align 8
  %124 = getelementptr inbounds %struct.node, %struct.node* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  %125 = load %struct.node*, %struct.node** %5, align 8
  %126 = getelementptr inbounds %struct.node, %struct.node* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  store i8* %127, i8** %15, align 8
  %128 = load i8*, i8** %15, align 8
  %129 = load i8*, i8** %4, align 8
  %130 = load %struct.node*, %struct.node** %5, align 8
  %131 = getelementptr inbounds %struct.node, %struct.node* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  %132 = load %struct.node*, %struct.node** %5, align 8
  %133 = getelementptr inbounds %struct.node, %struct.node* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  store i8* %134, i8** %16, align 8
  %135 = load i8*, i8** %16, align 8
  %136 = load %struct.node*, %struct.node** %t, align 8
  %137 = load %struct.node*, %struct.node** %5, align 8
  %138 = getelementptr inbounds %struct.node, %struct.node* %137, i32 0, i32 2
  store %struct.node* %136, %struct.node** %138, align 8
  %139 = load %struct.node*, %struct.node** %5, align 8
  %140 = getelementptr inbounds %struct.node, %struct.node* %139, i32 0, i32 2
  %141 = load %struct.node*, %struct.node** %140, align 8
  store %struct.node* %141, %struct.node** %17, align 8
  %142 = load %struct.node*, %struct.node** %17, align 8
  %143 = load %struct.node*, %struct.node** %5, align 8
  %144 = load %struct.node*, %struct.node** %t, align 8
  %145 = getelementptr inbounds %struct.node, %struct.node* %144, i32 0, i32 3
  store %struct.node* %143, %struct.node** %145, align 8
  %146 = load %struct.node*, %struct.node** %t, align 8
  %147 = getelementptr inbounds %struct.node, %struct.node* %146, i32 0, i32 3
  %148 = load %struct.node*, %struct.node** %147, align 8
  store %struct.node* %148, %struct.node** %18, align 8
  %149 = load %struct.node*, %struct.node** %18, align 8
  %150 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %151 = load %struct.node*, %struct.node** %5, align 8
  call void @TMfixAfterInsertion(%struct.rbtree* %150, %struct.node* %151)
  store %struct.node* null, %struct.node** %1, align 8
  br label %209

; <label>:152                                     ; preds = %107
  br label %207

; <label>:153                                     ; preds = %96
  %154 = load %struct.node*, %struct.node** %t, align 8
  %155 = getelementptr inbounds %struct.node, %struct.node* %154, i32 0, i32 4
  %156 = load %struct.node*, %struct.node** %155, align 8
  %157 = bitcast %struct.node* %156 to i8*
  %158 = bitcast i8* %157 to %struct.node*
  store %struct.node* %158, %struct.node** %tr, align 8
  %159 = load %struct.node*, %struct.node** %tr, align 8
  %160 = icmp ne %struct.node* %159, null
  br i1 %160, label %161, label %163

; <label>:161                                     ; preds = %153
  %162 = load %struct.node*, %struct.node** %tr, align 8
  store %struct.node* %162, %struct.node** %t, align 8
  br label %206

; <label>:163                                     ; preds = %153
  %164 = load %struct.node*, %struct.node** %5, align 8
  %165 = getelementptr inbounds %struct.node, %struct.node* %164, i32 0, i32 3
  store %struct.node* null, %struct.node** %165, align 8
  %166 = load %struct.node*, %struct.node** %5, align 8
  %167 = getelementptr inbounds %struct.node, %struct.node* %166, i32 0, i32 3
  %168 = load %struct.node*, %struct.node** %167, align 8
  store %struct.node* %168, %struct.node** %19, align 8
  %169 = load %struct.node*, %struct.node** %19, align 8
  %170 = load %struct.node*, %struct.node** %5, align 8
  %171 = getelementptr inbounds %struct.node, %struct.node* %170, i32 0, i32 4
  store %struct.node* null, %struct.node** %171, align 8
  %172 = load %struct.node*, %struct.node** %5, align 8
  %173 = getelementptr inbounds %struct.node, %struct.node* %172, i32 0, i32 4
  %174 = load %struct.node*, %struct.node** %173, align 8
  store %struct.node* %174, %struct.node** %20, align 8
  %175 = load %struct.node*, %struct.node** %20, align 8
  %176 = load i8*, i8** %3, align 8
  %177 = load %struct.node*, %struct.node** %5, align 8
  %178 = getelementptr inbounds %struct.node, %struct.node* %177, i32 0, i32 0
  store i8* %176, i8** %178, align 8
  %179 = load %struct.node*, %struct.node** %5, align 8
  %180 = getelementptr inbounds %struct.node, %struct.node* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  store i8* %181, i8** %21, align 8
  %182 = load i8*, i8** %21, align 8
  %183 = load i8*, i8** %4, align 8
  %184 = load %struct.node*, %struct.node** %5, align 8
  %185 = getelementptr inbounds %struct.node, %struct.node* %184, i32 0, i32 1
  store i8* %183, i8** %185, align 8
  %186 = load %struct.node*, %struct.node** %5, align 8
  %187 = getelementptr inbounds %struct.node, %struct.node* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  store i8* %188, i8** %22, align 8
  %189 = load i8*, i8** %22, align 8
  %190 = load %struct.node*, %struct.node** %t, align 8
  %191 = load %struct.node*, %struct.node** %5, align 8
  %192 = getelementptr inbounds %struct.node, %struct.node* %191, i32 0, i32 2
  store %struct.node* %190, %struct.node** %192, align 8
  %193 = load %struct.node*, %struct.node** %5, align 8
  %194 = getelementptr inbounds %struct.node, %struct.node* %193, i32 0, i32 2
  %195 = load %struct.node*, %struct.node** %194, align 8
  store %struct.node* %195, %struct.node** %23, align 8
  %196 = load %struct.node*, %struct.node** %23, align 8
  %197 = load %struct.node*, %struct.node** %5, align 8
  %198 = load %struct.node*, %struct.node** %t, align 8
  %199 = getelementptr inbounds %struct.node, %struct.node* %198, i32 0, i32 4
  store %struct.node* %197, %struct.node** %199, align 8
  %200 = load %struct.node*, %struct.node** %t, align 8
  %201 = getelementptr inbounds %struct.node, %struct.node* %200, i32 0, i32 4
  %202 = load %struct.node*, %struct.node** %201, align 8
  store %struct.node* %202, %struct.node** %24, align 8
  %203 = load %struct.node*, %struct.node** %24, align 8
  %204 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %205 = load %struct.node*, %struct.node** %5, align 8
  call void @TMfixAfterInsertion(%struct.rbtree* %204, %struct.node* %205)
  store %struct.node* null, %struct.node** %1, align 8
  br label %209

; <label>:206                                     ; preds = %161
  br label %207

; <label>:207                                     ; preds = %206, %152
  br label %208

; <label>:208                                     ; preds = %207
  br label %83

; <label>:209                                     ; preds = %163, %109, %94, %36, %35
  %210 = load %struct.node*, %struct.node** %1, align 8
  ret %struct.node* %210
}

; Function Attrs: nounwind uwtable
define internal void @TMreleaseNode(%struct.node* %n) #0 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = bitcast %struct.node* %2 to i8*
  call void @free(i8* %3) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @rbtree_delete(%struct.rbtree* %r, i8* %key) #0 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca i8*, align 8
  %node = alloca %struct.node*, align 8
  store %struct.rbtree* %r, %struct.rbtree** %1, align 8
  store i8* %key, i8** %2, align 8
  store %struct.node* null, %struct.node** %node, align 8
  %3 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call %struct.node* @lookup(%struct.rbtree* %3, i8* %4)
  store %struct.node* %5, %struct.node** %node, align 8
  %6 = load %struct.node*, %struct.node** %node, align 8
  %7 = icmp ne %struct.node* %6, null
  br i1 %7, label %8, label %12

; <label>:8                                       ; preds = %0
  %9 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %10 = load %struct.node*, %struct.node** %node, align 8
  %11 = call %struct.node* @delete_node(%struct.rbtree* %9, %struct.node* %10)
  store %struct.node* %11, %struct.node** %node, align 8
  br label %12

; <label>:12                                      ; preds = %8, %0
  %13 = load %struct.node*, %struct.node** %node, align 8
  %14 = icmp ne %struct.node* %13, null
  br i1 %14, label %15, label %17

; <label>:15                                      ; preds = %12
  %16 = load %struct.node*, %struct.node** %node, align 8
  call void @releaseNode(%struct.node* %16)
  br label %17

; <label>:17                                      ; preds = %15, %12
  %18 = load %struct.node*, %struct.node** %node, align 8
  %19 = icmp ne %struct.node* %18, null
  %20 = select i1 %19, i32 1, i32 0
  %21 = sext i32 %20 to i64
  ret i64 %21
}

; Function Attrs: nounwind uwtable
define internal %struct.node* @lookup(%struct.rbtree* %s, i8* %k) #0 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca %struct.rbtree*, align 8
  %3 = alloca i8*, align 8
  %p = alloca %struct.node*, align 8
  %cmp = alloca i64, align 8
  store %struct.rbtree* %s, %struct.rbtree** %2, align 8
  store i8* %k, i8** %3, align 8
  %4 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %5 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %4, i32 0, i32 0
  %6 = load %struct.node*, %struct.node** %5, align 8
  store %struct.node* %6, %struct.node** %p, align 8
  br label %7

; <label>:7                                       ; preds = %34, %0
  %8 = load %struct.node*, %struct.node** %p, align 8
  %9 = icmp ne %struct.node* %8, null
  br i1 %9, label %10, label %36

; <label>:10                                      ; preds = %7
  %11 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %12 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %11, i32 0, i32 1
  %13 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %12, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load %struct.node*, %struct.node** %p, align 8
  %16 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 %13(i8* %14, i8* %17)
  store i64 %18, i64* %cmp, align 8
  %19 = load i64, i64* %cmp, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

; <label>:21                                      ; preds = %10
  %22 = load %struct.node*, %struct.node** %p, align 8
  store %struct.node* %22, %struct.node** %1, align 8
  br label %37

; <label>:23                                      ; preds = %10
  %24 = load i64, i64* %cmp, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %30

; <label>:26                                      ; preds = %23
  %27 = load %struct.node*, %struct.node** %p, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 3
  %29 = load %struct.node*, %struct.node** %28, align 8
  br label %34

; <label>:30                                      ; preds = %23
  %31 = load %struct.node*, %struct.node** %p, align 8
  %32 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 4
  %33 = load %struct.node*, %struct.node** %32, align 8
  br label %34

; <label>:34                                      ; preds = %30, %26
  %35 = phi %struct.node* [ %29, %26 ], [ %33, %30 ]
  store %struct.node* %35, %struct.node** %p, align 8
  br label %7

; <label>:36                                      ; preds = %7
  store %struct.node* null, %struct.node** %1, align 8
  br label %37

; <label>:37                                      ; preds = %36, %21
  %38 = load %struct.node*, %struct.node** %1, align 8
  ret %struct.node* %38
}

; Function Attrs: nounwind uwtable
define internal %struct.node* @delete_node(%struct.rbtree* %s, %struct.node* %p) #0 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca %struct.node*, align 8
  %s1 = alloca %struct.node*, align 8
  %replacement = alloca %struct.node*, align 8
  %pp = alloca %struct.node*, align 8
  %pp2 = alloca %struct.node*, align 8
  store %struct.rbtree* %s, %struct.rbtree** %1, align 8
  store %struct.node* %p, %struct.node** %2, align 8
  %3 = load %struct.node*, %struct.node** %2, align 8
  %4 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 3
  %5 = load %struct.node*, %struct.node** %4, align 8
  %6 = icmp ne %struct.node* %5, null
  br i1 %6, label %7, label %30

; <label>:7                                       ; preds = %0
  %8 = load %struct.node*, %struct.node** %2, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 4
  %10 = load %struct.node*, %struct.node** %9, align 8
  %11 = icmp ne %struct.node* %10, null
  br i1 %11, label %12, label %30

; <label>:12                                      ; preds = %7
  %13 = load %struct.node*, %struct.node** %2, align 8
  %14 = call %struct.node* @successor(%struct.node* %13)
  store %struct.node* %14, %struct.node** %s1, align 8
  %15 = load %struct.node*, %struct.node** %s1, align 8
  %16 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to %struct.node*
  %19 = bitcast %struct.node* %18 to i8*
  %20 = load %struct.node*, %struct.node** %2, align 8
  %21 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load %struct.node*, %struct.node** %s1, align 8
  %23 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to %struct.node*
  %26 = bitcast %struct.node* %25 to i8*
  %27 = load %struct.node*, %struct.node** %2, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.node*, %struct.node** %s1, align 8
  store %struct.node* %29, %struct.node** %2, align 8
  br label %30

; <label>:30                                      ; preds = %12, %7, %0
  %31 = load %struct.node*, %struct.node** %2, align 8
  %32 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 3
  %33 = load %struct.node*, %struct.node** %32, align 8
  %34 = icmp ne %struct.node* %33, null
  br i1 %34, label %35, label %39

; <label>:35                                      ; preds = %30
  %36 = load %struct.node*, %struct.node** %2, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 3
  %38 = load %struct.node*, %struct.node** %37, align 8
  br label %43

; <label>:39                                      ; preds = %30
  %40 = load %struct.node*, %struct.node** %2, align 8
  %41 = getelementptr inbounds %struct.node, %struct.node* %40, i32 0, i32 4
  %42 = load %struct.node*, %struct.node** %41, align 8
  br label %43

; <label>:43                                      ; preds = %39, %35
  %44 = phi %struct.node* [ %38, %35 ], [ %42, %39 ]
  store %struct.node* %44, %struct.node** %replacement, align 8
  %45 = load %struct.node*, %struct.node** %replacement, align 8
  %46 = icmp ne %struct.node* %45, null
  br i1 %46, label %47, label %92

; <label>:47                                      ; preds = %43
  %48 = load %struct.node*, %struct.node** %2, align 8
  %49 = getelementptr inbounds %struct.node, %struct.node* %48, i32 0, i32 2
  %50 = load %struct.node*, %struct.node** %49, align 8
  %51 = load %struct.node*, %struct.node** %replacement, align 8
  %52 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 2
  store %struct.node* %50, %struct.node** %52, align 8
  %53 = load %struct.node*, %struct.node** %2, align 8
  %54 = getelementptr inbounds %struct.node, %struct.node* %53, i32 0, i32 2
  %55 = load %struct.node*, %struct.node** %54, align 8
  store %struct.node* %55, %struct.node** %pp, align 8
  %56 = load %struct.node*, %struct.node** %pp, align 8
  %57 = icmp eq %struct.node* %56, null
  br i1 %57, label %58, label %62

; <label>:58                                      ; preds = %47
  %59 = load %struct.node*, %struct.node** %replacement, align 8
  %60 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %61 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %60, i32 0, i32 0
  store %struct.node* %59, %struct.node** %61, align 8
  br label %77

; <label>:62                                      ; preds = %47
  %63 = load %struct.node*, %struct.node** %2, align 8
  %64 = load %struct.node*, %struct.node** %pp, align 8
  %65 = getelementptr inbounds %struct.node, %struct.node* %64, i32 0, i32 3
  %66 = load %struct.node*, %struct.node** %65, align 8
  %67 = icmp eq %struct.node* %63, %66
  br i1 %67, label %68, label %72

; <label>:68                                      ; preds = %62
  %69 = load %struct.node*, %struct.node** %replacement, align 8
  %70 = load %struct.node*, %struct.node** %pp, align 8
  %71 = getelementptr inbounds %struct.node, %struct.node* %70, i32 0, i32 3
  store %struct.node* %69, %struct.node** %71, align 8
  br label %76

; <label>:72                                      ; preds = %62
  %73 = load %struct.node*, %struct.node** %replacement, align 8
  %74 = load %struct.node*, %struct.node** %pp, align 8
  %75 = getelementptr inbounds %struct.node, %struct.node* %74, i32 0, i32 4
  store %struct.node* %73, %struct.node** %75, align 8
  br label %76

; <label>:76                                      ; preds = %72, %68
  br label %77

; <label>:77                                      ; preds = %76, %58
  %78 = load %struct.node*, %struct.node** %2, align 8
  %79 = getelementptr inbounds %struct.node, %struct.node* %78, i32 0, i32 3
  store %struct.node* null, %struct.node** %79, align 8
  %80 = load %struct.node*, %struct.node** %2, align 8
  %81 = getelementptr inbounds %struct.node, %struct.node* %80, i32 0, i32 4
  store %struct.node* null, %struct.node** %81, align 8
  %82 = load %struct.node*, %struct.node** %2, align 8
  %83 = getelementptr inbounds %struct.node, %struct.node* %82, i32 0, i32 2
  store %struct.node* null, %struct.node** %83, align 8
  %84 = load %struct.node*, %struct.node** %2, align 8
  %85 = getelementptr inbounds %struct.node, %struct.node* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 1
  br i1 %87, label %88, label %91

; <label>:88                                      ; preds = %77
  %89 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %90 = load %struct.node*, %struct.node** %replacement, align 8
  call void @fixAfterDeletion(%struct.rbtree* %89, %struct.node* %90)
  br label %91

; <label>:91                                      ; preds = %88, %77
  br label %138

; <label>:92                                      ; preds = %43
  %93 = load %struct.node*, %struct.node** %2, align 8
  %94 = getelementptr inbounds %struct.node, %struct.node* %93, i32 0, i32 2
  %95 = load %struct.node*, %struct.node** %94, align 8
  %96 = icmp eq %struct.node* %95, null
  br i1 %96, label %97, label %100

; <label>:97                                      ; preds = %92
  %98 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %99 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %98, i32 0, i32 0
  store %struct.node* null, %struct.node** %99, align 8
  br label %137

; <label>:100                                     ; preds = %92
  %101 = load %struct.node*, %struct.node** %2, align 8
  %102 = getelementptr inbounds %struct.node, %struct.node* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 1
  br i1 %104, label %105, label %108

; <label>:105                                     ; preds = %100
  %106 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %107 = load %struct.node*, %struct.node** %2, align 8
  call void @fixAfterDeletion(%struct.rbtree* %106, %struct.node* %107)
  br label %108

; <label>:108                                     ; preds = %105, %100
  %109 = load %struct.node*, %struct.node** %2, align 8
  %110 = getelementptr inbounds %struct.node, %struct.node* %109, i32 0, i32 2
  %111 = load %struct.node*, %struct.node** %110, align 8
  store %struct.node* %111, %struct.node** %pp2, align 8
  %112 = load %struct.node*, %struct.node** %pp2, align 8
  %113 = icmp ne %struct.node* %112, null
  br i1 %113, label %114, label %136

; <label>:114                                     ; preds = %108
  %115 = load %struct.node*, %struct.node** %2, align 8
  %116 = load %struct.node*, %struct.node** %pp2, align 8
  %117 = getelementptr inbounds %struct.node, %struct.node* %116, i32 0, i32 3
  %118 = load %struct.node*, %struct.node** %117, align 8
  %119 = icmp eq %struct.node* %115, %118
  br i1 %119, label %120, label %123

; <label>:120                                     ; preds = %114
  %121 = load %struct.node*, %struct.node** %pp2, align 8
  %122 = getelementptr inbounds %struct.node, %struct.node* %121, i32 0, i32 3
  store %struct.node* null, %struct.node** %122, align 8
  br label %133

; <label>:123                                     ; preds = %114
  %124 = load %struct.node*, %struct.node** %2, align 8
  %125 = load %struct.node*, %struct.node** %pp2, align 8
  %126 = getelementptr inbounds %struct.node, %struct.node* %125, i32 0, i32 4
  %127 = load %struct.node*, %struct.node** %126, align 8
  %128 = icmp eq %struct.node* %124, %127
  br i1 %128, label %129, label %132

; <label>:129                                     ; preds = %123
  %130 = load %struct.node*, %struct.node** %pp2, align 8
  %131 = getelementptr inbounds %struct.node, %struct.node* %130, i32 0, i32 4
  store %struct.node* null, %struct.node** %131, align 8
  br label %132

; <label>:132                                     ; preds = %129, %123
  br label %133

; <label>:133                                     ; preds = %132, %120
  %134 = load %struct.node*, %struct.node** %2, align 8
  %135 = getelementptr inbounds %struct.node, %struct.node* %134, i32 0, i32 2
  store %struct.node* null, %struct.node** %135, align 8
  br label %136

; <label>:136                                     ; preds = %133, %108
  br label %137

; <label>:137                                     ; preds = %136, %97
  br label %138

; <label>:138                                     ; preds = %137, %91
  %139 = load %struct.node*, %struct.node** %2, align 8
  ret %struct.node* %139
}

; Function Attrs: nounwind uwtable
define i64 @TMrbtree_delete(%struct.rbtree* %r, i8* %key) #0 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca i8*, align 8
  %node = alloca %struct.node*, align 8
  store %struct.rbtree* %r, %struct.rbtree** %1, align 8
  store i8* %key, i8** %2, align 8
  store %struct.node* null, %struct.node** %node, align 8
  %3 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call %struct.node* @TMlookup(%struct.rbtree* %3, i8* %4)
  store %struct.node* %5, %struct.node** %node, align 8
  %6 = load %struct.node*, %struct.node** %node, align 8
  %7 = icmp ne %struct.node* %6, null
  br i1 %7, label %8, label %12

; <label>:8                                       ; preds = %0
  %9 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %10 = load %struct.node*, %struct.node** %node, align 8
  %11 = call %struct.node* @TMdelete(%struct.rbtree* %9, %struct.node* %10)
  store %struct.node* %11, %struct.node** %node, align 8
  br label %12

; <label>:12                                      ; preds = %8, %0
  %13 = load %struct.node*, %struct.node** %node, align 8
  %14 = icmp ne %struct.node* %13, null
  br i1 %14, label %15, label %17

; <label>:15                                      ; preds = %12
  %16 = load %struct.node*, %struct.node** %node, align 8
  call void @TMreleaseNode(%struct.node* %16)
  br label %17

; <label>:17                                      ; preds = %15, %12
  %18 = load %struct.node*, %struct.node** %node, align 8
  %19 = icmp ne %struct.node* %18, null
  %20 = select i1 %19, i32 1, i32 0
  %21 = sext i32 %20 to i64
  ret i64 %21
}

; Function Attrs: nounwind uwtable
define internal %struct.node* @TMlookup(%struct.rbtree* %s, i8* %k) #0 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca %struct.rbtree*, align 8
  %3 = alloca i8*, align 8
  %p = alloca %struct.node*, align 8
  %cmp = alloca i64, align 8
  store %struct.rbtree* %s, %struct.rbtree** %2, align 8
  store i8* %k, i8** %3, align 8
  %4 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %5 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %4, i32 0, i32 0
  %6 = load %struct.node*, %struct.node** %5, align 8
  %7 = bitcast %struct.node* %6 to i8*
  %8 = bitcast i8* %7 to %struct.node*
  store %struct.node* %8, %struct.node** %p, align 8
  br label %9

; <label>:9                                       ; preds = %40, %0
  %10 = load %struct.node*, %struct.node** %p, align 8
  %11 = icmp ne %struct.node* %10, null
  br i1 %11, label %12, label %42

; <label>:12                                      ; preds = %9
  %13 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %14 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %13, i32 0, i32 1
  %15 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %14, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load %struct.node*, %struct.node** %p, align 8
  %18 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 %15(i8* %16, i8* %19)
  store i64 %20, i64* %cmp, align 8
  %21 = load i64, i64* %cmp, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

; <label>:23                                      ; preds = %12
  %24 = load %struct.node*, %struct.node** %p, align 8
  store %struct.node* %24, %struct.node** %1, align 8
  br label %43

; <label>:25                                      ; preds = %12
  %26 = load i64, i64* %cmp, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %34

; <label>:28                                      ; preds = %25
  %29 = load %struct.node*, %struct.node** %p, align 8
  %30 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 3
  %31 = load %struct.node*, %struct.node** %30, align 8
  %32 = bitcast %struct.node* %31 to i8*
  %33 = bitcast i8* %32 to %struct.node*
  br label %40

; <label>:34                                      ; preds = %25
  %35 = load %struct.node*, %struct.node** %p, align 8
  %36 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 4
  %37 = load %struct.node*, %struct.node** %36, align 8
  %38 = bitcast %struct.node* %37 to i8*
  %39 = bitcast i8* %38 to %struct.node*
  br label %40

; <label>:40                                      ; preds = %34, %28
  %41 = phi %struct.node* [ %33, %28 ], [ %39, %34 ]
  store %struct.node* %41, %struct.node** %p, align 8
  br label %9

; <label>:42                                      ; preds = %9
  store %struct.node* null, %struct.node** %1, align 8
  br label %43

; <label>:43                                      ; preds = %42, %23
  %44 = load %struct.node*, %struct.node** %1, align 8
  ret %struct.node* %44
}

; Function Attrs: nounwind uwtable
define internal %struct.node* @TMdelete(%struct.rbtree* %s, %struct.node* %p) #0 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca %struct.node*, align 8
  %s1 = alloca %struct.node*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %replacement = alloca %struct.node*, align 8
  %5 = alloca %struct.node*, align 8
  %pp = alloca %struct.node*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca %struct.node*, align 8
  %10 = alloca %struct.node*, align 8
  %11 = alloca %struct.node*, align 8
  %12 = alloca %struct.node*, align 8
  %pp2 = alloca %struct.node*, align 8
  %13 = alloca %struct.node*, align 8
  %14 = alloca %struct.node*, align 8
  %15 = alloca %struct.node*, align 8
  store %struct.rbtree* %s, %struct.rbtree** %1, align 8
  store %struct.node* %p, %struct.node** %2, align 8
  %16 = load %struct.node*, %struct.node** %2, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 3
  %18 = load %struct.node*, %struct.node** %17, align 8
  %19 = bitcast %struct.node* %18 to i8*
  %20 = bitcast i8* %19 to %struct.node*
  %21 = icmp ne %struct.node* %20, null
  br i1 %21, label %22, label %51

; <label>:22                                      ; preds = %0
  %23 = load %struct.node*, %struct.node** %2, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 4
  %25 = load %struct.node*, %struct.node** %24, align 8
  %26 = bitcast %struct.node* %25 to i8*
  %27 = bitcast i8* %26 to %struct.node*
  %28 = icmp ne %struct.node* %27, null
  br i1 %28, label %29, label %51

; <label>:29                                      ; preds = %22
  %30 = load %struct.node*, %struct.node** %2, align 8
  %31 = call %struct.node* @TMsuccessor(%struct.node* %30)
  store %struct.node* %31, %struct.node** %s1, align 8
  %32 = load %struct.node*, %struct.node** %s1, align 8
  %33 = getelementptr inbounds %struct.node, %struct.node* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.node*, %struct.node** %2, align 8
  %36 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.node*, %struct.node** %2, align 8
  %38 = getelementptr inbounds %struct.node, %struct.node* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %3, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = load %struct.node*, %struct.node** %s1, align 8
  %42 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.node*, %struct.node** %2, align 8
  %45 = getelementptr inbounds %struct.node, %struct.node* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.node*, %struct.node** %2, align 8
  %47 = getelementptr inbounds %struct.node, %struct.node* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %4, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = load %struct.node*, %struct.node** %s1, align 8
  store %struct.node* %50, %struct.node** %2, align 8
  br label %51

; <label>:51                                      ; preds = %29, %22, %0
  %52 = load %struct.node*, %struct.node** %2, align 8
  %53 = getelementptr inbounds %struct.node, %struct.node* %52, i32 0, i32 3
  %54 = load %struct.node*, %struct.node** %53, align 8
  %55 = bitcast %struct.node* %54 to i8*
  %56 = bitcast i8* %55 to %struct.node*
  %57 = icmp ne %struct.node* %56, null
  br i1 %57, label %58, label %64

; <label>:58                                      ; preds = %51
  %59 = load %struct.node*, %struct.node** %2, align 8
  %60 = getelementptr inbounds %struct.node, %struct.node* %59, i32 0, i32 3
  %61 = load %struct.node*, %struct.node** %60, align 8
  %62 = bitcast %struct.node* %61 to i8*
  %63 = bitcast i8* %62 to %struct.node*
  br label %70

; <label>:64                                      ; preds = %51
  %65 = load %struct.node*, %struct.node** %2, align 8
  %66 = getelementptr inbounds %struct.node, %struct.node* %65, i32 0, i32 4
  %67 = load %struct.node*, %struct.node** %66, align 8
  %68 = bitcast %struct.node* %67 to i8*
  %69 = bitcast i8* %68 to %struct.node*
  br label %70

; <label>:70                                      ; preds = %64, %58
  %71 = phi %struct.node* [ %63, %58 ], [ %69, %64 ]
  store %struct.node* %71, %struct.node** %replacement, align 8
  %72 = load %struct.node*, %struct.node** %replacement, align 8
  %73 = icmp ne %struct.node* %72, null
  br i1 %73, label %74, label %153

; <label>:74                                      ; preds = %70
  %75 = load %struct.node*, %struct.node** %2, align 8
  %76 = getelementptr inbounds %struct.node, %struct.node* %75, i32 0, i32 2
  %77 = load %struct.node*, %struct.node** %76, align 8
  %78 = bitcast %struct.node* %77 to i8*
  %79 = bitcast i8* %78 to %struct.node*
  %80 = load %struct.node*, %struct.node** %replacement, align 8
  %81 = getelementptr inbounds %struct.node, %struct.node* %80, i32 0, i32 2
  store %struct.node* %79, %struct.node** %81, align 8
  %82 = load %struct.node*, %struct.node** %replacement, align 8
  %83 = getelementptr inbounds %struct.node, %struct.node* %82, i32 0, i32 2
  %84 = load %struct.node*, %struct.node** %83, align 8
  store %struct.node* %84, %struct.node** %5, align 8
  %85 = load %struct.node*, %struct.node** %5, align 8
  %86 = load %struct.node*, %struct.node** %2, align 8
  %87 = getelementptr inbounds %struct.node, %struct.node* %86, i32 0, i32 2
  %88 = load %struct.node*, %struct.node** %87, align 8
  %89 = bitcast %struct.node* %88 to i8*
  %90 = bitcast i8* %89 to %struct.node*
  store %struct.node* %90, %struct.node** %pp, align 8
  %91 = load %struct.node*, %struct.node** %pp, align 8
  %92 = icmp eq %struct.node* %91, null
  br i1 %92, label %93, label %101

; <label>:93                                      ; preds = %74
  %94 = load %struct.node*, %struct.node** %replacement, align 8
  %95 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %96 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %95, i32 0, i32 0
  store %struct.node* %94, %struct.node** %96, align 8
  %97 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %98 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %97, i32 0, i32 0
  %99 = load %struct.node*, %struct.node** %98, align 8
  store %struct.node* %99, %struct.node** %6, align 8
  %100 = load %struct.node*, %struct.node** %6, align 8
  br label %126

; <label>:101                                     ; preds = %74
  %102 = load %struct.node*, %struct.node** %2, align 8
  %103 = load %struct.node*, %struct.node** %pp, align 8
  %104 = getelementptr inbounds %struct.node, %struct.node* %103, i32 0, i32 3
  %105 = load %struct.node*, %struct.node** %104, align 8
  %106 = bitcast %struct.node* %105 to i8*
  %107 = bitcast i8* %106 to %struct.node*
  %108 = icmp eq %struct.node* %102, %107
  br i1 %108, label %109, label %117

; <label>:109                                     ; preds = %101
  %110 = load %struct.node*, %struct.node** %replacement, align 8
  %111 = load %struct.node*, %struct.node** %pp, align 8
  %112 = getelementptr inbounds %struct.node, %struct.node* %111, i32 0, i32 3
  store %struct.node* %110, %struct.node** %112, align 8
  %113 = load %struct.node*, %struct.node** %pp, align 8
  %114 = getelementptr inbounds %struct.node, %struct.node* %113, i32 0, i32 3
  %115 = load %struct.node*, %struct.node** %114, align 8
  store %struct.node* %115, %struct.node** %7, align 8
  %116 = load %struct.node*, %struct.node** %7, align 8
  br label %125

; <label>:117                                     ; preds = %101
  %118 = load %struct.node*, %struct.node** %replacement, align 8
  %119 = load %struct.node*, %struct.node** %pp, align 8
  %120 = getelementptr inbounds %struct.node, %struct.node* %119, i32 0, i32 4
  store %struct.node* %118, %struct.node** %120, align 8
  %121 = load %struct.node*, %struct.node** %pp, align 8
  %122 = getelementptr inbounds %struct.node, %struct.node* %121, i32 0, i32 4
  %123 = load %struct.node*, %struct.node** %122, align 8
  store %struct.node* %123, %struct.node** %8, align 8
  %124 = load %struct.node*, %struct.node** %8, align 8
  br label %125

; <label>:125                                     ; preds = %117, %109
  br label %126

; <label>:126                                     ; preds = %125, %93
  %127 = load %struct.node*, %struct.node** %2, align 8
  %128 = getelementptr inbounds %struct.node, %struct.node* %127, i32 0, i32 3
  store %struct.node* null, %struct.node** %128, align 8
  %129 = load %struct.node*, %struct.node** %2, align 8
  %130 = getelementptr inbounds %struct.node, %struct.node* %129, i32 0, i32 3
  %131 = load %struct.node*, %struct.node** %130, align 8
  store %struct.node* %131, %struct.node** %9, align 8
  %132 = load %struct.node*, %struct.node** %9, align 8
  %133 = load %struct.node*, %struct.node** %2, align 8
  %134 = getelementptr inbounds %struct.node, %struct.node* %133, i32 0, i32 4
  store %struct.node* null, %struct.node** %134, align 8
  %135 = load %struct.node*, %struct.node** %2, align 8
  %136 = getelementptr inbounds %struct.node, %struct.node* %135, i32 0, i32 4
  %137 = load %struct.node*, %struct.node** %136, align 8
  store %struct.node* %137, %struct.node** %10, align 8
  %138 = load %struct.node*, %struct.node** %10, align 8
  %139 = load %struct.node*, %struct.node** %2, align 8
  %140 = getelementptr inbounds %struct.node, %struct.node* %139, i32 0, i32 2
  store %struct.node* null, %struct.node** %140, align 8
  %141 = load %struct.node*, %struct.node** %2, align 8
  %142 = getelementptr inbounds %struct.node, %struct.node* %141, i32 0, i32 2
  %143 = load %struct.node*, %struct.node** %142, align 8
  store %struct.node* %143, %struct.node** %11, align 8
  %144 = load %struct.node*, %struct.node** %11, align 8
  %145 = load %struct.node*, %struct.node** %2, align 8
  %146 = getelementptr inbounds %struct.node, %struct.node* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 1
  br i1 %148, label %149, label %152

; <label>:149                                     ; preds = %126
  %150 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %151 = load %struct.node*, %struct.node** %replacement, align 8
  call void @TMfixAfterDeletion(%struct.rbtree* %150, %struct.node* %151)
  br label %152

; <label>:152                                     ; preds = %149, %126
  br label %223

; <label>:153                                     ; preds = %70
  %154 = load %struct.node*, %struct.node** %2, align 8
  %155 = getelementptr inbounds %struct.node, %struct.node* %154, i32 0, i32 2
  %156 = load %struct.node*, %struct.node** %155, align 8
  %157 = bitcast %struct.node* %156 to i8*
  %158 = bitcast i8* %157 to %struct.node*
  %159 = icmp eq %struct.node* %158, null
  br i1 %159, label %160, label %167

; <label>:160                                     ; preds = %153
  %161 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %162 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %161, i32 0, i32 0
  store %struct.node* null, %struct.node** %162, align 8
  %163 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %164 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %163, i32 0, i32 0
  %165 = load %struct.node*, %struct.node** %164, align 8
  store %struct.node* %165, %struct.node** %12, align 8
  %166 = load %struct.node*, %struct.node** %12, align 8
  br label %222

; <label>:167                                     ; preds = %153
  %168 = load %struct.node*, %struct.node** %2, align 8
  %169 = getelementptr inbounds %struct.node, %struct.node* %168, i32 0, i32 5
  %170 = load i64, i64* %169, align 8
  %171 = icmp eq i64 %170, 1
  br i1 %171, label %172, label %175

; <label>:172                                     ; preds = %167
  %173 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %174 = load %struct.node*, %struct.node** %2, align 8
  call void @TMfixAfterDeletion(%struct.rbtree* %173, %struct.node* %174)
  br label %175

; <label>:175                                     ; preds = %172, %167
  %176 = load %struct.node*, %struct.node** %2, align 8
  %177 = getelementptr inbounds %struct.node, %struct.node* %176, i32 0, i32 2
  %178 = load %struct.node*, %struct.node** %177, align 8
  %179 = bitcast %struct.node* %178 to i8*
  %180 = bitcast i8* %179 to %struct.node*
  store %struct.node* %180, %struct.node** %pp2, align 8
  %181 = load %struct.node*, %struct.node** %pp2, align 8
  %182 = icmp ne %struct.node* %181, null
  br i1 %182, label %183, label %221

; <label>:183                                     ; preds = %175
  %184 = load %struct.node*, %struct.node** %2, align 8
  %185 = load %struct.node*, %struct.node** %pp2, align 8
  %186 = getelementptr inbounds %struct.node, %struct.node* %185, i32 0, i32 3
  %187 = load %struct.node*, %struct.node** %186, align 8
  %188 = bitcast %struct.node* %187 to i8*
  %189 = bitcast i8* %188 to %struct.node*
  %190 = icmp eq %struct.node* %184, %189
  br i1 %190, label %191, label %198

; <label>:191                                     ; preds = %183
  %192 = load %struct.node*, %struct.node** %pp2, align 8
  %193 = getelementptr inbounds %struct.node, %struct.node* %192, i32 0, i32 3
  store %struct.node* null, %struct.node** %193, align 8
  %194 = load %struct.node*, %struct.node** %pp2, align 8
  %195 = getelementptr inbounds %struct.node, %struct.node* %194, i32 0, i32 3
  %196 = load %struct.node*, %struct.node** %195, align 8
  store %struct.node* %196, %struct.node** %13, align 8
  %197 = load %struct.node*, %struct.node** %13, align 8
  br label %214

; <label>:198                                     ; preds = %183
  %199 = load %struct.node*, %struct.node** %2, align 8
  %200 = load %struct.node*, %struct.node** %pp2, align 8
  %201 = getelementptr inbounds %struct.node, %struct.node* %200, i32 0, i32 4
  %202 = load %struct.node*, %struct.node** %201, align 8
  %203 = bitcast %struct.node* %202 to i8*
  %204 = bitcast i8* %203 to %struct.node*
  %205 = icmp eq %struct.node* %199, %204
  br i1 %205, label %206, label %213

; <label>:206                                     ; preds = %198
  %207 = load %struct.node*, %struct.node** %pp2, align 8
  %208 = getelementptr inbounds %struct.node, %struct.node* %207, i32 0, i32 4
  store %struct.node* null, %struct.node** %208, align 8
  %209 = load %struct.node*, %struct.node** %pp2, align 8
  %210 = getelementptr inbounds %struct.node, %struct.node* %209, i32 0, i32 4
  %211 = load %struct.node*, %struct.node** %210, align 8
  store %struct.node* %211, %struct.node** %14, align 8
  %212 = load %struct.node*, %struct.node** %14, align 8
  br label %213

; <label>:213                                     ; preds = %206, %198
  br label %214

; <label>:214                                     ; preds = %213, %191
  %215 = load %struct.node*, %struct.node** %2, align 8
  %216 = getelementptr inbounds %struct.node, %struct.node* %215, i32 0, i32 2
  store %struct.node* null, %struct.node** %216, align 8
  %217 = load %struct.node*, %struct.node** %2, align 8
  %218 = getelementptr inbounds %struct.node, %struct.node* %217, i32 0, i32 2
  %219 = load %struct.node*, %struct.node** %218, align 8
  store %struct.node* %219, %struct.node** %15, align 8
  %220 = load %struct.node*, %struct.node** %15, align 8
  br label %221

; <label>:221                                     ; preds = %214, %175
  br label %222

; <label>:222                                     ; preds = %221, %160
  br label %223

; <label>:223                                     ; preds = %222, %152
  %224 = load %struct.node*, %struct.node** %2, align 8
  ret %struct.node* %224
}

; Function Attrs: nounwind uwtable
define i64 @rbtree_update(%struct.rbtree* %r, i8* %key, i8* %val) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.rbtree*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %nn = alloca %struct.node*, align 8
  %ex = alloca %struct.node*, align 8
  store %struct.rbtree* %r, %struct.rbtree** %2, align 8
  store i8* %key, i8** %3, align 8
  store i8* %val, i8** %4, align 8
  %5 = call %struct.node* @getNode()
  store %struct.node* %5, %struct.node** %nn, align 8
  %6 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load %struct.node*, %struct.node** %nn, align 8
  %10 = call %struct.node* @insert(%struct.rbtree* %6, i8* %7, i8* %8, %struct.node* %9)
  store %struct.node* %10, %struct.node** %ex, align 8
  %11 = load %struct.node*, %struct.node** %ex, align 8
  %12 = icmp ne %struct.node* %11, null
  br i1 %12, label %13, label %18

; <label>:13                                      ; preds = %0
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.node*, %struct.node** %ex, align 8
  %16 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load %struct.node*, %struct.node** %nn, align 8
  call void @releaseNode(%struct.node* %17)
  store i64 1, i64* %1, align 8
  br label %19

; <label>:18                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %19

; <label>:19                                      ; preds = %18, %13
  %20 = load i64, i64* %1, align 8
  ret i64 %20
}

; Function Attrs: nounwind uwtable
define i64 @TMrbtree_update(%struct.rbtree* %r, i8* %key, i8* %val) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.rbtree*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %nn = alloca %struct.node*, align 8
  %ex = alloca %struct.node*, align 8
  %5 = alloca i8*, align 8
  store %struct.rbtree* %r, %struct.rbtree** %2, align 8
  store i8* %key, i8** %3, align 8
  store i8* %val, i8** %4, align 8
  %6 = call %struct.node* @TMgetNode()
  store %struct.node* %6, %struct.node** %nn, align 8
  %7 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.node*, %struct.node** %nn, align 8
  %11 = call %struct.node* @TMinsert(%struct.rbtree* %7, i8* %8, i8* %9, %struct.node* %10)
  store %struct.node* %11, %struct.node** %ex, align 8
  %12 = load %struct.node*, %struct.node** %ex, align 8
  %13 = icmp ne %struct.node* %12, null
  br i1 %13, label %14, label %23

; <label>:14                                      ; preds = %0
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.node*, %struct.node** %ex, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load %struct.node*, %struct.node** %ex, align 8
  %19 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.node*, %struct.node** %nn, align 8
  call void @TMreleaseNode(%struct.node* %22)
  store i64 1, i64* %1, align 8
  br label %24

; <label>:23                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %24

; <label>:24                                      ; preds = %23, %14
  %25 = load i64, i64* %1, align 8
  ret i64 %25
}

; Function Attrs: nounwind uwtable
define i8* @rbtree_get(%struct.rbtree* %r, i8* %key) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.rbtree*, align 8
  %3 = alloca i8*, align 8
  %n = alloca %struct.node*, align 8
  %val = alloca i8*, align 8
  store %struct.rbtree* %r, %struct.rbtree** %2, align 8
  store i8* %key, i8** %3, align 8
  %4 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.node* @lookup(%struct.rbtree* %4, i8* %5)
  store %struct.node* %6, %struct.node** %n, align 8
  %7 = load %struct.node*, %struct.node** %n, align 8
  %8 = icmp ne %struct.node* %7, null
  br i1 %8, label %9, label %14

; <label>:9                                       ; preds = %0
  %10 = load %struct.node*, %struct.node** %n, align 8
  %11 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %val, align 8
  %13 = load i8*, i8** %val, align 8
  store i8* %13, i8** %1, align 8
  br label %15

; <label>:14                                      ; preds = %0
  store i8* null, i8** %1, align 8
  br label %15

; <label>:15                                      ; preds = %14, %9
  %16 = load i8*, i8** %1, align 8
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define i8* @TMrbtree_get(%struct.rbtree* %r, i8* %key) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.rbtree*, align 8
  %3 = alloca i8*, align 8
  %n = alloca %struct.node*, align 8
  %val = alloca i8*, align 8
  store %struct.rbtree* %r, %struct.rbtree** %2, align 8
  store i8* %key, i8** %3, align 8
  %4 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.node* @TMlookup(%struct.rbtree* %4, i8* %5)
  store %struct.node* %6, %struct.node** %n, align 8
  %7 = load %struct.node*, %struct.node** %n, align 8
  %8 = icmp ne %struct.node* %7, null
  br i1 %8, label %9, label %14

; <label>:9                                       ; preds = %0
  %10 = load %struct.node*, %struct.node** %n, align 8
  %11 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %val, align 8
  %13 = load i8*, i8** %val, align 8
  store i8* %13, i8** %1, align 8
  br label %15

; <label>:14                                      ; preds = %0
  store i8* null, i8** %1, align 8
  br label %15

; <label>:15                                      ; preds = %14, %9
  %16 = load i8*, i8** %1, align 8
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define i64 @rbtree_contains(%struct.rbtree* %r, i8* %key) #0 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca i8*, align 8
  %n = alloca %struct.node*, align 8
  store %struct.rbtree* %r, %struct.rbtree** %1, align 8
  store i8* %key, i8** %2, align 8
  %3 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call %struct.node* @lookup(%struct.rbtree* %3, i8* %4)
  store %struct.node* %5, %struct.node** %n, align 8
  %6 = load %struct.node*, %struct.node** %n, align 8
  %7 = icmp ne %struct.node* %6, null
  %8 = zext i1 %7 to i32
  %9 = sext i32 %8 to i64
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define i64 @TMrbtree_contains(%struct.rbtree* %r, i8* %key) #0 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca i8*, align 8
  %n = alloca %struct.node*, align 8
  store %struct.rbtree* %r, %struct.rbtree** %1, align 8
  store i8* %key, i8** %2, align 8
  %3 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call %struct.node* @TMlookup(%struct.rbtree* %3, i8* %4)
  store %struct.node* %5, %struct.node** %n, align 8
  %6 = load %struct.node*, %struct.node** %n, align 8
  %7 = icmp ne %struct.node* %6, null
  %8 = zext i1 %7 to i32
  %9 = sext i32 %8 to i64
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define internal %struct.node* @getNode() #0 {
  %n = alloca %struct.node*, align 8
  %1 = call noalias i8* @malloc(i64 48) #4
  %2 = bitcast i8* %1 to %struct.node*
  store %struct.node* %2, %struct.node** %n, align 8
  %3 = load %struct.node*, %struct.node** %n, align 8
  ret %struct.node* %3
}

; Function Attrs: nounwind uwtable
define internal void @fixAfterInsertion(%struct.rbtree* %s, %struct.node* %x) #0 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca %struct.node*, align 8
  %xp = alloca %struct.node*, align 8
  %y = alloca %struct.node*, align 8
  %y1 = alloca %struct.node*, align 8
  %ro = alloca %struct.node*, align 8
  store %struct.rbtree* %s, %struct.rbtree** %1, align 8
  store %struct.node* %x, %struct.node** %2, align 8
  %3 = load %struct.node*, %struct.node** %2, align 8
  %4 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 5
  store i64 0, i64* %4, align 8
  br label %5

; <label>:5                                       ; preds = %125, %0
  %6 = load %struct.node*, %struct.node** %2, align 8
  %7 = icmp ne %struct.node* %6, null
  br i1 %7, label %8, label %14

; <label>:8                                       ; preds = %5
  %9 = load %struct.node*, %struct.node** %2, align 8
  %10 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %11 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %10, i32 0, i32 0
  %12 = load %struct.node*, %struct.node** %11, align 8
  %13 = icmp ne %struct.node* %9, %12
  br label %14

; <label>:14                                      ; preds = %8, %5
  %15 = phi i1 [ false, %5 ], [ %13, %8 ]
  br i1 %15, label %16, label %126

; <label>:16                                      ; preds = %14
  %17 = load %struct.node*, %struct.node** %2, align 8
  %18 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 2
  %19 = load %struct.node*, %struct.node** %18, align 8
  store %struct.node* %19, %struct.node** %xp, align 8
  %20 = load %struct.node*, %struct.node** %xp, align 8
  %21 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %16
  br label %126

; <label>:25                                      ; preds = %16
  %26 = load %struct.node*, %struct.node** %2, align 8
  %27 = call %struct.node* @parentOf(%struct.node* %26)
  %28 = load %struct.node*, %struct.node** %2, align 8
  %29 = call %struct.node* @parentOf(%struct.node* %28)
  %30 = call %struct.node* @parentOf(%struct.node* %29)
  %31 = call %struct.node* @leftOf(%struct.node* %30)
  %32 = icmp eq %struct.node* %27, %31
  br i1 %32, label %33, label %79

; <label>:33                                      ; preds = %25
  %34 = load %struct.node*, %struct.node** %2, align 8
  %35 = call %struct.node* @parentOf(%struct.node* %34)
  %36 = call %struct.node* @parentOf(%struct.node* %35)
  %37 = call %struct.node* @rightOf(%struct.node* %36)
  store %struct.node* %37, %struct.node** %y, align 8
  %38 = load %struct.node*, %struct.node** %y, align 8
  %39 = call i64 @colorOf(%struct.node* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %51

; <label>:41                                      ; preds = %33
  %42 = load %struct.node*, %struct.node** %2, align 8
  %43 = call %struct.node* @parentOf(%struct.node* %42)
  call void @setColor(%struct.node* %43, i64 1)
  %44 = load %struct.node*, %struct.node** %y, align 8
  call void @setColor(%struct.node* %44, i64 1)
  %45 = load %struct.node*, %struct.node** %2, align 8
  %46 = call %struct.node* @parentOf(%struct.node* %45)
  %47 = call %struct.node* @parentOf(%struct.node* %46)
  call void @setColor(%struct.node* %47, i64 0)
  %48 = load %struct.node*, %struct.node** %2, align 8
  %49 = call %struct.node* @parentOf(%struct.node* %48)
  %50 = call %struct.node* @parentOf(%struct.node* %49)
  store %struct.node* %50, %struct.node** %2, align 8
  br label %78

; <label>:51                                      ; preds = %33
  %52 = load %struct.node*, %struct.node** %2, align 8
  %53 = load %struct.node*, %struct.node** %2, align 8
  %54 = call %struct.node* @parentOf(%struct.node* %53)
  %55 = call %struct.node* @rightOf(%struct.node* %54)
  %56 = icmp eq %struct.node* %52, %55
  br i1 %56, label %57, label %62

; <label>:57                                      ; preds = %51
  %58 = load %struct.node*, %struct.node** %2, align 8
  %59 = call %struct.node* @parentOf(%struct.node* %58)
  store %struct.node* %59, %struct.node** %2, align 8
  %60 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %61 = load %struct.node*, %struct.node** %2, align 8
  call void @rotateLeft(%struct.rbtree* %60, %struct.node* %61)
  br label %62

; <label>:62                                      ; preds = %57, %51
  %63 = load %struct.node*, %struct.node** %2, align 8
  %64 = call %struct.node* @parentOf(%struct.node* %63)
  call void @setColor(%struct.node* %64, i64 1)
  %65 = load %struct.node*, %struct.node** %2, align 8
  %66 = call %struct.node* @parentOf(%struct.node* %65)
  %67 = call %struct.node* @parentOf(%struct.node* %66)
  call void @setColor(%struct.node* %67, i64 0)
  %68 = load %struct.node*, %struct.node** %2, align 8
  %69 = call %struct.node* @parentOf(%struct.node* %68)
  %70 = call %struct.node* @parentOf(%struct.node* %69)
  %71 = icmp ne %struct.node* %70, null
  br i1 %71, label %72, label %77

; <label>:72                                      ; preds = %62
  %73 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %74 = load %struct.node*, %struct.node** %2, align 8
  %75 = call %struct.node* @parentOf(%struct.node* %74)
  %76 = call %struct.node* @parentOf(%struct.node* %75)
  call void @rotateRight(%struct.rbtree* %73, %struct.node* %76)
  br label %77

; <label>:77                                      ; preds = %72, %62
  br label %78

; <label>:78                                      ; preds = %77, %41
  br label %125

; <label>:79                                      ; preds = %25
  %80 = load %struct.node*, %struct.node** %2, align 8
  %81 = call %struct.node* @parentOf(%struct.node* %80)
  %82 = call %struct.node* @parentOf(%struct.node* %81)
  %83 = call %struct.node* @leftOf(%struct.node* %82)
  store %struct.node* %83, %struct.node** %y1, align 8
  %84 = load %struct.node*, %struct.node** %y1, align 8
  %85 = call i64 @colorOf(%struct.node* %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %97

; <label>:87                                      ; preds = %79
  %88 = load %struct.node*, %struct.node** %2, align 8
  %89 = call %struct.node* @parentOf(%struct.node* %88)
  call void @setColor(%struct.node* %89, i64 1)
  %90 = load %struct.node*, %struct.node** %y1, align 8
  call void @setColor(%struct.node* %90, i64 1)
  %91 = load %struct.node*, %struct.node** %2, align 8
  %92 = call %struct.node* @parentOf(%struct.node* %91)
  %93 = call %struct.node* @parentOf(%struct.node* %92)
  call void @setColor(%struct.node* %93, i64 0)
  %94 = load %struct.node*, %struct.node** %2, align 8
  %95 = call %struct.node* @parentOf(%struct.node* %94)
  %96 = call %struct.node* @parentOf(%struct.node* %95)
  store %struct.node* %96, %struct.node** %2, align 8
  br label %124

; <label>:97                                      ; preds = %79
  %98 = load %struct.node*, %struct.node** %2, align 8
  %99 = load %struct.node*, %struct.node** %2, align 8
  %100 = call %struct.node* @parentOf(%struct.node* %99)
  %101 = call %struct.node* @leftOf(%struct.node* %100)
  %102 = icmp eq %struct.node* %98, %101
  br i1 %102, label %103, label %108

; <label>:103                                     ; preds = %97
  %104 = load %struct.node*, %struct.node** %2, align 8
  %105 = call %struct.node* @parentOf(%struct.node* %104)
  store %struct.node* %105, %struct.node** %2, align 8
  %106 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %107 = load %struct.node*, %struct.node** %2, align 8
  call void @rotateRight(%struct.rbtree* %106, %struct.node* %107)
  br label %108

; <label>:108                                     ; preds = %103, %97
  %109 = load %struct.node*, %struct.node** %2, align 8
  %110 = call %struct.node* @parentOf(%struct.node* %109)
  call void @setColor(%struct.node* %110, i64 1)
  %111 = load %struct.node*, %struct.node** %2, align 8
  %112 = call %struct.node* @parentOf(%struct.node* %111)
  %113 = call %struct.node* @parentOf(%struct.node* %112)
  call void @setColor(%struct.node* %113, i64 0)
  %114 = load %struct.node*, %struct.node** %2, align 8
  %115 = call %struct.node* @parentOf(%struct.node* %114)
  %116 = call %struct.node* @parentOf(%struct.node* %115)
  %117 = icmp ne %struct.node* %116, null
  br i1 %117, label %118, label %123

; <label>:118                                     ; preds = %108
  %119 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %120 = load %struct.node*, %struct.node** %2, align 8
  %121 = call %struct.node* @parentOf(%struct.node* %120)
  %122 = call %struct.node* @parentOf(%struct.node* %121)
  call void @rotateLeft(%struct.rbtree* %119, %struct.node* %122)
  br label %123

; <label>:123                                     ; preds = %118, %108
  br label %124

; <label>:124                                     ; preds = %123, %87
  br label %125

; <label>:125                                     ; preds = %124, %78
  br label %5

; <label>:126                                     ; preds = %24, %14
  %127 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %128 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %127, i32 0, i32 0
  %129 = load %struct.node*, %struct.node** %128, align 8
  store %struct.node* %129, %struct.node** %ro, align 8
  %130 = load %struct.node*, %struct.node** %ro, align 8
  %131 = getelementptr inbounds %struct.node, %struct.node* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 1
  br i1 %133, label %134, label %137

; <label>:134                                     ; preds = %126
  %135 = load %struct.node*, %struct.node** %ro, align 8
  %136 = getelementptr inbounds %struct.node, %struct.node* %135, i32 0, i32 5
  store i64 1, i64* %136, align 8
  br label %137

; <label>:137                                     ; preds = %134, %126
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.node* @parentOf(%struct.node* %n) #3 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = icmp ne %struct.node* %2, null
  br i1 %3, label %4, label %8

; <label>:4                                       ; preds = %0
  %5 = load %struct.node*, %struct.node** %1, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 2
  %7 = load %struct.node*, %struct.node** %6, align 8
  br label %9

; <label>:8                                       ; preds = %0
  br label %9

; <label>:9                                       ; preds = %8, %4
  %10 = phi %struct.node* [ %7, %4 ], [ null, %8 ]
  ret %struct.node* %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.node* @leftOf(%struct.node* %n) #3 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = icmp ne %struct.node* %2, null
  br i1 %3, label %4, label %8

; <label>:4                                       ; preds = %0
  %5 = load %struct.node*, %struct.node** %1, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 3
  %7 = load %struct.node*, %struct.node** %6, align 8
  br label %9

; <label>:8                                       ; preds = %0
  br label %9

; <label>:9                                       ; preds = %8, %4
  %10 = phi %struct.node* [ %7, %4 ], [ null, %8 ]
  ret %struct.node* %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.node* @rightOf(%struct.node* %n) #3 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = icmp ne %struct.node* %2, null
  br i1 %3, label %4, label %8

; <label>:4                                       ; preds = %0
  %5 = load %struct.node*, %struct.node** %1, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 4
  %7 = load %struct.node*, %struct.node** %6, align 8
  br label %9

; <label>:8                                       ; preds = %0
  br label %9

; <label>:9                                       ; preds = %8, %4
  %10 = phi %struct.node* [ %7, %4 ], [ null, %8 ]
  ret %struct.node* %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @colorOf(%struct.node* %n) #3 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = icmp ne %struct.node* %2, null
  br i1 %3, label %4, label %10

; <label>:4                                       ; preds = %0
  %5 = load %struct.node*, %struct.node** %1, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 5
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.node*
  %9 = ptrtoint %struct.node* %8 to i64
  br label %11

; <label>:10                                      ; preds = %0
  br label %11

; <label>:11                                      ; preds = %10, %4
  %12 = phi i64 [ %9, %4 ], [ 1, %10 ]
  ret i64 %12
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @setColor(%struct.node* %n, i64 %c) #3 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca i64, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  store i64 %c, i64* %2, align 8
  %3 = load %struct.node*, %struct.node** %1, align 8
  %4 = icmp ne %struct.node* %3, null
  br i1 %4, label %5, label %9

; <label>:5                                       ; preds = %0
  %6 = load i64, i64* %2, align 8
  %7 = load %struct.node*, %struct.node** %1, align 8
  %8 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 5
  store i64 %6, i64* %8, align 8
  br label %9

; <label>:9                                       ; preds = %5, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rotateLeft(%struct.rbtree* %s, %struct.node* %x) #0 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca %struct.node*, align 8
  %r = alloca %struct.node*, align 8
  %rl = alloca %struct.node*, align 8
  %xp = alloca %struct.node*, align 8
  store %struct.rbtree* %s, %struct.rbtree** %1, align 8
  store %struct.node* %x, %struct.node** %2, align 8
  %3 = load %struct.node*, %struct.node** %2, align 8
  %4 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 4
  %5 = load %struct.node*, %struct.node** %4, align 8
  store %struct.node* %5, %struct.node** %r, align 8
  %6 = load %struct.node*, %struct.node** %r, align 8
  %7 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 3
  %8 = load %struct.node*, %struct.node** %7, align 8
  store %struct.node* %8, %struct.node** %rl, align 8
  %9 = load %struct.node*, %struct.node** %rl, align 8
  %10 = load %struct.node*, %struct.node** %2, align 8
  %11 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 4
  store %struct.node* %9, %struct.node** %11, align 8
  %12 = load %struct.node*, %struct.node** %rl, align 8
  %13 = icmp ne %struct.node* %12, null
  br i1 %13, label %14, label %18

; <label>:14                                      ; preds = %0
  %15 = load %struct.node*, %struct.node** %2, align 8
  %16 = load %struct.node*, %struct.node** %rl, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 2
  store %struct.node* %15, %struct.node** %17, align 8
  br label %18

; <label>:18                                      ; preds = %14, %0
  %19 = load %struct.node*, %struct.node** %2, align 8
  %20 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 2
  %21 = load %struct.node*, %struct.node** %20, align 8
  store %struct.node* %21, %struct.node** %xp, align 8
  %22 = load %struct.node*, %struct.node** %xp, align 8
  %23 = load %struct.node*, %struct.node** %r, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 2
  store %struct.node* %22, %struct.node** %24, align 8
  %25 = load %struct.node*, %struct.node** %xp, align 8
  %26 = icmp eq %struct.node* %25, null
  br i1 %26, label %27, label %31

; <label>:27                                      ; preds = %18
  %28 = load %struct.node*, %struct.node** %r, align 8
  %29 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %30 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %29, i32 0, i32 0
  store %struct.node* %28, %struct.node** %30, align 8
  br label %46

; <label>:31                                      ; preds = %18
  %32 = load %struct.node*, %struct.node** %xp, align 8
  %33 = getelementptr inbounds %struct.node, %struct.node* %32, i32 0, i32 3
  %34 = load %struct.node*, %struct.node** %33, align 8
  %35 = load %struct.node*, %struct.node** %2, align 8
  %36 = icmp eq %struct.node* %34, %35
  br i1 %36, label %37, label %41

; <label>:37                                      ; preds = %31
  %38 = load %struct.node*, %struct.node** %r, align 8
  %39 = load %struct.node*, %struct.node** %xp, align 8
  %40 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 3
  store %struct.node* %38, %struct.node** %40, align 8
  br label %45

; <label>:41                                      ; preds = %31
  %42 = load %struct.node*, %struct.node** %r, align 8
  %43 = load %struct.node*, %struct.node** %xp, align 8
  %44 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 4
  store %struct.node* %42, %struct.node** %44, align 8
  br label %45

; <label>:45                                      ; preds = %41, %37
  br label %46

; <label>:46                                      ; preds = %45, %27
  %47 = load %struct.node*, %struct.node** %2, align 8
  %48 = load %struct.node*, %struct.node** %r, align 8
  %49 = getelementptr inbounds %struct.node, %struct.node* %48, i32 0, i32 3
  store %struct.node* %47, %struct.node** %49, align 8
  %50 = load %struct.node*, %struct.node** %r, align 8
  %51 = load %struct.node*, %struct.node** %2, align 8
  %52 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 2
  store %struct.node* %50, %struct.node** %52, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rotateRight(%struct.rbtree* %s, %struct.node* %x) #0 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca %struct.node*, align 8
  %l = alloca %struct.node*, align 8
  %lr = alloca %struct.node*, align 8
  %xp = alloca %struct.node*, align 8
  store %struct.rbtree* %s, %struct.rbtree** %1, align 8
  store %struct.node* %x, %struct.node** %2, align 8
  %3 = load %struct.node*, %struct.node** %2, align 8
  %4 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 3
  %5 = load %struct.node*, %struct.node** %4, align 8
  store %struct.node* %5, %struct.node** %l, align 8
  %6 = load %struct.node*, %struct.node** %l, align 8
  %7 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 4
  %8 = load %struct.node*, %struct.node** %7, align 8
  store %struct.node* %8, %struct.node** %lr, align 8
  %9 = load %struct.node*, %struct.node** %lr, align 8
  %10 = load %struct.node*, %struct.node** %2, align 8
  %11 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 3
  store %struct.node* %9, %struct.node** %11, align 8
  %12 = load %struct.node*, %struct.node** %lr, align 8
  %13 = icmp ne %struct.node* %12, null
  br i1 %13, label %14, label %18

; <label>:14                                      ; preds = %0
  %15 = load %struct.node*, %struct.node** %2, align 8
  %16 = load %struct.node*, %struct.node** %lr, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 2
  store %struct.node* %15, %struct.node** %17, align 8
  br label %18

; <label>:18                                      ; preds = %14, %0
  %19 = load %struct.node*, %struct.node** %2, align 8
  %20 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 2
  %21 = load %struct.node*, %struct.node** %20, align 8
  store %struct.node* %21, %struct.node** %xp, align 8
  %22 = load %struct.node*, %struct.node** %xp, align 8
  %23 = load %struct.node*, %struct.node** %l, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 2
  store %struct.node* %22, %struct.node** %24, align 8
  %25 = load %struct.node*, %struct.node** %xp, align 8
  %26 = icmp eq %struct.node* %25, null
  br i1 %26, label %27, label %31

; <label>:27                                      ; preds = %18
  %28 = load %struct.node*, %struct.node** %l, align 8
  %29 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %30 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %29, i32 0, i32 0
  store %struct.node* %28, %struct.node** %30, align 8
  br label %46

; <label>:31                                      ; preds = %18
  %32 = load %struct.node*, %struct.node** %xp, align 8
  %33 = getelementptr inbounds %struct.node, %struct.node* %32, i32 0, i32 4
  %34 = load %struct.node*, %struct.node** %33, align 8
  %35 = load %struct.node*, %struct.node** %2, align 8
  %36 = icmp eq %struct.node* %34, %35
  br i1 %36, label %37, label %41

; <label>:37                                      ; preds = %31
  %38 = load %struct.node*, %struct.node** %l, align 8
  %39 = load %struct.node*, %struct.node** %xp, align 8
  %40 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 4
  store %struct.node* %38, %struct.node** %40, align 8
  br label %45

; <label>:41                                      ; preds = %31
  %42 = load %struct.node*, %struct.node** %l, align 8
  %43 = load %struct.node*, %struct.node** %xp, align 8
  %44 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 3
  store %struct.node* %42, %struct.node** %44, align 8
  br label %45

; <label>:45                                      ; preds = %41, %37
  br label %46

; <label>:46                                      ; preds = %45, %27
  %47 = load %struct.node*, %struct.node** %2, align 8
  %48 = load %struct.node*, %struct.node** %l, align 8
  %49 = getelementptr inbounds %struct.node, %struct.node* %48, i32 0, i32 4
  store %struct.node* %47, %struct.node** %49, align 8
  %50 = load %struct.node*, %struct.node** %l, align 8
  %51 = load %struct.node*, %struct.node** %2, align 8
  %52 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 2
  store %struct.node* %50, %struct.node** %52, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.node* @TMgetNode() #0 {
  %n = alloca %struct.node*, align 8
  %1 = call noalias i8* @malloc(i64 48) #4
  %2 = bitcast i8* %1 to %struct.node*
  store %struct.node* %2, %struct.node** %n, align 8
  %3 = load %struct.node*, %struct.node** %n, align 8
  ret %struct.node* %3
}

; Function Attrs: nounwind uwtable
define internal void @TMfixAfterInsertion(%struct.rbtree* %s, %struct.node* %x) #0 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca %struct.node*, align 8
  %3 = alloca i64, align 8
  %xp = alloca %struct.node*, align 8
  %y = alloca %struct.node*, align 8
  %y1 = alloca %struct.node*, align 8
  %ro = alloca %struct.node*, align 8
  %4 = alloca i64, align 8
  store %struct.rbtree* %s, %struct.rbtree** %1, align 8
  store %struct.node* %x, %struct.node** %2, align 8
  %5 = load %struct.node*, %struct.node** %2, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 5
  store i64 0, i64* %6, align 8
  %7 = load %struct.node*, %struct.node** %2, align 8
  %8 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  br label %11

; <label>:11                                      ; preds = %135, %0
  %12 = load %struct.node*, %struct.node** %2, align 8
  %13 = icmp ne %struct.node* %12, null
  br i1 %13, label %14, label %22

; <label>:14                                      ; preds = %11
  %15 = load %struct.node*, %struct.node** %2, align 8
  %16 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %17 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %16, i32 0, i32 0
  %18 = load %struct.node*, %struct.node** %17, align 8
  %19 = bitcast %struct.node* %18 to i8*
  %20 = bitcast i8* %19 to %struct.node*
  %21 = icmp ne %struct.node* %15, %20
  br label %22

; <label>:22                                      ; preds = %14, %11
  %23 = phi i1 [ false, %11 ], [ %21, %14 ]
  br i1 %23, label %24, label %136

; <label>:24                                      ; preds = %22
  %25 = load %struct.node*, %struct.node** %2, align 8
  %26 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 2
  %27 = load %struct.node*, %struct.node** %26, align 8
  %28 = bitcast %struct.node* %27 to i8*
  %29 = bitcast i8* %28 to %struct.node*
  store %struct.node* %29, %struct.node** %xp, align 8
  %30 = load %struct.node*, %struct.node** %xp, align 8
  %31 = getelementptr inbounds %struct.node, %struct.node* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

; <label>:34                                      ; preds = %24
  br label %136

; <label>:35                                      ; preds = %24
  %36 = load %struct.node*, %struct.node** %2, align 8
  %37 = call %struct.node* @TMparentOf(%struct.node* %36)
  %38 = load %struct.node*, %struct.node** %2, align 8
  %39 = call %struct.node* @TMparentOf(%struct.node* %38)
  %40 = call %struct.node* @TMparentOf(%struct.node* %39)
  %41 = call %struct.node* @TMleftOf(%struct.node* %40)
  %42 = icmp eq %struct.node* %37, %41
  br i1 %42, label %43, label %89

; <label>:43                                      ; preds = %35
  %44 = load %struct.node*, %struct.node** %2, align 8
  %45 = call %struct.node* @TMparentOf(%struct.node* %44)
  %46 = call %struct.node* @TMparentOf(%struct.node* %45)
  %47 = call %struct.node* @TMrightOf(%struct.node* %46)
  store %struct.node* %47, %struct.node** %y, align 8
  %48 = load %struct.node*, %struct.node** %y, align 8
  %49 = call i64 @TMcolorOf(%struct.node* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %61

; <label>:51                                      ; preds = %43
  %52 = load %struct.node*, %struct.node** %2, align 8
  %53 = call %struct.node* @TMparentOf(%struct.node* %52)
  call void @TMsetColor(%struct.node* %53, i64 1)
  %54 = load %struct.node*, %struct.node** %y, align 8
  call void @TMsetColor(%struct.node* %54, i64 1)
  %55 = load %struct.node*, %struct.node** %2, align 8
  %56 = call %struct.node* @TMparentOf(%struct.node* %55)
  %57 = call %struct.node* @TMparentOf(%struct.node* %56)
  call void @TMsetColor(%struct.node* %57, i64 0)
  %58 = load %struct.node*, %struct.node** %2, align 8
  %59 = call %struct.node* @TMparentOf(%struct.node* %58)
  %60 = call %struct.node* @TMparentOf(%struct.node* %59)
  store %struct.node* %60, %struct.node** %2, align 8
  br label %88

; <label>:61                                      ; preds = %43
  %62 = load %struct.node*, %struct.node** %2, align 8
  %63 = load %struct.node*, %struct.node** %2, align 8
  %64 = call %struct.node* @TMparentOf(%struct.node* %63)
  %65 = call %struct.node* @TMrightOf(%struct.node* %64)
  %66 = icmp eq %struct.node* %62, %65
  br i1 %66, label %67, label %72

; <label>:67                                      ; preds = %61
  %68 = load %struct.node*, %struct.node** %2, align 8
  %69 = call %struct.node* @TMparentOf(%struct.node* %68)
  store %struct.node* %69, %struct.node** %2, align 8
  %70 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %71 = load %struct.node*, %struct.node** %2, align 8
  call void @TMrotateLeft(%struct.rbtree* %70, %struct.node* %71)
  br label %72

; <label>:72                                      ; preds = %67, %61
  %73 = load %struct.node*, %struct.node** %2, align 8
  %74 = call %struct.node* @TMparentOf(%struct.node* %73)
  call void @TMsetColor(%struct.node* %74, i64 1)
  %75 = load %struct.node*, %struct.node** %2, align 8
  %76 = call %struct.node* @TMparentOf(%struct.node* %75)
  %77 = call %struct.node* @TMparentOf(%struct.node* %76)
  call void @TMsetColor(%struct.node* %77, i64 0)
  %78 = load %struct.node*, %struct.node** %2, align 8
  %79 = call %struct.node* @TMparentOf(%struct.node* %78)
  %80 = call %struct.node* @TMparentOf(%struct.node* %79)
  %81 = icmp ne %struct.node* %80, null
  br i1 %81, label %82, label %87

; <label>:82                                      ; preds = %72
  %83 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %84 = load %struct.node*, %struct.node** %2, align 8
  %85 = call %struct.node* @TMparentOf(%struct.node* %84)
  %86 = call %struct.node* @TMparentOf(%struct.node* %85)
  call void @TMrotateRight(%struct.rbtree* %83, %struct.node* %86)
  br label %87

; <label>:87                                      ; preds = %82, %72
  br label %88

; <label>:88                                      ; preds = %87, %51
  br label %135

; <label>:89                                      ; preds = %35
  %90 = load %struct.node*, %struct.node** %2, align 8
  %91 = call %struct.node* @TMparentOf(%struct.node* %90)
  %92 = call %struct.node* @TMparentOf(%struct.node* %91)
  %93 = call %struct.node* @TMleftOf(%struct.node* %92)
  store %struct.node* %93, %struct.node** %y1, align 8
  %94 = load %struct.node*, %struct.node** %y1, align 8
  %95 = call i64 @TMcolorOf(%struct.node* %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %107

; <label>:97                                      ; preds = %89
  %98 = load %struct.node*, %struct.node** %2, align 8
  %99 = call %struct.node* @TMparentOf(%struct.node* %98)
  call void @TMsetColor(%struct.node* %99, i64 1)
  %100 = load %struct.node*, %struct.node** %y1, align 8
  call void @TMsetColor(%struct.node* %100, i64 1)
  %101 = load %struct.node*, %struct.node** %2, align 8
  %102 = call %struct.node* @TMparentOf(%struct.node* %101)
  %103 = call %struct.node* @TMparentOf(%struct.node* %102)
  call void @TMsetColor(%struct.node* %103, i64 0)
  %104 = load %struct.node*, %struct.node** %2, align 8
  %105 = call %struct.node* @TMparentOf(%struct.node* %104)
  %106 = call %struct.node* @TMparentOf(%struct.node* %105)
  store %struct.node* %106, %struct.node** %2, align 8
  br label %134

; <label>:107                                     ; preds = %89
  %108 = load %struct.node*, %struct.node** %2, align 8
  %109 = load %struct.node*, %struct.node** %2, align 8
  %110 = call %struct.node* @TMparentOf(%struct.node* %109)
  %111 = call %struct.node* @TMleftOf(%struct.node* %110)
  %112 = icmp eq %struct.node* %108, %111
  br i1 %112, label %113, label %118

; <label>:113                                     ; preds = %107
  %114 = load %struct.node*, %struct.node** %2, align 8
  %115 = call %struct.node* @TMparentOf(%struct.node* %114)
  store %struct.node* %115, %struct.node** %2, align 8
  %116 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %117 = load %struct.node*, %struct.node** %2, align 8
  call void @TMrotateRight(%struct.rbtree* %116, %struct.node* %117)
  br label %118

; <label>:118                                     ; preds = %113, %107
  %119 = load %struct.node*, %struct.node** %2, align 8
  %120 = call %struct.node* @TMparentOf(%struct.node* %119)
  call void @TMsetColor(%struct.node* %120, i64 1)
  %121 = load %struct.node*, %struct.node** %2, align 8
  %122 = call %struct.node* @TMparentOf(%struct.node* %121)
  %123 = call %struct.node* @TMparentOf(%struct.node* %122)
  call void @TMsetColor(%struct.node* %123, i64 0)
  %124 = load %struct.node*, %struct.node** %2, align 8
  %125 = call %struct.node* @TMparentOf(%struct.node* %124)
  %126 = call %struct.node* @TMparentOf(%struct.node* %125)
  %127 = icmp ne %struct.node* %126, null
  br i1 %127, label %128, label %133

; <label>:128                                     ; preds = %118
  %129 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %130 = load %struct.node*, %struct.node** %2, align 8
  %131 = call %struct.node* @TMparentOf(%struct.node* %130)
  %132 = call %struct.node* @TMparentOf(%struct.node* %131)
  call void @TMrotateLeft(%struct.rbtree* %129, %struct.node* %132)
  br label %133

; <label>:133                                     ; preds = %128, %118
  br label %134

; <label>:134                                     ; preds = %133, %97
  br label %135

; <label>:135                                     ; preds = %134, %88
  br label %11

; <label>:136                                     ; preds = %34, %22
  %137 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %138 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %137, i32 0, i32 0
  %139 = load %struct.node*, %struct.node** %138, align 8
  %140 = bitcast %struct.node* %139 to i8*
  %141 = bitcast i8* %140 to %struct.node*
  store %struct.node* %141, %struct.node** %ro, align 8
  %142 = load %struct.node*, %struct.node** %ro, align 8
  %143 = getelementptr inbounds %struct.node, %struct.node* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 1
  br i1 %145, label %146, label %153

; <label>:146                                     ; preds = %136
  %147 = load %struct.node*, %struct.node** %ro, align 8
  %148 = getelementptr inbounds %struct.node, %struct.node* %147, i32 0, i32 5
  store i64 1, i64* %148, align 8
  %149 = load %struct.node*, %struct.node** %ro, align 8
  %150 = getelementptr inbounds %struct.node, %struct.node* %149, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %4, align 8
  %152 = load i64, i64* %4, align 8
  br label %153

; <label>:153                                     ; preds = %146, %136
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.node* @TMparentOf(%struct.node* %n) #3 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = icmp ne %struct.node* %2, null
  br i1 %3, label %4, label %10

; <label>:4                                       ; preds = %0
  %5 = load %struct.node*, %struct.node** %1, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 2
  %7 = load %struct.node*, %struct.node** %6, align 8
  %8 = bitcast %struct.node* %7 to i8*
  %9 = bitcast i8* %8 to %struct.node*
  br label %11

; <label>:10                                      ; preds = %0
  br label %11

; <label>:11                                      ; preds = %10, %4
  %12 = phi %struct.node* [ %9, %4 ], [ null, %10 ]
  ret %struct.node* %12
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.node* @TMleftOf(%struct.node* %n) #3 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = icmp ne %struct.node* %2, null
  br i1 %3, label %4, label %10

; <label>:4                                       ; preds = %0
  %5 = load %struct.node*, %struct.node** %1, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 3
  %7 = load %struct.node*, %struct.node** %6, align 8
  %8 = bitcast %struct.node* %7 to i8*
  %9 = bitcast i8* %8 to %struct.node*
  br label %11

; <label>:10                                      ; preds = %0
  br label %11

; <label>:11                                      ; preds = %10, %4
  %12 = phi %struct.node* [ %9, %4 ], [ null, %10 ]
  ret %struct.node* %12
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.node* @TMrightOf(%struct.node* %n) #3 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = icmp ne %struct.node* %2, null
  br i1 %3, label %4, label %10

; <label>:4                                       ; preds = %0
  %5 = load %struct.node*, %struct.node** %1, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 4
  %7 = load %struct.node*, %struct.node** %6, align 8
  %8 = bitcast %struct.node* %7 to i8*
  %9 = bitcast i8* %8 to %struct.node*
  br label %11

; <label>:10                                      ; preds = %0
  br label %11

; <label>:11                                      ; preds = %10, %4
  %12 = phi %struct.node* [ %9, %4 ], [ null, %10 ]
  ret %struct.node* %12
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @TMcolorOf(%struct.node* %n) #3 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = icmp ne %struct.node* %2, null
  br i1 %3, label %4, label %8

; <label>:4                                       ; preds = %0
  %5 = load %struct.node*, %struct.node** %1, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 5
  %7 = load i64, i64* %6, align 8
  br label %9

; <label>:8                                       ; preds = %0
  br label %9

; <label>:9                                       ; preds = %8, %4
  %10 = phi i64 [ %7, %4 ], [ 1, %8 ]
  ret i64 %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @TMsetColor(%struct.node* %n, i64 %c) #3 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  store i64 %c, i64* %2, align 8
  %4 = load %struct.node*, %struct.node** %1, align 8
  %5 = icmp ne %struct.node* %4, null
  br i1 %5, label %6, label %14

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %2, align 8
  %8 = load %struct.node*, %struct.node** %1, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 5
  store i64 %7, i64* %9, align 8
  %10 = load %struct.node*, %struct.node** %1, align 8
  %11 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  br label %14

; <label>:14                                      ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TMrotateLeft(%struct.rbtree* %s, %struct.node* %x) #0 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca %struct.node*, align 8
  %r = alloca %struct.node*, align 8
  %rl = alloca %struct.node*, align 8
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  %xp = alloca %struct.node*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca %struct.node*, align 8
  %10 = alloca %struct.node*, align 8
  store %struct.rbtree* %s, %struct.rbtree** %1, align 8
  store %struct.node* %x, %struct.node** %2, align 8
  %11 = load %struct.node*, %struct.node** %2, align 8
  %12 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 4
  %13 = load %struct.node*, %struct.node** %12, align 8
  %14 = bitcast %struct.node* %13 to i8*
  %15 = bitcast i8* %14 to %struct.node*
  store %struct.node* %15, %struct.node** %r, align 8
  %16 = load %struct.node*, %struct.node** %r, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 3
  %18 = load %struct.node*, %struct.node** %17, align 8
  %19 = bitcast %struct.node* %18 to i8*
  %20 = bitcast i8* %19 to %struct.node*
  store %struct.node* %20, %struct.node** %rl, align 8
  %21 = load %struct.node*, %struct.node** %rl, align 8
  %22 = load %struct.node*, %struct.node** %2, align 8
  %23 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 4
  store %struct.node* %21, %struct.node** %23, align 8
  %24 = load %struct.node*, %struct.node** %2, align 8
  %25 = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 4
  %26 = load %struct.node*, %struct.node** %25, align 8
  store %struct.node* %26, %struct.node** %3, align 8
  %27 = load %struct.node*, %struct.node** %3, align 8
  %28 = load %struct.node*, %struct.node** %rl, align 8
  %29 = icmp ne %struct.node* %28, null
  br i1 %29, label %30, label %38

; <label>:30                                      ; preds = %0
  %31 = load %struct.node*, %struct.node** %2, align 8
  %32 = load %struct.node*, %struct.node** %rl, align 8
  %33 = getelementptr inbounds %struct.node, %struct.node* %32, i32 0, i32 2
  store %struct.node* %31, %struct.node** %33, align 8
  %34 = load %struct.node*, %struct.node** %rl, align 8
  %35 = getelementptr inbounds %struct.node, %struct.node* %34, i32 0, i32 2
  %36 = load %struct.node*, %struct.node** %35, align 8
  store %struct.node* %36, %struct.node** %4, align 8
  %37 = load %struct.node*, %struct.node** %4, align 8
  br label %38

; <label>:38                                      ; preds = %30, %0
  %39 = load %struct.node*, %struct.node** %2, align 8
  %40 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 2
  %41 = load %struct.node*, %struct.node** %40, align 8
  %42 = bitcast %struct.node* %41 to i8*
  %43 = bitcast i8* %42 to %struct.node*
  store %struct.node* %43, %struct.node** %xp, align 8
  %44 = load %struct.node*, %struct.node** %xp, align 8
  %45 = load %struct.node*, %struct.node** %r, align 8
  %46 = getelementptr inbounds %struct.node, %struct.node* %45, i32 0, i32 2
  store %struct.node* %44, %struct.node** %46, align 8
  %47 = load %struct.node*, %struct.node** %r, align 8
  %48 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 2
  %49 = load %struct.node*, %struct.node** %48, align 8
  store %struct.node* %49, %struct.node** %5, align 8
  %50 = load %struct.node*, %struct.node** %5, align 8
  %51 = load %struct.node*, %struct.node** %xp, align 8
  %52 = icmp eq %struct.node* %51, null
  br i1 %52, label %53, label %61

; <label>:53                                      ; preds = %38
  %54 = load %struct.node*, %struct.node** %r, align 8
  %55 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %56 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %55, i32 0, i32 0
  store %struct.node* %54, %struct.node** %56, align 8
  %57 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %58 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %57, i32 0, i32 0
  %59 = load %struct.node*, %struct.node** %58, align 8
  store %struct.node* %59, %struct.node** %6, align 8
  %60 = load %struct.node*, %struct.node** %6, align 8
  br label %86

; <label>:61                                      ; preds = %38
  %62 = load %struct.node*, %struct.node** %xp, align 8
  %63 = getelementptr inbounds %struct.node, %struct.node* %62, i32 0, i32 3
  %64 = load %struct.node*, %struct.node** %63, align 8
  %65 = bitcast %struct.node* %64 to i8*
  %66 = bitcast i8* %65 to %struct.node*
  %67 = load %struct.node*, %struct.node** %2, align 8
  %68 = icmp eq %struct.node* %66, %67
  br i1 %68, label %69, label %77

; <label>:69                                      ; preds = %61
  %70 = load %struct.node*, %struct.node** %r, align 8
  %71 = load %struct.node*, %struct.node** %xp, align 8
  %72 = getelementptr inbounds %struct.node, %struct.node* %71, i32 0, i32 3
  store %struct.node* %70, %struct.node** %72, align 8
  %73 = load %struct.node*, %struct.node** %xp, align 8
  %74 = getelementptr inbounds %struct.node, %struct.node* %73, i32 0, i32 3
  %75 = load %struct.node*, %struct.node** %74, align 8
  store %struct.node* %75, %struct.node** %7, align 8
  %76 = load %struct.node*, %struct.node** %7, align 8
  br label %85

; <label>:77                                      ; preds = %61
  %78 = load %struct.node*, %struct.node** %r, align 8
  %79 = load %struct.node*, %struct.node** %xp, align 8
  %80 = getelementptr inbounds %struct.node, %struct.node* %79, i32 0, i32 4
  store %struct.node* %78, %struct.node** %80, align 8
  %81 = load %struct.node*, %struct.node** %xp, align 8
  %82 = getelementptr inbounds %struct.node, %struct.node* %81, i32 0, i32 4
  %83 = load %struct.node*, %struct.node** %82, align 8
  store %struct.node* %83, %struct.node** %8, align 8
  %84 = load %struct.node*, %struct.node** %8, align 8
  br label %85

; <label>:85                                      ; preds = %77, %69
  br label %86

; <label>:86                                      ; preds = %85, %53
  %87 = load %struct.node*, %struct.node** %2, align 8
  %88 = load %struct.node*, %struct.node** %r, align 8
  %89 = getelementptr inbounds %struct.node, %struct.node* %88, i32 0, i32 3
  store %struct.node* %87, %struct.node** %89, align 8
  %90 = load %struct.node*, %struct.node** %r, align 8
  %91 = getelementptr inbounds %struct.node, %struct.node* %90, i32 0, i32 3
  %92 = load %struct.node*, %struct.node** %91, align 8
  store %struct.node* %92, %struct.node** %9, align 8
  %93 = load %struct.node*, %struct.node** %9, align 8
  %94 = load %struct.node*, %struct.node** %r, align 8
  %95 = load %struct.node*, %struct.node** %2, align 8
  %96 = getelementptr inbounds %struct.node, %struct.node* %95, i32 0, i32 2
  store %struct.node* %94, %struct.node** %96, align 8
  %97 = load %struct.node*, %struct.node** %2, align 8
  %98 = getelementptr inbounds %struct.node, %struct.node* %97, i32 0, i32 2
  %99 = load %struct.node*, %struct.node** %98, align 8
  store %struct.node* %99, %struct.node** %10, align 8
  %100 = load %struct.node*, %struct.node** %10, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TMrotateRight(%struct.rbtree* %s, %struct.node* %x) #0 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca %struct.node*, align 8
  %l = alloca %struct.node*, align 8
  %lr = alloca %struct.node*, align 8
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  %xp = alloca %struct.node*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca %struct.node*, align 8
  %10 = alloca %struct.node*, align 8
  store %struct.rbtree* %s, %struct.rbtree** %1, align 8
  store %struct.node* %x, %struct.node** %2, align 8
  %11 = load %struct.node*, %struct.node** %2, align 8
  %12 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 3
  %13 = load %struct.node*, %struct.node** %12, align 8
  %14 = bitcast %struct.node* %13 to i8*
  %15 = bitcast i8* %14 to %struct.node*
  store %struct.node* %15, %struct.node** %l, align 8
  %16 = load %struct.node*, %struct.node** %l, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 4
  %18 = load %struct.node*, %struct.node** %17, align 8
  %19 = bitcast %struct.node* %18 to i8*
  %20 = bitcast i8* %19 to %struct.node*
  store %struct.node* %20, %struct.node** %lr, align 8
  %21 = load %struct.node*, %struct.node** %lr, align 8
  %22 = load %struct.node*, %struct.node** %2, align 8
  %23 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 3
  store %struct.node* %21, %struct.node** %23, align 8
  %24 = load %struct.node*, %struct.node** %2, align 8
  %25 = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 3
  %26 = load %struct.node*, %struct.node** %25, align 8
  store %struct.node* %26, %struct.node** %3, align 8
  %27 = load %struct.node*, %struct.node** %3, align 8
  %28 = load %struct.node*, %struct.node** %lr, align 8
  %29 = icmp ne %struct.node* %28, null
  br i1 %29, label %30, label %38

; <label>:30                                      ; preds = %0
  %31 = load %struct.node*, %struct.node** %2, align 8
  %32 = load %struct.node*, %struct.node** %lr, align 8
  %33 = getelementptr inbounds %struct.node, %struct.node* %32, i32 0, i32 2
  store %struct.node* %31, %struct.node** %33, align 8
  %34 = load %struct.node*, %struct.node** %lr, align 8
  %35 = getelementptr inbounds %struct.node, %struct.node* %34, i32 0, i32 2
  %36 = load %struct.node*, %struct.node** %35, align 8
  store %struct.node* %36, %struct.node** %4, align 8
  %37 = load %struct.node*, %struct.node** %4, align 8
  br label %38

; <label>:38                                      ; preds = %30, %0
  %39 = load %struct.node*, %struct.node** %2, align 8
  %40 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 2
  %41 = load %struct.node*, %struct.node** %40, align 8
  %42 = bitcast %struct.node* %41 to i8*
  %43 = bitcast i8* %42 to %struct.node*
  store %struct.node* %43, %struct.node** %xp, align 8
  %44 = load %struct.node*, %struct.node** %xp, align 8
  %45 = load %struct.node*, %struct.node** %l, align 8
  %46 = getelementptr inbounds %struct.node, %struct.node* %45, i32 0, i32 2
  store %struct.node* %44, %struct.node** %46, align 8
  %47 = load %struct.node*, %struct.node** %l, align 8
  %48 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 2
  %49 = load %struct.node*, %struct.node** %48, align 8
  store %struct.node* %49, %struct.node** %5, align 8
  %50 = load %struct.node*, %struct.node** %5, align 8
  %51 = load %struct.node*, %struct.node** %xp, align 8
  %52 = icmp eq %struct.node* %51, null
  br i1 %52, label %53, label %61

; <label>:53                                      ; preds = %38
  %54 = load %struct.node*, %struct.node** %l, align 8
  %55 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %56 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %55, i32 0, i32 0
  store %struct.node* %54, %struct.node** %56, align 8
  %57 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %58 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %57, i32 0, i32 0
  %59 = load %struct.node*, %struct.node** %58, align 8
  store %struct.node* %59, %struct.node** %6, align 8
  %60 = load %struct.node*, %struct.node** %6, align 8
  br label %86

; <label>:61                                      ; preds = %38
  %62 = load %struct.node*, %struct.node** %xp, align 8
  %63 = getelementptr inbounds %struct.node, %struct.node* %62, i32 0, i32 4
  %64 = load %struct.node*, %struct.node** %63, align 8
  %65 = bitcast %struct.node* %64 to i8*
  %66 = bitcast i8* %65 to %struct.node*
  %67 = load %struct.node*, %struct.node** %2, align 8
  %68 = icmp eq %struct.node* %66, %67
  br i1 %68, label %69, label %77

; <label>:69                                      ; preds = %61
  %70 = load %struct.node*, %struct.node** %l, align 8
  %71 = load %struct.node*, %struct.node** %xp, align 8
  %72 = getelementptr inbounds %struct.node, %struct.node* %71, i32 0, i32 4
  store %struct.node* %70, %struct.node** %72, align 8
  %73 = load %struct.node*, %struct.node** %xp, align 8
  %74 = getelementptr inbounds %struct.node, %struct.node* %73, i32 0, i32 4
  %75 = load %struct.node*, %struct.node** %74, align 8
  store %struct.node* %75, %struct.node** %7, align 8
  %76 = load %struct.node*, %struct.node** %7, align 8
  br label %85

; <label>:77                                      ; preds = %61
  %78 = load %struct.node*, %struct.node** %l, align 8
  %79 = load %struct.node*, %struct.node** %xp, align 8
  %80 = getelementptr inbounds %struct.node, %struct.node* %79, i32 0, i32 3
  store %struct.node* %78, %struct.node** %80, align 8
  %81 = load %struct.node*, %struct.node** %xp, align 8
  %82 = getelementptr inbounds %struct.node, %struct.node* %81, i32 0, i32 3
  %83 = load %struct.node*, %struct.node** %82, align 8
  store %struct.node* %83, %struct.node** %8, align 8
  %84 = load %struct.node*, %struct.node** %8, align 8
  br label %85

; <label>:85                                      ; preds = %77, %69
  br label %86

; <label>:86                                      ; preds = %85, %53
  %87 = load %struct.node*, %struct.node** %2, align 8
  %88 = load %struct.node*, %struct.node** %l, align 8
  %89 = getelementptr inbounds %struct.node, %struct.node* %88, i32 0, i32 4
  store %struct.node* %87, %struct.node** %89, align 8
  %90 = load %struct.node*, %struct.node** %l, align 8
  %91 = getelementptr inbounds %struct.node, %struct.node* %90, i32 0, i32 4
  %92 = load %struct.node*, %struct.node** %91, align 8
  store %struct.node* %92, %struct.node** %9, align 8
  %93 = load %struct.node*, %struct.node** %9, align 8
  %94 = load %struct.node*, %struct.node** %l, align 8
  %95 = load %struct.node*, %struct.node** %2, align 8
  %96 = getelementptr inbounds %struct.node, %struct.node* %95, i32 0, i32 2
  store %struct.node* %94, %struct.node** %96, align 8
  %97 = load %struct.node*, %struct.node** %2, align 8
  %98 = getelementptr inbounds %struct.node, %struct.node* %97, i32 0, i32 2
  %99 = load %struct.node*, %struct.node** %98, align 8
  store %struct.node* %99, %struct.node** %10, align 8
  %100 = load %struct.node*, %struct.node** %10, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fixAfterDeletion(%struct.rbtree* %s, %struct.node* %x) #0 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca %struct.node*, align 8
  %sib = alloca %struct.node*, align 8
  %sib1 = alloca %struct.node*, align 8
  store %struct.rbtree* %s, %struct.rbtree** %1, align 8
  store %struct.node* %x, %struct.node** %2, align 8
  br label %3

; <label>:3                                       ; preds = %143, %0
  %4 = load %struct.node*, %struct.node** %2, align 8
  %5 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %6 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %5, i32 0, i32 0
  %7 = load %struct.node*, %struct.node** %6, align 8
  %8 = icmp ne %struct.node* %4, %7
  br i1 %8, label %9, label %13

; <label>:9                                       ; preds = %3
  %10 = load %struct.node*, %struct.node** %2, align 8
  %11 = call i64 @colorOf(%struct.node* %10)
  %12 = icmp eq i64 %11, 1
  br label %13

; <label>:13                                      ; preds = %9, %3
  %14 = phi i1 [ false, %3 ], [ %12, %9 ]
  br i1 %14, label %15, label %144

; <label>:15                                      ; preds = %13
  %16 = load %struct.node*, %struct.node** %2, align 8
  %17 = load %struct.node*, %struct.node** %2, align 8
  %18 = call %struct.node* @parentOf(%struct.node* %17)
  %19 = call %struct.node* @leftOf(%struct.node* %18)
  %20 = icmp eq %struct.node* %16, %19
  br i1 %20, label %21, label %82

; <label>:21                                      ; preds = %15
  %22 = load %struct.node*, %struct.node** %2, align 8
  %23 = call %struct.node* @parentOf(%struct.node* %22)
  %24 = call %struct.node* @rightOf(%struct.node* %23)
  store %struct.node* %24, %struct.node** %sib, align 8
  %25 = load %struct.node*, %struct.node** %sib, align 8
  %26 = call i64 @colorOf(%struct.node* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %38

; <label>:28                                      ; preds = %21
  %29 = load %struct.node*, %struct.node** %sib, align 8
  call void @setColor(%struct.node* %29, i64 1)
  %30 = load %struct.node*, %struct.node** %2, align 8
  %31 = call %struct.node* @parentOf(%struct.node* %30)
  call void @setColor(%struct.node* %31, i64 0)
  %32 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %33 = load %struct.node*, %struct.node** %2, align 8
  %34 = call %struct.node* @parentOf(%struct.node* %33)
  call void @rotateLeft(%struct.rbtree* %32, %struct.node* %34)
  %35 = load %struct.node*, %struct.node** %2, align 8
  %36 = call %struct.node* @parentOf(%struct.node* %35)
  %37 = call %struct.node* @rightOf(%struct.node* %36)
  store %struct.node* %37, %struct.node** %sib, align 8
  br label %38

; <label>:38                                      ; preds = %28, %21
  %39 = load %struct.node*, %struct.node** %sib, align 8
  %40 = call %struct.node* @leftOf(%struct.node* %39)
  %41 = call i64 @colorOf(%struct.node* %40)
  %42 = icmp eq i64 %41, 1
  br i1 %42, label %43, label %52

; <label>:43                                      ; preds = %38
  %44 = load %struct.node*, %struct.node** %sib, align 8
  %45 = call %struct.node* @rightOf(%struct.node* %44)
  %46 = call i64 @colorOf(%struct.node* %45)
  %47 = icmp eq i64 %46, 1
  br i1 %47, label %48, label %52

; <label>:48                                      ; preds = %43
  %49 = load %struct.node*, %struct.node** %sib, align 8
  call void @setColor(%struct.node* %49, i64 0)
  %50 = load %struct.node*, %struct.node** %2, align 8
  %51 = call %struct.node* @parentOf(%struct.node* %50)
  store %struct.node* %51, %struct.node** %2, align 8
  br label %81

; <label>:52                                      ; preds = %43, %38
  %53 = load %struct.node*, %struct.node** %sib, align 8
  %54 = call %struct.node* @rightOf(%struct.node* %53)
  %55 = call i64 @colorOf(%struct.node* %54)
  %56 = icmp eq i64 %55, 1
  br i1 %56, label %57, label %66

; <label>:57                                      ; preds = %52
  %58 = load %struct.node*, %struct.node** %sib, align 8
  %59 = call %struct.node* @leftOf(%struct.node* %58)
  call void @setColor(%struct.node* %59, i64 1)
  %60 = load %struct.node*, %struct.node** %sib, align 8
  call void @setColor(%struct.node* %60, i64 0)
  %61 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %62 = load %struct.node*, %struct.node** %sib, align 8
  call void @rotateRight(%struct.rbtree* %61, %struct.node* %62)
  %63 = load %struct.node*, %struct.node** %2, align 8
  %64 = call %struct.node* @parentOf(%struct.node* %63)
  %65 = call %struct.node* @rightOf(%struct.node* %64)
  store %struct.node* %65, %struct.node** %sib, align 8
  br label %66

; <label>:66                                      ; preds = %57, %52
  %67 = load %struct.node*, %struct.node** %sib, align 8
  %68 = load %struct.node*, %struct.node** %2, align 8
  %69 = call %struct.node* @parentOf(%struct.node* %68)
  %70 = call i64 @colorOf(%struct.node* %69)
  call void @setColor(%struct.node* %67, i64 %70)
  %71 = load %struct.node*, %struct.node** %2, align 8
  %72 = call %struct.node* @parentOf(%struct.node* %71)
  call void @setColor(%struct.node* %72, i64 1)
  %73 = load %struct.node*, %struct.node** %sib, align 8
  %74 = call %struct.node* @rightOf(%struct.node* %73)
  call void @setColor(%struct.node* %74, i64 1)
  %75 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %76 = load %struct.node*, %struct.node** %2, align 8
  %77 = call %struct.node* @parentOf(%struct.node* %76)
  call void @rotateLeft(%struct.rbtree* %75, %struct.node* %77)
  %78 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %79 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %78, i32 0, i32 0
  %80 = load %struct.node*, %struct.node** %79, align 8
  store %struct.node* %80, %struct.node** %2, align 8
  br label %81

; <label>:81                                      ; preds = %66, %48
  br label %143

; <label>:82                                      ; preds = %15
  %83 = load %struct.node*, %struct.node** %2, align 8
  %84 = call %struct.node* @parentOf(%struct.node* %83)
  %85 = call %struct.node* @leftOf(%struct.node* %84)
  store %struct.node* %85, %struct.node** %sib1, align 8
  %86 = load %struct.node*, %struct.node** %sib1, align 8
  %87 = call i64 @colorOf(%struct.node* %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %99

; <label>:89                                      ; preds = %82
  %90 = load %struct.node*, %struct.node** %sib1, align 8
  call void @setColor(%struct.node* %90, i64 1)
  %91 = load %struct.node*, %struct.node** %2, align 8
  %92 = call %struct.node* @parentOf(%struct.node* %91)
  call void @setColor(%struct.node* %92, i64 0)
  %93 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %94 = load %struct.node*, %struct.node** %2, align 8
  %95 = call %struct.node* @parentOf(%struct.node* %94)
  call void @rotateRight(%struct.rbtree* %93, %struct.node* %95)
  %96 = load %struct.node*, %struct.node** %2, align 8
  %97 = call %struct.node* @parentOf(%struct.node* %96)
  %98 = call %struct.node* @leftOf(%struct.node* %97)
  store %struct.node* %98, %struct.node** %sib1, align 8
  br label %99

; <label>:99                                      ; preds = %89, %82
  %100 = load %struct.node*, %struct.node** %sib1, align 8
  %101 = call %struct.node* @rightOf(%struct.node* %100)
  %102 = call i64 @colorOf(%struct.node* %101)
  %103 = icmp eq i64 %102, 1
  br i1 %103, label %104, label %113

; <label>:104                                     ; preds = %99
  %105 = load %struct.node*, %struct.node** %sib1, align 8
  %106 = call %struct.node* @leftOf(%struct.node* %105)
  %107 = call i64 @colorOf(%struct.node* %106)
  %108 = icmp eq i64 %107, 1
  br i1 %108, label %109, label %113

; <label>:109                                     ; preds = %104
  %110 = load %struct.node*, %struct.node** %sib1, align 8
  call void @setColor(%struct.node* %110, i64 0)
  %111 = load %struct.node*, %struct.node** %2, align 8
  %112 = call %struct.node* @parentOf(%struct.node* %111)
  store %struct.node* %112, %struct.node** %2, align 8
  br label %142

; <label>:113                                     ; preds = %104, %99
  %114 = load %struct.node*, %struct.node** %sib1, align 8
  %115 = call %struct.node* @leftOf(%struct.node* %114)
  %116 = call i64 @colorOf(%struct.node* %115)
  %117 = icmp eq i64 %116, 1
  br i1 %117, label %118, label %127

; <label>:118                                     ; preds = %113
  %119 = load %struct.node*, %struct.node** %sib1, align 8
  %120 = call %struct.node* @rightOf(%struct.node* %119)
  call void @setColor(%struct.node* %120, i64 1)
  %121 = load %struct.node*, %struct.node** %sib1, align 8
  call void @setColor(%struct.node* %121, i64 0)
  %122 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %123 = load %struct.node*, %struct.node** %sib1, align 8
  call void @rotateLeft(%struct.rbtree* %122, %struct.node* %123)
  %124 = load %struct.node*, %struct.node** %2, align 8
  %125 = call %struct.node* @parentOf(%struct.node* %124)
  %126 = call %struct.node* @leftOf(%struct.node* %125)
  store %struct.node* %126, %struct.node** %sib1, align 8
  br label %127

; <label>:127                                     ; preds = %118, %113
  %128 = load %struct.node*, %struct.node** %sib1, align 8
  %129 = load %struct.node*, %struct.node** %2, align 8
  %130 = call %struct.node* @parentOf(%struct.node* %129)
  %131 = call i64 @colorOf(%struct.node* %130)
  call void @setColor(%struct.node* %128, i64 %131)
  %132 = load %struct.node*, %struct.node** %2, align 8
  %133 = call %struct.node* @parentOf(%struct.node* %132)
  call void @setColor(%struct.node* %133, i64 1)
  %134 = load %struct.node*, %struct.node** %sib1, align 8
  %135 = call %struct.node* @leftOf(%struct.node* %134)
  call void @setColor(%struct.node* %135, i64 1)
  %136 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %137 = load %struct.node*, %struct.node** %2, align 8
  %138 = call %struct.node* @parentOf(%struct.node* %137)
  call void @rotateRight(%struct.rbtree* %136, %struct.node* %138)
  %139 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %140 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %139, i32 0, i32 0
  %141 = load %struct.node*, %struct.node** %140, align 8
  store %struct.node* %141, %struct.node** %2, align 8
  br label %142

; <label>:142                                     ; preds = %127, %109
  br label %143

; <label>:143                                     ; preds = %142, %81
  br label %3

; <label>:144                                     ; preds = %13
  %145 = load %struct.node*, %struct.node** %2, align 8
  %146 = icmp ne %struct.node* %145, null
  br i1 %146, label %147, label %155

; <label>:147                                     ; preds = %144
  %148 = load %struct.node*, %struct.node** %2, align 8
  %149 = getelementptr inbounds %struct.node, %struct.node* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 1
  br i1 %151, label %152, label %155

; <label>:152                                     ; preds = %147
  %153 = load %struct.node*, %struct.node** %2, align 8
  %154 = getelementptr inbounds %struct.node, %struct.node* %153, i32 0, i32 5
  store i64 1, i64* %154, align 8
  br label %155

; <label>:155                                     ; preds = %152, %147, %144
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.node* @TMsuccessor(%struct.node* %t) #0 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca %struct.node*, align 8
  %p = alloca %struct.node*, align 8
  %p1 = alloca %struct.node*, align 8
  %ch = alloca %struct.node*, align 8
  store %struct.node* %t, %struct.node** %2, align 8
  %3 = load %struct.node*, %struct.node** %2, align 8
  %4 = icmp eq %struct.node* %3, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  store %struct.node* null, %struct.node** %1, align 8
  br label %63

; <label>:6                                       ; preds = %0
  %7 = load %struct.node*, %struct.node** %2, align 8
  %8 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 4
  %9 = load %struct.node*, %struct.node** %8, align 8
  %10 = bitcast %struct.node* %9 to i8*
  %11 = bitcast i8* %10 to %struct.node*
  %12 = icmp ne %struct.node* %11, null
  br i1 %12, label %13, label %34

; <label>:13                                      ; preds = %6
  %14 = load %struct.node*, %struct.node** %2, align 8
  %15 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 4
  %16 = load %struct.node*, %struct.node** %15, align 8
  %17 = bitcast %struct.node* %16 to i8*
  %18 = bitcast i8* %17 to %struct.node*
  store %struct.node* %18, %struct.node** %p, align 8
  br label %19

; <label>:19                                      ; preds = %26, %13
  %20 = load %struct.node*, %struct.node** %p, align 8
  %21 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 3
  %22 = load %struct.node*, %struct.node** %21, align 8
  %23 = bitcast %struct.node* %22 to i8*
  %24 = bitcast i8* %23 to %struct.node*
  %25 = icmp ne %struct.node* %24, null
  br i1 %25, label %26, label %32

; <label>:26                                      ; preds = %19
  %27 = load %struct.node*, %struct.node** %p, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 3
  %29 = load %struct.node*, %struct.node** %28, align 8
  %30 = bitcast %struct.node* %29 to i8*
  %31 = bitcast i8* %30 to %struct.node*
  store %struct.node* %31, %struct.node** %p, align 8
  br label %19

; <label>:32                                      ; preds = %19
  %33 = load %struct.node*, %struct.node** %p, align 8
  store %struct.node* %33, %struct.node** %1, align 8
  br label %63

; <label>:34                                      ; preds = %6
  %35 = load %struct.node*, %struct.node** %2, align 8
  %36 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 2
  %37 = load %struct.node*, %struct.node** %36, align 8
  %38 = bitcast %struct.node* %37 to i8*
  %39 = bitcast i8* %38 to %struct.node*
  store %struct.node* %39, %struct.node** %p1, align 8
  %40 = load %struct.node*, %struct.node** %2, align 8
  store %struct.node* %40, %struct.node** %ch, align 8
  br label %41

; <label>:41                                      ; preds = %54, %34
  %42 = load %struct.node*, %struct.node** %p1, align 8
  %43 = icmp ne %struct.node* %42, null
  br i1 %43, label %44, label %52

; <label>:44                                      ; preds = %41
  %45 = load %struct.node*, %struct.node** %ch, align 8
  %46 = load %struct.node*, %struct.node** %p1, align 8
  %47 = getelementptr inbounds %struct.node, %struct.node* %46, i32 0, i32 4
  %48 = load %struct.node*, %struct.node** %47, align 8
  %49 = bitcast %struct.node* %48 to i8*
  %50 = bitcast i8* %49 to %struct.node*
  %51 = icmp eq %struct.node* %45, %50
  br label %52

; <label>:52                                      ; preds = %44, %41
  %53 = phi i1 [ false, %41 ], [ %51, %44 ]
  br i1 %53, label %54, label %61

; <label>:54                                      ; preds = %52
  %55 = load %struct.node*, %struct.node** %p1, align 8
  store %struct.node* %55, %struct.node** %ch, align 8
  %56 = load %struct.node*, %struct.node** %p1, align 8
  %57 = getelementptr inbounds %struct.node, %struct.node* %56, i32 0, i32 2
  %58 = load %struct.node*, %struct.node** %57, align 8
  %59 = bitcast %struct.node* %58 to i8*
  %60 = bitcast i8* %59 to %struct.node*
  store %struct.node* %60, %struct.node** %p1, align 8
  br label %41

; <label>:61                                      ; preds = %52
  %62 = load %struct.node*, %struct.node** %p1, align 8
  store %struct.node* %62, %struct.node** %1, align 8
  br label %63

; <label>:63                                      ; preds = %61, %32, %5
  %64 = load %struct.node*, %struct.node** %1, align 8
  ret %struct.node* %64
}

; Function Attrs: nounwind uwtable
define internal void @TMfixAfterDeletion(%struct.rbtree* %s, %struct.node* %x) #0 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca %struct.node*, align 8
  %sib = alloca %struct.node*, align 8
  %sib1 = alloca %struct.node*, align 8
  %3 = alloca i64, align 8
  store %struct.rbtree* %s, %struct.rbtree** %1, align 8
  store %struct.node* %x, %struct.node** %2, align 8
  br label %4

; <label>:4                                       ; preds = %150, %0
  %5 = load %struct.node*, %struct.node** %2, align 8
  %6 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %7 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %6, i32 0, i32 0
  %8 = load %struct.node*, %struct.node** %7, align 8
  %9 = bitcast %struct.node* %8 to i8*
  %10 = bitcast i8* %9 to %struct.node*
  %11 = icmp ne %struct.node* %5, %10
  br i1 %11, label %12, label %16

; <label>:12                                      ; preds = %4
  %13 = load %struct.node*, %struct.node** %2, align 8
  %14 = call i64 @TMcolorOf(%struct.node* %13)
  %15 = icmp eq i64 %14, 1
  br label %16

; <label>:16                                      ; preds = %12, %4
  %17 = phi i1 [ false, %4 ], [ %15, %12 ]
  br i1 %17, label %18, label %151

; <label>:18                                      ; preds = %16
  %19 = load %struct.node*, %struct.node** %2, align 8
  %20 = load %struct.node*, %struct.node** %2, align 8
  %21 = call %struct.node* @TMparentOf(%struct.node* %20)
  %22 = call %struct.node* @TMleftOf(%struct.node* %21)
  %23 = icmp eq %struct.node* %19, %22
  br i1 %23, label %24, label %87

; <label>:24                                      ; preds = %18
  %25 = load %struct.node*, %struct.node** %2, align 8
  %26 = call %struct.node* @TMparentOf(%struct.node* %25)
  %27 = call %struct.node* @TMrightOf(%struct.node* %26)
  store %struct.node* %27, %struct.node** %sib, align 8
  %28 = load %struct.node*, %struct.node** %sib, align 8
  %29 = call i64 @TMcolorOf(%struct.node* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %41

; <label>:31                                      ; preds = %24
  %32 = load %struct.node*, %struct.node** %sib, align 8
  call void @TMsetColor(%struct.node* %32, i64 1)
  %33 = load %struct.node*, %struct.node** %2, align 8
  %34 = call %struct.node* @TMparentOf(%struct.node* %33)
  call void @TMsetColor(%struct.node* %34, i64 0)
  %35 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %36 = load %struct.node*, %struct.node** %2, align 8
  %37 = call %struct.node* @TMparentOf(%struct.node* %36)
  call void @TMrotateLeft(%struct.rbtree* %35, %struct.node* %37)
  %38 = load %struct.node*, %struct.node** %2, align 8
  %39 = call %struct.node* @TMparentOf(%struct.node* %38)
  %40 = call %struct.node* @TMrightOf(%struct.node* %39)
  store %struct.node* %40, %struct.node** %sib, align 8
  br label %41

; <label>:41                                      ; preds = %31, %24
  %42 = load %struct.node*, %struct.node** %sib, align 8
  %43 = call %struct.node* @TMleftOf(%struct.node* %42)
  %44 = call i64 @TMcolorOf(%struct.node* %43)
  %45 = icmp eq i64 %44, 1
  br i1 %45, label %46, label %55

; <label>:46                                      ; preds = %41
  %47 = load %struct.node*, %struct.node** %sib, align 8
  %48 = call %struct.node* @TMrightOf(%struct.node* %47)
  %49 = call i64 @TMcolorOf(%struct.node* %48)
  %50 = icmp eq i64 %49, 1
  br i1 %50, label %51, label %55

; <label>:51                                      ; preds = %46
  %52 = load %struct.node*, %struct.node** %sib, align 8
  call void @TMsetColor(%struct.node* %52, i64 0)
  %53 = load %struct.node*, %struct.node** %2, align 8
  %54 = call %struct.node* @TMparentOf(%struct.node* %53)
  store %struct.node* %54, %struct.node** %2, align 8
  br label %86

; <label>:55                                      ; preds = %46, %41
  %56 = load %struct.node*, %struct.node** %sib, align 8
  %57 = call %struct.node* @TMrightOf(%struct.node* %56)
  %58 = call i64 @TMcolorOf(%struct.node* %57)
  %59 = icmp eq i64 %58, 1
  br i1 %59, label %60, label %69

; <label>:60                                      ; preds = %55
  %61 = load %struct.node*, %struct.node** %sib, align 8
  %62 = call %struct.node* @TMleftOf(%struct.node* %61)
  call void @TMsetColor(%struct.node* %62, i64 1)
  %63 = load %struct.node*, %struct.node** %sib, align 8
  call void @TMsetColor(%struct.node* %63, i64 0)
  %64 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %65 = load %struct.node*, %struct.node** %sib, align 8
  call void @TMrotateRight(%struct.rbtree* %64, %struct.node* %65)
  %66 = load %struct.node*, %struct.node** %2, align 8
  %67 = call %struct.node* @TMparentOf(%struct.node* %66)
  %68 = call %struct.node* @TMrightOf(%struct.node* %67)
  store %struct.node* %68, %struct.node** %sib, align 8
  br label %69

; <label>:69                                      ; preds = %60, %55
  %70 = load %struct.node*, %struct.node** %sib, align 8
  %71 = load %struct.node*, %struct.node** %2, align 8
  %72 = call %struct.node* @TMparentOf(%struct.node* %71)
  %73 = call i64 @TMcolorOf(%struct.node* %72)
  call void @TMsetColor(%struct.node* %70, i64 %73)
  %74 = load %struct.node*, %struct.node** %2, align 8
  %75 = call %struct.node* @TMparentOf(%struct.node* %74)
  call void @TMsetColor(%struct.node* %75, i64 1)
  %76 = load %struct.node*, %struct.node** %sib, align 8
  %77 = call %struct.node* @TMrightOf(%struct.node* %76)
  call void @TMsetColor(%struct.node* %77, i64 1)
  %78 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %79 = load %struct.node*, %struct.node** %2, align 8
  %80 = call %struct.node* @TMparentOf(%struct.node* %79)
  call void @TMrotateLeft(%struct.rbtree* %78, %struct.node* %80)
  %81 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %82 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %81, i32 0, i32 0
  %83 = load %struct.node*, %struct.node** %82, align 8
  %84 = bitcast %struct.node* %83 to i8*
  %85 = bitcast i8* %84 to %struct.node*
  store %struct.node* %85, %struct.node** %2, align 8
  br label %86

; <label>:86                                      ; preds = %69, %51
  br label %150

; <label>:87                                      ; preds = %18
  %88 = load %struct.node*, %struct.node** %2, align 8
  %89 = call %struct.node* @TMparentOf(%struct.node* %88)
  %90 = call %struct.node* @TMleftOf(%struct.node* %89)
  store %struct.node* %90, %struct.node** %sib1, align 8
  %91 = load %struct.node*, %struct.node** %sib1, align 8
  %92 = call i64 @TMcolorOf(%struct.node* %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %104

; <label>:94                                      ; preds = %87
  %95 = load %struct.node*, %struct.node** %sib1, align 8
  call void @TMsetColor(%struct.node* %95, i64 1)
  %96 = load %struct.node*, %struct.node** %2, align 8
  %97 = call %struct.node* @TMparentOf(%struct.node* %96)
  call void @TMsetColor(%struct.node* %97, i64 0)
  %98 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %99 = load %struct.node*, %struct.node** %2, align 8
  %100 = call %struct.node* @TMparentOf(%struct.node* %99)
  call void @TMrotateRight(%struct.rbtree* %98, %struct.node* %100)
  %101 = load %struct.node*, %struct.node** %2, align 8
  %102 = call %struct.node* @TMparentOf(%struct.node* %101)
  %103 = call %struct.node* @TMleftOf(%struct.node* %102)
  store %struct.node* %103, %struct.node** %sib1, align 8
  br label %104

; <label>:104                                     ; preds = %94, %87
  %105 = load %struct.node*, %struct.node** %sib1, align 8
  %106 = call %struct.node* @TMrightOf(%struct.node* %105)
  %107 = call i64 @TMcolorOf(%struct.node* %106)
  %108 = icmp eq i64 %107, 1
  br i1 %108, label %109, label %118

; <label>:109                                     ; preds = %104
  %110 = load %struct.node*, %struct.node** %sib1, align 8
  %111 = call %struct.node* @TMleftOf(%struct.node* %110)
  %112 = call i64 @TMcolorOf(%struct.node* %111)
  %113 = icmp eq i64 %112, 1
  br i1 %113, label %114, label %118

; <label>:114                                     ; preds = %109
  %115 = load %struct.node*, %struct.node** %sib1, align 8
  call void @TMsetColor(%struct.node* %115, i64 0)
  %116 = load %struct.node*, %struct.node** %2, align 8
  %117 = call %struct.node* @TMparentOf(%struct.node* %116)
  store %struct.node* %117, %struct.node** %2, align 8
  br label %149

; <label>:118                                     ; preds = %109, %104
  %119 = load %struct.node*, %struct.node** %sib1, align 8
  %120 = call %struct.node* @TMleftOf(%struct.node* %119)
  %121 = call i64 @TMcolorOf(%struct.node* %120)
  %122 = icmp eq i64 %121, 1
  br i1 %122, label %123, label %132

; <label>:123                                     ; preds = %118
  %124 = load %struct.node*, %struct.node** %sib1, align 8
  %125 = call %struct.node* @TMrightOf(%struct.node* %124)
  call void @TMsetColor(%struct.node* %125, i64 1)
  %126 = load %struct.node*, %struct.node** %sib1, align 8
  call void @TMsetColor(%struct.node* %126, i64 0)
  %127 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %128 = load %struct.node*, %struct.node** %sib1, align 8
  call void @TMrotateLeft(%struct.rbtree* %127, %struct.node* %128)
  %129 = load %struct.node*, %struct.node** %2, align 8
  %130 = call %struct.node* @TMparentOf(%struct.node* %129)
  %131 = call %struct.node* @TMleftOf(%struct.node* %130)
  store %struct.node* %131, %struct.node** %sib1, align 8
  br label %132

; <label>:132                                     ; preds = %123, %118
  %133 = load %struct.node*, %struct.node** %sib1, align 8
  %134 = load %struct.node*, %struct.node** %2, align 8
  %135 = call %struct.node* @TMparentOf(%struct.node* %134)
  %136 = call i64 @TMcolorOf(%struct.node* %135)
  call void @TMsetColor(%struct.node* %133, i64 %136)
  %137 = load %struct.node*, %struct.node** %2, align 8
  %138 = call %struct.node* @TMparentOf(%struct.node* %137)
  call void @TMsetColor(%struct.node* %138, i64 1)
  %139 = load %struct.node*, %struct.node** %sib1, align 8
  %140 = call %struct.node* @TMleftOf(%struct.node* %139)
  call void @TMsetColor(%struct.node* %140, i64 1)
  %141 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %142 = load %struct.node*, %struct.node** %2, align 8
  %143 = call %struct.node* @TMparentOf(%struct.node* %142)
  call void @TMrotateRight(%struct.rbtree* %141, %struct.node* %143)
  %144 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %145 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %144, i32 0, i32 0
  %146 = load %struct.node*, %struct.node** %145, align 8
  %147 = bitcast %struct.node* %146 to i8*
  %148 = bitcast i8* %147 to %struct.node*
  store %struct.node* %148, %struct.node** %2, align 8
  br label %149

; <label>:149                                     ; preds = %132, %114
  br label %150

; <label>:150                                     ; preds = %149, %86
  br label %4

; <label>:151                                     ; preds = %16
  %152 = load %struct.node*, %struct.node** %2, align 8
  %153 = icmp ne %struct.node* %152, null
  br i1 %153, label %154, label %166

; <label>:154                                     ; preds = %151
  %155 = load %struct.node*, %struct.node** %2, align 8
  %156 = getelementptr inbounds %struct.node, %struct.node* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 1
  br i1 %158, label %159, label %166

; <label>:159                                     ; preds = %154
  %160 = load %struct.node*, %struct.node** %2, align 8
  %161 = getelementptr inbounds %struct.node, %struct.node* %160, i32 0, i32 5
  store i64 1, i64* %161, align 8
  %162 = load %struct.node*, %struct.node** %2, align 8
  %163 = getelementptr inbounds %struct.node, %struct.node* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %3, align 8
  %165 = load i64, i64* %3, align 8
  br label %166

; <label>:166                                     ; preds = %159, %154, %151
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
