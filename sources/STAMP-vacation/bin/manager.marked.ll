; ModuleID = '../bin/manager.stats.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.manager = type { %struct.rbtree*, %struct.rbtree*, %struct.rbtree*, %struct.rbtree* }
%struct.rbtree = type opaque
%struct.reservation = type { i64, i64, i64, i64, i64 }
%struct.customer = type { i64, %struct.list* }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.list_node = type { i8*, %struct.list_node* }
%struct.reservation_info = type { i32, i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"managerPtr != NULL\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"manager.c\00", align 1
@__PRETTY_FUNCTION__.manager_alloc = private unnamed_addr constant [27 x i8] c"manager_t *manager_alloc()\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"managerPtr->carTablePtr != NULL\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"managerPtr->roomTablePtr != NULL\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"managerPtr->flightTablePtr != NULL\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"managerPtr->customerTablePtr != NULL\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"reservationPtr != NULL\00", align 1
@__PRETTY_FUNCTION__.addReservation = private unnamed_addr constant [52 x i8] c"bool_t addReservation(rbtree_t *, long, long, long)\00", align 1
@__PRETTY_FUNCTION__.addReservation_seq = private unnamed_addr constant [56 x i8] c"bool_t addReservation_seq(rbtree_t *, long, long, long)\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"customerPtr != NULL\00", align 1
@__PRETTY_FUNCTION__.manager_addCustomer = private unnamed_addr constant [46 x i8] c"bool_t manager_addCustomer(manager_t *, long)\00", align 1
@__PRETTY_FUNCTION__.manager_addCustomer_seq = private unnamed_addr constant [50 x i8] c"bool_t manager_addCustomer_seq(manager_t *, long)\00", align 1

; Function Attrs: nounwind uwtable
define %struct.manager* @manager_alloc() #0 {
  %managerPtr = alloca %struct.manager*, align 8
  %1 = call noalias i8* @malloc(i64 32) #6
  %2 = bitcast i8* %1 to %struct.manager*
  store %struct.manager* %2, %struct.manager** %managerPtr, align 8
  %3 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %4 = icmp ne %struct.manager* %3, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  br label %8

; <label>:6                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 126, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.manager_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %8

; <label>:8                                       ; preds = %7, %5
  %9 = call %struct.rbtree* @tableAlloc()
  %10 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %11 = getelementptr inbounds %struct.manager, %struct.manager* %10, i32 0, i32 0
  store %struct.rbtree* %9, %struct.rbtree** %11, align 8
  %12 = call %struct.rbtree* @tableAlloc()
  %13 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %14 = getelementptr inbounds %struct.manager, %struct.manager* %13, i32 0, i32 1
  store %struct.rbtree* %12, %struct.rbtree** %14, align 8
  %15 = call %struct.rbtree* @tableAlloc()
  %16 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %17 = getelementptr inbounds %struct.manager, %struct.manager* %16, i32 0, i32 2
  store %struct.rbtree* %15, %struct.rbtree** %17, align 8
  %18 = call %struct.rbtree* @tableAlloc()
  %19 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %20 = getelementptr inbounds %struct.manager, %struct.manager* %19, i32 0, i32 3
  store %struct.rbtree* %18, %struct.rbtree** %20, align 8
  %21 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %22 = getelementptr inbounds %struct.manager, %struct.manager* %21, i32 0, i32 0
  %23 = load %struct.rbtree*, %struct.rbtree** %22, align 8
  %24 = icmp ne %struct.rbtree* %23, null
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %8
  br label %28

; <label>:26                                      ; preds = %8
  call void @__assert_fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 132, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.manager_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %28

; <label>:28                                      ; preds = %27, %25
  %29 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %30 = getelementptr inbounds %struct.manager, %struct.manager* %29, i32 0, i32 1
  %31 = load %struct.rbtree*, %struct.rbtree** %30, align 8
  %32 = icmp ne %struct.rbtree* %31, null
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %28
  br label %36

; <label>:34                                      ; preds = %28
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 133, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.manager_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %36

; <label>:36                                      ; preds = %35, %33
  %37 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %38 = getelementptr inbounds %struct.manager, %struct.manager* %37, i32 0, i32 2
  %39 = load %struct.rbtree*, %struct.rbtree** %38, align 8
  %40 = icmp ne %struct.rbtree* %39, null
  br i1 %40, label %41, label %42

; <label>:41                                      ; preds = %36
  br label %44

; <label>:42                                      ; preds = %36
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 134, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.manager_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %44

; <label>:44                                      ; preds = %43, %41
  %45 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %46 = getelementptr inbounds %struct.manager, %struct.manager* %45, i32 0, i32 3
  %47 = load %struct.rbtree*, %struct.rbtree** %46, align 8
  %48 = icmp ne %struct.rbtree* %47, null
  br i1 %48, label %49, label %50

; <label>:49                                      ; preds = %44
  br label %52

; <label>:50                                      ; preds = %44
  call void @__assert_fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.manager_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %52

; <label>:52                                      ; preds = %51, %49
  %53 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  ret %struct.manager* %53
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define void @manager_free(%struct.manager* %managerPtr) #0 {
  %1 = alloca %struct.manager*, align 8
  store %struct.manager* %managerPtr, %struct.manager** %1, align 8
  %2 = load %struct.manager*, %struct.manager** %1, align 8
  %3 = getelementptr inbounds %struct.manager, %struct.manager* %2, i32 0, i32 0
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  call void @tableFree(%struct.rbtree* %4)
  %5 = load %struct.manager*, %struct.manager** %1, align 8
  %6 = getelementptr inbounds %struct.manager, %struct.manager* %5, i32 0, i32 1
  %7 = load %struct.rbtree*, %struct.rbtree** %6, align 8
  call void @tableFree(%struct.rbtree* %7)
  %8 = load %struct.manager*, %struct.manager** %1, align 8
  %9 = getelementptr inbounds %struct.manager, %struct.manager* %8, i32 0, i32 2
  %10 = load %struct.rbtree*, %struct.rbtree** %9, align 8
  call void @tableFree(%struct.rbtree* %10)
  %11 = load %struct.manager*, %struct.manager** %1, align 8
  %12 = getelementptr inbounds %struct.manager, %struct.manager* %11, i32 0, i32 3
  %13 = load %struct.rbtree*, %struct.rbtree** %12, align 8
  call void @tableFree(%struct.rbtree* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tableFree(%struct.rbtree* %mapPtr) #0 {
  %1 = alloca %struct.rbtree*, align 8
  store %struct.rbtree* %mapPtr, %struct.rbtree** %1, align 8
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  call void @rbtree_free(%struct.rbtree* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @addReservation(%struct.rbtree* %tablePtr, i64 %id, i64 %num, i64 %price) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.rbtree*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %reservationPtr = alloca %struct.reservation*, align 8
  %status = alloca i64, align 8
  store %struct.rbtree* %tablePtr, %struct.rbtree** %2, align 8
  store i64 %id, i64* %3, align 8
  store i64 %num, i64* %4, align 8
  store i64 %price, i64* %5, align 8
  %6 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %7 = load i64, i64* %3, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = call i8* @TMrbtree_get(%struct.rbtree* %6, i8* %8)
  %10 = bitcast i8* %9 to %struct.reservation*
  store %struct.reservation* %10, %struct.reservation** %reservationPtr, align 8
  %11 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %12 = icmp eq %struct.reservation* %11, null
  br i1 %12, label %13, label %37

; <label>:13                                      ; preds = %0
  %14 = load i64, i64* %4, align 8
  %15 = icmp slt i64 %14, 1
  br i1 %15, label %19, label %16

; <label>:16                                      ; preds = %13
  %17 = load i64, i64* %5, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %16, %13
  store i64 0, i64* %1, align 8
  br label %64

; <label>:20                                      ; preds = %16
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call %struct.reservation* @reservation_alloc(i64 %21, i64 %22, i64 %23)
  store %struct.reservation* %24, %struct.reservation** %reservationPtr, align 8
  %25 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %26 = icmp ne %struct.reservation* %25, null
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %20
  br label %30

; <label>:28                                      ; preds = %20
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 194, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.addReservation, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %30

; <label>:30                                      ; preds = %29, %27
  %31 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %32 = load i64, i64* %3, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %35 = bitcast %struct.reservation* %34 to i8*
  %36 = call i64 @TMrbtree_insert(%struct.rbtree* %31, i8* %33, i8* %35)
  br label %63

; <label>:37                                      ; preds = %0
  %38 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @reservation_addToTotal(%struct.reservation* %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

; <label>:42                                      ; preds = %37
  store i64 0, i64* %1, align 8
  br label %64

; <label>:43                                      ; preds = %37
  %44 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %45 = getelementptr inbounds %struct.reservation, %struct.reservation* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %58

; <label>:48                                      ; preds = %43
  %49 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %50 = load i64, i64* %3, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = call i64 @TMrbtree_delete(%struct.rbtree* %49, i8* %51)
  store i64 %52, i64* %status, align 8
  %53 = load i64, i64* %status, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

; <label>:55                                      ; preds = %48
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !1
  br label %56

; <label>:56                                      ; preds = %55, %48
  %57 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  call void @reservation_free(%struct.reservation* %57)
  br label %62

; <label>:58                                      ; preds = %43
  %59 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i64 @reservation_updatePrice(%struct.reservation* %59, i64 %60)
  br label %62

; <label>:62                                      ; preds = %58, %56
  br label %63

; <label>:63                                      ; preds = %62, %30
  store i64 1, i64* %1, align 8
  br label %64

; <label>:64                                      ; preds = %63, %42, %19
  %65 = load i64, i64* %1, align 8
  ret i64 %65
}

declare i8* @TMrbtree_get(%struct.rbtree*, i8*) #3

declare %struct.reservation* @reservation_alloc(i64, i64, i64) #3

declare i64 @TMrbtree_insert(%struct.rbtree*, i8*, i8*) #3

declare i64 @reservation_addToTotal(%struct.reservation*, i64) #3

declare i64 @TMrbtree_delete(%struct.rbtree*, i8*) #3

declare void @reservation_free(%struct.reservation*) #3

declare i64 @reservation_updatePrice(%struct.reservation*, i64) #3

; Function Attrs: nounwind uwtable
define i64 @addReservation_seq(%struct.rbtree* %tablePtr, i64 %id, i64 %num, i64 %price) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.rbtree*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %reservationPtr = alloca %struct.reservation*, align 8
  %status = alloca i64, align 8
  store %struct.rbtree* %tablePtr, %struct.rbtree** %2, align 8
  store i64 %id, i64* %3, align 8
  store i64 %num, i64* %4, align 8
  store i64 %price, i64* %5, align 8
  %6 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %7 = load i64, i64* %3, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = call i8* @rbtree_get(%struct.rbtree* %6, i8* %8)
  %10 = bitcast i8* %9 to %struct.reservation*
  store %struct.reservation* %10, %struct.reservation** %reservationPtr, align 8
  %11 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %12 = icmp eq %struct.reservation* %11, null
  br i1 %12, label %13, label %43

; <label>:13                                      ; preds = %0
  %14 = load i64, i64* %4, align 8
  %15 = icmp slt i64 %14, 1
  br i1 %15, label %19, label %16

; <label>:16                                      ; preds = %13
  %17 = load i64, i64* %5, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %16, %13
  store i64 0, i64* %1, align 8
  br label %71

; <label>:20                                      ; preds = %16
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call %struct.reservation* @reservation_alloc_seq(i64 %21, i64 %22, i64 %23)
  store %struct.reservation* %24, %struct.reservation** %reservationPtr, align 8
  %25 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %26 = icmp ne %struct.reservation* %25, null
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %20
  br label %30

; <label>:28                                      ; preds = %20
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 229, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.addReservation_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %30

; <label>:30                                      ; preds = %29, %27
  %31 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %32 = load i64, i64* %3, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %35 = bitcast %struct.reservation* %34 to i8*
  %36 = call i64 @rbtree_insert(%struct.rbtree* %31, i8* %33, i8* %35)
  store i64 %36, i64* %status, align 8
  %37 = load i64, i64* %status, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %30
  br label %42

; <label>:40                                      ; preds = %30
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 231, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.addReservation_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %42

; <label>:42                                      ; preds = %41, %39
  br label %70

; <label>:43                                      ; preds = %0
  %44 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %45 = load i64, i64* %4, align 8
  %46 = call i64 @reservation_addToTotal_seq(%struct.reservation* %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

; <label>:48                                      ; preds = %43
  store i64 0, i64* %1, align 8
  br label %71

; <label>:49                                      ; preds = %43
  %50 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %51 = getelementptr inbounds %struct.reservation, %struct.reservation* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %65

; <label>:54                                      ; preds = %49
  %55 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %56 = load i64, i64* %3, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = call i64 @rbtree_delete(%struct.rbtree* %55, i8* %57)
  store i64 %58, i64* %status, align 8
  %59 = load i64, i64* %status, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

; <label>:61                                      ; preds = %54
  br label %64

; <label>:62                                      ; preds = %54
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 239, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.addReservation_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %64

; <label>:64                                      ; preds = %63, %61
  br label %69

; <label>:65                                      ; preds = %49
  %66 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i64 @reservation_updatePrice_seq(%struct.reservation* %66, i64 %67)
  br label %69

; <label>:69                                      ; preds = %65, %64
  br label %70

; <label>:70                                      ; preds = %69, %42
  store i64 1, i64* %1, align 8
  br label %71

; <label>:71                                      ; preds = %70, %48, %19
  %72 = load i64, i64* %1, align 8
  ret i64 %72
}

declare i8* @rbtree_get(%struct.rbtree*, i8*) #3

declare %struct.reservation* @reservation_alloc_seq(i64, i64, i64) #3

declare i64 @rbtree_insert(%struct.rbtree*, i8*, i8*) #3

declare i64 @reservation_addToTotal_seq(%struct.reservation*, i64) #3

declare i64 @rbtree_delete(%struct.rbtree*, i8*) #3

declare i64 @reservation_updatePrice_seq(%struct.reservation*, i64) #3

; Function Attrs: nounwind uwtable
define i64 @manager_addCar(%struct.manager* %managerPtr, i64 %carId, i64 %numCars, i64 %price) #0 {
  %1 = alloca %struct.manager*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.manager* %managerPtr, %struct.manager** %1, align 8
  store i64 %carId, i64* %2, align 8
  store i64 %numCars, i64* %3, align 8
  store i64 %price, i64* %4, align 8
  %5 = load %struct.manager*, %struct.manager** %1, align 8
  %6 = getelementptr inbounds %struct.manager, %struct.manager* %5, i32 0, i32 0
  %7 = load %struct.rbtree*, %struct.rbtree** %6, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @addReservation(%struct.rbtree* %7, i64 %8, i64 %9, i64 %10)
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define i64 @manager_addCar_seq(%struct.manager* %managerPtr, i64 %carId, i64 %numCars, i64 %price) #0 {
  %1 = alloca %struct.manager*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.manager* %managerPtr, %struct.manager** %1, align 8
  store i64 %carId, i64* %2, align 8
  store i64 %numCars, i64* %3, align 8
  store i64 %price, i64* %4, align 8
  %5 = load %struct.manager*, %struct.manager** %1, align 8
  %6 = getelementptr inbounds %struct.manager, %struct.manager* %5, i32 0, i32 0
  %7 = load %struct.rbtree*, %struct.rbtree** %6, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @addReservation_seq(%struct.rbtree* %7, i64 %8, i64 %9, i64 %10)
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define i64 @manager_deleteCar(%struct.manager* %managerPtr, i64 %carId, i64 %numCar) #0 {
  %1 = alloca %struct.manager*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store %struct.manager* %managerPtr, %struct.manager** %1, align 8
  store i64 %carId, i64* %2, align 8
  store i64 %numCar, i64* %3, align 8
  %4 = load %struct.manager*, %struct.manager** %1, align 8
  %5 = getelementptr inbounds %struct.manager, %struct.manager* %4, i32 0, i32 0
  %6 = load %struct.rbtree*, %struct.rbtree** %5, align 8
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* %3, align 8
  %9 = sub nsw i64 0, %8
  %10 = call i64 @addReservation(%struct.rbtree* %6, i64 %7, i64 %9, i64 -1)
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define i64 @manager_addRoom(%struct.manager* %managerPtr, i64 %roomId, i64 %numRoom, i64 %price) #0 {
  %1 = alloca %struct.manager*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.manager* %managerPtr, %struct.manager** %1, align 8
  store i64 %roomId, i64* %2, align 8
  store i64 %numRoom, i64* %3, align 8
  store i64 %price, i64* %4, align 8
  %5 = load %struct.manager*, %struct.manager** %1, align 8
  %6 = getelementptr inbounds %struct.manager, %struct.manager* %5, i32 0, i32 1
  %7 = load %struct.rbtree*, %struct.rbtree** %6, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @addReservation(%struct.rbtree* %7, i64 %8, i64 %9, i64 %10)
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define i64 @manager_addRoom_seq(%struct.manager* %managerPtr, i64 %roomId, i64 %numRoom, i64 %price) #0 {
  %1 = alloca %struct.manager*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.manager* %managerPtr, %struct.manager** %1, align 8
  store i64 %roomId, i64* %2, align 8
  store i64 %numRoom, i64* %3, align 8
  store i64 %price, i64* %4, align 8
  %5 = load %struct.manager*, %struct.manager** %1, align 8
  %6 = getelementptr inbounds %struct.manager, %struct.manager* %5, i32 0, i32 1
  %7 = load %struct.rbtree*, %struct.rbtree** %6, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @addReservation_seq(%struct.rbtree* %7, i64 %8, i64 %9, i64 %10)
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define i64 @manager_deleteRoom(%struct.manager* %managerPtr, i64 %roomId, i64 %numRoom) #0 {
  %1 = alloca %struct.manager*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store %struct.manager* %managerPtr, %struct.manager** %1, align 8
  store i64 %roomId, i64* %2, align 8
  store i64 %numRoom, i64* %3, align 8
  %4 = load %struct.manager*, %struct.manager** %1, align 8
  %5 = getelementptr inbounds %struct.manager, %struct.manager* %4, i32 0, i32 1
  %6 = load %struct.rbtree*, %struct.rbtree** %5, align 8
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* %3, align 8
  %9 = sub nsw i64 0, %8
  %10 = call i64 @addReservation(%struct.rbtree* %6, i64 %7, i64 %9, i64 -1)
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define i64 @manager_addFlight(%struct.manager* %managerPtr, i64 %flightId, i64 %numSeat, i64 %price) #0 {
  %1 = alloca %struct.manager*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.manager* %managerPtr, %struct.manager** %1, align 8
  store i64 %flightId, i64* %2, align 8
  store i64 %numSeat, i64* %3, align 8
  store i64 %price, i64* %4, align 8
  %5 = load %struct.manager*, %struct.manager** %1, align 8
  %6 = getelementptr inbounds %struct.manager, %struct.manager* %5, i32 0, i32 2
  %7 = load %struct.rbtree*, %struct.rbtree** %6, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @addReservation(%struct.rbtree* %7, i64 %8, i64 %9, i64 %10)
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define i64 @manager_addFlight_seq(%struct.manager* %managerPtr, i64 %flightId, i64 %numSeat, i64 %price) #0 {
  %1 = alloca %struct.manager*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.manager* %managerPtr, %struct.manager** %1, align 8
  store i64 %flightId, i64* %2, align 8
  store i64 %numSeat, i64* %3, align 8
  store i64 %price, i64* %4, align 8
  %5 = load %struct.manager*, %struct.manager** %1, align 8
  %6 = getelementptr inbounds %struct.manager, %struct.manager* %5, i32 0, i32 2
  %7 = load %struct.rbtree*, %struct.rbtree** %6, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @addReservation_seq(%struct.rbtree* %7, i64 %8, i64 %9, i64 %10)
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define i64 @manager_deleteFlight(%struct.manager* %managerPtr, i64 %flightId) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.manager*, align 8
  %3 = alloca i64, align 8
  %reservationPtr = alloca %struct.reservation*, align 8
  store %struct.manager* %managerPtr, %struct.manager** %2, align 8
  store i64 %flightId, i64* %3, align 8
  %4 = load %struct.manager*, %struct.manager** %2, align 8
  %5 = getelementptr inbounds %struct.manager, %struct.manager* %4, i32 0, i32 2
  %6 = load %struct.rbtree*, %struct.rbtree** %5, align 8
  %7 = load i64, i64* %3, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = call i8* @TMrbtree_get(%struct.rbtree* %6, i8* %8)
  %10 = bitcast i8* %9 to %struct.reservation*
  store %struct.reservation* %10, %struct.reservation** %reservationPtr, align 8
  %11 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %12 = icmp eq %struct.reservation* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %30

; <label>:14                                      ; preds = %0
  %15 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %16 = getelementptr inbounds %struct.reservation, %struct.reservation* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %14
  store i64 0, i64* %1, align 8
  br label %30

; <label>:20                                      ; preds = %14
  %21 = load %struct.manager*, %struct.manager** %2, align 8
  %22 = getelementptr inbounds %struct.manager, %struct.manager* %21, i32 0, i32 2
  %23 = load %struct.rbtree*, %struct.rbtree** %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %26 = getelementptr inbounds %struct.reservation, %struct.reservation* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = mul nsw i64 -1, %27
  %29 = call i64 @addReservation(%struct.rbtree* %23, i64 %24, i64 %28, i64 -1)
  store i64 %29, i64* %1, align 8
  br label %30

; <label>:30                                      ; preds = %20, %19, %13
  %31 = load i64, i64* %1, align 8
  ret i64 %31
}

; Function Attrs: nounwind uwtable
define i64 @manager_addCustomer(%struct.manager* %managerPtr, i64 %customerId) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.manager*, align 8
  %3 = alloca i64, align 8
  %customerPtr = alloca %struct.customer*, align 8
  %status = alloca i64, align 8
  store %struct.manager* %managerPtr, %struct.manager** %2, align 8
  store i64 %customerId, i64* %3, align 8
  %4 = load %struct.manager*, %struct.manager** %2, align 8
  %5 = getelementptr inbounds %struct.manager, %struct.manager* %4, i32 0, i32 3
  %6 = load %struct.rbtree*, %struct.rbtree** %5, align 8
  %7 = load i64, i64* %3, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = call i64 @TMrbtree_contains(%struct.rbtree* %6, i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %33

; <label>:12                                      ; preds = %0
  %13 = load i64, i64* %3, align 8
  %14 = call %struct.customer* @customer_alloc(i64 %13)
  store %struct.customer* %14, %struct.customer** %customerPtr, align 8
  %15 = load %struct.customer*, %struct.customer** %customerPtr, align 8
  %16 = icmp ne %struct.customer* %15, null
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %12
  br label %20

; <label>:18                                      ; preds = %12
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 397, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.manager_addCustomer, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %20

; <label>:20                                      ; preds = %19, %17
  %21 = load %struct.manager*, %struct.manager** %2, align 8
  %22 = getelementptr inbounds %struct.manager, %struct.manager* %21, i32 0, i32 3
  %23 = load %struct.rbtree*, %struct.rbtree** %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.customer*, %struct.customer** %customerPtr, align 8
  %27 = bitcast %struct.customer* %26 to i8*
  %28 = call i64 @TMrbtree_insert(%struct.rbtree* %23, i8* %25, i8* %27)
  store i64 %28, i64* %status, align 8
  %29 = load i64, i64* %status, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %20
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !2
  br label %32

; <label>:32                                      ; preds = %31, %20
  store i64 1, i64* %1, align 8
  br label %33

; <label>:33                                      ; preds = %32, %11
  %34 = load i64, i64* %1, align 8
  ret i64 %34
}

declare i64 @TMrbtree_contains(%struct.rbtree*, i8*) #3

declare %struct.customer* @customer_alloc(i64) #3

; Function Attrs: nounwind uwtable
define i64 @manager_addCustomer_seq(%struct.manager* %managerPtr, i64 %customerId) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.manager*, align 8
  %3 = alloca i64, align 8
  %customerPtr = alloca %struct.customer*, align 8
  %status = alloca i64, align 8
  store %struct.manager* %managerPtr, %struct.manager** %2, align 8
  store i64 %customerId, i64* %3, align 8
  %4 = load %struct.manager*, %struct.manager** %2, align 8
  %5 = getelementptr inbounds %struct.manager, %struct.manager* %4, i32 0, i32 3
  %6 = load %struct.rbtree*, %struct.rbtree** %5, align 8
  %7 = load i64, i64* %3, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = call i64 @rbtree_contains(%struct.rbtree* %6, i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %35

; <label>:12                                      ; preds = %0
  %13 = load i64, i64* %3, align 8
  %14 = call %struct.customer* @customer_alloc_seq(i64 %13)
  store %struct.customer* %14, %struct.customer** %customerPtr, align 8
  %15 = load %struct.customer*, %struct.customer** %customerPtr, align 8
  %16 = icmp ne %struct.customer* %15, null
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %12
  br label %20

; <label>:18                                      ; preds = %12
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 418, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.manager_addCustomer_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %20

; <label>:20                                      ; preds = %19, %17
  %21 = load %struct.manager*, %struct.manager** %2, align 8
  %22 = getelementptr inbounds %struct.manager, %struct.manager* %21, i32 0, i32 3
  %23 = load %struct.rbtree*, %struct.rbtree** %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.customer*, %struct.customer** %customerPtr, align 8
  %27 = bitcast %struct.customer* %26 to i8*
  %28 = call i64 @rbtree_insert(%struct.rbtree* %23, i8* %25, i8* %27)
  store i64 %28, i64* %status, align 8
  %29 = load i64, i64* %status, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %20
  br label %34

; <label>:32                                      ; preds = %20
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 420, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.manager_addCustomer_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %34

; <label>:34                                      ; preds = %33, %31
  store i64 1, i64* %1, align 8
  br label %35

; <label>:35                                      ; preds = %34, %11
  %36 = load i64, i64* %1, align 8
  ret i64 %36
}

declare i64 @rbtree_contains(%struct.rbtree*, i8*) #3

declare %struct.customer* @customer_alloc_seq(i64) #3

; Function Attrs: nounwind uwtable
define i64 @manager_deleteCustomer(%struct.manager* %managerPtr, i64 %customerId) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.manager*, align 8
  %3 = alloca i64, align 8
  %customerPtr = alloca %struct.customer*, align 8
  %reservationTables = alloca [3 x %struct.rbtree*], align 16
  %reservationInfoListPtr = alloca %struct.list*, align 8
  %it = alloca %struct.list_node*, align 8
  %status = alloca i64, align 8
  %reservationInfoPtr = alloca %struct.reservation_info*, align 8
  %reservationPtr = alloca %struct.reservation*, align 8
  store %struct.manager* %managerPtr, %struct.manager** %2, align 8
  store i64 %customerId, i64* %3, align 8
  %4 = load %struct.manager*, %struct.manager** %2, align 8
  %5 = getelementptr inbounds %struct.manager, %struct.manager* %4, i32 0, i32 3
  %6 = load %struct.rbtree*, %struct.rbtree** %5, align 8
  %7 = load i64, i64* %3, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = call i8* @TMrbtree_get(%struct.rbtree* %6, i8* %8)
  %10 = bitcast i8* %9 to %struct.customer*
  store %struct.customer* %10, %struct.customer** %customerPtr, align 8
  %11 = load %struct.customer*, %struct.customer** %customerPtr, align 8
  %12 = icmp eq %struct.customer* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %73

; <label>:14                                      ; preds = %0
  %15 = load %struct.manager*, %struct.manager** %2, align 8
  %16 = getelementptr inbounds %struct.manager, %struct.manager* %15, i32 0, i32 0
  %17 = load %struct.rbtree*, %struct.rbtree** %16, align 8
  %18 = getelementptr inbounds [3 x %struct.rbtree*], [3 x %struct.rbtree*]* %reservationTables, i64 0, i64 0
  store %struct.rbtree* %17, %struct.rbtree** %18, align 16
  %19 = load %struct.manager*, %struct.manager** %2, align 8
  %20 = getelementptr inbounds %struct.manager, %struct.manager* %19, i32 0, i32 1
  %21 = load %struct.rbtree*, %struct.rbtree** %20, align 8
  %22 = getelementptr inbounds [3 x %struct.rbtree*], [3 x %struct.rbtree*]* %reservationTables, i64 0, i64 2
  store %struct.rbtree* %21, %struct.rbtree** %22, align 16
  %23 = load %struct.manager*, %struct.manager** %2, align 8
  %24 = getelementptr inbounds %struct.manager, %struct.manager* %23, i32 0, i32 2
  %25 = load %struct.rbtree*, %struct.rbtree** %24, align 8
  %26 = getelementptr inbounds [3 x %struct.rbtree*], [3 x %struct.rbtree*]* %reservationTables, i64 0, i64 1
  store %struct.rbtree* %25, %struct.rbtree** %26, align 8
  %27 = load %struct.customer*, %struct.customer** %customerPtr, align 8
  %28 = getelementptr inbounds %struct.customer, %struct.customer* %27, i32 0, i32 1
  %29 = load %struct.list*, %struct.list** %28, align 8
  store %struct.list* %29, %struct.list** %reservationInfoListPtr, align 8
  %30 = load %struct.list*, %struct.list** %reservationInfoListPtr, align 8
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %30)
  br label %__kernel__manager_deleteCustomer0

__kernel__manager_deleteCustomer0:                ; preds = %59, %14
  %31 = load %struct.list*, %struct.list** %reservationInfoListPtr, align 8
  %32 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %31) #8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %61

; <label>:34                                      ; preds = %__kernel__manager_deleteCustomer0
  %35 = load %struct.list*, %struct.list** %reservationInfoListPtr, align 8
  %36 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %35)
  %37 = bitcast i8* %36 to %struct.reservation_info*
  store %struct.reservation_info* %37, %struct.reservation_info** %reservationInfoPtr, align 8
  %38 = load %struct.reservation_info*, %struct.reservation_info** %reservationInfoPtr, align 8
  %39 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [3 x %struct.rbtree*], [3 x %struct.rbtree*]* %reservationTables, i64 0, i64 %41
  %43 = load %struct.rbtree*, %struct.rbtree** %42, align 8
  %44 = load %struct.reservation_info*, %struct.reservation_info** %reservationInfoPtr, align 8
  %45 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = call i8* @TMrbtree_get(%struct.rbtree* %43, i8* %47)
  %49 = bitcast i8* %48 to %struct.reservation*
  store %struct.reservation* %49, %struct.reservation** %reservationPtr, align 8
  %50 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %51 = icmp eq %struct.reservation* %50, null
  br i1 %51, label %52, label %53

; <label>:52                                      ; preds = %34
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !3
  br label %53

; <label>:53                                      ; preds = %52, %34
  %54 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %55 = call i64 @reservation_cancel(%struct.reservation* %54)
  store i64 %55, i64* %status, align 8
  %56 = load i64, i64* %status, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

; <label>:58                                      ; preds = %53
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !4
  br label %59

; <label>:59                                      ; preds = %58, %53
  %60 = load %struct.reservation_info*, %struct.reservation_info** %reservationInfoPtr, align 8
  call void @reservation_info_free(%struct.reservation_info* %60)
  br label %__kernel__manager_deleteCustomer0, !llvm.loop !5

; <label>:61                                      ; preds = %__kernel__manager_deleteCustomer0
  %62 = load %struct.manager*, %struct.manager** %2, align 8
  %63 = getelementptr inbounds %struct.manager, %struct.manager* %62, i32 0, i32 3
  %64 = load %struct.rbtree*, %struct.rbtree** %63, align 8
  %65 = load i64, i64* %3, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = call i64 @TMrbtree_delete(%struct.rbtree* %64, i8* %66)
  store i64 %67, i64* %status, align 8
  %68 = load i64, i64* %status, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

; <label>:70                                      ; preds = %61
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !7
  br label %71

; <label>:71                                      ; preds = %70, %61
  %72 = load %struct.customer*, %struct.customer** %customerPtr, align 8
  call void @customer_free(%struct.customer* %72)
  store i64 1, i64* %1, align 8
  br label %73

; <label>:73                                      ; preds = %71, %13
  %74 = load i64, i64* %1, align 8
  ret i64 %74
}

declare void @TMlist_iter_reset(%struct.list_node**, %struct.list*) #3

; Function Attrs: nounwind readonly
declare i64 @TMlist_iter_hasNext(%struct.list_node**, %struct.list*) #4

declare i8* @TMlist_iter_next(%struct.list_node**, %struct.list*) #3

declare i64 @reservation_cancel(%struct.reservation*) #3

declare void @reservation_info_free(%struct.reservation_info*) #3

declare void @customer_free(%struct.customer*) #3

; Function Attrs: nounwind readonly uwtable
define i64 @manager_queryCar(%struct.manager* %managerPtr, i64 %carId) #5 {
  %1 = alloca %struct.manager*, align 8
  %2 = alloca i64, align 8
  store %struct.manager* %managerPtr, %struct.manager** %1, align 8
  store i64 %carId, i64* %2, align 8
  %3 = load %struct.manager*, %struct.manager** %1, align 8
  %4 = getelementptr inbounds %struct.manager, %struct.manager* %3, i32 0, i32 0
  %5 = load %struct.rbtree*, %struct.rbtree** %4, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @queryNumFree(%struct.rbtree* %5, i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define internal i64 @queryNumFree(%struct.rbtree* %tablePtr, i64 %id) #0 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca i64, align 8
  %numFree = alloca i64, align 8
  %reservationPtr = alloca %struct.reservation*, align 8
  store %struct.rbtree* %tablePtr, %struct.rbtree** %1, align 8
  store i64 %id, i64* %2, align 8
  store i64 -1, i64* %numFree, align 8
  %3 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to i8*
  %6 = call i8* @TMrbtree_get(%struct.rbtree* %3, i8* %5)
  %7 = bitcast i8* %6 to %struct.reservation*
  store %struct.reservation* %7, %struct.reservation** %reservationPtr, align 8
  %8 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %9 = icmp ne %struct.reservation* %8, null
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %0
  %11 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %12 = getelementptr inbounds %struct.reservation, %struct.reservation* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %numFree, align 8
  br label %14

; <label>:14                                      ; preds = %10, %0
  %15 = load i64, i64* %numFree, align 8
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define i64 @manager_queryCarPrice(%struct.manager* %managerPtr, i64 %carId) #0 {
  %1 = alloca %struct.manager*, align 8
  %2 = alloca i64, align 8
  store %struct.manager* %managerPtr, %struct.manager** %1, align 8
  store i64 %carId, i64* %2, align 8
  %3 = load %struct.manager*, %struct.manager** %1, align 8
  %4 = getelementptr inbounds %struct.manager, %struct.manager* %3, i32 0, i32 0
  %5 = load %struct.rbtree*, %struct.rbtree** %4, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @queryPrice(%struct.rbtree* %5, i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define internal i64 @queryPrice(%struct.rbtree* %tablePtr, i64 %id) #0 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca i64, align 8
  %price = alloca i64, align 8
  %reservationPtr = alloca %struct.reservation*, align 8
  store %struct.rbtree* %tablePtr, %struct.rbtree** %1, align 8
  store i64 %id, i64* %2, align 8
  store i64 -1, i64* %price, align 8
  %3 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to i8*
  %6 = call i8* @TMrbtree_get(%struct.rbtree* %3, i8* %5)
  %7 = bitcast i8* %6 to %struct.reservation*
  store %struct.reservation* %7, %struct.reservation** %reservationPtr, align 8
  %8 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %9 = icmp ne %struct.reservation* %8, null
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %0
  %11 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %12 = getelementptr inbounds %struct.reservation, %struct.reservation* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %price, align 8
  br label %14

; <label>:14                                      ; preds = %10, %0
  %15 = load i64, i64* %price, align 8
  ret i64 %15
}

; Function Attrs: nounwind readonly uwtable
define i64 @manager_queryRoom(%struct.manager* %managerPtr, i64 %roomId) #5 {
  %1 = alloca %struct.manager*, align 8
  %2 = alloca i64, align 8
  store %struct.manager* %managerPtr, %struct.manager** %1, align 8
  store i64 %roomId, i64* %2, align 8
  %3 = load %struct.manager*, %struct.manager** %1, align 8
  %4 = getelementptr inbounds %struct.manager, %struct.manager* %3, i32 0, i32 1
  %5 = load %struct.rbtree*, %struct.rbtree** %4, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @queryNumFree(%struct.rbtree* %5, i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define i64 @manager_queryRoomPrice(%struct.manager* %managerPtr, i64 %roomId) #0 {
  %1 = alloca %struct.manager*, align 8
  %2 = alloca i64, align 8
  store %struct.manager* %managerPtr, %struct.manager** %1, align 8
  store i64 %roomId, i64* %2, align 8
  %3 = load %struct.manager*, %struct.manager** %1, align 8
  %4 = getelementptr inbounds %struct.manager, %struct.manager* %3, i32 0, i32 1
  %5 = load %struct.rbtree*, %struct.rbtree** %4, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @queryPrice(%struct.rbtree* %5, i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind readonly uwtable
define i64 @manager_queryFlight(%struct.manager* %managerPtr, i64 %flightId) #5 {
  %1 = alloca %struct.manager*, align 8
  %2 = alloca i64, align 8
  store %struct.manager* %managerPtr, %struct.manager** %1, align 8
  store i64 %flightId, i64* %2, align 8
  %3 = load %struct.manager*, %struct.manager** %1, align 8
  %4 = getelementptr inbounds %struct.manager, %struct.manager* %3, i32 0, i32 2
  %5 = load %struct.rbtree*, %struct.rbtree** %4, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @queryNumFree(%struct.rbtree* %5, i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define i64 @manager_queryFlightPrice(%struct.manager* %managerPtr, i64 %flightId) #0 {
  %1 = alloca %struct.manager*, align 8
  %2 = alloca i64, align 8
  store %struct.manager* %managerPtr, %struct.manager** %1, align 8
  store i64 %flightId, i64* %2, align 8
  %3 = load %struct.manager*, %struct.manager** %1, align 8
  %4 = getelementptr inbounds %struct.manager, %struct.manager* %3, i32 0, i32 2
  %5 = load %struct.rbtree*, %struct.rbtree** %4, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @queryPrice(%struct.rbtree* %5, i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define i64 @manager_queryCustomerBill(%struct.manager* %managerPtr, i64 %customerId) #0 {
  %1 = alloca %struct.manager*, align 8
  %2 = alloca i64, align 8
  %bill = alloca i64, align 8
  %customerPtr = alloca %struct.customer*, align 8
  store %struct.manager* %managerPtr, %struct.manager** %1, align 8
  store i64 %customerId, i64* %2, align 8
  store i64 -1, i64* %bill, align 8
  %3 = load %struct.manager*, %struct.manager** %1, align 8
  %4 = getelementptr inbounds %struct.manager, %struct.manager* %3, i32 0, i32 3
  %5 = load %struct.rbtree*, %struct.rbtree** %4, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = call i8* @TMrbtree_get(%struct.rbtree* %5, i8* %7)
  %9 = bitcast i8* %8 to %struct.customer*
  store %struct.customer* %9, %struct.customer** %customerPtr, align 8
  %10 = load %struct.customer*, %struct.customer** %customerPtr, align 8
  %11 = icmp ne %struct.customer* %10, null
  br i1 %11, label %12, label %15

; <label>:12                                      ; preds = %0
  %13 = load %struct.customer*, %struct.customer** %customerPtr, align 8
  %14 = call i64 @customer_getBill(%struct.customer* %13)
  store i64 %14, i64* %bill, align 8
  br label %15

; <label>:15                                      ; preds = %12, %0
  %16 = load i64, i64* %bill, align 8
  ret i64 %16
}

declare i64 @customer_getBill(%struct.customer*) #3

; Function Attrs: nounwind uwtable
define i64 @manager_reserveCar(%struct.manager* %managerPtr, i64 %customerId, i64 %carId) #0 {
  %1 = alloca %struct.manager*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store %struct.manager* %managerPtr, %struct.manager** %1, align 8
  store i64 %customerId, i64* %2, align 8
  store i64 %carId, i64* %3, align 8
  %4 = load %struct.manager*, %struct.manager** %1, align 8
  %5 = getelementptr inbounds %struct.manager, %struct.manager* %4, i32 0, i32 0
  %6 = load %struct.rbtree*, %struct.rbtree** %5, align 8
  %7 = load %struct.manager*, %struct.manager** %1, align 8
  %8 = getelementptr inbounds %struct.manager, %struct.manager* %7, i32 0, i32 3
  %9 = load %struct.rbtree*, %struct.rbtree** %8, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @reserve(%struct.rbtree* %6, %struct.rbtree* %9, i64 %10, i64 %11, i32 0)
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define internal i64 @reserve(%struct.rbtree* %tablePtr, %struct.rbtree* %customerTablePtr, i64 %customerId, i64 %id, i32 %type) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.rbtree*, align 8
  %3 = alloca %struct.rbtree*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %customerPtr = alloca %struct.customer*, align 8
  %reservationPtr = alloca %struct.reservation*, align 8
  %status = alloca i64, align 8
  store %struct.rbtree* %tablePtr, %struct.rbtree** %2, align 8
  store %struct.rbtree* %customerTablePtr, %struct.rbtree** %3, align 8
  store i64 %customerId, i64* %4, align 8
  store i64 %id, i64* %5, align 8
  store i32 %type, i32* %6, align 4
  %7 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = call i8* @TMrbtree_get(%struct.rbtree* %7, i8* %9)
  %11 = bitcast i8* %10 to %struct.customer*
  store %struct.customer* %11, %struct.customer** %customerPtr, align 8
  %12 = load %struct.customer*, %struct.customer** %customerPtr, align 8
  %13 = icmp eq %struct.customer* %12, null
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %46

; <label>:15                                      ; preds = %0
  %16 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %17 = load i64, i64* %5, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = call i8* @TMrbtree_get(%struct.rbtree* %16, i8* %18)
  %20 = bitcast i8* %19 to %struct.reservation*
  store %struct.reservation* %20, %struct.reservation** %reservationPtr, align 8
  %21 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %22 = icmp eq %struct.reservation* %21, null
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %15
  store i64 0, i64* %1, align 8
  br label %46

; <label>:24                                      ; preds = %15
  %25 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %26 = call i64 @reservation_make(%struct.reservation* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

; <label>:28                                      ; preds = %24
  store i64 0, i64* %1, align 8
  br label %46

; <label>:29                                      ; preds = %24
  %30 = load %struct.customer*, %struct.customer** %customerPtr, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %34 = getelementptr inbounds %struct.reservation, %struct.reservation* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @customer_addReservationInfo(%struct.customer* %30, i32 %31, i64 %32, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %45, label %38

; <label>:38                                      ; preds = %29
  %39 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %40 = call i64 @reservation_cancel(%struct.reservation* %39)
  store i64 %40, i64* %status, align 8
  %41 = load i64, i64* %status, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

; <label>:43                                      ; preds = %38
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !8
  br label %44

; <label>:44                                      ; preds = %43, %38
  store i64 0, i64* %1, align 8
  br label %46

; <label>:45                                      ; preds = %29
  store i64 1, i64* %1, align 8
  br label %46

; <label>:46                                      ; preds = %45, %44, %28, %23, %14
  %47 = load i64, i64* %1, align 8
  ret i64 %47
}

; Function Attrs: nounwind uwtable
define i64 @manager_reserveRoom(%struct.manager* %managerPtr, i64 %customerId, i64 %roomId) #0 {
  %1 = alloca %struct.manager*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store %struct.manager* %managerPtr, %struct.manager** %1, align 8
  store i64 %customerId, i64* %2, align 8
  store i64 %roomId, i64* %3, align 8
  %4 = load %struct.manager*, %struct.manager** %1, align 8
  %5 = getelementptr inbounds %struct.manager, %struct.manager* %4, i32 0, i32 1
  %6 = load %struct.rbtree*, %struct.rbtree** %5, align 8
  %7 = load %struct.manager*, %struct.manager** %1, align 8
  %8 = getelementptr inbounds %struct.manager, %struct.manager* %7, i32 0, i32 3
  %9 = load %struct.rbtree*, %struct.rbtree** %8, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @reserve(%struct.rbtree* %6, %struct.rbtree* %9, i64 %10, i64 %11, i32 2)
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define i64 @manager_reserveFlight(%struct.manager* %managerPtr, i64 %customerId, i64 %flightId) #0 {
  %1 = alloca %struct.manager*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store %struct.manager* %managerPtr, %struct.manager** %1, align 8
  store i64 %customerId, i64* %2, align 8
  store i64 %flightId, i64* %3, align 8
  %4 = load %struct.manager*, %struct.manager** %1, align 8
  %5 = getelementptr inbounds %struct.manager, %struct.manager* %4, i32 0, i32 2
  %6 = load %struct.rbtree*, %struct.rbtree** %5, align 8
  %7 = load %struct.manager*, %struct.manager** %1, align 8
  %8 = getelementptr inbounds %struct.manager, %struct.manager* %7, i32 0, i32 3
  %9 = load %struct.rbtree*, %struct.rbtree** %8, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @reserve(%struct.rbtree* %6, %struct.rbtree* %9, i64 %10, i64 %11, i32 1)
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define i64 @manager_cancelCar(%struct.manager* %managerPtr, i64 %customerId, i64 %carId) #0 {
  %1 = alloca %struct.manager*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store %struct.manager* %managerPtr, %struct.manager** %1, align 8
  store i64 %customerId, i64* %2, align 8
  store i64 %carId, i64* %3, align 8
  %4 = load %struct.manager*, %struct.manager** %1, align 8
  %5 = getelementptr inbounds %struct.manager, %struct.manager* %4, i32 0, i32 0
  %6 = load %struct.rbtree*, %struct.rbtree** %5, align 8
  %7 = load %struct.manager*, %struct.manager** %1, align 8
  %8 = getelementptr inbounds %struct.manager, %struct.manager* %7, i32 0, i32 3
  %9 = load %struct.rbtree*, %struct.rbtree** %8, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @cancel(%struct.rbtree* %6, %struct.rbtree* %9, i64 %10, i64 %11, i32 0)
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define internal i64 @cancel(%struct.rbtree* %tablePtr, %struct.rbtree* %customerTablePtr, i64 %customerId, i64 %id, i32 %type) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.rbtree*, align 8
  %3 = alloca %struct.rbtree*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %customerPtr = alloca %struct.customer*, align 8
  %reservationPtr = alloca %struct.reservation*, align 8
  %status = alloca i64, align 8
  store %struct.rbtree* %tablePtr, %struct.rbtree** %2, align 8
  store %struct.rbtree* %customerTablePtr, %struct.rbtree** %3, align 8
  store i64 %customerId, i64* %4, align 8
  store i64 %id, i64* %5, align 8
  store i32 %type, i32* %6, align 4
  %7 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = call i8* @TMrbtree_get(%struct.rbtree* %7, i8* %9)
  %11 = bitcast i8* %10 to %struct.customer*
  store %struct.customer* %11, %struct.customer** %customerPtr, align 8
  %12 = load %struct.customer*, %struct.customer** %customerPtr, align 8
  %13 = icmp eq %struct.customer* %12, null
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %43

; <label>:15                                      ; preds = %0
  %16 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %17 = load i64, i64* %5, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = call i8* @TMrbtree_get(%struct.rbtree* %16, i8* %18)
  %20 = bitcast i8* %19 to %struct.reservation*
  store %struct.reservation* %20, %struct.reservation** %reservationPtr, align 8
  %21 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %22 = icmp eq %struct.reservation* %21, null
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %15
  store i64 0, i64* %1, align 8
  br label %43

; <label>:24                                      ; preds = %15
  %25 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %26 = call i64 @reservation_cancel(%struct.reservation* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

; <label>:28                                      ; preds = %24
  store i64 0, i64* %1, align 8
  br label %43

; <label>:29                                      ; preds = %24
  %30 = load %struct.customer*, %struct.customer** %customerPtr, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @customer_removeReservationInfo(%struct.customer* %30, i32 %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

; <label>:35                                      ; preds = %29
  %36 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %37 = call i64 @reservation_make(%struct.reservation* %36)
  store i64 %37, i64* %status, align 8
  %38 = load i64, i64* %status, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %35
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !9
  br label %41

; <label>:41                                      ; preds = %40, %35
  store i64 0, i64* %1, align 8
  br label %43

; <label>:42                                      ; preds = %29
  store i64 1, i64* %1, align 8
  br label %43

; <label>:43                                      ; preds = %42, %41, %28, %23, %14
  %44 = load i64, i64* %1, align 8
  ret i64 %44
}

; Function Attrs: nounwind uwtable
define i64 @manager_cancelRoom(%struct.manager* %managerPtr, i64 %customerId, i64 %roomId) #0 {
  %1 = alloca %struct.manager*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store %struct.manager* %managerPtr, %struct.manager** %1, align 8
  store i64 %customerId, i64* %2, align 8
  store i64 %roomId, i64* %3, align 8
  %4 = load %struct.manager*, %struct.manager** %1, align 8
  %5 = getelementptr inbounds %struct.manager, %struct.manager* %4, i32 0, i32 1
  %6 = load %struct.rbtree*, %struct.rbtree** %5, align 8
  %7 = load %struct.manager*, %struct.manager** %1, align 8
  %8 = getelementptr inbounds %struct.manager, %struct.manager* %7, i32 0, i32 3
  %9 = load %struct.rbtree*, %struct.rbtree** %8, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @cancel(%struct.rbtree* %6, %struct.rbtree* %9, i64 %10, i64 %11, i32 2)
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define i64 @manager_cancelFlight(%struct.manager* %managerPtr, i64 %customerId, i64 %flightId) #0 {
  %1 = alloca %struct.manager*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store %struct.manager* %managerPtr, %struct.manager** %1, align 8
  store i64 %customerId, i64* %2, align 8
  store i64 %flightId, i64* %3, align 8
  %4 = load %struct.manager*, %struct.manager** %1, align 8
  %5 = getelementptr inbounds %struct.manager, %struct.manager* %4, i32 0, i32 2
  %6 = load %struct.rbtree*, %struct.rbtree** %5, align 8
  %7 = load %struct.manager*, %struct.manager** %1, align 8
  %8 = getelementptr inbounds %struct.manager, %struct.manager* %7, i32 0, i32 3
  %9 = load %struct.rbtree*, %struct.rbtree** %8, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @cancel(%struct.rbtree* %6, %struct.rbtree* %9, i64 %10, i64 %11, i32 1)
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define internal %struct.rbtree* @tableAlloc() #0 {
  %1 = call %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)* null)
  ret %struct.rbtree* %1
}

declare %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)*) #3

declare void @rbtree_free(%struct.rbtree*) #3

declare i64 @reservation_make(%struct.reservation*) #3

declare i64 @customer_addReservationInfo(%struct.customer*, i32, i64, i64) #3

declare i64 @customer_removeReservationInfo(%struct.customer*, i32, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 -2145761056}
!2 = !{i32 -2145759124}
!3 = !{i32 -2145757852}
!4 = !{i32 -2145757736}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.vectorize.width", i32 1337}
!7 = !{i32 -2145757414}
!8 = !{i32 -2145756178}
!9 = !{i32 -2145755630}
