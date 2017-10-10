; ModuleID = '../bin/customer.stats.ll'
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
define %struct.customer* @customer_alloc(i64 %id) #0 {
  %1 = alloca i64, align 8
  %customerPtr = alloca %struct.customer*, align 8
  store i64 %id, i64* %1, align 8
  %2 = call noalias i8* @malloc(i64 16) #5
  %3 = bitcast i8* %2 to %struct.customer*
  store %struct.customer* %3, %struct.customer** %customerPtr, align 8
  %4 = load %struct.customer*, %struct.customer** %customerPtr, align 8
  %5 = icmp ne %struct.customer* %4, null
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  br label %9

; <label>:7                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 105, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.customer_alloc, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %8, %6
  %10 = load i64, i64* %1, align 8
  %11 = load %struct.customer*, %struct.customer** %customerPtr, align 8
  %12 = getelementptr inbounds %struct.customer, %struct.customer* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = call %struct.list* @TMlist_alloc(i64 (i8*, i8*)* @compareReservationInfo)
  %14 = load %struct.customer*, %struct.customer** %customerPtr, align 8
  %15 = getelementptr inbounds %struct.customer, %struct.customer* %14, i32 0, i32 1
  store %struct.list* %13, %struct.list** %15, align 8
  %16 = load %struct.customer*, %struct.customer** %customerPtr, align 8
  %17 = getelementptr inbounds %struct.customer, %struct.customer* %16, i32 0, i32 1
  %18 = load %struct.list*, %struct.list** %17, align 8
  %19 = icmp ne %struct.list* %18, null
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %9
  br label %23

; <label>:21                                      ; preds = %9
  call void @__assert_fail(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.customer_alloc, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %23

; <label>:23                                      ; preds = %22, %20
  %24 = load %struct.customer*, %struct.customer** %customerPtr, align 8
  ret %struct.customer* %24
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

declare %struct.list* @TMlist_alloc(i64 (i8*, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i64 @compareReservationInfo(i8* %aPtr, i8* %bPtr) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  store i8* %aPtr, i8** %1, align 8
  store i8* %bPtr, i8** %2, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = bitcast i8* %3 to %struct.reservation_info*
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.reservation_info*
  %7 = call i64 @reservation_info_compare(%struct.reservation_info* %4, %struct.reservation_info* %6)
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define %struct.customer* @customer_alloc_seq(i64 %id) #0 {
  %1 = alloca i64, align 8
  %customerPtr = alloca %struct.customer*, align 8
  store i64 %id, i64* %1, align 8
  %2 = call noalias i8* @malloc(i64 16) #5
  %3 = bitcast i8* %2 to %struct.customer*
  store %struct.customer* %3, %struct.customer** %customerPtr, align 8
  %4 = load %struct.customer*, %struct.customer** %customerPtr, align 8
  %5 = icmp ne %struct.customer* %4, null
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  br label %9

; <label>:7                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 122, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.customer_alloc_seq, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %8, %6
  %10 = load i64, i64* %1, align 8
  %11 = load %struct.customer*, %struct.customer** %customerPtr, align 8
  %12 = getelementptr inbounds %struct.customer, %struct.customer* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = call %struct.list* @list_alloc(i64 (i8*, i8*)* @compareReservationInfo)
  %14 = load %struct.customer*, %struct.customer** %customerPtr, align 8
  %15 = getelementptr inbounds %struct.customer, %struct.customer* %14, i32 0, i32 1
  store %struct.list* %13, %struct.list** %15, align 8
  %16 = load %struct.customer*, %struct.customer** %customerPtr, align 8
  %17 = getelementptr inbounds %struct.customer, %struct.customer* %16, i32 0, i32 1
  %18 = load %struct.list*, %struct.list** %17, align 8
  %19 = icmp ne %struct.list* %18, null
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %9
  br label %23

; <label>:21                                      ; preds = %9
  call void @__assert_fail(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 127, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.customer_alloc_seq, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %23

; <label>:23                                      ; preds = %22, %20
  %24 = load %struct.customer*, %struct.customer** %customerPtr, align 8
  ret %struct.customer* %24
}

declare %struct.list* @list_alloc(i64 (i8*, i8*)*) #3

; Function Attrs: nounwind uwtable
define i64 @customer_compare(%struct.customer* %aPtr, %struct.customer* %bPtr) #0 {
  %1 = alloca %struct.customer*, align 8
  %2 = alloca %struct.customer*, align 8
  store %struct.customer* %aPtr, %struct.customer** %1, align 8
  store %struct.customer* %bPtr, %struct.customer** %2, align 8
  %3 = load %struct.customer*, %struct.customer** %1, align 8
  %4 = getelementptr inbounds %struct.customer, %struct.customer* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.customer*, %struct.customer** %2, align 8
  %7 = getelementptr inbounds %struct.customer, %struct.customer* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = sub nsw i64 %5, %8
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define void @customer_free(%struct.customer* %customerPtr) #0 {
  %1 = alloca %struct.customer*, align 8
  %reservationInfoListPtr = alloca %struct.list*, align 8
  store %struct.customer* %customerPtr, %struct.customer** %1, align 8
  %2 = load %struct.customer*, %struct.customer** %1, align 8
  %3 = getelementptr inbounds %struct.customer, %struct.customer* %2, i32 0, i32 1
  %4 = load %struct.list*, %struct.list** %3, align 8
  store %struct.list* %4, %struct.list** %reservationInfoListPtr, align 8
  %5 = load %struct.list*, %struct.list** %reservationInfoListPtr, align 8
  call void @TMlist_free(%struct.list* %5)
  %6 = load %struct.customer*, %struct.customer** %1, align 8
  %7 = bitcast %struct.customer* %6 to i8*
  call void @free(i8* %7) #5
  ret void
}

declare void @TMlist_free(%struct.list*) #3

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i64 @customer_addReservationInfo(%struct.customer* %customerPtr, i32 %type, i64 %id, i64 %price) #0 {
  %1 = alloca %struct.customer*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %reservationInfoPtr = alloca %struct.reservation_info*, align 8
  %reservationInfoListPtr = alloca %struct.list*, align 8
  store %struct.customer* %customerPtr, %struct.customer** %1, align 8
  store i32 %type, i32* %2, align 4
  store i64 %id, i64* %3, align 8
  store i64 %price, i64* %4, align 8
  %5 = load i32, i32* %2, align 4
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call %struct.reservation_info* @reservation_info_alloc(i32 %5, i64 %6, i64 %7)
  store %struct.reservation_info* %8, %struct.reservation_info** %reservationInfoPtr, align 8
  %9 = load %struct.reservation_info*, %struct.reservation_info** %reservationInfoPtr, align 8
  %10 = icmp ne %struct.reservation_info* %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  br label %14

; <label>:12                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 172, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.customer_addReservationInfo, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %14

; <label>:14                                      ; preds = %13, %11
  %15 = load %struct.customer*, %struct.customer** %1, align 8
  %16 = getelementptr inbounds %struct.customer, %struct.customer* %15, i32 0, i32 1
  %17 = load %struct.list*, %struct.list** %16, align 8
  store %struct.list* %17, %struct.list** %reservationInfoListPtr, align 8
  %18 = load %struct.list*, %struct.list** %reservationInfoListPtr, align 8
  %19 = load %struct.reservation_info*, %struct.reservation_info** %reservationInfoPtr, align 8
  %20 = bitcast %struct.reservation_info* %19 to i8*
  %21 = call i64 @TMlist_insert(%struct.list* %18, i8* %20)
  ret i64 %21
}

declare %struct.reservation_info* @reservation_info_alloc(i32, i64, i64) #3

declare i64 @TMlist_insert(%struct.list*, i8*) #3

; Function Attrs: nounwind uwtable
define i64 @customer_removeReservationInfo(%struct.customer* %customerPtr, i32 %type, i64 %id) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.customer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %findReservationInfo = alloca %struct.reservation_info, align 8
  %reservationInfoListPtr = alloca %struct.list*, align 8
  %reservationInfoPtr = alloca %struct.reservation_info*, align 8
  %status = alloca i64, align 8
  store %struct.customer* %customerPtr, %struct.customer** %2, align 8
  store i32 %type, i32* %3, align 4
  store i64 %id, i64* %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %findReservationInfo, i32 0, i32 0
  store i32 %5, i32* %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %findReservationInfo, i32 0, i32 1
  store i64 %7, i64* %8, align 8
  %9 = load %struct.customer*, %struct.customer** %2, align 8
  %10 = getelementptr inbounds %struct.customer, %struct.customer* %9, i32 0, i32 1
  %11 = load %struct.list*, %struct.list** %10, align 8
  store %struct.list* %11, %struct.list** %reservationInfoListPtr, align 8
  %12 = load %struct.list*, %struct.list** %reservationInfoListPtr, align 8
  %13 = bitcast %struct.reservation_info* %findReservationInfo to i8*
  %14 = call i8* @TMlist_find(%struct.list* %12, i8* %13)
  %15 = bitcast i8* %14 to %struct.reservation_info*
  store %struct.reservation_info* %15, %struct.reservation_info** %reservationInfoPtr, align 8
  %16 = load %struct.reservation_info*, %struct.reservation_info** %reservationInfoPtr, align 8
  %17 = icmp eq %struct.reservation_info* %16, null
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %28

; <label>:19                                      ; preds = %0
  %20 = load %struct.list*, %struct.list** %reservationInfoListPtr, align 8
  %21 = bitcast %struct.reservation_info* %findReservationInfo to i8*
  %22 = call i64 @TMlist_remove(%struct.list* %20, i8* %21)
  store i64 %22, i64* %status, align 8
  %23 = load i64, i64* %status, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %19
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #5, !srcloc !1
  br label %26

; <label>:26                                      ; preds = %25, %19
  %27 = load %struct.reservation_info*, %struct.reservation_info** %reservationInfoPtr, align 8
  call void @reservation_info_free(%struct.reservation_info* %27)
  store i64 1, i64* %1, align 8
  br label %28

; <label>:28                                      ; preds = %26, %18
  %29 = load i64, i64* %1, align 8
  ret i64 %29
}

declare i8* @TMlist_find(%struct.list*, i8*) #3

declare i64 @TMlist_remove(%struct.list*, i8*) #3

declare void @reservation_info_free(%struct.reservation_info*) #3

; Function Attrs: nounwind uwtable
define i64 @customer_getBill(%struct.customer* %customerPtr) #0 {
  %1 = alloca %struct.customer*, align 8
  %bill = alloca i64, align 8
  %it = alloca %struct.list_node*, align 8
  %reservationInfoListPtr = alloca %struct.list*, align 8
  %reservationInfoPtr = alloca %struct.reservation_info*, align 8
  store %struct.customer* %customerPtr, %struct.customer** %1, align 8
  store i64 0, i64* %bill, align 8
  %2 = load %struct.customer*, %struct.customer** %1, align 8
  %3 = getelementptr inbounds %struct.customer, %struct.customer* %2, i32 0, i32 1
  %4 = load %struct.list*, %struct.list** %3, align 8
  store %struct.list* %4, %struct.list** %reservationInfoListPtr, align 8
  %5 = load %struct.list*, %struct.list** %reservationInfoListPtr, align 8
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %5)
  br label %__kernel__customer_getBill0

__kernel__customer_getBill0:                      ; preds = %9, %0
  %6 = load %struct.list*, %struct.list** %reservationInfoListPtr, align 8
  %7 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %6) #7
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

; <label>:9                                       ; preds = %__kernel__customer_getBill0
  %10 = load %struct.list*, %struct.list** %reservationInfoListPtr, align 8
  %11 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %10)
  %12 = bitcast i8* %11 to %struct.reservation_info*
  store %struct.reservation_info* %12, %struct.reservation_info** %reservationInfoPtr, align 8
  %13 = load %struct.reservation_info*, %struct.reservation_info** %reservationInfoPtr, align 8
  %14 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %bill, align 8
  %17 = add nsw i64 %16, %15
  store i64 %17, i64* %bill, align 8
  br label %__kernel__customer_getBill0, !llvm.loop !2

; <label>:18                                      ; preds = %__kernel__customer_getBill0
  %19 = load i64, i64* %bill, align 8
  ret i64 %19
}

declare void @TMlist_iter_reset(%struct.list_node**, %struct.list*) #3

; Function Attrs: nounwind readonly
declare i64 @TMlist_iter_hasNext(%struct.list_node**, %struct.list*) #4

declare i8* @TMlist_iter_next(%struct.list_node**, %struct.list*) #3

declare i64 @reservation_info_compare(%struct.reservation_info*, %struct.reservation_info*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 -2145909578}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.vectorize.width", i32 1337}
