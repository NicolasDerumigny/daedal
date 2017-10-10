; ModuleID = 'reservation.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reservation_info = type { i32, i64, i64 }
%struct.reservation = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"reservationPtr->numUsed >= 0\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"reservation.c\00", align 1
@__PRETTY_FUNCTION__.checkReservation_seq = private unnamed_addr constant [43 x i8] c"void checkReservation_seq(reservation_t *)\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"reservationPtr->numFree >= 0\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"reservationPtr->numTotal >= 0\00", align 1
@.str.4 = private unnamed_addr constant [82 x i8] c"(reservationPtr->numUsed + reservationPtr->numFree) == (reservationPtr->numTotal)\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"reservationPtr->price >= 0\00", align 1

; Function Attrs: nounwind uwtable
define %struct.reservation_info* @reservation_info_alloc(i32 %type, i64 %id, i64 %price) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %reservationInfoPtr = alloca %struct.reservation_info*, align 8
  store i32 %type, i32* %1, align 4
  store i64 %id, i64* %2, align 8
  store i64 %price, i64* %3, align 8
  %4 = call noalias i8* @malloc(i64 24) #3
  %5 = bitcast i8* %4 to %struct.reservation_info*
  store %struct.reservation_info* %5, %struct.reservation_info** %reservationInfoPtr, align 8
  %6 = load %struct.reservation_info*, %struct.reservation_info** %reservationInfoPtr, align 8
  %7 = icmp ne %struct.reservation_info* %6, null
  br i1 %7, label %8, label %18

; <label>:8                                       ; preds = %0
  %9 = load i32, i32* %1, align 4
  %10 = load %struct.reservation_info*, %struct.reservation_info** %reservationInfoPtr, align 8
  %11 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i64, i64* %2, align 8
  %13 = load %struct.reservation_info*, %struct.reservation_info** %reservationInfoPtr, align 8
  %14 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %13, i32 0, i32 1
  store i64 %12, i64* %14, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.reservation_info*, %struct.reservation_info** %reservationInfoPtr, align 8
  %17 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %16, i32 0, i32 2
  store i64 %15, i64* %17, align 8
  br label %18

; <label>:18                                      ; preds = %8, %0
  %19 = load %struct.reservation_info*, %struct.reservation_info** %reservationInfoPtr, align 8
  ret %struct.reservation_info* %19
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @reservation_info_free(%struct.reservation_info* %reservationInfoPtr) #0 {
  %1 = alloca %struct.reservation_info*, align 8
  store %struct.reservation_info* %reservationInfoPtr, %struct.reservation_info** %1, align 8
  %2 = load %struct.reservation_info*, %struct.reservation_info** %1, align 8
  %3 = bitcast %struct.reservation_info* %2 to i8*
  call void @free(i8* %3) #3
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i64 @reservation_info_compare(%struct.reservation_info* %aPtr, %struct.reservation_info* %bPtr) #0 {
  %1 = alloca %struct.reservation_info*, align 8
  %2 = alloca %struct.reservation_info*, align 8
  %typeDiff = alloca i64, align 8
  store %struct.reservation_info* %aPtr, %struct.reservation_info** %1, align 8
  store %struct.reservation_info* %bPtr, %struct.reservation_info** %2, align 8
  %3 = load %struct.reservation_info*, %struct.reservation_info** %1, align 8
  %4 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.reservation_info*, %struct.reservation_info** %2, align 8
  %7 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sub i32 %5, %8
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %typeDiff, align 8
  %11 = load i64, i64* %typeDiff, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

; <label>:13                                      ; preds = %0
  %14 = load i64, i64* %typeDiff, align 8
  br label %23

; <label>:15                                      ; preds = %0
  %16 = load %struct.reservation_info*, %struct.reservation_info** %1, align 8
  %17 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.reservation_info*, %struct.reservation_info** %2, align 8
  %20 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  br label %23

; <label>:23                                      ; preds = %15, %13
  %24 = phi i64 [ %14, %13 ], [ %22, %15 ]
  ret i64 %24
}

; Function Attrs: nounwind uwtable
define %struct.reservation* @reservation_alloc(i64 %id, i64 %numTotal, i64 %price) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %reservationPtr = alloca %struct.reservation*, align 8
  store i64 %id, i64* %1, align 8
  store i64 %numTotal, i64* %2, align 8
  store i64 %price, i64* %3, align 8
  %4 = call noalias i8* @malloc(i64 40) #3
  %5 = bitcast i8* %4 to %struct.reservation*
  store %struct.reservation* %5, %struct.reservation** %reservationPtr, align 8
  %6 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %7 = icmp ne %struct.reservation* %6, null
  br i1 %7, label %8, label %24

; <label>:8                                       ; preds = %0
  %9 = load i64, i64* %1, align 8
  %10 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %11 = getelementptr inbounds %struct.reservation, %struct.reservation* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %13 = getelementptr inbounds %struct.reservation, %struct.reservation* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load i64, i64* %2, align 8
  %15 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %16 = getelementptr inbounds %struct.reservation, %struct.reservation* %15, i32 0, i32 2
  store i64 %14, i64* %16, align 8
  %17 = load i64, i64* %2, align 8
  %18 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %19 = getelementptr inbounds %struct.reservation, %struct.reservation* %18, i32 0, i32 3
  store i64 %17, i64* %19, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %22 = getelementptr inbounds %struct.reservation, %struct.reservation* %21, i32 0, i32 4
  store i64 %20, i64* %22, align 8
  %23 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  call void @checkReservation(%struct.reservation* %23)
  br label %24

; <label>:24                                      ; preds = %8, %0
  %25 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  ret %struct.reservation* %25
}

; Function Attrs: nounwind uwtable
define internal void @checkReservation(%struct.reservation* %reservationPtr) #0 {
  %1 = alloca %struct.reservation*, align 8
  %numUsed = alloca i64, align 8
  %numFree = alloca i64, align 8
  %numTotal = alloca i64, align 8
  %price = alloca i64, align 8
  store %struct.reservation* %reservationPtr, %struct.reservation** %1, align 8
  %2 = load %struct.reservation*, %struct.reservation** %1, align 8
  %3 = getelementptr inbounds %struct.reservation, %struct.reservation* %2, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
  store i64 %4, i64* %numUsed, align 8
  %5 = load i64, i64* %numUsed, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #3, !srcloc !1
  br label %8

; <label>:8                                       ; preds = %7, %0
  %9 = load %struct.reservation*, %struct.reservation** %1, align 8
  %10 = getelementptr inbounds %struct.reservation, %struct.reservation* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %numFree, align 8
  %12 = load i64, i64* %numFree, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %8
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #3, !srcloc !2
  br label %15

; <label>:15                                      ; preds = %14, %8
  %16 = load %struct.reservation*, %struct.reservation** %1, align 8
  %17 = getelementptr inbounds %struct.reservation, %struct.reservation* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %numTotal, align 8
  %19 = load i64, i64* %numTotal, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %15
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #3, !srcloc !3
  br label %22

; <label>:22                                      ; preds = %21, %15
  %23 = load i64, i64* %numUsed, align 8
  %24 = load i64, i64* %numFree, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i64, i64* %numTotal, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %22
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #3, !srcloc !4
  br label %29

; <label>:29                                      ; preds = %28, %22
  %30 = load %struct.reservation*, %struct.reservation** %1, align 8
  %31 = getelementptr inbounds %struct.reservation, %struct.reservation* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %price, align 8
  %33 = load i64, i64* %price, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %29
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #3, !srcloc !5
  br label %36

; <label>:36                                      ; preds = %35, %29
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.reservation* @reservation_alloc_seq(i64 %id, i64 %numTotal, i64 %price) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %reservationPtr = alloca %struct.reservation*, align 8
  store i64 %id, i64* %1, align 8
  store i64 %numTotal, i64* %2, align 8
  store i64 %price, i64* %3, align 8
  %4 = call noalias i8* @malloc(i64 40) #3
  %5 = bitcast i8* %4 to %struct.reservation*
  store %struct.reservation* %5, %struct.reservation** %reservationPtr, align 8
  %6 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %7 = icmp ne %struct.reservation* %6, null
  br i1 %7, label %8, label %24

; <label>:8                                       ; preds = %0
  %9 = load i64, i64* %1, align 8
  %10 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %11 = getelementptr inbounds %struct.reservation, %struct.reservation* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %13 = getelementptr inbounds %struct.reservation, %struct.reservation* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load i64, i64* %2, align 8
  %15 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %16 = getelementptr inbounds %struct.reservation, %struct.reservation* %15, i32 0, i32 2
  store i64 %14, i64* %16, align 8
  %17 = load i64, i64* %2, align 8
  %18 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %19 = getelementptr inbounds %struct.reservation, %struct.reservation* %18, i32 0, i32 3
  store i64 %17, i64* %19, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  %22 = getelementptr inbounds %struct.reservation, %struct.reservation* %21, i32 0, i32 4
  store i64 %20, i64* %22, align 8
  %23 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  call void @checkReservation_seq(%struct.reservation* %23)
  br label %24

; <label>:24                                      ; preds = %8, %0
  %25 = load %struct.reservation*, %struct.reservation** %reservationPtr, align 8
  ret %struct.reservation* %25
}

; Function Attrs: nounwind uwtable
define internal void @checkReservation_seq(%struct.reservation* %reservationPtr) #0 {
  %1 = alloca %struct.reservation*, align 8
  store %struct.reservation* %reservationPtr, %struct.reservation** %1, align 8
  %2 = load %struct.reservation*, %struct.reservation** %1, align 8
  %3 = getelementptr inbounds %struct.reservation, %struct.reservation* %2, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = icmp sge i64 %4, 0
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  br label %9

; <label>:7                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 177, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.checkReservation_seq, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %8, %6
  %10 = load %struct.reservation*, %struct.reservation** %1, align 8
  %11 = getelementptr inbounds %struct.reservation, %struct.reservation* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %12, 0
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %9
  br label %17

; <label>:15                                      ; preds = %9
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 178, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.checkReservation_seq, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %17

; <label>:17                                      ; preds = %16, %14
  %18 = load %struct.reservation*, %struct.reservation** %1, align 8
  %19 = getelementptr inbounds %struct.reservation, %struct.reservation* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %17
  br label %25

; <label>:23                                      ; preds = %17
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 179, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.checkReservation_seq, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %25

; <label>:25                                      ; preds = %24, %22
  %26 = load %struct.reservation*, %struct.reservation** %1, align 8
  %27 = getelementptr inbounds %struct.reservation, %struct.reservation* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.reservation*, %struct.reservation** %1, align 8
  %30 = getelementptr inbounds %struct.reservation, %struct.reservation* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.reservation*, %struct.reservation** %1, align 8
  %34 = getelementptr inbounds %struct.reservation, %struct.reservation* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %25
  br label %40

; <label>:38                                      ; preds = %25
  call void @__assert_fail(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 181, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.checkReservation_seq, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %40

; <label>:40                                      ; preds = %39, %37
  %41 = load %struct.reservation*, %struct.reservation** %1, align 8
  %42 = getelementptr inbounds %struct.reservation, %struct.reservation* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp sge i64 %43, 0
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %40
  br label %48

; <label>:46                                      ; preds = %40
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 182, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.checkReservation_seq, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %48

; <label>:48                                      ; preds = %47, %45
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @reservation_addToTotal(%struct.reservation* %reservationPtr, i64 %num) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.reservation*, align 8
  %3 = alloca i64, align 8
  %numFree = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.reservation* %reservationPtr, %struct.reservation** %2, align 8
  store i64 %num, i64* %3, align 8
  %6 = load %struct.reservation*, %struct.reservation** %2, align 8
  %7 = getelementptr inbounds %struct.reservation, %struct.reservation* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %numFree, align 8
  %9 = load i64, i64* %numFree, align 8
  %10 = load i64, i64* %3, align 8
  %11 = add nsw i64 %9, %10
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %36

; <label>:14                                      ; preds = %0
  %15 = load i64, i64* %numFree, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add nsw i64 %15, %16
  %18 = load %struct.reservation*, %struct.reservation** %2, align 8
  %19 = getelementptr inbounds %struct.reservation, %struct.reservation* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  %20 = load %struct.reservation*, %struct.reservation** %2, align 8
  %21 = getelementptr inbounds %struct.reservation, %struct.reservation* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.reservation*, %struct.reservation** %2, align 8
  %25 = getelementptr inbounds %struct.reservation, %struct.reservation* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %3, align 8
  %28 = add nsw i64 %26, %27
  %29 = load %struct.reservation*, %struct.reservation** %2, align 8
  %30 = getelementptr inbounds %struct.reservation, %struct.reservation* %29, i32 0, i32 3
  store i64 %28, i64* %30, align 8
  %31 = load %struct.reservation*, %struct.reservation** %2, align 8
  %32 = getelementptr inbounds %struct.reservation, %struct.reservation* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.reservation*, %struct.reservation** %2, align 8
  call void @checkReservation(%struct.reservation* %35)
  store i64 1, i64* %1, align 8
  br label %36

; <label>:36                                      ; preds = %14, %13
  %37 = load i64, i64* %1, align 8
  ret i64 %37
}

; Function Attrs: nounwind uwtable
define i64 @reservation_addToTotal_seq(%struct.reservation* %reservationPtr, i64 %num) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.reservation*, align 8
  %3 = alloca i64, align 8
  store %struct.reservation* %reservationPtr, %struct.reservation** %2, align 8
  store i64 %num, i64* %3, align 8
  %4 = load %struct.reservation*, %struct.reservation** %2, align 8
  %5 = getelementptr inbounds %struct.reservation, %struct.reservation* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* %3, align 8
  %8 = add nsw i64 %6, %7
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %23

; <label>:11                                      ; preds = %0
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.reservation*, %struct.reservation** %2, align 8
  %14 = getelementptr inbounds %struct.reservation, %struct.reservation* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, %12
  store i64 %16, i64* %14, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load %struct.reservation*, %struct.reservation** %2, align 8
  %19 = getelementptr inbounds %struct.reservation, %struct.reservation* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, %17
  store i64 %21, i64* %19, align 8
  %22 = load %struct.reservation*, %struct.reservation** %2, align 8
  call void @checkReservation_seq(%struct.reservation* %22)
  store i64 1, i64* %1, align 8
  br label %23

; <label>:23                                      ; preds = %11, %10
  %24 = load i64, i64* %1, align 8
  ret i64 %24
}

; Function Attrs: nounwind uwtable
define i64 @reservation_make(%struct.reservation* %reservationPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.reservation*, align 8
  %numFree = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.reservation* %reservationPtr, %struct.reservation** %2, align 8
  %5 = load %struct.reservation*, %struct.reservation** %2, align 8
  %6 = getelementptr inbounds %struct.reservation, %struct.reservation* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %numFree, align 8
  %8 = load i64, i64* %numFree, align 8
  %9 = icmp slt i64 %8, 1
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %31

; <label>:11                                      ; preds = %0
  %12 = load %struct.reservation*, %struct.reservation** %2, align 8
  %13 = getelementptr inbounds %struct.reservation, %struct.reservation* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  %16 = load %struct.reservation*, %struct.reservation** %2, align 8
  %17 = getelementptr inbounds %struct.reservation, %struct.reservation* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = load %struct.reservation*, %struct.reservation** %2, align 8
  %19 = getelementptr inbounds %struct.reservation, %struct.reservation* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* %numFree, align 8
  %23 = sub nsw i64 %22, 1
  %24 = load %struct.reservation*, %struct.reservation** %2, align 8
  %25 = getelementptr inbounds %struct.reservation, %struct.reservation* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load %struct.reservation*, %struct.reservation** %2, align 8
  %27 = getelementptr inbounds %struct.reservation, %struct.reservation* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.reservation*, %struct.reservation** %2, align 8
  call void @checkReservation(%struct.reservation* %30)
  store i64 1, i64* %1, align 8
  br label %31

; <label>:31                                      ; preds = %11, %10
  %32 = load i64, i64* %1, align 8
  ret i64 %32
}

; Function Attrs: nounwind uwtable
define i64 @reservation_make_seq(%struct.reservation* %reservationPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.reservation*, align 8
  store %struct.reservation* %reservationPtr, %struct.reservation** %2, align 8
  %3 = load %struct.reservation*, %struct.reservation** %2, align 8
  %4 = getelementptr inbounds %struct.reservation, %struct.reservation* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp slt i64 %5, 1
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store i64 0, i64* %1, align 8
  br label %18

; <label>:8                                       ; preds = %0
  %9 = load %struct.reservation*, %struct.reservation** %2, align 8
  %10 = getelementptr inbounds %struct.reservation, %struct.reservation* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* %10, align 8
  %13 = load %struct.reservation*, %struct.reservation** %2, align 8
  %14 = getelementptr inbounds %struct.reservation, %struct.reservation* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.reservation*, %struct.reservation** %2, align 8
  call void @checkReservation_seq(%struct.reservation* %17)
  store i64 1, i64* %1, align 8
  br label %18

; <label>:18                                      ; preds = %8, %7
  %19 = load i64, i64* %1, align 8
  ret i64 %19
}

; Function Attrs: nounwind uwtable
define i64 @reservation_cancel(%struct.reservation* %reservationPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.reservation*, align 8
  %numUsed = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.reservation* %reservationPtr, %struct.reservation** %2, align 8
  %5 = load %struct.reservation*, %struct.reservation** %2, align 8
  %6 = getelementptr inbounds %struct.reservation, %struct.reservation* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %numUsed, align 8
  %8 = load i64, i64* %numUsed, align 8
  %9 = icmp slt i64 %8, 1
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %31

; <label>:11                                      ; preds = %0
  %12 = load i64, i64* %numUsed, align 8
  %13 = sub nsw i64 %12, 1
  %14 = load %struct.reservation*, %struct.reservation** %2, align 8
  %15 = getelementptr inbounds %struct.reservation, %struct.reservation* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = load %struct.reservation*, %struct.reservation** %2, align 8
  %17 = getelementptr inbounds %struct.reservation, %struct.reservation* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load %struct.reservation*, %struct.reservation** %2, align 8
  %21 = getelementptr inbounds %struct.reservation, %struct.reservation* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  %24 = load %struct.reservation*, %struct.reservation** %2, align 8
  %25 = getelementptr inbounds %struct.reservation, %struct.reservation* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load %struct.reservation*, %struct.reservation** %2, align 8
  %27 = getelementptr inbounds %struct.reservation, %struct.reservation* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.reservation*, %struct.reservation** %2, align 8
  call void @checkReservation(%struct.reservation* %30)
  store i64 1, i64* %1, align 8
  br label %31

; <label>:31                                      ; preds = %11, %10
  %32 = load i64, i64* %1, align 8
  ret i64 %32
}

; Function Attrs: nounwind uwtable
define i64 @reservation_cancel_seq(%struct.reservation* %reservationPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.reservation*, align 8
  store %struct.reservation* %reservationPtr, %struct.reservation** %2, align 8
  %3 = load %struct.reservation*, %struct.reservation** %2, align 8
  %4 = getelementptr inbounds %struct.reservation, %struct.reservation* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp slt i64 %5, 1
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store i64 0, i64* %1, align 8
  br label %18

; <label>:8                                       ; preds = %0
  %9 = load %struct.reservation*, %struct.reservation** %2, align 8
  %10 = getelementptr inbounds %struct.reservation, %struct.reservation* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = load %struct.reservation*, %struct.reservation** %2, align 8
  %14 = getelementptr inbounds %struct.reservation, %struct.reservation* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.reservation*, %struct.reservation** %2, align 8
  call void @checkReservation_seq(%struct.reservation* %17)
  store i64 1, i64* %1, align 8
  br label %18

; <label>:18                                      ; preds = %8, %7
  %19 = load i64, i64* %1, align 8
  ret i64 %19
}

; Function Attrs: nounwind uwtable
define i64 @reservation_updatePrice(%struct.reservation* %reservationPtr, i64 %newPrice) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.reservation*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.reservation* %reservationPtr, %struct.reservation** %2, align 8
  store i64 %newPrice, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store i64 0, i64* %1, align 8
  br label %17

; <label>:8                                       ; preds = %0
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.reservation*, %struct.reservation** %2, align 8
  %11 = getelementptr inbounds %struct.reservation, %struct.reservation* %10, i32 0, i32 4
  store i64 %9, i64* %11, align 8
  %12 = load %struct.reservation*, %struct.reservation** %2, align 8
  %13 = getelementptr inbounds %struct.reservation, %struct.reservation* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.reservation*, %struct.reservation** %2, align 8
  call void @checkReservation(%struct.reservation* %16)
  store i64 1, i64* %1, align 8
  br label %17

; <label>:17                                      ; preds = %8, %7
  %18 = load i64, i64* %1, align 8
  ret i64 %18
}

; Function Attrs: nounwind uwtable
define i64 @reservation_updatePrice_seq(%struct.reservation* %reservationPtr, i64 %newPrice) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.reservation*, align 8
  %3 = alloca i64, align 8
  store %struct.reservation* %reservationPtr, %struct.reservation** %2, align 8
  store i64 %newPrice, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store i64 0, i64* %1, align 8
  br label %12

; <label>:7                                       ; preds = %0
  %8 = load i64, i64* %3, align 8
  %9 = load %struct.reservation*, %struct.reservation** %2, align 8
  %10 = getelementptr inbounds %struct.reservation, %struct.reservation* %9, i32 0, i32 4
  store i64 %8, i64* %10, align 8
  %11 = load %struct.reservation*, %struct.reservation** %2, align 8
  call void @checkReservation_seq(%struct.reservation* %11)
  store i64 1, i64* %1, align 8
  br label %12

; <label>:12                                      ; preds = %7, %6
  %13 = load i64, i64* %1, align 8
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define i64 @reservation_compare(%struct.reservation* %aPtr, %struct.reservation* %bPtr) #0 {
  %1 = alloca %struct.reservation*, align 8
  %2 = alloca %struct.reservation*, align 8
  store %struct.reservation* %aPtr, %struct.reservation** %1, align 8
  store %struct.reservation* %bPtr, %struct.reservation** %2, align 8
  %3 = load %struct.reservation*, %struct.reservation** %1, align 8
  %4 = getelementptr inbounds %struct.reservation, %struct.reservation* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.reservation*, %struct.reservation** %2, align 8
  %7 = getelementptr inbounds %struct.reservation, %struct.reservation* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = sub nsw i64 %5, %8
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define i64 @reservation_hash(%struct.reservation* %reservationPtr) #0 {
  %1 = alloca %struct.reservation*, align 8
  store %struct.reservation* %reservationPtr, %struct.reservation** %1, align 8
  %2 = load %struct.reservation*, %struct.reservation** %1, align 8
  %3 = getelementptr inbounds %struct.reservation, %struct.reservation* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define void @reservation_free(%struct.reservation* %reservationPtr) #0 {
  %1 = alloca %struct.reservation*, align 8
  store %struct.reservation* %reservationPtr, %struct.reservation** %1, align 8
  %2 = load %struct.reservation*, %struct.reservation** %1, align 8
  %3 = bitcast %struct.reservation* %2 to i8*
  call void @free(i8* %3) #3
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 -2145980288}
!2 = !{i32 -2145980187}
!3 = !{i32 -2145980085}
!4 = !{i32 -2145980014}
!5 = !{i32 -2145979915}
