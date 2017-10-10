; ModuleID = '../bin/alg_radix_smp.marked.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"myHisto\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"alg_radix_smp.c\00", align 1
@__PRETTY_FUNCTION__.all_countsort_node = private unnamed_addr constant [82 x i8] c"void all_countsort_node(long, unsigned long *, unsigned long *, long, long, long)\00", align 1
@global_myHisto = internal unnamed_addr global i64* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"psHisto\00", align 1
@global_psHisto = internal unnamed_addr global i64* null, align 8
@__PRETTY_FUNCTION__.all_countsort_node_aux_seq = private unnamed_addr constant [124 x i8] c"void all_countsort_node_aux_seq(long, unsigned long *, unsigned long *, unsigned long *, unsigned long *, long, long, long)\00", align 1
@__PRETTY_FUNCTION__.all_countsort_node_aux = private unnamed_addr constant [120 x i8] c"void all_countsort_node_aux(long, unsigned long *, unsigned long *, unsigned long *, unsigned long *, long, long, long)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"lTemp\00", align 1
@__PRETTY_FUNCTION__.all_radixsort_node_s3 = private unnamed_addr constant [67 x i8] c"void all_radixsort_node_s3(long, unsigned long *, unsigned long *)\00", align 1
@global_lTemp = internal unnamed_addr global i64* null, align 8
@__PRETTY_FUNCTION__.all_radixsort_node_s2 = private unnamed_addr constant [67 x i8] c"void all_radixsort_node_s2(long, unsigned long *, unsigned long *)\00", align 1
@__PRETTY_FUNCTION__.all_radixsort_node_aux_s3_seq = private unnamed_addr constant [109 x i8] c"void all_radixsort_node_aux_s3_seq(long, unsigned long *, unsigned long *, unsigned long *, unsigned long *)\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"lTemp2\00", align 1
@__PRETTY_FUNCTION__.all_radixsort_node_aux_s3 = private unnamed_addr constant [105 x i8] c"void all_radixsort_node_aux_s3(long, unsigned long *, unsigned long *, unsigned long *, unsigned long *)\00", align 1
@global_lTemp2 = internal unnamed_addr global i64* null, align 8

; Function Attrs: nounwind uwtable
define void @all_countsort_node(i64 %q, i64* nocapture readonly %lKey, i64* nocapture %lSorted, i64 %R, i64 %bitOff, i64 %m) #0 {
  %k_start = alloca i64, align 8
  %k_stop = alloca i64, align 8
  %1 = tail call i64 (...) @thread_getId() #5
  %2 = tail call i64 (...) @thread_getNumThread() #5
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %4, label %15

; <label>:4                                       ; preds = %0
  %5 = shl i64 %R, 3
  %6 = mul i64 %5, %2
  %7 = tail call noalias i8* @malloc(i64 %6) #5
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 107, i8* nonnull getelementptr inbounds ([82 x i8], [82 x i8]* @__PRETTY_FUNCTION__.all_countsort_node, i64 0, i64 0)) #6
  unreachable

; <label>:10                                      ; preds = %4
  store i8* %7, i8** bitcast (i64** @global_myHisto to i8**), align 8
  %11 = tail call noalias i8* @malloc(i64 %6) #5
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %10
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 110, i8* nonnull getelementptr inbounds ([82 x i8], [82 x i8]* @__PRETTY_FUNCTION__.all_countsort_node, i64 0, i64 0)) #6
  unreachable

; <label>:14                                      ; preds = %10
  store i8* %11, i8** bitcast (i64** @global_psHisto to i8**), align 8
  br label %15

; <label>:15                                      ; preds = %14, %0
  tail call void (...) @thread_barrier_wait() #5
  %16 = load i64*, i64** @global_myHisto, align 8
  %17 = load i64*, i64** @global_psHisto, align 8
  %18 = mul i64 %1, %R
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = icmp sgt i64 %R, 0
  br i1 %20, label %.lr.ph23.preheader, label %._crit_edge24

.lr.ph23.preheader:                               ; preds = %15
  %scevgep28 = bitcast i64* %19 to i8*
  %21 = shl i64 %R, 3
  call void @llvm.memset.p0i8.i64(i8* %scevgep28, i8 0, i64 %21, i32 8, i1 false)
  br label %._crit_edge24

._crit_edge24:                                    ; preds = %.lr.ph23.preheader, %15
  call void @createPartition(i64 0, i64 %q, i64 %1, i64 %2, i64* nonnull %k_start, i64* nonnull %k_stop) #5
  %22 = load i64, i64* %k_start, align 8
  %23 = load i64, i64* %k_stop, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %.lr.ph19, label %._crit_edge20

.lr.ph19:                                         ; preds = %._crit_edge24
  %25 = trunc i64 %m to i32
  %26 = shl i32 -1, %25
  %27 = xor i32 %26, -1
  %28 = sext i32 %27 to i64
  br label %29

; <label>:29                                      ; preds = %.lr.ph19, %29
  %k.117 = phi i64 [ %22, %.lr.ph19 ], [ %37, %29 ]
  %30 = getelementptr inbounds i64, i64* %lKey, i64 %k.117
  %31 = load i64, i64* %30, align 8
  %32 = lshr i64 %31, %bitOff
  %33 = and i64 %32, %28
  %34 = getelementptr inbounds i64, i64* %19, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = add nsw i64 %k.117, 1
  %38 = load i64, i64* %k_stop, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %29, label %._crit_edge20.loopexit

._crit_edge20.loopexit:                           ; preds = %29
  br label %._crit_edge20

._crit_edge20:                                    ; preds = %._crit_edge20.loopexit, %._crit_edge24
  call void (...) @thread_barrier_wait() #5
  call void @createPartition(i64 0, i64 %R, i64 %1, i64 %2, i64* nonnull %k_start, i64* nonnull %k_stop) #5
  %40 = load i64, i64* %k_start, align 8
  %41 = load i64, i64* %k_stop, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %.lr.ph15, label %._crit_edge16

.lr.ph15:                                         ; preds = %._crit_edge20
  %43 = icmp sgt i64 %2, 1
  br i1 %43, label %.lr.ph15.split.us.preheader, label %.lr.ph15.split.preheader

.lr.ph15.split.preheader:                         ; preds = %.lr.ph15
  br label %.lr.ph15.split

.lr.ph15.split.us.preheader:                      ; preds = %.lr.ph15
  %44 = add i64 %2, 3
  %45 = add i64 %2, -2
  %xtraiter32 = and i64 %44, 3
  %lcmp.mod33 = icmp eq i64 %xtraiter32, 0
  %46 = icmp ult i64 %45, 3
  br label %.lr.ph15.split.us

.lr.ph15.split.us:                                ; preds = %.lr.ph15.split.us.preheader, %._crit_edge11.us
  %k.212.us = phi i64 [ %87, %._crit_edge11.us ], [ %40, %.lr.ph15.split.us.preheader ]
  %47 = getelementptr inbounds i64, i64* %16, i64 %k.212.us
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i64, i64* %17, i64 %k.212.us
  store i64 %48, i64* %49, align 8
  br i1 %lcmp.mod33, label %.lr.ph15.split.us.split, label %.preheader

.preheader:                                       ; preds = %.lr.ph15.split.us
  br label %50

; <label>:50                                      ; preds = %50, %.preheader
  %j.08.us.prol = phi i64 [ %57, %50 ], [ 1, %.preheader ]
  %last.07.us.prol = phi i64 [ %55, %50 ], [ %48, %.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %50 ], [ %xtraiter32, %.preheader ]
  %51 = mul nsw i64 %j.08.us.prol, %R
  %52 = add nsw i64 %51, %k.212.us
  %53 = getelementptr inbounds i64, i64* %16, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, %last.07.us.prol
  %56 = getelementptr inbounds i64, i64* %17, i64 %52
  store i64 %55, i64* %56, align 8
  %57 = add nuw nsw i64 %j.08.us.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph15.split.us.split.loopexit, label %50, !llvm.loop !1

.lr.ph15.split.us.split.loopexit:                 ; preds = %50
  %.lcssa34 = phi i64 [ %57, %50 ]
  %.lcssa = phi i64 [ %55, %50 ]
  br label %.lr.ph15.split.us.split

.lr.ph15.split.us.split:                          ; preds = %.lr.ph15.split.us, %.lr.ph15.split.us.split.loopexit
  %j.08.us.unr = phi i64 [ 1, %.lr.ph15.split.us ], [ %.lcssa34, %.lr.ph15.split.us.split.loopexit ]
  %last.07.us.unr = phi i64 [ %48, %.lr.ph15.split.us ], [ %.lcssa, %.lr.ph15.split.us.split.loopexit ]
  br i1 %46, label %._crit_edge11.us, label %.lr.ph15.split.us.split.split

.lr.ph15.split.us.split.split:                    ; preds = %.lr.ph15.split.us.split
  br label %58

; <label>:58                                      ; preds = %58, %.lr.ph15.split.us.split.split
  %j.08.us = phi i64 [ %j.08.us.unr, %.lr.ph15.split.us.split.split ], [ %86, %58 ]
  %last.07.us = phi i64 [ %last.07.us.unr, %.lr.ph15.split.us.split.split ], [ %84, %58 ]
  %59 = mul nsw i64 %j.08.us, %R
  %60 = add nsw i64 %59, %k.212.us
  %61 = getelementptr inbounds i64, i64* %16, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, %last.07.us
  %64 = getelementptr inbounds i64, i64* %17, i64 %60
  store i64 %63, i64* %64, align 8
  %65 = add nuw nsw i64 %j.08.us, 1
  %66 = mul nsw i64 %65, %R
  %67 = add nsw i64 %66, %k.212.us
  %68 = getelementptr inbounds i64, i64* %16, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, %63
  %71 = getelementptr inbounds i64, i64* %17, i64 %67
  store i64 %70, i64* %71, align 8
  %72 = add nsw i64 %j.08.us, 2
  %73 = mul nsw i64 %72, %R
  %74 = add nsw i64 %73, %k.212.us
  %75 = getelementptr inbounds i64, i64* %16, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, %70
  %78 = getelementptr inbounds i64, i64* %17, i64 %74
  store i64 %77, i64* %78, align 8
  %79 = add nsw i64 %j.08.us, 3
  %80 = mul nsw i64 %79, %R
  %81 = add nsw i64 %80, %k.212.us
  %82 = getelementptr inbounds i64, i64* %16, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %77
  %85 = getelementptr inbounds i64, i64* %17, i64 %81
  store i64 %84, i64* %85, align 8
  %86 = add nsw i64 %j.08.us, 4
  %exitcond26.3 = icmp eq i64 %86, %2
  br i1 %exitcond26.3, label %._crit_edge11.us.unr-lcssa, label %58

._crit_edge11.us.unr-lcssa:                       ; preds = %58
  br label %._crit_edge11.us

._crit_edge11.us:                                 ; preds = %.lr.ph15.split.us.split, %._crit_edge11.us.unr-lcssa
  %87 = add nsw i64 %k.212.us, 1
  %88 = load i64, i64* %k_stop, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %.lr.ph15.split.us, label %._crit_edge16.loopexit

.lr.ph15.split:                                   ; preds = %.lr.ph15.split.preheader, %.lr.ph15.split
  %k.212 = phi i64 [ %93, %.lr.ph15.split ], [ %40, %.lr.ph15.split.preheader ]
  %90 = getelementptr inbounds i64, i64* %16, i64 %k.212
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i64, i64* %17, i64 %k.212
  store i64 %91, i64* %92, align 8
  %93 = add nsw i64 %k.212, 1
  %94 = load i64, i64* %k_stop, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %.lr.ph15.split, label %._crit_edge16.loopexit31

._crit_edge16.loopexit:                           ; preds = %._crit_edge11.us
  br label %._crit_edge16

._crit_edge16.loopexit31:                         ; preds = %.lr.ph15.split
  br label %._crit_edge16

._crit_edge16:                                    ; preds = %._crit_edge16.loopexit31, %._crit_edge16.loopexit, %._crit_edge20
  %96 = add nsw i64 %2, -1
  %97 = mul nsw i64 %96, %R
  %98 = getelementptr inbounds i64, i64* %17, i64 %97
  call void (...) @thread_barrier_wait() #5
  %99 = getelementptr inbounds i64, i64* %17, i64 %18
  br i1 %20, label %.lr.ph5.preheader, label %._crit_edge6

.lr.ph5.preheader:                                ; preds = %._crit_edge16
  %xtraiter = and i64 %R, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph5.preheader.split, label %.lr.ph5.prol

.lr.ph5.prol:                                     ; preds = %.lr.ph5.preheader
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %19, align 8
  %102 = sub i64 %100, %101
  store i64 %102, i64* %19, align 8
  %103 = load i64, i64* %98, align 8
  br label %.lr.ph5.preheader.split

.lr.ph5.preheader.split:                          ; preds = %.lr.ph5.preheader, %.lr.ph5.prol
  %offset.03.unr = phi i64 [ 0, %.lr.ph5.preheader ], [ %103, %.lr.ph5.prol ]
  %k.32.unr = phi i64 [ 0, %.lr.ph5.preheader ], [ 1, %.lr.ph5.prol ]
  %104 = icmp eq i64 %R, 1
  br i1 %104, label %._crit_edge6.loopexit, label %.lr.ph5.preheader.split.split

.lr.ph5.preheader.split.split:                    ; preds = %.lr.ph5.preheader.split
  br label %.lr.ph5

.lr.ph5:                                          ; preds = %.lr.ph5, %.lr.ph5.preheader.split.split
  %offset.03 = phi i64 [ %offset.03.unr, %.lr.ph5.preheader.split.split ], [ %123, %.lr.ph5 ]
  %k.32 = phi i64 [ %k.32.unr, %.lr.ph5.preheader.split.split ], [ %124, %.lr.ph5 ]
  %105 = getelementptr inbounds i64, i64* %99, i64 %k.32
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i64, i64* %19, i64 %k.32
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %106, %offset.03
  %110 = sub i64 %109, %108
  store i64 %110, i64* %107, align 8
  %111 = getelementptr inbounds i64, i64* %98, i64 %k.32
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, %offset.03
  %114 = add nuw nsw i64 %k.32, 1
  %115 = getelementptr inbounds i64, i64* %99, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i64, i64* %19, i64 %114
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %116, %113
  %120 = sub i64 %119, %118
  store i64 %120, i64* %117, align 8
  %121 = getelementptr inbounds i64, i64* %98, i64 %114
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, %113
  %124 = add nsw i64 %k.32, 2
  %exitcond.1 = icmp eq i64 %124, %R
  br i1 %exitcond.1, label %._crit_edge6.loopexit.unr-lcssa, label %.lr.ph5

._crit_edge6.loopexit.unr-lcssa:                  ; preds = %.lr.ph5
  br label %._crit_edge6.loopexit

._crit_edge6.loopexit:                            ; preds = %.lr.ph5.preheader.split, %._crit_edge6.loopexit.unr-lcssa
  br label %._crit_edge6

._crit_edge6:                                     ; preds = %._crit_edge6.loopexit, %._crit_edge16
  call void (...) @thread_barrier_wait() #5
  call void @createPartition(i64 0, i64 %q, i64 %1, i64 %2, i64* nonnull %k_start, i64* nonnull %k_stop) #5
  %125 = load i64, i64* %k_start, align 8
  %126 = load i64, i64* %k_stop, align 8
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge6
  %128 = trunc i64 %m to i32
  %129 = shl i32 -1, %128
  %130 = xor i32 %129, -1
  %131 = sext i32 %130 to i64
  br label %132

; <label>:132                                     ; preds = %.lr.ph, %132
  %k.41 = phi i64 [ %125, %.lr.ph ], [ %142, %132 ]
  %133 = getelementptr inbounds i64, i64* %lKey, i64 %k.41
  %134 = load i64, i64* %133, align 8
  %135 = lshr i64 %134, %bitOff
  %136 = and i64 %135, %131
  %137 = getelementptr inbounds i64, i64* %19, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds i64, i64* %lSorted, i64 %138
  store i64 %134, i64* %139, align 8
  %140 = load i64, i64* %137, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %137, align 8
  %142 = add nsw i64 %k.41, 1
  %143 = load i64, i64* %k_stop, align 8
  %144 = icmp slt i64 %142, %143
  br i1 %144, label %132, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %132
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %._crit_edge6
  call void (...) @thread_barrier_wait() #5
  br i1 %3, label %145, label %148

; <label>:145                                     ; preds = %._crit_edge
  %146 = bitcast i64* %17 to i8*
  call void @free(i8* %146) #5
  %147 = bitcast i64* %16 to i8*
  call void @free(i8* %147) #5
  br label %148

; <label>:148                                     ; preds = %145, %._crit_edge
  ret void
}

declare i64 @thread_getId(...) #1

declare i64 @thread_getNumThread(...) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare void @thread_barrier_wait(...) #1

declare void @createPartition(i64, i64, i64, i64, i64*, i64*) #1

; Function Attrs: nounwind
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @all_countsort_node_aux_seq(i64 %q, i64* nocapture readonly %lKey, i64* nocapture %lSorted, i64* nocapture readonly %auxKey, i64* nocapture %auxSorted, i64 %R, i64 %bitOff, i64 %m) #0 {
  %1 = shl i64 %R, 3
  %2 = tail call noalias i8* @malloc(i64 %1) #5
  %3 = bitcast i8* %2 to i64*
  %4 = icmp eq i8* %2, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 197, i8* nonnull getelementptr inbounds ([124 x i8], [124 x i8]* @__PRETTY_FUNCTION__.all_countsort_node_aux_seq, i64 0, i64 0)) #6
  unreachable

; <label>:6                                       ; preds = %0
  %7 = tail call noalias i8* @malloc(i64 %1) #5
  %8 = bitcast i8* %7 to i64*
  %9 = icmp eq i8* %7, null
  br i1 %9, label %11, label %.preheader4

.preheader4:                                      ; preds = %6
  %10 = icmp sgt i64 %R, 0
  br i1 %10, label %.lr.ph14.preheader, label %.preheader3

.lr.ph14.preheader:                               ; preds = %.preheader4
  call void @llvm.memset.p0i8.i64(i8* nonnull %2, i8 0, i64 %1, i32 8, i1 false)
  br label %.preheader3

; <label>:11                                      ; preds = %6
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 199, i8* nonnull getelementptr inbounds ([124 x i8], [124 x i8]* @__PRETTY_FUNCTION__.all_countsort_node_aux_seq, i64 0, i64 0)) #6
  unreachable

.preheader3:                                      ; preds = %.lr.ph14.preheader, %.preheader4
  %12 = icmp sgt i64 %q, 0
  br i1 %12, label %.lr.ph12, label %.preheader2

.lr.ph12:                                         ; preds = %.preheader3
  %13 = trunc i64 %m to i32
  %14 = shl i32 -1, %13
  %15 = xor i32 %14, -1
  %16 = sext i32 %15 to i64
  %xtraiter21 = and i64 %q, 1
  %lcmp.mod22 = icmp eq i64 %xtraiter21, 0
  br i1 %lcmp.mod22, label %.lr.ph12.split, label %17

; <label>:17                                      ; preds = %.lr.ph12
  %18 = load i64, i64* %lKey, align 8
  %19 = lshr i64 %18, %bitOff
  %20 = and i64 %19, %16
  %21 = getelementptr inbounds i64, i64* %3, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  br label %.lr.ph12.split

.lr.ph12.split:                                   ; preds = %.lr.ph12, %17
  %k.111.unr = phi i64 [ 0, %.lr.ph12 ], [ 1, %17 ]
  %24 = icmp eq i64 %q, 1
  br i1 %24, label %.preheader2.loopexit, label %.lr.ph12.split.split

.lr.ph12.split.split:                             ; preds = %.lr.ph12.split
  br label %25

.preheader2.loopexit.unr-lcssa:                   ; preds = %25
  br label %.preheader2.loopexit

.preheader2.loopexit:                             ; preds = %.lr.ph12.split, %.preheader2.loopexit.unr-lcssa
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.loopexit, %.preheader3
  br i1 %10, label %.lr.ph8.preheader, label %.preheader

; <label>:25                                      ; preds = %25, %.lr.ph12.split.split
  %k.111 = phi i64 [ %k.111.unr, %.lr.ph12.split.split ], [ %41, %25 ]
  %26 = getelementptr inbounds i64, i64* %lKey, i64 %k.111
  %27 = load i64, i64* %26, align 8
  %28 = lshr i64 %27, %bitOff
  %29 = and i64 %28, %16
  %30 = getelementptr inbounds i64, i64* %3, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = add nuw nsw i64 %k.111, 1
  %34 = getelementptr inbounds i64, i64* %lKey, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = lshr i64 %35, %bitOff
  %37 = and i64 %36, %16
  %38 = getelementptr inbounds i64, i64* %3, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = add nsw i64 %k.111, 2
  %exitcond17.1 = icmp eq i64 %41, %q
  br i1 %exitcond17.1, label %.preheader2.loopexit.unr-lcssa, label %25

.lr.ph8.preheader:                                ; preds = %.preheader2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* nonnull %2, i64 %1, i32 8, i1 false)
  %42 = add i64 %R, -1
  %xtraiter19 = and i64 %R, 3
  %lcmp.mod20 = icmp eq i64 %xtraiter19, 0
  br i1 %lcmp.mod20, label %.lr.ph8.preheader.split, label %.lr.ph8.prol.preheader

.lr.ph8.prol.preheader:                           ; preds = %.lr.ph8.preheader
  br label %.lr.ph8.prol

.lr.ph8.prol:                                     ; preds = %.lr.ph8.prol.preheader, %.lr.ph8.prol
  %k.37.prol = phi i64 [ %49, %.lr.ph8.prol ], [ 0, %.lr.ph8.prol.preheader ]
  %offset.06.prol = phi i64 [ %47, %.lr.ph8.prol ], [ 0, %.lr.ph8.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %.lr.ph8.prol ], [ %xtraiter19, %.lr.ph8.prol.preheader ]
  %43 = getelementptr inbounds i64, i64* %8, i64 %k.37.prol
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i64, i64* %3, i64 %k.37.prol
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %44, %offset.06.prol
  %48 = sub i64 %47, %46
  store i64 %48, i64* %45, align 8
  %49 = add nuw nsw i64 %k.37.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph8.preheader.split.loopexit, label %.lr.ph8.prol, !llvm.loop !3

.lr.ph8.preheader.split.loopexit:                 ; preds = %.lr.ph8.prol
  %.lcssa23 = phi i64 [ %49, %.lr.ph8.prol ]
  %.lcssa = phi i64 [ %47, %.lr.ph8.prol ]
  br label %.lr.ph8.preheader.split

.lr.ph8.preheader.split:                          ; preds = %.lr.ph8.preheader.split.loopexit, %.lr.ph8.preheader
  %k.37.unr = phi i64 [ 0, %.lr.ph8.preheader ], [ %.lcssa23, %.lr.ph8.preheader.split.loopexit ]
  %offset.06.unr = phi i64 [ 0, %.lr.ph8.preheader ], [ %.lcssa, %.lr.ph8.preheader.split.loopexit ]
  %50 = icmp ult i64 %42, 3
  br i1 %50, label %.preheader.loopexit, label %.lr.ph8.preheader.split.split

.lr.ph8.preheader.split.split:                    ; preds = %.lr.ph8.preheader.split
  br label %.lr.ph8

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph8
  br label %.preheader.loopexit

.preheader.loopexit:                              ; preds = %.lr.ph8.preheader.split, %.preheader.loopexit.unr-lcssa
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader2
  br i1 %12, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %51 = trunc i64 %m to i32
  %52 = shl i32 -1, %51
  %53 = xor i32 %52, -1
  %54 = sext i32 %53 to i64
  %xtraiter = and i64 %q, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph.split, label %55

; <label>:55                                      ; preds = %.lr.ph
  %56 = load i64, i64* %lKey, align 8
  %57 = lshr i64 %56, %bitOff
  %58 = and i64 %57, %54
  %59 = getelementptr inbounds i64, i64* %3, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i64, i64* %lSorted, i64 %60
  store i64 %56, i64* %61, align 8
  %62 = load i64, i64* %auxKey, align 8
  %63 = getelementptr inbounds i64, i64* %auxSorted, i64 %60
  store i64 %62, i64* %63, align 8
  %64 = add nsw i64 %60, 1
  store i64 %64, i64* %59, align 8
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %55
  %k.45.unr = phi i64 [ 0, %.lr.ph ], [ 1, %55 ]
  %65 = icmp eq i64 %q, 1
  br i1 %65, label %._crit_edge.loopexit, label %.lr.ph.split.split

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br label %94

.lr.ph8:                                          ; preds = %.lr.ph8, %.lr.ph8.preheader.split.split
  %k.37 = phi i64 [ %k.37.unr, %.lr.ph8.preheader.split.split ], [ %93, %.lr.ph8 ]
  %offset.06 = phi i64 [ %offset.06.unr, %.lr.ph8.preheader.split.split ], [ %91, %.lr.ph8 ]
  %66 = getelementptr inbounds i64, i64* %8, i64 %k.37
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i64, i64* %3, i64 %k.37
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %67, %offset.06
  %71 = sub i64 %70, %69
  store i64 %71, i64* %68, align 8
  %72 = add nuw nsw i64 %k.37, 1
  %73 = getelementptr inbounds i64, i64* %8, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i64, i64* %3, i64 %72
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %74, %70
  %78 = sub i64 %77, %76
  store i64 %78, i64* %75, align 8
  %79 = add nsw i64 %k.37, 2
  %80 = getelementptr inbounds i64, i64* %8, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i64, i64* %3, i64 %79
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %81, %77
  %85 = sub i64 %84, %83
  store i64 %85, i64* %82, align 8
  %86 = add nsw i64 %k.37, 3
  %87 = getelementptr inbounds i64, i64* %8, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i64, i64* %3, i64 %86
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %88, %84
  %92 = sub i64 %91, %90
  store i64 %92, i64* %89, align 8
  %93 = add nsw i64 %k.37, 4
  %exitcond15.3 = icmp eq i64 %93, %R
  br i1 %exitcond15.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph8

; <label>:94                                      ; preds = %94, %.lr.ph.split.split
  %k.45 = phi i64 [ %k.45.unr, %.lr.ph.split.split ], [ %118, %94 ]
  %95 = getelementptr inbounds i64, i64* %lKey, i64 %k.45
  %96 = load i64, i64* %95, align 8
  %97 = lshr i64 %96, %bitOff
  %98 = and i64 %97, %54
  %99 = getelementptr inbounds i64, i64* %3, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i64, i64* %lSorted, i64 %100
  store i64 %96, i64* %101, align 8
  %102 = getelementptr inbounds i64, i64* %auxKey, i64 %k.45
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i64, i64* %auxSorted, i64 %100
  store i64 %103, i64* %104, align 8
  %105 = add nsw i64 %100, 1
  store i64 %105, i64* %99, align 8
  %106 = add nuw nsw i64 %k.45, 1
  %107 = getelementptr inbounds i64, i64* %lKey, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = lshr i64 %108, %bitOff
  %110 = and i64 %109, %54
  %111 = getelementptr inbounds i64, i64* %3, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds i64, i64* %lSorted, i64 %112
  store i64 %108, i64* %113, align 8
  %114 = getelementptr inbounds i64, i64* %auxKey, i64 %106
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds i64, i64* %auxSorted, i64 %112
  store i64 %115, i64* %116, align 8
  %117 = add nsw i64 %112, 1
  store i64 %117, i64* %111, align 8
  %118 = add nsw i64 %k.45, 2
  %exitcond.1 = icmp eq i64 %118, %q
  br i1 %exitcond.1, label %._crit_edge.loopexit.unr-lcssa, label %94

._crit_edge.loopexit.unr-lcssa:                   ; preds = %94
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph.split, %._crit_edge.loopexit.unr-lcssa
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  tail call void @free(i8* %7) #5
  tail call void @free(i8* nonnull %2) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @all_countsort_node_aux(i64 %q, i64* nocapture readonly %lKey, i64* nocapture %lSorted, i64* nocapture readonly %auxKey, i64* nocapture %auxSorted, i64 %R, i64 %bitOff, i64 %m) #0 {
  %k_start = alloca i64, align 8
  %k_stop = alloca i64, align 8
  %1 = tail call i64 (...) @thread_getId() #5
  %2 = tail call i64 (...) @thread_getNumThread() #5
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %4, label %15

; <label>:4                                       ; preds = %0
  %5 = shl i64 %R, 3
  %6 = mul i64 %5, %2
  %7 = tail call noalias i8* @malloc(i64 %6) #5
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 265, i8* nonnull getelementptr inbounds ([120 x i8], [120 x i8]* @__PRETTY_FUNCTION__.all_countsort_node_aux, i64 0, i64 0)) #6
  unreachable

; <label>:10                                      ; preds = %4
  store i8* %7, i8** bitcast (i64** @global_myHisto to i8**), align 8
  %11 = tail call noalias i8* @malloc(i64 %6) #5
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %10
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 268, i8* nonnull getelementptr inbounds ([120 x i8], [120 x i8]* @__PRETTY_FUNCTION__.all_countsort_node_aux, i64 0, i64 0)) #6
  unreachable

; <label>:14                                      ; preds = %10
  store i8* %11, i8** bitcast (i64** @global_psHisto to i8**), align 8
  br label %15

; <label>:15                                      ; preds = %14, %0
  tail call void (...) @thread_barrier_wait() #5
  %16 = load i64*, i64** @global_myHisto, align 8
  %17 = load i64*, i64** @global_psHisto, align 8
  %18 = mul i64 %1, %R
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = icmp sgt i64 %R, 0
  br i1 %20, label %.lr.ph23.preheader, label %._crit_edge24

.lr.ph23.preheader:                               ; preds = %15
  %scevgep28 = bitcast i64* %19 to i8*
  %21 = shl i64 %R, 3
  call void @llvm.memset.p0i8.i64(i8* %scevgep28, i8 0, i64 %21, i32 8, i1 false)
  br label %._crit_edge24

._crit_edge24:                                    ; preds = %.lr.ph23.preheader, %15
  call void @createPartition(i64 0, i64 %q, i64 %1, i64 %2, i64* nonnull %k_start, i64* nonnull %k_stop) #5
  %22 = load i64, i64* %k_start, align 8
  %23 = load i64, i64* %k_stop, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %.lr.ph19, label %._crit_edge20

.lr.ph19:                                         ; preds = %._crit_edge24
  %25 = trunc i64 %m to i32
  %26 = shl i32 -1, %25
  %27 = xor i32 %26, -1
  %28 = sext i32 %27 to i64
  br label %29

; <label>:29                                      ; preds = %.lr.ph19, %29
  %k.117 = phi i64 [ %22, %.lr.ph19 ], [ %37, %29 ]
  %30 = getelementptr inbounds i64, i64* %lKey, i64 %k.117
  %31 = load i64, i64* %30, align 8
  %32 = lshr i64 %31, %bitOff
  %33 = and i64 %32, %28
  %34 = getelementptr inbounds i64, i64* %19, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = add nsw i64 %k.117, 1
  %38 = load i64, i64* %k_stop, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %29, label %._crit_edge20.loopexit

._crit_edge20.loopexit:                           ; preds = %29
  br label %._crit_edge20

._crit_edge20:                                    ; preds = %._crit_edge20.loopexit, %._crit_edge24
  call void (...) @thread_barrier_wait() #5
  call void @createPartition(i64 0, i64 %R, i64 %1, i64 %2, i64* nonnull %k_start, i64* nonnull %k_stop) #5
  %40 = load i64, i64* %k_start, align 8
  %41 = load i64, i64* %k_stop, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %.lr.ph15, label %._crit_edge16

.lr.ph15:                                         ; preds = %._crit_edge20
  %43 = icmp sgt i64 %2, 1
  br i1 %43, label %.lr.ph15.split.us.preheader, label %.lr.ph15.split.preheader

.lr.ph15.split.preheader:                         ; preds = %.lr.ph15
  br label %.lr.ph15.split

.lr.ph15.split.us.preheader:                      ; preds = %.lr.ph15
  %44 = add i64 %2, 3
  %45 = add i64 %2, -2
  %xtraiter32 = and i64 %44, 3
  %lcmp.mod33 = icmp eq i64 %xtraiter32, 0
  %46 = icmp ult i64 %45, 3
  br label %.lr.ph15.split.us

.lr.ph15.split.us:                                ; preds = %.lr.ph15.split.us.preheader, %._crit_edge11.us
  %k.212.us = phi i64 [ %87, %._crit_edge11.us ], [ %40, %.lr.ph15.split.us.preheader ]
  %47 = getelementptr inbounds i64, i64* %16, i64 %k.212.us
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i64, i64* %17, i64 %k.212.us
  store i64 %48, i64* %49, align 8
  br i1 %lcmp.mod33, label %.lr.ph15.split.us.split, label %.preheader

.preheader:                                       ; preds = %.lr.ph15.split.us
  br label %50

; <label>:50                                      ; preds = %50, %.preheader
  %j.08.us.prol = phi i64 [ %57, %50 ], [ 1, %.preheader ]
  %last.07.us.prol = phi i64 [ %55, %50 ], [ %48, %.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %50 ], [ %xtraiter32, %.preheader ]
  %51 = mul nsw i64 %j.08.us.prol, %R
  %52 = add nsw i64 %51, %k.212.us
  %53 = getelementptr inbounds i64, i64* %16, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, %last.07.us.prol
  %56 = getelementptr inbounds i64, i64* %17, i64 %52
  store i64 %55, i64* %56, align 8
  %57 = add nuw nsw i64 %j.08.us.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph15.split.us.split.loopexit, label %50, !llvm.loop !4

.lr.ph15.split.us.split.loopexit:                 ; preds = %50
  %.lcssa34 = phi i64 [ %57, %50 ]
  %.lcssa = phi i64 [ %55, %50 ]
  br label %.lr.ph15.split.us.split

.lr.ph15.split.us.split:                          ; preds = %.lr.ph15.split.us, %.lr.ph15.split.us.split.loopexit
  %j.08.us.unr = phi i64 [ 1, %.lr.ph15.split.us ], [ %.lcssa34, %.lr.ph15.split.us.split.loopexit ]
  %last.07.us.unr = phi i64 [ %48, %.lr.ph15.split.us ], [ %.lcssa, %.lr.ph15.split.us.split.loopexit ]
  br i1 %46, label %._crit_edge11.us, label %.lr.ph15.split.us.split.split

.lr.ph15.split.us.split.split:                    ; preds = %.lr.ph15.split.us.split
  br label %58

; <label>:58                                      ; preds = %58, %.lr.ph15.split.us.split.split
  %j.08.us = phi i64 [ %j.08.us.unr, %.lr.ph15.split.us.split.split ], [ %86, %58 ]
  %last.07.us = phi i64 [ %last.07.us.unr, %.lr.ph15.split.us.split.split ], [ %84, %58 ]
  %59 = mul nsw i64 %j.08.us, %R
  %60 = add nsw i64 %59, %k.212.us
  %61 = getelementptr inbounds i64, i64* %16, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, %last.07.us
  %64 = getelementptr inbounds i64, i64* %17, i64 %60
  store i64 %63, i64* %64, align 8
  %65 = add nuw nsw i64 %j.08.us, 1
  %66 = mul nsw i64 %65, %R
  %67 = add nsw i64 %66, %k.212.us
  %68 = getelementptr inbounds i64, i64* %16, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, %63
  %71 = getelementptr inbounds i64, i64* %17, i64 %67
  store i64 %70, i64* %71, align 8
  %72 = add nsw i64 %j.08.us, 2
  %73 = mul nsw i64 %72, %R
  %74 = add nsw i64 %73, %k.212.us
  %75 = getelementptr inbounds i64, i64* %16, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, %70
  %78 = getelementptr inbounds i64, i64* %17, i64 %74
  store i64 %77, i64* %78, align 8
  %79 = add nsw i64 %j.08.us, 3
  %80 = mul nsw i64 %79, %R
  %81 = add nsw i64 %80, %k.212.us
  %82 = getelementptr inbounds i64, i64* %16, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %77
  %85 = getelementptr inbounds i64, i64* %17, i64 %81
  store i64 %84, i64* %85, align 8
  %86 = add nsw i64 %j.08.us, 4
  %exitcond26.3 = icmp eq i64 %86, %2
  br i1 %exitcond26.3, label %._crit_edge11.us.unr-lcssa, label %58

._crit_edge11.us.unr-lcssa:                       ; preds = %58
  br label %._crit_edge11.us

._crit_edge11.us:                                 ; preds = %.lr.ph15.split.us.split, %._crit_edge11.us.unr-lcssa
  %87 = add nsw i64 %k.212.us, 1
  %88 = load i64, i64* %k_stop, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %.lr.ph15.split.us, label %._crit_edge16.loopexit

.lr.ph15.split:                                   ; preds = %.lr.ph15.split.preheader, %.lr.ph15.split
  %k.212 = phi i64 [ %93, %.lr.ph15.split ], [ %40, %.lr.ph15.split.preheader ]
  %90 = getelementptr inbounds i64, i64* %16, i64 %k.212
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i64, i64* %17, i64 %k.212
  store i64 %91, i64* %92, align 8
  %93 = add nsw i64 %k.212, 1
  %94 = load i64, i64* %k_stop, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %.lr.ph15.split, label %._crit_edge16.loopexit31

._crit_edge16.loopexit:                           ; preds = %._crit_edge11.us
  br label %._crit_edge16

._crit_edge16.loopexit31:                         ; preds = %.lr.ph15.split
  br label %._crit_edge16

._crit_edge16:                                    ; preds = %._crit_edge16.loopexit31, %._crit_edge16.loopexit, %._crit_edge20
  %96 = add nsw i64 %2, -1
  %97 = mul nsw i64 %96, %R
  %98 = getelementptr inbounds i64, i64* %17, i64 %97
  call void (...) @thread_barrier_wait() #5
  %99 = getelementptr inbounds i64, i64* %17, i64 %18
  br i1 %20, label %.lr.ph5.preheader, label %._crit_edge6

.lr.ph5.preheader:                                ; preds = %._crit_edge16
  %xtraiter = and i64 %R, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph5.preheader.split, label %.lr.ph5.prol

.lr.ph5.prol:                                     ; preds = %.lr.ph5.preheader
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %19, align 8
  %102 = sub i64 %100, %101
  store i64 %102, i64* %19, align 8
  %103 = load i64, i64* %98, align 8
  br label %.lr.ph5.preheader.split

.lr.ph5.preheader.split:                          ; preds = %.lr.ph5.preheader, %.lr.ph5.prol
  %offset.03.unr = phi i64 [ 0, %.lr.ph5.preheader ], [ %103, %.lr.ph5.prol ]
  %k.32.unr = phi i64 [ 0, %.lr.ph5.preheader ], [ 1, %.lr.ph5.prol ]
  %104 = icmp eq i64 %R, 1
  br i1 %104, label %._crit_edge6.loopexit, label %.lr.ph5.preheader.split.split

.lr.ph5.preheader.split.split:                    ; preds = %.lr.ph5.preheader.split
  br label %.lr.ph5

.lr.ph5:                                          ; preds = %.lr.ph5, %.lr.ph5.preheader.split.split
  %offset.03 = phi i64 [ %offset.03.unr, %.lr.ph5.preheader.split.split ], [ %123, %.lr.ph5 ]
  %k.32 = phi i64 [ %k.32.unr, %.lr.ph5.preheader.split.split ], [ %124, %.lr.ph5 ]
  %105 = getelementptr inbounds i64, i64* %99, i64 %k.32
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i64, i64* %19, i64 %k.32
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %106, %offset.03
  %110 = sub i64 %109, %108
  store i64 %110, i64* %107, align 8
  %111 = getelementptr inbounds i64, i64* %98, i64 %k.32
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, %offset.03
  %114 = add nuw nsw i64 %k.32, 1
  %115 = getelementptr inbounds i64, i64* %99, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i64, i64* %19, i64 %114
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %116, %113
  %120 = sub i64 %119, %118
  store i64 %120, i64* %117, align 8
  %121 = getelementptr inbounds i64, i64* %98, i64 %114
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, %113
  %124 = add nsw i64 %k.32, 2
  %exitcond.1 = icmp eq i64 %124, %R
  br i1 %exitcond.1, label %._crit_edge6.loopexit.unr-lcssa, label %.lr.ph5

._crit_edge6.loopexit.unr-lcssa:                  ; preds = %.lr.ph5
  br label %._crit_edge6.loopexit

._crit_edge6.loopexit:                            ; preds = %.lr.ph5.preheader.split, %._crit_edge6.loopexit.unr-lcssa
  br label %._crit_edge6

._crit_edge6:                                     ; preds = %._crit_edge6.loopexit, %._crit_edge16
  call void (...) @thread_barrier_wait() #5
  call void @createPartition(i64 0, i64 %q, i64 %1, i64 %2, i64* nonnull %k_start, i64* nonnull %k_stop) #5
  %125 = load i64, i64* %k_start, align 8
  %126 = load i64, i64* %k_stop, align 8
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge6
  %128 = trunc i64 %m to i32
  %129 = shl i32 -1, %128
  %130 = xor i32 %129, -1
  %131 = sext i32 %130 to i64
  br label %132

; <label>:132                                     ; preds = %.lr.ph, %132
  %k.41 = phi i64 [ %125, %.lr.ph ], [ %146, %132 ]
  %133 = getelementptr inbounds i64, i64* %lKey, i64 %k.41
  %134 = load i64, i64* %133, align 8
  %135 = lshr i64 %134, %bitOff
  %136 = and i64 %135, %131
  %137 = getelementptr inbounds i64, i64* %19, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds i64, i64* %lSorted, i64 %138
  store i64 %134, i64* %139, align 8
  %140 = getelementptr inbounds i64, i64* %auxKey, i64 %k.41
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %137, align 8
  %143 = getelementptr inbounds i64, i64* %auxSorted, i64 %142
  store i64 %141, i64* %143, align 8
  %144 = load i64, i64* %137, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %137, align 8
  %146 = add nsw i64 %k.41, 1
  %147 = load i64, i64* %k_stop, align 8
  %148 = icmp slt i64 %146, %147
  br i1 %148, label %132, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %132
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %._crit_edge6
  call void (...) @thread_barrier_wait() #5
  br i1 %3, label %149, label %152

; <label>:149                                     ; preds = %._crit_edge
  %150 = bitcast i64* %17 to i8*
  call void @free(i8* %150) #5
  %151 = bitcast i64* %16 to i8*
  call void @free(i8* %151) #5
  br label %152

; <label>:152                                     ; preds = %149, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @all_radixsort_node_s3(i64 %q, i64* nocapture readonly %lKeys, i64* nocapture %lSorted) #0 {
  %1 = tail call i64 (...) @thread_getId() #5
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %9

; <label>:3                                       ; preds = %0
  %4 = shl i64 %q, 3
  %5 = tail call noalias i8* @malloc(i64 %4) #5
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %3
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 355, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.all_radixsort_node_s3, i64 0, i64 0)) #6
  unreachable

; <label>:8                                       ; preds = %3
  store i8* %5, i8** bitcast (i64** @global_lTemp to i8**), align 8
  br label %9

; <label>:9                                       ; preds = %8, %0
  tail call void (...) @thread_barrier_wait() #5
  %10 = load i64*, i64** @global_lTemp, align 8
  tail call void @all_countsort_node(i64 %q, i64* %lKeys, i64* %lSorted, i64 2048, i64 0, i64 11)
  tail call void @all_countsort_node(i64 %q, i64* %lSorted, i64* %10, i64 2048, i64 11, i64 11)
  tail call void @all_countsort_node(i64 %q, i64* %10, i64* %lSorted, i64 1024, i64 22, i64 10)
  tail call void (...) @thread_barrier_wait() #5
  br i1 %2, label %11, label %13

; <label>:11                                      ; preds = %9
  %12 = bitcast i64* %10 to i8*
  tail call void @free(i8* %12) #5
  br label %13

; <label>:13                                      ; preds = %11, %9
  ret void
}

; Function Attrs: nounwind uwtable
define void @all_radixsort_node_s2(i64 %q, i64* nocapture readonly %lKeys, i64* nocapture %lSorted) #0 {
  %1 = tail call i64 (...) @thread_getId() #5
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %9

; <label>:3                                       ; preds = %0
  %4 = shl i64 %q, 3
  %5 = tail call noalias i8* @malloc(i64 %4) #5
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %3
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 392, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.all_radixsort_node_s2, i64 0, i64 0)) #6
  unreachable

; <label>:8                                       ; preds = %3
  store i8* %5, i8** bitcast (i64** @global_lTemp to i8**), align 8
  br label %9

; <label>:9                                       ; preds = %8, %0
  tail call void (...) @thread_barrier_wait() #5
  %10 = load i64*, i64** @global_lTemp, align 8
  tail call void @all_countsort_node(i64 %q, i64* %lKeys, i64* %10, i64 65536, i64 0, i64 16)
  tail call void @all_countsort_node(i64 %q, i64* %10, i64* %lSorted, i64 65536, i64 16, i64 16)
  tail call void (...) @thread_barrier_wait() #5
  br i1 %2, label %11, label %13

; <label>:11                                      ; preds = %9
  %12 = bitcast i64* %10 to i8*
  tail call void @free(i8* %12) #5
  br label %13

; <label>:13                                      ; preds = %11, %9
  ret void
}

; Function Attrs: nounwind uwtable
define void @all_radixsort_node_aux_s3_seq(i64 %q, i64* nocapture readonly %lKeys, i64* nocapture %lSorted, i64* nocapture readonly %auxKey, i64* nocapture %auxSorted) #0 {
  %1 = shl i64 %q, 3
  %2 = tail call noalias i8* @malloc(i64 %1) #5
  %3 = bitcast i8* %2 to i64*
  %4 = icmp eq i8* %2, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 428, i8* nonnull getelementptr inbounds ([109 x i8], [109 x i8]* @__PRETTY_FUNCTION__.all_radixsort_node_aux_s3_seq, i64 0, i64 0)) #6
  unreachable

; <label>:6                                       ; preds = %0
  %7 = tail call noalias i8* @malloc(i64 %1) #5
  %8 = bitcast i8* %7 to i64*
  %9 = icmp eq i8* %7, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %6
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 430, i8* nonnull getelementptr inbounds ([109 x i8], [109 x i8]* @__PRETTY_FUNCTION__.all_radixsort_node_aux_s3_seq, i64 0, i64 0)) #6
  unreachable

; <label>:11                                      ; preds = %6
  tail call void @all_countsort_node_aux_seq(i64 %q, i64* %lKeys, i64* %lSorted, i64* %auxKey, i64* %auxSorted, i64 2048, i64 0, i64 11)
  tail call void @all_countsort_node_aux_seq(i64 %q, i64* %lSorted, i64* %3, i64* %auxSorted, i64* %8, i64 2048, i64 11, i64 11)
  tail call void @all_countsort_node_aux_seq(i64 %q, i64* %3, i64* %lSorted, i64* %8, i64* %auxSorted, i64 1024, i64 22, i64 10)
  tail call void @free(i8* nonnull %2) #5
  tail call void @free(i8* nonnull %7) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @all_radixsort_node_aux_s3(i64 %q, i64* nocapture readonly %lKeys, i64* nocapture %lSorted, i64* nocapture readonly %auxKey, i64* nocapture %auxSorted) #0 {
  %1 = tail call i64 (...) @thread_getId() #5
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %13

; <label>:3                                       ; preds = %0
  %4 = shl i64 %q, 3
  %5 = tail call noalias i8* @malloc(i64 %4) #5
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %3
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 461, i8* nonnull getelementptr inbounds ([105 x i8], [105 x i8]* @__PRETTY_FUNCTION__.all_radixsort_node_aux_s3, i64 0, i64 0)) #6
  unreachable

; <label>:8                                       ; preds = %3
  store i8* %5, i8** bitcast (i64** @global_lTemp to i8**), align 8
  %9 = tail call noalias i8* @malloc(i64 %4) #5
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %8
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 464, i8* nonnull getelementptr inbounds ([105 x i8], [105 x i8]* @__PRETTY_FUNCTION__.all_radixsort_node_aux_s3, i64 0, i64 0)) #6
  unreachable

; <label>:12                                      ; preds = %8
  store i8* %9, i8** bitcast (i64** @global_lTemp2 to i8**), align 8
  br label %13

; <label>:13                                      ; preds = %12, %0
  tail call void (...) @thread_barrier_wait() #5
  %14 = load i64*, i64** @global_lTemp, align 8
  %15 = load i64*, i64** @global_lTemp2, align 8
  tail call void @all_countsort_node_aux(i64 %q, i64* %lKeys, i64* %lSorted, i64* %auxKey, i64* %auxSorted, i64 2048, i64 0, i64 11)
  tail call void @all_countsort_node_aux(i64 %q, i64* %lSorted, i64* %14, i64* %auxSorted, i64* %15, i64 2048, i64 11, i64 11)
  tail call void @all_countsort_node_aux(i64 %q, i64* %14, i64* %lSorted, i64* %15, i64* %auxSorted, i64 1024, i64 22, i64 10)
  tail call void (...) @thread_barrier_wait() #5
  br i1 %2, label %16, label %19

; <label>:16                                      ; preds = %13
  %17 = bitcast i64* %14 to i8*
  tail call void @free(i8* %17) #5
  %18 = bitcast i64* %15 to i8*
  tail call void @free(i8* %18) #5
  br label %19

; <label>:19                                      ; preds = %16, %13
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = distinct !{!1, !2}
!2 = !{!"llvm.loop.unroll.disable"}
!3 = distinct !{!3, !2}
!4 = distinct !{!4, !2}
