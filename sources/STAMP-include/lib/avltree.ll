; ModuleID = 'avltree.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsw_avltree = type { %struct.jsw_avlnode*, i64 (i8*, i8*)*, i64 }
%struct.jsw_avlnode = type { i64, i8*, [2 x %struct.jsw_avlnode*] }
%struct.jsw_avltrav = type { %struct.jsw_avltree*, %struct.jsw_avlnode*, [64 x %struct.jsw_avlnode*], i64 }

; Function Attrs: nounwind uwtable
define %struct.jsw_avltree* @jsw_avlnew(i64 (i8*, i8*)* %cmp) #0 {
  %1 = alloca %struct.jsw_avltree*, align 8
  %2 = alloca i64 (i8*, i8*)*, align 8
  %rt = alloca %struct.jsw_avltree*, align 8
  store i64 (i8*, i8*)* %cmp, i64 (i8*, i8*)** %2, align 8
  %3 = call noalias i8* @malloc(i64 24) #4
  %4 = bitcast i8* %3 to %struct.jsw_avltree*
  store %struct.jsw_avltree* %4, %struct.jsw_avltree** %rt, align 8
  %5 = load %struct.jsw_avltree*, %struct.jsw_avltree** %rt, align 8
  %6 = icmp eq %struct.jsw_avltree* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store %struct.jsw_avltree* null, %struct.jsw_avltree** %1, align 8
  br label %17

; <label>:8                                       ; preds = %0
  %9 = load %struct.jsw_avltree*, %struct.jsw_avltree** %rt, align 8
  %10 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %9, i32 0, i32 0
  store %struct.jsw_avlnode* null, %struct.jsw_avlnode** %10, align 8
  %11 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %2, align 8
  %12 = load %struct.jsw_avltree*, %struct.jsw_avltree** %rt, align 8
  %13 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %12, i32 0, i32 1
  store i64 (i8*, i8*)* %11, i64 (i8*, i8*)** %13, align 8
  %14 = load %struct.jsw_avltree*, %struct.jsw_avltree** %rt, align 8
  %15 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.jsw_avltree*, %struct.jsw_avltree** %rt, align 8
  store %struct.jsw_avltree* %16, %struct.jsw_avltree** %1, align 8
  br label %17

; <label>:17                                      ; preds = %8, %7
  %18 = load %struct.jsw_avltree*, %struct.jsw_avltree** %1, align 8
  ret %struct.jsw_avltree* %18
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define %struct.jsw_avltree* @Pjsw_avlnew(i64 (i8*, i8*)* %cmp) #0 {
  %1 = alloca %struct.jsw_avltree*, align 8
  %2 = alloca i64 (i8*, i8*)*, align 8
  %rt = alloca %struct.jsw_avltree*, align 8
  store i64 (i8*, i8*)* %cmp, i64 (i8*, i8*)** %2, align 8
  %3 = call noalias i8* @malloc(i64 24) #4
  %4 = bitcast i8* %3 to %struct.jsw_avltree*
  store %struct.jsw_avltree* %4, %struct.jsw_avltree** %rt, align 8
  %5 = load %struct.jsw_avltree*, %struct.jsw_avltree** %rt, align 8
  %6 = icmp eq %struct.jsw_avltree* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store %struct.jsw_avltree* null, %struct.jsw_avltree** %1, align 8
  br label %17

; <label>:8                                       ; preds = %0
  %9 = load %struct.jsw_avltree*, %struct.jsw_avltree** %rt, align 8
  %10 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %9, i32 0, i32 0
  store %struct.jsw_avlnode* null, %struct.jsw_avlnode** %10, align 8
  %11 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %2, align 8
  %12 = load %struct.jsw_avltree*, %struct.jsw_avltree** %rt, align 8
  %13 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %12, i32 0, i32 1
  store i64 (i8*, i8*)* %11, i64 (i8*, i8*)** %13, align 8
  %14 = load %struct.jsw_avltree*, %struct.jsw_avltree** %rt, align 8
  %15 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.jsw_avltree*, %struct.jsw_avltree** %rt, align 8
  store %struct.jsw_avltree* %16, %struct.jsw_avltree** %1, align 8
  br label %17

; <label>:17                                      ; preds = %8, %7
  %18 = load %struct.jsw_avltree*, %struct.jsw_avltree** %1, align 8
  ret %struct.jsw_avltree* %18
}

; Function Attrs: nounwind uwtable
define void @jsw_avldelete(%struct.jsw_avltree* %tree) #0 {
  %1 = alloca %struct.jsw_avltree*, align 8
  %it = alloca %struct.jsw_avlnode*, align 8
  %save = alloca %struct.jsw_avlnode*, align 8
  store %struct.jsw_avltree* %tree, %struct.jsw_avltree** %1, align 8
  %2 = load %struct.jsw_avltree*, %struct.jsw_avltree** %1, align 8
  %3 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %2, i32 0, i32 0
  %4 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %3, align 8
  store %struct.jsw_avlnode* %4, %struct.jsw_avlnode** %it, align 8
  br label %5

; <label>:5                                       ; preds = %37, %0
  %6 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %7 = icmp ne %struct.jsw_avlnode* %6, null
  br i1 %7, label %8, label %39

; <label>:8                                       ; preds = %5
  %9 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %10 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %9, i32 0, i32 2
  %11 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %10, i64 0, i64 0
  %12 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %11, align 8
  %13 = icmp eq %struct.jsw_avlnode* %12, null
  br i1 %13, label %14, label %21

; <label>:14                                      ; preds = %8
  %15 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %16 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %15, i32 0, i32 2
  %17 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %16, i64 0, i64 1
  %18 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %17, align 8
  store %struct.jsw_avlnode* %18, %struct.jsw_avlnode** %save, align 8
  %19 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %20 = bitcast %struct.jsw_avlnode* %19 to i8*
  call void @free(i8* %20) #4
  br label %37

; <label>:21                                      ; preds = %8
  %22 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %23 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %22, i32 0, i32 2
  %24 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %23, i64 0, i64 0
  %25 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %24, align 8
  store %struct.jsw_avlnode* %25, %struct.jsw_avlnode** %save, align 8
  %26 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save, align 8
  %27 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %26, i32 0, i32 2
  %28 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %27, i64 0, i64 1
  %29 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %28, align 8
  %30 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %31 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %30, i32 0, i32 2
  %32 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %31, i64 0, i64 0
  store %struct.jsw_avlnode* %29, %struct.jsw_avlnode** %32, align 8
  %33 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %34 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save, align 8
  %35 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %34, i32 0, i32 2
  %36 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %35, i64 0, i64 1
  store %struct.jsw_avlnode* %33, %struct.jsw_avlnode** %36, align 8
  br label %37

; <label>:37                                      ; preds = %21, %14
  %38 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save, align 8
  store %struct.jsw_avlnode* %38, %struct.jsw_avlnode** %it, align 8
  br label %5

; <label>:39                                      ; preds = %5
  %40 = load %struct.jsw_avltree*, %struct.jsw_avltree** %1, align 8
  %41 = bitcast %struct.jsw_avltree* %40 to i8*
  call void @free(i8* %41) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @Pjsw_avldelete(%struct.jsw_avltree* %tree) #0 {
  %1 = alloca %struct.jsw_avltree*, align 8
  %it = alloca %struct.jsw_avlnode*, align 8
  %save = alloca %struct.jsw_avlnode*, align 8
  store %struct.jsw_avltree* %tree, %struct.jsw_avltree** %1, align 8
  %2 = load %struct.jsw_avltree*, %struct.jsw_avltree** %1, align 8
  %3 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %2, i32 0, i32 0
  %4 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %3, align 8
  store %struct.jsw_avlnode* %4, %struct.jsw_avlnode** %it, align 8
  br label %5

; <label>:5                                       ; preds = %37, %0
  %6 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %7 = icmp ne %struct.jsw_avlnode* %6, null
  br i1 %7, label %8, label %39

; <label>:8                                       ; preds = %5
  %9 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %10 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %9, i32 0, i32 2
  %11 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %10, i64 0, i64 0
  %12 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %11, align 8
  %13 = icmp eq %struct.jsw_avlnode* %12, null
  br i1 %13, label %14, label %21

; <label>:14                                      ; preds = %8
  %15 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %16 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %15, i32 0, i32 2
  %17 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %16, i64 0, i64 1
  %18 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %17, align 8
  store %struct.jsw_avlnode* %18, %struct.jsw_avlnode** %save, align 8
  %19 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %20 = bitcast %struct.jsw_avlnode* %19 to i8*
  call void @free(i8* %20) #4
  br label %37

; <label>:21                                      ; preds = %8
  %22 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %23 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %22, i32 0, i32 2
  %24 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %23, i64 0, i64 0
  %25 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %24, align 8
  store %struct.jsw_avlnode* %25, %struct.jsw_avlnode** %save, align 8
  %26 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save, align 8
  %27 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %26, i32 0, i32 2
  %28 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %27, i64 0, i64 1
  %29 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %28, align 8
  %30 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %31 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %30, i32 0, i32 2
  %32 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %31, i64 0, i64 0
  store %struct.jsw_avlnode* %29, %struct.jsw_avlnode** %32, align 8
  %33 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %34 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save, align 8
  %35 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %34, i32 0, i32 2
  %36 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %35, i64 0, i64 1
  store %struct.jsw_avlnode* %33, %struct.jsw_avlnode** %36, align 8
  br label %37

; <label>:37                                      ; preds = %21, %14
  %38 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save, align 8
  store %struct.jsw_avlnode* %38, %struct.jsw_avlnode** %it, align 8
  br label %5

; <label>:39                                      ; preds = %5
  %40 = load %struct.jsw_avltree*, %struct.jsw_avltree** %1, align 8
  %41 = bitcast %struct.jsw_avltree* %40 to i8*
  call void @free(i8* %41) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @jsw_avlfind(%struct.jsw_avltree* %tree, i8* %data) #0 {
  %1 = alloca %struct.jsw_avltree*, align 8
  %2 = alloca i8*, align 8
  %it = alloca %struct.jsw_avlnode*, align 8
  %cmp = alloca i64, align 8
  store %struct.jsw_avltree* %tree, %struct.jsw_avltree** %1, align 8
  store i8* %data, i8** %2, align 8
  %3 = load %struct.jsw_avltree*, %struct.jsw_avltree** %1, align 8
  %4 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %3, i32 0, i32 0
  %5 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %4, align 8
  store %struct.jsw_avlnode* %5, %struct.jsw_avlnode** %it, align 8
  br label %6

; <label>:6                                       ; preds = %21, %0
  %7 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %8 = icmp ne %struct.jsw_avlnode* %7, null
  br i1 %8, label %9, label %30

; <label>:9                                       ; preds = %6
  %10 = load %struct.jsw_avltree*, %struct.jsw_avltree** %1, align 8
  %11 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %10, i32 0, i32 1
  %12 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %11, align 8
  %13 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %14 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = call i64 %12(i8* %15, i8* %16)
  store i64 %17, i64* %cmp, align 8
  %18 = load i64, i64* %cmp, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %9
  br label %30

; <label>:21                                      ; preds = %9
  %22 = load i64, i64* %cmp, align 8
  %23 = icmp slt i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %27 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %26, i32 0, i32 2
  %28 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %27, i64 0, i64 %25
  %29 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %28, align 8
  store %struct.jsw_avlnode* %29, %struct.jsw_avlnode** %it, align 8
  br label %6

; <label>:30                                      ; preds = %20, %6
  %31 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %32 = icmp eq %struct.jsw_avlnode* %31, null
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %30
  br label %38

; <label>:34                                      ; preds = %30
  %35 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %36 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  br label %38

; <label>:38                                      ; preds = %34, %33
  %39 = phi i8* [ null, %33 ], [ %37, %34 ]
  ret i8* %39
}

; Function Attrs: nounwind uwtable
define i64 @jsw_avlinsert(%struct.jsw_avltree* %tree, i8* %data) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.jsw_avltree*, align 8
  %3 = alloca i8*, align 8
  %head = alloca %struct.jsw_avlnode, align 8
  %s = alloca %struct.jsw_avlnode*, align 8
  %t = alloca %struct.jsw_avlnode*, align 8
  %p = alloca %struct.jsw_avlnode*, align 8
  %q = alloca %struct.jsw_avlnode*, align 8
  %dir = alloca i64, align 8
  %n = alloca %struct.jsw_avlnode*, align 8
  %bal = alloca i64, align 8
  %save = alloca %struct.jsw_avlnode*, align 8
  %n1 = alloca %struct.jsw_avlnode*, align 8
  %nn = alloca %struct.jsw_avlnode*, align 8
  %save2 = alloca %struct.jsw_avlnode*, align 8
  store %struct.jsw_avltree* %tree, %struct.jsw_avltree** %2, align 8
  store i8* %data, i8** %3, align 8
  %4 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %5 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %4, i32 0, i32 0
  %6 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %5, align 8
  %7 = icmp eq %struct.jsw_avlnode* %6, null
  br i1 %7, label %8, label %20

; <label>:8                                       ; preds = %0
  %9 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call %struct.jsw_avlnode* @new_node(%struct.jsw_avltree* %9, i8* %10)
  %12 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %13 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %12, i32 0, i32 0
  store %struct.jsw_avlnode* %11, %struct.jsw_avlnode** %13, align 8
  %14 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %15 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %14, i32 0, i32 0
  %16 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %15, align 8
  %17 = icmp eq %struct.jsw_avlnode* %16, null
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %8
  store i64 0, i64* %1, align 8
  br label %380

; <label>:19                                      ; preds = %8
  br label %375

; <label>:20                                      ; preds = %0
  %21 = bitcast %struct.jsw_avlnode* %head to i8*
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 32, i32 8, i1 false)
  store %struct.jsw_avlnode* %head, %struct.jsw_avlnode** %t, align 8
  %22 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %23 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %22, i32 0, i32 0
  %24 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %23, align 8
  %25 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %t, align 8
  %26 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %25, i32 0, i32 2
  %27 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %26, i64 0, i64 1
  store %struct.jsw_avlnode* %24, %struct.jsw_avlnode** %27, align 8
  %28 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %t, align 8
  %29 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %28, i32 0, i32 2
  %30 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %29, i64 0, i64 1
  %31 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %30, align 8
  store %struct.jsw_avlnode* %31, %struct.jsw_avlnode** %p, align 8
  store %struct.jsw_avlnode* %31, %struct.jsw_avlnode** %s, align 8
  br label %32

; <label>:32                                      ; preds = %61, %20
  %33 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %34 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %33, i32 0, i32 1
  %35 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %34, align 8
  %36 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %37 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = call i64 %35(i8* %38, i8* %39)
  %41 = icmp slt i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %dir, align 8
  %44 = load i64, i64* %dir, align 8
  %45 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %46 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %45, i32 0, i32 2
  %47 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %46, i64 0, i64 %44
  %48 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %47, align 8
  store %struct.jsw_avlnode* %48, %struct.jsw_avlnode** %q, align 8
  %49 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  %50 = icmp eq %struct.jsw_avlnode* %49, null
  br i1 %50, label %51, label %52

; <label>:51                                      ; preds = %32
  br label %63

; <label>:52                                      ; preds = %32
  %53 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  %54 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

; <label>:57                                      ; preds = %52
  %58 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  store %struct.jsw_avlnode* %58, %struct.jsw_avlnode** %t, align 8
  %59 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  store %struct.jsw_avlnode* %59, %struct.jsw_avlnode** %s, align 8
  br label %60

; <label>:60                                      ; preds = %57, %52
  br label %61

; <label>:61                                      ; preds = %60
  %62 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  store %struct.jsw_avlnode* %62, %struct.jsw_avlnode** %p, align 8
  br label %32

; <label>:63                                      ; preds = %51
  %64 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %65 = load i8*, i8** %3, align 8
  %66 = call %struct.jsw_avlnode* @new_node(%struct.jsw_avltree* %64, i8* %65)
  store %struct.jsw_avlnode* %66, %struct.jsw_avlnode** %q, align 8
  %67 = load i64, i64* %dir, align 8
  %68 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %69 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %68, i32 0, i32 2
  %70 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %69, i64 0, i64 %67
  store %struct.jsw_avlnode* %66, %struct.jsw_avlnode** %70, align 8
  %71 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  %72 = icmp eq %struct.jsw_avlnode* %71, null
  br i1 %72, label %73, label %74

; <label>:73                                      ; preds = %63
  store i64 0, i64* %1, align 8
  br label %380

; <label>:74                                      ; preds = %63
  %75 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  store %struct.jsw_avlnode* %75, %struct.jsw_avlnode** %p, align 8
  br label %76

; <label>:76                                      ; preds = %100, %74
  %77 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %78 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  %79 = icmp ne %struct.jsw_avlnode* %77, %78
  br i1 %79, label %80, label %106

; <label>:80                                      ; preds = %76
  %81 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %82 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %81, i32 0, i32 1
  %83 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %82, align 8
  %84 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %85 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** %3, align 8
  %88 = call i64 %83(i8* %86, i8* %87)
  %89 = icmp slt i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %dir, align 8
  %92 = load i64, i64* %dir, align 8
  %93 = icmp eq i64 %92, 0
  %94 = select i1 %93, i32 -1, i32 1
  %95 = sext i32 %94 to i64
  %96 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %97 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, %95
  store i64 %99, i64* %97, align 8
  br label %100

; <label>:100                                     ; preds = %80
  %101 = load i64, i64* %dir, align 8
  %102 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %103 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %102, i32 0, i32 2
  %104 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %103, i64 0, i64 %101
  %105 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %104, align 8
  store %struct.jsw_avlnode* %105, %struct.jsw_avlnode** %p, align 8
  br label %76

; <label>:106                                     ; preds = %76
  %107 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  store %struct.jsw_avlnode* %107, %struct.jsw_avlnode** %q, align 8
  %108 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %109 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @abs(i32 %111) #5
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %114, label %351

; <label>:114                                     ; preds = %106
  %115 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %116 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %115, i32 0, i32 1
  %117 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %116, align 8
  %118 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %119 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load i8*, i8** %3, align 8
  %122 = call i64 %117(i8* %120, i8* %121)
  %123 = icmp slt i64 %122, 0
  %124 = zext i1 %123 to i32
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %dir, align 8
  br label %126

; <label>:126                                     ; preds = %114
  %127 = load i64, i64* %dir, align 8
  %128 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %129 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %128, i32 0, i32 2
  %130 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %129, i64 0, i64 %127
  %131 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %130, align 8
  store %struct.jsw_avlnode* %131, %struct.jsw_avlnode** %n, align 8
  %132 = load i64, i64* %dir, align 8
  %133 = icmp eq i64 %132, 0
  %134 = select i1 %133, i32 -1, i32 1
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %bal, align 8
  %136 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n, align 8
  %137 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %bal, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %186

; <label>:141                                     ; preds = %126
  %142 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n, align 8
  %143 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %142, i32 0, i32 0
  store i64 0, i64* %143, align 8
  %144 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %145 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %144, i32 0, i32 0
  store i64 0, i64* %145, align 8
  br label %146

; <label>:146                                     ; preds = %141
  %147 = load i64, i64* %dir, align 8
  %148 = icmp ne i64 %147, 0
  %149 = xor i1 %148, true
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = sext i32 %151 to i64
  %153 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %154 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %153, i32 0, i32 2
  %155 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %154, i64 0, i64 %152
  %156 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %155, align 8
  store %struct.jsw_avlnode* %156, %struct.jsw_avlnode** %save, align 8
  %157 = load i64, i64* %dir, align 8
  %158 = icmp ne i64 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = sext i32 %160 to i64
  %162 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save, align 8
  %163 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %162, i32 0, i32 2
  %164 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %163, i64 0, i64 %161
  %165 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %164, align 8
  %166 = load i64, i64* %dir, align 8
  %167 = icmp ne i64 %166, 0
  %168 = xor i1 %167, true
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = sext i32 %170 to i64
  %172 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %173 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %172, i32 0, i32 2
  %174 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %173, i64 0, i64 %171
  store %struct.jsw_avlnode* %165, %struct.jsw_avlnode** %174, align 8
  %175 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %176 = load i64, i64* %dir, align 8
  %177 = icmp ne i64 %176, 0
  %178 = xor i1 %177, true
  %179 = zext i1 %178 to i32
  %180 = sext i32 %179 to i64
  %181 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save, align 8
  %182 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %181, i32 0, i32 2
  %183 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %182, i64 0, i64 %180
  store %struct.jsw_avlnode* %175, %struct.jsw_avlnode** %183, align 8
  %184 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save, align 8
  store %struct.jsw_avlnode* %184, %struct.jsw_avlnode** %s, align 8
  br label %185

; <label>:185                                     ; preds = %146
  br label %349

; <label>:186                                     ; preds = %126
  br label %187

; <label>:187                                     ; preds = %186
  %188 = load i64, i64* %dir, align 8
  %189 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %190 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %189, i32 0, i32 2
  %191 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %190, i64 0, i64 %188
  %192 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %191, align 8
  store %struct.jsw_avlnode* %192, %struct.jsw_avlnode** %n1, align 8
  %193 = load i64, i64* %dir, align 8
  %194 = icmp ne i64 %193, 0
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  %197 = sext i32 %196 to i64
  %198 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n1, align 8
  %199 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %198, i32 0, i32 2
  %200 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %199, i64 0, i64 %197
  %201 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %200, align 8
  store %struct.jsw_avlnode* %201, %struct.jsw_avlnode** %nn, align 8
  %202 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %nn, align 8
  %203 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %211

; <label>:206                                     ; preds = %187
  %207 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n1, align 8
  %208 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %207, i32 0, i32 0
  store i64 0, i64* %208, align 8
  %209 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %210 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %209, i32 0, i32 0
  store i64 0, i64* %210, align 8
  br label %231

; <label>:211                                     ; preds = %187
  %212 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %nn, align 8
  %213 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* %bal, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %224

; <label>:217                                     ; preds = %211
  %218 = load i64, i64* %bal, align 8
  %219 = sub nsw i64 0, %218
  %220 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %221 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %220, i32 0, i32 0
  store i64 %219, i64* %221, align 8
  %222 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n1, align 8
  %223 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %222, i32 0, i32 0
  store i64 0, i64* %223, align 8
  br label %230

; <label>:224                                     ; preds = %211
  %225 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %226 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %225, i32 0, i32 0
  store i64 0, i64* %226, align 8
  %227 = load i64, i64* %bal, align 8
  %228 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n1, align 8
  %229 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %228, i32 0, i32 0
  store i64 %227, i64* %229, align 8
  br label %230

; <label>:230                                     ; preds = %224, %217
  br label %231

; <label>:231                                     ; preds = %230, %206
  %232 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %nn, align 8
  %233 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %232, i32 0, i32 0
  store i64 0, i64* %233, align 8
  br label %234

; <label>:234                                     ; preds = %231
  br label %235

; <label>:235                                     ; preds = %234
  %236 = load i64, i64* %dir, align 8
  %237 = icmp ne i64 %236, 0
  %238 = xor i1 %237, true
  %239 = zext i1 %238 to i32
  %240 = sext i32 %239 to i64
  %241 = load i64, i64* %dir, align 8
  %242 = icmp ne i64 %241, 0
  %243 = xor i1 %242, true
  %244 = xor i1 %243, true
  %245 = zext i1 %244 to i32
  %246 = sext i32 %245 to i64
  %247 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %248 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %247, i32 0, i32 2
  %249 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %248, i64 0, i64 %246
  %250 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %249, align 8
  %251 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %250, i32 0, i32 2
  %252 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %251, i64 0, i64 %240
  %253 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %252, align 8
  store %struct.jsw_avlnode* %253, %struct.jsw_avlnode** %save2, align 8
  %254 = load i64, i64* %dir, align 8
  %255 = icmp ne i64 %254, 0
  %256 = xor i1 %255, true
  %257 = xor i1 %256, true
  %258 = zext i1 %257 to i32
  %259 = sext i32 %258 to i64
  %260 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save2, align 8
  %261 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %260, i32 0, i32 2
  %262 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %261, i64 0, i64 %259
  %263 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %262, align 8
  %264 = load i64, i64* %dir, align 8
  %265 = icmp ne i64 %264, 0
  %266 = xor i1 %265, true
  %267 = zext i1 %266 to i32
  %268 = sext i32 %267 to i64
  %269 = load i64, i64* %dir, align 8
  %270 = icmp ne i64 %269, 0
  %271 = xor i1 %270, true
  %272 = xor i1 %271, true
  %273 = zext i1 %272 to i32
  %274 = sext i32 %273 to i64
  %275 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %276 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %275, i32 0, i32 2
  %277 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %276, i64 0, i64 %274
  %278 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %277, align 8
  %279 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %278, i32 0, i32 2
  %280 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %279, i64 0, i64 %268
  store %struct.jsw_avlnode* %263, %struct.jsw_avlnode** %280, align 8
  %281 = load i64, i64* %dir, align 8
  %282 = icmp ne i64 %281, 0
  %283 = xor i1 %282, true
  %284 = xor i1 %283, true
  %285 = zext i1 %284 to i32
  %286 = sext i32 %285 to i64
  %287 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %288 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %287, i32 0, i32 2
  %289 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %288, i64 0, i64 %286
  %290 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %289, align 8
  %291 = load i64, i64* %dir, align 8
  %292 = icmp ne i64 %291, 0
  %293 = xor i1 %292, true
  %294 = xor i1 %293, true
  %295 = zext i1 %294 to i32
  %296 = sext i32 %295 to i64
  %297 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save2, align 8
  %298 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %297, i32 0, i32 2
  %299 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %298, i64 0, i64 %296
  store %struct.jsw_avlnode* %290, %struct.jsw_avlnode** %299, align 8
  %300 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save2, align 8
  %301 = load i64, i64* %dir, align 8
  %302 = icmp ne i64 %301, 0
  %303 = xor i1 %302, true
  %304 = xor i1 %303, true
  %305 = zext i1 %304 to i32
  %306 = sext i32 %305 to i64
  %307 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %308 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %307, i32 0, i32 2
  %309 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %308, i64 0, i64 %306
  store %struct.jsw_avlnode* %300, %struct.jsw_avlnode** %309, align 8
  %310 = load i64, i64* %dir, align 8
  %311 = icmp ne i64 %310, 0
  %312 = xor i1 %311, true
  %313 = xor i1 %312, true
  %314 = zext i1 %313 to i32
  %315 = sext i32 %314 to i64
  %316 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %317 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %316, i32 0, i32 2
  %318 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %317, i64 0, i64 %315
  %319 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %318, align 8
  store %struct.jsw_avlnode* %319, %struct.jsw_avlnode** %save2, align 8
  %320 = load i64, i64* %dir, align 8
  %321 = icmp ne i64 %320, 0
  %322 = xor i1 %321, true
  %323 = zext i1 %322 to i32
  %324 = sext i32 %323 to i64
  %325 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save2, align 8
  %326 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %325, i32 0, i32 2
  %327 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %326, i64 0, i64 %324
  %328 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %327, align 8
  %329 = load i64, i64* %dir, align 8
  %330 = icmp ne i64 %329, 0
  %331 = xor i1 %330, true
  %332 = xor i1 %331, true
  %333 = zext i1 %332 to i32
  %334 = sext i32 %333 to i64
  %335 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %336 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %335, i32 0, i32 2
  %337 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %336, i64 0, i64 %334
  store %struct.jsw_avlnode* %328, %struct.jsw_avlnode** %337, align 8
  %338 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %339 = load i64, i64* %dir, align 8
  %340 = icmp ne i64 %339, 0
  %341 = xor i1 %340, true
  %342 = zext i1 %341 to i32
  %343 = sext i32 %342 to i64
  %344 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save2, align 8
  %345 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %344, i32 0, i32 2
  %346 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %345, i64 0, i64 %343
  store %struct.jsw_avlnode* %338, %struct.jsw_avlnode** %346, align 8
  %347 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save2, align 8
  store %struct.jsw_avlnode* %347, %struct.jsw_avlnode** %s, align 8
  br label %348

; <label>:348                                     ; preds = %235
  br label %349

; <label>:349                                     ; preds = %348, %185
  br label %350

; <label>:350                                     ; preds = %349
  br label %351

; <label>:351                                     ; preds = %350, %106
  %352 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  %353 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %head, i32 0, i32 2
  %354 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %353, i64 0, i64 1
  %355 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %354, align 8
  %356 = icmp eq %struct.jsw_avlnode* %352, %355
  br i1 %356, label %357, label %361

; <label>:357                                     ; preds = %351
  %358 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %359 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %360 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %359, i32 0, i32 0
  store %struct.jsw_avlnode* %358, %struct.jsw_avlnode** %360, align 8
  br label %374

; <label>:361                                     ; preds = %351
  %362 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %363 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  %364 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %t, align 8
  %365 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %364, i32 0, i32 2
  %366 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %365, i64 0, i64 1
  %367 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %366, align 8
  %368 = icmp eq %struct.jsw_avlnode* %363, %367
  %369 = zext i1 %368 to i32
  %370 = sext i32 %369 to i64
  %371 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %t, align 8
  %372 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %371, i32 0, i32 2
  %373 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %372, i64 0, i64 %370
  store %struct.jsw_avlnode* %362, %struct.jsw_avlnode** %373, align 8
  br label %374

; <label>:374                                     ; preds = %361, %357
  br label %375

; <label>:375                                     ; preds = %374, %19
  %376 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %377 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %376, i32 0, i32 2
  %378 = load i64, i64* %377, align 8
  %379 = add i64 %378, 1
  store i64 %379, i64* %377, align 8
  store i64 1, i64* %1, align 8
  br label %380

; <label>:380                                     ; preds = %375, %73, %18
  %381 = load i64, i64* %1, align 8
  ret i64 %381
}

; Function Attrs: nounwind uwtable
define internal %struct.jsw_avlnode* @new_node(%struct.jsw_avltree* %tree, i8* %data) #0 {
  %1 = alloca %struct.jsw_avlnode*, align 8
  %2 = alloca %struct.jsw_avltree*, align 8
  %3 = alloca i8*, align 8
  %rn = alloca %struct.jsw_avlnode*, align 8
  store %struct.jsw_avltree* %tree, %struct.jsw_avltree** %2, align 8
  store i8* %data, i8** %3, align 8
  %4 = call noalias i8* @malloc(i64 32) #4
  %5 = bitcast i8* %4 to %struct.jsw_avlnode*
  store %struct.jsw_avlnode* %5, %struct.jsw_avlnode** %rn, align 8
  %6 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %rn, align 8
  %7 = icmp eq %struct.jsw_avlnode* %6, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  store %struct.jsw_avlnode* null, %struct.jsw_avlnode** %1, align 8
  br label %22

; <label>:9                                       ; preds = %0
  %10 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %rn, align 8
  %11 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %rn, align 8
  %14 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %rn, align 8
  %16 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %15, i32 0, i32 2
  %17 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %16, i64 0, i64 1
  store %struct.jsw_avlnode* null, %struct.jsw_avlnode** %17, align 8
  %18 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %rn, align 8
  %19 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %18, i32 0, i32 2
  %20 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %19, i64 0, i64 0
  store %struct.jsw_avlnode* null, %struct.jsw_avlnode** %20, align 8
  %21 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %rn, align 8
  store %struct.jsw_avlnode* %21, %struct.jsw_avlnode** %1, align 8
  br label %22

; <label>:22                                      ; preds = %9, %8
  %23 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %1, align 8
  ret %struct.jsw_avlnode* %23
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #3

; Function Attrs: nounwind uwtable
define i64 @Pjsw_avlinsert(%struct.jsw_avltree* %tree, i8* %data) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.jsw_avltree*, align 8
  %3 = alloca i8*, align 8
  %head = alloca %struct.jsw_avlnode, align 8
  %s = alloca %struct.jsw_avlnode*, align 8
  %t = alloca %struct.jsw_avlnode*, align 8
  %p = alloca %struct.jsw_avlnode*, align 8
  %q = alloca %struct.jsw_avlnode*, align 8
  %dir = alloca i64, align 8
  %n = alloca %struct.jsw_avlnode*, align 8
  %bal = alloca i64, align 8
  %save = alloca %struct.jsw_avlnode*, align 8
  %n1 = alloca %struct.jsw_avlnode*, align 8
  %nn = alloca %struct.jsw_avlnode*, align 8
  %save2 = alloca %struct.jsw_avlnode*, align 8
  store %struct.jsw_avltree* %tree, %struct.jsw_avltree** %2, align 8
  store i8* %data, i8** %3, align 8
  %4 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %5 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %4, i32 0, i32 0
  %6 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %5, align 8
  %7 = icmp eq %struct.jsw_avlnode* %6, null
  br i1 %7, label %8, label %20

; <label>:8                                       ; preds = %0
  %9 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call %struct.jsw_avlnode* @Pnew_node(%struct.jsw_avltree* %9, i8* %10)
  %12 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %13 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %12, i32 0, i32 0
  store %struct.jsw_avlnode* %11, %struct.jsw_avlnode** %13, align 8
  %14 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %15 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %14, i32 0, i32 0
  %16 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %15, align 8
  %17 = icmp eq %struct.jsw_avlnode* %16, null
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %8
  store i64 0, i64* %1, align 8
  br label %380

; <label>:19                                      ; preds = %8
  br label %375

; <label>:20                                      ; preds = %0
  %21 = bitcast %struct.jsw_avlnode* %head to i8*
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 32, i32 8, i1 false)
  store %struct.jsw_avlnode* %head, %struct.jsw_avlnode** %t, align 8
  %22 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %23 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %22, i32 0, i32 0
  %24 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %23, align 8
  %25 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %t, align 8
  %26 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %25, i32 0, i32 2
  %27 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %26, i64 0, i64 1
  store %struct.jsw_avlnode* %24, %struct.jsw_avlnode** %27, align 8
  %28 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %t, align 8
  %29 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %28, i32 0, i32 2
  %30 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %29, i64 0, i64 1
  %31 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %30, align 8
  store %struct.jsw_avlnode* %31, %struct.jsw_avlnode** %p, align 8
  store %struct.jsw_avlnode* %31, %struct.jsw_avlnode** %s, align 8
  br label %32

; <label>:32                                      ; preds = %61, %20
  %33 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %34 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %33, i32 0, i32 1
  %35 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %34, align 8
  %36 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %37 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = call i64 %35(i8* %38, i8* %39)
  %41 = icmp slt i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %dir, align 8
  %44 = load i64, i64* %dir, align 8
  %45 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %46 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %45, i32 0, i32 2
  %47 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %46, i64 0, i64 %44
  %48 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %47, align 8
  store %struct.jsw_avlnode* %48, %struct.jsw_avlnode** %q, align 8
  %49 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  %50 = icmp eq %struct.jsw_avlnode* %49, null
  br i1 %50, label %51, label %52

; <label>:51                                      ; preds = %32
  br label %63

; <label>:52                                      ; preds = %32
  %53 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  %54 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

; <label>:57                                      ; preds = %52
  %58 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  store %struct.jsw_avlnode* %58, %struct.jsw_avlnode** %t, align 8
  %59 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  store %struct.jsw_avlnode* %59, %struct.jsw_avlnode** %s, align 8
  br label %60

; <label>:60                                      ; preds = %57, %52
  br label %61

; <label>:61                                      ; preds = %60
  %62 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  store %struct.jsw_avlnode* %62, %struct.jsw_avlnode** %p, align 8
  br label %32

; <label>:63                                      ; preds = %51
  %64 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %65 = load i8*, i8** %3, align 8
  %66 = call %struct.jsw_avlnode* @Pnew_node(%struct.jsw_avltree* %64, i8* %65)
  store %struct.jsw_avlnode* %66, %struct.jsw_avlnode** %q, align 8
  %67 = load i64, i64* %dir, align 8
  %68 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %69 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %68, i32 0, i32 2
  %70 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %69, i64 0, i64 %67
  store %struct.jsw_avlnode* %66, %struct.jsw_avlnode** %70, align 8
  %71 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  %72 = icmp eq %struct.jsw_avlnode* %71, null
  br i1 %72, label %73, label %74

; <label>:73                                      ; preds = %63
  store i64 0, i64* %1, align 8
  br label %380

; <label>:74                                      ; preds = %63
  %75 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  store %struct.jsw_avlnode* %75, %struct.jsw_avlnode** %p, align 8
  br label %76

; <label>:76                                      ; preds = %100, %74
  %77 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %78 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  %79 = icmp ne %struct.jsw_avlnode* %77, %78
  br i1 %79, label %80, label %106

; <label>:80                                      ; preds = %76
  %81 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %82 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %81, i32 0, i32 1
  %83 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %82, align 8
  %84 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %85 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** %3, align 8
  %88 = call i64 %83(i8* %86, i8* %87)
  %89 = icmp slt i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %dir, align 8
  %92 = load i64, i64* %dir, align 8
  %93 = icmp eq i64 %92, 0
  %94 = select i1 %93, i32 -1, i32 1
  %95 = sext i32 %94 to i64
  %96 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %97 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, %95
  store i64 %99, i64* %97, align 8
  br label %100

; <label>:100                                     ; preds = %80
  %101 = load i64, i64* %dir, align 8
  %102 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %103 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %102, i32 0, i32 2
  %104 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %103, i64 0, i64 %101
  %105 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %104, align 8
  store %struct.jsw_avlnode* %105, %struct.jsw_avlnode** %p, align 8
  br label %76

; <label>:106                                     ; preds = %76
  %107 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  store %struct.jsw_avlnode* %107, %struct.jsw_avlnode** %q, align 8
  %108 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %109 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @abs(i32 %111) #5
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %114, label %351

; <label>:114                                     ; preds = %106
  %115 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %116 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %115, i32 0, i32 1
  %117 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %116, align 8
  %118 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %119 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load i8*, i8** %3, align 8
  %122 = call i64 %117(i8* %120, i8* %121)
  %123 = icmp slt i64 %122, 0
  %124 = zext i1 %123 to i32
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %dir, align 8
  br label %126

; <label>:126                                     ; preds = %114
  %127 = load i64, i64* %dir, align 8
  %128 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %129 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %128, i32 0, i32 2
  %130 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %129, i64 0, i64 %127
  %131 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %130, align 8
  store %struct.jsw_avlnode* %131, %struct.jsw_avlnode** %n, align 8
  %132 = load i64, i64* %dir, align 8
  %133 = icmp eq i64 %132, 0
  %134 = select i1 %133, i32 -1, i32 1
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %bal, align 8
  %136 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n, align 8
  %137 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %bal, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %186

; <label>:141                                     ; preds = %126
  %142 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n, align 8
  %143 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %142, i32 0, i32 0
  store i64 0, i64* %143, align 8
  %144 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %145 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %144, i32 0, i32 0
  store i64 0, i64* %145, align 8
  br label %146

; <label>:146                                     ; preds = %141
  %147 = load i64, i64* %dir, align 8
  %148 = icmp ne i64 %147, 0
  %149 = xor i1 %148, true
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = sext i32 %151 to i64
  %153 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %154 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %153, i32 0, i32 2
  %155 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %154, i64 0, i64 %152
  %156 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %155, align 8
  store %struct.jsw_avlnode* %156, %struct.jsw_avlnode** %save, align 8
  %157 = load i64, i64* %dir, align 8
  %158 = icmp ne i64 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = sext i32 %160 to i64
  %162 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save, align 8
  %163 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %162, i32 0, i32 2
  %164 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %163, i64 0, i64 %161
  %165 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %164, align 8
  %166 = load i64, i64* %dir, align 8
  %167 = icmp ne i64 %166, 0
  %168 = xor i1 %167, true
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = sext i32 %170 to i64
  %172 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %173 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %172, i32 0, i32 2
  %174 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %173, i64 0, i64 %171
  store %struct.jsw_avlnode* %165, %struct.jsw_avlnode** %174, align 8
  %175 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %176 = load i64, i64* %dir, align 8
  %177 = icmp ne i64 %176, 0
  %178 = xor i1 %177, true
  %179 = zext i1 %178 to i32
  %180 = sext i32 %179 to i64
  %181 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save, align 8
  %182 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %181, i32 0, i32 2
  %183 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %182, i64 0, i64 %180
  store %struct.jsw_avlnode* %175, %struct.jsw_avlnode** %183, align 8
  %184 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save, align 8
  store %struct.jsw_avlnode* %184, %struct.jsw_avlnode** %s, align 8
  br label %185

; <label>:185                                     ; preds = %146
  br label %349

; <label>:186                                     ; preds = %126
  br label %187

; <label>:187                                     ; preds = %186
  %188 = load i64, i64* %dir, align 8
  %189 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %190 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %189, i32 0, i32 2
  %191 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %190, i64 0, i64 %188
  %192 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %191, align 8
  store %struct.jsw_avlnode* %192, %struct.jsw_avlnode** %n1, align 8
  %193 = load i64, i64* %dir, align 8
  %194 = icmp ne i64 %193, 0
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  %197 = sext i32 %196 to i64
  %198 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n1, align 8
  %199 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %198, i32 0, i32 2
  %200 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %199, i64 0, i64 %197
  %201 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %200, align 8
  store %struct.jsw_avlnode* %201, %struct.jsw_avlnode** %nn, align 8
  %202 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %nn, align 8
  %203 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %211

; <label>:206                                     ; preds = %187
  %207 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n1, align 8
  %208 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %207, i32 0, i32 0
  store i64 0, i64* %208, align 8
  %209 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %210 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %209, i32 0, i32 0
  store i64 0, i64* %210, align 8
  br label %231

; <label>:211                                     ; preds = %187
  %212 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %nn, align 8
  %213 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* %bal, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %224

; <label>:217                                     ; preds = %211
  %218 = load i64, i64* %bal, align 8
  %219 = sub nsw i64 0, %218
  %220 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %221 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %220, i32 0, i32 0
  store i64 %219, i64* %221, align 8
  %222 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n1, align 8
  %223 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %222, i32 0, i32 0
  store i64 0, i64* %223, align 8
  br label %230

; <label>:224                                     ; preds = %211
  %225 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %226 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %225, i32 0, i32 0
  store i64 0, i64* %226, align 8
  %227 = load i64, i64* %bal, align 8
  %228 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n1, align 8
  %229 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %228, i32 0, i32 0
  store i64 %227, i64* %229, align 8
  br label %230

; <label>:230                                     ; preds = %224, %217
  br label %231

; <label>:231                                     ; preds = %230, %206
  %232 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %nn, align 8
  %233 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %232, i32 0, i32 0
  store i64 0, i64* %233, align 8
  br label %234

; <label>:234                                     ; preds = %231
  br label %235

; <label>:235                                     ; preds = %234
  %236 = load i64, i64* %dir, align 8
  %237 = icmp ne i64 %236, 0
  %238 = xor i1 %237, true
  %239 = zext i1 %238 to i32
  %240 = sext i32 %239 to i64
  %241 = load i64, i64* %dir, align 8
  %242 = icmp ne i64 %241, 0
  %243 = xor i1 %242, true
  %244 = xor i1 %243, true
  %245 = zext i1 %244 to i32
  %246 = sext i32 %245 to i64
  %247 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %248 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %247, i32 0, i32 2
  %249 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %248, i64 0, i64 %246
  %250 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %249, align 8
  %251 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %250, i32 0, i32 2
  %252 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %251, i64 0, i64 %240
  %253 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %252, align 8
  store %struct.jsw_avlnode* %253, %struct.jsw_avlnode** %save2, align 8
  %254 = load i64, i64* %dir, align 8
  %255 = icmp ne i64 %254, 0
  %256 = xor i1 %255, true
  %257 = xor i1 %256, true
  %258 = zext i1 %257 to i32
  %259 = sext i32 %258 to i64
  %260 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save2, align 8
  %261 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %260, i32 0, i32 2
  %262 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %261, i64 0, i64 %259
  %263 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %262, align 8
  %264 = load i64, i64* %dir, align 8
  %265 = icmp ne i64 %264, 0
  %266 = xor i1 %265, true
  %267 = zext i1 %266 to i32
  %268 = sext i32 %267 to i64
  %269 = load i64, i64* %dir, align 8
  %270 = icmp ne i64 %269, 0
  %271 = xor i1 %270, true
  %272 = xor i1 %271, true
  %273 = zext i1 %272 to i32
  %274 = sext i32 %273 to i64
  %275 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %276 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %275, i32 0, i32 2
  %277 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %276, i64 0, i64 %274
  %278 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %277, align 8
  %279 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %278, i32 0, i32 2
  %280 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %279, i64 0, i64 %268
  store %struct.jsw_avlnode* %263, %struct.jsw_avlnode** %280, align 8
  %281 = load i64, i64* %dir, align 8
  %282 = icmp ne i64 %281, 0
  %283 = xor i1 %282, true
  %284 = xor i1 %283, true
  %285 = zext i1 %284 to i32
  %286 = sext i32 %285 to i64
  %287 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %288 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %287, i32 0, i32 2
  %289 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %288, i64 0, i64 %286
  %290 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %289, align 8
  %291 = load i64, i64* %dir, align 8
  %292 = icmp ne i64 %291, 0
  %293 = xor i1 %292, true
  %294 = xor i1 %293, true
  %295 = zext i1 %294 to i32
  %296 = sext i32 %295 to i64
  %297 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save2, align 8
  %298 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %297, i32 0, i32 2
  %299 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %298, i64 0, i64 %296
  store %struct.jsw_avlnode* %290, %struct.jsw_avlnode** %299, align 8
  %300 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save2, align 8
  %301 = load i64, i64* %dir, align 8
  %302 = icmp ne i64 %301, 0
  %303 = xor i1 %302, true
  %304 = xor i1 %303, true
  %305 = zext i1 %304 to i32
  %306 = sext i32 %305 to i64
  %307 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %308 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %307, i32 0, i32 2
  %309 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %308, i64 0, i64 %306
  store %struct.jsw_avlnode* %300, %struct.jsw_avlnode** %309, align 8
  %310 = load i64, i64* %dir, align 8
  %311 = icmp ne i64 %310, 0
  %312 = xor i1 %311, true
  %313 = xor i1 %312, true
  %314 = zext i1 %313 to i32
  %315 = sext i32 %314 to i64
  %316 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %317 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %316, i32 0, i32 2
  %318 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %317, i64 0, i64 %315
  %319 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %318, align 8
  store %struct.jsw_avlnode* %319, %struct.jsw_avlnode** %save2, align 8
  %320 = load i64, i64* %dir, align 8
  %321 = icmp ne i64 %320, 0
  %322 = xor i1 %321, true
  %323 = zext i1 %322 to i32
  %324 = sext i32 %323 to i64
  %325 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save2, align 8
  %326 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %325, i32 0, i32 2
  %327 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %326, i64 0, i64 %324
  %328 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %327, align 8
  %329 = load i64, i64* %dir, align 8
  %330 = icmp ne i64 %329, 0
  %331 = xor i1 %330, true
  %332 = xor i1 %331, true
  %333 = zext i1 %332 to i32
  %334 = sext i32 %333 to i64
  %335 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %336 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %335, i32 0, i32 2
  %337 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %336, i64 0, i64 %334
  store %struct.jsw_avlnode* %328, %struct.jsw_avlnode** %337, align 8
  %338 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %339 = load i64, i64* %dir, align 8
  %340 = icmp ne i64 %339, 0
  %341 = xor i1 %340, true
  %342 = zext i1 %341 to i32
  %343 = sext i32 %342 to i64
  %344 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save2, align 8
  %345 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %344, i32 0, i32 2
  %346 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %345, i64 0, i64 %343
  store %struct.jsw_avlnode* %338, %struct.jsw_avlnode** %346, align 8
  %347 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save2, align 8
  store %struct.jsw_avlnode* %347, %struct.jsw_avlnode** %s, align 8
  br label %348

; <label>:348                                     ; preds = %235
  br label %349

; <label>:349                                     ; preds = %348, %185
  br label %350

; <label>:350                                     ; preds = %349
  br label %351

; <label>:351                                     ; preds = %350, %106
  %352 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  %353 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %head, i32 0, i32 2
  %354 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %353, i64 0, i64 1
  %355 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %354, align 8
  %356 = icmp eq %struct.jsw_avlnode* %352, %355
  br i1 %356, label %357, label %361

; <label>:357                                     ; preds = %351
  %358 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %359 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %360 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %359, i32 0, i32 0
  store %struct.jsw_avlnode* %358, %struct.jsw_avlnode** %360, align 8
  br label %374

; <label>:361                                     ; preds = %351
  %362 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %363 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  %364 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %t, align 8
  %365 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %364, i32 0, i32 2
  %366 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %365, i64 0, i64 1
  %367 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %366, align 8
  %368 = icmp eq %struct.jsw_avlnode* %363, %367
  %369 = zext i1 %368 to i32
  %370 = sext i32 %369 to i64
  %371 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %t, align 8
  %372 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %371, i32 0, i32 2
  %373 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %372, i64 0, i64 %370
  store %struct.jsw_avlnode* %362, %struct.jsw_avlnode** %373, align 8
  br label %374

; <label>:374                                     ; preds = %361, %357
  br label %375

; <label>:375                                     ; preds = %374, %19
  %376 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %377 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %376, i32 0, i32 2
  %378 = load i64, i64* %377, align 8
  %379 = add i64 %378, 1
  store i64 %379, i64* %377, align 8
  store i64 1, i64* %1, align 8
  br label %380

; <label>:380                                     ; preds = %375, %73, %18
  %381 = load i64, i64* %1, align 8
  ret i64 %381
}

; Function Attrs: nounwind uwtable
define internal %struct.jsw_avlnode* @Pnew_node(%struct.jsw_avltree* %tree, i8* %data) #0 {
  %1 = alloca %struct.jsw_avlnode*, align 8
  %2 = alloca %struct.jsw_avltree*, align 8
  %3 = alloca i8*, align 8
  %rn = alloca %struct.jsw_avlnode*, align 8
  store %struct.jsw_avltree* %tree, %struct.jsw_avltree** %2, align 8
  store i8* %data, i8** %3, align 8
  %4 = call noalias i8* @malloc(i64 32) #4
  %5 = bitcast i8* %4 to %struct.jsw_avlnode*
  store %struct.jsw_avlnode* %5, %struct.jsw_avlnode** %rn, align 8
  %6 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %rn, align 8
  %7 = icmp eq %struct.jsw_avlnode* %6, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  store %struct.jsw_avlnode* null, %struct.jsw_avlnode** %1, align 8
  br label %22

; <label>:9                                       ; preds = %0
  %10 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %rn, align 8
  %11 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %rn, align 8
  %14 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %rn, align 8
  %16 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %15, i32 0, i32 2
  %17 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %16, i64 0, i64 1
  store %struct.jsw_avlnode* null, %struct.jsw_avlnode** %17, align 8
  %18 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %rn, align 8
  %19 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %18, i32 0, i32 2
  %20 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %19, i64 0, i64 0
  store %struct.jsw_avlnode* null, %struct.jsw_avlnode** %20, align 8
  %21 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %rn, align 8
  store %struct.jsw_avlnode* %21, %struct.jsw_avlnode** %1, align 8
  br label %22

; <label>:22                                      ; preds = %9, %8
  %23 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %1, align 8
  ret %struct.jsw_avlnode* %23
}

; Function Attrs: nounwind uwtable
define i64 @jsw_avlerase(%struct.jsw_avltree* %tree, i8* %data) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.jsw_avltree*, align 8
  %3 = alloca i8*, align 8
  %it = alloca %struct.jsw_avlnode*, align 8
  %up = alloca [64 x %struct.jsw_avlnode*], align 16
  %upd = alloca [64 x i64], align 16
  %top = alloca i64, align 8
  %done = alloca i64, align 8
  %dir = alloca i64, align 8
  %heir = alloca %struct.jsw_avlnode*, align 8
  %save = alloca i8*, align 8
  %n = alloca %struct.jsw_avlnode*, align 8
  %bal = alloca i64, align 8
  %save1 = alloca %struct.jsw_avlnode*, align 8
  %n2 = alloca %struct.jsw_avlnode*, align 8
  %nn = alloca %struct.jsw_avlnode*, align 8
  %save3 = alloca %struct.jsw_avlnode*, align 8
  %save4 = alloca %struct.jsw_avlnode*, align 8
  store %struct.jsw_avltree* %tree, %struct.jsw_avltree** %2, align 8
  store i8* %data, i8** %3, align 8
  %4 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %5 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %4, i32 0, i32 0
  %6 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %5, align 8
  %7 = icmp ne %struct.jsw_avlnode* %6, null
  br i1 %7, label %8, label %574

; <label>:8                                       ; preds = %0
  store i64 0, i64* %top, align 8
  store i64 0, i64* %done, align 8
  %9 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %10 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %9, i32 0, i32 0
  %11 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %10, align 8
  store %struct.jsw_avlnode* %11, %struct.jsw_avlnode** %it, align 8
  br label %12

; <label>:12                                      ; preds = %28, %8
  %13 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %14 = icmp eq %struct.jsw_avlnode* %13, null
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %12
  store i64 0, i64* %1, align 8
  br label %579

; <label>:16                                      ; preds = %12
  %17 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %18 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %17, i32 0, i32 1
  %19 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %18, align 8
  %20 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %21 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i64 %19(i8* %22, i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %16
  br label %54

; <label>:27                                      ; preds = %16
  br label %28

; <label>:28                                      ; preds = %27
  %29 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %30 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %29, i32 0, i32 1
  %31 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %30, align 8
  %32 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %33 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i64 %31(i8* %34, i8* %35)
  %37 = icmp slt i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %top, align 8
  %41 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %40
  store i64 %39, i64* %41, align 8
  %42 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %43 = load i64, i64* %top, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %top, align 8
  %45 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %43
  store %struct.jsw_avlnode* %42, %struct.jsw_avlnode** %45, align 8
  %46 = load i64, i64* %top, align 8
  %47 = sub nsw i64 %46, 1
  %48 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %51 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %50, i32 0, i32 2
  %52 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %51, i64 0, i64 %49
  %53 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %52, align 8
  store %struct.jsw_avlnode* %53, %struct.jsw_avlnode** %it, align 8
  br label %12

; <label>:54                                      ; preds = %26
  %55 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %56 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %55, i32 0, i32 2
  %57 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %56, i64 0, i64 0
  %58 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %57, align 8
  %59 = icmp eq %struct.jsw_avlnode* %58, null
  br i1 %59, label %66, label %60

; <label>:60                                      ; preds = %54
  %61 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %62 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %61, i32 0, i32 2
  %63 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %62, i64 0, i64 1
  %64 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %63, align 8
  %65 = icmp eq %struct.jsw_avlnode* %64, null
  br i1 %65, label %66, label %103

; <label>:66                                      ; preds = %60, %54
  %67 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %68 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %67, i32 0, i32 2
  %69 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %68, i64 0, i64 0
  %70 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %69, align 8
  %71 = icmp eq %struct.jsw_avlnode* %70, null
  %72 = zext i1 %71 to i32
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %dir, align 8
  %74 = load i64, i64* %top, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %92

; <label>:76                                      ; preds = %66
  %77 = load i64, i64* %dir, align 8
  %78 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %79 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %78, i32 0, i32 2
  %80 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %79, i64 0, i64 %77
  %81 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %80, align 8
  %82 = load i64, i64* %top, align 8
  %83 = sub nsw i64 %82, 1
  %84 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %top, align 8
  %87 = sub nsw i64 %86, 1
  %88 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %87
  %89 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %88, align 8
  %90 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %89, i32 0, i32 2
  %91 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %90, i64 0, i64 %85
  store %struct.jsw_avlnode* %81, %struct.jsw_avlnode** %91, align 8
  br label %100

; <label>:92                                      ; preds = %66
  %93 = load i64, i64* %dir, align 8
  %94 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %95 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %94, i32 0, i32 2
  %96 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %95, i64 0, i64 %93
  %97 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %96, align 8
  %98 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %99 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %98, i32 0, i32 0
  store %struct.jsw_avlnode* %97, %struct.jsw_avlnode** %99, align 8
  br label %100

; <label>:100                                     ; preds = %92, %76
  %101 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %102 = bitcast %struct.jsw_avlnode* %101 to i8*
  call void @free(i8* %102) #4
  br label %163

; <label>:103                                     ; preds = %60
  %104 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %105 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %104, i32 0, i32 2
  %106 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %105, i64 0, i64 1
  %107 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %106, align 8
  store %struct.jsw_avlnode* %107, %struct.jsw_avlnode** %heir, align 8
  %108 = load i64, i64* %top, align 8
  %109 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %108
  store i64 1, i64* %109, align 8
  %110 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %111 = load i64, i64* %top, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %top, align 8
  %113 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %111
  store %struct.jsw_avlnode* %110, %struct.jsw_avlnode** %113, align 8
  br label %114

; <label>:114                                     ; preds = %120, %103
  %115 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %116 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %115, i32 0, i32 2
  %117 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %116, i64 0, i64 0
  %118 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %117, align 8
  %119 = icmp ne %struct.jsw_avlnode* %118, null
  br i1 %119, label %120, label %131

; <label>:120                                     ; preds = %114
  %121 = load i64, i64* %top, align 8
  %122 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %121
  store i64 0, i64* %122, align 8
  %123 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %124 = load i64, i64* %top, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %top, align 8
  %126 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %124
  store %struct.jsw_avlnode* %123, %struct.jsw_avlnode** %126, align 8
  %127 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %128 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %127, i32 0, i32 2
  %129 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %128, i64 0, i64 0
  %130 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %129, align 8
  store %struct.jsw_avlnode* %130, %struct.jsw_avlnode** %heir, align 8
  br label %114

; <label>:131                                     ; preds = %114
  %132 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %133 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  store i8* %134, i8** %save, align 8
  %135 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %136 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %139 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load i8*, i8** %save, align 8
  %141 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %142 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  %143 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %144 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %143, i32 0, i32 2
  %145 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %144, i64 0, i64 1
  %146 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %145, align 8
  %147 = load i64, i64* %top, align 8
  %148 = sub nsw i64 %147, 1
  %149 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %148
  %150 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %149, align 8
  %151 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %152 = icmp eq %struct.jsw_avlnode* %150, %151
  %153 = zext i1 %152 to i32
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* %top, align 8
  %156 = sub nsw i64 %155, 1
  %157 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %156
  %158 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %157, align 8
  %159 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %158, i32 0, i32 2
  %160 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %159, i64 0, i64 %154
  store %struct.jsw_avlnode* %146, %struct.jsw_avlnode** %160, align 8
  %161 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %162 = bitcast %struct.jsw_avlnode* %161 to i8*
  call void @free(i8* %162) #4
  br label %163

; <label>:163                                     ; preds = %131, %100
  br label %164

; <label>:164                                     ; preds = %572, %163
  %165 = load i64, i64* %top, align 8
  %166 = add nsw i64 %165, -1
  store i64 %166, i64* %top, align 8
  %167 = icmp sge i64 %166, 0
  br i1 %167, label %168, label %172

; <label>:168                                     ; preds = %164
  %169 = load i64, i64* %done, align 8
  %170 = icmp ne i64 %169, 0
  %171 = xor i1 %170, true
  br label %172

; <label>:172                                     ; preds = %168, %164
  %173 = phi i1 [ false, %164 ], [ %171, %168 ]
  br i1 %173, label %174, label %573

; <label>:174                                     ; preds = %172
  %175 = load i64, i64* %top, align 8
  %176 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  %179 = select i1 %178, i32 -1, i32 1
  %180 = sext i32 %179 to i64
  %181 = load i64, i64* %top, align 8
  %182 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %181
  %183 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %182, align 8
  %184 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %185, %180
  store i64 %186, i64* %184, align 8
  %187 = load i64, i64* %top, align 8
  %188 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %187
  %189 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %188, align 8
  %190 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = trunc i64 %191 to i32
  %193 = call i32 @abs(i32 %192) #5
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %196

; <label>:195                                     ; preds = %174
  br label %573

; <label>:196                                     ; preds = %174
  %197 = load i64, i64* %top, align 8
  %198 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %197
  %199 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %198, align 8
  %200 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = trunc i64 %201 to i32
  %203 = call i32 @abs(i32 %202) #5
  %204 = icmp sgt i32 %203, 1
  br i1 %204, label %205, label %571

; <label>:205                                     ; preds = %196
  br label %206

; <label>:206                                     ; preds = %205
  %207 = load i64, i64* %top, align 8
  %208 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  %211 = xor i1 %210, true
  %212 = zext i1 %211 to i32
  %213 = sext i32 %212 to i64
  %214 = load i64, i64* %top, align 8
  %215 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %214
  %216 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %215, align 8
  %217 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %216, i32 0, i32 2
  %218 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %217, i64 0, i64 %213
  %219 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %218, align 8
  store %struct.jsw_avlnode* %219, %struct.jsw_avlnode** %n, align 8
  %220 = load i64, i64* %top, align 8
  %221 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = icmp eq i64 %222, 0
  %224 = select i1 %223, i32 -1, i32 1
  %225 = sext i32 %224 to i64
  store i64 %225, i64* %bal, align 8
  %226 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n, align 8
  %227 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* %bal, align 8
  %230 = sub nsw i64 0, %229
  %231 = icmp eq i64 %228, %230
  br i1 %231, label %232, label %285

; <label>:232                                     ; preds = %206
  %233 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n, align 8
  %234 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %233, i32 0, i32 0
  store i64 0, i64* %234, align 8
  %235 = load i64, i64* %top, align 8
  %236 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %235
  %237 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %236, align 8
  %238 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %237, i32 0, i32 0
  store i64 0, i64* %238, align 8
  br label %239

; <label>:239                                     ; preds = %232
  %240 = load i64, i64* %top, align 8
  %241 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  %244 = xor i1 %243, true
  %245 = zext i1 %244 to i32
  %246 = sext i32 %245 to i64
  %247 = load i64, i64* %top, align 8
  %248 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %247
  %249 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %248, align 8
  %250 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %249, i32 0, i32 2
  %251 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %250, i64 0, i64 %246
  %252 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %251, align 8
  store %struct.jsw_avlnode* %252, %struct.jsw_avlnode** %save1, align 8
  %253 = load i64, i64* %top, align 8
  %254 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %253
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save1, align 8
  %257 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %256, i32 0, i32 2
  %258 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %257, i64 0, i64 %255
  %259 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %258, align 8
  %260 = load i64, i64* %top, align 8
  %261 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %260
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  %264 = xor i1 %263, true
  %265 = zext i1 %264 to i32
  %266 = sext i32 %265 to i64
  %267 = load i64, i64* %top, align 8
  %268 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %267
  %269 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %268, align 8
  %270 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %269, i32 0, i32 2
  %271 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %270, i64 0, i64 %266
  store %struct.jsw_avlnode* %259, %struct.jsw_avlnode** %271, align 8
  %272 = load i64, i64* %top, align 8
  %273 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %272
  %274 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %273, align 8
  %275 = load i64, i64* %top, align 8
  %276 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %275
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save1, align 8
  %279 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %278, i32 0, i32 2
  %280 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %279, i64 0, i64 %277
  store %struct.jsw_avlnode* %274, %struct.jsw_avlnode** %280, align 8
  %281 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save1, align 8
  %282 = load i64, i64* %top, align 8
  %283 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %282
  store %struct.jsw_avlnode* %281, %struct.jsw_avlnode** %283, align 8
  br label %284

; <label>:284                                     ; preds = %239
  br label %547

; <label>:285                                     ; preds = %206
  %286 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n, align 8
  %287 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* %bal, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %490

; <label>:291                                     ; preds = %285
  br label %292

; <label>:292                                     ; preds = %291
  %293 = load i64, i64* %top, align 8
  %294 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %293
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  %297 = xor i1 %296, true
  %298 = zext i1 %297 to i32
  %299 = sext i32 %298 to i64
  %300 = load i64, i64* %top, align 8
  %301 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %300
  %302 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %301, align 8
  %303 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %302, i32 0, i32 2
  %304 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %303, i64 0, i64 %299
  %305 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %304, align 8
  store %struct.jsw_avlnode* %305, %struct.jsw_avlnode** %n2, align 8
  %306 = load i64, i64* %top, align 8
  %307 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %306
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  %310 = xor i1 %309, true
  %311 = xor i1 %310, true
  %312 = zext i1 %311 to i32
  %313 = sext i32 %312 to i64
  %314 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n2, align 8
  %315 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %314, i32 0, i32 2
  %316 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %315, i64 0, i64 %313
  %317 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %316, align 8
  store %struct.jsw_avlnode* %317, %struct.jsw_avlnode** %nn, align 8
  %318 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %nn, align 8
  %319 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %322, label %329

; <label>:322                                     ; preds = %292
  %323 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n2, align 8
  %324 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %323, i32 0, i32 0
  store i64 0, i64* %324, align 8
  %325 = load i64, i64* %top, align 8
  %326 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %325
  %327 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %326, align 8
  %328 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %327, i32 0, i32 0
  store i64 0, i64* %328, align 8
  br label %356

; <label>:329                                     ; preds = %292
  %330 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %nn, align 8
  %331 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* %bal, align 8
  %334 = sub nsw i64 0, %333
  %335 = icmp eq i64 %332, %334
  br i1 %335, label %336, label %346

; <label>:336                                     ; preds = %329
  %337 = load i64, i64* %bal, align 8
  %338 = sub nsw i64 0, %337
  %339 = sub nsw i64 0, %338
  %340 = load i64, i64* %top, align 8
  %341 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %340
  %342 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %341, align 8
  %343 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %342, i32 0, i32 0
  store i64 %339, i64* %343, align 8
  %344 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n2, align 8
  %345 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %344, i32 0, i32 0
  store i64 0, i64* %345, align 8
  br label %355

; <label>:346                                     ; preds = %329
  %347 = load i64, i64* %top, align 8
  %348 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %347
  %349 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %348, align 8
  %350 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %349, i32 0, i32 0
  store i64 0, i64* %350, align 8
  %351 = load i64, i64* %bal, align 8
  %352 = sub nsw i64 0, %351
  %353 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n2, align 8
  %354 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %353, i32 0, i32 0
  store i64 %352, i64* %354, align 8
  br label %355

; <label>:355                                     ; preds = %346, %336
  br label %356

; <label>:356                                     ; preds = %355, %322
  %357 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %nn, align 8
  %358 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %357, i32 0, i32 0
  store i64 0, i64* %358, align 8
  br label %359

; <label>:359                                     ; preds = %356
  br label %360

; <label>:360                                     ; preds = %359
  %361 = load i64, i64* %top, align 8
  %362 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %361
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* %top, align 8
  %365 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %364
  %366 = load i64, i64* %365, align 8
  %367 = icmp ne i64 %366, 0
  %368 = xor i1 %367, true
  %369 = zext i1 %368 to i32
  %370 = sext i32 %369 to i64
  %371 = load i64, i64* %top, align 8
  %372 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %371
  %373 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %372, align 8
  %374 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %373, i32 0, i32 2
  %375 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %374, i64 0, i64 %370
  %376 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %375, align 8
  %377 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %376, i32 0, i32 2
  %378 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %377, i64 0, i64 %363
  %379 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %378, align 8
  store %struct.jsw_avlnode* %379, %struct.jsw_avlnode** %save3, align 8
  %380 = load i64, i64* %top, align 8
  %381 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %380
  %382 = load i64, i64* %381, align 8
  %383 = icmp ne i64 %382, 0
  %384 = xor i1 %383, true
  %385 = zext i1 %384 to i32
  %386 = sext i32 %385 to i64
  %387 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save3, align 8
  %388 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %387, i32 0, i32 2
  %389 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %388, i64 0, i64 %386
  %390 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %389, align 8
  %391 = load i64, i64* %top, align 8
  %392 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %391
  %393 = load i64, i64* %392, align 8
  %394 = load i64, i64* %top, align 8
  %395 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %394
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  %398 = xor i1 %397, true
  %399 = zext i1 %398 to i32
  %400 = sext i32 %399 to i64
  %401 = load i64, i64* %top, align 8
  %402 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %401
  %403 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %402, align 8
  %404 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %403, i32 0, i32 2
  %405 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %404, i64 0, i64 %400
  %406 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %405, align 8
  %407 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %406, i32 0, i32 2
  %408 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %407, i64 0, i64 %393
  store %struct.jsw_avlnode* %390, %struct.jsw_avlnode** %408, align 8
  %409 = load i64, i64* %top, align 8
  %410 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %409
  %411 = load i64, i64* %410, align 8
  %412 = icmp ne i64 %411, 0
  %413 = xor i1 %412, true
  %414 = zext i1 %413 to i32
  %415 = sext i32 %414 to i64
  %416 = load i64, i64* %top, align 8
  %417 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %416
  %418 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %417, align 8
  %419 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %418, i32 0, i32 2
  %420 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %419, i64 0, i64 %415
  %421 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %420, align 8
  %422 = load i64, i64* %top, align 8
  %423 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %422
  %424 = load i64, i64* %423, align 8
  %425 = icmp ne i64 %424, 0
  %426 = xor i1 %425, true
  %427 = zext i1 %426 to i32
  %428 = sext i32 %427 to i64
  %429 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save3, align 8
  %430 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %429, i32 0, i32 2
  %431 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %430, i64 0, i64 %428
  store %struct.jsw_avlnode* %421, %struct.jsw_avlnode** %431, align 8
  %432 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save3, align 8
  %433 = load i64, i64* %top, align 8
  %434 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %433
  %435 = load i64, i64* %434, align 8
  %436 = icmp ne i64 %435, 0
  %437 = xor i1 %436, true
  %438 = zext i1 %437 to i32
  %439 = sext i32 %438 to i64
  %440 = load i64, i64* %top, align 8
  %441 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %440
  %442 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %441, align 8
  %443 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %442, i32 0, i32 2
  %444 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %443, i64 0, i64 %439
  store %struct.jsw_avlnode* %432, %struct.jsw_avlnode** %444, align 8
  %445 = load i64, i64* %top, align 8
  %446 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %445
  %447 = load i64, i64* %446, align 8
  %448 = icmp ne i64 %447, 0
  %449 = xor i1 %448, true
  %450 = zext i1 %449 to i32
  %451 = sext i32 %450 to i64
  %452 = load i64, i64* %top, align 8
  %453 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %452
  %454 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %453, align 8
  %455 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %454, i32 0, i32 2
  %456 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %455, i64 0, i64 %451
  %457 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %456, align 8
  store %struct.jsw_avlnode* %457, %struct.jsw_avlnode** %save3, align 8
  %458 = load i64, i64* %top, align 8
  %459 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %458
  %460 = load i64, i64* %459, align 8
  %461 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save3, align 8
  %462 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %461, i32 0, i32 2
  %463 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %462, i64 0, i64 %460
  %464 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %463, align 8
  %465 = load i64, i64* %top, align 8
  %466 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %465
  %467 = load i64, i64* %466, align 8
  %468 = icmp ne i64 %467, 0
  %469 = xor i1 %468, true
  %470 = zext i1 %469 to i32
  %471 = sext i32 %470 to i64
  %472 = load i64, i64* %top, align 8
  %473 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %472
  %474 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %473, align 8
  %475 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %474, i32 0, i32 2
  %476 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %475, i64 0, i64 %471
  store %struct.jsw_avlnode* %464, %struct.jsw_avlnode** %476, align 8
  %477 = load i64, i64* %top, align 8
  %478 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %477
  %479 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %478, align 8
  %480 = load i64, i64* %top, align 8
  %481 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %480
  %482 = load i64, i64* %481, align 8
  %483 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save3, align 8
  %484 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %483, i32 0, i32 2
  %485 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %484, i64 0, i64 %482
  store %struct.jsw_avlnode* %479, %struct.jsw_avlnode** %485, align 8
  %486 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save3, align 8
  %487 = load i64, i64* %top, align 8
  %488 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %487
  store %struct.jsw_avlnode* %486, %struct.jsw_avlnode** %488, align 8
  br label %489

; <label>:489                                     ; preds = %360
  br label %546

; <label>:490                                     ; preds = %285
  %491 = load i64, i64* %bal, align 8
  %492 = sub nsw i64 0, %491
  %493 = load i64, i64* %top, align 8
  %494 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %493
  %495 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %494, align 8
  %496 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %495, i32 0, i32 0
  store i64 %492, i64* %496, align 8
  %497 = load i64, i64* %bal, align 8
  %498 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n, align 8
  %499 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %498, i32 0, i32 0
  store i64 %497, i64* %499, align 8
  br label %500

; <label>:500                                     ; preds = %490
  %501 = load i64, i64* %top, align 8
  %502 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %501
  %503 = load i64, i64* %502, align 8
  %504 = icmp ne i64 %503, 0
  %505 = xor i1 %504, true
  %506 = zext i1 %505 to i32
  %507 = sext i32 %506 to i64
  %508 = load i64, i64* %top, align 8
  %509 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %508
  %510 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %509, align 8
  %511 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %510, i32 0, i32 2
  %512 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %511, i64 0, i64 %507
  %513 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %512, align 8
  store %struct.jsw_avlnode* %513, %struct.jsw_avlnode** %save4, align 8
  %514 = load i64, i64* %top, align 8
  %515 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %514
  %516 = load i64, i64* %515, align 8
  %517 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save4, align 8
  %518 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %517, i32 0, i32 2
  %519 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %518, i64 0, i64 %516
  %520 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %519, align 8
  %521 = load i64, i64* %top, align 8
  %522 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %521
  %523 = load i64, i64* %522, align 8
  %524 = icmp ne i64 %523, 0
  %525 = xor i1 %524, true
  %526 = zext i1 %525 to i32
  %527 = sext i32 %526 to i64
  %528 = load i64, i64* %top, align 8
  %529 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %528
  %530 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %529, align 8
  %531 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %530, i32 0, i32 2
  %532 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %531, i64 0, i64 %527
  store %struct.jsw_avlnode* %520, %struct.jsw_avlnode** %532, align 8
  %533 = load i64, i64* %top, align 8
  %534 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %533
  %535 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %534, align 8
  %536 = load i64, i64* %top, align 8
  %537 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %536
  %538 = load i64, i64* %537, align 8
  %539 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save4, align 8
  %540 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %539, i32 0, i32 2
  %541 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %540, i64 0, i64 %538
  store %struct.jsw_avlnode* %535, %struct.jsw_avlnode** %541, align 8
  %542 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save4, align 8
  %543 = load i64, i64* %top, align 8
  %544 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %543
  store %struct.jsw_avlnode* %542, %struct.jsw_avlnode** %544, align 8
  br label %545

; <label>:545                                     ; preds = %500
  store i64 1, i64* %done, align 8
  br label %546

; <label>:546                                     ; preds = %545, %489
  br label %547

; <label>:547                                     ; preds = %546, %284
  br label %548

; <label>:548                                     ; preds = %547
  %549 = load i64, i64* %top, align 8
  %550 = icmp ne i64 %549, 0
  br i1 %550, label %551, label %565

; <label>:551                                     ; preds = %548
  %552 = load i64, i64* %top, align 8
  %553 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %552
  %554 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %553, align 8
  %555 = load i64, i64* %top, align 8
  %556 = sub nsw i64 %555, 1
  %557 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %556
  %558 = load i64, i64* %557, align 8
  %559 = load i64, i64* %top, align 8
  %560 = sub nsw i64 %559, 1
  %561 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %560
  %562 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %561, align 8
  %563 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %562, i32 0, i32 2
  %564 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %563, i64 0, i64 %558
  store %struct.jsw_avlnode* %554, %struct.jsw_avlnode** %564, align 8
  br label %570

; <label>:565                                     ; preds = %548
  %566 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 0
  %567 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %566, align 16
  %568 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %569 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %568, i32 0, i32 0
  store %struct.jsw_avlnode* %567, %struct.jsw_avlnode** %569, align 8
  br label %570

; <label>:570                                     ; preds = %565, %551
  br label %571

; <label>:571                                     ; preds = %570, %196
  br label %572

; <label>:572                                     ; preds = %571
  br label %164

; <label>:573                                     ; preds = %195, %172
  br label %574

; <label>:574                                     ; preds = %573, %0
  %575 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %576 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %575, i32 0, i32 2
  %577 = load i64, i64* %576, align 8
  %578 = add i64 %577, -1
  store i64 %578, i64* %576, align 8
  store i64 1, i64* %1, align 8
  br label %579

; <label>:579                                     ; preds = %574, %15
  %580 = load i64, i64* %1, align 8
  ret i64 %580
}

; Function Attrs: nounwind uwtable
define i64 @Pjsw_avlerase(%struct.jsw_avltree* %tree, i8* %data) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.jsw_avltree*, align 8
  %3 = alloca i8*, align 8
  %it = alloca %struct.jsw_avlnode*, align 8
  %up = alloca [64 x %struct.jsw_avlnode*], align 16
  %upd = alloca [64 x i64], align 16
  %top = alloca i64, align 8
  %done = alloca i64, align 8
  %dir = alloca i64, align 8
  %heir = alloca %struct.jsw_avlnode*, align 8
  %save = alloca i8*, align 8
  %n = alloca %struct.jsw_avlnode*, align 8
  %bal = alloca i64, align 8
  %save1 = alloca %struct.jsw_avlnode*, align 8
  %n2 = alloca %struct.jsw_avlnode*, align 8
  %nn = alloca %struct.jsw_avlnode*, align 8
  %save3 = alloca %struct.jsw_avlnode*, align 8
  %save4 = alloca %struct.jsw_avlnode*, align 8
  store %struct.jsw_avltree* %tree, %struct.jsw_avltree** %2, align 8
  store i8* %data, i8** %3, align 8
  %4 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %5 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %4, i32 0, i32 0
  %6 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %5, align 8
  %7 = icmp ne %struct.jsw_avlnode* %6, null
  br i1 %7, label %8, label %574

; <label>:8                                       ; preds = %0
  store i64 0, i64* %top, align 8
  store i64 0, i64* %done, align 8
  %9 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %10 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %9, i32 0, i32 0
  %11 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %10, align 8
  store %struct.jsw_avlnode* %11, %struct.jsw_avlnode** %it, align 8
  br label %12

; <label>:12                                      ; preds = %28, %8
  %13 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %14 = icmp eq %struct.jsw_avlnode* %13, null
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %12
  store i64 0, i64* %1, align 8
  br label %579

; <label>:16                                      ; preds = %12
  %17 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %18 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %17, i32 0, i32 1
  %19 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %18, align 8
  %20 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %21 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i64 %19(i8* %22, i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %16
  br label %54

; <label>:27                                      ; preds = %16
  br label %28

; <label>:28                                      ; preds = %27
  %29 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %30 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %29, i32 0, i32 1
  %31 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %30, align 8
  %32 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %33 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i64 %31(i8* %34, i8* %35)
  %37 = icmp slt i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %top, align 8
  %41 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %40
  store i64 %39, i64* %41, align 8
  %42 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %43 = load i64, i64* %top, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %top, align 8
  %45 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %43
  store %struct.jsw_avlnode* %42, %struct.jsw_avlnode** %45, align 8
  %46 = load i64, i64* %top, align 8
  %47 = sub nsw i64 %46, 1
  %48 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %51 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %50, i32 0, i32 2
  %52 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %51, i64 0, i64 %49
  %53 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %52, align 8
  store %struct.jsw_avlnode* %53, %struct.jsw_avlnode** %it, align 8
  br label %12

; <label>:54                                      ; preds = %26
  %55 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %56 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %55, i32 0, i32 2
  %57 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %56, i64 0, i64 0
  %58 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %57, align 8
  %59 = icmp eq %struct.jsw_avlnode* %58, null
  br i1 %59, label %66, label %60

; <label>:60                                      ; preds = %54
  %61 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %62 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %61, i32 0, i32 2
  %63 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %62, i64 0, i64 1
  %64 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %63, align 8
  %65 = icmp eq %struct.jsw_avlnode* %64, null
  br i1 %65, label %66, label %103

; <label>:66                                      ; preds = %60, %54
  %67 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %68 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %67, i32 0, i32 2
  %69 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %68, i64 0, i64 0
  %70 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %69, align 8
  %71 = icmp eq %struct.jsw_avlnode* %70, null
  %72 = zext i1 %71 to i32
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %dir, align 8
  %74 = load i64, i64* %top, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %92

; <label>:76                                      ; preds = %66
  %77 = load i64, i64* %dir, align 8
  %78 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %79 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %78, i32 0, i32 2
  %80 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %79, i64 0, i64 %77
  %81 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %80, align 8
  %82 = load i64, i64* %top, align 8
  %83 = sub nsw i64 %82, 1
  %84 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %top, align 8
  %87 = sub nsw i64 %86, 1
  %88 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %87
  %89 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %88, align 8
  %90 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %89, i32 0, i32 2
  %91 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %90, i64 0, i64 %85
  store %struct.jsw_avlnode* %81, %struct.jsw_avlnode** %91, align 8
  br label %100

; <label>:92                                      ; preds = %66
  %93 = load i64, i64* %dir, align 8
  %94 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %95 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %94, i32 0, i32 2
  %96 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %95, i64 0, i64 %93
  %97 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %96, align 8
  %98 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %99 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %98, i32 0, i32 0
  store %struct.jsw_avlnode* %97, %struct.jsw_avlnode** %99, align 8
  br label %100

; <label>:100                                     ; preds = %92, %76
  %101 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %102 = bitcast %struct.jsw_avlnode* %101 to i8*
  call void @free(i8* %102) #4
  br label %163

; <label>:103                                     ; preds = %60
  %104 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %105 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %104, i32 0, i32 2
  %106 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %105, i64 0, i64 1
  %107 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %106, align 8
  store %struct.jsw_avlnode* %107, %struct.jsw_avlnode** %heir, align 8
  %108 = load i64, i64* %top, align 8
  %109 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %108
  store i64 1, i64* %109, align 8
  %110 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %111 = load i64, i64* %top, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %top, align 8
  %113 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %111
  store %struct.jsw_avlnode* %110, %struct.jsw_avlnode** %113, align 8
  br label %114

; <label>:114                                     ; preds = %120, %103
  %115 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %116 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %115, i32 0, i32 2
  %117 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %116, i64 0, i64 0
  %118 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %117, align 8
  %119 = icmp ne %struct.jsw_avlnode* %118, null
  br i1 %119, label %120, label %131

; <label>:120                                     ; preds = %114
  %121 = load i64, i64* %top, align 8
  %122 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %121
  store i64 0, i64* %122, align 8
  %123 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %124 = load i64, i64* %top, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %top, align 8
  %126 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %124
  store %struct.jsw_avlnode* %123, %struct.jsw_avlnode** %126, align 8
  %127 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %128 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %127, i32 0, i32 2
  %129 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %128, i64 0, i64 0
  %130 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %129, align 8
  store %struct.jsw_avlnode* %130, %struct.jsw_avlnode** %heir, align 8
  br label %114

; <label>:131                                     ; preds = %114
  %132 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %133 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  store i8* %134, i8** %save, align 8
  %135 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %136 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %139 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load i8*, i8** %save, align 8
  %141 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %142 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  %143 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %144 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %143, i32 0, i32 2
  %145 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %144, i64 0, i64 1
  %146 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %145, align 8
  %147 = load i64, i64* %top, align 8
  %148 = sub nsw i64 %147, 1
  %149 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %148
  %150 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %149, align 8
  %151 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %152 = icmp eq %struct.jsw_avlnode* %150, %151
  %153 = zext i1 %152 to i32
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* %top, align 8
  %156 = sub nsw i64 %155, 1
  %157 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %156
  %158 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %157, align 8
  %159 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %158, i32 0, i32 2
  %160 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %159, i64 0, i64 %154
  store %struct.jsw_avlnode* %146, %struct.jsw_avlnode** %160, align 8
  %161 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %162 = bitcast %struct.jsw_avlnode* %161 to i8*
  call void @free(i8* %162) #4
  br label %163

; <label>:163                                     ; preds = %131, %100
  br label %164

; <label>:164                                     ; preds = %572, %163
  %165 = load i64, i64* %top, align 8
  %166 = add nsw i64 %165, -1
  store i64 %166, i64* %top, align 8
  %167 = icmp sge i64 %166, 0
  br i1 %167, label %168, label %172

; <label>:168                                     ; preds = %164
  %169 = load i64, i64* %done, align 8
  %170 = icmp ne i64 %169, 0
  %171 = xor i1 %170, true
  br label %172

; <label>:172                                     ; preds = %168, %164
  %173 = phi i1 [ false, %164 ], [ %171, %168 ]
  br i1 %173, label %174, label %573

; <label>:174                                     ; preds = %172
  %175 = load i64, i64* %top, align 8
  %176 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  %179 = select i1 %178, i32 -1, i32 1
  %180 = sext i32 %179 to i64
  %181 = load i64, i64* %top, align 8
  %182 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %181
  %183 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %182, align 8
  %184 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %185, %180
  store i64 %186, i64* %184, align 8
  %187 = load i64, i64* %top, align 8
  %188 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %187
  %189 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %188, align 8
  %190 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = trunc i64 %191 to i32
  %193 = call i32 @abs(i32 %192) #5
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %196

; <label>:195                                     ; preds = %174
  br label %573

; <label>:196                                     ; preds = %174
  %197 = load i64, i64* %top, align 8
  %198 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %197
  %199 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %198, align 8
  %200 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = trunc i64 %201 to i32
  %203 = call i32 @abs(i32 %202) #5
  %204 = icmp sgt i32 %203, 1
  br i1 %204, label %205, label %571

; <label>:205                                     ; preds = %196
  br label %206

; <label>:206                                     ; preds = %205
  %207 = load i64, i64* %top, align 8
  %208 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  %211 = xor i1 %210, true
  %212 = zext i1 %211 to i32
  %213 = sext i32 %212 to i64
  %214 = load i64, i64* %top, align 8
  %215 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %214
  %216 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %215, align 8
  %217 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %216, i32 0, i32 2
  %218 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %217, i64 0, i64 %213
  %219 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %218, align 8
  store %struct.jsw_avlnode* %219, %struct.jsw_avlnode** %n, align 8
  %220 = load i64, i64* %top, align 8
  %221 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = icmp eq i64 %222, 0
  %224 = select i1 %223, i32 -1, i32 1
  %225 = sext i32 %224 to i64
  store i64 %225, i64* %bal, align 8
  %226 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n, align 8
  %227 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* %bal, align 8
  %230 = sub nsw i64 0, %229
  %231 = icmp eq i64 %228, %230
  br i1 %231, label %232, label %285

; <label>:232                                     ; preds = %206
  %233 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n, align 8
  %234 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %233, i32 0, i32 0
  store i64 0, i64* %234, align 8
  %235 = load i64, i64* %top, align 8
  %236 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %235
  %237 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %236, align 8
  %238 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %237, i32 0, i32 0
  store i64 0, i64* %238, align 8
  br label %239

; <label>:239                                     ; preds = %232
  %240 = load i64, i64* %top, align 8
  %241 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  %244 = xor i1 %243, true
  %245 = zext i1 %244 to i32
  %246 = sext i32 %245 to i64
  %247 = load i64, i64* %top, align 8
  %248 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %247
  %249 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %248, align 8
  %250 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %249, i32 0, i32 2
  %251 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %250, i64 0, i64 %246
  %252 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %251, align 8
  store %struct.jsw_avlnode* %252, %struct.jsw_avlnode** %save1, align 8
  %253 = load i64, i64* %top, align 8
  %254 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %253
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save1, align 8
  %257 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %256, i32 0, i32 2
  %258 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %257, i64 0, i64 %255
  %259 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %258, align 8
  %260 = load i64, i64* %top, align 8
  %261 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %260
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  %264 = xor i1 %263, true
  %265 = zext i1 %264 to i32
  %266 = sext i32 %265 to i64
  %267 = load i64, i64* %top, align 8
  %268 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %267
  %269 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %268, align 8
  %270 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %269, i32 0, i32 2
  %271 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %270, i64 0, i64 %266
  store %struct.jsw_avlnode* %259, %struct.jsw_avlnode** %271, align 8
  %272 = load i64, i64* %top, align 8
  %273 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %272
  %274 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %273, align 8
  %275 = load i64, i64* %top, align 8
  %276 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %275
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save1, align 8
  %279 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %278, i32 0, i32 2
  %280 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %279, i64 0, i64 %277
  store %struct.jsw_avlnode* %274, %struct.jsw_avlnode** %280, align 8
  %281 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save1, align 8
  %282 = load i64, i64* %top, align 8
  %283 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %282
  store %struct.jsw_avlnode* %281, %struct.jsw_avlnode** %283, align 8
  br label %284

; <label>:284                                     ; preds = %239
  br label %547

; <label>:285                                     ; preds = %206
  %286 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n, align 8
  %287 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* %bal, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %490

; <label>:291                                     ; preds = %285
  br label %292

; <label>:292                                     ; preds = %291
  %293 = load i64, i64* %top, align 8
  %294 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %293
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  %297 = xor i1 %296, true
  %298 = zext i1 %297 to i32
  %299 = sext i32 %298 to i64
  %300 = load i64, i64* %top, align 8
  %301 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %300
  %302 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %301, align 8
  %303 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %302, i32 0, i32 2
  %304 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %303, i64 0, i64 %299
  %305 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %304, align 8
  store %struct.jsw_avlnode* %305, %struct.jsw_avlnode** %n2, align 8
  %306 = load i64, i64* %top, align 8
  %307 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %306
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  %310 = xor i1 %309, true
  %311 = xor i1 %310, true
  %312 = zext i1 %311 to i32
  %313 = sext i32 %312 to i64
  %314 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n2, align 8
  %315 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %314, i32 0, i32 2
  %316 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %315, i64 0, i64 %313
  %317 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %316, align 8
  store %struct.jsw_avlnode* %317, %struct.jsw_avlnode** %nn, align 8
  %318 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %nn, align 8
  %319 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %322, label %329

; <label>:322                                     ; preds = %292
  %323 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n2, align 8
  %324 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %323, i32 0, i32 0
  store i64 0, i64* %324, align 8
  %325 = load i64, i64* %top, align 8
  %326 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %325
  %327 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %326, align 8
  %328 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %327, i32 0, i32 0
  store i64 0, i64* %328, align 8
  br label %356

; <label>:329                                     ; preds = %292
  %330 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %nn, align 8
  %331 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* %bal, align 8
  %334 = sub nsw i64 0, %333
  %335 = icmp eq i64 %332, %334
  br i1 %335, label %336, label %346

; <label>:336                                     ; preds = %329
  %337 = load i64, i64* %bal, align 8
  %338 = sub nsw i64 0, %337
  %339 = sub nsw i64 0, %338
  %340 = load i64, i64* %top, align 8
  %341 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %340
  %342 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %341, align 8
  %343 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %342, i32 0, i32 0
  store i64 %339, i64* %343, align 8
  %344 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n2, align 8
  %345 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %344, i32 0, i32 0
  store i64 0, i64* %345, align 8
  br label %355

; <label>:346                                     ; preds = %329
  %347 = load i64, i64* %top, align 8
  %348 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %347
  %349 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %348, align 8
  %350 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %349, i32 0, i32 0
  store i64 0, i64* %350, align 8
  %351 = load i64, i64* %bal, align 8
  %352 = sub nsw i64 0, %351
  %353 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n2, align 8
  %354 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %353, i32 0, i32 0
  store i64 %352, i64* %354, align 8
  br label %355

; <label>:355                                     ; preds = %346, %336
  br label %356

; <label>:356                                     ; preds = %355, %322
  %357 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %nn, align 8
  %358 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %357, i32 0, i32 0
  store i64 0, i64* %358, align 8
  br label %359

; <label>:359                                     ; preds = %356
  br label %360

; <label>:360                                     ; preds = %359
  %361 = load i64, i64* %top, align 8
  %362 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %361
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* %top, align 8
  %365 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %364
  %366 = load i64, i64* %365, align 8
  %367 = icmp ne i64 %366, 0
  %368 = xor i1 %367, true
  %369 = zext i1 %368 to i32
  %370 = sext i32 %369 to i64
  %371 = load i64, i64* %top, align 8
  %372 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %371
  %373 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %372, align 8
  %374 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %373, i32 0, i32 2
  %375 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %374, i64 0, i64 %370
  %376 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %375, align 8
  %377 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %376, i32 0, i32 2
  %378 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %377, i64 0, i64 %363
  %379 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %378, align 8
  store %struct.jsw_avlnode* %379, %struct.jsw_avlnode** %save3, align 8
  %380 = load i64, i64* %top, align 8
  %381 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %380
  %382 = load i64, i64* %381, align 8
  %383 = icmp ne i64 %382, 0
  %384 = xor i1 %383, true
  %385 = zext i1 %384 to i32
  %386 = sext i32 %385 to i64
  %387 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save3, align 8
  %388 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %387, i32 0, i32 2
  %389 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %388, i64 0, i64 %386
  %390 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %389, align 8
  %391 = load i64, i64* %top, align 8
  %392 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %391
  %393 = load i64, i64* %392, align 8
  %394 = load i64, i64* %top, align 8
  %395 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %394
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  %398 = xor i1 %397, true
  %399 = zext i1 %398 to i32
  %400 = sext i32 %399 to i64
  %401 = load i64, i64* %top, align 8
  %402 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %401
  %403 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %402, align 8
  %404 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %403, i32 0, i32 2
  %405 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %404, i64 0, i64 %400
  %406 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %405, align 8
  %407 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %406, i32 0, i32 2
  %408 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %407, i64 0, i64 %393
  store %struct.jsw_avlnode* %390, %struct.jsw_avlnode** %408, align 8
  %409 = load i64, i64* %top, align 8
  %410 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %409
  %411 = load i64, i64* %410, align 8
  %412 = icmp ne i64 %411, 0
  %413 = xor i1 %412, true
  %414 = zext i1 %413 to i32
  %415 = sext i32 %414 to i64
  %416 = load i64, i64* %top, align 8
  %417 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %416
  %418 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %417, align 8
  %419 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %418, i32 0, i32 2
  %420 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %419, i64 0, i64 %415
  %421 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %420, align 8
  %422 = load i64, i64* %top, align 8
  %423 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %422
  %424 = load i64, i64* %423, align 8
  %425 = icmp ne i64 %424, 0
  %426 = xor i1 %425, true
  %427 = zext i1 %426 to i32
  %428 = sext i32 %427 to i64
  %429 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save3, align 8
  %430 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %429, i32 0, i32 2
  %431 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %430, i64 0, i64 %428
  store %struct.jsw_avlnode* %421, %struct.jsw_avlnode** %431, align 8
  %432 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save3, align 8
  %433 = load i64, i64* %top, align 8
  %434 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %433
  %435 = load i64, i64* %434, align 8
  %436 = icmp ne i64 %435, 0
  %437 = xor i1 %436, true
  %438 = zext i1 %437 to i32
  %439 = sext i32 %438 to i64
  %440 = load i64, i64* %top, align 8
  %441 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %440
  %442 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %441, align 8
  %443 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %442, i32 0, i32 2
  %444 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %443, i64 0, i64 %439
  store %struct.jsw_avlnode* %432, %struct.jsw_avlnode** %444, align 8
  %445 = load i64, i64* %top, align 8
  %446 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %445
  %447 = load i64, i64* %446, align 8
  %448 = icmp ne i64 %447, 0
  %449 = xor i1 %448, true
  %450 = zext i1 %449 to i32
  %451 = sext i32 %450 to i64
  %452 = load i64, i64* %top, align 8
  %453 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %452
  %454 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %453, align 8
  %455 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %454, i32 0, i32 2
  %456 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %455, i64 0, i64 %451
  %457 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %456, align 8
  store %struct.jsw_avlnode* %457, %struct.jsw_avlnode** %save3, align 8
  %458 = load i64, i64* %top, align 8
  %459 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %458
  %460 = load i64, i64* %459, align 8
  %461 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save3, align 8
  %462 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %461, i32 0, i32 2
  %463 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %462, i64 0, i64 %460
  %464 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %463, align 8
  %465 = load i64, i64* %top, align 8
  %466 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %465
  %467 = load i64, i64* %466, align 8
  %468 = icmp ne i64 %467, 0
  %469 = xor i1 %468, true
  %470 = zext i1 %469 to i32
  %471 = sext i32 %470 to i64
  %472 = load i64, i64* %top, align 8
  %473 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %472
  %474 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %473, align 8
  %475 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %474, i32 0, i32 2
  %476 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %475, i64 0, i64 %471
  store %struct.jsw_avlnode* %464, %struct.jsw_avlnode** %476, align 8
  %477 = load i64, i64* %top, align 8
  %478 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %477
  %479 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %478, align 8
  %480 = load i64, i64* %top, align 8
  %481 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %480
  %482 = load i64, i64* %481, align 8
  %483 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save3, align 8
  %484 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %483, i32 0, i32 2
  %485 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %484, i64 0, i64 %482
  store %struct.jsw_avlnode* %479, %struct.jsw_avlnode** %485, align 8
  %486 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save3, align 8
  %487 = load i64, i64* %top, align 8
  %488 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %487
  store %struct.jsw_avlnode* %486, %struct.jsw_avlnode** %488, align 8
  br label %489

; <label>:489                                     ; preds = %360
  br label %546

; <label>:490                                     ; preds = %285
  %491 = load i64, i64* %bal, align 8
  %492 = sub nsw i64 0, %491
  %493 = load i64, i64* %top, align 8
  %494 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %493
  %495 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %494, align 8
  %496 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %495, i32 0, i32 0
  store i64 %492, i64* %496, align 8
  %497 = load i64, i64* %bal, align 8
  %498 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n, align 8
  %499 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %498, i32 0, i32 0
  store i64 %497, i64* %499, align 8
  br label %500

; <label>:500                                     ; preds = %490
  %501 = load i64, i64* %top, align 8
  %502 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %501
  %503 = load i64, i64* %502, align 8
  %504 = icmp ne i64 %503, 0
  %505 = xor i1 %504, true
  %506 = zext i1 %505 to i32
  %507 = sext i32 %506 to i64
  %508 = load i64, i64* %top, align 8
  %509 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %508
  %510 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %509, align 8
  %511 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %510, i32 0, i32 2
  %512 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %511, i64 0, i64 %507
  %513 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %512, align 8
  store %struct.jsw_avlnode* %513, %struct.jsw_avlnode** %save4, align 8
  %514 = load i64, i64* %top, align 8
  %515 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %514
  %516 = load i64, i64* %515, align 8
  %517 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save4, align 8
  %518 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %517, i32 0, i32 2
  %519 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %518, i64 0, i64 %516
  %520 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %519, align 8
  %521 = load i64, i64* %top, align 8
  %522 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %521
  %523 = load i64, i64* %522, align 8
  %524 = icmp ne i64 %523, 0
  %525 = xor i1 %524, true
  %526 = zext i1 %525 to i32
  %527 = sext i32 %526 to i64
  %528 = load i64, i64* %top, align 8
  %529 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %528
  %530 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %529, align 8
  %531 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %530, i32 0, i32 2
  %532 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %531, i64 0, i64 %527
  store %struct.jsw_avlnode* %520, %struct.jsw_avlnode** %532, align 8
  %533 = load i64, i64* %top, align 8
  %534 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %533
  %535 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %534, align 8
  %536 = load i64, i64* %top, align 8
  %537 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %536
  %538 = load i64, i64* %537, align 8
  %539 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save4, align 8
  %540 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %539, i32 0, i32 2
  %541 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %540, i64 0, i64 %538
  store %struct.jsw_avlnode* %535, %struct.jsw_avlnode** %541, align 8
  %542 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save4, align 8
  %543 = load i64, i64* %top, align 8
  %544 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %543
  store %struct.jsw_avlnode* %542, %struct.jsw_avlnode** %544, align 8
  br label %545

; <label>:545                                     ; preds = %500
  store i64 1, i64* %done, align 8
  br label %546

; <label>:546                                     ; preds = %545, %489
  br label %547

; <label>:547                                     ; preds = %546, %284
  br label %548

; <label>:548                                     ; preds = %547
  %549 = load i64, i64* %top, align 8
  %550 = icmp ne i64 %549, 0
  br i1 %550, label %551, label %565

; <label>:551                                     ; preds = %548
  %552 = load i64, i64* %top, align 8
  %553 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %552
  %554 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %553, align 8
  %555 = load i64, i64* %top, align 8
  %556 = sub nsw i64 %555, 1
  %557 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %556
  %558 = load i64, i64* %557, align 8
  %559 = load i64, i64* %top, align 8
  %560 = sub nsw i64 %559, 1
  %561 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %560
  %562 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %561, align 8
  %563 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %562, i32 0, i32 2
  %564 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %563, i64 0, i64 %558
  store %struct.jsw_avlnode* %554, %struct.jsw_avlnode** %564, align 8
  br label %570

; <label>:565                                     ; preds = %548
  %566 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 0
  %567 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %566, align 16
  %568 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %569 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %568, i32 0, i32 0
  store %struct.jsw_avlnode* %567, %struct.jsw_avlnode** %569, align 8
  br label %570

; <label>:570                                     ; preds = %565, %551
  br label %571

; <label>:571                                     ; preds = %570, %196
  br label %572

; <label>:572                                     ; preds = %571
  br label %164

; <label>:573                                     ; preds = %195, %172
  br label %574

; <label>:574                                     ; preds = %573, %0
  %575 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %576 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %575, i32 0, i32 2
  %577 = load i64, i64* %576, align 8
  %578 = add i64 %577, -1
  store i64 %578, i64* %576, align 8
  store i64 1, i64* %1, align 8
  br label %579

; <label>:579                                     ; preds = %574, %15
  %580 = load i64, i64* %1, align 8
  ret i64 %580
}

; Function Attrs: nounwind uwtable
define i64 @jsw_avlsize(%struct.jsw_avltree* %tree) #0 {
  %1 = alloca %struct.jsw_avltree*, align 8
  store %struct.jsw_avltree* %tree, %struct.jsw_avltree** %1, align 8
  %2 = load %struct.jsw_avltree*, %struct.jsw_avltree** %1, align 8
  %3 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %2, i32 0, i32 2
  %4 = load i64, i64* %3, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define %struct.jsw_avltrav* @jsw_avltnew() #0 {
  %1 = call noalias i8* @malloc(i64 536) #4
  %2 = bitcast i8* %1 to %struct.jsw_avltrav*
  ret %struct.jsw_avltrav* %2
}

; Function Attrs: nounwind uwtable
define void @jsw_avltdelete(%struct.jsw_avltrav* %trav) #0 {
  %1 = alloca %struct.jsw_avltrav*, align 8
  store %struct.jsw_avltrav* %trav, %struct.jsw_avltrav** %1, align 8
  %2 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %3 = bitcast %struct.jsw_avltrav* %2 to i8*
  call void @free(i8* %3) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @jsw_avltfirst(%struct.jsw_avltrav* %trav, %struct.jsw_avltree* %tree) #0 {
  %1 = alloca %struct.jsw_avltrav*, align 8
  %2 = alloca %struct.jsw_avltree*, align 8
  store %struct.jsw_avltrav* %trav, %struct.jsw_avltrav** %1, align 8
  store %struct.jsw_avltree* %tree, %struct.jsw_avltree** %2, align 8
  %3 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %4 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %5 = call i8* @start(%struct.jsw_avltrav* %3, %struct.jsw_avltree* %4, i64 0)
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define internal i8* @start(%struct.jsw_avltrav* %trav, %struct.jsw_avltree* %tree, i64 %dir) #0 {
  %1 = alloca %struct.jsw_avltrav*, align 8
  %2 = alloca %struct.jsw_avltree*, align 8
  %3 = alloca i64, align 8
  store %struct.jsw_avltrav* %trav, %struct.jsw_avltrav** %1, align 8
  store %struct.jsw_avltree* %tree, %struct.jsw_avltree** %2, align 8
  store i64 %dir, i64* %3, align 8
  %4 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %5 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %6 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %5, i32 0, i32 0
  store %struct.jsw_avltree* %4, %struct.jsw_avltree** %6, align 8
  %7 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %8 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %7, i32 0, i32 0
  %9 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %8, align 8
  %10 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %11 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %10, i32 0, i32 1
  store %struct.jsw_avlnode* %9, %struct.jsw_avlnode** %11, align 8
  %12 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %13 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %15 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %14, i32 0, i32 1
  %16 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %15, align 8
  %17 = icmp ne %struct.jsw_avlnode* %16, null
  br i1 %17, label %18, label %49

; <label>:18                                      ; preds = %0
  br label %19

; <label>:19                                      ; preds = %28, %18
  %20 = load i64, i64* %3, align 8
  %21 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %22 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %21, i32 0, i32 1
  %23 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %22, align 8
  %24 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %23, i32 0, i32 2
  %25 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %24, i64 0, i64 %20
  %26 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %25, align 8
  %27 = icmp ne %struct.jsw_avlnode* %26, null
  br i1 %27, label %28, label %48

; <label>:28                                      ; preds = %19
  %29 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %30 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %29, i32 0, i32 1
  %31 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %30, align 8
  %32 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %33 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %37 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %36, i32 0, i32 2
  %38 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %37, i64 0, i64 %34
  store %struct.jsw_avlnode* %31, %struct.jsw_avlnode** %38, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %41 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %40, i32 0, i32 1
  %42 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %41, align 8
  %43 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %42, i32 0, i32 2
  %44 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %43, i64 0, i64 %39
  %45 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %44, align 8
  %46 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %47 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %46, i32 0, i32 1
  store %struct.jsw_avlnode* %45, %struct.jsw_avlnode** %47, align 8
  br label %19

; <label>:48                                      ; preds = %19
  br label %49

; <label>:49                                      ; preds = %48, %0
  %50 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %51 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %50, i32 0, i32 1
  %52 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %51, align 8
  %53 = icmp eq %struct.jsw_avlnode* %52, null
  br i1 %53, label %54, label %55

; <label>:54                                      ; preds = %49
  br label %61

; <label>:55                                      ; preds = %49
  %56 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %57 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %56, i32 0, i32 1
  %58 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %57, align 8
  %59 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  br label %61

; <label>:61                                      ; preds = %55, %54
  %62 = phi i8* [ null, %54 ], [ %60, %55 ]
  ret i8* %62
}

; Function Attrs: nounwind uwtable
define i8* @jsw_avltlast(%struct.jsw_avltrav* %trav, %struct.jsw_avltree* %tree) #0 {
  %1 = alloca %struct.jsw_avltrav*, align 8
  %2 = alloca %struct.jsw_avltree*, align 8
  store %struct.jsw_avltrav* %trav, %struct.jsw_avltrav** %1, align 8
  store %struct.jsw_avltree* %tree, %struct.jsw_avltree** %2, align 8
  %3 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %4 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %5 = call i8* @start(%struct.jsw_avltrav* %3, %struct.jsw_avltree* %4, i64 1)
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define i8* @jsw_avltnext(%struct.jsw_avltrav* %trav) #0 {
  %1 = alloca %struct.jsw_avltrav*, align 8
  store %struct.jsw_avltrav* %trav, %struct.jsw_avltrav** %1, align 8
  %2 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %3 = call i8* @move(%struct.jsw_avltrav* %2, i64 1)
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define internal i8* @move(%struct.jsw_avltrav* %trav, i64 %dir) #0 {
  %1 = alloca %struct.jsw_avltrav*, align 8
  %2 = alloca i64, align 8
  %last = alloca %struct.jsw_avlnode*, align 8
  store %struct.jsw_avltrav* %trav, %struct.jsw_avltrav** %1, align 8
  store i64 %dir, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %5 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %4, i32 0, i32 1
  %6 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %5, align 8
  %7 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %6, i32 0, i32 2
  %8 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %7, i64 0, i64 %3
  %9 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %8, align 8
  %10 = icmp ne %struct.jsw_avlnode* %9, null
  br i1 %10, label %11, label %69

; <label>:11                                      ; preds = %0
  %12 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %13 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %12, i32 0, i32 1
  %14 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %13, align 8
  %15 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %16 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %20 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %19, i32 0, i32 2
  %21 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %20, i64 0, i64 %17
  store %struct.jsw_avlnode* %14, %struct.jsw_avlnode** %21, align 8
  %22 = load i64, i64* %2, align 8
  %23 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %24 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %23, i32 0, i32 1
  %25 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %24, align 8
  %26 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %25, i32 0, i32 2
  %27 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %26, i64 0, i64 %22
  %28 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %27, align 8
  %29 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %30 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %29, i32 0, i32 1
  store %struct.jsw_avlnode* %28, %struct.jsw_avlnode** %30, align 8
  br label %31

; <label>:31                                      ; preds = %44, %11
  %32 = load i64, i64* %2, align 8
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %38 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %37, i32 0, i32 1
  %39 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %38, align 8
  %40 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %39, i32 0, i32 2
  %41 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %40, i64 0, i64 %36
  %42 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %41, align 8
  %43 = icmp ne %struct.jsw_avlnode* %42, null
  br i1 %43, label %44, label %68

; <label>:44                                      ; preds = %31
  %45 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %46 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %45, i32 0, i32 1
  %47 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %46, align 8
  %48 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %49 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %53 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %52, i32 0, i32 2
  %54 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %53, i64 0, i64 %50
  store %struct.jsw_avlnode* %47, %struct.jsw_avlnode** %54, align 8
  %55 = load i64, i64* %2, align 8
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = sext i32 %58 to i64
  %60 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %61 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %60, i32 0, i32 1
  %62 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %61, align 8
  %63 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %62, i32 0, i32 2
  %64 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %63, i64 0, i64 %59
  %65 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %64, align 8
  %66 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %67 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %66, i32 0, i32 1
  store %struct.jsw_avlnode* %65, %struct.jsw_avlnode** %67, align 8
  br label %31

; <label>:68                                      ; preds = %31
  br label %103

; <label>:69                                      ; preds = %0
  br label %70

; <label>:70                                      ; preds = %92, %69
  %71 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %72 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %78

; <label>:75                                      ; preds = %70
  %76 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %77 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %76, i32 0, i32 1
  store %struct.jsw_avlnode* null, %struct.jsw_avlnode** %77, align 8
  br label %102

; <label>:78                                      ; preds = %70
  %79 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %80 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %79, i32 0, i32 1
  %81 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %80, align 8
  store %struct.jsw_avlnode* %81, %struct.jsw_avlnode** %last, align 8
  %82 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %83 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %84, -1
  store i64 %85, i64* %83, align 8
  %86 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %87 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %86, i32 0, i32 2
  %88 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %87, i64 0, i64 %85
  %89 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %88, align 8
  %90 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %91 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %90, i32 0, i32 1
  store %struct.jsw_avlnode* %89, %struct.jsw_avlnode** %91, align 8
  br label %92

; <label>:92                                      ; preds = %78
  %93 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %last, align 8
  %94 = load i64, i64* %2, align 8
  %95 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %96 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %95, i32 0, i32 1
  %97 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %96, align 8
  %98 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %97, i32 0, i32 2
  %99 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %98, i64 0, i64 %94
  %100 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %99, align 8
  %101 = icmp eq %struct.jsw_avlnode* %93, %100
  br i1 %101, label %70, label %102

; <label>:102                                     ; preds = %92, %75
  br label %103

; <label>:103                                     ; preds = %102, %68
  %104 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %105 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %104, i32 0, i32 1
  %106 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %105, align 8
  %107 = icmp eq %struct.jsw_avlnode* %106, null
  br i1 %107, label %108, label %109

; <label>:108                                     ; preds = %103
  br label %115

; <label>:109                                     ; preds = %103
  %110 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %111 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %110, i32 0, i32 1
  %112 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %111, align 8
  %113 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  br label %115

; <label>:115                                     ; preds = %109, %108
  %116 = phi i8* [ null, %108 ], [ %114, %109 ]
  ret i8* %116
}

; Function Attrs: nounwind uwtable
define i8* @jsw_avltprev(%struct.jsw_avltrav* %trav) #0 {
  %1 = alloca %struct.jsw_avltrav*, align 8
  store %struct.jsw_avltrav* %trav, %struct.jsw_avltrav** %1, align 8
  %2 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %3 = call i8* @move(%struct.jsw_avltrav* %2, i64 0)
  ret i8* %3
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
