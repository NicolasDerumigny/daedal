; ModuleID = '../bin/customer.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.customer = type { i64, %struct.list* }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.list_node = type { i8*, %struct.list_node* }
%struct.reservation_info = type { i32, i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"customerPtr != NULL\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"customer.c\00", align 1
@__PRETTY_FUNCTION__.customer_alloc = private unnamed_addr constant [33 x i8] c"customer_t *customer_alloc(long)\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"customerPtr->reservationInfoListPtr != NULL\00", align 1
@__PRETTY_FUNCTION__.customer_alloc_seq = private unnamed_addr constant [37 x i8] c"customer_t *customer_alloc_seq(long)\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"reservationInfoPtr != NULL\00", align 1
@__PRETTY_FUNCTION__.customer_addReservationInfo = private unnamed_addr constant [81 x i8] c"bool_t customer_addReservationInfo(customer_t *, reservation_type_t, long, long)\00", align 1

; Function Attrs: nounwind uwtable
define noalias %struct.customer* @customer_alloc(i64 %id) #0 {
  %1 = tail call noalias i8* @malloc(i64 16) #6
  %2 = bitcast i8* %1 to %struct.customer*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 105, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.customer_alloc, i64 0, i64 0)) #7
  unreachable

; <label>:5                                       ; preds = %0
  %6 = bitcast i8* %1 to i64*
  store i64 %id, i64* %6, align 8
  %7 = tail call %struct.list* @TMlist_alloc(i64 (i8*, i8*)* nonnull @compareReservationInfo) #6
  %8 = getelementptr inbounds i8, i8* %1, i64 8
  %9 = bitcast i8* %8 to %struct.list**
  store %struct.list* %7, %struct.list** %9, align 8
  %10 = icmp eq %struct.list* %7, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %5
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 110, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.customer_alloc, i64 0, i64 0)) #7
  unreachable

; <label>:12                                      ; preds = %5
  ret %struct.customer* %2
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

declare %struct.list* @TMlist_alloc(i64 (i8*, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i64 @compareReservationInfo(i8* %aPtr, i8* %bPtr) #0 {
  %1 = bitcast i8* %aPtr to %struct.reservation_info*
  %2 = bitcast i8* %bPtr to %struct.reservation_info*
  %3 = tail call i64 @reservation_info_compare(%struct.reservation_info* %1, %struct.reservation_info* %2) #6
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define noalias %struct.customer* @customer_alloc_seq(i64 %id) #0 {
  %1 = tail call noalias i8* @malloc(i64 16) #6
  %2 = bitcast i8* %1 to %struct.customer*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 122, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.customer_alloc_seq, i64 0, i64 0)) #7
  unreachable

; <label>:5                                       ; preds = %0
  %6 = bitcast i8* %1 to i64*
  store i64 %id, i64* %6, align 8
  %7 = tail call %struct.list* @list_alloc(i64 (i8*, i8*)* nonnull @compareReservationInfo) #6
  %8 = getelementptr inbounds i8, i8* %1, i64 8
  %9 = bitcast i8* %8 to %struct.list**
  store %struct.list* %7, %struct.list** %9, align 8
  %10 = icmp eq %struct.list* %7, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %5
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 127, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.customer_alloc_seq, i64 0, i64 0)) #7
  unreachable

; <label>:12                                      ; preds = %5
  ret %struct.customer* %2
}

declare %struct.list* @list_alloc(i64 (i8*, i8*)*) #3

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @customer_compare(%struct.customer* nocapture readonly %aPtr, %struct.customer* nocapture readonly %bPtr) #4 {
  %1 = getelementptr inbounds %struct.customer, %struct.customer* %aPtr, i64 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.customer, %struct.customer* %bPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = sub nsw i64 %2, %4
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define void @customer_free(%struct.customer* nocapture %customerPtr) #0 {
  %1 = getelementptr inbounds %struct.customer, %struct.customer* %customerPtr, i64 0, i32 1
  %2 = load %struct.list*, %struct.list** %1, align 8
  tail call void @TMlist_free(%struct.list* %2) #6
  %3 = bitcast %struct.customer* %customerPtr to i8*
  tail call void @free(i8* %3) #6
  ret void
}

declare void @TMlist_free(%struct.list*) #3

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i64 @customer_addReservationInfo(%struct.customer* nocapture readonly %customerPtr, i32 %type, i64 %id, i64 %price) #0 {
  %1 = tail call %struct.reservation_info* @reservation_info_alloc(i32 %type, i64 %id, i64 %price) #6
  %2 = icmp eq %struct.reservation_info* %1, null
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 172, i8* nonnull getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.customer_addReservationInfo, i64 0, i64 0)) #7
  unreachable

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.customer, %struct.customer* %customerPtr, i64 0, i32 1
  %6 = load %struct.list*, %struct.list** %5, align 8
  %7 = bitcast %struct.reservation_info* %1 to i8*
  %8 = tail call i64 @TMlist_insert(%struct.list* %6, i8* %7) #6
  ret i64 %8
}

declare %struct.reservation_info* @reservation_info_alloc(i32, i64, i64) #3

declare i64 @TMlist_insert(%struct.list*, i8*) #3

; Function Attrs: nounwind uwtable
define i64 @customer_removeReservationInfo(%struct.customer* nocapture readonly %customerPtr, i32 %type, i64 %id) #0 {
  %findReservationInfo = alloca %struct.reservation_info, align 8
  %1 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %findReservationInfo, i64 0, i32 0
  store i32 %type, i32* %1, align 8
  %2 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %findReservationInfo, i64 0, i32 1
  store i64 %id, i64* %2, align 8
  %3 = getelementptr inbounds %struct.customer, %struct.customer* %customerPtr, i64 0, i32 1
  %4 = load %struct.list*, %struct.list** %3, align 8
  %5 = bitcast %struct.reservation_info* %findReservationInfo to i8*
  %6 = call i8* @TMlist_find(%struct.list* %4, i8* %5) #6
  %7 = bitcast i8* %6 to %struct.reservation_info*
  %8 = icmp eq i8* %6, null
  br i1 %8, label %14, label %9

; <label>:9                                       ; preds = %0
  %10 = call i64 @TMlist_remove(%struct.list* %4, i8* %5) #6
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %9
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !1
  br label %13

; <label>:13                                      ; preds = %12, %9
  call void @reservation_info_free(%struct.reservation_info* %7) #6
  br label %14

; <label>:14                                      ; preds = %0, %13
  %.0 = phi i64 [ 1, %13 ], [ 0, %0 ]
  ret i64 %.0
}

declare i8* @TMlist_find(%struct.list*, i8*) #3

declare i64 @TMlist_remove(%struct.list*, i8*) #3

declare void @reservation_info_free(%struct.reservation_info*) #3

; Function Attrs: nounwind uwtable
define i64 @customer_getBill(%struct.customer* nocapture readonly %customerPtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %1 = getelementptr inbounds %struct.customer, %struct.customer* %customerPtr, i64 0, i32 1
  %2 = load %struct.list*, %struct.list** %1, align 8
  call void @TMlist_iter_reset(%struct.list_node** nonnull %it, %struct.list* %2) #6
  %3 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %2) #8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %bill.01 = phi i64 [ %9, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %5 = call i8* @TMlist_iter_next(%struct.list_node** nonnull %it, %struct.list* %2) #6
  %6 = getelementptr inbounds i8, i8* %5, i64 16
  %7 = bitcast i8* %6 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, %bill.01
  %10 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %2) #8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !2

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.lcssa = phi i64 [ %9, %.lr.ph ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  %bill.0.lcssa = phi i64 [ 0, %0 ], [ %.lcssa, %._crit_edge.loopexit ]
  ret i64 %bill.0.lcssa
}

declare void @TMlist_iter_reset(%struct.list_node**, %struct.list*) #3

; Function Attrs: nounwind readonly
declare i64 @TMlist_iter_hasNext(%struct.list_node**, %struct.list*) #5

declare i8* @TMlist_iter_next(%struct.list_node**, %struct.list*) #3

declare i64 @reservation_info_compare(%struct.reservation_info*, %struct.reservation_info*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 -2145909578}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.vectorize.width", i32 1337}
