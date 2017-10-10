; ModuleID = '../bin/manager.ll'
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
define noalias %struct.manager* @manager_alloc() #0 {
  %1 = tail call noalias i8* @malloc(i64 32) #6
  %2 = bitcast i8* %1 to %struct.manager*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 126, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.manager_alloc, i64 0, i64 0)) #7
  unreachable

; <label>:5                                       ; preds = %0
  %6 = tail call %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)* null) #6
  %7 = bitcast i8* %1 to %struct.rbtree**
  store %struct.rbtree* %6, %struct.rbtree** %7, align 8
  %8 = tail call %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)* null) #6
  %9 = getelementptr inbounds i8, i8* %1, i64 8
  %10 = bitcast i8* %9 to %struct.rbtree**
  store %struct.rbtree* %8, %struct.rbtree** %10, align 8
  %11 = tail call %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)* null) #6
  %12 = getelementptr inbounds i8, i8* %1, i64 16
  %13 = bitcast i8* %12 to %struct.rbtree**
  store %struct.rbtree* %11, %struct.rbtree** %13, align 8
  %14 = tail call %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)* null) #6
  %15 = getelementptr inbounds i8, i8* %1, i64 24
  %16 = bitcast i8* %15 to %struct.rbtree**
  store %struct.rbtree* %14, %struct.rbtree** %16, align 8
  %17 = icmp eq %struct.rbtree* %6, null
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %5
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 132, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.manager_alloc, i64 0, i64 0)) #7
  unreachable

; <label>:19                                      ; preds = %5
  %20 = icmp eq %struct.rbtree* %8, null
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %19
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 133, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.manager_alloc, i64 0, i64 0)) #7
  unreachable

; <label>:22                                      ; preds = %19
  %23 = icmp eq %struct.rbtree* %11, null
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %22
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 134, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.manager_alloc, i64 0, i64 0)) #7
  unreachable

; <label>:25                                      ; preds = %22
  %26 = icmp eq %struct.rbtree* %14, null
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %25
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 135, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.manager_alloc, i64 0, i64 0)) #7
  unreachable

; <label>:28                                      ; preds = %25
  ret %struct.manager* %2
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define void @manager_free(%struct.manager* nocapture readonly %managerPtr) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 0
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  tail call void @rbtree_free(%struct.rbtree* %2) #6
  %3 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 1
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  tail call void @rbtree_free(%struct.rbtree* %4) #6
  %5 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 2
  %6 = load %struct.rbtree*, %struct.rbtree** %5, align 8
  tail call void @rbtree_free(%struct.rbtree* %6) #6
  %7 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 3
  %8 = load %struct.rbtree*, %struct.rbtree** %7, align 8
  tail call void @rbtree_free(%struct.rbtree* %8) #6
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @addReservation(%struct.rbtree* %tablePtr, i64 %id, i64 %num, i64 %price) #0 {
  %1 = inttoptr i64 %id to i8*
  %2 = tail call i8* @TMrbtree_get(%struct.rbtree* %tablePtr, i8* %1) #6
  %3 = bitcast i8* %2 to %struct.reservation*
  %4 = icmp eq i8* %2, null
  br i1 %4, label %5, label %15

; <label>:5                                       ; preds = %0
  %6 = icmp slt i64 %num, 1
  %7 = icmp slt i64 %price, 0
  %or.cond = or i1 %6, %7
  br i1 %or.cond, label %30, label %8

; <label>:8                                       ; preds = %5
  %9 = tail call %struct.reservation* @reservation_alloc(i64 %id, i64 %num, i64 %price) #6
  %10 = icmp eq %struct.reservation* %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %8
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 194, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.addReservation, i64 0, i64 0)) #7
  unreachable

; <label>:12                                      ; preds = %8
  %13 = bitcast %struct.reservation* %9 to i8*
  %14 = tail call i64 @TMrbtree_insert(%struct.rbtree* %tablePtr, i8* %1, i8* %13) #6
  br label %30

; <label>:15                                      ; preds = %0
  %16 = tail call i64 @reservation_addToTotal(%struct.reservation* %3, i64 %num) #6
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %30, label %18

; <label>:18                                      ; preds = %15
  %19 = getelementptr inbounds i8, i8* %2, i64 24
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

; <label>:23                                      ; preds = %18
  %24 = tail call i64 @TMrbtree_delete(%struct.rbtree* %tablePtr, i8* %1) #6
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %23
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !1
  br label %27

; <label>:27                                      ; preds = %26, %23
  tail call void @reservation_free(%struct.reservation* nonnull %3) #6
  br label %30

; <label>:28                                      ; preds = %18
  %29 = tail call i64 @reservation_updatePrice(%struct.reservation* nonnull %3, i64 %price) #6
  br label %30

; <label>:30                                      ; preds = %12, %28, %27, %15, %5
  %.0 = phi i64 [ 0, %5 ], [ 0, %15 ], [ 1, %27 ], [ 1, %28 ], [ 1, %12 ]
  ret i64 %.0
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
  %1 = inttoptr i64 %id to i8*
  %2 = tail call i8* @rbtree_get(%struct.rbtree* %tablePtr, i8* %1) #6
  %3 = bitcast i8* %2 to %struct.reservation*
  %4 = icmp eq i8* %2, null
  br i1 %4, label %5, label %17

; <label>:5                                       ; preds = %0
  %6 = icmp slt i64 %num, 1
  %7 = icmp slt i64 %price, 0
  %or.cond = or i1 %6, %7
  br i1 %or.cond, label %31, label %8

; <label>:8                                       ; preds = %5
  %9 = tail call %struct.reservation* @reservation_alloc_seq(i64 %id, i64 %num, i64 %price) #6
  %10 = icmp eq %struct.reservation* %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %8
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 229, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.addReservation_seq, i64 0, i64 0)) #7
  unreachable

; <label>:12                                      ; preds = %8
  %13 = bitcast %struct.reservation* %9 to i8*
  %14 = tail call i64 @rbtree_insert(%struct.rbtree* %tablePtr, i8* %1, i8* %13) #6
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %31

; <label>:16                                      ; preds = %12
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 231, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.addReservation_seq, i64 0, i64 0)) #7
  unreachable

; <label>:17                                      ; preds = %0
  %18 = tail call i64 @reservation_addToTotal_seq(%struct.reservation* %3, i64 %num) #6
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %31, label %20

; <label>:20                                      ; preds = %17
  %21 = getelementptr inbounds i8, i8* %2, i64 24
  %22 = bitcast i8* %21 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

; <label>:25                                      ; preds = %20
  %26 = tail call i64 @rbtree_delete(%struct.rbtree* %tablePtr, i8* %1) #6
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

; <label>:28                                      ; preds = %25
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 239, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.addReservation_seq, i64 0, i64 0)) #7
  unreachable

; <label>:29                                      ; preds = %20
  %30 = tail call i64 @reservation_updatePrice_seq(%struct.reservation* nonnull %3, i64 %price) #6
  br label %31

; <label>:31                                      ; preds = %29, %25, %12, %17, %5
  %.0 = phi i64 [ 0, %5 ], [ 0, %17 ], [ 1, %12 ], [ 1, %25 ], [ 1, %29 ]
  ret i64 %.0
}

declare i8* @rbtree_get(%struct.rbtree*, i8*) #3

declare %struct.reservation* @reservation_alloc_seq(i64, i64, i64) #3

declare i64 @rbtree_insert(%struct.rbtree*, i8*, i8*) #3

declare i64 @reservation_addToTotal_seq(%struct.reservation*, i64) #3

declare i64 @rbtree_delete(%struct.rbtree*, i8*) #3

declare i64 @reservation_updatePrice_seq(%struct.reservation*, i64) #3

; Function Attrs: nounwind uwtable
define i64 @manager_addCar(%struct.manager* nocapture readonly %managerPtr, i64 %carId, i64 %numCars, i64 %price) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 0
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = tail call i64 @addReservation(%struct.rbtree* %2, i64 %carId, i64 %numCars, i64 %price)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @manager_addCar_seq(%struct.manager* nocapture readonly %managerPtr, i64 %carId, i64 %numCars, i64 %price) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 0
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = tail call i64 @addReservation_seq(%struct.rbtree* %2, i64 %carId, i64 %numCars, i64 %price)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @manager_deleteCar(%struct.manager* nocapture readonly %managerPtr, i64 %carId, i64 %numCar) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 0
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %carId to i8*
  %4 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %3) #6
  %5 = bitcast i8* %4 to %struct.reservation*
  %6 = icmp eq i8* %4, null
  br i1 %6, label %addReservation.exit, label %7

; <label>:7                                       ; preds = %0
  %8 = sub nsw i64 0, %numCar
  %9 = tail call i64 @reservation_addToTotal(%struct.reservation* %5, i64 %8) #6
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %addReservation.exit, label %11

; <label>:11                                      ; preds = %7
  %12 = getelementptr inbounds i8, i8* %4, i64 24
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %21

; <label>:16                                      ; preds = %11
  %17 = tail call i64 @TMrbtree_delete(%struct.rbtree* %2, i8* %3) #6
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %16
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !1
  br label %20

; <label>:20                                      ; preds = %19, %16
  tail call void @reservation_free(%struct.reservation* nonnull %5) #6
  br label %addReservation.exit

; <label>:21                                      ; preds = %11
  %22 = tail call i64 @reservation_updatePrice(%struct.reservation* nonnull %5, i64 -1) #6
  br label %addReservation.exit

addReservation.exit:                              ; preds = %0, %7, %20, %21
  %.0.i = phi i64 [ 0, %7 ], [ 1, %20 ], [ 1, %21 ], [ 0, %0 ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define i64 @manager_addRoom(%struct.manager* nocapture readonly %managerPtr, i64 %roomId, i64 %numRoom, i64 %price) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 1
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = tail call i64 @addReservation(%struct.rbtree* %2, i64 %roomId, i64 %numRoom, i64 %price)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @manager_addRoom_seq(%struct.manager* nocapture readonly %managerPtr, i64 %roomId, i64 %numRoom, i64 %price) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 1
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = tail call i64 @addReservation_seq(%struct.rbtree* %2, i64 %roomId, i64 %numRoom, i64 %price)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @manager_deleteRoom(%struct.manager* nocapture readonly %managerPtr, i64 %roomId, i64 %numRoom) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 1
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %roomId to i8*
  %4 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %3) #6
  %5 = bitcast i8* %4 to %struct.reservation*
  %6 = icmp eq i8* %4, null
  br i1 %6, label %addReservation.exit, label %7

; <label>:7                                       ; preds = %0
  %8 = sub nsw i64 0, %numRoom
  %9 = tail call i64 @reservation_addToTotal(%struct.reservation* %5, i64 %8) #6
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %addReservation.exit, label %11

; <label>:11                                      ; preds = %7
  %12 = getelementptr inbounds i8, i8* %4, i64 24
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %21

; <label>:16                                      ; preds = %11
  %17 = tail call i64 @TMrbtree_delete(%struct.rbtree* %2, i8* %3) #6
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %16
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !1
  br label %20

; <label>:20                                      ; preds = %19, %16
  tail call void @reservation_free(%struct.reservation* nonnull %5) #6
  br label %addReservation.exit

; <label>:21                                      ; preds = %11
  %22 = tail call i64 @reservation_updatePrice(%struct.reservation* nonnull %5, i64 -1) #6
  br label %addReservation.exit

addReservation.exit:                              ; preds = %0, %7, %20, %21
  %.0.i = phi i64 [ 0, %7 ], [ 1, %20 ], [ 1, %21 ], [ 0, %0 ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define i64 @manager_addFlight(%struct.manager* nocapture readonly %managerPtr, i64 %flightId, i64 %numSeat, i64 %price) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 2
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = tail call i64 @addReservation(%struct.rbtree* %2, i64 %flightId, i64 %numSeat, i64 %price)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @manager_addFlight_seq(%struct.manager* nocapture readonly %managerPtr, i64 %flightId, i64 %numSeat, i64 %price) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 2
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = tail call i64 @addReservation_seq(%struct.rbtree* %2, i64 %flightId, i64 %numSeat, i64 %price)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @manager_deleteFlight(%struct.manager* nocapture readonly %managerPtr, i64 %flightId) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 2
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %flightId to i8*
  %4 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %3) #6
  %5 = icmp eq i8* %4, null
  br i1 %5, label %addReservation.exit, label %6

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds i8, i8* %4, i64 8
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %addReservation.exit, label %11

; <label>:11                                      ; preds = %6
  %12 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %13 = getelementptr inbounds i8, i8* %4, i64 24
  %14 = bitcast i8* %13 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = tail call i8* @TMrbtree_get(%struct.rbtree* %12, i8* %3) #6
  %17 = bitcast i8* %16 to %struct.reservation*
  %18 = icmp eq i8* %16, null
  br i1 %18, label %addReservation.exit, label %19

; <label>:19                                      ; preds = %11
  %20 = sub nsw i64 0, %15
  %21 = tail call i64 @reservation_addToTotal(%struct.reservation* %17, i64 %20) #6
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %addReservation.exit, label %23

; <label>:23                                      ; preds = %19
  %24 = getelementptr inbounds i8, i8* %16, i64 24
  %25 = bitcast i8* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %33

; <label>:28                                      ; preds = %23
  %29 = tail call i64 @TMrbtree_delete(%struct.rbtree* %12, i8* %3) #6
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %28
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !1
  br label %32

; <label>:32                                      ; preds = %31, %28
  tail call void @reservation_free(%struct.reservation* nonnull %17) #6
  br label %addReservation.exit

; <label>:33                                      ; preds = %23
  %34 = tail call i64 @reservation_updatePrice(%struct.reservation* nonnull %17, i64 -1) #6
  br label %addReservation.exit

addReservation.exit:                              ; preds = %33, %32, %19, %11, %6, %0
  %.0 = phi i64 [ 0, %0 ], [ 0, %6 ], [ 0, %19 ], [ 1, %32 ], [ 1, %33 ], [ 0, %11 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @manager_addCustomer(%struct.manager* nocapture readonly %managerPtr, i64 %customerId) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 3
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %customerId to i8*
  %4 = tail call i64 @TMrbtree_contains(%struct.rbtree* %2, i8* %3) #6
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %16

; <label>:6                                       ; preds = %0
  %7 = tail call %struct.customer* @customer_alloc(i64 %customerId) #6
  %8 = icmp eq %struct.customer* %7, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %6
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 397, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.manager_addCustomer, i64 0, i64 0)) #7
  unreachable

; <label>:10                                      ; preds = %6
  %11 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %12 = bitcast %struct.customer* %7 to i8*
  %13 = tail call i64 @TMrbtree_insert(%struct.rbtree* %11, i8* %3, i8* %12) #6
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %10
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !2
  br label %16

; <label>:16                                      ; preds = %10, %15, %0
  %.0 = phi i64 [ 0, %0 ], [ 1, %15 ], [ 1, %10 ]
  ret i64 %.0
}

declare i64 @TMrbtree_contains(%struct.rbtree*, i8*) #3

declare %struct.customer* @customer_alloc(i64) #3

; Function Attrs: nounwind uwtable
define i64 @manager_addCustomer_seq(%struct.manager* nocapture readonly %managerPtr, i64 %customerId) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 3
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %customerId to i8*
  %4 = tail call i64 @rbtree_contains(%struct.rbtree* %2, i8* %3) #6
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %16

; <label>:6                                       ; preds = %0
  %7 = tail call %struct.customer* @customer_alloc_seq(i64 %customerId) #6
  %8 = icmp eq %struct.customer* %7, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %6
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 418, i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.manager_addCustomer_seq, i64 0, i64 0)) #7
  unreachable

; <label>:10                                      ; preds = %6
  %11 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %12 = bitcast %struct.customer* %7 to i8*
  %13 = tail call i64 @rbtree_insert(%struct.rbtree* %11, i8* %3, i8* %12) #6
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %10
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 420, i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.manager_addCustomer_seq, i64 0, i64 0)) #7
  unreachable

; <label>:16                                      ; preds = %10, %0
  %.0 = phi i64 [ 0, %0 ], [ 1, %10 ]
  ret i64 %.0
}

declare i64 @rbtree_contains(%struct.rbtree*, i8*) #3

declare %struct.customer* @customer_alloc_seq(i64) #3

; Function Attrs: nounwind uwtable
define i64 @manager_deleteCustomer(%struct.manager* nocapture readonly %managerPtr, i64 %customerId) #0 {
  %reservationTables = alloca [3 x %struct.rbtree*], align 16
  %it = alloca %struct.list_node*, align 8
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 3
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %customerId to i8*
  %4 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %3) #6
  %5 = bitcast i8* %4 to %struct.customer*
  %6 = icmp eq i8* %4, null
  br i1 %6, label %52, label %7

; <label>:7                                       ; preds = %0
  %8 = bitcast %struct.manager* %managerPtr to i64*
  %9 = load i64, i64* %8, align 8
  %10 = bitcast [3 x %struct.rbtree*]* %reservationTables to i64*
  store i64 %9, i64* %10, align 16
  %11 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 1
  %12 = bitcast %struct.rbtree** %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds [3 x %struct.rbtree*], [3 x %struct.rbtree*]* %reservationTables, i64 0, i64 2
  %15 = bitcast %struct.rbtree** %14 to i64*
  store i64 %13, i64* %15, align 16
  %16 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 2
  %17 = bitcast %struct.rbtree** %16 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds [3 x %struct.rbtree*], [3 x %struct.rbtree*]* %reservationTables, i64 0, i64 1
  %20 = bitcast %struct.rbtree** %19 to i64*
  store i64 %18, i64* %20, align 8
  %21 = getelementptr inbounds i8, i8* %4, i64 8
  %22 = bitcast i8* %21 to %struct.list**
  %23 = load %struct.list*, %struct.list** %22, align 8
  call void @TMlist_iter_reset(%struct.list_node** nonnull %it, %struct.list* %23) #6
  %24 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %23) #8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %7
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %44
  %26 = call i8* @TMlist_iter_next(%struct.list_node** nonnull %it, %struct.list* %23) #6
  %27 = bitcast i8* %26 to %struct.reservation_info*
  %28 = bitcast i8* %26 to i32*
  %29 = load i32, i32* %28, align 8
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [3 x %struct.rbtree*], [3 x %struct.rbtree*]* %reservationTables, i64 0, i64 %30
  %32 = load %struct.rbtree*, %struct.rbtree** %31, align 8
  %33 = getelementptr inbounds i8, i8* %26, i64 8
  %34 = bitcast i8* %33 to i8**
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @TMrbtree_get(%struct.rbtree* %32, i8* %35) #6
  %37 = bitcast i8* %36 to %struct.reservation*
  %38 = icmp eq i8* %36, null
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %.lr.ph
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !3
  br label %40

; <label>:40                                      ; preds = %39, %.lr.ph
  %41 = call i64 @reservation_cancel(%struct.reservation* %37) #6
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

; <label>:43                                      ; preds = %40
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !4
  br label %44

; <label>:44                                      ; preds = %43, %40
  call void @reservation_info_free(%struct.reservation_info* %27) #6
  %45 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %23) #8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !5

._crit_edge.loopexit:                             ; preds = %44
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %7
  %47 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %48 = call i64 @TMrbtree_delete(%struct.rbtree* %47, i8* %3) #6
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %._crit_edge
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !7
  br label %51

; <label>:51                                      ; preds = %50, %._crit_edge
  call void @customer_free(%struct.customer* %5) #6
  br label %52

; <label>:52                                      ; preds = %0, %51
  %.0 = phi i64 [ 1, %51 ], [ 0, %0 ]
  ret i64 %.0
}

declare void @TMlist_iter_reset(%struct.list_node**, %struct.list*) #3

; Function Attrs: nounwind readonly
declare i64 @TMlist_iter_hasNext(%struct.list_node**, %struct.list*) #4

declare i8* @TMlist_iter_next(%struct.list_node**, %struct.list*) #3

declare i64 @reservation_cancel(%struct.reservation*) #3

declare void @reservation_info_free(%struct.reservation_info*) #3

declare void @customer_free(%struct.customer*) #3

; Function Attrs: nounwind readonly uwtable
define i64 @manager_queryCar(%struct.manager* nocapture readonly %managerPtr, i64 %carId) #5 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 0
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %carId to i8*
  %4 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %3) #6
  %5 = icmp eq i8* %4, null
  br i1 %5, label %queryNumFree.exit, label %6

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds i8, i8* %4, i64 16
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  br label %queryNumFree.exit

queryNumFree.exit:                                ; preds = %0, %6
  %numFree.0.i = phi i64 [ %9, %6 ], [ -1, %0 ]
  ret i64 %numFree.0.i
}

; Function Attrs: nounwind uwtable
define i64 @manager_queryCarPrice(%struct.manager* nocapture readonly %managerPtr, i64 %carId) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 0
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %carId to i8*
  %4 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %3) #6
  %5 = icmp eq i8* %4, null
  br i1 %5, label %queryPrice.exit, label %6

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds i8, i8* %4, i64 32
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  br label %queryPrice.exit

queryPrice.exit:                                  ; preds = %0, %6
  %price.0.i = phi i64 [ %9, %6 ], [ -1, %0 ]
  ret i64 %price.0.i
}

; Function Attrs: nounwind readonly uwtable
define i64 @manager_queryRoom(%struct.manager* nocapture readonly %managerPtr, i64 %roomId) #5 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 1
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %roomId to i8*
  %4 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %3) #6
  %5 = icmp eq i8* %4, null
  br i1 %5, label %queryNumFree.exit, label %6

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds i8, i8* %4, i64 16
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  br label %queryNumFree.exit

queryNumFree.exit:                                ; preds = %0, %6
  %numFree.0.i = phi i64 [ %9, %6 ], [ -1, %0 ]
  ret i64 %numFree.0.i
}

; Function Attrs: nounwind uwtable
define i64 @manager_queryRoomPrice(%struct.manager* nocapture readonly %managerPtr, i64 %roomId) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 1
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %roomId to i8*
  %4 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %3) #6
  %5 = icmp eq i8* %4, null
  br i1 %5, label %queryPrice.exit, label %6

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds i8, i8* %4, i64 32
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  br label %queryPrice.exit

queryPrice.exit:                                  ; preds = %0, %6
  %price.0.i = phi i64 [ %9, %6 ], [ -1, %0 ]
  ret i64 %price.0.i
}

; Function Attrs: nounwind readonly uwtable
define i64 @manager_queryFlight(%struct.manager* nocapture readonly %managerPtr, i64 %flightId) #5 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 2
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %flightId to i8*
  %4 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %3) #6
  %5 = icmp eq i8* %4, null
  br i1 %5, label %queryNumFree.exit, label %6

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds i8, i8* %4, i64 16
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  br label %queryNumFree.exit

queryNumFree.exit:                                ; preds = %0, %6
  %numFree.0.i = phi i64 [ %9, %6 ], [ -1, %0 ]
  ret i64 %numFree.0.i
}

; Function Attrs: nounwind uwtable
define i64 @manager_queryFlightPrice(%struct.manager* nocapture readonly %managerPtr, i64 %flightId) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 2
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %flightId to i8*
  %4 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %3) #6
  %5 = icmp eq i8* %4, null
  br i1 %5, label %queryPrice.exit, label %6

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds i8, i8* %4, i64 32
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  br label %queryPrice.exit

queryPrice.exit:                                  ; preds = %0, %6
  %price.0.i = phi i64 [ %9, %6 ], [ -1, %0 ]
  ret i64 %price.0.i
}

; Function Attrs: nounwind uwtable
define i64 @manager_queryCustomerBill(%struct.manager* nocapture readonly %managerPtr, i64 %customerId) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 3
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %customerId to i8*
  %4 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %3) #6
  %5 = icmp eq i8* %4, null
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %4 to %struct.customer*
  %8 = tail call i64 @customer_getBill(%struct.customer* %7) #6
  br label %9

; <label>:9                                       ; preds = %0, %6
  %bill.0 = phi i64 [ %8, %6 ], [ -1, %0 ]
  ret i64 %bill.0
}

declare i64 @customer_getBill(%struct.customer*) #3

; Function Attrs: nounwind uwtable
define i64 @manager_reserveCar(%struct.manager* nocapture readonly %managerPtr, i64 %customerId, i64 %carId) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 0
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 3
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  %5 = inttoptr i64 %customerId to i8*
  %6 = tail call i8* @TMrbtree_get(%struct.rbtree* %4, i8* %5) #6
  %7 = bitcast i8* %6 to %struct.customer*
  %8 = icmp eq i8* %6, null
  br i1 %8, label %reserve.exit, label %9

; <label>:9                                       ; preds = %0
  %10 = inttoptr i64 %carId to i8*
  %11 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %10) #6
  %12 = bitcast i8* %11 to %struct.reservation*
  %13 = icmp eq i8* %11, null
  br i1 %13, label %reserve.exit, label %14

; <label>:14                                      ; preds = %9
  %15 = tail call i64 @reservation_make(%struct.reservation* %12) #6
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %reserve.exit, label %17

; <label>:17                                      ; preds = %14
  %18 = getelementptr inbounds i8, i8* %11, i64 32
  %19 = bitcast i8* %18 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = tail call i64 @customer_addReservationInfo(%struct.customer* %7, i32 0, i64 %carId, i64 %20) #6
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %reserve.exit

; <label>:23                                      ; preds = %17
  %24 = tail call i64 @reservation_cancel(%struct.reservation* nonnull %12) #6
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %reserve.exit

; <label>:26                                      ; preds = %23
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !8
  br label %reserve.exit

reserve.exit:                                     ; preds = %0, %9, %14, %17, %23, %26
  %.0.i = phi i64 [ 0, %0 ], [ 0, %9 ], [ 0, %14 ], [ 0, %26 ], [ 0, %23 ], [ 1, %17 ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define i64 @manager_reserveRoom(%struct.manager* nocapture readonly %managerPtr, i64 %customerId, i64 %roomId) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 1
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 3
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  %5 = inttoptr i64 %customerId to i8*
  %6 = tail call i8* @TMrbtree_get(%struct.rbtree* %4, i8* %5) #6
  %7 = bitcast i8* %6 to %struct.customer*
  %8 = icmp eq i8* %6, null
  br i1 %8, label %reserve.exit, label %9

; <label>:9                                       ; preds = %0
  %10 = inttoptr i64 %roomId to i8*
  %11 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %10) #6
  %12 = bitcast i8* %11 to %struct.reservation*
  %13 = icmp eq i8* %11, null
  br i1 %13, label %reserve.exit, label %14

; <label>:14                                      ; preds = %9
  %15 = tail call i64 @reservation_make(%struct.reservation* %12) #6
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %reserve.exit, label %17

; <label>:17                                      ; preds = %14
  %18 = getelementptr inbounds i8, i8* %11, i64 32
  %19 = bitcast i8* %18 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = tail call i64 @customer_addReservationInfo(%struct.customer* %7, i32 2, i64 %roomId, i64 %20) #6
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %reserve.exit

; <label>:23                                      ; preds = %17
  %24 = tail call i64 @reservation_cancel(%struct.reservation* nonnull %12) #6
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %reserve.exit

; <label>:26                                      ; preds = %23
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !8
  br label %reserve.exit

reserve.exit:                                     ; preds = %0, %9, %14, %17, %23, %26
  %.0.i = phi i64 [ 0, %0 ], [ 0, %9 ], [ 0, %14 ], [ 0, %26 ], [ 0, %23 ], [ 1, %17 ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define i64 @manager_reserveFlight(%struct.manager* nocapture readonly %managerPtr, i64 %customerId, i64 %flightId) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 2
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 3
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  %5 = inttoptr i64 %customerId to i8*
  %6 = tail call i8* @TMrbtree_get(%struct.rbtree* %4, i8* %5) #6
  %7 = bitcast i8* %6 to %struct.customer*
  %8 = icmp eq i8* %6, null
  br i1 %8, label %reserve.exit, label %9

; <label>:9                                       ; preds = %0
  %10 = inttoptr i64 %flightId to i8*
  %11 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %10) #6
  %12 = bitcast i8* %11 to %struct.reservation*
  %13 = icmp eq i8* %11, null
  br i1 %13, label %reserve.exit, label %14

; <label>:14                                      ; preds = %9
  %15 = tail call i64 @reservation_make(%struct.reservation* %12) #6
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %reserve.exit, label %17

; <label>:17                                      ; preds = %14
  %18 = getelementptr inbounds i8, i8* %11, i64 32
  %19 = bitcast i8* %18 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = tail call i64 @customer_addReservationInfo(%struct.customer* %7, i32 1, i64 %flightId, i64 %20) #6
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %reserve.exit

; <label>:23                                      ; preds = %17
  %24 = tail call i64 @reservation_cancel(%struct.reservation* nonnull %12) #6
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %reserve.exit

; <label>:26                                      ; preds = %23
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !8
  br label %reserve.exit

reserve.exit:                                     ; preds = %0, %9, %14, %17, %23, %26
  %.0.i = phi i64 [ 0, %0 ], [ 0, %9 ], [ 0, %14 ], [ 0, %26 ], [ 0, %23 ], [ 1, %17 ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define i64 @manager_cancelCar(%struct.manager* nocapture readonly %managerPtr, i64 %customerId, i64 %carId) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 0
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 3
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  %5 = inttoptr i64 %customerId to i8*
  %6 = tail call i8* @TMrbtree_get(%struct.rbtree* %4, i8* %5) #6
  %7 = bitcast i8* %6 to %struct.customer*
  %8 = icmp eq i8* %6, null
  br i1 %8, label %cancel.exit, label %9

; <label>:9                                       ; preds = %0
  %10 = inttoptr i64 %carId to i8*
  %11 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %10) #6
  %12 = bitcast i8* %11 to %struct.reservation*
  %13 = icmp eq i8* %11, null
  br i1 %13, label %cancel.exit, label %14

; <label>:14                                      ; preds = %9
  %15 = tail call i64 @reservation_cancel(%struct.reservation* %12) #6
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %cancel.exit, label %17

; <label>:17                                      ; preds = %14
  %18 = tail call i64 @customer_removeReservationInfo(%struct.customer* %7, i32 0, i64 %carId) #6
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %cancel.exit

; <label>:20                                      ; preds = %17
  %21 = tail call i64 @reservation_make(%struct.reservation* %12) #6
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %cancel.exit

; <label>:23                                      ; preds = %20
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !9
  br label %cancel.exit

cancel.exit:                                      ; preds = %0, %9, %14, %17, %20, %23
  %.0.i = phi i64 [ 0, %0 ], [ 0, %9 ], [ 0, %14 ], [ 0, %23 ], [ 0, %20 ], [ 1, %17 ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define i64 @manager_cancelRoom(%struct.manager* nocapture readonly %managerPtr, i64 %customerId, i64 %roomId) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 1
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 3
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  %5 = inttoptr i64 %customerId to i8*
  %6 = tail call i8* @TMrbtree_get(%struct.rbtree* %4, i8* %5) #6
  %7 = bitcast i8* %6 to %struct.customer*
  %8 = icmp eq i8* %6, null
  br i1 %8, label %cancel.exit, label %9

; <label>:9                                       ; preds = %0
  %10 = inttoptr i64 %roomId to i8*
  %11 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %10) #6
  %12 = bitcast i8* %11 to %struct.reservation*
  %13 = icmp eq i8* %11, null
  br i1 %13, label %cancel.exit, label %14

; <label>:14                                      ; preds = %9
  %15 = tail call i64 @reservation_cancel(%struct.reservation* %12) #6
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %cancel.exit, label %17

; <label>:17                                      ; preds = %14
  %18 = tail call i64 @customer_removeReservationInfo(%struct.customer* %7, i32 2, i64 %roomId) #6
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %cancel.exit

; <label>:20                                      ; preds = %17
  %21 = tail call i64 @reservation_make(%struct.reservation* %12) #6
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %cancel.exit

; <label>:23                                      ; preds = %20
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !9
  br label %cancel.exit

cancel.exit:                                      ; preds = %0, %9, %14, %17, %20, %23
  %.0.i = phi i64 [ 0, %0 ], [ 0, %9 ], [ 0, %14 ], [ 0, %23 ], [ 0, %20 ], [ 1, %17 ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define i64 @manager_cancelFlight(%struct.manager* nocapture readonly %managerPtr, i64 %customerId, i64 %flightId) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 2
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 3
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  %5 = inttoptr i64 %customerId to i8*
  %6 = tail call i8* @TMrbtree_get(%struct.rbtree* %4, i8* %5) #6
  %7 = bitcast i8* %6 to %struct.customer*
  %8 = icmp eq i8* %6, null
  br i1 %8, label %cancel.exit, label %9

; <label>:9                                       ; preds = %0
  %10 = inttoptr i64 %flightId to i8*
  %11 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %10) #6
  %12 = bitcast i8* %11 to %struct.reservation*
  %13 = icmp eq i8* %11, null
  br i1 %13, label %cancel.exit, label %14

; <label>:14                                      ; preds = %9
  %15 = tail call i64 @reservation_cancel(%struct.reservation* %12) #6
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %cancel.exit, label %17

; <label>:17                                      ; preds = %14
  %18 = tail call i64 @customer_removeReservationInfo(%struct.customer* %7, i32 1, i64 %flightId) #6
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %cancel.exit

; <label>:20                                      ; preds = %17
  %21 = tail call i64 @reservation_make(%struct.reservation* %12) #6
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %cancel.exit

; <label>:23                                      ; preds = %20
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !9
  br label %cancel.exit

cancel.exit:                                      ; preds = %0, %9, %14, %17, %20, %23
  %.0.i = phi i64 [ 0, %0 ], [ 0, %9 ], [ 0, %14 ], [ 0, %23 ], [ 0, %20 ], [ 1, %17 ]
  ret i64 %.0.i
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
