; ModuleID = '../bin/table.marked.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { %struct.list**, i64 }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.list_node = type { i8*, %struct.list_node* }

; Function Attrs: nounwind uwtable
define noalias %struct.table* @table_alloc(i64 %numBucket, i64 (i8*, i8*)* %compare) #0 {
  %1 = tail call noalias i8* @malloc(i64 16) #3
  %2 = bitcast i8* %1 to %struct.table*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %.loopexit, label %4

; <label>:4                                       ; preds = %0
  %5 = shl i64 %numBucket, 3
  %6 = tail call noalias i8* @malloc(i64 %5) #3
  %7 = bitcast i8* %1 to i8**
  store i8* %6, i8** %7, align 8
  %8 = icmp eq i8* %6, null
  %9 = bitcast i8* %6 to %struct.list**
  br i1 %8, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %4
  %10 = icmp sgt i64 %numBucket, 0
  br i1 %10, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  br label %.lr.ph

; <label>:11                                      ; preds = %.lr.ph
  %12 = icmp slt i64 %16, %numBucket
  br i1 %12, label %.lr.ph, label %._crit_edge.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %11
  %i.01 = phi i64 [ %16, %11 ], [ 0, %.lr.ph.preheader ]
  %13 = tail call %struct.list* @list_alloc(i64 (i8*, i8*)* %compare) #3
  %14 = getelementptr inbounds %struct.list*, %struct.list** %9, i64 %i.01
  store %struct.list* %13, %struct.list** %14, align 8
  %15 = icmp eq %struct.list* %13, null
  %16 = add nuw nsw i64 %i.01, 1
  br i1 %15, label %.loopexit.loopexit, label %11

._crit_edge.loopexit:                             ; preds = %11
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %17 = getelementptr inbounds i8, i8* %1, i64 8
  %18 = bitcast i8* %17 to i64*
  store i64 %numBucket, i64* %18, align 8
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %4, %0, %._crit_edge
  %.0 = phi %struct.table* [ %2, %._crit_edge ], [ null, %0 ], [ null, %4 ], [ null, %.loopexit.loopexit ]
  ret %struct.table* %.0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.list* @list_alloc(i64 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define i64 @table_insert(%struct.table* nocapture readonly %tablePtr, i64 %hash, i8* %dataPtr) #0 {
  %1 = getelementptr inbounds %struct.table, %struct.table* %tablePtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = urem i64 %hash, %2
  %4 = getelementptr inbounds %struct.table, %struct.table* %tablePtr, i64 0, i32 0
  %5 = load %struct.list**, %struct.list*** %4, align 8
  %6 = getelementptr inbounds %struct.list*, %struct.list** %5, i64 %3
  %7 = load %struct.list*, %struct.list** %6, align 8
  %8 = tail call i64 @list_insert(%struct.list* %7, i8* %dataPtr) #3
  %not. = icmp ne i64 %8, 0
  %. = zext i1 %not. to i64
  ret i64 %.
}

declare i64 @list_insert(%struct.list*, i8*) #2

; Function Attrs: nounwind uwtable
define i64 @TMtable_insert(%struct.table* nocapture readonly %tablePtr, i64 %hash, i8* %dataPtr) #0 {
  %1 = getelementptr inbounds %struct.table, %struct.table* %tablePtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = urem i64 %hash, %2
  %4 = getelementptr inbounds %struct.table, %struct.table* %tablePtr, i64 0, i32 0
  %5 = load %struct.list**, %struct.list*** %4, align 8
  %6 = getelementptr inbounds %struct.list*, %struct.list** %5, i64 %3
  %7 = load %struct.list*, %struct.list** %6, align 8
  %8 = tail call i64 @TMlist_insert(%struct.list* %7, i8* %dataPtr) #3
  %not. = icmp ne i64 %8, 0
  %. = zext i1 %not. to i64
  ret i64 %.
}

declare i64 @TMlist_insert(%struct.list*, i8*) #2

; Function Attrs: nounwind uwtable
define i64 @table_remove(%struct.table* nocapture readonly %tablePtr, i64 %hash, i8* %dataPtr) #0 {
  %1 = getelementptr inbounds %struct.table, %struct.table* %tablePtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = urem i64 %hash, %2
  %4 = getelementptr inbounds %struct.table, %struct.table* %tablePtr, i64 0, i32 0
  %5 = load %struct.list**, %struct.list*** %4, align 8
  %6 = getelementptr inbounds %struct.list*, %struct.list** %5, i64 %3
  %7 = load %struct.list*, %struct.list** %6, align 8
  %8 = tail call i64 @list_remove(%struct.list* %7, i8* %dataPtr) #3
  %not. = icmp ne i64 %8, 0
  %. = zext i1 %not. to i64
  ret i64 %.
}

declare i64 @list_remove(%struct.list*, i8*) #2

; Function Attrs: nounwind uwtable
define void @table_free(%struct.table* nocapture %tablePtr) #0 {
  %1 = bitcast %struct.table* %tablePtr to i8*
  tail call void @free(i8* %1) #3
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
