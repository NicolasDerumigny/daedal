; ModuleID = '../bin/reservation.marked.ll'
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
define noalias %struct.reservation_info* @reservation_info_alloc(i32 %type, i64 %id, i64 %price) #0 {
  %1 = tail call noalias i8* @malloc(i64 24) #4
  %2 = bitcast i8* %1 to %struct.reservation_info*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %10, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %1 to i32*
  store i32 %type, i32* %5, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i64*
  store i64 %id, i64* %7, align 8
  %8 = getelementptr inbounds i8, i8* %1, i64 16
  %9 = bitcast i8* %8 to i64*
  store i64 %price, i64* %9, align 8
  br label %10

; <label>:10                                      ; preds = %0, %4
  ret %struct.reservation_info* %2
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @reservation_info_free(%struct.reservation_info* nocapture %reservationInfoPtr) #0 {
  %1 = bitcast %struct.reservation_info* %reservationInfoPtr to i8*
  tail call void @free(i8* %1) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @reservation_info_compare(%struct.reservation_info* nocapture readonly %aPtr, %struct.reservation_info* nocapture readonly %bPtr) #2 {
  %1 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %aPtr, i64 0, i32 0
  %2 = load i32, i32* %1, align 8
  %3 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %bPtr, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = icmp eq i32 %2, %4
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = sub i32 %2, %4
  %8 = zext i32 %7 to i64
  br label %15

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %aPtr, i64 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %bPtr, i64 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %11, %13
  br label %15

; <label>:15                                      ; preds = %9, %6
  %16 = phi i64 [ %8, %6 ], [ %14, %9 ]
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define noalias %struct.reservation* @reservation_alloc(i64 %id, i64 %numTotal, i64 %price) #0 {
  %1 = tail call noalias i8* @malloc(i64 40) #4
  %2 = bitcast i8* %1 to %struct.reservation*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %checkReservation.exit, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %1 to i64*
  store i64 %id, i64* %5, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i64*
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds i8, i8* %1, i64 16
  %9 = bitcast i8* %8 to i64*
  store i64 %numTotal, i64* %9, align 8
  %10 = getelementptr inbounds i8, i8* %1, i64 24
  %11 = bitcast i8* %10 to i64*
  store i64 %numTotal, i64* %11, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 32
  %13 = bitcast i8* %12 to i64*
  store i64 %price, i64* %13, align 8
  %14 = icmp slt i64 %numTotal, 0
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %4
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !1
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !2
  br label %16

; <label>:16                                      ; preds = %15, %4
  %17 = icmp slt i64 %price, 0
  br i1 %17, label %18, label %checkReservation.exit

; <label>:18                                      ; preds = %16
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !3
  br label %checkReservation.exit

checkReservation.exit:                            ; preds = %18, %16, %0
  ret %struct.reservation* %2
}

; Function Attrs: nounwind uwtable
define noalias %struct.reservation* @reservation_alloc_seq(i64 %id, i64 %numTotal, i64 %price) #0 {
  %1 = tail call noalias i8* @malloc(i64 40) #4
  %2 = bitcast i8* %1 to %struct.reservation*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %14, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %1 to i64*
  store i64 %id, i64* %5, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i64*
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds i8, i8* %1, i64 16
  %9 = bitcast i8* %8 to i64*
  store i64 %numTotal, i64* %9, align 8
  %10 = getelementptr inbounds i8, i8* %1, i64 24
  %11 = bitcast i8* %10 to i64*
  store i64 %numTotal, i64* %11, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 32
  %13 = bitcast i8* %12 to i64*
  store i64 %price, i64* %13, align 8
  tail call fastcc void @checkReservation_seq(%struct.reservation* %2)
  br label %14

; <label>:14                                      ; preds = %0, %4
  ret %struct.reservation* %2
}

; Function Attrs: nounwind uwtable
define internal fastcc void @checkReservation_seq(%struct.reservation* nocapture readonly %reservationPtr) unnamed_addr #0 {
  %1 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = icmp sgt i64 %2, -1
  br i1 %3, label %5, label %4

; <label>:4                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 177, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.checkReservation_seq, i64 0, i64 0)) #5
  unreachable

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %10, label %9

; <label>:9                                       ; preds = %5
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 178, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.checkReservation_seq, i64 0, i64 0)) #5
  unreachable

; <label>:10                                      ; preds = %5
  %11 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, -1
  br i1 %13, label %15, label %14

; <label>:14                                      ; preds = %10
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 179, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.checkReservation_seq, i64 0, i64 0)) #5
  unreachable

; <label>:15                                      ; preds = %10
  %16 = add nsw i64 %7, %2
  %17 = icmp eq i64 %16, %12
  br i1 %17, label %19, label %18

; <label>:18                                      ; preds = %15
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([82 x i8], [82 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 181, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.checkReservation_seq, i64 0, i64 0)) #5
  unreachable

; <label>:19                                      ; preds = %15
  %20 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, -1
  br i1 %22, label %24, label %23

; <label>:23                                      ; preds = %19
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 182, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.checkReservation_seq, i64 0, i64 0)) #5
  unreachable

; <label>:24                                      ; preds = %19
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @reservation_addToTotal(%struct.reservation* nocapture %reservationPtr, i64 %num) #0 {
  %1 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 2
  %2 = load i64, i64* %1, align 8
  %3 = add nsw i64 %2, %num
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %checkReservation.exit, label %5

; <label>:5                                       ; preds = %0
  store i64 %3, i64* %1, align 8
  %6 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, %num
  store i64 %8, i64* %6, align 8
  %9 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %.thread

; <label>:12                                      ; preds = %5
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !4
  %.pre = load i64, i64* %1, align 8
  %13 = icmp slt i64 %.pre, 0
  br i1 %13, label %14, label %.threadthread-pre-split

; <label>:14                                      ; preds = %12
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !1
  br label %.threadthread-pre-split

.threadthread-pre-split:                          ; preds = %12, %14
  %.pr = load i64, i64* %6, align 8
  br label %.thread

.thread:                                          ; preds = %.threadthread-pre-split, %5
  %15 = phi i64 [ %.pr, %.threadthread-pre-split ], [ %8, %5 ]
  %16 = phi i64 [ %.pre, %.threadthread-pre-split ], [ %3, %5 ]
  %17 = icmp slt i64 %15, 0
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %.thread
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !2
  br label %19

; <label>:19                                      ; preds = %18, %.thread
  %20 = add nsw i64 %16, %10
  %21 = icmp eq i64 %20, %15
  br i1 %21, label %23, label %22

; <label>:22                                      ; preds = %19
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !5
  br label %23

; <label>:23                                      ; preds = %22, %19
  %24 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %checkReservation.exit

; <label>:27                                      ; preds = %23
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !3
  br label %checkReservation.exit

checkReservation.exit:                            ; preds = %27, %23, %0
  %.0 = phi i64 [ 0, %0 ], [ 1, %23 ], [ 1, %27 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @reservation_addToTotal_seq(%struct.reservation* nocapture %reservationPtr, i64 %num) #0 {
  %1 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 2
  %2 = load i64, i64* %1, align 8
  %3 = add nsw i64 %2, %num
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %9, label %5

; <label>:5                                       ; preds = %0
  store i64 %3, i64* %1, align 8
  %6 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, %num
  store i64 %8, i64* %6, align 8
  tail call fastcc void @checkReservation_seq(%struct.reservation* nonnull %reservationPtr)
  br label %9

; <label>:9                                       ; preds = %0, %5
  %.0 = phi i64 [ 1, %5 ], [ 0, %0 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @reservation_make(%struct.reservation* nocapture %reservationPtr) #0 {
  %1 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 2
  %2 = load i64, i64* %1, align 8
  %3 = icmp slt i64 %2, 1
  br i1 %3, label %checkReservation.exit, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, 1
  store i64 %7, i64* %5, align 8
  %8 = add nsw i64 %2, -1
  store i64 %8, i64* %1, align 8
  %9 = icmp slt i64 %6, -1
  br i1 %9, label %10, label %.thread

; <label>:10                                      ; preds = %4
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !4
  %.pr = load i64, i64* %1, align 8
  %11 = icmp slt i64 %.pr, 0
  br i1 %11, label %12, label %.thread

; <label>:12                                      ; preds = %10
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !1
  br label %.thread

.thread:                                          ; preds = %4, %12, %10
  %13 = phi i64 [ %.pr, %12 ], [ %.pr, %10 ], [ %8, %4 ]
  %14 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %.thread
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !2
  br label %18

; <label>:18                                      ; preds = %17, %.thread
  %19 = add nsw i64 %13, %7
  %20 = icmp eq i64 %19, %15
  br i1 %20, label %22, label %21

; <label>:21                                      ; preds = %18
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !5
  br label %22

; <label>:22                                      ; preds = %21, %18
  %23 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %checkReservation.exit

; <label>:26                                      ; preds = %22
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !3
  br label %checkReservation.exit

checkReservation.exit:                            ; preds = %26, %22, %0
  %.0 = phi i64 [ 0, %0 ], [ 1, %22 ], [ 1, %26 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @reservation_make_seq(%struct.reservation* nocapture %reservationPtr) #0 {
  %1 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 2
  %2 = load i64, i64* %1, align 8
  %3 = icmp slt i64 %2, 1
  br i1 %3, label %9, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, 1
  store i64 %7, i64* %5, align 8
  %8 = add nsw i64 %2, -1
  store i64 %8, i64* %1, align 8
  tail call fastcc void @checkReservation_seq(%struct.reservation* nonnull %reservationPtr)
  br label %9

; <label>:9                                       ; preds = %0, %4
  %.0 = phi i64 [ 1, %4 ], [ 0, %0 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @reservation_cancel(%struct.reservation* nocapture %reservationPtr) #0 {
  %1 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = icmp slt i64 %2, 1
  br i1 %3, label %checkReservation.exit, label %4

; <label>:4                                       ; preds = %0
  %5 = add nsw i64 %2, -1
  store i64 %5, i64* %1, align 8
  %6 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, 1
  store i64 %8, i64* %6, align 8
  %9 = icmp slt i64 %7, -1
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %4
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !1
  br label %11

; <label>:11                                      ; preds = %10, %4
  %12 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %11
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !2
  br label %16

; <label>:16                                      ; preds = %15, %11
  %17 = add i64 %7, %2
  %18 = icmp eq i64 %17, %13
  br i1 %18, label %20, label %19

; <label>:19                                      ; preds = %16
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !5
  br label %20

; <label>:20                                      ; preds = %19, %16
  %21 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %checkReservation.exit

; <label>:24                                      ; preds = %20
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !3
  br label %checkReservation.exit

checkReservation.exit:                            ; preds = %24, %20, %0
  %.0 = phi i64 [ 0, %0 ], [ 1, %20 ], [ 1, %24 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @reservation_cancel_seq(%struct.reservation* nocapture %reservationPtr) #0 {
  %1 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = icmp slt i64 %2, 1
  br i1 %3, label %9, label %4

; <label>:4                                       ; preds = %0
  %5 = add nsw i64 %2, -1
  store i64 %5, i64* %1, align 8
  %6 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, 1
  store i64 %8, i64* %6, align 8
  tail call fastcc void @checkReservation_seq(%struct.reservation* nonnull %reservationPtr)
  br label %9

; <label>:9                                       ; preds = %0, %4
  %.0 = phi i64 [ 1, %4 ], [ 0, %0 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @reservation_updatePrice(%struct.reservation* nocapture %reservationPtr, i64 %newPrice) #0 {
  %1 = icmp slt i64 %newPrice, 0
  br i1 %1, label %checkReservation.exit, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 4
  store i64 %newPrice, i64* %3, align 8
  %4 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %2
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !4
  br label %8

; <label>:8                                       ; preds = %7, %2
  %9 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %8
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !1
  br label %13

; <label>:13                                      ; preds = %12, %8
  %14 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %13
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !2
  br label %18

; <label>:18                                      ; preds = %17, %13
  %19 = add nsw i64 %10, %5
  %20 = icmp eq i64 %19, %15
  br i1 %20, label %22, label %21

; <label>:21                                      ; preds = %18
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !5
  br label %22

; <label>:22                                      ; preds = %21, %18
  %23 = load i64, i64* %3, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %checkReservation.exit

; <label>:25                                      ; preds = %22
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !3
  br label %checkReservation.exit

checkReservation.exit:                            ; preds = %25, %22, %0
  %.0 = phi i64 [ 0, %0 ], [ 1, %22 ], [ 1, %25 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @reservation_updatePrice_seq(%struct.reservation* nocapture %reservationPtr, i64 %newPrice) #0 {
  %1 = icmp slt i64 %newPrice, 0
  br i1 %1, label %4, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 4
  store i64 %newPrice, i64* %3, align 8
  tail call fastcc void @checkReservation_seq(%struct.reservation* %reservationPtr)
  br label %4

; <label>:4                                       ; preds = %0, %2
  %.0 = phi i64 [ 1, %2 ], [ 0, %0 ]
  ret i64 %.0
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @reservation_compare(%struct.reservation* nocapture readonly %aPtr, %struct.reservation* nocapture readonly %bPtr) #2 {
  %1 = getelementptr inbounds %struct.reservation, %struct.reservation* %aPtr, i64 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.reservation, %struct.reservation* %bPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = sub nsw i64 %2, %4
  ret i64 %5
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @reservation_hash(%struct.reservation* nocapture readonly %reservationPtr) #2 {
  %1 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 0
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define void @reservation_free(%struct.reservation* nocapture %reservationPtr) #0 {
  %1 = bitcast %struct.reservation* %reservationPtr to i8*
  tail call void @free(i8* %1) #4
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 -2145980187}
!2 = !{i32 -2145980085}
!3 = !{i32 -2145979915}
!4 = !{i32 -2145980288}
!5 = !{i32 -2145980014}
