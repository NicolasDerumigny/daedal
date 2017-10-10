; ModuleID = '../bin/customer.tm-gran.ll'
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
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call noalias i8* @malloc(i64 16) #6
  %2 = bitcast i8* %1 to %struct.customer*
  %3 = icmp ne %struct.customer* %2, null
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  br label %7

; <label>:5                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 105, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.customer_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %7

; <label>:7                                       ; preds = %6, %4
  %8 = getelementptr inbounds %struct.customer, %struct.customer* %2, i32 0, i32 0
  store i64 %id, i64* %8, align 8
  %9 = call %struct.list* @TMlist_alloc(i64 (i8*, i8*)* @compareReservationInfo)
  %10 = getelementptr inbounds %struct.customer, %struct.customer* %2, i32 0, i32 1
  store %struct.list* %9, %struct.list** %10, align 8
  %11 = getelementptr inbounds %struct.customer, %struct.customer* %2, i32 0, i32 1
  %12 = load %struct.list*, %struct.list** %11, align 8
  %13 = icmp ne %struct.list* %12, null
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %7
  br label %17

; <label>:15                                      ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.customer_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %17

; <label>:17                                      ; preds = %16, %14
  ret %struct.customer* %2
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

declare %struct.list* @TMlist_alloc(i64 (i8*, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i64 @compareReservationInfo(i8* %aPtr, i8* %bPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = bitcast i8* %aPtr to %struct.reservation_info*
  %2 = bitcast i8* %bPtr to %struct.reservation_info*
  %3 = call i64 @reservation_info_compare(%struct.reservation_info* %1, %struct.reservation_info* %2)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define %struct.customer* @customer_alloc_seq(i64 %id) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call noalias i8* @malloc(i64 16) #6
  %2 = bitcast i8* %1 to %struct.customer*
  %3 = icmp ne %struct.customer* %2, null
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  br label %7

; <label>:5                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 122, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.customer_alloc_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %7

; <label>:7                                       ; preds = %6, %4
  %8 = getelementptr inbounds %struct.customer, %struct.customer* %2, i32 0, i32 0
  store i64 %id, i64* %8, align 8
  %9 = call %struct.list* @list_alloc(i64 (i8*, i8*)* @compareReservationInfo)
  %10 = getelementptr inbounds %struct.customer, %struct.customer* %2, i32 0, i32 1
  store %struct.list* %9, %struct.list** %10, align 8
  %11 = getelementptr inbounds %struct.customer, %struct.customer* %2, i32 0, i32 1
  %12 = load %struct.list*, %struct.list** %11, align 8
  %13 = icmp ne %struct.list* %12, null
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %7
  br label %17

; <label>:15                                      ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 127, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.customer_alloc_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %17

; <label>:17                                      ; preds = %16, %14
  ret %struct.customer* %2
}

declare %struct.list* @list_alloc(i64 (i8*, i8*)*) #3

; Function Attrs: nounwind uwtable
define i64 @customer_compare(%struct.customer* %aPtr, %struct.customer* %bPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.customer, %struct.customer* %aPtr, i32 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.customer, %struct.customer* %bPtr, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = sub nsw i64 %2, %4
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define void @customer_free(%struct.customer* %customerPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.customer, %struct.customer* %customerPtr, i32 0, i32 1
  %2 = load %struct.list*, %struct.list** %1, align 8
  call void @TMlist_free(%struct.list* %2)
  %3 = bitcast %struct.customer* %customerPtr to i8*
  call void @free(i8* %3) #6
  ret void
}

declare void @TMlist_free(%struct.list*) #3

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i64 @customer_addReservationInfo(%struct.customer* %customerPtr, i32 %type, i64 %id, i64 %price) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call %struct.reservation_info* @reservation_info_alloc(i32 %type, i64 %id, i64 %price)
  %2 = icmp ne %struct.reservation_info* %1, null
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  br label %6

; <label>:4                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 172, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.customer_addReservationInfo, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %6

; <label>:6                                       ; preds = %5, %3
  %7 = getelementptr inbounds %struct.customer, %struct.customer* %customerPtr, i32 0, i32 1
  %8 = load %struct.list*, %struct.list** %7, align 8
  %9 = bitcast %struct.reservation_info* %1 to i8*
  %10 = call i64 @TMlist_insert(%struct.list* %8, i8* %9)
  ret i64 %10
}

declare %struct.reservation_info* @reservation_info_alloc(i32, i64, i64) #3

declare i64 @TMlist_insert(%struct.list*, i8*) #3

; Function Attrs: nounwind uwtable
define i64 @customer_removeReservationInfo(%struct.customer* %customerPtr, i32 %type, i64 %id) #0 {
  %findReservationInfo = alloca %struct.reservation_info, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %findReservationInfo, i32 0, i32 0
  store i32 %type, i32* %1, align 8
  %2 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %findReservationInfo, i32 0, i32 1
  store i64 %id, i64* %2, align 8
  %3 = getelementptr inbounds %struct.customer, %struct.customer* %customerPtr, i32 0, i32 1
  %4 = load %struct.list*, %struct.list** %3, align 8
  %5 = bitcast %struct.reservation_info* %findReservationInfo to i8*
  %6 = call i8* @TMlist_find(%struct.list* %4, i8* %5)
  %7 = bitcast i8* %6 to %struct.reservation_info*
  %8 = icmp eq %struct.reservation_info* %7, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  br label %16

; <label>:10                                      ; preds = %0
  %11 = bitcast %struct.reservation_info* %findReservationInfo to i8*
  %12 = call i64 @TMlist_remove(%struct.list* %4, i8* %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %._crit_edge

._crit_edge:                                      ; preds = %10
  br label %15

; <label>:14                                      ; preds = %10
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !1
  br label %15

; <label>:15                                      ; preds = %14, %._crit_edge
  call void @reservation_info_free(%struct.reservation_info* %7)
  br label %16

; <label>:16                                      ; preds = %15, %9
  %.0 = phi i64 [ 0, %9 ], [ 1, %15 ]
  ret i64 %.0
}

declare i8* @TMlist_find(%struct.list*, i8*) #3

declare i64 @TMlist_remove(%struct.list*, i8*) #3

declare void @reservation_info_free(%struct.reservation_info*) #3

; Function Attrs: nounwind uwtable
define i64 @customer_getBill(%struct.customer* %customerPtr) #0 {
  %structArg = alloca { %struct.list_node**, %struct.list*, i64 }
  %it = alloca %struct.list_node*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.customer, %struct.customer* %customerPtr, i32 0, i32 1
  %2 = load %struct.list*, %struct.list** %1, align 8
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %2)
  br label %codeRepl

codeRepl:                                         ; preds = %0
  %gep_it = getelementptr { %struct.list_node**, %struct.list*, i64 }, { %struct.list_node**, %struct.list*, i64 }* %structArg, i32 0, i32 0
  store %struct.list_node** %it, %struct.list_node*** %gep_it
  %gep_ = getelementptr { %struct.list_node**, %struct.list*, i64 }, { %struct.list_node**, %struct.list*, i64 }* %structArg, i32 0, i32 1
  store %struct.list* %2, %struct.list** %gep_
  call void @customer_getBill___kernel__customer_getBill0({ %struct.list_node**, %struct.list*, i64 }* %structArg)
  %gep_reload_bill.0 = getelementptr { %struct.list_node**, %struct.list*, i64 }, { %struct.list_node**, %struct.list*, i64 }* %structArg, i32 0, i32 2
  %bill.0.reload = load i64, i64* %gep_reload_bill.0
  br label %3

; <label>:3                                       ; preds = %codeRepl
  ret i64 %bill.0.reload
}

declare void @TMlist_iter_reset(%struct.list_node**, %struct.list*) #3

; Function Attrs: nounwind readonly
declare i64 @TMlist_iter_hasNext(%struct.list_node**, %struct.list*) #4

declare i8* @TMlist_iter_next(%struct.list_node**, %struct.list*) #3

declare i64 @reservation_info_compare(%struct.reservation_info*, %struct.reservation_info*) #3

; Function Attrs: alwaysinline nounwind
define internal void @customer_getBill___kernel__customer_getBill0({ %struct.list_node**, %struct.list*, i64 }*) #5 {
newFuncRoot:
  %gep_it = getelementptr { %struct.list_node**, %struct.list*, i64 }, { %struct.list_node**, %struct.list*, i64 }* %0, i32 0, i32 0
  %loadgep_it = load %struct.list_node**, %struct.list_node*** %gep_it
  %gep_ = getelementptr { %struct.list_node**, %struct.list*, i64 }, { %struct.list_node**, %struct.list*, i64 }* %0, i32 0, i32 1
  %loadgep_ = load %struct.list*, %struct.list** %gep_
  br label %__kernel__customer_getBill0

.exitStub:                                        ; preds = %__kernel__customer_getBill0
  %gep_bill.0 = getelementptr { %struct.list_node**, %struct.list*, i64 }, { %struct.list_node**, %struct.list*, i64 }* %0, i32 0, i32 2
  store i64 %bill.0, i64* %gep_bill.0
  ret void

__kernel__customer_getBill0:                      ; preds = %newFuncRoot, %3
  %bill.0 = phi i64 [ 0, %newFuncRoot ], [ %8, %3 ]
  %1 = call i64 @TMlist_iter_hasNext(%struct.list_node** %loadgep_it, %struct.list* %loadgep_) #8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %.exitStub

; <label>:3                                       ; preds = %__kernel__customer_getBill0
  %4 = call i8* @TMlist_iter_next(%struct.list_node** %loadgep_it, %struct.list* %loadgep_)
  %5 = bitcast i8* %4 to %struct.reservation_info*
  %6 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %bill.0, %7
  br label %__kernel__customer_getBill0, !llvm.loop !2
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { alwaysinline nounwind }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 -2145909578}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.vectorize.width", i32 1337}
