; ModuleID = '../bin/manager.marked.ll'
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
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call noalias i8* @malloc(i64 32) #6
  %2 = bitcast i8* %1 to %struct.manager*
  %3 = icmp ne %struct.manager* %2, null
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  br label %7

; <label>:5                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 126, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.manager_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %7

; <label>:7                                       ; preds = %6, %4
  %8 = call %struct.rbtree* @tableAlloc()
  %9 = getelementptr inbounds %struct.manager, %struct.manager* %2, i32 0, i32 0
  store %struct.rbtree* %8, %struct.rbtree** %9, align 8
  %10 = call %struct.rbtree* @tableAlloc()
  %11 = getelementptr inbounds %struct.manager, %struct.manager* %2, i32 0, i32 1
  store %struct.rbtree* %10, %struct.rbtree** %11, align 8
  %12 = call %struct.rbtree* @tableAlloc()
  %13 = getelementptr inbounds %struct.manager, %struct.manager* %2, i32 0, i32 2
  store %struct.rbtree* %12, %struct.rbtree** %13, align 8
  %14 = call %struct.rbtree* @tableAlloc()
  %15 = getelementptr inbounds %struct.manager, %struct.manager* %2, i32 0, i32 3
  store %struct.rbtree* %14, %struct.rbtree** %15, align 8
  %16 = getelementptr inbounds %struct.manager, %struct.manager* %2, i32 0, i32 0
  %17 = load %struct.rbtree*, %struct.rbtree** %16, align 8
  %18 = icmp ne %struct.rbtree* %17, null
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %7
  br label %22

; <label>:20                                      ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 132, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.manager_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %22

; <label>:22                                      ; preds = %21, %19
  %23 = getelementptr inbounds %struct.manager, %struct.manager* %2, i32 0, i32 1
  %24 = load %struct.rbtree*, %struct.rbtree** %23, align 8
  %25 = icmp ne %struct.rbtree* %24, null
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %22
  br label %29

; <label>:27                                      ; preds = %22
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 133, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.manager_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %29

; <label>:29                                      ; preds = %28, %26
  %30 = getelementptr inbounds %struct.manager, %struct.manager* %2, i32 0, i32 2
  %31 = load %struct.rbtree*, %struct.rbtree** %30, align 8
  %32 = icmp ne %struct.rbtree* %31, null
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %29
  br label %36

; <label>:34                                      ; preds = %29
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 134, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.manager_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %36

; <label>:36                                      ; preds = %35, %33
  %37 = getelementptr inbounds %struct.manager, %struct.manager* %2, i32 0, i32 3
  %38 = load %struct.rbtree*, %struct.rbtree** %37, align 8
  %39 = icmp ne %struct.rbtree* %38, null
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %36
  br label %43

; <label>:41                                      ; preds = %36
  call void @__assert_fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.manager_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %43

; <label>:43                                      ; preds = %42, %40
  ret %struct.manager* %2
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define void @manager_free(%struct.manager* %managerPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 0
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  call void @tableFree(%struct.rbtree* %2)
  %3 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 1
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  call void @tableFree(%struct.rbtree* %4)
  %5 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 2
  %6 = load %struct.rbtree*, %struct.rbtree** %5, align 8
  call void @tableFree(%struct.rbtree* %6)
  %7 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 3
  %8 = load %struct.rbtree*, %struct.rbtree** %7, align 8
  call void @tableFree(%struct.rbtree* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tableFree(%struct.rbtree* %mapPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  call void @rbtree_free(%struct.rbtree* %mapPtr)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @addReservation(%struct.rbtree* %tablePtr, i64 %id, i64 %num, i64 %price) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = inttoptr i64 %id to i8*
  %2 = call i8* @TMrbtree_get(%struct.rbtree* %tablePtr, i8* %1)
  %3 = bitcast i8* %2 to %struct.reservation*
  %4 = icmp eq %struct.reservation* %3, null
  br i1 %4, label %5, label %20

; <label>:5                                       ; preds = %0
  %6 = icmp slt i64 %num, 1
  br i1 %6, label %._crit_edge, label %7

._crit_edge:                                      ; preds = %5
  br label %9

; <label>:7                                       ; preds = %5
  %8 = icmp slt i64 %price, 0
  br i1 %8, label %._crit_edge1, label %10

._crit_edge1:                                     ; preds = %7
  br label %9

; <label>:9                                       ; preds = %._crit_edge1, %._crit_edge
  br label %38

; <label>:10                                      ; preds = %7
  %11 = call %struct.reservation* @reservation_alloc(i64 %id, i64 %num, i64 %price)
  %12 = icmp ne %struct.reservation* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %10
  br label %16

; <label>:14                                      ; preds = %10
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 194, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.addReservation, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = inttoptr i64 %id to i8*
  %18 = bitcast %struct.reservation* %11 to i8*
  %19 = call i64 @TMrbtree_insert(%struct.rbtree* %tablePtr, i8* %17, i8* %18)
  br label %37

; <label>:20                                      ; preds = %0
  %21 = call i64 @reservation_addToTotal(%struct.reservation* %3, i64 %num)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

; <label>:23                                      ; preds = %20
  br label %38

; <label>:24                                      ; preds = %20
  %25 = getelementptr inbounds %struct.reservation, %struct.reservation* %3, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %34

; <label>:28                                      ; preds = %24
  %29 = inttoptr i64 %id to i8*
  %30 = call i64 @TMrbtree_delete(%struct.rbtree* %tablePtr, i8* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %._crit_edge2

._crit_edge2:                                     ; preds = %28
  br label %33

; <label>:32                                      ; preds = %28
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !1
  br label %33

; <label>:33                                      ; preds = %._crit_edge2, %32
  call void @reservation_free(%struct.reservation* %3)
  br label %36

; <label>:34                                      ; preds = %24
  %35 = call i64 @reservation_updatePrice(%struct.reservation* %3, i64 %price)
  br label %36

; <label>:36                                      ; preds = %34, %33
  br label %37

; <label>:37                                      ; preds = %36, %16
  br label %38

; <label>:38                                      ; preds = %37, %23, %9
  %.0 = phi i64 [ 0, %9 ], [ 1, %37 ], [ 0, %23 ]
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
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = inttoptr i64 %id to i8*
  %2 = call i8* @rbtree_get(%struct.rbtree* %tablePtr, i8* %1)
  %3 = bitcast i8* %2 to %struct.reservation*
  %4 = icmp eq %struct.reservation* %3, null
  br i1 %4, label %5, label %25

; <label>:5                                       ; preds = %0
  %6 = icmp slt i64 %num, 1
  br i1 %6, label %._crit_edge, label %7

._crit_edge:                                      ; preds = %5
  br label %9

; <label>:7                                       ; preds = %5
  %8 = icmp slt i64 %price, 0
  br i1 %8, label %._crit_edge1, label %10

._crit_edge1:                                     ; preds = %7
  br label %9

; <label>:9                                       ; preds = %._crit_edge1, %._crit_edge
  br label %45

; <label>:10                                      ; preds = %7
  %11 = call %struct.reservation* @reservation_alloc_seq(i64 %id, i64 %num, i64 %price)
  %12 = icmp ne %struct.reservation* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %10
  br label %16

; <label>:14                                      ; preds = %10
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 229, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.addReservation_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = inttoptr i64 %id to i8*
  %18 = bitcast %struct.reservation* %11 to i8*
  %19 = call i64 @rbtree_insert(%struct.rbtree* %tablePtr, i8* %17, i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %16
  br label %24

; <label>:22                                      ; preds = %16
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 231, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.addReservation_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %24

; <label>:24                                      ; preds = %23, %21
  br label %44

; <label>:25                                      ; preds = %0
  %26 = call i64 @reservation_addToTotal_seq(%struct.reservation* %3, i64 %num)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

; <label>:28                                      ; preds = %25
  br label %45

; <label>:29                                      ; preds = %25
  %30 = getelementptr inbounds %struct.reservation, %struct.reservation* %3, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %41

; <label>:33                                      ; preds = %29
  %34 = inttoptr i64 %id to i8*
  %35 = call i64 @rbtree_delete(%struct.rbtree* %tablePtr, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %33
  br label %40

; <label>:38                                      ; preds = %33
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 239, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.addReservation_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %40

; <label>:40                                      ; preds = %39, %37
  br label %43

; <label>:41                                      ; preds = %29
  %42 = call i64 @reservation_updatePrice_seq(%struct.reservation* %3, i64 %price)
  br label %43

; <label>:43                                      ; preds = %41, %40
  br label %44

; <label>:44                                      ; preds = %43, %24
  br label %45

; <label>:45                                      ; preds = %44, %28, %9
  %.0 = phi i64 [ 0, %9 ], [ 1, %44 ], [ 0, %28 ]
  ret i64 %.0
}

declare i8* @rbtree_get(%struct.rbtree*, i8*) #3

declare %struct.reservation* @reservation_alloc_seq(i64, i64, i64) #3

declare i64 @rbtree_insert(%struct.rbtree*, i8*, i8*) #3

declare i64 @reservation_addToTotal_seq(%struct.reservation*, i64) #3

declare i64 @rbtree_delete(%struct.rbtree*, i8*) #3

declare i64 @reservation_updatePrice_seq(%struct.reservation*, i64) #3

; Function Attrs: nounwind uwtable
define i64 @manager_addCar(%struct.manager* %managerPtr, i64 %carId, i64 %numCars, i64 %price) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 0
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = call i64 @addReservation(%struct.rbtree* %2, i64 %carId, i64 %numCars, i64 %price)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @manager_addCar_seq(%struct.manager* %managerPtr, i64 %carId, i64 %numCars, i64 %price) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 0
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = call i64 @addReservation_seq(%struct.rbtree* %2, i64 %carId, i64 %numCars, i64 %price)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @manager_deleteCar(%struct.manager* %managerPtr, i64 %carId, i64 %numCar) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 0
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = sub nsw i64 0, %numCar
  %4 = call i64 @addReservation(%struct.rbtree* %2, i64 %carId, i64 %3, i64 -1)
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define i64 @manager_addRoom(%struct.manager* %managerPtr, i64 %roomId, i64 %numRoom, i64 %price) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 1
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = call i64 @addReservation(%struct.rbtree* %2, i64 %roomId, i64 %numRoom, i64 %price)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @manager_addRoom_seq(%struct.manager* %managerPtr, i64 %roomId, i64 %numRoom, i64 %price) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 1
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = call i64 @addReservation_seq(%struct.rbtree* %2, i64 %roomId, i64 %numRoom, i64 %price)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @manager_deleteRoom(%struct.manager* %managerPtr, i64 %roomId, i64 %numRoom) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 1
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = sub nsw i64 0, %numRoom
  %4 = call i64 @addReservation(%struct.rbtree* %2, i64 %roomId, i64 %3, i64 -1)
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define i64 @manager_addFlight(%struct.manager* %managerPtr, i64 %flightId, i64 %numSeat, i64 %price) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 2
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = call i64 @addReservation(%struct.rbtree* %2, i64 %flightId, i64 %numSeat, i64 %price)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @manager_addFlight_seq(%struct.manager* %managerPtr, i64 %flightId, i64 %numSeat, i64 %price) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 2
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = call i64 @addReservation_seq(%struct.rbtree* %2, i64 %flightId, i64 %numSeat, i64 %price)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @manager_deleteFlight(%struct.manager* %managerPtr, i64 %flightId) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 2
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %flightId to i8*
  %4 = call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %3)
  %5 = bitcast i8* %4 to %struct.reservation*
  %6 = icmp eq %struct.reservation* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %20

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct.reservation, %struct.reservation* %5, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %8
  br label %20

; <label>:13                                      ; preds = %8
  %14 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 2
  %15 = load %struct.rbtree*, %struct.rbtree** %14, align 8
  %16 = getelementptr inbounds %struct.reservation, %struct.reservation* %5, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = mul nsw i64 -1, %17
  %19 = call i64 @addReservation(%struct.rbtree* %15, i64 %flightId, i64 %18, i64 -1)
  br label %20

; <label>:20                                      ; preds = %13, %12, %7
  %.0 = phi i64 [ 0, %7 ], [ 0, %12 ], [ %19, %13 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @manager_addCustomer(%struct.manager* %managerPtr, i64 %customerId) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 3
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %customerId to i8*
  %4 = call i64 @TMrbtree_contains(%struct.rbtree* %2, i8* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  br label %22

; <label>:7                                       ; preds = %0
  %8 = call %struct.customer* @customer_alloc(i64 %customerId)
  %9 = icmp ne %struct.customer* %8, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7
  br label %13

; <label>:11                                      ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 397, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.manager_addCustomer, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %12, %10
  %14 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 3
  %15 = load %struct.rbtree*, %struct.rbtree** %14, align 8
  %16 = inttoptr i64 %customerId to i8*
  %17 = bitcast %struct.customer* %8 to i8*
  %18 = call i64 @TMrbtree_insert(%struct.rbtree* %15, i8* %16, i8* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %._crit_edge

._crit_edge:                                      ; preds = %13
  br label %21

; <label>:20                                      ; preds = %13
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !2
  br label %21

; <label>:21                                      ; preds = %._crit_edge, %20
  br label %22

; <label>:22                                      ; preds = %21, %6
  %.0 = phi i64 [ 0, %6 ], [ 1, %21 ]
  ret i64 %.0
}

declare i64 @TMrbtree_contains(%struct.rbtree*, i8*) #3

declare %struct.customer* @customer_alloc(i64) #3

; Function Attrs: nounwind uwtable
define i64 @manager_addCustomer_seq(%struct.manager* %managerPtr, i64 %customerId) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 3
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %customerId to i8*
  %4 = call i64 @rbtree_contains(%struct.rbtree* %2, i8* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  br label %24

; <label>:7                                       ; preds = %0
  %8 = call %struct.customer* @customer_alloc_seq(i64 %customerId)
  %9 = icmp ne %struct.customer* %8, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7
  br label %13

; <label>:11                                      ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 418, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.manager_addCustomer_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %12, %10
  %14 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 3
  %15 = load %struct.rbtree*, %struct.rbtree** %14, align 8
  %16 = inttoptr i64 %customerId to i8*
  %17 = bitcast %struct.customer* %8 to i8*
  %18 = call i64 @rbtree_insert(%struct.rbtree* %15, i8* %16, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %13
  br label %23

; <label>:21                                      ; preds = %13
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 420, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.manager_addCustomer_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %23

; <label>:23                                      ; preds = %22, %20
  br label %24

; <label>:24                                      ; preds = %23, %6
  %.0 = phi i64 [ 0, %6 ], [ 1, %23 ]
  ret i64 %.0
}

declare i64 @rbtree_contains(%struct.rbtree*, i8*) #3

declare %struct.customer* @customer_alloc_seq(i64) #3

; Function Attrs: nounwind uwtable
define i64 @manager_deleteCustomer(%struct.manager* %managerPtr, i64 %customerId) #0 {
  %reservationTables = alloca [3 x %struct.rbtree*], align 16
  %it = alloca %struct.list_node*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 3
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %customerId to i8*
  %4 = call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %3)
  %5 = bitcast i8* %4 to %struct.customer*
  %6 = icmp eq %struct.customer* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %50

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 0
  %10 = load %struct.rbtree*, %struct.rbtree** %9, align 8
  %11 = getelementptr inbounds [3 x %struct.rbtree*], [3 x %struct.rbtree*]* %reservationTables, i64 0, i64 0
  store %struct.rbtree* %10, %struct.rbtree** %11, align 16
  %12 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 1
  %13 = load %struct.rbtree*, %struct.rbtree** %12, align 8
  %14 = getelementptr inbounds [3 x %struct.rbtree*], [3 x %struct.rbtree*]* %reservationTables, i64 0, i64 2
  store %struct.rbtree* %13, %struct.rbtree** %14, align 16
  %15 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 2
  %16 = load %struct.rbtree*, %struct.rbtree** %15, align 8
  %17 = getelementptr inbounds [3 x %struct.rbtree*], [3 x %struct.rbtree*]* %reservationTables, i64 0, i64 1
  store %struct.rbtree* %16, %struct.rbtree** %17, align 8
  %18 = getelementptr inbounds %struct.customer, %struct.customer* %5, i32 0, i32 1
  %19 = load %struct.list*, %struct.list** %18, align 8
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %19)
  br label %__kernel__manager_deleteCustomer0

__kernel__manager_deleteCustomer0:                ; preds = %41, %8
  %20 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %19) #8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %42

; <label>:22                                      ; preds = %__kernel__manager_deleteCustomer0
  %23 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %19)
  %24 = bitcast i8* %23 to %struct.reservation_info*
  %25 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [3 x %struct.rbtree*], [3 x %struct.rbtree*]* %reservationTables, i64 0, i64 %27
  %29 = load %struct.rbtree*, %struct.rbtree** %28, align 8
  %30 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %24, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i8* @TMrbtree_get(%struct.rbtree* %29, i8* %32)
  %34 = bitcast i8* %33 to %struct.reservation*
  %35 = icmp eq %struct.reservation* %34, null
  br i1 %35, label %36, label %._crit_edge

._crit_edge:                                      ; preds = %22
  br label %37

; <label>:36                                      ; preds = %22
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !3
  br label %37

; <label>:37                                      ; preds = %._crit_edge, %36
  %38 = call i64 @reservation_cancel(%struct.reservation* %34)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %._crit_edge1

._crit_edge1:                                     ; preds = %37
  br label %41

; <label>:40                                      ; preds = %37
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !4
  br label %41

; <label>:41                                      ; preds = %._crit_edge1, %40
  call void @reservation_info_free(%struct.reservation_info* %24)
  br label %__kernel__manager_deleteCustomer0, !llvm.loop !5

; <label>:42                                      ; preds = %__kernel__manager_deleteCustomer0
  %43 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 3
  %44 = load %struct.rbtree*, %struct.rbtree** %43, align 8
  %45 = inttoptr i64 %customerId to i8*
  %46 = call i64 @TMrbtree_delete(%struct.rbtree* %44, i8* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %._crit_edge2

._crit_edge2:                                     ; preds = %42
  br label %49

; <label>:48                                      ; preds = %42
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !7
  br label %49

; <label>:49                                      ; preds = %._crit_edge2, %48
  call void @customer_free(%struct.customer* %5)
  br label %50

; <label>:50                                      ; preds = %49, %7
  %.0 = phi i64 [ 0, %7 ], [ 1, %49 ]
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
define i64 @manager_queryCar(%struct.manager* %managerPtr, i64 %carId) #5 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 0
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = call i64 @queryNumFree(%struct.rbtree* %2, i64 %carId)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal i64 @queryNumFree(%struct.rbtree* %tablePtr, i64 %id) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = inttoptr i64 %id to i8*
  %2 = call i8* @TMrbtree_get(%struct.rbtree* %tablePtr, i8* %1)
  %3 = bitcast i8* %2 to %struct.reservation*
  %4 = icmp ne %struct.reservation* %3, null
  br i1 %4, label %5, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %8

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.reservation, %struct.reservation* %3, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  br label %8

; <label>:8                                       ; preds = %._crit_edge, %5
  %numFree.0 = phi i64 [ %7, %5 ], [ -1, %._crit_edge ]
  ret i64 %numFree.0
}

; Function Attrs: nounwind uwtable
define i64 @manager_queryCarPrice(%struct.manager* %managerPtr, i64 %carId) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 0
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = call i64 @queryPrice(%struct.rbtree* %2, i64 %carId)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal i64 @queryPrice(%struct.rbtree* %tablePtr, i64 %id) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = inttoptr i64 %id to i8*
  %2 = call i8* @TMrbtree_get(%struct.rbtree* %tablePtr, i8* %1)
  %3 = bitcast i8* %2 to %struct.reservation*
  %4 = icmp ne %struct.reservation* %3, null
  br i1 %4, label %5, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %8

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.reservation, %struct.reservation* %3, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  br label %8

; <label>:8                                       ; preds = %._crit_edge, %5
  %price.0 = phi i64 [ %7, %5 ], [ -1, %._crit_edge ]
  ret i64 %price.0
}

; Function Attrs: nounwind readonly uwtable
define i64 @manager_queryRoom(%struct.manager* %managerPtr, i64 %roomId) #5 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 1
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = call i64 @queryNumFree(%struct.rbtree* %2, i64 %roomId)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @manager_queryRoomPrice(%struct.manager* %managerPtr, i64 %roomId) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 1
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = call i64 @queryPrice(%struct.rbtree* %2, i64 %roomId)
  ret i64 %3
}

; Function Attrs: nounwind readonly uwtable
define i64 @manager_queryFlight(%struct.manager* %managerPtr, i64 %flightId) #5 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 2
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = call i64 @queryNumFree(%struct.rbtree* %2, i64 %flightId)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @manager_queryFlightPrice(%struct.manager* %managerPtr, i64 %flightId) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 2
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = call i64 @queryPrice(%struct.rbtree* %2, i64 %flightId)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @manager_queryCustomerBill(%struct.manager* %managerPtr, i64 %customerId) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 3
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %customerId to i8*
  %4 = call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %3)
  %5 = bitcast i8* %4 to %struct.customer*
  %6 = icmp ne %struct.customer* %5, null
  br i1 %6, label %7, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %9

; <label>:7                                       ; preds = %0
  %8 = call i64 @customer_getBill(%struct.customer* %5)
  br label %9

; <label>:9                                       ; preds = %._crit_edge, %7
  %bill.0 = phi i64 [ %8, %7 ], [ -1, %._crit_edge ]
  ret i64 %bill.0
}

declare i64 @customer_getBill(%struct.customer*) #3

; Function Attrs: nounwind uwtable
define i64 @manager_reserveCar(%struct.manager* %managerPtr, i64 %customerId, i64 %carId) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 0
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 3
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  %5 = call i64 @reserve(%struct.rbtree* %2, %struct.rbtree* %4, i64 %customerId, i64 %carId, i32 0)
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define internal i64 @reserve(%struct.rbtree* %tablePtr, %struct.rbtree* %customerTablePtr, i64 %customerId, i64 %id, i32 %type) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = inttoptr i64 %customerId to i8*
  %2 = call i8* @TMrbtree_get(%struct.rbtree* %customerTablePtr, i8* %1)
  %3 = bitcast i8* %2 to %struct.customer*
  %4 = icmp eq %struct.customer* %3, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  br label %27

; <label>:6                                       ; preds = %0
  %7 = inttoptr i64 %id to i8*
  %8 = call i8* @TMrbtree_get(%struct.rbtree* %tablePtr, i8* %7)
  %9 = bitcast i8* %8 to %struct.reservation*
  %10 = icmp eq %struct.reservation* %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %6
  br label %27

; <label>:12                                      ; preds = %6
  %13 = call i64 @reservation_make(%struct.reservation* %9)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

; <label>:15                                      ; preds = %12
  br label %27

; <label>:16                                      ; preds = %12
  %17 = getelementptr inbounds %struct.reservation, %struct.reservation* %9, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @customer_addReservationInfo(%struct.customer* %3, i32 %type, i64 %id, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

; <label>:21                                      ; preds = %16
  %22 = call i64 @reservation_cancel(%struct.reservation* %9)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %._crit_edge

._crit_edge:                                      ; preds = %21
  br label %25

; <label>:24                                      ; preds = %21
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !8
  br label %25

; <label>:25                                      ; preds = %._crit_edge, %24
  br label %27

; <label>:26                                      ; preds = %16
  br label %27

; <label>:27                                      ; preds = %26, %25, %15, %11, %5
  %.0 = phi i64 [ 0, %5 ], [ 0, %11 ], [ 1, %26 ], [ 0, %25 ], [ 0, %15 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @manager_reserveRoom(%struct.manager* %managerPtr, i64 %customerId, i64 %roomId) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 1
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 3
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  %5 = call i64 @reserve(%struct.rbtree* %2, %struct.rbtree* %4, i64 %customerId, i64 %roomId, i32 2)
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i64 @manager_reserveFlight(%struct.manager* %managerPtr, i64 %customerId, i64 %flightId) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 2
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 3
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  %5 = call i64 @reserve(%struct.rbtree* %2, %struct.rbtree* %4, i64 %customerId, i64 %flightId, i32 1)
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i64 @manager_cancelCar(%struct.manager* %managerPtr, i64 %customerId, i64 %carId) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 0
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 3
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  %5 = call i64 @cancel(%struct.rbtree* %2, %struct.rbtree* %4, i64 %customerId, i64 %carId, i32 0)
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define internal i64 @cancel(%struct.rbtree* %tablePtr, %struct.rbtree* %customerTablePtr, i64 %customerId, i64 %id, i32 %type) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = inttoptr i64 %customerId to i8*
  %2 = call i8* @TMrbtree_get(%struct.rbtree* %customerTablePtr, i8* %1)
  %3 = bitcast i8* %2 to %struct.customer*
  %4 = icmp eq %struct.customer* %3, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  br label %25

; <label>:6                                       ; preds = %0
  %7 = inttoptr i64 %id to i8*
  %8 = call i8* @TMrbtree_get(%struct.rbtree* %tablePtr, i8* %7)
  %9 = bitcast i8* %8 to %struct.reservation*
  %10 = icmp eq %struct.reservation* %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %6
  br label %25

; <label>:12                                      ; preds = %6
  %13 = call i64 @reservation_cancel(%struct.reservation* %9)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

; <label>:15                                      ; preds = %12
  br label %25

; <label>:16                                      ; preds = %12
  %17 = call i64 @customer_removeReservationInfo(%struct.customer* %3, i32 %type, i64 %id)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

; <label>:19                                      ; preds = %16
  %20 = call i64 @reservation_make(%struct.reservation* %9)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %._crit_edge

._crit_edge:                                      ; preds = %19
  br label %23

; <label>:22                                      ; preds = %19
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !9
  br label %23

; <label>:23                                      ; preds = %._crit_edge, %22
  br label %25

; <label>:24                                      ; preds = %16
  br label %25

; <label>:25                                      ; preds = %24, %23, %15, %11, %5
  %.0 = phi i64 [ 0, %5 ], [ 0, %11 ], [ 1, %24 ], [ 0, %23 ], [ 0, %15 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @manager_cancelRoom(%struct.manager* %managerPtr, i64 %customerId, i64 %roomId) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 1
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 3
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  %5 = call i64 @cancel(%struct.rbtree* %2, %struct.rbtree* %4, i64 %customerId, i64 %roomId, i32 2)
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i64 @manager_cancelFlight(%struct.manager* %managerPtr, i64 %customerId, i64 %flightId) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 2
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 3
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  %5 = call i64 @cancel(%struct.rbtree* %2, %struct.rbtree* %4, i64 %customerId, i64 %flightId, i32 1)
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define internal %struct.rbtree* @tableAlloc() #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
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
