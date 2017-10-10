; ModuleID = '../bin/genScalData.marked.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._tm_thread_context_t = type { i32, i32, %struct.simple_metadata*, i32, i32, [44 x i8] }
%struct.simple_metadata = type opaque
%struct.graphSDG = type { i64*, i64*, i64*, i8*, i64 }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }

@.str = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"genScalData.c\00", align 1
@__PRETTY_FUNCTION__.genScalData_seq = private unnamed_addr constant [33 x i8] c"void genScalData_seq(graphSDG *)\00", align 1
@TOT_VERTICES = external global i64, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"permV\00", align 1
@MAX_CLIQUE_SIZE = external global i64, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"cliqueSizes\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"lastVsInCliques\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"firstVsInCliques\00", align 1
@SCALE = external global i64, align 8
@MAX_PARAL_EDGES = external global i64, align 8
@PROB_UNIDIRECTIONAL = external global float, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"startV\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"endV\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"tmpEdgeCounter\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"tmpEdgeCounter[i]\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"startVertex\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"endVertex\00", align 1
@PROB_INTERCL_EDGES = external global float, align 4
@.str.13 = private unnamed_addr constant [33 x i8] c"No. of intra-clique edges - %lu\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"No. of inter-clique edges - %lu\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Total no. of edges        - %lu\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"SDGdataPtr->intWeight\00", align 1
@PERC_INT_WEIGHTS = external global float, align 4
@MAX_INT_WEIGHT = external global i64, align 8
@MAX_STRLEN = external global i64, align 8
@.str.17 = private unnamed_addr constant [22 x i8] c"SDGdataPtr->strWeight\00", align 1
@SOUGHT_STRING = external global i8*, align 8
@.str.18 = private unnamed_addr constant [14 x i8] c"SOUGHT_STRING\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"SDGdataPtr->startVertex\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"SDGdataPtr->endVertex\00", align 1
@thread_contexts = external global %struct._tm_thread_context_t*, align 8
@__PRETTY_FUNCTION__.genScalData = private unnamed_addr constant [25 x i8] c"void genScalData(void *)\00", align 1
@global_permV = internal unnamed_addr global i64* null, align 8
@global_cliqueSizes = internal unnamed_addr global i64* null, align 8
@global_lastVsInCliques = internal unnamed_addr global i64* null, align 8
@global_firstVsInCliques = internal unnamed_addr global i64* null, align 8
@global_totCliques = internal unnamed_addr global i64 0, align 8
@.str.21 = private unnamed_addr constant [19 x i8] c"i_edgeStartCounter\00", align 1
@global_i_edgeStartCounter = internal unnamed_addr global i64* null, align 8
@.str.22 = private unnamed_addr constant [17 x i8] c"i_edgeEndCounter\00", align 1
@global_i_edgeEndCounter = internal unnamed_addr global i64* null, align 8
@global_edgeNum = internal unnamed_addr global i64 0, align 8
@global_startVertex = internal unnamed_addr global i64* null, align 8
@global_endVertex = internal unnamed_addr global i64* null, align 8
@global_numStrWtEdges = internal unnamed_addr global i64 0, align 8
@.str.23 = private unnamed_addr constant [10 x i8] c"tempIndex\00", align 1
@global_tempIndex = internal unnamed_addr global i64* null, align 8
@str.1 = private unnamed_addr constant [26 x i8] c"Finished generating edges\00"

; Function Attrs: nounwind uwtable
define void @genScalData_seq(%struct.graphSDG* nocapture %SDGdataPtr) #0 {
  %1 = tail call %struct.random* (...) @random_alloc() #6
  %2 = icmp eq %struct.random* %1, null
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 107, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #8
  unreachable

; <label>:4                                       ; preds = %0
  tail call void @random_seed(%struct.random* nonnull %1, i64 0) #6
  %5 = load i64, i64* @TOT_VERTICES, align 8
  %6 = shl i64 %5, 3
  %7 = tail call noalias i8* @malloc(i64 %6) #6
  %8 = bitcast i8* %7 to i64*
  %9 = icmp eq i8* %7, null
  br i1 %9, label %27, label %.preheader51

.preheader51:                                     ; preds = %4
  %10 = icmp eq i64 %5, 0
  br i1 %10, label %._crit_edge209, label %.lr.ph212.preheader

.lr.ph212.preheader:                              ; preds = %.preheader51
  %min.iters.check = icmp ult i64 %5, 4
  br i1 %min.iters.check, label %.lr.ph212.preheader617, label %min.iters.checked

.lr.ph212.preheader617:                           ; preds = %middle.block, %min.iters.checked, %.lr.ph212.preheader
  %i.0211.ph = phi i64 [ 0, %min.iters.checked ], [ 0, %.lr.ph212.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph212

min.iters.checked:                                ; preds = %.lr.ph212.preheader
  %n.vec = and i64 %5, -4
  %cmp.zero = icmp eq i64 %n.vec, 0
  br i1 %cmp.zero, label %.lr.ph212.preheader617, label %vector.body.preheader

vector.body.preheader:                            ; preds = %min.iters.checked
  %11 = add i64 %5, -4
  %12 = lshr i64 %11, 2
  %13 = and i64 %12, 1
  %lcmp.mod718 = icmp eq i64 %13, 0
  br i1 %lcmp.mod718, label %vector.body.prol, label %vector.body.preheader.split

vector.body.prol:                                 ; preds = %vector.body.preheader
  %14 = bitcast i8* %7 to <2 x i64>*
  store <2 x i64> <i64 0, i64 1>, <2 x i64>* %14, align 8
  %15 = getelementptr i8, i8* %7, i64 16
  %16 = bitcast i8* %15 to <2 x i64>*
  store <2 x i64> <i64 2, i64 3>, <2 x i64>* %16, align 8
  br label %vector.body.preheader.split

vector.body.preheader.split:                      ; preds = %vector.body.prol, %vector.body.preheader
  %index.unr = phi i64 [ 0, %vector.body.preheader ], [ 4, %vector.body.prol ]
  %17 = icmp eq i64 %12, 0
  br i1 %17, label %middle.block, label %vector.body.preheader.split.split

vector.body.preheader.split.split:                ; preds = %vector.body.preheader.split
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader.split.split
  %index = phi i64 [ %index.unr, %vector.body.preheader.split.split ], [ %index.next.1, %vector.body ]
  %broadcast.splatinsert = insertelement <2 x i64> undef, i64 %index, i32 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> undef, <2 x i32> zeroinitializer
  %induction = add <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %induction501 = add <2 x i64> %broadcast.splat, <i64 2, i64 3>
  %18 = getelementptr inbounds i64, i64* %8, i64 %index
  %19 = bitcast i64* %18 to <2 x i64>*
  store <2 x i64> %induction, <2 x i64>* %19, align 8
  %20 = getelementptr i64, i64* %18, i64 2
  %21 = bitcast i64* %20 to <2 x i64>*
  store <2 x i64> %induction501, <2 x i64>* %21, align 8
  %index.next = add i64 %index, 4
  %broadcast.splatinsert.1 = insertelement <2 x i64> undef, i64 %index.next, i32 0
  %broadcast.splat.1 = shufflevector <2 x i64> %broadcast.splatinsert.1, <2 x i64> undef, <2 x i32> zeroinitializer
  %induction.1 = add <2 x i64> %broadcast.splat.1, <i64 0, i64 1>
  %induction501.1 = add <2 x i64> %broadcast.splat.1, <i64 2, i64 3>
  %22 = getelementptr inbounds i64, i64* %8, i64 %index.next
  %23 = bitcast i64* %22 to <2 x i64>*
  store <2 x i64> %induction.1, <2 x i64>* %23, align 8
  %24 = getelementptr i64, i64* %22, i64 2
  %25 = bitcast i64* %24 to <2 x i64>*
  store <2 x i64> %induction501.1, <2 x i64>* %25, align 8
  %index.next.1 = add i64 %index, 8
  %26 = icmp eq i64 %index.next.1, %n.vec
  br i1 %26, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !1

middle.block.unr-lcssa:                           ; preds = %vector.body
  br label %middle.block

middle.block:                                     ; preds = %vector.body.preheader.split, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %.preheader50, label %.lr.ph212.preheader617

; <label>:27                                      ; preds = %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 112, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #8
  unreachable

.preheader50.loopexit:                            ; preds = %.lr.ph212
  br label %.preheader50

.preheader50:                                     ; preds = %.preheader50.loopexit, %middle.block
  br i1 %10, label %._crit_edge209, label %.lr.ph208.preheader

.lr.ph208.preheader:                              ; preds = %.preheader50
  br label %.lr.ph208

.lr.ph212:                                        ; preds = %.lr.ph212.preheader617, %.lr.ph212
  %i.0211 = phi i64 [ %29, %.lr.ph212 ], [ %i.0211.ph, %.lr.ph212.preheader617 ]
  %28 = getelementptr inbounds i64, i64* %8, i64 %i.0211
  store i64 %i.0211, i64* %28, align 8
  %29 = add nuw nsw i64 %i.0211, 1
  %30 = icmp ult i64 %29, %5
  br i1 %30, label %.lr.ph212, label %.preheader50.loopexit, !llvm.loop !4

.lr.ph208:                                        ; preds = %.lr.ph208.preheader, %42
  %i.1207 = phi i64 [ %43, %42 ], [ 0, %.lr.ph208.preheader ]
  %31 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %32 = load i64, i64* @TOT_VERTICES, align 8
  %33 = sub i64 %32, %i.1207
  %34 = urem i64 %31, %33
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %42, label %36

; <label>:36                                      ; preds = %.lr.ph208
  %37 = add i64 %34, %i.1207
  %38 = getelementptr inbounds i64, i64* %8, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i64, i64* %8, i64 %i.1207
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %38, align 8
  store i64 %39, i64* %40, align 8
  br label %42

; <label>:42                                      ; preds = %.lr.ph208, %36
  %43 = add nuw nsw i64 %i.1207, 1
  %44 = icmp ult i64 %43, %32
  br i1 %44, label %.lr.ph208, label %._crit_edge209.loopexit

._crit_edge209.loopexit:                          ; preds = %42
  %.lcssa790 = phi i64 [ %32, %42 ]
  br label %._crit_edge209

._crit_edge209:                                   ; preds = %._crit_edge209.loopexit, %.preheader51, %.preheader50
  %.lcssa85 = phi i64 [ 0, %.preheader50 ], [ 0, %.preheader51 ], [ %.lcssa790, %._crit_edge209.loopexit ]
  %45 = uitofp i64 %.lcssa85 to double
  %46 = fmul double %45, 1.500000e+00
  %47 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %48 = add nsw i64 %47, 1
  %49 = sdiv i64 %48, 2
  %50 = sitofp i64 %49 to double
  %51 = fdiv double %46, %50
  %52 = tail call double @ceil(double %51) #9
  %53 = fptosi double %52 to i64
  %54 = shl i64 %53, 3
  %55 = tail call noalias i8* @malloc(i64 %54) #6
  %56 = bitcast i8* %55 to i64*
  %57 = icmp eq i8* %55, null
  br i1 %57, label %59, label %.preheader49

.preheader49:                                     ; preds = %._crit_edge209
  %58 = icmp sgt i64 %53, 0
  br i1 %58, label %.lr.ph205.preheader, label %._crit_edge206

.lr.ph205.preheader:                              ; preds = %.preheader49
  br label %.lr.ph205

; <label>:59                                      ; preds = %._crit_edge209
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 144, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #8
  unreachable

.lr.ph205:                                        ; preds = %.lr.ph205.preheader, %.lr.ph205
  %i.2204 = phi i64 [ %65, %.lr.ph205 ], [ 0, %.lr.ph205.preheader ]
  %60 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %61 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %62 = urem i64 %60, %61
  %63 = add i64 %62, 1
  %64 = getelementptr inbounds i64, i64* %56, i64 %i.2204
  store i64 %63, i64* %64, align 8
  %65 = add nuw nsw i64 %i.2204, 1
  %exitcond318 = icmp eq i64 %65, %53
  br i1 %exitcond318, label %._crit_edge206.loopexit, label %.lr.ph205

._crit_edge206.loopexit:                          ; preds = %.lr.ph205
  %.lcssa789 = phi i64 [ %61, %.lr.ph205 ]
  br label %._crit_edge206

._crit_edge206:                                   ; preds = %._crit_edge206.loopexit, %.preheader49
  %66 = phi i64 [ %47, %.preheader49 ], [ %.lcssa789, %._crit_edge206.loopexit ]
  %67 = tail call noalias i8* @malloc(i64 %54) #6
  %68 = bitcast i8* %67 to i64*
  %69 = icmp eq i8* %67, null
  br i1 %69, label %70, label %71

; <label>:70                                      ; preds = %._crit_edge206
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 162, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #8
  unreachable

; <label>:71                                      ; preds = %._crit_edge206
  %72 = tail call noalias i8* @malloc(i64 %54) #6
  %73 = bitcast i8* %72 to i64*
  %74 = icmp eq i8* %72, null
  br i1 %74, label %75, label %76

; <label>:75                                      ; preds = %71
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 164, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #8
  unreachable

; <label>:76                                      ; preds = %71
  %77 = load i64, i64* %56, align 8
  %78 = add nsw i64 %77, -1
  store i64 %78, i64* %68, align 8
  %79 = icmp sgt i64 %53, 1
  %80 = load i64, i64* @TOT_VERTICES, align 8
  br i1 %79, label %.lr.ph199, label %._crit_edge200

.lr.ph199:                                        ; preds = %76
  %81 = add i64 %80, -1
  br label %82

; <label>:82                                      ; preds = %.lr.ph199, %89
  %83 = phi i64 [ %78, %.lr.ph199 ], [ %86, %89 ]
  %i.3197 = phi i64 [ 1, %.lr.ph199 ], [ %90, %89 ]
  %84 = getelementptr inbounds i64, i64* %56, i64 %i.3197
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %83, %85
  %87 = getelementptr inbounds i64, i64* %68, i64 %i.3197
  store i64 %86, i64* %87, align 8
  %88 = icmp ult i64 %86, %81
  br i1 %88, label %89, label %._crit_edge200.loopexit

; <label>:89                                      ; preds = %82
  %90 = add nuw nsw i64 %i.3197, 1
  %91 = icmp slt i64 %90, %53
  br i1 %91, label %82, label %._crit_edge200.loopexit

._crit_edge200.loopexit:                          ; preds = %82, %89
  %i.3.lcssa.ph = phi i64 [ %i.3197, %82 ], [ %90, %89 ]
  br label %._crit_edge200

._crit_edge200:                                   ; preds = %._crit_edge200.loopexit, %76
  %i.3.lcssa = phi i64 [ 1, %76 ], [ %i.3.lcssa.ph, %._crit_edge200.loopexit ]
  %92 = add i64 %i.3.lcssa, 1
  %93 = add nsw i64 %i.3.lcssa, -1
  %94 = getelementptr inbounds i64, i64* %68, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %80, -1
  %97 = sub i64 %96, %95
  %98 = getelementptr inbounds i64, i64* %56, i64 %i.3.lcssa
  store i64 %97, i64* %98, align 8
  %99 = getelementptr inbounds i64, i64* %68, i64 %i.3.lcssa
  store i64 %96, i64* %99, align 8
  store i64 0, i64* %73, align 8
  %100 = icmp slt i64 %i.3.lcssa, 1
  br i1 %100, label %._crit_edge196, label %.lr.ph195.preheader

.lr.ph195.preheader:                              ; preds = %._crit_edge200
  %min.iters.check507 = icmp ult i64 %i.3.lcssa, 4
  br i1 %min.iters.check507, label %.lr.ph195.preheader616, label %min.iters.checked508

min.iters.checked508:                             ; preds = %.lr.ph195.preheader
  %n.vec510 = and i64 %i.3.lcssa, -4
  %cmp.zero511 = icmp eq i64 %n.vec510, 0
  %ind.end = or i64 %n.vec510, 1
  br i1 %cmp.zero511, label %.lr.ph195.preheader616, label %vector.body504.preheader

vector.body504.preheader:                         ; preds = %min.iters.checked508
  %101 = add i64 %i.3.lcssa, -4
  %102 = lshr i64 %101, 2
  %103 = and i64 %102, 1
  %lcmp.mod716 = icmp eq i64 %103, 0
  br i1 %lcmp.mod716, label %vector.body504.prol, label %vector.body504.preheader.split

vector.body504.prol:                              ; preds = %vector.body504.preheader
  %104 = bitcast i8* %67 to <2 x i64>*
  %wide.load.prol = load <2 x i64>, <2 x i64>* %104, align 8
  %105 = getelementptr i8, i8* %67, i64 16
  %106 = bitcast i8* %105 to <2 x i64>*
  %wide.load521.prol = load <2 x i64>, <2 x i64>* %106, align 8
  %107 = add <2 x i64> %wide.load.prol, <i64 1, i64 1>
  %108 = add <2 x i64> %wide.load521.prol, <i64 1, i64 1>
  %109 = getelementptr inbounds i8, i8* %72, i64 8
  %110 = bitcast i8* %109 to <2 x i64>*
  store <2 x i64> %107, <2 x i64>* %110, align 8
  %111 = getelementptr i8, i8* %72, i64 24
  %112 = bitcast i8* %111 to <2 x i64>*
  store <2 x i64> %108, <2 x i64>* %112, align 8
  br label %vector.body504.preheader.split

vector.body504.preheader.split:                   ; preds = %vector.body504.prol, %vector.body504.preheader
  %index513.unr = phi i64 [ 0, %vector.body504.preheader ], [ 4, %vector.body504.prol ]
  %113 = icmp eq i64 %102, 0
  br i1 %113, label %middle.block505, label %vector.body504.preheader.split.split

vector.body504.preheader.split.split:             ; preds = %vector.body504.preheader.split
  br label %vector.body504

vector.body504:                                   ; preds = %vector.body504, %vector.body504.preheader.split.split
  %index513 = phi i64 [ %index513.unr, %vector.body504.preheader.split.split ], [ %index.next514.1, %vector.body504 ]
  %offset.idx = or i64 %index513, 1
  %114 = add i64 %offset.idx, -1
  %115 = getelementptr inbounds i64, i64* %68, i64 %114
  %116 = bitcast i64* %115 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %116, align 8
  %117 = getelementptr i64, i64* %115, i64 2
  %118 = bitcast i64* %117 to <2 x i64>*
  %wide.load521 = load <2 x i64>, <2 x i64>* %118, align 8
  %119 = add <2 x i64> %wide.load, <i64 1, i64 1>
  %120 = add <2 x i64> %wide.load521, <i64 1, i64 1>
  %121 = getelementptr inbounds i64, i64* %73, i64 %offset.idx
  %122 = bitcast i64* %121 to <2 x i64>*
  store <2 x i64> %119, <2 x i64>* %122, align 8
  %123 = getelementptr i64, i64* %121, i64 2
  %124 = bitcast i64* %123 to <2 x i64>*
  store <2 x i64> %120, <2 x i64>* %124, align 8
  %index.next514 = add i64 %index513, 4
  %offset.idx.1 = or i64 %index.next514, 1
  %125 = add i64 %offset.idx.1, -1
  %126 = getelementptr inbounds i64, i64* %68, i64 %125
  %127 = bitcast i64* %126 to <2 x i64>*
  %wide.load.1 = load <2 x i64>, <2 x i64>* %127, align 8
  %128 = getelementptr i64, i64* %126, i64 2
  %129 = bitcast i64* %128 to <2 x i64>*
  %wide.load521.1 = load <2 x i64>, <2 x i64>* %129, align 8
  %130 = add <2 x i64> %wide.load.1, <i64 1, i64 1>
  %131 = add <2 x i64> %wide.load521.1, <i64 1, i64 1>
  %132 = getelementptr inbounds i64, i64* %73, i64 %offset.idx.1
  %133 = bitcast i64* %132 to <2 x i64>*
  store <2 x i64> %130, <2 x i64>* %133, align 8
  %134 = getelementptr i64, i64* %132, i64 2
  %135 = bitcast i64* %134 to <2 x i64>*
  store <2 x i64> %131, <2 x i64>* %135, align 8
  %index.next514.1 = add i64 %index513, 8
  %136 = icmp eq i64 %index.next514.1, %n.vec510
  br i1 %136, label %middle.block505.unr-lcssa, label %vector.body504, !llvm.loop !6

middle.block505.unr-lcssa:                        ; preds = %vector.body504
  br label %middle.block505

middle.block505:                                  ; preds = %vector.body504.preheader.split, %middle.block505.unr-lcssa
  %cmp.n516 = icmp eq i64 %i.3.lcssa, %n.vec510
  br i1 %cmp.n516, label %._crit_edge196, label %.lr.ph195.preheader616

.lr.ph195.preheader616:                           ; preds = %middle.block505, %min.iters.checked508, %.lr.ph195.preheader
  %i.4193.ph = phi i64 [ 1, %min.iters.checked508 ], [ 1, %.lr.ph195.preheader ], [ %ind.end, %middle.block505 ]
  br label %.lr.ph195

.lr.ph195:                                        ; preds = %.lr.ph195.preheader616, %.lr.ph195
  %i.4193 = phi i64 [ %142, %.lr.ph195 ], [ %i.4193.ph, %.lr.ph195.preheader616 ]
  %137 = add nsw i64 %i.4193, -1
  %138 = getelementptr inbounds i64, i64* %68, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = add i64 %139, 1
  %141 = getelementptr inbounds i64, i64* %73, i64 %i.4193
  store i64 %140, i64* %141, align 8
  %142 = add nuw nsw i64 %i.4193, 1
  %exitcond317 = icmp eq i64 %142, %92
  br i1 %exitcond317, label %._crit_edge196.loopexit, label %.lr.ph195, !llvm.loop !7

._crit_edge196.loopexit:                          ; preds = %.lr.ph195
  br label %._crit_edge196

._crit_edge196:                                   ; preds = %._crit_edge196.loopexit, %middle.block505, %._crit_edge200
  %143 = load i64, i64* @SCALE, align 8
  %144 = icmp sgt i64 %143, 11
  %145 = add nsw i64 %66, -1
  %146 = mul i64 %145, %80
  br i1 %144, label %147, label %149

; <label>:147                                     ; preds = %._crit_edge196
  %148 = uitofp i64 %146 to double
  br label %158

; <label>:149                                     ; preds = %._crit_edge196
  %150 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %151 = add nsw i64 %150, 1
  %152 = sdiv i64 %151, 2
  %153 = mul i64 %152, %146
  %154 = shl i64 %80, 1
  %155 = add i64 %153, %154
  %156 = uitofp i64 %155 to double
  %157 = fmul double %156, 1.200000e+00
  br label %158

; <label>:158                                     ; preds = %149, %147
  %.sink = phi double [ %148, %147 ], [ %157, %149 ]
  %159 = tail call double @ceil(double %.sink) #9
  %estTotEdges.0 = fptosi double %159 to i64
  %160 = load float, float* @PROB_UNIDIRECTIONAL, align 4
  %161 = shl i64 %estTotEdges.0, 3
  %162 = tail call noalias i8* @malloc(i64 %161) #6
  %163 = bitcast i8* %162 to i64*
  %164 = tail call noalias i8* @malloc(i64 %161) #6
  %165 = bitcast i8* %164 to i64*
  %166 = icmp eq i8* %162, null
  br i1 %166, label %167, label %168

; <label>:167                                     ; preds = %158
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 241, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #8
  unreachable

; <label>:168                                     ; preds = %158
  %169 = icmp eq i8* %164, null
  br i1 %169, label %170, label %171

; <label>:170                                     ; preds = %168
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 242, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #8
  unreachable

; <label>:171                                     ; preds = %168
  %172 = shl i64 %66, 3
  %173 = tail call noalias i8* @malloc(i64 %172) #6
  %174 = bitcast i8* %173 to i64**
  %175 = icmp eq i8* %173, null
  br i1 %175, label %177, label %.preheader48

.preheader48:                                     ; preds = %171
  %176 = icmp sgt i64 %66, 0
  br i1 %176, label %.lr.ph192.preheader, label %.preheader47

.lr.ph192.preheader:                              ; preds = %.preheader48
  br label %.lr.ph192

; <label>:177                                     ; preds = %171
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 249, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #8
  unreachable

; <label>:178                                     ; preds = %.lr.ph192
  %179 = icmp slt i64 %185, %66
  br i1 %179, label %.lr.ph192, label %.preheader47.loopexit

.preheader47.loopexit:                            ; preds = %178
  br label %.preheader47

.preheader47:                                     ; preds = %.preheader47.loopexit, %.preheader48
  %180 = icmp slt i64 %i.3.lcssa, 0
  br i1 %180, label %.preheader44, label %.lr.ph189.preheader

.lr.ph189.preheader:                              ; preds = %.preheader47
  br label %.lr.ph189

.lr.ph192:                                        ; preds = %.lr.ph192.preheader, %178
  %i.5191 = phi i64 [ %185, %178 ], [ 0, %.lr.ph192.preheader ]
  %181 = tail call noalias i8* @malloc(i64 %172) #6
  %182 = getelementptr inbounds i64*, i64** %174, i64 %i.5191
  %183 = bitcast i64** %182 to i8**
  store i8* %181, i8** %183, align 8
  %184 = icmp eq i8* %181, null
  %185 = add nuw nsw i64 %i.5191, 1
  br i1 %184, label %186, label %178

; <label>:186                                     ; preds = %.lr.ph192
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 253, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #8
  unreachable

.preheader44.loopexit:                            ; preds = %.loopexit46
  %i_edgePtr.6.lcssa = phi i64 [ %i_edgePtr.6, %.loopexit46 ]
  %.pre320 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  br label %.preheader44

.preheader44:                                     ; preds = %.preheader44.loopexit, %.preheader47
  %187 = phi i64 [ %66, %.preheader47 ], [ %.pre320, %.preheader44.loopexit ]
  %i_edgePtr.0.lcssa = phi i64 [ 0, %.preheader47 ], [ %i_edgePtr.6.lcssa, %.preheader44.loopexit ]
  %188 = icmp sgt i64 %187, 0
  br i1 %188, label %.lr.ph170.preheader, label %._crit_edge171

.lr.ph170.preheader:                              ; preds = %.preheader44
  br label %.lr.ph170

.lr.ph189:                                        ; preds = %.lr.ph189.preheader, %.loopexit46
  %i_edgePtr.0188 = phi i64 [ %i_edgePtr.6, %.loopexit46 ], [ 0, %.lr.ph189.preheader ]
  %i_clique.0187 = phi i64 [ %270, %.loopexit46 ], [ 0, %.lr.ph189.preheader ]
  %189 = getelementptr inbounds i64, i64* %56, i64 %i_clique.0187
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds i64, i64* %73, i64 %i_clique.0187
  %192 = load i64, i64* %191, align 8
  %193 = icmp sgt i64 %190, 0
  br i1 %193, label %.preheader45.preheader, label %._crit_edge180.thread

.preheader45.preheader:                           ; preds = %.lr.ph189
  br label %.preheader45

.preheader45:                                     ; preds = %.preheader45.preheader, %._crit_edge175
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge175 ], [ 0, %.preheader45.preheader ]
  %i_edgePtr.1177 = phi i64 [ %i_edgePtr.2.lcssa, %._crit_edge175 ], [ %i_edgePtr.0188, %.preheader45.preheader ]
  %194 = icmp sgt i64 %indvars.iv, 0
  br i1 %194, label %.lr.ph174, label %._crit_edge175

.lr.ph174:                                        ; preds = %.preheader45
  %195 = add nsw i64 %indvars.iv, %192
  %196 = getelementptr inbounds i64*, i64** %174, i64 %indvars.iv
  br label %197

; <label>:197                                     ; preds = %233, %.lr.ph174
  %i_edgePtr.2173 = phi i64 [ %i_edgePtr.1177, %.lr.ph174 ], [ %i_edgePtr.3, %233 ]
  %j.0172 = phi i64 [ 0, %.lr.ph174 ], [ %234, %233 ]
  %198 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %199 = urem i64 %198, 1000
  %200 = uitofp i64 %199 to float
  %201 = fdiv float %200, 1.000000e+03
  %202 = fcmp ult float %201, %160
  br i1 %202, label %215, label %203

; <label>:203                                     ; preds = %197
  %204 = getelementptr inbounds i64, i64* %163, i64 %i_edgePtr.2173
  store i64 %195, i64* %204, align 8
  %205 = add nsw i64 %j.0172, %192
  %206 = getelementptr inbounds i64, i64* %165, i64 %i_edgePtr.2173
  store i64 %205, i64* %206, align 8
  %207 = add nsw i64 %i_edgePtr.2173, 1
  %208 = load i64*, i64** %196, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 %j.0172
  store i64 1, i64* %209, align 8
  %210 = getelementptr inbounds i64, i64* %163, i64 %207
  store i64 %205, i64* %210, align 8
  %211 = getelementptr inbounds i64, i64* %165, i64 %207
  store i64 %195, i64* %211, align 8
  %212 = getelementptr inbounds i64*, i64** %174, i64 %j.0172
  %213 = load i64*, i64** %212, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 %indvars.iv
  store i64 1, i64* %214, align 8
  br label %233

; <label>:215                                     ; preds = %197
  %216 = fcmp ult float %201, 5.000000e-01
  %217 = getelementptr inbounds i64*, i64** %174, i64 %j.0172
  %218 = load i64*, i64** %217, align 8
  br i1 %216, label %226, label %219

; <label>:219                                     ; preds = %215
  %220 = getelementptr inbounds i64, i64* %163, i64 %i_edgePtr.2173
  store i64 %195, i64* %220, align 8
  %221 = add nsw i64 %j.0172, %192
  %222 = getelementptr inbounds i64, i64* %165, i64 %i_edgePtr.2173
  store i64 %221, i64* %222, align 8
  %223 = load i64*, i64** %196, align 8
  %224 = getelementptr inbounds i64, i64* %223, i64 %j.0172
  store i64 1, i64* %224, align 8
  %225 = getelementptr inbounds i64, i64* %218, i64 %indvars.iv
  store i64 0, i64* %225, align 8
  br label %233

; <label>:226                                     ; preds = %215
  %227 = add nsw i64 %j.0172, %192
  %228 = getelementptr inbounds i64, i64* %163, i64 %i_edgePtr.2173
  store i64 %227, i64* %228, align 8
  %229 = getelementptr inbounds i64, i64* %165, i64 %i_edgePtr.2173
  store i64 %195, i64* %229, align 8
  %230 = getelementptr inbounds i64, i64* %218, i64 %indvars.iv
  store i64 1, i64* %230, align 8
  %231 = load i64*, i64** %196, align 8
  %232 = getelementptr inbounds i64, i64* %231, i64 %j.0172
  store i64 0, i64* %232, align 8
  br label %233

; <label>:233                                     ; preds = %203, %226, %219
  %i_edgePtr.3.in = phi i64 [ %207, %203 ], [ %i_edgePtr.2173, %219 ], [ %i_edgePtr.2173, %226 ]
  %i_edgePtr.3 = add nsw i64 %i_edgePtr.3.in, 1
  %234 = add nuw nsw i64 %j.0172, 1
  %exitcond313 = icmp eq i64 %234, %indvars.iv
  br i1 %exitcond313, label %._crit_edge175.loopexit, label %197

._crit_edge175.loopexit:                          ; preds = %233
  %i_edgePtr.3.lcssa = phi i64 [ %i_edgePtr.3, %233 ]
  br label %._crit_edge175

._crit_edge175:                                   ; preds = %._crit_edge175.loopexit, %.preheader45
  %i_edgePtr.2.lcssa = phi i64 [ %i_edgePtr.1177, %.preheader45 ], [ %i_edgePtr.3.lcssa, %._crit_edge175.loopexit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond314 = icmp eq i64 %indvars.iv.next, %190
  br i1 %exitcond314, label %._crit_edge180, label %.preheader45

._crit_edge180:                                   ; preds = %._crit_edge175
  %i_edgePtr.2.lcssa.lcssa = phi i64 [ %i_edgePtr.2.lcssa, %._crit_edge175 ]
  %235 = icmp eq i64 %190, 1
  br i1 %235, label %.loopexit46, label %._crit_edge180.thread

._crit_edge180.thread:                            ; preds = %.lr.ph189, %._crit_edge180
  %i_edgePtr.1.lcssa340 = phi i64 [ %i_edgePtr.2.lcssa.lcssa, %._crit_edge180 ], [ %i_edgePtr.0188, %.lr.ph189 ]
  %236 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %237 = shl i64 %190, 1
  %238 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %239 = mul nsw i64 %237, %238
  %240 = urem i64 %236, %239
  %241 = icmp sgt i64 %240, 0
  br i1 %241, label %.lr.ph185.preheader, label %.loopexit46

.lr.ph185.preheader:                              ; preds = %._crit_edge180.thread
  br label %.lr.ph185

.lr.ph185:                                        ; preds = %.lr.ph185.preheader, %268
  %i_edgePtr.4183 = phi i64 [ %i_edgePtr.5, %268 ], [ %i_edgePtr.1.lcssa340, %.lr.ph185.preheader ]
  %i_paralEdge.0182 = phi i64 [ %269, %268 ], [ 0, %.lr.ph185.preheader ]
  %242 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %243 = urem i64 %242, %190
  %244 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %245 = urem i64 %244, %190
  %246 = icmp eq i64 %243, %245
  br i1 %246, label %268, label %247

; <label>:247                                     ; preds = %.lr.ph185
  %248 = getelementptr inbounds i64*, i64** %174, i64 %243
  %249 = load i64*, i64** %248, align 8
  %250 = getelementptr inbounds i64, i64* %249, i64 %245
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %253 = icmp ult i64 %251, %252
  br i1 %253, label %254, label %268

; <label>:254                                     ; preds = %247
  %255 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %256 = urem i64 %255, 1000
  %257 = uitofp i64 %256 to float
  %258 = fdiv float %257, 1.000000e+03
  %259 = fcmp ult float %258, %160
  br i1 %259, label %268, label %260

; <label>:260                                     ; preds = %254
  %261 = add nsw i64 %243, %192
  %262 = getelementptr inbounds i64, i64* %163, i64 %i_edgePtr.4183
  store i64 %261, i64* %262, align 8
  %263 = add nsw i64 %245, %192
  %264 = getelementptr inbounds i64, i64* %165, i64 %i_edgePtr.4183
  store i64 %263, i64* %264, align 8
  %265 = add nsw i64 %i_edgePtr.4183, 1
  %266 = load i64, i64* %250, align 8
  %267 = add i64 %266, 1
  store i64 %267, i64* %250, align 8
  br label %268

; <label>:268                                     ; preds = %254, %.lr.ph185, %247, %260
  %i_edgePtr.5 = phi i64 [ %265, %260 ], [ %i_edgePtr.4183, %254 ], [ %i_edgePtr.4183, %247 ], [ %i_edgePtr.4183, %.lr.ph185 ]
  %269 = add nuw nsw i64 %i_paralEdge.0182, 1
  %exitcond315 = icmp eq i64 %269, %240
  br i1 %exitcond315, label %.loopexit46.loopexit, label %.lr.ph185

.loopexit46.loopexit:                             ; preds = %268
  %i_edgePtr.5.lcssa = phi i64 [ %i_edgePtr.5, %268 ]
  br label %.loopexit46

.loopexit46:                                      ; preds = %.loopexit46.loopexit, %._crit_edge180.thread, %._crit_edge180
  %i_edgePtr.6 = phi i64 [ %i_edgePtr.2.lcssa.lcssa, %._crit_edge180 ], [ %i_edgePtr.1.lcssa340, %._crit_edge180.thread ], [ %i_edgePtr.5.lcssa, %.loopexit46.loopexit ]
  %270 = add nuw nsw i64 %i_clique.0187, 1
  %exitcond316 = icmp eq i64 %270, %92
  br i1 %exitcond316, label %.preheader44.loopexit, label %.lr.ph189

.lr.ph170:                                        ; preds = %.lr.ph170.preheader, %.lr.ph170
  %i.7169 = phi i64 [ %274, %.lr.ph170 ], [ 0, %.lr.ph170.preheader ]
  %271 = getelementptr inbounds i64*, i64** %174, i64 %i.7169
  %272 = bitcast i64** %271 to i8**
  %273 = load i8*, i8** %272, align 8
  tail call void @free(i8* %273) #6
  %274 = add nuw nsw i64 %i.7169, 1
  %275 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %276 = icmp slt i64 %274, %275
  br i1 %276, label %.lr.ph170, label %._crit_edge171.loopexit

._crit_edge171.loopexit:                          ; preds = %.lr.ph170
  br label %._crit_edge171

._crit_edge171:                                   ; preds = %._crit_edge171.loopexit, %.preheader44
  tail call void @free(i8* %173) #6
  %277 = load i64, i64* @SCALE, align 8
  %278 = icmp slt i64 %277, 10
  br i1 %278, label %279, label %283

; <label>:279                                     ; preds = %._crit_edge171
  %280 = shl i64 %i_edgePtr.0.lcssa, 4
  %281 = tail call noalias i8* @malloc(i64 %280) #6
  %282 = tail call noalias i8* @malloc(i64 %280) #6
  br label %291

; <label>:283                                     ; preds = %._crit_edge171
  %284 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %285 = load i64, i64* @TOT_VERTICES, align 8
  %286 = mul i64 %285, %284
  %287 = add i64 %286, %i_edgePtr.0.lcssa
  %288 = shl i64 %287, 3
  %289 = tail call noalias i8* @malloc(i64 %288) #6
  %290 = tail call noalias i8* @malloc(i64 %288) #6
  br label %291

; <label>:291                                     ; preds = %283, %279
  %endVertex.0.in = phi i8* [ %282, %279 ], [ %290, %283 ]
  %startVertex.0.in = phi i8* [ %281, %279 ], [ %289, %283 ]
  %startVertex.0 = bitcast i8* %startVertex.0.in to i64*
  %endVertex.0 = bitcast i8* %endVertex.0.in to i64*
  %292 = icmp eq i8* %startVertex.0.in, null
  br i1 %292, label %293, label %294

; <label>:293                                     ; preds = %291
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 367, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #8
  unreachable

; <label>:294                                     ; preds = %291
  %295 = icmp eq i8* %endVertex.0.in, null
  br i1 %295, label %298, label %.preheader43

.preheader43:                                     ; preds = %294
  %296 = icmp eq i64 %i_edgePtr.0.lcssa, 0
  br i1 %296, label %.preheader42, label %.lr.ph168.preheader

.lr.ph168.preheader:                              ; preds = %.preheader43
  %297 = shl i64 %i_edgePtr.0.lcssa, 3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %startVertex.0.in, i8* nonnull %162, i64 %297, i32 8, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %endVertex.0.in, i8* nonnull %164, i64 %297, i32 8, i1 false)
  br label %.preheader42

; <label>:298                                     ; preds = %294
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 368, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #8
  unreachable

.preheader42:                                     ; preds = %.lr.ph168.preheader, %.preheader43
  %299 = load i64, i64* @TOT_VERTICES, align 8
  %300 = icmp eq i64 %299, 0
  br i1 %300, label %._crit_edge145, label %.preheader38.preheader

.preheader38.preheader:                           ; preds = %.preheader42
  br label %.preheader38

.preheader38:                                     ; preds = %.preheader38.preheader, %._crit_edge161
  %301 = phi i64 [ %510, %._crit_edge161 ], [ %299, %.preheader38.preheader ]
  %i.9164 = phi i64 [ %511, %._crit_edge161 ], [ 0, %.preheader38.preheader ]
  %i_edgePtr.7163 = phi i64 [ %i_edgePtr.8.lcssa, %._crit_edge161 ], [ 0, %.preheader38.preheader ]
  br label %.outer39

.preheader26:                                     ; preds = %._crit_edge161
  %i_edgePtr.8.lcssa.lcssa = phi i64 [ %i_edgePtr.8.lcssa, %._crit_edge161 ]
  %302 = icmp eq i64 %i_edgePtr.8.lcssa.lcssa, 0
  br i1 %302, label %._crit_edge145, label %.lr.ph144.preheader

.lr.ph144.preheader:                              ; preds = %.preheader26
  %303 = shl i64 %i_edgePtr.0.lcssa, 3
  %scevgep = getelementptr i8, i8* %startVertex.0.in, i64 %303
  %304 = shl i64 %i_edgePtr.8.lcssa.lcssa, 3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep, i8* nonnull %162, i64 %304, i32 8, i1 false)
  %scevgep319 = getelementptr i8, i8* %endVertex.0.in, i64 %303
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep319, i8* nonnull %164, i64 %304, i32 8, i1 false)
  br label %._crit_edge145

.outer39.loopexit:                                ; preds = %.outer40.split.us.split
  br label %.outer39.backedge

.outer39.backedge:                                ; preds = %.outer39.loopexit, %.outer39.loopexit615
  %305 = phi i64 [ %.lcssa741, %.outer39.loopexit ], [ %.lcssa742, %.outer39.loopexit615 ]
  %h.0.ph41735 = phi i64 [ %h.0.ph41.lcssa731, %.outer39.loopexit ], [ %h.0.ph41.lcssa732, %.outer39.loopexit615 ]
  br label %.outer39

.outer39.loopexit615:                             ; preds = %.outer40.split.us.split.us
  %.lcssa742 = phi i64 [ %309, %.outer40.split.us.split.us ]
  %h.0.ph41.lcssa732 = phi i64 [ %h.0.ph41, %.outer40.split.us.split.us ]
  br label %.outer39.backedge

.outer39:                                         ; preds = %.outer39.backedge, %.preheader38
  %l.0.ph = phi i64 [ 0, %.preheader38 ], [ %305, %.outer39.backedge ]
  %h.0.ph = phi i64 [ %92, %.preheader38 ], [ %h.0.ph41735, %.outer39.backedge ]
  br label %.outer40

.outer40:                                         ; preds = %.outer39, %.us-lcssa.us
  %h.0.ph41 = phi i64 [ %h.0.ph, %.outer39 ], [ %309, %.us-lcssa.us ]
  %306 = sub nsw i64 %h.0.ph41, %l.0.ph
  %307 = icmp sgt i64 %306, 1
  %308 = add nsw i64 %h.0.ph41, %l.0.ph
  %309 = sdiv i64 %308, 2
  br i1 %307, label %.outer40.split.us, label %.thread.loopexit

.outer40.split.us:                                ; preds = %.outer40
  %310 = getelementptr inbounds i64, i64* %73, i64 %309
  %311 = icmp sgt i64 %308, 1
  %312 = load i64, i64* %310, align 8
  %313 = icmp ult i64 %i.9164, %312
  br i1 %311, label %.outer40.split.us.split.us, label %.outer40.split.us.split.preheader

.outer40.split.us.split.preheader:                ; preds = %.outer40.split.us
  %.lcssa744 = phi i1 [ %313, %.outer40.split.us ]
  %.lcssa741 = phi i64 [ %309, %.outer40.split.us ]
  %h.0.ph41.lcssa731 = phi i64 [ %h.0.ph41, %.outer40.split.us ]
  br label %.outer40.split.us.split

.outer40.split.us.split.us:                       ; preds = %.outer40.split.us
  br i1 %313, label %.us-lcssa.us, label %.outer39.loopexit615

.outer40.split.us.split:                          ; preds = %.outer40.split.us.split.preheader, %.outer40.split.us.split
  br i1 %.lcssa744, label %.outer40.split.us.split, label %.outer39.loopexit

.us-lcssa.us:                                     ; preds = %.outer40.split.us.split.us
  %314 = add nsw i64 %309, -1
  %315 = getelementptr inbounds i64, i64* %73, i64 %314
  %316 = load i64, i64* %315, align 8
  %317 = icmp ult i64 %i.9164, %316
  br i1 %317, label %.outer40, label %318

; <label>:318                                     ; preds = %.us-lcssa.us
  %l.0.ph.lcssa748 = phi i64 [ %l.0.ph, %.us-lcssa.us ]
  %.lcssa747 = phi i64 [ %316, %.us-lcssa.us ]
  %.lcssa739 = phi i64 [ %308, %.us-lcssa.us ]
  %h.0.ph41.lcssa733 = phi i64 [ %h.0.ph41, %.us-lcssa.us ]
  %.off10 = add i64 %.lcssa739, 1
  %319 = icmp ult i64 %.off10, 3
  br i1 %319, label %.thread.preheader, label %.loopexit37

.thread.loopexit:                                 ; preds = %.outer40
  %l.0.ph.lcssa = phi i64 [ %l.0.ph, %.outer40 ]
  %h.0.ph41.lcssa = phi i64 [ %h.0.ph41, %.outer40 ]
  br label %.thread.preheader

.thread.preheader:                                ; preds = %318, %.thread.loopexit
  %l.0.ph749 = phi i64 [ %l.0.ph.lcssa748, %318 ], [ %l.0.ph.lcssa, %.thread.loopexit ]
  %h.0.ph41734 = phi i64 [ %h.0.ph41.lcssa733, %318 ], [ %h.0.ph41.lcssa, %.thread.loopexit ]
  br label %.thread

.thread:                                          ; preds = %.thread.preheader, %321
  %m6.0.in = phi i64 [ %m6.0, %321 ], [ %l.0.ph749, %.thread.preheader ]
  %m6.0 = add nsw i64 %m6.0.in, 1
  %320 = icmp slt i64 %m6.0, %h.0.ph41734
  br i1 %320, label %321, label %.loopexit37.loopexit

; <label>:321                                     ; preds = %.thread
  %322 = getelementptr inbounds i64, i64* %73, i64 %m6.0
  %323 = load i64, i64* %322, align 8
  %324 = icmp ult i64 %i.9164, %323
  br i1 %324, label %.loopexit37.loopexit, label %.thread

.loopexit37.loopexit:                             ; preds = %321, %.thread
  %m6.0.in.lcssa = phi i64 [ %m6.0.in, %321 ], [ %m6.0.in, %.thread ]
  %.phi.trans.insert = getelementptr inbounds i64, i64* %73, i64 %m6.0.in.lcssa
  %.pre322 = load i64, i64* %.phi.trans.insert, align 8
  br label %.loopexit37

.loopexit37:                                      ; preds = %.loopexit37.loopexit, %318
  %325 = phi i64 [ %.lcssa747, %318 ], [ %.pre322, %.loopexit37.loopexit ]
  %326 = icmp ugt i64 %301, 1
  br i1 %326, label %.lr.ph160.preheader, label %._crit_edge161

.lr.ph160.preheader:                              ; preds = %.loopexit37
  %327 = load float, float* @PROB_INTERCL_EDGES, align 4
  %broadcast.splatinsert548 = insertelement <2 x i64> undef, i64 %i.9164, i32 0
  %broadcast.splat549 = shufflevector <2 x i64> %broadcast.splatinsert548, <2 x i64> undef, <2 x i32> zeroinitializer
  %broadcast.splatinsert578 = insertelement <2 x i64> undef, i64 %i.9164, i32 0
  %broadcast.splat579 = shufflevector <2 x i64> %broadcast.splatinsert578, <2 x i64> undef, <2 x i32> zeroinitializer
  br label %.lr.ph160

.lr.ph160:                                        ; preds = %.lr.ph160.preheader, %.loopexit27
  %i_edgePtr.8158 = phi i64 [ %i_edgePtr.12, %.loopexit27 ], [ %i_edgePtr.7163, %.lr.ph160.preheader ]
  %p.0157 = phi float [ %507, %.loopexit27 ], [ %327, %.lr.ph160.preheader ]
  %d.0156 = phi i64 [ %506, %.loopexit27 ], [ 1, %.lr.ph160.preheader ]
  %328 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %329 = urem i64 %328, 1000
  %330 = uitofp i64 %329 to float
  %331 = fdiv float %330, 1.000000e+03
  %332 = fcmp ugt float %331, %p.0157
  br i1 %332, label %.loopexit32, label %333

; <label>:333                                     ; preds = %.lr.ph160
  %334 = add i64 %d.0156, %i.9164
  %335 = load i64, i64* @TOT_VERTICES, align 8
  %336 = urem i64 %334, %335
  br label %.outer34

.outer34.loopexit:                                ; preds = %.outer35.split.us.split
  br label %.outer34.backedge

.outer34.backedge:                                ; preds = %.outer34.loopexit, %.outer34.loopexit612
  %337 = phi i64 [ %.lcssa760, %.outer34.loopexit ], [ %.lcssa761, %.outer34.loopexit612 ]
  %h.1.ph36754 = phi i64 [ %h.1.ph36.lcssa750, %.outer34.loopexit ], [ %h.1.ph36.lcssa751, %.outer34.loopexit612 ]
  br label %.outer34

.outer34.loopexit612:                             ; preds = %.outer35.split.us.split.us
  %.lcssa761 = phi i64 [ %341, %.outer35.split.us.split.us ]
  %h.1.ph36.lcssa751 = phi i64 [ %h.1.ph36, %.outer35.split.us.split.us ]
  br label %.outer34.backedge

.outer34:                                         ; preds = %.outer34.backedge, %333
  %l.1.ph = phi i64 [ 0, %333 ], [ %337, %.outer34.backedge ]
  %h.1.ph = phi i64 [ %92, %333 ], [ %h.1.ph36754, %.outer34.backedge ]
  br label %.outer35

.outer35:                                         ; preds = %.outer34, %.us-lcssa216.us
  %h.1.ph36 = phi i64 [ %h.1.ph, %.outer34 ], [ %341, %.us-lcssa216.us ]
  %338 = sub nsw i64 %h.1.ph36, %l.1.ph
  %339 = icmp sgt i64 %338, 1
  %340 = add nsw i64 %h.1.ph36, %l.1.ph
  %341 = sdiv i64 %340, 2
  br i1 %339, label %.outer35.split.us, label %.thread7.loopexit

.outer35.split.us:                                ; preds = %.outer35
  %342 = getelementptr inbounds i64, i64* %73, i64 %341
  %343 = icmp sgt i64 %340, 1
  %344 = load i64, i64* %342, align 8
  %345 = icmp ult i64 %336, %344
  br i1 %343, label %.outer35.split.us.split.us, label %.outer35.split.us.split.preheader

.outer35.split.us.split.preheader:                ; preds = %.outer35.split.us
  %.lcssa763 = phi i1 [ %345, %.outer35.split.us ]
  %.lcssa760 = phi i64 [ %341, %.outer35.split.us ]
  %h.1.ph36.lcssa750 = phi i64 [ %h.1.ph36, %.outer35.split.us ]
  br label %.outer35.split.us.split

.outer35.split.us.split.us:                       ; preds = %.outer35.split.us
  br i1 %345, label %.us-lcssa216.us, label %.outer34.loopexit612

.outer35.split.us.split:                          ; preds = %.outer35.split.us.split.preheader, %.outer35.split.us.split
  br i1 %.lcssa763, label %.outer35.split.us.split, label %.outer34.loopexit

.us-lcssa216.us:                                  ; preds = %.outer35.split.us.split.us
  %346 = add nsw i64 %341, -1
  %347 = getelementptr inbounds i64, i64* %73, i64 %346
  %348 = load i64, i64* %347, align 8
  %349 = icmp ugt i64 %348, %336
  br i1 %349, label %.outer35, label %350

; <label>:350                                     ; preds = %.us-lcssa216.us
  %l.1.ph.lcssa767 = phi i64 [ %l.1.ph, %.us-lcssa216.us ]
  %.lcssa766 = phi i64 [ %348, %.us-lcssa216.us ]
  %.lcssa758 = phi i64 [ %340, %.us-lcssa216.us ]
  %h.1.ph36.lcssa752 = phi i64 [ %h.1.ph36, %.us-lcssa216.us ]
  %.off9 = add i64 %.lcssa758, 1
  %351 = icmp ult i64 %.off9, 3
  br i1 %351, label %.thread7.preheader, label %.loopexit33

.thread7.loopexit:                                ; preds = %.outer35
  %l.1.ph.lcssa = phi i64 [ %l.1.ph, %.outer35 ]
  %h.1.ph36.lcssa = phi i64 [ %h.1.ph36, %.outer35 ]
  br label %.thread7.preheader

.thread7.preheader:                               ; preds = %350, %.thread7.loopexit
  %l.1.ph768 = phi i64 [ %l.1.ph.lcssa767, %350 ], [ %l.1.ph.lcssa, %.thread7.loopexit ]
  %h.1.ph36753 = phi i64 [ %h.1.ph36.lcssa752, %350 ], [ %h.1.ph36.lcssa, %.thread7.loopexit ]
  br label %.thread7

.thread7:                                         ; preds = %.thread7.preheader, %353
  %m10.0.in = phi i64 [ %m10.0, %353 ], [ %l.1.ph768, %.thread7.preheader ]
  %m10.0 = add nsw i64 %m10.0.in, 1
  %352 = icmp slt i64 %m10.0, %h.1.ph36753
  br i1 %352, label %353, label %.loopexit33.loopexit

; <label>:353                                     ; preds = %.thread7
  %354 = getelementptr inbounds i64, i64* %73, i64 %m10.0
  %355 = load i64, i64* %354, align 8
  %356 = icmp ult i64 %336, %355
  br i1 %356, label %.loopexit33.loopexit, label %.thread7

.loopexit33.loopexit:                             ; preds = %353, %.thread7
  %m10.0.in.lcssa = phi i64 [ %m10.0.in, %353 ], [ %m10.0.in, %.thread7 ]
  %.phi.trans.insert324 = getelementptr inbounds i64, i64* %73, i64 %m10.0.in.lcssa
  %.pre325 = load i64, i64* %.phi.trans.insert324, align 8
  br label %.loopexit33

.loopexit33:                                      ; preds = %.loopexit33.loopexit, %350
  %357 = phi i64 [ %.lcssa766, %350 ], [ %.pre325, %.loopexit33.loopexit ]
  %358 = icmp eq i64 %325, %357
  br i1 %358, label %.loopexit32, label %359

; <label>:359                                     ; preds = %.loopexit33
  %360 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %361 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %362 = urem i64 %360, %361
  %363 = add i64 %362, 1
  %364 = icmp sgt i64 %363, 0
  br i1 %364, label %.lr.ph149.preheader, label %.loopexit32

.lr.ph149.preheader:                              ; preds = %359
  %365 = add i64 %i_edgePtr.8158, 1
  %366 = add i64 %362, 1
  %min.iters.check557 = icmp ult i64 %366, 4
  br i1 %min.iters.check557, label %.lr.ph149.preheader614, label %min.iters.checked558

min.iters.checked558:                             ; preds = %.lr.ph149.preheader
  %n.vec560 = and i64 %366, -4
  %cmp.zero561 = icmp eq i64 %n.vec560, 0
  %ind.end566 = add i64 %i_edgePtr.8158, %n.vec560
  br i1 %cmp.zero561, label %.lr.ph149.preheader614, label %vector.ph562

vector.ph562:                                     ; preds = %min.iters.checked558
  %broadcast.splatinsert580 = insertelement <2 x i64> undef, i64 %336, i32 0
  %broadcast.splat581 = shufflevector <2 x i64> %broadcast.splatinsert580, <2 x i64> undef, <2 x i32> zeroinitializer
  %367 = add i64 %362, -3
  %368 = lshr i64 %367, 2
  %369 = add nuw nsw i64 %368, 1
  %xtraiter709 = and i64 %369, 3
  %lcmp.mod710 = icmp eq i64 %xtraiter709, 0
  br i1 %lcmp.mod710, label %vector.ph562.split, label %vector.body554.prol.preheader

vector.body554.prol.preheader:                    ; preds = %vector.ph562
  br label %vector.body554.prol

vector.body554.prol:                              ; preds = %vector.body554.prol, %vector.body554.prol.preheader
  %index563.prol = phi i64 [ %index.next564.prol, %vector.body554.prol ], [ 0, %vector.body554.prol.preheader ]
  %prol.iter711 = phi i64 [ %prol.iter711.sub, %vector.body554.prol ], [ %xtraiter709, %vector.body554.prol.preheader ]
  %offset.idx569.prol = add i64 %i_edgePtr.8158, %index563.prol
  %370 = getelementptr inbounds i64, i64* %163, i64 %offset.idx569.prol
  %371 = bitcast i64* %370 to <2 x i64>*
  store <2 x i64> %broadcast.splat579, <2 x i64>* %371, align 8
  %372 = getelementptr i64, i64* %370, i64 2
  %373 = bitcast i64* %372 to <2 x i64>*
  store <2 x i64> %broadcast.splat579, <2 x i64>* %373, align 8
  %374 = getelementptr inbounds i64, i64* %165, i64 %offset.idx569.prol
  %375 = bitcast i64* %374 to <2 x i64>*
  store <2 x i64> %broadcast.splat581, <2 x i64>* %375, align 8
  %376 = getelementptr i64, i64* %374, i64 2
  %377 = bitcast i64* %376 to <2 x i64>*
  store <2 x i64> %broadcast.splat581, <2 x i64>* %377, align 8
  %index.next564.prol = add i64 %index563.prol, 4
  %prol.iter711.sub = add i64 %prol.iter711, -1
  %prol.iter711.cmp = icmp eq i64 %prol.iter711.sub, 0
  br i1 %prol.iter711.cmp, label %vector.ph562.split.loopexit, label %vector.body554.prol, !llvm.loop !8

vector.ph562.split.loopexit:                      ; preds = %vector.body554.prol
  %index.next564.prol.lcssa = phi i64 [ %index.next564.prol, %vector.body554.prol ]
  br label %vector.ph562.split

vector.ph562.split:                               ; preds = %vector.ph562, %vector.ph562.split.loopexit
  %index563.unr = phi i64 [ 0, %vector.ph562 ], [ %index.next564.prol.lcssa, %vector.ph562.split.loopexit ]
  %378 = icmp ult i64 %367, 12
  br i1 %378, label %middle.block555, label %vector.ph562.split.split

vector.ph562.split.split:                         ; preds = %vector.ph562.split
  br label %vector.body554

vector.body554:                                   ; preds = %vector.body554, %vector.ph562.split.split
  %index563 = phi i64 [ %index563.unr, %vector.ph562.split.split ], [ %index.next564.3, %vector.body554 ]
  %offset.idx569 = add i64 %i_edgePtr.8158, %index563
  %379 = getelementptr inbounds i64, i64* %163, i64 %offset.idx569
  %380 = bitcast i64* %379 to <2 x i64>*
  store <2 x i64> %broadcast.splat579, <2 x i64>* %380, align 8
  %381 = getelementptr i64, i64* %379, i64 2
  %382 = bitcast i64* %381 to <2 x i64>*
  store <2 x i64> %broadcast.splat579, <2 x i64>* %382, align 8
  %383 = getelementptr inbounds i64, i64* %165, i64 %offset.idx569
  %384 = bitcast i64* %383 to <2 x i64>*
  store <2 x i64> %broadcast.splat581, <2 x i64>* %384, align 8
  %385 = getelementptr i64, i64* %383, i64 2
  %386 = bitcast i64* %385 to <2 x i64>*
  store <2 x i64> %broadcast.splat581, <2 x i64>* %386, align 8
  %index.next564 = add i64 %index563, 4
  %offset.idx569.1 = add i64 %i_edgePtr.8158, %index.next564
  %387 = getelementptr inbounds i64, i64* %163, i64 %offset.idx569.1
  %388 = bitcast i64* %387 to <2 x i64>*
  store <2 x i64> %broadcast.splat579, <2 x i64>* %388, align 8
  %389 = getelementptr i64, i64* %387, i64 2
  %390 = bitcast i64* %389 to <2 x i64>*
  store <2 x i64> %broadcast.splat579, <2 x i64>* %390, align 8
  %391 = getelementptr inbounds i64, i64* %165, i64 %offset.idx569.1
  %392 = bitcast i64* %391 to <2 x i64>*
  store <2 x i64> %broadcast.splat581, <2 x i64>* %392, align 8
  %393 = getelementptr i64, i64* %391, i64 2
  %394 = bitcast i64* %393 to <2 x i64>*
  store <2 x i64> %broadcast.splat581, <2 x i64>* %394, align 8
  %index.next564.1 = add i64 %index563, 8
  %offset.idx569.2 = add i64 %i_edgePtr.8158, %index.next564.1
  %395 = getelementptr inbounds i64, i64* %163, i64 %offset.idx569.2
  %396 = bitcast i64* %395 to <2 x i64>*
  store <2 x i64> %broadcast.splat579, <2 x i64>* %396, align 8
  %397 = getelementptr i64, i64* %395, i64 2
  %398 = bitcast i64* %397 to <2 x i64>*
  store <2 x i64> %broadcast.splat579, <2 x i64>* %398, align 8
  %399 = getelementptr inbounds i64, i64* %165, i64 %offset.idx569.2
  %400 = bitcast i64* %399 to <2 x i64>*
  store <2 x i64> %broadcast.splat581, <2 x i64>* %400, align 8
  %401 = getelementptr i64, i64* %399, i64 2
  %402 = bitcast i64* %401 to <2 x i64>*
  store <2 x i64> %broadcast.splat581, <2 x i64>* %402, align 8
  %index.next564.2 = add i64 %index563, 12
  %offset.idx569.3 = add i64 %i_edgePtr.8158, %index.next564.2
  %403 = getelementptr inbounds i64, i64* %163, i64 %offset.idx569.3
  %404 = bitcast i64* %403 to <2 x i64>*
  store <2 x i64> %broadcast.splat579, <2 x i64>* %404, align 8
  %405 = getelementptr i64, i64* %403, i64 2
  %406 = bitcast i64* %405 to <2 x i64>*
  store <2 x i64> %broadcast.splat579, <2 x i64>* %406, align 8
  %407 = getelementptr inbounds i64, i64* %165, i64 %offset.idx569.3
  %408 = bitcast i64* %407 to <2 x i64>*
  store <2 x i64> %broadcast.splat581, <2 x i64>* %408, align 8
  %409 = getelementptr i64, i64* %407, i64 2
  %410 = bitcast i64* %409 to <2 x i64>*
  store <2 x i64> %broadcast.splat581, <2 x i64>* %410, align 8
  %index.next564.3 = add i64 %index563, 16
  %411 = icmp eq i64 %index.next564.3, %n.vec560
  br i1 %411, label %middle.block555.unr-lcssa, label %vector.body554, !llvm.loop !10

middle.block555.unr-lcssa:                        ; preds = %vector.body554
  br label %middle.block555

middle.block555:                                  ; preds = %vector.ph562.split, %middle.block555.unr-lcssa
  %cmp.n568 = icmp eq i64 %366, %n.vec560
  br i1 %cmp.n568, label %.loopexit32.loopexit, label %.lr.ph149.preheader614

.lr.ph149.preheader614:                           ; preds = %middle.block555, %min.iters.checked558, %.lr.ph149.preheader
  %i_edgePtr.9147.ph = phi i64 [ %i_edgePtr.8158, %min.iters.checked558 ], [ %i_edgePtr.8158, %.lr.ph149.preheader ], [ %ind.end566, %middle.block555 ]
  %j13.0146.ph = phi i64 [ 0, %min.iters.checked558 ], [ 0, %.lr.ph149.preheader ], [ %n.vec560, %middle.block555 ]
  br label %.lr.ph149

.lr.ph149:                                        ; preds = %.lr.ph149.preheader614, %.lr.ph149
  %i_edgePtr.9147 = phi i64 [ %414, %.lr.ph149 ], [ %i_edgePtr.9147.ph, %.lr.ph149.preheader614 ]
  %j13.0146 = phi i64 [ %415, %.lr.ph149 ], [ %j13.0146.ph, %.lr.ph149.preheader614 ]
  %412 = getelementptr inbounds i64, i64* %163, i64 %i_edgePtr.9147
  store i64 %i.9164, i64* %412, align 8
  %413 = getelementptr inbounds i64, i64* %165, i64 %i_edgePtr.9147
  store i64 %336, i64* %413, align 8
  %414 = add nsw i64 %i_edgePtr.9147, 1
  %415 = add nuw nsw i64 %j13.0146, 1
  %exitcond310 = icmp eq i64 %415, %363
  br i1 %exitcond310, label %.loopexit32.loopexit.loopexit, label %.lr.ph149, !llvm.loop !11

.loopexit32.loopexit.loopexit:                    ; preds = %.lr.ph149
  br label %.loopexit32.loopexit

.loopexit32.loopexit:                             ; preds = %.loopexit32.loopexit.loopexit, %middle.block555
  %416 = add i64 %365, %362
  br label %.loopexit32

.loopexit32:                                      ; preds = %.loopexit32.loopexit, %359, %.loopexit33, %.lr.ph160
  %i_edgePtr.10 = phi i64 [ %i_edgePtr.8158, %.loopexit33 ], [ %i_edgePtr.8158, %.lr.ph160 ], [ %i_edgePtr.8158, %359 ], [ %416, %.loopexit32.loopexit ]
  %417 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %418 = urem i64 %417, 1000
  %419 = uitofp i64 %418 to float
  %420 = fdiv float %419, 1.000000e+03
  %421 = fcmp ugt float %420, %p.0157
  br i1 %421, label %.loopexit27, label %422

; <label>:422                                     ; preds = %.loopexit32
  %423 = sub i64 %i.9164, %d.0156
  %424 = load i64, i64* @TOT_VERTICES, align 8
  %425 = urem i64 %423, %424
  br label %.outer29

.outer29.loopexit:                                ; preds = %.outer30.split.us.split
  br label %.outer29.backedge

.outer29.backedge:                                ; preds = %.outer29.loopexit, %.outer29.loopexit611
  %426 = phi i64 [ %.lcssa779, %.outer29.loopexit ], [ %.lcssa780, %.outer29.loopexit611 ]
  %h.2.ph31773 = phi i64 [ %h.2.ph31.lcssa769, %.outer29.loopexit ], [ %h.2.ph31.lcssa770, %.outer29.loopexit611 ]
  br label %.outer29

.outer29.loopexit611:                             ; preds = %.outer30.split.us.split.us
  %.lcssa780 = phi i64 [ %430, %.outer30.split.us.split.us ]
  %h.2.ph31.lcssa770 = phi i64 [ %h.2.ph31, %.outer30.split.us.split.us ]
  br label %.outer29.backedge

.outer29:                                         ; preds = %.outer29.backedge, %422
  %l.2.ph = phi i64 [ 0, %422 ], [ %426, %.outer29.backedge ]
  %h.2.ph = phi i64 [ %92, %422 ], [ %h.2.ph31773, %.outer29.backedge ]
  br label %.outer30

.outer30:                                         ; preds = %.outer29, %.us-lcssa217.us
  %h.2.ph31 = phi i64 [ %h.2.ph, %.outer29 ], [ %430, %.us-lcssa217.us ]
  %427 = sub nsw i64 %h.2.ph31, %l.2.ph
  %428 = icmp sgt i64 %427, 1
  %429 = add nsw i64 %h.2.ph31, %l.2.ph
  %430 = sdiv i64 %429, 2
  br i1 %428, label %.outer30.split.us, label %.thread8.loopexit

.outer30.split.us:                                ; preds = %.outer30
  %431 = getelementptr inbounds i64, i64* %73, i64 %430
  %432 = icmp sgt i64 %429, 1
  %433 = load i64, i64* %431, align 8
  %434 = icmp ult i64 %425, %433
  br i1 %432, label %.outer30.split.us.split.us, label %.outer30.split.us.split.preheader

.outer30.split.us.split.preheader:                ; preds = %.outer30.split.us
  %.lcssa782 = phi i1 [ %434, %.outer30.split.us ]
  %.lcssa779 = phi i64 [ %430, %.outer30.split.us ]
  %h.2.ph31.lcssa769 = phi i64 [ %h.2.ph31, %.outer30.split.us ]
  br label %.outer30.split.us.split

.outer30.split.us.split.us:                       ; preds = %.outer30.split.us
  br i1 %434, label %.us-lcssa217.us, label %.outer29.loopexit611

.outer30.split.us.split:                          ; preds = %.outer30.split.us.split.preheader, %.outer30.split.us.split
  br i1 %.lcssa782, label %.outer30.split.us.split, label %.outer29.loopexit

.us-lcssa217.us:                                  ; preds = %.outer30.split.us.split.us
  %435 = add nsw i64 %430, -1
  %436 = getelementptr inbounds i64, i64* %73, i64 %435
  %437 = load i64, i64* %436, align 8
  %438 = icmp ugt i64 %437, %425
  br i1 %438, label %.outer30, label %439

; <label>:439                                     ; preds = %.us-lcssa217.us
  %l.2.ph.lcssa786 = phi i64 [ %l.2.ph, %.us-lcssa217.us ]
  %.lcssa785 = phi i64 [ %437, %.us-lcssa217.us ]
  %.lcssa777 = phi i64 [ %429, %.us-lcssa217.us ]
  %h.2.ph31.lcssa771 = phi i64 [ %h.2.ph31, %.us-lcssa217.us ]
  %.off = add i64 %.lcssa777, 1
  %440 = icmp ult i64 %.off, 3
  br i1 %440, label %.thread8.preheader, label %.loopexit28

.thread8.loopexit:                                ; preds = %.outer30
  %l.2.ph.lcssa = phi i64 [ %l.2.ph, %.outer30 ]
  %h.2.ph31.lcssa = phi i64 [ %h.2.ph31, %.outer30 ]
  br label %.thread8.preheader

.thread8.preheader:                               ; preds = %439, %.thread8.loopexit
  %l.2.ph787 = phi i64 [ %l.2.ph.lcssa786, %439 ], [ %l.2.ph.lcssa, %.thread8.loopexit ]
  %h.2.ph31772 = phi i64 [ %h.2.ph31.lcssa771, %439 ], [ %h.2.ph31.lcssa, %.thread8.loopexit ]
  br label %.thread8

.thread8:                                         ; preds = %.thread8.preheader, %442
  %m16.0.in = phi i64 [ %m16.0, %442 ], [ %l.2.ph787, %.thread8.preheader ]
  %m16.0 = add nsw i64 %m16.0.in, 1
  %441 = icmp slt i64 %m16.0, %h.2.ph31772
  br i1 %441, label %442, label %.loopexit28.loopexit

; <label>:442                                     ; preds = %.thread8
  %443 = getelementptr inbounds i64, i64* %73, i64 %m16.0
  %444 = load i64, i64* %443, align 8
  %445 = icmp ult i64 %425, %444
  br i1 %445, label %.loopexit28.loopexit, label %.thread8

.loopexit28.loopexit:                             ; preds = %442, %.thread8
  %m16.0.in.lcssa = phi i64 [ %m16.0.in, %442 ], [ %m16.0.in, %.thread8 ]
  %.phi.trans.insert327 = getelementptr inbounds i64, i64* %73, i64 %m16.0.in.lcssa
  %.pre328 = load i64, i64* %.phi.trans.insert327, align 8
  br label %.loopexit28

.loopexit28:                                      ; preds = %.loopexit28.loopexit, %439
  %446 = phi i64 [ %.lcssa785, %439 ], [ %.pre328, %.loopexit28.loopexit ]
  %447 = icmp eq i64 %325, %446
  br i1 %447, label %.loopexit27, label %448

; <label>:448                                     ; preds = %.loopexit28
  %449 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %450 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %451 = urem i64 %449, %450
  %452 = add i64 %451, 1
  %453 = icmp sgt i64 %452, 0
  br i1 %453, label %.lr.ph154.preheader, label %.loopexit27

.lr.ph154.preheader:                              ; preds = %448
  %454 = add i64 %i_edgePtr.10, 1
  %455 = add i64 %451, 1
  %min.iters.check527 = icmp ult i64 %455, 4
  br i1 %min.iters.check527, label %.lr.ph154.preheader613, label %min.iters.checked528

min.iters.checked528:                             ; preds = %.lr.ph154.preheader
  %n.vec530 = and i64 %455, -4
  %cmp.zero531 = icmp eq i64 %n.vec530, 0
  %ind.end536 = add i64 %i_edgePtr.10, %n.vec530
  br i1 %cmp.zero531, label %.lr.ph154.preheader613, label %vector.ph532

vector.ph532:                                     ; preds = %min.iters.checked528
  %broadcast.splatinsert550 = insertelement <2 x i64> undef, i64 %425, i32 0
  %broadcast.splat551 = shufflevector <2 x i64> %broadcast.splatinsert550, <2 x i64> undef, <2 x i32> zeroinitializer
  %456 = add i64 %451, -3
  %457 = lshr i64 %456, 2
  %458 = add nuw nsw i64 %457, 1
  %xtraiter712 = and i64 %458, 3
  %lcmp.mod713 = icmp eq i64 %xtraiter712, 0
  br i1 %lcmp.mod713, label %vector.ph532.split, label %vector.body524.prol.preheader

vector.body524.prol.preheader:                    ; preds = %vector.ph532
  br label %vector.body524.prol

vector.body524.prol:                              ; preds = %vector.body524.prol, %vector.body524.prol.preheader
  %index533.prol = phi i64 [ %index.next534.prol, %vector.body524.prol ], [ 0, %vector.body524.prol.preheader ]
  %prol.iter714 = phi i64 [ %prol.iter714.sub, %vector.body524.prol ], [ %xtraiter712, %vector.body524.prol.preheader ]
  %offset.idx539.prol = add i64 %i_edgePtr.10, %index533.prol
  %459 = getelementptr inbounds i64, i64* %163, i64 %offset.idx539.prol
  %460 = bitcast i64* %459 to <2 x i64>*
  store <2 x i64> %broadcast.splat549, <2 x i64>* %460, align 8
  %461 = getelementptr i64, i64* %459, i64 2
  %462 = bitcast i64* %461 to <2 x i64>*
  store <2 x i64> %broadcast.splat549, <2 x i64>* %462, align 8
  %463 = getelementptr inbounds i64, i64* %165, i64 %offset.idx539.prol
  %464 = bitcast i64* %463 to <2 x i64>*
  store <2 x i64> %broadcast.splat551, <2 x i64>* %464, align 8
  %465 = getelementptr i64, i64* %463, i64 2
  %466 = bitcast i64* %465 to <2 x i64>*
  store <2 x i64> %broadcast.splat551, <2 x i64>* %466, align 8
  %index.next534.prol = add i64 %index533.prol, 4
  %prol.iter714.sub = add i64 %prol.iter714, -1
  %prol.iter714.cmp = icmp eq i64 %prol.iter714.sub, 0
  br i1 %prol.iter714.cmp, label %vector.ph532.split.loopexit, label %vector.body524.prol, !llvm.loop !12

vector.ph532.split.loopexit:                      ; preds = %vector.body524.prol
  %index.next534.prol.lcssa = phi i64 [ %index.next534.prol, %vector.body524.prol ]
  br label %vector.ph532.split

vector.ph532.split:                               ; preds = %vector.ph532, %vector.ph532.split.loopexit
  %index533.unr = phi i64 [ 0, %vector.ph532 ], [ %index.next534.prol.lcssa, %vector.ph532.split.loopexit ]
  %467 = icmp ult i64 %456, 12
  br i1 %467, label %middle.block525, label %vector.ph532.split.split

vector.ph532.split.split:                         ; preds = %vector.ph532.split
  br label %vector.body524

vector.body524:                                   ; preds = %vector.body524, %vector.ph532.split.split
  %index533 = phi i64 [ %index533.unr, %vector.ph532.split.split ], [ %index.next534.3, %vector.body524 ]
  %offset.idx539 = add i64 %i_edgePtr.10, %index533
  %468 = getelementptr inbounds i64, i64* %163, i64 %offset.idx539
  %469 = bitcast i64* %468 to <2 x i64>*
  store <2 x i64> %broadcast.splat549, <2 x i64>* %469, align 8
  %470 = getelementptr i64, i64* %468, i64 2
  %471 = bitcast i64* %470 to <2 x i64>*
  store <2 x i64> %broadcast.splat549, <2 x i64>* %471, align 8
  %472 = getelementptr inbounds i64, i64* %165, i64 %offset.idx539
  %473 = bitcast i64* %472 to <2 x i64>*
  store <2 x i64> %broadcast.splat551, <2 x i64>* %473, align 8
  %474 = getelementptr i64, i64* %472, i64 2
  %475 = bitcast i64* %474 to <2 x i64>*
  store <2 x i64> %broadcast.splat551, <2 x i64>* %475, align 8
  %index.next534 = add i64 %index533, 4
  %offset.idx539.1 = add i64 %i_edgePtr.10, %index.next534
  %476 = getelementptr inbounds i64, i64* %163, i64 %offset.idx539.1
  %477 = bitcast i64* %476 to <2 x i64>*
  store <2 x i64> %broadcast.splat549, <2 x i64>* %477, align 8
  %478 = getelementptr i64, i64* %476, i64 2
  %479 = bitcast i64* %478 to <2 x i64>*
  store <2 x i64> %broadcast.splat549, <2 x i64>* %479, align 8
  %480 = getelementptr inbounds i64, i64* %165, i64 %offset.idx539.1
  %481 = bitcast i64* %480 to <2 x i64>*
  store <2 x i64> %broadcast.splat551, <2 x i64>* %481, align 8
  %482 = getelementptr i64, i64* %480, i64 2
  %483 = bitcast i64* %482 to <2 x i64>*
  store <2 x i64> %broadcast.splat551, <2 x i64>* %483, align 8
  %index.next534.1 = add i64 %index533, 8
  %offset.idx539.2 = add i64 %i_edgePtr.10, %index.next534.1
  %484 = getelementptr inbounds i64, i64* %163, i64 %offset.idx539.2
  %485 = bitcast i64* %484 to <2 x i64>*
  store <2 x i64> %broadcast.splat549, <2 x i64>* %485, align 8
  %486 = getelementptr i64, i64* %484, i64 2
  %487 = bitcast i64* %486 to <2 x i64>*
  store <2 x i64> %broadcast.splat549, <2 x i64>* %487, align 8
  %488 = getelementptr inbounds i64, i64* %165, i64 %offset.idx539.2
  %489 = bitcast i64* %488 to <2 x i64>*
  store <2 x i64> %broadcast.splat551, <2 x i64>* %489, align 8
  %490 = getelementptr i64, i64* %488, i64 2
  %491 = bitcast i64* %490 to <2 x i64>*
  store <2 x i64> %broadcast.splat551, <2 x i64>* %491, align 8
  %index.next534.2 = add i64 %index533, 12
  %offset.idx539.3 = add i64 %i_edgePtr.10, %index.next534.2
  %492 = getelementptr inbounds i64, i64* %163, i64 %offset.idx539.3
  %493 = bitcast i64* %492 to <2 x i64>*
  store <2 x i64> %broadcast.splat549, <2 x i64>* %493, align 8
  %494 = getelementptr i64, i64* %492, i64 2
  %495 = bitcast i64* %494 to <2 x i64>*
  store <2 x i64> %broadcast.splat549, <2 x i64>* %495, align 8
  %496 = getelementptr inbounds i64, i64* %165, i64 %offset.idx539.3
  %497 = bitcast i64* %496 to <2 x i64>*
  store <2 x i64> %broadcast.splat551, <2 x i64>* %497, align 8
  %498 = getelementptr i64, i64* %496, i64 2
  %499 = bitcast i64* %498 to <2 x i64>*
  store <2 x i64> %broadcast.splat551, <2 x i64>* %499, align 8
  %index.next534.3 = add i64 %index533, 16
  %500 = icmp eq i64 %index.next534.3, %n.vec530
  br i1 %500, label %middle.block525.unr-lcssa, label %vector.body524, !llvm.loop !13

middle.block525.unr-lcssa:                        ; preds = %vector.body524
  br label %middle.block525

middle.block525:                                  ; preds = %vector.ph532.split, %middle.block525.unr-lcssa
  %cmp.n538 = icmp eq i64 %455, %n.vec530
  br i1 %cmp.n538, label %.loopexit27.loopexit, label %.lr.ph154.preheader613

.lr.ph154.preheader613:                           ; preds = %middle.block525, %min.iters.checked528, %.lr.ph154.preheader
  %i_edgePtr.11152.ph = phi i64 [ %i_edgePtr.10, %min.iters.checked528 ], [ %i_edgePtr.10, %.lr.ph154.preheader ], [ %ind.end536, %middle.block525 ]
  %j19.0151.ph = phi i64 [ 0, %min.iters.checked528 ], [ 0, %.lr.ph154.preheader ], [ %n.vec530, %middle.block525 ]
  br label %.lr.ph154

.lr.ph154:                                        ; preds = %.lr.ph154.preheader613, %.lr.ph154
  %i_edgePtr.11152 = phi i64 [ %503, %.lr.ph154 ], [ %i_edgePtr.11152.ph, %.lr.ph154.preheader613 ]
  %j19.0151 = phi i64 [ %504, %.lr.ph154 ], [ %j19.0151.ph, %.lr.ph154.preheader613 ]
  %501 = getelementptr inbounds i64, i64* %163, i64 %i_edgePtr.11152
  store i64 %i.9164, i64* %501, align 8
  %502 = getelementptr inbounds i64, i64* %165, i64 %i_edgePtr.11152
  store i64 %425, i64* %502, align 8
  %503 = add nsw i64 %i_edgePtr.11152, 1
  %504 = add nuw nsw i64 %j19.0151, 1
  %exitcond311 = icmp eq i64 %504, %452
  br i1 %exitcond311, label %.loopexit27.loopexit.loopexit, label %.lr.ph154, !llvm.loop !14

.loopexit27.loopexit.loopexit:                    ; preds = %.lr.ph154
  br label %.loopexit27.loopexit

.loopexit27.loopexit:                             ; preds = %.loopexit27.loopexit.loopexit, %middle.block525
  %505 = add i64 %454, %451
  br label %.loopexit27

.loopexit27:                                      ; preds = %.loopexit27.loopexit, %448, %.loopexit28, %.loopexit32
  %i_edgePtr.12 = phi i64 [ %i_edgePtr.10, %.loopexit28 ], [ %i_edgePtr.10, %.loopexit32 ], [ %i_edgePtr.10, %448 ], [ %505, %.loopexit27.loopexit ]
  %506 = shl i64 %d.0156, 1
  %507 = fmul float %p.0157, 5.000000e-01
  %508 = load i64, i64* @TOT_VERTICES, align 8
  %509 = icmp ult i64 %506, %508
  br i1 %509, label %.lr.ph160, label %._crit_edge161.loopexit

._crit_edge161.loopexit:                          ; preds = %.loopexit27
  %.lcssa788 = phi i64 [ %508, %.loopexit27 ]
  %i_edgePtr.12.lcssa = phi i64 [ %i_edgePtr.12, %.loopexit27 ]
  br label %._crit_edge161

._crit_edge161:                                   ; preds = %._crit_edge161.loopexit, %.loopexit37
  %510 = phi i64 [ %301, %.loopexit37 ], [ %.lcssa788, %._crit_edge161.loopexit ]
  %i_edgePtr.8.lcssa = phi i64 [ %i_edgePtr.7163, %.loopexit37 ], [ %i_edgePtr.12.lcssa, %._crit_edge161.loopexit ]
  %511 = add nuw nsw i64 %i.9164, 1
  %512 = icmp ult i64 %511, %510
  br i1 %512, label %.preheader38, label %.preheader26

._crit_edge145:                                   ; preds = %.preheader42, %.lr.ph144.preheader, %.preheader26
  %i_edgePtr.7.lcssa341 = phi i64 [ %i_edgePtr.8.lcssa.lcssa, %.lr.ph144.preheader ], [ 0, %.preheader26 ], [ 0, %.preheader42 ]
  %513 = add i64 %i_edgePtr.7.lcssa341, %i_edgePtr.0.lcssa
  %514 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %SDGdataPtr, i64 0, i32 4
  store i64 %513, i64* %514, align 8
  %puts = tail call i32 @puts(i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @str.1, i64 0, i64 0))
  %515 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i64 %i_edgePtr.0.lcssa)
  %516 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i64 %i_edgePtr.7.lcssa341)
  %517 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i64 %513)
  tail call void @free(i8* %55) #6
  tail call void @free(i8* %72) #6
  tail call void @free(i8* %67) #6
  tail call void @free(i8* %162) #6
  tail call void @free(i8* %164) #6
  %518 = shl i64 %513, 3
  %519 = tail call noalias i8* @malloc(i64 %518) #6
  %520 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %SDGdataPtr, i64 0, i32 2
  %521 = bitcast i64** %520 to i8**
  store i8* %519, i8** %521, align 8
  %522 = icmp eq i8* %519, null
  br i1 %522, label %523, label %524

; <label>:523                                     ; preds = %._crit_edge145
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 563, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #8
  unreachable

; <label>:524                                     ; preds = %._crit_edge145
  %525 = load float, float* @PERC_INT_WEIGHTS, align 4
  %526 = icmp eq i64 %513, 0
  br i1 %526, label %._crit_edge137, label %.lr.ph141.preheader

.lr.ph141.preheader:                              ; preds = %524
  br label %.lr.ph141

.preheader25:                                     ; preds = %551
  %numStrWtEdges.1.lcssa = phi i64 [ %numStrWtEdges.1, %551 ]
  br i1 %526, label %._crit_edge137, label %.lr.ph136.preheader

.lr.ph136.preheader:                              ; preds = %.preheader25
  %527 = add i64 %i_edgePtr.7.lcssa341, %i_edgePtr.0.lcssa
  %xtraiter706 = and i64 %527, 1
  %lcmp.mod707 = icmp eq i64 %xtraiter706, 0
  br i1 %lcmp.mod707, label %.lr.ph136.preheader.split, label %.lr.ph136.prol

.lr.ph136.prol:                                   ; preds = %.lr.ph136.preheader
  %528 = load i64*, i64** %520, align 8
  %529 = load i64, i64* %528, align 8
  %530 = icmp slt i64 %529, 0
  br i1 %530, label %531, label %532

; <label>:531                                     ; preds = %.lr.ph136.prol
  store i64 0, i64* %528, align 8
  br label %532

; <label>:532                                     ; preds = %531, %.lr.ph136.prol
  %t21.1.prol = phi i64 [ 1, %531 ], [ 0, %.lr.ph136.prol ]
  br label %.lr.ph136.preheader.split

.lr.ph136.preheader.split:                        ; preds = %.lr.ph136.preheader, %532
  %i.12135.unr = phi i64 [ 0, %.lr.ph136.preheader ], [ 1, %532 ]
  %t21.0134.unr = phi i64 [ 0, %.lr.ph136.preheader ], [ %t21.1.prol, %532 ]
  %533 = icmp eq i64 %527, 1
  br i1 %533, label %._crit_edge137.loopexit, label %.lr.ph136.preheader.split.split

.lr.ph136.preheader.split.split:                  ; preds = %.lr.ph136.preheader.split
  br label %.lr.ph136

.lr.ph141:                                        ; preds = %.lr.ph141.preheader, %551
  %i.11139 = phi i64 [ %552, %551 ], [ 0, %.lr.ph141.preheader ]
  %numStrWtEdges.0138 = phi i64 [ %numStrWtEdges.1, %551 ], [ 0, %.lr.ph141.preheader ]
  %534 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %535 = urem i64 %534, 1000
  %536 = uitofp i64 %535 to float
  %537 = fdiv float %536, 1.000000e+03
  %538 = fcmp ugt float %537, %525
  br i1 %538, label %547, label %539

; <label>:539                                     ; preds = %.lr.ph141
  %540 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %541 = load i64, i64* @MAX_INT_WEIGHT, align 8
  %542 = add i64 %541, -1
  %543 = urem i64 %540, %542
  %544 = add i64 %543, 1
  %545 = load i64*, i64** %520, align 8
  %546 = getelementptr inbounds i64, i64* %545, i64 %i.11139
  store i64 %544, i64* %546, align 8
  br label %551

; <label>:547                                     ; preds = %.lr.ph141
  %548 = load i64*, i64** %520, align 8
  %549 = getelementptr inbounds i64, i64* %548, i64 %i.11139
  store i64 -1, i64* %549, align 8
  %550 = add i64 %numStrWtEdges.0138, 1
  br label %551

; <label>:551                                     ; preds = %539, %547
  %numStrWtEdges.1 = phi i64 [ %numStrWtEdges.0138, %539 ], [ %550, %547 ]
  %552 = add nuw nsw i64 %i.11139, 1
  %exitcond308 = icmp eq i64 %552, %513
  br i1 %exitcond308, label %.preheader25, label %.lr.ph141

.lr.ph136:                                        ; preds = %878, %.lr.ph136.preheader.split.split
  %i.12135 = phi i64 [ %i.12135.unr, %.lr.ph136.preheader.split.split ], [ %879, %878 ]
  %t21.0134 = phi i64 [ %t21.0134.unr, %.lr.ph136.preheader.split.split ], [ %t21.1.1, %878 ]
  %553 = load i64*, i64** %520, align 8
  %554 = getelementptr inbounds i64, i64* %553, i64 %i.12135
  %555 = load i64, i64* %554, align 8
  %556 = icmp slt i64 %555, 0
  br i1 %556, label %557, label %.lr.ph136.1708

; <label>:557                                     ; preds = %.lr.ph136
  %558 = sub nsw i64 0, %t21.0134
  store i64 %558, i64* %554, align 8
  %559 = add nsw i64 %t21.0134, 1
  br label %.lr.ph136.1708

.lr.ph136.1708:                                   ; preds = %.lr.ph136, %557
  %t21.1 = phi i64 [ %559, %557 ], [ %t21.0134, %.lr.ph136 ]
  %560 = add nuw nsw i64 %i.12135, 1
  %561 = load i64*, i64** %520, align 8
  %562 = getelementptr inbounds i64, i64* %561, i64 %560
  %563 = load i64, i64* %562, align 8
  %564 = icmp slt i64 %563, 0
  br i1 %564, label %875, label %878

._crit_edge137.loopexit.unr-lcssa:                ; preds = %878
  br label %._crit_edge137.loopexit

._crit_edge137.loopexit:                          ; preds = %.lr.ph136.preheader.split, %._crit_edge137.loopexit.unr-lcssa
  br label %._crit_edge137

._crit_edge137:                                   ; preds = %._crit_edge137.loopexit, %524, %.preheader25
  %numStrWtEdges.0.lcssa342 = phi i64 [ %numStrWtEdges.1.lcssa, %.preheader25 ], [ 0, %524 ], [ %numStrWtEdges.1.lcssa, %._crit_edge137.loopexit ]
  %565 = load i64, i64* @MAX_STRLEN, align 8
  %566 = mul i64 %565, %numStrWtEdges.0.lcssa342
  %567 = tail call noalias i8* @malloc(i64 %566) #6
  %568 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %SDGdataPtr, i64 0, i32 3
  store i8* %567, i8** %568, align 8
  %569 = icmp eq i8* %567, null
  br i1 %569, label %570, label %.preheader24

.preheader24:                                     ; preds = %._crit_edge137
  %.pre330 = load i64, i64* @MAX_STRLEN, align 8
  br i1 %526, label %._crit_edge133, label %.lr.ph132.preheader

.lr.ph132.preheader:                              ; preds = %.preheader24
  br label %.lr.ph132

; <label>:570                                     ; preds = %._crit_edge137
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 589, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #8
  unreachable

.lr.ph132:                                        ; preds = %.lr.ph132.preheader, %.loopexit23
  %571 = phi i64 [ %592, %.loopexit23 ], [ %.pre330, %.lr.ph132.preheader ]
  %i.13131 = phi i64 [ %593, %.loopexit23 ], [ 0, %.lr.ph132.preheader ]
  %572 = load i64*, i64** %520, align 8
  %573 = getelementptr inbounds i64, i64* %572, i64 %i.13131
  %574 = load i64, i64* %573, align 8
  %575 = icmp slt i64 %574, 1
  %576 = icmp sgt i64 %571, 0
  %or.cond = and i1 %575, %576
  br i1 %or.cond, label %.lr.ph130.preheader, label %.loopexit23

.lr.ph130.preheader:                              ; preds = %.lr.ph132
  br label %.lr.ph130

.lr.ph130:                                        ; preds = %.lr.ph130.preheader, %.lr.ph130
  %j22.0129 = phi i64 [ %589, %.lr.ph130 ], [ 0, %.lr.ph130.preheader ]
  %577 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %578 = urem i64 %577, 127
  %579 = add nuw nsw i64 %578, 1
  %580 = trunc i64 %579 to i8
  %581 = load i64*, i64** %520, align 8
  %582 = getelementptr inbounds i64, i64* %581, i64 %i.13131
  %583 = load i64, i64* %582, align 8
  %584 = load i64, i64* @MAX_STRLEN, align 8
  %585 = mul i64 %584, %583
  %586 = sub i64 %j22.0129, %585
  %587 = load i8*, i8** %568, align 8
  %588 = getelementptr inbounds i8, i8* %587, i64 %586
  store i8 %580, i8* %588, align 1
  %589 = add nuw nsw i64 %j22.0129, 1
  %590 = load i64, i64* @MAX_STRLEN, align 8
  %591 = icmp slt i64 %589, %590
  br i1 %591, label %.lr.ph130, label %.loopexit23.loopexit

.loopexit23.loopexit:                             ; preds = %.lr.ph130
  %.lcssa729 = phi i64 [ %590, %.lr.ph130 ]
  br label %.loopexit23

.loopexit23:                                      ; preds = %.loopexit23.loopexit, %.lr.ph132
  %592 = phi i64 [ %571, %.lr.ph132 ], [ %.lcssa729, %.loopexit23.loopexit ]
  %593 = add nuw nsw i64 %i.13131, 1
  %exitcond306 = icmp eq i64 %593, %513
  br i1 %exitcond306, label %._crit_edge133.loopexit, label %.lr.ph132

._crit_edge133.loopexit:                          ; preds = %.loopexit23
  %.lcssa730 = phi i64 [ %592, %.loopexit23 ]
  br label %._crit_edge133

._crit_edge133:                                   ; preds = %._crit_edge133.loopexit, %.preheader24
  %594 = phi i64 [ %.pre330, %.preheader24 ], [ %.lcssa730, %._crit_edge133.loopexit ]
  %595 = load i8*, i8** @SOUGHT_STRING, align 8
  %596 = tail call i64 @strlen(i8* %595) #10
  %597 = icmp eq i64 %596, %594
  br i1 %597, label %602, label %598

; <label>:598                                     ; preds = %._crit_edge133
  %599 = tail call noalias i8* @malloc(i64 %594) #6
  store i8* %599, i8** @SOUGHT_STRING, align 8
  %600 = icmp eq i8* %599, null
  br i1 %600, label %601, label %602

; <label>:601                                     ; preds = %598
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 607, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #8
  unreachable

; <label>:602                                     ; preds = %598, %._crit_edge133
  %603 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %604 = urem i64 %603, %numStrWtEdges.0.lcssa342
  %605 = load i64, i64* @MAX_STRLEN, align 8
  %606 = icmp sgt i64 %605, 0
  br i1 %606, label %.lr.ph128.preheader, label %.preheader21

.lr.ph128.preheader:                              ; preds = %602
  br label %.lr.ph128

.preheader21.loopexit:                            ; preds = %.lr.ph128
  br label %.preheader21

.preheader21:                                     ; preds = %.preheader21.loopexit, %602
  br i1 %526, label %._crit_edge125, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %.preheader21
  %607 = add i64 %i_edgePtr.7.lcssa341, %i_edgePtr.0.lcssa
  %xtraiter704 = and i64 %607, 1
  %lcmp.mod705 = icmp eq i64 %xtraiter704, 0
  br i1 %lcmp.mod705, label %.lr.ph124.preheader.split, label %.lr.ph124.prol

.lr.ph124.prol:                                   ; preds = %.lr.ph124.preheader
  %608 = load i64, i64* %startVertex.0, align 8
  %609 = getelementptr inbounds i64, i64* %8, i64 %608
  %610 = load i64, i64* %609, align 8
  store i64 %610, i64* %startVertex.0, align 8
  %611 = load i64, i64* %endVertex.0, align 8
  %612 = getelementptr inbounds i64, i64* %8, i64 %611
  %613 = load i64, i64* %612, align 8
  store i64 %613, i64* %endVertex.0, align 8
  br label %.lr.ph124.preheader.split

.lr.ph124.preheader.split:                        ; preds = %.lr.ph124.preheader, %.lr.ph124.prol
  %i.14123.unr = phi i64 [ 0, %.lr.ph124.preheader ], [ 1, %.lr.ph124.prol ]
  %614 = icmp eq i64 %607, 1
  br i1 %614, label %._crit_edge125.loopexit, label %.lr.ph124.preheader.split.split

.lr.ph124.preheader.split.split:                  ; preds = %.lr.ph124.preheader.split
  br label %.lr.ph124

.lr.ph128:                                        ; preds = %.lr.ph128.preheader, %.lr.ph128
  %615 = phi i64 [ %624, %.lr.ph128 ], [ %605, %.lr.ph128.preheader ]
  %j23.0126 = phi i64 [ %623, %.lr.ph128 ], [ 0, %.lr.ph128.preheader ]
  %616 = mul nsw i64 %615, %604
  %617 = add nsw i64 %616, %j23.0126
  %618 = load i8*, i8** %568, align 8
  %619 = getelementptr inbounds i8, i8* %618, i64 %617
  %620 = load i8, i8* %619, align 1
  %621 = load i8*, i8** @SOUGHT_STRING, align 8
  %622 = getelementptr inbounds i8, i8* %621, i64 %j23.0126
  store i8 %620, i8* %622, align 1
  %623 = add nuw nsw i64 %j23.0126, 1
  %624 = load i64, i64* @MAX_STRLEN, align 8
  %625 = icmp slt i64 %623, %624
  br i1 %625, label %.lr.ph128, label %.preheader21.loopexit

.lr.ph124:                                        ; preds = %.lr.ph124, %.lr.ph124.preheader.split.split
  %i.14123 = phi i64 [ %i.14123.unr, %.lr.ph124.preheader.split.split ], [ %643, %.lr.ph124 ]
  %626 = getelementptr inbounds i64, i64* %startVertex.0, i64 %i.14123
  %627 = load i64, i64* %626, align 8
  %628 = getelementptr inbounds i64, i64* %8, i64 %627
  %629 = load i64, i64* %628, align 8
  store i64 %629, i64* %626, align 8
  %630 = getelementptr inbounds i64, i64* %endVertex.0, i64 %i.14123
  %631 = load i64, i64* %630, align 8
  %632 = getelementptr inbounds i64, i64* %8, i64 %631
  %633 = load i64, i64* %632, align 8
  store i64 %633, i64* %630, align 8
  %634 = add nuw nsw i64 %i.14123, 1
  %635 = getelementptr inbounds i64, i64* %startVertex.0, i64 %634
  %636 = load i64, i64* %635, align 8
  %637 = getelementptr inbounds i64, i64* %8, i64 %636
  %638 = load i64, i64* %637, align 8
  store i64 %638, i64* %635, align 8
  %639 = getelementptr inbounds i64, i64* %endVertex.0, i64 %634
  %640 = load i64, i64* %639, align 8
  %641 = getelementptr inbounds i64, i64* %8, i64 %640
  %642 = load i64, i64* %641, align 8
  store i64 %642, i64* %639, align 8
  %643 = add nsw i64 %i.14123, 2
  %exitcond305.1 = icmp eq i64 %643, %513
  br i1 %exitcond305.1, label %._crit_edge125.loopexit.unr-lcssa, label %.lr.ph124

._crit_edge125.loopexit.unr-lcssa:                ; preds = %.lr.ph124
  br label %._crit_edge125.loopexit

._crit_edge125.loopexit:                          ; preds = %.lr.ph124.preheader.split, %._crit_edge125.loopexit.unr-lcssa
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %._crit_edge125.loopexit, %.preheader21
  %644 = tail call noalias i8* @malloc(i64 %518) #6
  %645 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %SDGdataPtr, i64 0, i32 0
  %646 = bitcast %struct.graphSDG* %SDGdataPtr to i8**
  store i8* %644, i8** %646, align 8
  %647 = icmp eq i8* %644, null
  %648 = bitcast i8* %644 to i64*
  br i1 %647, label %649, label %650

; <label>:649                                     ; preds = %._crit_edge125
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 636, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #8
  unreachable

; <label>:650                                     ; preds = %._crit_edge125
  %651 = tail call noalias i8* @malloc(i64 %518) #6
  %652 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %SDGdataPtr, i64 0, i32 1
  %653 = bitcast i64** %652 to i8**
  store i8* %651, i8** %653, align 8
  %654 = icmp eq i8* %651, null
  br i1 %654, label %655, label %656

; <label>:655                                     ; preds = %650
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 638, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #8
  unreachable

; <label>:656                                     ; preds = %650
  %657 = bitcast i8* %651 to i64*
  tail call void @all_radixsort_node_aux_s3_seq(i64 %513, i64* %startVertex.0, i64* %648, i64* %endVertex.0, i64* %657) #6
  tail call void @free(i8* %startVertex.0.in) #6
  tail call void @free(i8* %endVertex.0.in) #6
  %658 = load i64, i64* @SCALE, align 8
  %659 = icmp slt i64 %658, 12
  br i1 %659, label %.preheader14, label %758

.preheader14:                                     ; preds = %656
  br i1 %526, label %.loopexit15, label %.preheader13.lr.ph.preheader

.preheader13.lr.ph.preheader:                     ; preds = %.preheader14
  %660 = add i64 %i_edgePtr.7.lcssa341, %i_edgePtr.0.lcssa
  %661 = add i64 %660, 1
  %662 = add i64 %i_edgePtr.7.lcssa341, %i_edgePtr.0.lcssa
  %663 = add i64 %662, -2
  br label %.preheader13.lr.ph

._crit_edge97:                                    ; preds = %.preheader13.lr.ph
  %664 = load i64*, i64** %645, align 8
  %665 = getelementptr inbounds i64, i64* %664, i64 %i1.0.ph105
  %666 = load i64, i64* %665, align 8
  %667 = load i64, i64* @TOT_VERTICES, align 8
  %668 = add i64 %667, -1
  %669 = icmp eq i64 %666, %668
  br i1 %669, label %.loopexit15.loopexit607, label %.outer.loopexit

.outer.loopexit.loopexit:                         ; preds = %._crit_edge97.us
  %i1.1.us.lcssa = phi i64 [ %i1.1.us, %._crit_edge97.us ]
  %i.16.lcssa.us.lcssa = phi i64 [ %i.16.lcssa.us, %._crit_edge97.us ]
  br label %.outer.loopexit

.outer.loopexit:                                  ; preds = %.outer.loopexit.loopexit, %._crit_edge97
  %i1.1.lcssa = phi i64 [ %i1.0.ph105, %._crit_edge97 ], [ %i1.1.us.lcssa, %.outer.loopexit.loopexit ]
  %i.16.lcssa.lcssa = phi i64 [ %i1.0.ph105, %._crit_edge97 ], [ %i.16.lcssa.us.lcssa, %.outer.loopexit.loopexit ]
  %670 = icmp ult i64 %i.16.lcssa.lcssa, %513
  br i1 %670, label %.preheader13.lr.ph, label %.loopexit15.loopexit607

.preheader13.lr.ph:                               ; preds = %.preheader13.lr.ph.preheader, %.outer.loopexit
  %i1.0.ph105 = phi i64 [ %i1.1.lcssa, %.outer.loopexit ], [ 0, %.preheader13.lr.ph.preheader ]
  %671 = icmp ult i64 %i1.0.ph105, %513
  br i1 %671, label %.lr.ph.us.preheader, label %._crit_edge97

.lr.ph.us.preheader:                              ; preds = %.preheader13.lr.ph
  %672 = xor i64 %i1.0.ph105, 1
  %673 = sub i64 -2, %i1.0.ph105
  %674 = sub i64 %661, %i1.0.ph105
  %675 = sub i64 %663, %i1.0.ph105
  br label %.lr.ph.us

; <label>:676                                     ; preds = %.lr.ph.us, %751
  %i.1686.us = phi i64 [ %i1.0.ph105, %.lr.ph.us ], [ %752, %751 ]
  %677 = getelementptr inbounds i64, i64* %755, i64 %i.1686.us
  %678 = load i64, i64* %677, align 8
  %679 = icmp eq i64 %678, %757
  br i1 %679, label %751, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %751, %676
  %i.16.lcssa.us = phi i64 [ %i.1686.us, %676 ], [ %752, %751 ]
  %i1.1.us = phi i64 [ %i.1686.us, %676 ], [ %i1.0103.us, %751 ]
  %680 = icmp slt i64 %i1.0.ph105, %i1.1.us
  br i1 %680, label %.lr.ph96.us.preheader, label %._crit_edge97.us

.lr.ph96.us.preheader:                            ; preds = %._crit_edge.us
  %681 = add i64 %i1.1.us, %672
  %682 = add i64 %673, %i1.1.us
  br label %.lr.ph96.us

._crit_edge97.us.loopexit:                        ; preds = %.loopexit11.us
  %.pre339 = load i64*, i64** %645, align 8
  br label %._crit_edge97.us

._crit_edge97.us:                                 ; preds = %._crit_edge97.us.loopexit, %._crit_edge.us
  %683 = phi i64* [ %.pre339, %._crit_edge97.us.loopexit ], [ %755, %._crit_edge.us ]
  %684 = getelementptr inbounds i64, i64* %683, i64 %i1.0.ph105
  %685 = load i64, i64* %684, align 8
  %686 = load i64, i64* @TOT_VERTICES, align 8
  %687 = add i64 %686, -1
  %688 = icmp eq i64 %685, %687
  br i1 %688, label %.lr.ph102.us.preheader, label %.outer.loopexit.loopexit

.lr.ph102.us.preheader:                           ; preds = %._crit_edge97.us
  br label %.lr.ph102.us

.lr.ph102.us:                                     ; preds = %.lr.ph102.us.preheader, %.loopexit.us
  %indvar691 = phi i64 [ 0, %.lr.ph102.us.preheader ], [ %indvar.next692, %.loopexit.us ]
  %j26.0101.us = phi i64 [ %i1.0.ph105, %.lr.ph102.us.preheader ], [ %689, %.loopexit.us ]
  %689 = add nuw nsw i64 %j26.0101.us, 1
  %690 = icmp ult i64 %689, %513
  br i1 %690, label %.lr.ph100.us.preheader, label %.loopexit.us

.lr.ph100.us.preheader:                           ; preds = %.lr.ph102.us
  %691 = sub i64 %674, %indvar691
  %xtraiter693 = and i64 %691, 1
  %lcmp.mod694 = icmp eq i64 %xtraiter693, 0
  br i1 %lcmp.mod694, label %.lr.ph100.us.preheader.split, label %.lr.ph100.us.prol

.lr.ph100.us.prol:                                ; preds = %.lr.ph100.us.preheader
  %692 = load i64*, i64** %652, align 8
  %693 = getelementptr inbounds i64, i64* %692, i64 %689
  %694 = load i64, i64* %693, align 8
  %695 = getelementptr inbounds i64, i64* %692, i64 %j26.0101.us
  %696 = load i64, i64* %695, align 8
  %697 = icmp ult i64 %694, %696
  br i1 %697, label %698, label %701

; <label>:698                                     ; preds = %.lr.ph100.us.prol
  store i64 %694, i64* %695, align 8
  %699 = load i64*, i64** %652, align 8
  %700 = getelementptr inbounds i64, i64* %699, i64 %689
  store i64 %696, i64* %700, align 8
  br label %701

; <label>:701                                     ; preds = %698, %.lr.ph100.us.prol
  %702 = add nsw i64 %j26.0101.us, 2
  br label %.lr.ph100.us.preheader.split

.lr.ph100.us.preheader.split:                     ; preds = %.lr.ph100.us.preheader, %701
  %k27.098.us.unr = phi i64 [ %689, %.lr.ph100.us.preheader ], [ %702, %701 ]
  %703 = icmp eq i64 %675, %indvar691
  br i1 %703, label %.loopexit.us.loopexit, label %.lr.ph100.us.preheader.split.split

.lr.ph100.us.preheader.split.split:               ; preds = %.lr.ph100.us.preheader.split
  br label %.lr.ph100.us

.lr.ph100.us:                                     ; preds = %867, %.lr.ph100.us.preheader.split.split
  %k27.098.us = phi i64 [ %k27.098.us.unr, %.lr.ph100.us.preheader.split.split ], [ %868, %867 ]
  %704 = load i64*, i64** %652, align 8
  %705 = getelementptr inbounds i64, i64* %704, i64 %k27.098.us
  %706 = load i64, i64* %705, align 8
  %707 = getelementptr inbounds i64, i64* %704, i64 %j26.0101.us
  %708 = load i64, i64* %707, align 8
  %709 = icmp ult i64 %706, %708
  br i1 %709, label %710, label %.lr.ph100.us.1695

; <label>:710                                     ; preds = %.lr.ph100.us
  store i64 %706, i64* %707, align 8
  %711 = load i64*, i64** %652, align 8
  %712 = getelementptr inbounds i64, i64* %711, i64 %k27.098.us
  store i64 %708, i64* %712, align 8
  br label %.lr.ph100.us.1695

.lr.ph100.us.1695:                                ; preds = %710, %.lr.ph100.us
  %713 = add nsw i64 %k27.098.us, 1
  %714 = load i64*, i64** %652, align 8
  %715 = getelementptr inbounds i64, i64* %714, i64 %713
  %716 = load i64, i64* %715, align 8
  %717 = getelementptr inbounds i64, i64* %714, i64 %j26.0101.us
  %718 = load i64, i64* %717, align 8
  %719 = icmp ult i64 %716, %718
  br i1 %719, label %864, label %867

.lr.ph96.us:                                      ; preds = %.lr.ph96.us.preheader, %.loopexit11.us
  %indvar = phi i64 [ 0, %.lr.ph96.us.preheader ], [ %indvar.next, %.loopexit11.us ]
  %j24.094.us = phi i64 [ %i1.0.ph105, %.lr.ph96.us.preheader ], [ %720, %.loopexit11.us ]
  %720 = add nsw i64 %j24.094.us, 1
  %721 = icmp slt i64 %720, %i1.1.us
  br i1 %721, label %.lr.ph93.us.preheader, label %.loopexit11.us

.lr.ph93.us.preheader:                            ; preds = %.lr.ph96.us
  %722 = sub i64 %681, %indvar
  %xtraiter = and i64 %722, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph93.us.preheader.split, label %.lr.ph93.us.prol

.lr.ph93.us.prol:                                 ; preds = %.lr.ph93.us.preheader
  %723 = load i64*, i64** %652, align 8
  %724 = getelementptr inbounds i64, i64* %723, i64 %720
  %725 = load i64, i64* %724, align 8
  %726 = getelementptr inbounds i64, i64* %723, i64 %j24.094.us
  %727 = load i64, i64* %726, align 8
  %728 = icmp ult i64 %725, %727
  br i1 %728, label %729, label %732

; <label>:729                                     ; preds = %.lr.ph93.us.prol
  store i64 %725, i64* %726, align 8
  %730 = load i64*, i64** %652, align 8
  %731 = getelementptr inbounds i64, i64* %730, i64 %720
  store i64 %727, i64* %731, align 8
  br label %732

; <label>:732                                     ; preds = %729, %.lr.ph93.us.prol
  %733 = add nsw i64 %j24.094.us, 2
  br label %.lr.ph93.us.preheader.split

.lr.ph93.us.preheader.split:                      ; preds = %.lr.ph93.us.preheader, %732
  %k.091.us.unr = phi i64 [ %720, %.lr.ph93.us.preheader ], [ %733, %732 ]
  %734 = icmp eq i64 %682, %indvar
  br i1 %734, label %.loopexit11.us.loopexit, label %.lr.ph93.us.preheader.split.split

.lr.ph93.us.preheader.split.split:                ; preds = %.lr.ph93.us.preheader.split
  br label %.lr.ph93.us

.lr.ph93.us:                                      ; preds = %862, %.lr.ph93.us.preheader.split.split
  %k.091.us = phi i64 [ %k.091.us.unr, %.lr.ph93.us.preheader.split.split ], [ %863, %862 ]
  %735 = load i64*, i64** %652, align 8
  %736 = getelementptr inbounds i64, i64* %735, i64 %k.091.us
  %737 = load i64, i64* %736, align 8
  %738 = getelementptr inbounds i64, i64* %735, i64 %j24.094.us
  %739 = load i64, i64* %738, align 8
  %740 = icmp ult i64 %737, %739
  br i1 %740, label %741, label %.lr.ph93.us.1690

; <label>:741                                     ; preds = %.lr.ph93.us
  store i64 %737, i64* %738, align 8
  %742 = load i64*, i64** %652, align 8
  %743 = getelementptr inbounds i64, i64* %742, i64 %k.091.us
  store i64 %739, i64* %743, align 8
  br label %.lr.ph93.us.1690

.lr.ph93.us.1690:                                 ; preds = %741, %.lr.ph93.us
  %744 = add nsw i64 %k.091.us, 1
  %745 = load i64*, i64** %652, align 8
  %746 = getelementptr inbounds i64, i64* %745, i64 %744
  %747 = load i64, i64* %746, align 8
  %748 = getelementptr inbounds i64, i64* %745, i64 %j24.094.us
  %749 = load i64, i64* %748, align 8
  %750 = icmp ult i64 %747, %749
  br i1 %750, label %859, label %862

; <label>:751                                     ; preds = %676
  %752 = add nuw nsw i64 %i.1686.us, 1
  %753 = icmp ult i64 %752, %513
  br i1 %753, label %676, label %._crit_edge.us

.loopexit.us.loopexit.unr-lcssa:                  ; preds = %867
  br label %.loopexit.us.loopexit

.loopexit.us.loopexit:                            ; preds = %.lr.ph100.us.preheader.split, %.loopexit.us.loopexit.unr-lcssa
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.loopexit.us.loopexit, %.lr.ph102.us
  %exitcond303 = icmp eq i64 %689, %513
  %indvar.next692 = add i64 %indvar691, 1
  br i1 %exitcond303, label %.loopexit12.us, label %.lr.ph102.us

.loopexit11.us.loopexit.unr-lcssa:                ; preds = %862
  br label %.loopexit11.us.loopexit

.loopexit11.us.loopexit:                          ; preds = %.lr.ph93.us.preheader.split, %.loopexit11.us.loopexit.unr-lcssa
  br label %.loopexit11.us

.loopexit11.us:                                   ; preds = %.loopexit11.us.loopexit, %.lr.ph96.us
  %exitcond301 = icmp eq i64 %720, %i1.1.us
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond301, label %._crit_edge97.us.loopexit, label %.lr.ph96.us

.loopexit12.us:                                   ; preds = %.loopexit.us
  %754 = icmp ult i64 %i.16.lcssa.us, %513
  br i1 %754, label %.lr.ph.us, label %.loopexit15.loopexit

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.loopexit12.us
  %i1.0103.us = phi i64 [ %i1.1.us, %.loopexit12.us ], [ %i1.0.ph105, %.lr.ph.us.preheader ]
  %755 = load i64*, i64** %645, align 8
  %756 = getelementptr inbounds i64, i64* %755, i64 %i1.0103.us
  %757 = load i64, i64* %756, align 8
  br label %676

; <label>:758                                     ; preds = %656
  %759 = load i64, i64* @TOT_VERTICES, align 8
  %760 = shl i64 %759, 3
  %761 = add i64 %760, 8
  %762 = tail call noalias i8* @malloc(i64 %761) #6
  %763 = bitcast i8* %762 to i64*
  store i64 0, i64* %763, align 8
  %764 = getelementptr inbounds i64, i64* %763, i64 %759
  store i64 %513, i64* %764, align 8
  %765 = icmp eq i64 %759, 0
  br i1 %765, label %._crit_edge115, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %758
  br label %.lr.ph120

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %.outer20
  %i.17.ph122 = phi i64 [ %.lcssa, %.outer20 ], [ 0, %.lr.ph120.preheader ]
  %i029.0.ph121 = phi i64 [ %j30.0116.us.us.lcssa, %.outer20 ], [ 0, %.lr.ph120.preheader ]
  %766 = icmp ult i64 %i029.0.ph121, %513
  %.phi.trans.insert333 = getelementptr inbounds i64, i64* %763, i64 %i.17.ph122
  %.pre334 = load i64, i64* %.phi.trans.insert333, align 8
  br i1 %766, label %.lr.ph120.split.us.preheader, label %.lr.ph120.split.preheader

.lr.ph120.split.us.preheader:                     ; preds = %.lr.ph120
  %.pre335 = load i64*, i64** %645, align 8
  %.phi.trans.insert336 = getelementptr inbounds i64, i64* %.pre335, i64 %i029.0.ph121
  %.pre337 = load i64, i64* %.phi.trans.insert336, align 8
  br label %.lr.ph120.split.us

.lr.ph120.split.preheader:                        ; preds = %.lr.ph120
  %.pre334.lcssa = phi i64 [ %.pre334, %.lr.ph120 ]
  %i.17.ph122.lcssa = phi i64 [ %i.17.ph122, %.lr.ph120 ]
  %767 = add i64 %i.17.ph122.lcssa, 1
  %768 = icmp ugt i64 %759, %767
  %umax = select i1 %768, i64 %759, i64 %767
  %769 = sub i64 %umax, %i.17.ph122.lcssa
  %min.iters.check587 = icmp ult i64 %769, 4
  br i1 %min.iters.check587, label %.lr.ph120.split.preheader608, label %min.iters.checked588

.lr.ph120.split.preheader608:                     ; preds = %middle.block585, %min.iters.checked588, %.lr.ph120.split.preheader
  %i.17119.ph = phi i64 [ %i.17.ph122.lcssa, %min.iters.checked588 ], [ %i.17.ph122.lcssa, %.lr.ph120.split.preheader ], [ %ind.end596, %middle.block585 ]
  br label %.lr.ph120.split

min.iters.checked588:                             ; preds = %.lr.ph120.split.preheader
  %n.vec590 = and i64 %769, -4
  %cmp.zero591 = icmp eq i64 %n.vec590, 0
  %ind.end596 = add i64 %i.17.ph122.lcssa, %n.vec590
  br i1 %cmp.zero591, label %.lr.ph120.split.preheader608, label %vector.ph592

vector.ph592:                                     ; preds = %min.iters.checked588
  %broadcast.splatinsert603 = insertelement <2 x i64> undef, i64 %.pre334.lcssa, i32 0
  %broadcast.splat604 = shufflevector <2 x i64> %broadcast.splatinsert603, <2 x i64> undef, <2 x i32> zeroinitializer
  %770 = add i64 %i.17.ph122.lcssa, 1
  %771 = icmp ugt i64 %759, %770
  %umax701 = select i1 %771, i64 %759, i64 %770
  %772 = sub i64 %umax701, %i.17.ph122.lcssa
  %773 = add i64 %772, -4
  %774 = lshr i64 %773, 2
  %775 = add nuw nsw i64 %774, 1
  %xtraiter702 = and i64 %775, 3
  %lcmp.mod703 = icmp eq i64 %xtraiter702, 0
  br i1 %lcmp.mod703, label %vector.ph592.split, label %vector.body584.prol.preheader

vector.body584.prol.preheader:                    ; preds = %vector.ph592
  br label %vector.body584.prol

vector.body584.prol:                              ; preds = %vector.body584.prol.preheader, %vector.body584.prol
  %index593.prol = phi i64 [ %index.next594.prol, %vector.body584.prol ], [ 0, %vector.body584.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %vector.body584.prol ], [ %xtraiter702, %vector.body584.prol.preheader ]
  %offset.idx598.prol = add i64 %i.17.ph122.lcssa, %index593.prol
  %776 = add i64 %offset.idx598.prol, 1
  %777 = getelementptr inbounds i64, i64* %763, i64 %776
  %778 = bitcast i64* %777 to <2 x i64>*
  store <2 x i64> %broadcast.splat604, <2 x i64>* %778, align 8
  %779 = getelementptr i64, i64* %777, i64 2
  %780 = bitcast i64* %779 to <2 x i64>*
  store <2 x i64> %broadcast.splat604, <2 x i64>* %780, align 8
  %index.next594.prol = add i64 %index593.prol, 4
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %vector.ph592.split.loopexit, label %vector.body584.prol, !llvm.loop !15

vector.ph592.split.loopexit:                      ; preds = %vector.body584.prol
  %index.next594.prol.lcssa = phi i64 [ %index.next594.prol, %vector.body584.prol ]
  br label %vector.ph592.split

vector.ph592.split:                               ; preds = %vector.ph592.split.loopexit, %vector.ph592
  %index593.unr = phi i64 [ 0, %vector.ph592 ], [ %index.next594.prol.lcssa, %vector.ph592.split.loopexit ]
  %781 = icmp ult i64 %773, 12
  br i1 %781, label %middle.block585, label %vector.ph592.split.split

vector.ph592.split.split:                         ; preds = %vector.ph592.split
  br label %vector.body584

vector.body584:                                   ; preds = %vector.body584, %vector.ph592.split.split
  %index593 = phi i64 [ %index593.unr, %vector.ph592.split.split ], [ %index.next594.3, %vector.body584 ]
  %offset.idx598 = add i64 %i.17.ph122.lcssa, %index593
  %782 = add i64 %offset.idx598, 1
  %783 = getelementptr inbounds i64, i64* %763, i64 %782
  %784 = bitcast i64* %783 to <2 x i64>*
  store <2 x i64> %broadcast.splat604, <2 x i64>* %784, align 8
  %785 = getelementptr i64, i64* %783, i64 2
  %786 = bitcast i64* %785 to <2 x i64>*
  store <2 x i64> %broadcast.splat604, <2 x i64>* %786, align 8
  %index.next594 = add i64 %index593, 4
  %offset.idx598.1 = add i64 %i.17.ph122.lcssa, %index.next594
  %787 = add i64 %offset.idx598.1, 1
  %788 = getelementptr inbounds i64, i64* %763, i64 %787
  %789 = bitcast i64* %788 to <2 x i64>*
  store <2 x i64> %broadcast.splat604, <2 x i64>* %789, align 8
  %790 = getelementptr i64, i64* %788, i64 2
  %791 = bitcast i64* %790 to <2 x i64>*
  store <2 x i64> %broadcast.splat604, <2 x i64>* %791, align 8
  %index.next594.1 = add i64 %index593, 8
  %offset.idx598.2 = add i64 %i.17.ph122.lcssa, %index.next594.1
  %792 = add i64 %offset.idx598.2, 1
  %793 = getelementptr inbounds i64, i64* %763, i64 %792
  %794 = bitcast i64* %793 to <2 x i64>*
  store <2 x i64> %broadcast.splat604, <2 x i64>* %794, align 8
  %795 = getelementptr i64, i64* %793, i64 2
  %796 = bitcast i64* %795 to <2 x i64>*
  store <2 x i64> %broadcast.splat604, <2 x i64>* %796, align 8
  %index.next594.2 = add i64 %index593, 12
  %offset.idx598.3 = add i64 %i.17.ph122.lcssa, %index.next594.2
  %797 = add i64 %offset.idx598.3, 1
  %798 = getelementptr inbounds i64, i64* %763, i64 %797
  %799 = bitcast i64* %798 to <2 x i64>*
  store <2 x i64> %broadcast.splat604, <2 x i64>* %799, align 8
  %800 = getelementptr i64, i64* %798, i64 2
  %801 = bitcast i64* %800 to <2 x i64>*
  store <2 x i64> %broadcast.splat604, <2 x i64>* %801, align 8
  %index.next594.3 = add i64 %index593, 16
  %802 = icmp eq i64 %index.next594.3, %n.vec590
  br i1 %802, label %middle.block585.unr-lcssa, label %vector.body584, !llvm.loop !16

middle.block585.unr-lcssa:                        ; preds = %vector.body584
  br label %middle.block585

middle.block585:                                  ; preds = %vector.ph592.split, %middle.block585.unr-lcssa
  %cmp.n597 = icmp eq i64 %769, %n.vec590
  br i1 %cmp.n597, label %.preheader18, label %.lr.ph120.split.preheader608

.lr.ph120.split.us:                               ; preds = %.lr.ph120.split.us.preheader, %..loopexit19_crit_edge.us
  %i.17119.us = phi i64 [ %803, %..loopexit19_crit_edge.us ], [ %i.17.ph122, %.lr.ph120.split.us.preheader ]
  %803 = add nsw i64 %i.17119.us, 1
  %804 = getelementptr inbounds i64, i64* %763, i64 %803
  store i64 %.pre334, i64* %804, align 8
  %805 = icmp eq i64 %.pre337, %i.17119.us
  br i1 %805, label %.lr.ph118.split.us.us.preheader, label %..loopexit19_crit_edge.us

.lr.ph118.split.us.us.preheader:                  ; preds = %.lr.ph120.split.us
  br label %.lr.ph118.split.us.us

..loopexit19_crit_edge.us.loopexit:               ; preds = %810
  br label %..loopexit19_crit_edge.us

..loopexit19_crit_edge.us:                        ; preds = %..loopexit19_crit_edge.us.loopexit, %.lr.ph120.split.us
  %806 = icmp ult i64 %803, %759
  br i1 %806, label %.lr.ph120.split.us, label %.preheader18.loopexit609

.lr.ph118.split.us.us:                            ; preds = %.lr.ph118.split.us.us.preheader, %810
  %j30.0116.us.us = phi i64 [ %811, %810 ], [ %i029.0.ph121, %.lr.ph118.split.us.us.preheader ]
  %807 = getelementptr inbounds i64, i64* %.pre335, i64 %j30.0116.us.us
  %808 = load i64, i64* %807, align 8
  %809 = icmp eq i64 %808, %.pre337
  br i1 %809, label %810, label %.outer20

; <label>:810                                     ; preds = %.lr.ph118.split.us.us
  %811 = add nuw nsw i64 %j30.0116.us.us, 1
  %812 = icmp ult i64 %811, %513
  br i1 %812, label %.lr.ph118.split.us.us, label %..loopexit19_crit_edge.us.loopexit

.preheader18.loopexit:                            ; preds = %.lr.ph120.split
  br label %.preheader18

.preheader18.loopexit609:                         ; preds = %..loopexit19_crit_edge.us
  br label %.preheader18

.preheader18.loopexit610:                         ; preds = %.outer20
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.loopexit610, %.preheader18.loopexit609, %.preheader18.loopexit, %middle.block585
  br i1 %765, label %._crit_edge115, label %.lr.ph114.preheader

.lr.ph114.preheader:                              ; preds = %.preheader18
  %.pre338 = load i64, i64* %763, align 8
  br label %.lr.ph114

.lr.ph120.split:                                  ; preds = %.lr.ph120.split.preheader608, %.lr.ph120.split
  %i.17119 = phi i64 [ %813, %.lr.ph120.split ], [ %i.17119.ph, %.lr.ph120.split.preheader608 ]
  %813 = add nsw i64 %i.17119, 1
  %814 = getelementptr inbounds i64, i64* %763, i64 %813
  store i64 %.pre334.lcssa, i64* %814, align 8
  %815 = icmp ult i64 %813, %759
  br i1 %815, label %.lr.ph120.split, label %.preheader18.loopexit, !llvm.loop !17

.outer20:                                         ; preds = %.lr.ph118.split.us.us
  %.lcssa723 = phi i64* [ %804, %.lr.ph118.split.us.us ]
  %.lcssa = phi i64 [ %803, %.lr.ph118.split.us.us ]
  %j30.0116.us.us.lcssa = phi i64 [ %j30.0116.us.us, %.lr.ph118.split.us.us ]
  store i64 %j30.0116.us.us.lcssa, i64* %.lcssa723, align 8
  %816 = icmp ult i64 %.lcssa, %759
  br i1 %816, label %.lr.ph120, label %.preheader18.loopexit610

.loopexit17.loopexit:                             ; preds = %.loopexit16, %.lr.ph111
  br label %.loopexit17

.loopexit17:                                      ; preds = %.loopexit17.loopexit, %.lr.ph114
  %817 = load i64, i64* @TOT_VERTICES, align 8
  %818 = icmp ult i64 %820, %817
  br i1 %818, label %.lr.ph114, label %._crit_edge115.loopexit

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %.loopexit17
  %819 = phi i64 [ %822, %.loopexit17 ], [ %.pre338, %.lr.ph114.preheader ]
  %i.18113 = phi i64 [ %820, %.loopexit17 ], [ 0, %.lr.ph114.preheader ]
  %820 = add nuw nsw i64 %i.18113, 1
  %821 = getelementptr inbounds i64, i64* %763, i64 %820
  %822 = load i64, i64* %821, align 8
  %823 = icmp ult i64 %819, %822
  br i1 %823, label %.lr.ph111.preheader, label %.loopexit17

.lr.ph111.preheader:                              ; preds = %.lr.ph114
  %824 = add i64 %822, 1
  %825 = sub i64 %824, %819
  %826 = add i64 %822, -2
  %827 = sub i64 %826, %819
  br label %.lr.ph111

.loopexit16.unr-lcssa:                            ; preds = %872
  br label %.loopexit16

.loopexit16:                                      ; preds = %.lr.ph108.preheader.split, %.loopexit16.unr-lcssa
  %indvar.next697 = add i64 %indvar696, 1
  br i1 %829, label %.lr.ph111, label %.loopexit17.loopexit

.lr.ph111:                                        ; preds = %.lr.ph111.preheader, %.loopexit16
  %indvar696 = phi i64 [ 0, %.lr.ph111.preheader ], [ %indvar.next697, %.loopexit16 ]
  %j31.0109 = phi i64 [ %819, %.lr.ph111.preheader ], [ %828, %.loopexit16 ]
  %828 = add nuw nsw i64 %j31.0109, 1
  %829 = icmp ult i64 %828, %822
  br i1 %829, label %.lr.ph108.preheader, label %.loopexit17.loopexit

.lr.ph108.preheader:                              ; preds = %.lr.ph111
  %830 = sub i64 %825, %indvar696
  %xtraiter698 = and i64 %830, 1
  %lcmp.mod699 = icmp eq i64 %xtraiter698, 0
  br i1 %lcmp.mod699, label %.lr.ph108.preheader.split, label %.lr.ph108.prol

.lr.ph108.prol:                                   ; preds = %.lr.ph108.preheader
  %831 = load i64*, i64** %652, align 8
  %832 = getelementptr inbounds i64, i64* %831, i64 %828
  %833 = load i64, i64* %832, align 8
  %834 = getelementptr inbounds i64, i64* %831, i64 %j31.0109
  %835 = load i64, i64* %834, align 8
  %836 = icmp ult i64 %833, %835
  br i1 %836, label %837, label %840

; <label>:837                                     ; preds = %.lr.ph108.prol
  store i64 %833, i64* %834, align 8
  %838 = load i64*, i64** %652, align 8
  %839 = getelementptr inbounds i64, i64* %838, i64 %828
  store i64 %835, i64* %839, align 8
  br label %840

; <label>:840                                     ; preds = %837, %.lr.ph108.prol
  %841 = add nsw i64 %j31.0109, 2
  br label %.lr.ph108.preheader.split

.lr.ph108.preheader.split:                        ; preds = %.lr.ph108.preheader, %840
  %k32.0106.unr = phi i64 [ %828, %.lr.ph108.preheader ], [ %841, %840 ]
  %842 = icmp eq i64 %827, %indvar696
  br i1 %842, label %.loopexit16, label %.lr.ph108.preheader.split.split

.lr.ph108.preheader.split.split:                  ; preds = %.lr.ph108.preheader.split
  br label %.lr.ph108

.lr.ph108:                                        ; preds = %872, %.lr.ph108.preheader.split.split
  %k32.0106 = phi i64 [ %k32.0106.unr, %.lr.ph108.preheader.split.split ], [ %873, %872 ]
  %843 = load i64*, i64** %652, align 8
  %844 = getelementptr inbounds i64, i64* %843, i64 %k32.0106
  %845 = load i64, i64* %844, align 8
  %846 = getelementptr inbounds i64, i64* %843, i64 %j31.0109
  %847 = load i64, i64* %846, align 8
  %848 = icmp ult i64 %845, %847
  br i1 %848, label %849, label %.lr.ph108.1700

; <label>:849                                     ; preds = %.lr.ph108
  store i64 %845, i64* %846, align 8
  %850 = load i64*, i64** %652, align 8
  %851 = getelementptr inbounds i64, i64* %850, i64 %k32.0106
  store i64 %847, i64* %851, align 8
  br label %.lr.ph108.1700

.lr.ph108.1700:                                   ; preds = %.lr.ph108, %849
  %852 = add nsw i64 %k32.0106, 1
  %853 = load i64*, i64** %652, align 8
  %854 = getelementptr inbounds i64, i64* %853, i64 %852
  %855 = load i64, i64* %854, align 8
  %856 = getelementptr inbounds i64, i64* %853, i64 %j31.0109
  %857 = load i64, i64* %856, align 8
  %858 = icmp ult i64 %855, %857
  br i1 %858, label %869, label %872

._crit_edge115.loopexit:                          ; preds = %.loopexit17
  br label %._crit_edge115

._crit_edge115:                                   ; preds = %._crit_edge115.loopexit, %758, %.preheader18
  tail call void @free(i8* %762) #6
  br label %.loopexit15

.loopexit15.loopexit:                             ; preds = %.loopexit12.us
  br label %.loopexit15

.loopexit15.loopexit607:                          ; preds = %._crit_edge97, %.outer.loopexit
  br label %.loopexit15

.loopexit15:                                      ; preds = %.loopexit15.loopexit607, %.loopexit15.loopexit, %.preheader14, %._crit_edge115
  tail call void @random_free(%struct.random* nonnull %1) #6
  tail call void @free(i8* %7) #6
  ret void

; <label>:859                                     ; preds = %.lr.ph93.us.1690
  store i64 %747, i64* %748, align 8
  %860 = load i64*, i64** %652, align 8
  %861 = getelementptr inbounds i64, i64* %860, i64 %744
  store i64 %749, i64* %861, align 8
  br label %862

; <label>:862                                     ; preds = %859, %.lr.ph93.us.1690
  %863 = add nsw i64 %k.091.us, 2
  %exitcond300.1 = icmp eq i64 %863, %i1.1.us
  br i1 %exitcond300.1, label %.loopexit11.us.loopexit.unr-lcssa, label %.lr.ph93.us

; <label>:864                                     ; preds = %.lr.ph100.us.1695
  store i64 %716, i64* %717, align 8
  %865 = load i64*, i64** %652, align 8
  %866 = getelementptr inbounds i64, i64* %865, i64 %713
  store i64 %718, i64* %866, align 8
  br label %867

; <label>:867                                     ; preds = %864, %.lr.ph100.us.1695
  %868 = add nsw i64 %k27.098.us, 2
  %exitcond302.1 = icmp eq i64 %868, %513
  br i1 %exitcond302.1, label %.loopexit.us.loopexit.unr-lcssa, label %.lr.ph100.us

; <label>:869                                     ; preds = %.lr.ph108.1700
  store i64 %855, i64* %856, align 8
  %870 = load i64*, i64** %652, align 8
  %871 = getelementptr inbounds i64, i64* %870, i64 %852
  store i64 %857, i64* %871, align 8
  br label %872

; <label>:872                                     ; preds = %869, %.lr.ph108.1700
  %873 = add nsw i64 %k32.0106, 2
  %874 = icmp ult i64 %873, %822
  br i1 %874, label %.lr.ph108, label %.loopexit16.unr-lcssa

; <label>:875                                     ; preds = %.lr.ph136.1708
  %876 = sub nsw i64 0, %t21.1
  store i64 %876, i64* %562, align 8
  %877 = add nsw i64 %t21.1, 1
  br label %878

; <label>:878                                     ; preds = %875, %.lr.ph136.1708
  %t21.1.1 = phi i64 [ %877, %875 ], [ %t21.1, %.lr.ph136.1708 ]
  %879 = add nsw i64 %i.12135, 2
  %exitcond307.1 = icmp eq i64 %879, %513
  br i1 %exitcond307.1, label %._crit_edge137.loopexit.unr-lcssa, label %.lr.ph136
}

declare %struct.random* @random_alloc(...) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

declare void @random_seed(%struct.random*, i64) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare i64 @random_generate(%struct.random*) #1

; Function Attrs: nounwind readnone
declare double @ceil(double) #4

; Function Attrs: nounwind
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #5

declare void @all_radixsort_node_aux_s3_seq(i64, i64*, i64*, i64*, i64*) #1

declare void @random_free(%struct.random*) #1

; Function Attrs: nounwind uwtable
define void @genScalData(i8* nocapture %argPtr) #0 {
  %i_start = alloca i64, align 8
  %i_stop = alloca i64, align 8
  %1 = tail call i64 (...) @thread_getId() #6
  %2 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %3 = tail call i64 (...) @thread_getId() #6
  %4 = trunc i64 %3 to i32
  tail call void @SimRoiStart(i32 %4) #6
  %5 = tail call i64 (...) @thread_getId() #6
  %6 = tail call i64 (...) @thread_getNumThread() #6
  %7 = tail call %struct.random* (...) @Prandom_alloc() #6
  %8 = icmp eq %struct.random* %7, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 780, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #8
  unreachable

; <label>:10                                      ; preds = %0
  tail call void @random_seed(%struct.random* nonnull %7, i64 %5) #6
  %11 = icmp eq i64 %5, 0
  br i1 %11, label %12, label %19

; <label>:12                                      ; preds = %10
  %13 = load i64, i64* @TOT_VERTICES, align 8
  %14 = shl i64 %13, 3
  %15 = tail call noalias i8* @malloc(i64 %14) #6
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %12
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 787, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #8
  unreachable

; <label>:18                                      ; preds = %12
  store i8* %15, i8** bitcast (i64** @global_permV to i8**), align 8
  br label %19

; <label>:19                                      ; preds = %18, %10
  tail call void (...) @thread_barrier_wait() #6
  %20 = load i64*, i64** @global_permV, align 8
  %21 = load i64, i64* @TOT_VERTICES, align 8
  call void @createPartition(i64 0, i64 %21, i64 %5, i64 %6, i64* nonnull %i_start, i64* nonnull %i_stop) #6
  %22 = load i64, i64* %i_start, align 8
  %23 = load i64, i64* %i_stop, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %.lr.ph242.preheader, label %._crit_edge243

.lr.ph242.preheader:                              ; preds = %19
  br label %.lr.ph242

.lr.ph242:                                        ; preds = %.lr.ph242.preheader, %.lr.ph242
  %i.0240 = phi i64 [ %26, %.lr.ph242 ], [ %22, %.lr.ph242.preheader ]
  %25 = getelementptr inbounds i64, i64* %20, i64 %i.0240
  store i64 %i.0240, i64* %25, align 8
  %26 = add nsw i64 %i.0240, 1
  %27 = load i64, i64* %i_stop, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %.lr.ph242, label %._crit_edge243.loopexit

._crit_edge243.loopexit:                          ; preds = %.lr.ph242
  br label %._crit_edge243

._crit_edge243:                                   ; preds = %._crit_edge243.loopexit, %19
  call void (...) @thread_barrier_wait() #6
  %29 = load i64, i64* %i_start, align 8
  %30 = load i64, i64* %i_stop, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %.lr.ph238.preheader, label %._crit_edge239

.lr.ph238.preheader:                              ; preds = %._crit_edge243
  br label %.lr.ph238

.lr.ph238:                                        ; preds = %.lr.ph238.preheader, %61
  %i.1236 = phi i64 [ %62, %61 ], [ %29, %.lr.ph238.preheader ]
  %32 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %33 = load i64, i64* @TOT_VERTICES, align 8
  %34 = sub i64 %33, %i.1236
  %35 = urem i64 %32, %34
  %36 = add i64 %35, %i.1236
  %37 = icmp eq i64 %35, 0
  br i1 %37, label %61, label %.outer59.preheader

.outer59.preheader:                               ; preds = %.lr.ph238
  br label %.outer59

.outer59:                                         ; preds = %.outer59.preheader, %44
  %tries.0.ph = phi i32 [ %45, %44 ], [ 9, %.outer59.preheader ]
  %38 = call i64 (...) @RTM_fallback_isLocked() #6
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %._crit_edge235, label %.lr.ph234.preheader

.lr.ph234.preheader:                              ; preds = %.outer59
  br label %.lr.ph234

.lr.ph234:                                        ; preds = %.lr.ph234.preheader, %.lr.ph234
  call void @llvm.x86.sse2.pause() #6
  %40 = call i64 (...) @RTM_fallback_isLocked() #6
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %._crit_edge235.loopexit, label %.lr.ph234

._crit_edge235.loopexit:                          ; preds = %.lr.ph234
  br label %._crit_edge235

._crit_edge235:                                   ; preds = %._crit_edge235.loopexit, %.outer59
  %42 = icmp slt i32 %tries.0.ph, 2
  br i1 %42, label %43, label %44

; <label>:43                                      ; preds = %._crit_edge235
  %tries.0.ph.lcssa = phi i32 [ %tries.0.ph, %._crit_edge235 ]
  call void (...) @RTM_fallback_lock() #6
  br label %53

; <label>:44                                      ; preds = %._crit_edge235
  %45 = add nsw i32 %tries.0.ph, -1
  %46 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 0, i64 1, i64 4294967295) #6, !srcloc !18
  %47 = trunc i64 %46 to i32
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %.outer59

; <label>:49                                      ; preds = %44
  %tries.0.ph.lcssa626 = phi i32 [ %tries.0.ph, %44 ]
  %50 = call i64 (...) @RTM_fallback_isLocked() #6
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %53, label %52

; <label>:52                                      ; preds = %49
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !19
  br label %53

; <label>:53                                      ; preds = %49, %52, %43
  %tries.0.ph627 = phi i32 [ %tries.0.ph.lcssa626, %49 ], [ %tries.0.ph.lcssa626, %52 ], [ %tries.0.ph.lcssa, %43 ]
  %54 = getelementptr inbounds i64, i64* %20, i64 %36
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i64, i64* %20, i64 %i.1236
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %54, align 8
  store i64 %55, i64* %56, align 8
  %58 = icmp sgt i32 %tries.0.ph627, 1
  br i1 %58, label %59, label %60

; <label>:59                                      ; preds = %53
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 1) #6, !srcloc !20
  br label %61

; <label>:60                                      ; preds = %53
  call void (...) @RTM_fallback_unlock() #6
  br label %61

; <label>:61                                      ; preds = %.lr.ph238, %60, %59
  %62 = add nsw i64 %i.1236, 1
  %63 = load i64, i64* %i_stop, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %.lr.ph238, label %._crit_edge239.loopexit

._crit_edge239.loopexit:                          ; preds = %61
  br label %._crit_edge239

._crit_edge239:                                   ; preds = %._crit_edge239.loopexit, %._crit_edge243
  %65 = load i64, i64* @TOT_VERTICES, align 8
  %66 = uitofp i64 %65 to double
  %67 = fmul double %66, 1.500000e+00
  %68 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %69 = add nsw i64 %68, 1
  %70 = sdiv i64 %69, 2
  %71 = sitofp i64 %70 to double
  %72 = fdiv double %67, %71
  %73 = call double @ceil(double %72) #9
  %74 = fptosi double %73 to i64
  br i1 %11, label %75, label %81

; <label>:75                                      ; preds = %._crit_edge239
  %76 = shl i64 %74, 3
  %77 = call noalias i8* @malloc(i64 %76) #6
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %80

; <label>:79                                      ; preds = %75
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 833, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #8
  unreachable

; <label>:80                                      ; preds = %75
  store i8* %77, i8** bitcast (i64** @global_cliqueSizes to i8**), align 8
  br label %81

; <label>:81                                      ; preds = %80, %._crit_edge239
  call void (...) @thread_barrier_wait() #6
  %82 = load i64*, i64** @global_cliqueSizes, align 8
  call void @createPartition(i64 0, i64 %74, i64 %5, i64 %6, i64* nonnull %i_start, i64* nonnull %i_stop) #6
  %83 = load i64, i64* %i_start, align 8
  %84 = load i64, i64* %i_stop, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %.lr.ph232.preheader, label %._crit_edge233

.lr.ph232.preheader:                              ; preds = %81
  br label %.lr.ph232

.lr.ph232:                                        ; preds = %.lr.ph232.preheader, %.lr.ph232
  %i.2230 = phi i64 [ %91, %.lr.ph232 ], [ %83, %.lr.ph232.preheader ]
  %86 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %87 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %88 = urem i64 %86, %87
  %89 = add i64 %88, 1
  %90 = getelementptr inbounds i64, i64* %82, i64 %i.2230
  store i64 %89, i64* %90, align 8
  %91 = add nsw i64 %i.2230, 1
  %92 = load i64, i64* %i_stop, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %.lr.ph232, label %._crit_edge233.loopexit

._crit_edge233.loopexit:                          ; preds = %.lr.ph232
  br label %._crit_edge233

._crit_edge233:                                   ; preds = %._crit_edge233.loopexit, %81
  call void (...) @thread_barrier_wait() #6
  br i1 %11, label %94, label %129

; <label>:94                                      ; preds = %._crit_edge233
  %95 = shl i64 %74, 3
  %96 = call noalias i8* @malloc(i64 %95) #6
  %97 = bitcast i8* %96 to i64*
  %98 = icmp eq i8* %96, null
  br i1 %98, label %99, label %100

; <label>:99                                      ; preds = %94
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 862, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #8
  unreachable

; <label>:100                                     ; preds = %94
  store i8* %96, i8** bitcast (i64** @global_lastVsInCliques to i8**), align 8
  %101 = call noalias i8* @malloc(i64 %95) #6
  %102 = bitcast i8* %101 to i64*
  %103 = icmp eq i8* %101, null
  br i1 %103, label %104, label %105

; <label>:104                                     ; preds = %100
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 865, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #8
  unreachable

; <label>:105                                     ; preds = %100
  store i8* %101, i8** bitcast (i64** @global_firstVsInCliques to i8**), align 8
  %106 = load i64, i64* %82, align 8
  %107 = add nsw i64 %106, -1
  store i64 %107, i64* %97, align 8
  %108 = icmp sgt i64 %74, 1
  %.pre = load i64, i64* @TOT_VERTICES, align 8
  br i1 %108, label %.lr.ph225.preheader, label %._crit_edge226

.lr.ph225.preheader:                              ; preds = %105
  %109 = add i64 %.pre, -1
  br label %.lr.ph225

.lr.ph225:                                        ; preds = %.lr.ph225.preheader, %116
  %110 = phi i64 [ %113, %116 ], [ %107, %.lr.ph225.preheader ]
  %i.3223 = phi i64 [ %117, %116 ], [ 1, %.lr.ph225.preheader ]
  %111 = getelementptr inbounds i64, i64* %82, i64 %i.3223
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %110, %112
  %114 = getelementptr inbounds i64, i64* %97, i64 %i.3223
  store i64 %113, i64* %114, align 8
  %115 = icmp ult i64 %113, %109
  br i1 %115, label %116, label %._crit_edge226.loopexit

; <label>:116                                     ; preds = %.lr.ph225
  %117 = add nuw nsw i64 %i.3223, 1
  %118 = icmp slt i64 %117, %74
  br i1 %118, label %.lr.ph225, label %._crit_edge226.loopexit

._crit_edge226.loopexit:                          ; preds = %.lr.ph225, %116
  %i.3.lcssa.ph = phi i64 [ %i.3223, %.lr.ph225 ], [ %117, %116 ]
  br label %._crit_edge226

._crit_edge226:                                   ; preds = %._crit_edge226.loopexit, %105
  %i.3.lcssa = phi i64 [ 1, %105 ], [ %i.3.lcssa.ph, %._crit_edge226.loopexit ]
  %119 = add nsw i64 %i.3.lcssa, 1
  store i64 %119, i64* @global_totCliques, align 8
  %120 = add nsw i64 %i.3.lcssa, -1
  %121 = getelementptr inbounds i64, i64* %97, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %.pre, -1
  %124 = sub i64 %123, %122
  %125 = getelementptr inbounds i64, i64* %82, i64 %i.3.lcssa
  store i64 %124, i64* %125, align 8
  %126 = load i64, i64* @TOT_VERTICES, align 8
  %127 = add i64 %126, -1
  %128 = getelementptr inbounds i64, i64* %97, i64 %i.3.lcssa
  store i64 %127, i64* %128, align 8
  store i64 0, i64* %102, align 8
  br label %129

; <label>:129                                     ; preds = %._crit_edge226, %._crit_edge233
  call void (...) @thread_barrier_wait() #6
  %130 = load i64*, i64** @global_lastVsInCliques, align 8
  %131 = load i64*, i64** @global_firstVsInCliques, align 8
  %132 = load i64, i64* @global_totCliques, align 8
  call void @createPartition(i64 1, i64 %132, i64 %5, i64 %6, i64* nonnull %i_start, i64* nonnull %i_stop) #6
  %133 = load i64, i64* %i_start, align 8
  %134 = load i64, i64* %i_stop, align 8
  %135 = icmp slt i64 %133, %134
  br i1 %135, label %.lr.ph221.preheader, label %._crit_edge222

.lr.ph221.preheader:                              ; preds = %129
  br label %.lr.ph221

.lr.ph221:                                        ; preds = %.lr.ph221.preheader, %.lr.ph221
  %i.4219 = phi i64 [ %141, %.lr.ph221 ], [ %133, %.lr.ph221.preheader ]
  %136 = add nsw i64 %i.4219, -1
  %137 = getelementptr inbounds i64, i64* %130, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = add i64 %138, 1
  %140 = getelementptr inbounds i64, i64* %131, i64 %i.4219
  store i64 %139, i64* %140, align 8
  %141 = add nsw i64 %i.4219, 1
  %142 = load i64, i64* %i_stop, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %.lr.ph221, label %._crit_edge222.loopexit

._crit_edge222.loopexit:                          ; preds = %.lr.ph221
  br label %._crit_edge222

._crit_edge222:                                   ; preds = %._crit_edge222.loopexit, %129
  %144 = load i64, i64* @SCALE, align 8
  %145 = icmp sgt i64 %144, 11
  %146 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %147 = add nsw i64 %146, -1
  %148 = load i64, i64* @TOT_VERTICES, align 8
  %149 = mul i64 %147, %148
  br i1 %145, label %150, label %152

; <label>:150                                     ; preds = %._crit_edge222
  %151 = uitofp i64 %149 to double
  br label %161

; <label>:152                                     ; preds = %._crit_edge222
  %153 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %154 = add nsw i64 %153, 1
  %155 = sdiv i64 %154, 2
  %156 = mul i64 %155, %149
  %157 = shl i64 %148, 1
  %158 = add i64 %156, %157
  %159 = uitofp i64 %158 to double
  %160 = fmul double %159, 1.200000e+00
  br label %161

; <label>:161                                     ; preds = %152, %150
  %.sink = phi double [ %151, %150 ], [ %160, %152 ]
  %162 = call double @ceil(double %.sink) #9
  %estTotEdges.0 = fptosi double %162 to i64
  %163 = load float, float* @PROB_UNIDIRECTIONAL, align 4
  %164 = icmp sgt i64 %6, 3
  %165 = sdiv i64 %estTotEdges.0, %6
  br i1 %164, label %166, label %173

; <label>:166                                     ; preds = %161
  %167 = sitofp i64 %165 to double
  %168 = fmul double %167, 1.500000e+00
  %169 = fmul double %168, 8.000000e+00
  %170 = fptosi double %169 to i64
  %171 = call noalias i8* @malloc(i64 %170) #6
  %172 = call noalias i8* @malloc(i64 %170) #6
  br label %177

; <label>:173                                     ; preds = %161
  %174 = shl i64 %165, 3
  %175 = call noalias i8* @malloc(i64 %174) #6
  %176 = call noalias i8* @malloc(i64 %174) #6
  br label %177

; <label>:177                                     ; preds = %173, %166
  %endV.0.in = phi i8* [ %172, %166 ], [ %176, %173 ]
  %startV.0.in = phi i8* [ %171, %166 ], [ %175, %173 ]
  %startV.0 = bitcast i8* %startV.0.in to i64*
  %endV.0 = bitcast i8* %endV.0.in to i64*
  %178 = icmp eq i8* %startV.0.in, null
  br i1 %178, label %179, label %180

; <label>:179                                     ; preds = %177
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 964, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #8
  unreachable

; <label>:180                                     ; preds = %177
  %181 = icmp eq i8* %endV.0.in, null
  br i1 %181, label %182, label %183

; <label>:182                                     ; preds = %180
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 965, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #8
  unreachable

; <label>:183                                     ; preds = %180
  %184 = shl i64 %146, 3
  %185 = call noalias i8* @malloc(i64 %184) #6
  %186 = bitcast i8* %185 to i64**
  %187 = icmp eq i8* %185, null
  br i1 %187, label %189, label %.preheader57

.preheader57:                                     ; preds = %183
  %188 = icmp sgt i64 %146, 0
  br i1 %188, label %.lr.ph217.preheader, label %._crit_edge218

.lr.ph217.preheader:                              ; preds = %.preheader57
  br label %.lr.ph217

; <label>:189                                     ; preds = %183
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 972, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #8
  unreachable

; <label>:190                                     ; preds = %.lr.ph217
  %191 = icmp slt i64 %196, %146
  br i1 %191, label %.lr.ph217, label %._crit_edge218.loopexit

.lr.ph217:                                        ; preds = %.lr.ph217.preheader, %190
  %i.5216 = phi i64 [ %196, %190 ], [ 0, %.lr.ph217.preheader ]
  %192 = call noalias i8* @malloc(i64 %184) #6
  %193 = getelementptr inbounds i64*, i64** %186, i64 %i.5216
  %194 = bitcast i64** %193 to i8**
  store i8* %192, i8** %194, align 8
  %195 = icmp eq i8* %192, null
  %196 = add nuw nsw i64 %i.5216, 1
  br i1 %195, label %197, label %190

; <label>:197                                     ; preds = %.lr.ph217
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 976, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #8
  unreachable

._crit_edge218.loopexit:                          ; preds = %190
  br label %._crit_edge218

._crit_edge218:                                   ; preds = %._crit_edge218.loopexit, %.preheader57
  call void @createPartition(i64 0, i64 %132, i64 %5, i64 %6, i64* nonnull %i_start, i64* nonnull %i_stop) #6
  %198 = load i64, i64* %i_start, align 8
  %199 = load i64, i64* %i_stop, align 8
  %200 = icmp slt i64 %198, %199
  br i1 %200, label %.lr.ph214.preheader, label %.preheader54

.lr.ph214.preheader:                              ; preds = %._crit_edge218
  br label %.lr.ph214

.preheader54.loopexit:                            ; preds = %.loopexit56
  %i_edgePtr.6.lcssa = phi i64 [ %i_edgePtr.6, %.loopexit56 ]
  br label %.preheader54

.preheader54:                                     ; preds = %.preheader54.loopexit, %._crit_edge218
  %i_edgePtr.0.lcssa = phi i64 [ 0, %._crit_edge218 ], [ %i_edgePtr.6.lcssa, %.preheader54.loopexit ]
  %201 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %202 = icmp sgt i64 %201, 0
  br i1 %202, label %.lr.ph194.preheader, label %._crit_edge195

.lr.ph194.preheader:                              ; preds = %.preheader54
  br label %.lr.ph194

.lr.ph214:                                        ; preds = %.lr.ph214.preheader, %.loopexit56
  %i_edgePtr.0212 = phi i64 [ %i_edgePtr.6, %.loopexit56 ], [ 0, %.lr.ph214.preheader ]
  %i_clique.0211 = phi i64 [ %284, %.loopexit56 ], [ %198, %.lr.ph214.preheader ]
  %203 = getelementptr inbounds i64, i64* %82, i64 %i_clique.0211
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds i64, i64* %131, i64 %i_clique.0211
  %206 = load i64, i64* %205, align 8
  %207 = icmp sgt i64 %204, 0
  br i1 %207, label %.preheader55.preheader, label %._crit_edge204.thread

.preheader55.preheader:                           ; preds = %.lr.ph214
  br label %.preheader55

.preheader55:                                     ; preds = %.preheader55.preheader, %._crit_edge199
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge199 ], [ 0, %.preheader55.preheader ]
  %i_edgePtr.1201 = phi i64 [ %i_edgePtr.2.lcssa, %._crit_edge199 ], [ %i_edgePtr.0212, %.preheader55.preheader ]
  %208 = icmp sgt i64 %indvars.iv, 0
  br i1 %208, label %.lr.ph198, label %._crit_edge199

.lr.ph198:                                        ; preds = %.preheader55
  %209 = add nsw i64 %indvars.iv, %206
  %210 = getelementptr inbounds i64*, i64** %186, i64 %indvars.iv
  br label %211

; <label>:211                                     ; preds = %247, %.lr.ph198
  %i_edgePtr.2197 = phi i64 [ %i_edgePtr.1201, %.lr.ph198 ], [ %i_edgePtr.3, %247 ]
  %j.0196 = phi i64 [ 0, %.lr.ph198 ], [ %248, %247 ]
  %212 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %213 = urem i64 %212, 1000
  %214 = uitofp i64 %213 to float
  %215 = fdiv float %214, 1.000000e+03
  %216 = fcmp ult float %215, %163
  br i1 %216, label %229, label %217

; <label>:217                                     ; preds = %211
  %218 = getelementptr inbounds i64, i64* %startV.0, i64 %i_edgePtr.2197
  store i64 %209, i64* %218, align 8
  %219 = add nsw i64 %j.0196, %206
  %220 = getelementptr inbounds i64, i64* %endV.0, i64 %i_edgePtr.2197
  store i64 %219, i64* %220, align 8
  %221 = add nsw i64 %i_edgePtr.2197, 1
  %222 = load i64*, i64** %210, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 %j.0196
  store i64 1, i64* %223, align 8
  %224 = getelementptr inbounds i64, i64* %startV.0, i64 %221
  store i64 %219, i64* %224, align 8
  %225 = getelementptr inbounds i64, i64* %endV.0, i64 %221
  store i64 %209, i64* %225, align 8
  %226 = getelementptr inbounds i64*, i64** %186, i64 %j.0196
  %227 = load i64*, i64** %226, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 %indvars.iv
  store i64 1, i64* %228, align 8
  br label %247

; <label>:229                                     ; preds = %211
  %230 = fcmp ult float %215, 5.000000e-01
  %231 = getelementptr inbounds i64*, i64** %186, i64 %j.0196
  %232 = load i64*, i64** %231, align 8
  br i1 %230, label %240, label %233

; <label>:233                                     ; preds = %229
  %234 = getelementptr inbounds i64, i64* %startV.0, i64 %i_edgePtr.2197
  store i64 %209, i64* %234, align 8
  %235 = add nsw i64 %j.0196, %206
  %236 = getelementptr inbounds i64, i64* %endV.0, i64 %i_edgePtr.2197
  store i64 %235, i64* %236, align 8
  %237 = load i64*, i64** %210, align 8
  %238 = getelementptr inbounds i64, i64* %237, i64 %j.0196
  store i64 1, i64* %238, align 8
  %239 = getelementptr inbounds i64, i64* %232, i64 %indvars.iv
  store i64 0, i64* %239, align 8
  br label %247

; <label>:240                                     ; preds = %229
  %241 = add nsw i64 %j.0196, %206
  %242 = getelementptr inbounds i64, i64* %startV.0, i64 %i_edgePtr.2197
  store i64 %241, i64* %242, align 8
  %243 = getelementptr inbounds i64, i64* %endV.0, i64 %i_edgePtr.2197
  store i64 %209, i64* %243, align 8
  %244 = getelementptr inbounds i64, i64* %232, i64 %indvars.iv
  store i64 1, i64* %244, align 8
  %245 = load i64*, i64** %210, align 8
  %246 = getelementptr inbounds i64, i64* %245, i64 %j.0196
  store i64 0, i64* %246, align 8
  br label %247

; <label>:247                                     ; preds = %217, %240, %233
  %i_edgePtr.3.in = phi i64 [ %221, %217 ], [ %i_edgePtr.2197, %233 ], [ %i_edgePtr.2197, %240 ]
  %i_edgePtr.3 = add nsw i64 %i_edgePtr.3.in, 1
  %248 = add nuw nsw i64 %j.0196, 1
  %exitcond308 = icmp eq i64 %248, %indvars.iv
  br i1 %exitcond308, label %._crit_edge199.loopexit, label %211

._crit_edge199.loopexit:                          ; preds = %247
  %i_edgePtr.3.lcssa = phi i64 [ %i_edgePtr.3, %247 ]
  br label %._crit_edge199

._crit_edge199:                                   ; preds = %._crit_edge199.loopexit, %.preheader55
  %i_edgePtr.2.lcssa = phi i64 [ %i_edgePtr.1201, %.preheader55 ], [ %i_edgePtr.3.lcssa, %._crit_edge199.loopexit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond309 = icmp eq i64 %indvars.iv.next, %204
  br i1 %exitcond309, label %._crit_edge204, label %.preheader55

._crit_edge204:                                   ; preds = %._crit_edge199
  %i_edgePtr.2.lcssa.lcssa = phi i64 [ %i_edgePtr.2.lcssa, %._crit_edge199 ]
  %249 = icmp eq i64 %204, 1
  br i1 %249, label %.loopexit56, label %._crit_edge204.thread

._crit_edge204.thread:                            ; preds = %.lr.ph214, %._crit_edge204
  %i_edgePtr.1.lcssa338 = phi i64 [ %i_edgePtr.2.lcssa.lcssa, %._crit_edge204 ], [ %i_edgePtr.0212, %.lr.ph214 ]
  %250 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %251 = shl i64 %204, 1
  %252 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %253 = mul nsw i64 %251, %252
  %254 = urem i64 %250, %253
  %255 = icmp sgt i64 %254, 0
  br i1 %255, label %.lr.ph209.preheader, label %.loopexit56

.lr.ph209.preheader:                              ; preds = %._crit_edge204.thread
  br label %.lr.ph209

.lr.ph209:                                        ; preds = %.lr.ph209.preheader, %282
  %i_edgePtr.4207 = phi i64 [ %i_edgePtr.5, %282 ], [ %i_edgePtr.1.lcssa338, %.lr.ph209.preheader ]
  %i_paralEdge.0206 = phi i64 [ %283, %282 ], [ 0, %.lr.ph209.preheader ]
  %256 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %257 = urem i64 %256, %204
  %258 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %259 = urem i64 %258, %204
  %260 = icmp eq i64 %257, %259
  br i1 %260, label %282, label %261

; <label>:261                                     ; preds = %.lr.ph209
  %262 = getelementptr inbounds i64*, i64** %186, i64 %257
  %263 = load i64*, i64** %262, align 8
  %264 = getelementptr inbounds i64, i64* %263, i64 %259
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %267 = icmp ult i64 %265, %266
  br i1 %267, label %268, label %282

; <label>:268                                     ; preds = %261
  %269 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %270 = urem i64 %269, 1000
  %271 = uitofp i64 %270 to float
  %272 = fdiv float %271, 1.000000e+03
  %273 = fcmp ult float %272, %163
  br i1 %273, label %282, label %274

; <label>:274                                     ; preds = %268
  %275 = add nsw i64 %257, %206
  %276 = getelementptr inbounds i64, i64* %startV.0, i64 %i_edgePtr.4207
  store i64 %275, i64* %276, align 8
  %277 = add nsw i64 %259, %206
  %278 = getelementptr inbounds i64, i64* %endV.0, i64 %i_edgePtr.4207
  store i64 %277, i64* %278, align 8
  %279 = add nsw i64 %i_edgePtr.4207, 1
  %280 = load i64, i64* %264, align 8
  %281 = add i64 %280, 1
  store i64 %281, i64* %264, align 8
  br label %282

; <label>:282                                     ; preds = %268, %.lr.ph209, %261, %274
  %i_edgePtr.5 = phi i64 [ %279, %274 ], [ %i_edgePtr.4207, %268 ], [ %i_edgePtr.4207, %261 ], [ %i_edgePtr.4207, %.lr.ph209 ]
  %283 = add nuw nsw i64 %i_paralEdge.0206, 1
  %exitcond310 = icmp eq i64 %283, %254
  br i1 %exitcond310, label %.loopexit56.loopexit, label %.lr.ph209

.loopexit56.loopexit:                             ; preds = %282
  %i_edgePtr.5.lcssa = phi i64 [ %i_edgePtr.5, %282 ]
  br label %.loopexit56

.loopexit56:                                      ; preds = %.loopexit56.loopexit, %._crit_edge204.thread, %._crit_edge204
  %i_edgePtr.6 = phi i64 [ %i_edgePtr.2.lcssa.lcssa, %._crit_edge204 ], [ %i_edgePtr.1.lcssa338, %._crit_edge204.thread ], [ %i_edgePtr.5.lcssa, %.loopexit56.loopexit ]
  %284 = add nsw i64 %i_clique.0211, 1
  %285 = load i64, i64* %i_stop, align 8
  %286 = icmp slt i64 %284, %285
  br i1 %286, label %.lr.ph214, label %.preheader54.loopexit

.lr.ph194:                                        ; preds = %.lr.ph194.preheader, %.lr.ph194
  %i.7193 = phi i64 [ %290, %.lr.ph194 ], [ 0, %.lr.ph194.preheader ]
  %287 = getelementptr inbounds i64*, i64** %186, i64 %i.7193
  %288 = bitcast i64** %287 to i8**
  %289 = load i8*, i8** %288, align 8
  call void @free(i8* %289) #6
  %290 = add nuw nsw i64 %i.7193, 1
  %291 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %292 = icmp slt i64 %290, %291
  br i1 %292, label %.lr.ph194, label %._crit_edge195.loopexit

._crit_edge195.loopexit:                          ; preds = %.lr.ph194
  br label %._crit_edge195

._crit_edge195:                                   ; preds = %._crit_edge195.loopexit, %.preheader54
  call void @free(i8* %185) #6
  br i1 %11, label %293, label %303

; <label>:293                                     ; preds = %._crit_edge195
  %294 = shl i64 %6, 3
  %295 = call noalias i8* @malloc(i64 %294) #6
  %296 = icmp eq i8* %295, null
  br i1 %296, label %297, label %298

; <label>:297                                     ; preds = %293
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 1075, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #8
  unreachable

; <label>:298                                     ; preds = %293
  store i8* %295, i8** bitcast (i64** @global_i_edgeStartCounter to i8**), align 8
  %299 = call noalias i8* @malloc(i64 %294) #6
  %300 = icmp eq i8* %299, null
  br i1 %300, label %301, label %302

; <label>:301                                     ; preds = %298
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 1078, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #8
  unreachable

; <label>:302                                     ; preds = %298
  store i8* %299, i8** bitcast (i64** @global_i_edgeEndCounter to i8**), align 8
  br label %303

; <label>:303                                     ; preds = %302, %._crit_edge195
  call void (...) @thread_barrier_wait() #6
  %304 = load i64*, i64** @global_i_edgeStartCounter, align 8
  %305 = load i64*, i64** @global_i_edgeEndCounter, align 8
  %306 = getelementptr inbounds i64, i64* %305, i64 %5
  store i64 %i_edgePtr.0.lcssa, i64* %306, align 8
  %307 = getelementptr inbounds i64, i64* %304, i64 %5
  store i64 0, i64* %307, align 8
  call void (...) @thread_barrier_wait() #6
  %308 = icmp sgt i64 %6, 1
  %or.cond = and i1 %11, %308
  br i1 %or.cond, label %.lr.ph192.preheader, label %.outer52.preheader

.lr.ph192.preheader:                              ; preds = %303
  %309 = and i64 %6, 1
  %lcmp.mod581 = icmp eq i64 %309, 0
  br i1 %lcmp.mod581, label %.lr.ph192.prol, label %.lr.ph192.preheader.split

.lr.ph192.prol:                                   ; preds = %.lr.ph192.preheader
  %310 = load i64, i64* %305, align 8
  %311 = getelementptr inbounds i64, i64* %305, i64 1
  %312 = load i64, i64* %311, align 8
  %313 = add i64 %312, %310
  store i64 %313, i64* %311, align 8
  %314 = getelementptr inbounds i64, i64* %304, i64 1
  store i64 %310, i64* %314, align 8
  br label %.lr.ph192.preheader.split

.lr.ph192.preheader.split:                        ; preds = %.lr.ph192.prol, %.lr.ph192.preheader
  %i.8191.unr = phi i64 [ 1, %.lr.ph192.preheader ], [ 2, %.lr.ph192.prol ]
  %315 = icmp eq i64 %6, 2
  br i1 %315, label %.outer52.preheader.loopexit, label %.lr.ph192.preheader.split.split

.lr.ph192.preheader.split.split:                  ; preds = %.lr.ph192.preheader.split
  br label %.lr.ph192

.lr.ph192:                                        ; preds = %.lr.ph192, %.lr.ph192.preheader.split.split
  %i.8191 = phi i64 [ %i.8191.unr, %.lr.ph192.preheader.split.split ], [ %330, %.lr.ph192 ]
  %316 = add nsw i64 %i.8191, -1
  %317 = getelementptr inbounds i64, i64* %305, i64 %316
  %318 = load i64, i64* %317, align 8
  %319 = getelementptr inbounds i64, i64* %305, i64 %i.8191
  %320 = load i64, i64* %319, align 8
  %321 = add i64 %320, %318
  store i64 %321, i64* %319, align 8
  %322 = getelementptr inbounds i64, i64* %304, i64 %i.8191
  store i64 %318, i64* %322, align 8
  %323 = add nuw nsw i64 %i.8191, 1
  %324 = getelementptr inbounds i64, i64* %305, i64 %i.8191
  %325 = load i64, i64* %324, align 8
  %326 = getelementptr inbounds i64, i64* %305, i64 %323
  %327 = load i64, i64* %326, align 8
  %328 = add i64 %327, %325
  store i64 %328, i64* %326, align 8
  %329 = getelementptr inbounds i64, i64* %304, i64 %323
  store i64 %325, i64* %329, align 8
  %330 = add nsw i64 %i.8191, 2
  %exitcond307.1 = icmp eq i64 %330, %6
  br i1 %exitcond307.1, label %.outer52.preheader.loopexit.unr-lcssa, label %.lr.ph192

.outer52.preheader.loopexit.unr-lcssa:            ; preds = %.lr.ph192
  br label %.outer52.preheader.loopexit

.outer52.preheader.loopexit:                      ; preds = %.lr.ph192.preheader.split, %.outer52.preheader.loopexit.unr-lcssa
  br label %.outer52.preheader

.outer52.preheader:                               ; preds = %.outer52.preheader.loopexit, %303
  br label %.outer52

.lr.ph189:                                        ; preds = %.lr.ph189.preheader, %.lr.ph189
  call void @llvm.x86.sse2.pause() #6
  %331 = call i64 (...) @RTM_fallback_isLocked() #6
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %._crit_edge190.loopexit, label %.lr.ph189

._crit_edge190.loopexit:                          ; preds = %.lr.ph189
  br label %._crit_edge190

._crit_edge190:                                   ; preds = %._crit_edge190.loopexit, %.outer52
  %333 = icmp slt i32 %tries5.0.ph, 2
  br i1 %333, label %348, label %334

; <label>:334                                     ; preds = %._crit_edge190
  %335 = add nsw i32 %tries5.0.ph, -1
  %336 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 0, i64 2, i64 4294967295) #6, !srcloc !18
  %337 = trunc i64 %336 to i32
  %338 = icmp eq i32 %337, -1
  br i1 %338, label %341, label %.outer52

.outer52:                                         ; preds = %.outer52.preheader, %334
  %tries5.0.ph = phi i32 [ %335, %334 ], [ 9, %.outer52.preheader ]
  %339 = call i64 (...) @RTM_fallback_isLocked() #6
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %._crit_edge190, label %.lr.ph189.preheader

.lr.ph189.preheader:                              ; preds = %.outer52
  br label %.lr.ph189

; <label>:341                                     ; preds = %334
  %342 = call i64 (...) @RTM_fallback_isLocked() #6
  %343 = icmp eq i64 %342, 0
  br i1 %343, label %345, label %344

; <label>:344                                     ; preds = %341
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !19
  br label %345

; <label>:345                                     ; preds = %341, %344
  %346 = load i64, i64* @global_edgeNum, align 8
  %347 = add nsw i64 %346, %i_edgePtr.0.lcssa
  store i64 %347, i64* @global_edgeNum, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 2) #6, !srcloc !20
  br label %351

; <label>:348                                     ; preds = %._crit_edge190
  call void (...) @RTM_fallback_lock() #6
  %349 = load i64, i64* @global_edgeNum, align 8
  %350 = add nsw i64 %349, %i_edgePtr.0.lcssa
  store i64 %350, i64* @global_edgeNum, align 8
  call void (...) @RTM_fallback_unlock() #6
  br label %351

; <label>:351                                     ; preds = %348, %345
  call void (...) @thread_barrier_wait() #6
  %352 = load i64, i64* @global_edgeNum, align 8
  br i1 %11, label %353, label %375

; <label>:353                                     ; preds = %351
  %354 = load i64, i64* @SCALE, align 8
  %355 = icmp slt i64 %354, 10
  br i1 %355, label %356, label %360

; <label>:356                                     ; preds = %353
  %357 = shl i64 %352, 4
  %358 = call noalias i8* @malloc(i64 %357) #6
  %359 = call noalias i8* @malloc(i64 %357) #6
  br label %368

; <label>:360                                     ; preds = %353
  %361 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %362 = load i64, i64* @TOT_VERTICES, align 8
  %363 = mul i64 %362, %361
  %364 = add i64 %363, %352
  %365 = shl i64 %364, 3
  %366 = call noalias i8* @malloc(i64 %365) #6
  %367 = call noalias i8* @malloc(i64 %365) #6
  br label %368

; <label>:368                                     ; preds = %360, %356
  %endVertex.0.in = phi i8* [ %359, %356 ], [ %367, %360 ]
  %startVertex.0.in = phi i8* [ %358, %356 ], [ %366, %360 ]
  %369 = icmp eq i8* %startVertex.0.in, null
  br i1 %369, label %370, label %371

; <label>:370                                     ; preds = %368
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 1126, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #8
  unreachable

; <label>:371                                     ; preds = %368
  %372 = icmp eq i8* %endVertex.0.in, null
  br i1 %372, label %373, label %374

; <label>:373                                     ; preds = %371
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 1127, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #8
  unreachable

; <label>:374                                     ; preds = %371
  store i8* %startVertex.0.in, i8** bitcast (i64** @global_startVertex to i8**), align 8
  store i8* %endVertex.0.in, i8** bitcast (i64** @global_endVertex to i8**), align 8
  br label %375

; <label>:375                                     ; preds = %374, %351
  call void (...) @thread_barrier_wait() #6
  %376 = load i64*, i64** @global_startVertex, align 8
  %377 = load i64*, i64** @global_endVertex, align 8
  %378 = load i64, i64* %307, align 8
  %379 = load i64, i64* %306, align 8
  %380 = icmp ult i64 %378, %379
  br i1 %380, label %.lr.ph187.preheader, label %._crit_edge188

.lr.ph187.preheader:                              ; preds = %375
  %381 = load i64, i64* %startV.0, align 8
  %382 = getelementptr inbounds i64, i64* %376, i64 %378
  store i64 %381, i64* %382, align 8
  %383 = load i64, i64* %307, align 8
  %384 = sub i64 %378, %383
  %385 = getelementptr inbounds i64, i64* %endV.0, i64 %384
  %386 = load i64, i64* %385, align 8
  %387 = getelementptr inbounds i64, i64* %377, i64 %378
  store i64 %386, i64* %387, align 8
  %388 = add nsw i64 %378, 1
  %389 = load i64, i64* %306, align 8
  %390 = icmp ult i64 %388, %389
  br i1 %390, label %.lr.ph187..lr.ph187_crit_edge.preheader, label %._crit_edge188

.lr.ph187..lr.ph187_crit_edge.preheader:          ; preds = %.lr.ph187.preheader
  br label %.lr.ph187..lr.ph187_crit_edge

.lr.ph187..lr.ph187_crit_edge:                    ; preds = %.lr.ph187..lr.ph187_crit_edge.preheader, %.lr.ph187..lr.ph187_crit_edge
  %391 = phi i64 [ %401, %.lr.ph187..lr.ph187_crit_edge ], [ %388, %.lr.ph187..lr.ph187_crit_edge.preheader ]
  %.pre314 = load i64, i64* %307, align 8
  %392 = sub i64 %391, %.pre314
  %393 = getelementptr inbounds i64, i64* %startV.0, i64 %392
  %394 = load i64, i64* %393, align 8
  %395 = getelementptr inbounds i64, i64* %376, i64 %391
  store i64 %394, i64* %395, align 8
  %396 = load i64, i64* %307, align 8
  %397 = sub i64 %391, %396
  %398 = getelementptr inbounds i64, i64* %endV.0, i64 %397
  %399 = load i64, i64* %398, align 8
  %400 = getelementptr inbounds i64, i64* %377, i64 %391
  store i64 %399, i64* %400, align 8
  %401 = add nsw i64 %391, 1
  %402 = load i64, i64* %306, align 8
  %403 = icmp ult i64 %401, %402
  br i1 %403, label %.lr.ph187..lr.ph187_crit_edge, label %._crit_edge188.loopexit

._crit_edge188.loopexit:                          ; preds = %.lr.ph187..lr.ph187_crit_edge
  br label %._crit_edge188

._crit_edge188:                                   ; preds = %._crit_edge188.loopexit, %.lr.ph187.preheader, %375
  call void (...) @thread_barrier_wait() #6
  %404 = load i64, i64* @TOT_VERTICES, align 8
  call void @createPartition(i64 0, i64 %404, i64 %5, i64 %6, i64* nonnull %i_start, i64* nonnull %i_stop) #6
  %405 = load i64, i64* %i_start, align 8
  %406 = load i64, i64* %i_stop, align 8
  %407 = icmp slt i64 %405, %406
  br i1 %407, label %.preheader47.preheader, label %._crit_edge183

.preheader47.preheader:                           ; preds = %._crit_edge188
  br label %.preheader47

.preheader47:                                     ; preds = %.preheader47.preheader, %._crit_edge178
  %408 = phi i64 [ %615, %._crit_edge178 ], [ %406, %.preheader47.preheader ]
  %i.10181 = phi i64 [ %616, %._crit_edge178 ], [ %405, %.preheader47.preheader ]
  %i_edgePtr.7180 = phi i64 [ %i_edgePtr.8.lcssa, %._crit_edge178 ], [ 0, %.preheader47.preheader ]
  br label %.outer48

.outer48:                                         ; preds = %.preheader47, %.us-lcssa.us
  %h.0.ph = phi i64 [ %132, %.preheader47 ], [ %.lcssa598, %.us-lcssa.us ]
  %l.0.ph = phi i64 [ 0, %.preheader47 ], [ %l.0.ph50426.lcssa, %.us-lcssa.us ]
  %409 = sub nsw i64 %h.0.ph, %l.0.ph
  %410 = icmp sgt i64 %409, 1
  br i1 %410, label %.outer49.split.us.preheader, label %.thread.preheader.loopexit

.outer49.split.us.preheader:                      ; preds = %.outer48
  br label %.outer49.split.us

.outer49.split.us:                                ; preds = %.outer49.split.us.preheader, %.outer49.backedge
  %.pn508 = phi i64 [ %411, %.outer49.backedge ], [ %l.0.ph, %.outer49.split.us.preheader ]
  %l.0.ph50426 = phi i64 [ %411, %.outer49.backedge ], [ %l.0.ph, %.outer49.split.us.preheader ]
  %.in506 = add nsw i64 %.pn508, %h.0.ph
  %411 = sdiv i64 %.in506, 2
  %412 = getelementptr inbounds i64, i64* %131, i64 %411
  %413 = icmp sgt i64 %.in506, 1
  %414 = load i64, i64* %412, align 8
  %415 = icmp ult i64 %i.10181, %414
  br i1 %413, label %.outer49.split.us.split.us, label %.outer49.split.us.split.preheader

.outer49.split.us.split.preheader:                ; preds = %.outer49.split.us
  br label %.outer49.split.us.split

.outer49.split.us.split.us:                       ; preds = %.outer49.split.us
  br i1 %415, label %.us-lcssa.us, label %.outer49.backedge

.outer49.backedge.loopexit:                       ; preds = %.outer49.split.us.split
  br label %.outer49.backedge

.outer49.backedge:                                ; preds = %.outer49.backedge.loopexit, %.outer49.split.us.split.us
  %416 = sub nsw i64 %h.0.ph, %411
  %417 = icmp sgt i64 %416, 1
  br i1 %417, label %.outer49.split.us, label %.thread.loopexit

.outer49.split.us.split:                          ; preds = %.outer49.split.us.split.preheader, %.outer49.split.us.split
  br i1 %415, label %.outer49.split.us.split, label %.outer49.backedge.loopexit

.us-lcssa.us:                                     ; preds = %.outer49.split.us.split.us
  %.lcssa598 = phi i64 [ %411, %.outer49.split.us.split.us ]
  %.in506.lcssa = phi i64 [ %.in506, %.outer49.split.us.split.us ]
  %l.0.ph50426.lcssa = phi i64 [ %l.0.ph50426, %.outer49.split.us.split.us ]
  %418 = add nsw i64 %.lcssa598, -1
  %419 = getelementptr inbounds i64, i64* %131, i64 %418
  %420 = load i64, i64* %419, align 8
  %421 = icmp ult i64 %i.10181, %420
  br i1 %421, label %.outer48, label %422

; <label>:422                                     ; preds = %.us-lcssa.us
  %.lcssa605 = phi i64 [ %420, %.us-lcssa.us ]
  %h.0.ph.lcssa601 = phi i64 [ %h.0.ph, %.us-lcssa.us ]
  %.in506.lcssa.lcssa = phi i64 [ %.in506.lcssa, %.us-lcssa.us ]
  %l.0.ph50426.lcssa.lcssa = phi i64 [ %l.0.ph50426.lcssa, %.us-lcssa.us ]
  %.off18 = add i64 %.in506.lcssa.lcssa, 1
  %423 = icmp ult i64 %.off18, 3
  br i1 %423, label %.thread.preheader, label %.loopexit46

.thread.loopexit:                                 ; preds = %.outer49.backedge
  %h.0.ph.lcssa600 = phi i64 [ %h.0.ph, %.outer49.backedge ]
  %.lcssa599 = phi i64 [ %411, %.outer49.backedge ]
  br label %.thread.preheader

.thread.preheader.loopexit:                       ; preds = %.outer48
  %l.0.ph.lcssa = phi i64 [ %l.0.ph, %.outer48 ]
  %h.0.ph.lcssa = phi i64 [ %h.0.ph, %.outer48 ]
  br label %.thread.preheader

.thread.preheader:                                ; preds = %.thread.preheader.loopexit, %422, %.thread.loopexit
  %h.0.ph602 = phi i64 [ %h.0.ph.lcssa600, %.thread.loopexit ], [ %h.0.ph.lcssa601, %422 ], [ %h.0.ph.lcssa, %.thread.preheader.loopexit ]
  %m9.0.in.ph = phi i64 [ %.lcssa599, %.thread.loopexit ], [ %l.0.ph50426.lcssa.lcssa, %422 ], [ %l.0.ph.lcssa, %.thread.preheader.loopexit ]
  br label %.thread

.thread:                                          ; preds = %.thread.preheader, %425
  %m9.0.in = phi i64 [ %m9.0, %425 ], [ %m9.0.in.ph, %.thread.preheader ]
  %m9.0 = add nsw i64 %m9.0.in, 1
  %424 = icmp slt i64 %m9.0, %h.0.ph602
  br i1 %424, label %425, label %.loopexit46.loopexit

; <label>:425                                     ; preds = %.thread
  %426 = getelementptr inbounds i64, i64* %131, i64 %m9.0
  %427 = load i64, i64* %426, align 8
  %428 = icmp ult i64 %i.10181, %427
  br i1 %428, label %.loopexit46.loopexit, label %.thread

.loopexit46.loopexit:                             ; preds = %425, %.thread
  %m9.0.in.lcssa = phi i64 [ %m9.0.in, %425 ], [ %m9.0.in, %.thread ]
  %.phi.trans.insert = getelementptr inbounds i64, i64* %131, i64 %m9.0.in.lcssa
  %.pre316 = load i64, i64* %.phi.trans.insert, align 8
  br label %.loopexit46

.loopexit46:                                      ; preds = %.loopexit46.loopexit, %422
  %429 = phi i64 [ %.lcssa605, %422 ], [ %.pre316, %.loopexit46.loopexit ]
  %430 = load i64, i64* @TOT_VERTICES, align 8
  %431 = icmp ugt i64 %430, 1
  br i1 %431, label %.lr.ph177.preheader, label %._crit_edge178

.lr.ph177.preheader:                              ; preds = %.loopexit46
  %432 = load float, float* @PROB_INTERCL_EDGES, align 4
  %broadcast.splatinsert446 = insertelement <2 x i64> undef, i64 %i.10181, i32 0
  %broadcast.splat447 = shufflevector <2 x i64> %broadcast.splatinsert446, <2 x i64> undef, <2 x i32> zeroinitializer
  %broadcast.splatinsert476 = insertelement <2 x i64> undef, i64 %i.10181, i32 0
  %broadcast.splat477 = shufflevector <2 x i64> %broadcast.splatinsert476, <2 x i64> undef, <2 x i32> zeroinitializer
  br label %.lr.ph177

.lr.ph177:                                        ; preds = %.lr.ph177.preheader, %.loopexit36
  %i_edgePtr.8175 = phi i64 [ %i_edgePtr.12, %.loopexit36 ], [ %i_edgePtr.7180, %.lr.ph177.preheader ]
  %p.0174 = phi float [ %612, %.loopexit36 ], [ %432, %.lr.ph177.preheader ]
  %d.0173 = phi i64 [ %611, %.loopexit36 ], [ 1, %.lr.ph177.preheader ]
  %433 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %434 = urem i64 %433, 1000
  %435 = uitofp i64 %434 to float
  %436 = fdiv float %435, 1.000000e+03
  %437 = fcmp ugt float %436, %p.0174
  br i1 %437, label %.loopexit41, label %438

; <label>:438                                     ; preds = %.lr.ph177
  %439 = add i64 %d.0173, %i.10181
  %440 = load i64, i64* @TOT_VERTICES, align 8
  %441 = urem i64 %439, %440
  br label %.outer43

.outer43:                                         ; preds = %.us-lcssa247.us, %438
  %h.1.ph = phi i64 [ %.lcssa608, %.us-lcssa247.us ], [ %132, %438 ]
  %l.1.ph = phi i64 [ %l.1.ph45430.lcssa, %.us-lcssa247.us ], [ 0, %438 ]
  %442 = sub nsw i64 %h.1.ph, %l.1.ph
  %443 = icmp sgt i64 %442, 1
  br i1 %443, label %.outer44.split.us.preheader, label %.thread12.preheader.loopexit

.outer44.split.us.preheader:                      ; preds = %.outer43
  br label %.outer44.split.us

.outer44.split.us:                                ; preds = %.outer44.split.us.preheader, %.outer44.backedge
  %.pn507 = phi i64 [ %444, %.outer44.backedge ], [ %l.1.ph, %.outer44.split.us.preheader ]
  %l.1.ph45430 = phi i64 [ %444, %.outer44.backedge ], [ %l.1.ph, %.outer44.split.us.preheader ]
  %.in505 = add nsw i64 %.pn507, %h.1.ph
  %444 = sdiv i64 %.in505, 2
  %445 = getelementptr inbounds i64, i64* %131, i64 %444
  %446 = icmp sgt i64 %.in505, 1
  %447 = load i64, i64* %445, align 8
  %448 = icmp ult i64 %441, %447
  br i1 %446, label %.outer44.split.us.split.us, label %.outer44.split.us.split.preheader

.outer44.split.us.split.preheader:                ; preds = %.outer44.split.us
  br label %.outer44.split.us.split

.outer44.split.us.split.us:                       ; preds = %.outer44.split.us
  br i1 %448, label %.us-lcssa247.us, label %.outer44.backedge

.outer44.backedge.loopexit:                       ; preds = %.outer44.split.us.split
  br label %.outer44.backedge

.outer44.backedge:                                ; preds = %.outer44.backedge.loopexit, %.outer44.split.us.split.us
  %449 = sub nsw i64 %h.1.ph, %444
  %450 = icmp sgt i64 %449, 1
  br i1 %450, label %.outer44.split.us, label %.thread12.loopexit

.outer44.split.us.split:                          ; preds = %.outer44.split.us.split.preheader, %.outer44.split.us.split
  br i1 %448, label %.outer44.split.us.split, label %.outer44.backedge.loopexit

.us-lcssa247.us:                                  ; preds = %.outer44.split.us.split.us
  %.lcssa608 = phi i64 [ %444, %.outer44.split.us.split.us ]
  %.in505.lcssa = phi i64 [ %.in505, %.outer44.split.us.split.us ]
  %l.1.ph45430.lcssa = phi i64 [ %l.1.ph45430, %.outer44.split.us.split.us ]
  %451 = add nsw i64 %.lcssa608, -1
  %452 = getelementptr inbounds i64, i64* %131, i64 %451
  %453 = load i64, i64* %452, align 8
  %454 = icmp ugt i64 %453, %441
  br i1 %454, label %.outer43, label %455

; <label>:455                                     ; preds = %.us-lcssa247.us
  %.lcssa615 = phi i64 [ %453, %.us-lcssa247.us ]
  %h.1.ph.lcssa611 = phi i64 [ %h.1.ph, %.us-lcssa247.us ]
  %.in505.lcssa.lcssa = phi i64 [ %.in505.lcssa, %.us-lcssa247.us ]
  %l.1.ph45430.lcssa.lcssa = phi i64 [ %l.1.ph45430.lcssa, %.us-lcssa247.us ]
  %.off17 = add i64 %.in505.lcssa.lcssa, 1
  %456 = icmp ult i64 %.off17, 3
  br i1 %456, label %.thread12.preheader, label %.loopexit42

.thread12.loopexit:                               ; preds = %.outer44.backedge
  %h.1.ph.lcssa610 = phi i64 [ %h.1.ph, %.outer44.backedge ]
  %.lcssa609 = phi i64 [ %444, %.outer44.backedge ]
  br label %.thread12.preheader

.thread12.preheader.loopexit:                     ; preds = %.outer43
  %l.1.ph.lcssa = phi i64 [ %l.1.ph, %.outer43 ]
  %h.1.ph.lcssa = phi i64 [ %h.1.ph, %.outer43 ]
  br label %.thread12.preheader

.thread12.preheader:                              ; preds = %.thread12.preheader.loopexit, %455, %.thread12.loopexit
  %h.1.ph612 = phi i64 [ %h.1.ph.lcssa610, %.thread12.loopexit ], [ %h.1.ph.lcssa611, %455 ], [ %h.1.ph.lcssa, %.thread12.preheader.loopexit ]
  %m13.0.in.ph = phi i64 [ %.lcssa609, %.thread12.loopexit ], [ %l.1.ph45430.lcssa.lcssa, %455 ], [ %l.1.ph.lcssa, %.thread12.preheader.loopexit ]
  br label %.thread12

.thread12:                                        ; preds = %.thread12.preheader, %458
  %m13.0.in = phi i64 [ %m13.0, %458 ], [ %m13.0.in.ph, %.thread12.preheader ]
  %m13.0 = add nsw i64 %m13.0.in, 1
  %457 = icmp slt i64 %m13.0, %h.1.ph612
  br i1 %457, label %458, label %.loopexit42.loopexit

; <label>:458                                     ; preds = %.thread12
  %459 = getelementptr inbounds i64, i64* %131, i64 %m13.0
  %460 = load i64, i64* %459, align 8
  %461 = icmp ult i64 %441, %460
  br i1 %461, label %.loopexit42.loopexit, label %.thread12

.loopexit42.loopexit:                             ; preds = %458, %.thread12
  %m13.0.in.lcssa = phi i64 [ %m13.0.in, %458 ], [ %m13.0.in, %.thread12 ]
  %.phi.trans.insert318 = getelementptr inbounds i64, i64* %131, i64 %m13.0.in.lcssa
  %.pre319 = load i64, i64* %.phi.trans.insert318, align 8
  br label %.loopexit42

.loopexit42:                                      ; preds = %.loopexit42.loopexit, %455
  %462 = phi i64 [ %.lcssa615, %455 ], [ %.pre319, %.loopexit42.loopexit ]
  %463 = icmp eq i64 %429, %462
  br i1 %463, label %.loopexit41, label %464

; <label>:464                                     ; preds = %.loopexit42
  %465 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %466 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %467 = urem i64 %465, %466
  %468 = add i64 %467, 1
  %469 = icmp sgt i64 %468, 0
  br i1 %469, label %.lr.ph166.preheader, label %.loopexit41

.lr.ph166.preheader:                              ; preds = %464
  %470 = add i64 %i_edgePtr.8175, 1
  %471 = add i64 %467, 1
  %min.iters.check455 = icmp ult i64 %471, 4
  br i1 %min.iters.check455, label %.lr.ph166.preheader514, label %min.iters.checked456

min.iters.checked456:                             ; preds = %.lr.ph166.preheader
  %n.vec458 = and i64 %471, -4
  %cmp.zero459 = icmp eq i64 %n.vec458, 0
  %ind.end464 = add i64 %i_edgePtr.8175, %n.vec458
  br i1 %cmp.zero459, label %.lr.ph166.preheader514, label %vector.ph460

vector.ph460:                                     ; preds = %min.iters.checked456
  %broadcast.splatinsert478 = insertelement <2 x i64> undef, i64 %441, i32 0
  %broadcast.splat479 = shufflevector <2 x i64> %broadcast.splatinsert478, <2 x i64> undef, <2 x i32> zeroinitializer
  %472 = add i64 %467, -3
  %473 = lshr i64 %472, 2
  %474 = add nuw nsw i64 %473, 1
  %xtraiter574 = and i64 %474, 3
  %lcmp.mod575 = icmp eq i64 %xtraiter574, 0
  br i1 %lcmp.mod575, label %vector.ph460.split, label %vector.body452.prol.preheader

vector.body452.prol.preheader:                    ; preds = %vector.ph460
  br label %vector.body452.prol

vector.body452.prol:                              ; preds = %vector.body452.prol, %vector.body452.prol.preheader
  %index461.prol = phi i64 [ %index.next462.prol, %vector.body452.prol ], [ 0, %vector.body452.prol.preheader ]
  %prol.iter576 = phi i64 [ %prol.iter576.sub, %vector.body452.prol ], [ %xtraiter574, %vector.body452.prol.preheader ]
  %offset.idx467.prol = add i64 %i_edgePtr.8175, %index461.prol
  %475 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx467.prol
  %476 = bitcast i64* %475 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %476, align 8
  %477 = getelementptr i64, i64* %475, i64 2
  %478 = bitcast i64* %477 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %478, align 8
  %479 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx467.prol
  %480 = bitcast i64* %479 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %480, align 8
  %481 = getelementptr i64, i64* %479, i64 2
  %482 = bitcast i64* %481 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %482, align 8
  %index.next462.prol = add i64 %index461.prol, 4
  %prol.iter576.sub = add i64 %prol.iter576, -1
  %prol.iter576.cmp = icmp eq i64 %prol.iter576.sub, 0
  br i1 %prol.iter576.cmp, label %vector.ph460.split.loopexit, label %vector.body452.prol, !llvm.loop !21

vector.ph460.split.loopexit:                      ; preds = %vector.body452.prol
  %index.next462.prol.lcssa = phi i64 [ %index.next462.prol, %vector.body452.prol ]
  br label %vector.ph460.split

vector.ph460.split:                               ; preds = %vector.ph460, %vector.ph460.split.loopexit
  %index461.unr = phi i64 [ 0, %vector.ph460 ], [ %index.next462.prol.lcssa, %vector.ph460.split.loopexit ]
  %483 = icmp ult i64 %472, 12
  br i1 %483, label %middle.block453, label %vector.ph460.split.split

vector.ph460.split.split:                         ; preds = %vector.ph460.split
  br label %vector.body452

vector.body452:                                   ; preds = %vector.body452, %vector.ph460.split.split
  %index461 = phi i64 [ %index461.unr, %vector.ph460.split.split ], [ %index.next462.3, %vector.body452 ]
  %offset.idx467 = add i64 %i_edgePtr.8175, %index461
  %484 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx467
  %485 = bitcast i64* %484 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %485, align 8
  %486 = getelementptr i64, i64* %484, i64 2
  %487 = bitcast i64* %486 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %487, align 8
  %488 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx467
  %489 = bitcast i64* %488 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %489, align 8
  %490 = getelementptr i64, i64* %488, i64 2
  %491 = bitcast i64* %490 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %491, align 8
  %index.next462 = add i64 %index461, 4
  %offset.idx467.1 = add i64 %i_edgePtr.8175, %index.next462
  %492 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx467.1
  %493 = bitcast i64* %492 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %493, align 8
  %494 = getelementptr i64, i64* %492, i64 2
  %495 = bitcast i64* %494 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %495, align 8
  %496 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx467.1
  %497 = bitcast i64* %496 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %497, align 8
  %498 = getelementptr i64, i64* %496, i64 2
  %499 = bitcast i64* %498 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %499, align 8
  %index.next462.1 = add i64 %index461, 8
  %offset.idx467.2 = add i64 %i_edgePtr.8175, %index.next462.1
  %500 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx467.2
  %501 = bitcast i64* %500 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %501, align 8
  %502 = getelementptr i64, i64* %500, i64 2
  %503 = bitcast i64* %502 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %503, align 8
  %504 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx467.2
  %505 = bitcast i64* %504 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %505, align 8
  %506 = getelementptr i64, i64* %504, i64 2
  %507 = bitcast i64* %506 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %507, align 8
  %index.next462.2 = add i64 %index461, 12
  %offset.idx467.3 = add i64 %i_edgePtr.8175, %index.next462.2
  %508 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx467.3
  %509 = bitcast i64* %508 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %509, align 8
  %510 = getelementptr i64, i64* %508, i64 2
  %511 = bitcast i64* %510 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %511, align 8
  %512 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx467.3
  %513 = bitcast i64* %512 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %513, align 8
  %514 = getelementptr i64, i64* %512, i64 2
  %515 = bitcast i64* %514 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %515, align 8
  %index.next462.3 = add i64 %index461, 16
  %516 = icmp eq i64 %index.next462.3, %n.vec458
  br i1 %516, label %middle.block453.unr-lcssa, label %vector.body452, !llvm.loop !22

middle.block453.unr-lcssa:                        ; preds = %vector.body452
  br label %middle.block453

middle.block453:                                  ; preds = %vector.ph460.split, %middle.block453.unr-lcssa
  %cmp.n466 = icmp eq i64 %471, %n.vec458
  br i1 %cmp.n466, label %.loopexit41.loopexit, label %.lr.ph166.preheader514

.lr.ph166.preheader514:                           ; preds = %middle.block453, %min.iters.checked456, %.lr.ph166.preheader
  %i_edgePtr.9164.ph = phi i64 [ %i_edgePtr.8175, %min.iters.checked456 ], [ %i_edgePtr.8175, %.lr.ph166.preheader ], [ %ind.end464, %middle.block453 ]
  %j16.0163.ph = phi i64 [ 0, %min.iters.checked456 ], [ 0, %.lr.ph166.preheader ], [ %n.vec458, %middle.block453 ]
  br label %.lr.ph166

.lr.ph166:                                        ; preds = %.lr.ph166.preheader514, %.lr.ph166
  %i_edgePtr.9164 = phi i64 [ %519, %.lr.ph166 ], [ %i_edgePtr.9164.ph, %.lr.ph166.preheader514 ]
  %j16.0163 = phi i64 [ %520, %.lr.ph166 ], [ %j16.0163.ph, %.lr.ph166.preheader514 ]
  %517 = getelementptr inbounds i64, i64* %startV.0, i64 %i_edgePtr.9164
  store i64 %i.10181, i64* %517, align 8
  %518 = getelementptr inbounds i64, i64* %endV.0, i64 %i_edgePtr.9164
  store i64 %441, i64* %518, align 8
  %519 = add nsw i64 %i_edgePtr.9164, 1
  %520 = add nuw nsw i64 %j16.0163, 1
  %exitcond305 = icmp eq i64 %520, %468
  br i1 %exitcond305, label %.loopexit41.loopexit.loopexit, label %.lr.ph166, !llvm.loop !23

.loopexit41.loopexit.loopexit:                    ; preds = %.lr.ph166
  br label %.loopexit41.loopexit

.loopexit41.loopexit:                             ; preds = %.loopexit41.loopexit.loopexit, %middle.block453
  %521 = add i64 %470, %467
  br label %.loopexit41

.loopexit41:                                      ; preds = %.loopexit41.loopexit, %464, %.loopexit42, %.lr.ph177
  %i_edgePtr.10 = phi i64 [ %i_edgePtr.8175, %.loopexit42 ], [ %i_edgePtr.8175, %.lr.ph177 ], [ %i_edgePtr.8175, %464 ], [ %521, %.loopexit41.loopexit ]
  %522 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %523 = urem i64 %522, 1000
  %524 = uitofp i64 %523 to float
  %525 = fdiv float %524, 1.000000e+03
  %526 = fcmp ugt float %525, %p.0174
  br i1 %526, label %.loopexit36, label %527

; <label>:527                                     ; preds = %.loopexit41
  %528 = sub i64 %i.10181, %d.0173
  %529 = load i64, i64* @TOT_VERTICES, align 8
  %530 = urem i64 %528, %529
  br label %.outer38

.outer38:                                         ; preds = %.us-lcssa248.us, %527
  %h.2.ph = phi i64 [ %.lcssa618, %.us-lcssa248.us ], [ %132, %527 ]
  %l.2.ph = phi i64 [ %l.2.ph40435.lcssa, %.us-lcssa248.us ], [ 0, %527 ]
  %531 = sub nsw i64 %h.2.ph, %l.2.ph
  %532 = icmp sgt i64 %531, 1
  br i1 %532, label %.outer39.split.us.preheader, label %.thread13.preheader.loopexit

.outer39.split.us.preheader:                      ; preds = %.outer38
  br label %.outer39.split.us

.outer39.split.us:                                ; preds = %.outer39.split.us.preheader, %.outer39.backedge
  %.pn = phi i64 [ %533, %.outer39.backedge ], [ %l.2.ph, %.outer39.split.us.preheader ]
  %l.2.ph40435 = phi i64 [ %533, %.outer39.backedge ], [ %l.2.ph, %.outer39.split.us.preheader ]
  %.in = add nsw i64 %.pn, %h.2.ph
  %533 = sdiv i64 %.in, 2
  %534 = getelementptr inbounds i64, i64* %131, i64 %533
  %535 = icmp sgt i64 %.in, 1
  %536 = load i64, i64* %534, align 8
  %537 = icmp ult i64 %530, %536
  br i1 %535, label %.outer39.split.us.split.us, label %.outer39.split.us.split.preheader

.outer39.split.us.split.preheader:                ; preds = %.outer39.split.us
  br label %.outer39.split.us.split

.outer39.split.us.split.us:                       ; preds = %.outer39.split.us
  br i1 %537, label %.us-lcssa248.us, label %.outer39.backedge

.outer39.backedge.loopexit:                       ; preds = %.outer39.split.us.split
  br label %.outer39.backedge

.outer39.backedge:                                ; preds = %.outer39.backedge.loopexit, %.outer39.split.us.split.us
  %538 = sub nsw i64 %h.2.ph, %533
  %539 = icmp sgt i64 %538, 1
  br i1 %539, label %.outer39.split.us, label %.thread13.loopexit

.outer39.split.us.split:                          ; preds = %.outer39.split.us.split.preheader, %.outer39.split.us.split
  br i1 %537, label %.outer39.split.us.split, label %.outer39.backedge.loopexit

.us-lcssa248.us:                                  ; preds = %.outer39.split.us.split.us
  %.lcssa618 = phi i64 [ %533, %.outer39.split.us.split.us ]
  %.in.lcssa = phi i64 [ %.in, %.outer39.split.us.split.us ]
  %l.2.ph40435.lcssa = phi i64 [ %l.2.ph40435, %.outer39.split.us.split.us ]
  %540 = add nsw i64 %.lcssa618, -1
  %541 = getelementptr inbounds i64, i64* %131, i64 %540
  %542 = load i64, i64* %541, align 8
  %543 = icmp ugt i64 %542, %530
  br i1 %543, label %.outer38, label %544

; <label>:544                                     ; preds = %.us-lcssa248.us
  %.lcssa625 = phi i64 [ %542, %.us-lcssa248.us ]
  %h.2.ph.lcssa621 = phi i64 [ %h.2.ph, %.us-lcssa248.us ]
  %.in.lcssa.lcssa = phi i64 [ %.in.lcssa, %.us-lcssa248.us ]
  %l.2.ph40435.lcssa.lcssa = phi i64 [ %l.2.ph40435.lcssa, %.us-lcssa248.us ]
  %.off = add i64 %.in.lcssa.lcssa, 1
  %545 = icmp ult i64 %.off, 3
  br i1 %545, label %.thread13.preheader, label %.loopexit37

.thread13.loopexit:                               ; preds = %.outer39.backedge
  %h.2.ph.lcssa620 = phi i64 [ %h.2.ph, %.outer39.backedge ]
  %.lcssa619 = phi i64 [ %533, %.outer39.backedge ]
  br label %.thread13.preheader

.thread13.preheader.loopexit:                     ; preds = %.outer38
  %l.2.ph.lcssa = phi i64 [ %l.2.ph, %.outer38 ]
  %h.2.ph.lcssa = phi i64 [ %h.2.ph, %.outer38 ]
  br label %.thread13.preheader

.thread13.preheader:                              ; preds = %.thread13.preheader.loopexit, %544, %.thread13.loopexit
  %h.2.ph622 = phi i64 [ %h.2.ph.lcssa620, %.thread13.loopexit ], [ %h.2.ph.lcssa621, %544 ], [ %h.2.ph.lcssa, %.thread13.preheader.loopexit ]
  %m19.0.in.ph = phi i64 [ %.lcssa619, %.thread13.loopexit ], [ %l.2.ph40435.lcssa.lcssa, %544 ], [ %l.2.ph.lcssa, %.thread13.preheader.loopexit ]
  br label %.thread13

.thread13:                                        ; preds = %.thread13.preheader, %547
  %m19.0.in = phi i64 [ %m19.0, %547 ], [ %m19.0.in.ph, %.thread13.preheader ]
  %m19.0 = add nsw i64 %m19.0.in, 1
  %546 = icmp slt i64 %m19.0, %h.2.ph622
  br i1 %546, label %547, label %.loopexit37.loopexit

; <label>:547                                     ; preds = %.thread13
  %548 = getelementptr inbounds i64, i64* %131, i64 %m19.0
  %549 = load i64, i64* %548, align 8
  %550 = icmp ult i64 %530, %549
  br i1 %550, label %.loopexit37.loopexit, label %.thread13

.loopexit37.loopexit:                             ; preds = %547, %.thread13
  %m19.0.in.lcssa = phi i64 [ %m19.0.in, %547 ], [ %m19.0.in, %.thread13 ]
  %.phi.trans.insert321 = getelementptr inbounds i64, i64* %131, i64 %m19.0.in.lcssa
  %.pre322 = load i64, i64* %.phi.trans.insert321, align 8
  br label %.loopexit37

.loopexit37:                                      ; preds = %.loopexit37.loopexit, %544
  %551 = phi i64 [ %.lcssa625, %544 ], [ %.pre322, %.loopexit37.loopexit ]
  %552 = icmp eq i64 %429, %551
  br i1 %552, label %.loopexit36, label %553

; <label>:553                                     ; preds = %.loopexit37
  %554 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %555 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %556 = urem i64 %554, %555
  %557 = add i64 %556, 1
  %558 = icmp sgt i64 %557, 0
  br i1 %558, label %.lr.ph171.preheader, label %.loopexit36

.lr.ph171.preheader:                              ; preds = %553
  %559 = add i64 %i_edgePtr.10, 1
  %560 = add i64 %556, 1
  %min.iters.check = icmp ult i64 %560, 4
  br i1 %min.iters.check, label %.lr.ph171.preheader513, label %min.iters.checked

min.iters.checked:                                ; preds = %.lr.ph171.preheader
  %n.vec = and i64 %560, -4
  %cmp.zero = icmp eq i64 %n.vec, 0
  %ind.end = add i64 %i_edgePtr.10, %n.vec
  br i1 %cmp.zero, label %.lr.ph171.preheader513, label %vector.ph

vector.ph:                                        ; preds = %min.iters.checked
  %broadcast.splatinsert448 = insertelement <2 x i64> undef, i64 %530, i32 0
  %broadcast.splat449 = shufflevector <2 x i64> %broadcast.splatinsert448, <2 x i64> undef, <2 x i32> zeroinitializer
  %561 = add i64 %556, -3
  %562 = lshr i64 %561, 2
  %563 = add nuw nsw i64 %562, 1
  %xtraiter577 = and i64 %563, 3
  %lcmp.mod578 = icmp eq i64 %xtraiter577, 0
  br i1 %lcmp.mod578, label %vector.ph.split, label %vector.body.prol.preheader

vector.body.prol.preheader:                       ; preds = %vector.ph
  br label %vector.body.prol

vector.body.prol:                                 ; preds = %vector.body.prol, %vector.body.prol.preheader
  %index.prol = phi i64 [ %index.next.prol, %vector.body.prol ], [ 0, %vector.body.prol.preheader ]
  %prol.iter579 = phi i64 [ %prol.iter579.sub, %vector.body.prol ], [ %xtraiter577, %vector.body.prol.preheader ]
  %offset.idx.prol = add i64 %i_edgePtr.10, %index.prol
  %564 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx.prol
  %565 = bitcast i64* %564 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %565, align 8
  %566 = getelementptr i64, i64* %564, i64 2
  %567 = bitcast i64* %566 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %567, align 8
  %568 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx.prol
  %569 = bitcast i64* %568 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %569, align 8
  %570 = getelementptr i64, i64* %568, i64 2
  %571 = bitcast i64* %570 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %571, align 8
  %index.next.prol = add i64 %index.prol, 4
  %prol.iter579.sub = add i64 %prol.iter579, -1
  %prol.iter579.cmp = icmp eq i64 %prol.iter579.sub, 0
  br i1 %prol.iter579.cmp, label %vector.ph.split.loopexit, label %vector.body.prol, !llvm.loop !24

vector.ph.split.loopexit:                         ; preds = %vector.body.prol
  %index.next.prol.lcssa = phi i64 [ %index.next.prol, %vector.body.prol ]
  br label %vector.ph.split

vector.ph.split:                                  ; preds = %vector.ph, %vector.ph.split.loopexit
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.prol.lcssa, %vector.ph.split.loopexit ]
  %572 = icmp ult i64 %561, 12
  br i1 %572, label %middle.block, label %vector.ph.split.split

vector.ph.split.split:                            ; preds = %vector.ph.split
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.split.split
  %index = phi i64 [ %index.unr, %vector.ph.split.split ], [ %index.next.3, %vector.body ]
  %offset.idx = add i64 %i_edgePtr.10, %index
  %573 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx
  %574 = bitcast i64* %573 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %574, align 8
  %575 = getelementptr i64, i64* %573, i64 2
  %576 = bitcast i64* %575 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %576, align 8
  %577 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx
  %578 = bitcast i64* %577 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %578, align 8
  %579 = getelementptr i64, i64* %577, i64 2
  %580 = bitcast i64* %579 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %580, align 8
  %index.next = add i64 %index, 4
  %offset.idx.1 = add i64 %i_edgePtr.10, %index.next
  %581 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx.1
  %582 = bitcast i64* %581 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %582, align 8
  %583 = getelementptr i64, i64* %581, i64 2
  %584 = bitcast i64* %583 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %584, align 8
  %585 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx.1
  %586 = bitcast i64* %585 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %586, align 8
  %587 = getelementptr i64, i64* %585, i64 2
  %588 = bitcast i64* %587 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %588, align 8
  %index.next.1 = add i64 %index, 8
  %offset.idx.2 = add i64 %i_edgePtr.10, %index.next.1
  %589 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx.2
  %590 = bitcast i64* %589 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %590, align 8
  %591 = getelementptr i64, i64* %589, i64 2
  %592 = bitcast i64* %591 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %592, align 8
  %593 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx.2
  %594 = bitcast i64* %593 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %594, align 8
  %595 = getelementptr i64, i64* %593, i64 2
  %596 = bitcast i64* %595 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %596, align 8
  %index.next.2 = add i64 %index, 12
  %offset.idx.3 = add i64 %i_edgePtr.10, %index.next.2
  %597 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx.3
  %598 = bitcast i64* %597 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %598, align 8
  %599 = getelementptr i64, i64* %597, i64 2
  %600 = bitcast i64* %599 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %600, align 8
  %601 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx.3
  %602 = bitcast i64* %601 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %602, align 8
  %603 = getelementptr i64, i64* %601, i64 2
  %604 = bitcast i64* %603 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %604, align 8
  %index.next.3 = add i64 %index, 16
  %605 = icmp eq i64 %index.next.3, %n.vec
  br i1 %605, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !25

middle.block.unr-lcssa:                           ; preds = %vector.body
  br label %middle.block

middle.block:                                     ; preds = %vector.ph.split, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %560, %n.vec
  br i1 %cmp.n, label %.loopexit36.loopexit, label %.lr.ph171.preheader513

.lr.ph171.preheader513:                           ; preds = %middle.block, %min.iters.checked, %.lr.ph171.preheader
  %i_edgePtr.11169.ph = phi i64 [ %i_edgePtr.10, %min.iters.checked ], [ %i_edgePtr.10, %.lr.ph171.preheader ], [ %ind.end, %middle.block ]
  %j22.0168.ph = phi i64 [ 0, %min.iters.checked ], [ 0, %.lr.ph171.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph171

.lr.ph171:                                        ; preds = %.lr.ph171.preheader513, %.lr.ph171
  %i_edgePtr.11169 = phi i64 [ %608, %.lr.ph171 ], [ %i_edgePtr.11169.ph, %.lr.ph171.preheader513 ]
  %j22.0168 = phi i64 [ %609, %.lr.ph171 ], [ %j22.0168.ph, %.lr.ph171.preheader513 ]
  %606 = getelementptr inbounds i64, i64* %startV.0, i64 %i_edgePtr.11169
  store i64 %i.10181, i64* %606, align 8
  %607 = getelementptr inbounds i64, i64* %endV.0, i64 %i_edgePtr.11169
  store i64 %530, i64* %607, align 8
  %608 = add nsw i64 %i_edgePtr.11169, 1
  %609 = add nuw nsw i64 %j22.0168, 1
  %exitcond306 = icmp eq i64 %609, %557
  br i1 %exitcond306, label %.loopexit36.loopexit.loopexit, label %.lr.ph171, !llvm.loop !26

.loopexit36.loopexit.loopexit:                    ; preds = %.lr.ph171
  br label %.loopexit36.loopexit

.loopexit36.loopexit:                             ; preds = %.loopexit36.loopexit.loopexit, %middle.block
  %610 = add i64 %559, %556
  br label %.loopexit36

.loopexit36:                                      ; preds = %.loopexit36.loopexit, %553, %.loopexit37, %.loopexit41
  %i_edgePtr.12 = phi i64 [ %i_edgePtr.10, %.loopexit37 ], [ %i_edgePtr.10, %.loopexit41 ], [ %i_edgePtr.10, %553 ], [ %610, %.loopexit36.loopexit ]
  %611 = shl i64 %d.0173, 1
  %612 = fmul float %p.0174, 5.000000e-01
  %613 = load i64, i64* @TOT_VERTICES, align 8
  %614 = icmp ult i64 %611, %613
  br i1 %614, label %.lr.ph177, label %._crit_edge178.loopexit

._crit_edge178.loopexit:                          ; preds = %.loopexit36
  %i_edgePtr.12.lcssa = phi i64 [ %i_edgePtr.12, %.loopexit36 ]
  %.pre323 = load i64, i64* %i_stop, align 8
  br label %._crit_edge178

._crit_edge178:                                   ; preds = %._crit_edge178.loopexit, %.loopexit46
  %615 = phi i64 [ %408, %.loopexit46 ], [ %.pre323, %._crit_edge178.loopexit ]
  %i_edgePtr.8.lcssa = phi i64 [ %i_edgePtr.7180, %.loopexit46 ], [ %i_edgePtr.12.lcssa, %._crit_edge178.loopexit ]
  %616 = add nsw i64 %i.10181, 1
  %617 = icmp slt i64 %616, %615
  br i1 %617, label %.preheader47, label %._crit_edge183.loopexit

._crit_edge183.loopexit:                          ; preds = %._crit_edge178
  %i_edgePtr.8.lcssa.lcssa = phi i64 [ %i_edgePtr.8.lcssa, %._crit_edge178 ]
  br label %._crit_edge183

._crit_edge183:                                   ; preds = %._crit_edge183.loopexit, %._crit_edge188
  %i_edgePtr.7.lcssa = phi i64 [ 0, %._crit_edge188 ], [ %i_edgePtr.8.lcssa.lcssa, %._crit_edge183.loopexit ]
  store i64 %i_edgePtr.7.lcssa, i64* %306, align 8
  store i64 0, i64* %307, align 8
  br i1 %11, label %618, label %.critedge

; <label>:618                                     ; preds = %._crit_edge183
  store i64 0, i64* @global_edgeNum, align 8
  call void (...) @thread_barrier_wait() #6
  br i1 %308, label %.lr.ph162.preheader, label %.outer35.preheader

.lr.ph162.preheader:                              ; preds = %618
  %619 = and i64 %6, 1
  %lcmp.mod573 = icmp eq i64 %619, 0
  br i1 %lcmp.mod573, label %.lr.ph162.prol, label %.lr.ph162.preheader.split

.lr.ph162.prol:                                   ; preds = %.lr.ph162.preheader
  %620 = load i64, i64* %305, align 8
  %621 = getelementptr inbounds i64, i64* %305, i64 1
  %622 = load i64, i64* %621, align 8
  %623 = add i64 %622, %620
  store i64 %623, i64* %621, align 8
  %624 = getelementptr inbounds i64, i64* %304, i64 1
  store i64 %620, i64* %624, align 8
  br label %.lr.ph162.preheader.split

.lr.ph162.preheader.split:                        ; preds = %.lr.ph162.prol, %.lr.ph162.preheader
  %i.11160.unr = phi i64 [ 1, %.lr.ph162.preheader ], [ 2, %.lr.ph162.prol ]
  %625 = icmp eq i64 %6, 2
  br i1 %625, label %.outer35.preheader.loopexit, label %.lr.ph162.preheader.split.split

.lr.ph162.preheader.split.split:                  ; preds = %.lr.ph162.preheader.split
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph162, %.lr.ph162.preheader.split.split
  %i.11160 = phi i64 [ %i.11160.unr, %.lr.ph162.preheader.split.split ], [ %640, %.lr.ph162 ]
  %626 = add nsw i64 %i.11160, -1
  %627 = getelementptr inbounds i64, i64* %305, i64 %626
  %628 = load i64, i64* %627, align 8
  %629 = getelementptr inbounds i64, i64* %305, i64 %i.11160
  %630 = load i64, i64* %629, align 8
  %631 = add i64 %630, %628
  store i64 %631, i64* %629, align 8
  %632 = getelementptr inbounds i64, i64* %304, i64 %i.11160
  store i64 %628, i64* %632, align 8
  %633 = add nuw nsw i64 %i.11160, 1
  %634 = getelementptr inbounds i64, i64* %305, i64 %i.11160
  %635 = load i64, i64* %634, align 8
  %636 = getelementptr inbounds i64, i64* %305, i64 %633
  %637 = load i64, i64* %636, align 8
  %638 = add i64 %637, %635
  store i64 %638, i64* %636, align 8
  %639 = getelementptr inbounds i64, i64* %304, i64 %633
  store i64 %635, i64* %639, align 8
  %640 = add nsw i64 %i.11160, 2
  %exitcond304.1 = icmp eq i64 %640, %6
  br i1 %exitcond304.1, label %.outer35.preheader.loopexit.unr-lcssa, label %.lr.ph162

.critedge:                                        ; preds = %._crit_edge183
  call void (...) @thread_barrier_wait() #6
  br label %.outer35.preheader

.outer35.preheader.loopexit.unr-lcssa:            ; preds = %.lr.ph162
  br label %.outer35.preheader.loopexit

.outer35.preheader.loopexit:                      ; preds = %.lr.ph162.preheader.split, %.outer35.preheader.loopexit.unr-lcssa
  br label %.outer35.preheader

.outer35.preheader:                               ; preds = %.outer35.preheader.loopexit, %618, %.critedge
  br label %.outer35

.outer35:                                         ; preds = %.outer35.preheader, %646
  %tries24.0.ph = phi i32 [ %647, %646 ], [ 9, %.outer35.preheader ]
  %641 = call i64 (...) @RTM_fallback_isLocked() #6
  %642 = icmp eq i64 %641, 0
  br i1 %642, label %._crit_edge159, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %.outer35
  br label %.lr.ph158

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %.lr.ph158
  call void @llvm.x86.sse2.pause() #6
  %643 = call i64 (...) @RTM_fallback_isLocked() #6
  %644 = icmp eq i64 %643, 0
  br i1 %644, label %._crit_edge159.loopexit, label %.lr.ph158

._crit_edge159.loopexit:                          ; preds = %.lr.ph158
  br label %._crit_edge159

._crit_edge159:                                   ; preds = %._crit_edge159.loopexit, %.outer35
  %645 = icmp slt i32 %tries24.0.ph, 2
  br i1 %645, label %658, label %646

; <label>:646                                     ; preds = %._crit_edge159
  %647 = add nsw i32 %tries24.0.ph, -1
  %648 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 3, i64 0, i64 3, i64 4294967295) #6, !srcloc !18
  %649 = trunc i64 %648 to i32
  %650 = icmp eq i32 %649, -1
  br i1 %650, label %651, label %.outer35

; <label>:651                                     ; preds = %646
  %652 = call i64 (...) @RTM_fallback_isLocked() #6
  %653 = icmp eq i64 %652, 0
  br i1 %653, label %655, label %654

; <label>:654                                     ; preds = %651
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !19
  br label %655

; <label>:655                                     ; preds = %651, %654
  %656 = load i64, i64* @global_edgeNum, align 8
  %657 = add nsw i64 %656, %i_edgePtr.7.lcssa
  store i64 %657, i64* @global_edgeNum, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 3) #6, !srcloc !20
  br label %661

; <label>:658                                     ; preds = %._crit_edge159
  call void (...) @RTM_fallback_lock() #6
  %659 = load i64, i64* @global_edgeNum, align 8
  %660 = add nsw i64 %659, %i_edgePtr.7.lcssa
  store i64 %660, i64* @global_edgeNum, align 8
  call void (...) @RTM_fallback_unlock() #6
  br label %661

; <label>:661                                     ; preds = %658, %655
  call void (...) @thread_barrier_wait() #6
  %662 = load i64, i64* @global_edgeNum, align 8
  %663 = load i64, i64* %307, align 8
  %664 = load i64, i64* %306, align 8
  %665 = icmp ult i64 %663, %664
  br i1 %665, label %.lr.ph156.preheader, label %._crit_edge157

.lr.ph156.preheader:                              ; preds = %661
  %666 = load i64, i64* %startV.0, align 8
  %667 = add i64 %663, %352
  %668 = getelementptr inbounds i64, i64* %376, i64 %667
  store i64 %666, i64* %668, align 8
  %669 = load i64, i64* %307, align 8
  %670 = sub i64 %663, %669
  %671 = getelementptr inbounds i64, i64* %endV.0, i64 %670
  %672 = load i64, i64* %671, align 8
  %673 = getelementptr inbounds i64, i64* %377, i64 %667
  store i64 %672, i64* %673, align 8
  %674 = add nsw i64 %663, 1
  %675 = load i64, i64* %306, align 8
  %676 = icmp ult i64 %674, %675
  br i1 %676, label %.lr.ph156..lr.ph156_crit_edge.preheader, label %._crit_edge157

.lr.ph156..lr.ph156_crit_edge.preheader:          ; preds = %.lr.ph156.preheader
  br label %.lr.ph156..lr.ph156_crit_edge

.lr.ph156..lr.ph156_crit_edge:                    ; preds = %.lr.ph156..lr.ph156_crit_edge.preheader, %.lr.ph156..lr.ph156_crit_edge
  %677 = phi i64 [ %688, %.lr.ph156..lr.ph156_crit_edge ], [ %674, %.lr.ph156..lr.ph156_crit_edge.preheader ]
  %.pre324 = load i64, i64* %307, align 8
  %678 = sub i64 %677, %.pre324
  %679 = getelementptr inbounds i64, i64* %startV.0, i64 %678
  %680 = load i64, i64* %679, align 8
  %681 = add i64 %677, %352
  %682 = getelementptr inbounds i64, i64* %376, i64 %681
  store i64 %680, i64* %682, align 8
  %683 = load i64, i64* %307, align 8
  %684 = sub i64 %677, %683
  %685 = getelementptr inbounds i64, i64* %endV.0, i64 %684
  %686 = load i64, i64* %685, align 8
  %687 = getelementptr inbounds i64, i64* %377, i64 %681
  store i64 %686, i64* %687, align 8
  %688 = add nsw i64 %677, 1
  %689 = load i64, i64* %306, align 8
  %690 = icmp ult i64 %688, %689
  br i1 %690, label %.lr.ph156..lr.ph156_crit_edge, label %._crit_edge157.loopexit

._crit_edge157.loopexit:                          ; preds = %.lr.ph156..lr.ph156_crit_edge
  br label %._crit_edge157

._crit_edge157:                                   ; preds = %._crit_edge157.loopexit, %.lr.ph156.preheader, %661
  call void (...) @thread_barrier_wait() #6
  %691 = add i64 %662, %352
  br i1 %11, label %692, label %.critedge6

; <label>:692                                     ; preds = %._crit_edge157
  %693 = getelementptr inbounds i8, i8* %argPtr, i64 32
  %694 = bitcast i8* %693 to i64*
  store i64 %691, i64* %694, align 8
  %puts = call i32 @puts(i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @str.1, i64 0, i64 0))
  %695 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i64 %352)
  %696 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i64 %662)
  %697 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i64 %691)
  %698 = bitcast i64* %304 to i8*
  call void @free(i8* %698) #6
  %699 = bitcast i64* %305 to i8*
  call void @free(i8* %699) #6
  %700 = bitcast i64* %82 to i8*
  call void @free(i8* %700) #6
  %701 = bitcast i64* %131 to i8*
  call void @free(i8* %701) #6
  %702 = bitcast i64* %130 to i8*
  call void @free(i8* %702) #6
  call void (...) @thread_barrier_wait() #6
  call void @free(i8* %startV.0.in) #6
  call void @free(i8* %endV.0.in) #6
  %703 = shl i64 %691, 3
  %704 = call noalias i8* @malloc(i64 %703) #6
  %705 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %706 = bitcast i8* %705 to i8**
  store i8* %704, i8** %706, align 8
  %707 = icmp eq i8* %704, null
  br i1 %707, label %708, label %709

; <label>:708                                     ; preds = %692
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 1366, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #8
  unreachable

.critedge6:                                       ; preds = %._crit_edge157
  call void (...) @thread_barrier_wait() #6
  call void @free(i8* %startV.0.in) #6
  call void @free(i8* %endV.0.in) #6
  br label %709

; <label>:709                                     ; preds = %.critedge6, %692
  call void (...) @thread_barrier_wait() #6
  %710 = load float, float* @PERC_INT_WEIGHTS, align 4
  call void @createPartition(i64 0, i64 %691, i64 %5, i64 %6, i64* nonnull %i_start, i64* nonnull %i_stop) #6
  %711 = load i64, i64* %i_start, align 8
  %712 = load i64, i64* %i_stop, align 8
  %713 = icmp slt i64 %711, %712
  br i1 %713, label %.lr.ph151, label %._crit_edge152

.lr.ph151:                                        ; preds = %709
  %714 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %715 = bitcast i8* %714 to i64**
  br label %716

; <label>:716                                     ; preds = %.lr.ph151, %734
  %i.13149 = phi i64 [ %711, %.lr.ph151 ], [ %735, %734 ]
  %numStrWtEdges.0148 = phi i64 [ 0, %.lr.ph151 ], [ %numStrWtEdges.1, %734 ]
  %717 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %718 = urem i64 %717, 1000
  %719 = uitofp i64 %718 to float
  %720 = fdiv float %719, 1.000000e+03
  %721 = fcmp ugt float %720, %710
  br i1 %721, label %730, label %722

; <label>:722                                     ; preds = %716
  %723 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %724 = load i64, i64* @MAX_INT_WEIGHT, align 8
  %725 = add i64 %724, -1
  %726 = urem i64 %723, %725
  %727 = add i64 %726, 1
  %728 = load i64*, i64** %715, align 8
  %729 = getelementptr inbounds i64, i64* %728, i64 %i.13149
  store i64 %727, i64* %729, align 8
  br label %734

; <label>:730                                     ; preds = %716
  %731 = load i64*, i64** %715, align 8
  %732 = getelementptr inbounds i64, i64* %731, i64 %i.13149
  store i64 -1, i64* %732, align 8
  %733 = add i64 %numStrWtEdges.0148, 1
  br label %734

; <label>:734                                     ; preds = %722, %730
  %numStrWtEdges.1 = phi i64 [ %numStrWtEdges.0148, %722 ], [ %733, %730 ]
  %735 = add nsw i64 %i.13149, 1
  %736 = load i64, i64* %i_stop, align 8
  %737 = icmp slt i64 %735, %736
  br i1 %737, label %716, label %._crit_edge152.loopexit

._crit_edge152.loopexit:                          ; preds = %734
  %numStrWtEdges.1.lcssa = phi i64 [ %numStrWtEdges.1, %734 ]
  br label %._crit_edge152

._crit_edge152:                                   ; preds = %._crit_edge152.loopexit, %709
  %numStrWtEdges.0.lcssa = phi i64 [ 0, %709 ], [ %numStrWtEdges.1.lcssa, %._crit_edge152.loopexit ]
  call void (...) @thread_barrier_wait() #6
  %738 = icmp ne i64 %691, 0
  %or.cond249 = and i1 %11, %738
  br i1 %or.cond249, label %.lr.ph147, label %.outer32.preheader

.lr.ph147:                                        ; preds = %._crit_edge152
  %739 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %740 = bitcast i8* %739 to i64**
  %741 = add i64 %662, %352
  %xtraiter570 = and i64 %741, 1
  %lcmp.mod571 = icmp eq i64 %xtraiter570, 0
  br i1 %lcmp.mod571, label %.lr.ph147.split, label %742

; <label>:742                                     ; preds = %.lr.ph147
  %743 = load i64*, i64** %740, align 8
  %744 = load i64, i64* %743, align 8
  %745 = icmp slt i64 %744, 0
  br i1 %745, label %746, label %747

; <label>:746                                     ; preds = %742
  store i64 0, i64* %743, align 8
  br label %747

; <label>:747                                     ; preds = %746, %742
  %t26.1.prol = phi i64 [ 1, %746 ], [ 0, %742 ]
  br label %.lr.ph147.split

.lr.ph147.split:                                  ; preds = %.lr.ph147, %747
  %i.14146.unr = phi i64 [ 0, %.lr.ph147 ], [ 1, %747 ]
  %t26.0145.unr = phi i64 [ 0, %.lr.ph147 ], [ %t26.1.prol, %747 ]
  %748 = icmp eq i64 %741, 1
  br i1 %748, label %.outer32.preheader.loopexit, label %.lr.ph147.split.split

.lr.ph147.split.split:                            ; preds = %.lr.ph147.split
  br label %749

; <label>:749                                     ; preds = %1106, %.lr.ph147.split.split
  %i.14146 = phi i64 [ %i.14146.unr, %.lr.ph147.split.split ], [ %1107, %1106 ]
  %t26.0145 = phi i64 [ %t26.0145.unr, %.lr.ph147.split.split ], [ %t26.1.1, %1106 ]
  %750 = load i64*, i64** %740, align 8
  %751 = getelementptr inbounds i64, i64* %750, i64 %i.14146
  %752 = load i64, i64* %751, align 8
  %753 = icmp slt i64 %752, 0
  br i1 %753, label %754, label %757

; <label>:754                                     ; preds = %749
  %755 = sub nsw i64 0, %t26.0145
  store i64 %755, i64* %751, align 8
  %756 = add nsw i64 %t26.0145, 1
  br label %757

; <label>:757                                     ; preds = %749, %754
  %t26.1 = phi i64 [ %756, %754 ], [ %t26.0145, %749 ]
  %758 = add nuw nsw i64 %i.14146, 1
  %759 = load i64*, i64** %740, align 8
  %760 = getelementptr inbounds i64, i64* %759, i64 %758
  %761 = load i64, i64* %760, align 8
  %762 = icmp slt i64 %761, 0
  br i1 %762, label %1103, label %1106

.outer32.preheader.loopexit.unr-lcssa:            ; preds = %1106
  br label %.outer32.preheader.loopexit

.outer32.preheader.loopexit:                      ; preds = %.lr.ph147.split, %.outer32.preheader.loopexit.unr-lcssa
  br label %.outer32.preheader

.outer32.preheader:                               ; preds = %.outer32.preheader.loopexit, %._crit_edge152
  br label %.outer32

.lr.ph143:                                        ; preds = %.lr.ph143.preheader, %.lr.ph143
  call void @llvm.x86.sse2.pause() #6
  %763 = call i64 (...) @RTM_fallback_isLocked() #6
  %764 = icmp eq i64 %763, 0
  br i1 %764, label %._crit_edge144.loopexit, label %.lr.ph143

._crit_edge144.loopexit:                          ; preds = %.lr.ph143
  br label %._crit_edge144

._crit_edge144:                                   ; preds = %._crit_edge144.loopexit, %.outer32
  %765 = icmp slt i32 %tries28.0.ph, 2
  br i1 %765, label %780, label %766

; <label>:766                                     ; preds = %._crit_edge144
  %767 = add nsw i32 %tries28.0.ph, -1
  %768 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 4, i64 0, i64 4, i64 4294967295) #6, !srcloc !18
  %769 = trunc i64 %768 to i32
  %770 = icmp eq i32 %769, -1
  br i1 %770, label %773, label %.outer32

.outer32:                                         ; preds = %.outer32.preheader, %766
  %tries28.0.ph = phi i32 [ %767, %766 ], [ 9, %.outer32.preheader ]
  %771 = call i64 (...) @RTM_fallback_isLocked() #6
  %772 = icmp eq i64 %771, 0
  br i1 %772, label %._crit_edge144, label %.lr.ph143.preheader

.lr.ph143.preheader:                              ; preds = %.outer32
  br label %.lr.ph143

; <label>:773                                     ; preds = %766
  %774 = call i64 (...) @RTM_fallback_isLocked() #6
  %775 = icmp eq i64 %774, 0
  br i1 %775, label %777, label %776

; <label>:776                                     ; preds = %773
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !19
  br label %777

; <label>:777                                     ; preds = %773, %776
  %778 = load i64, i64* @global_numStrWtEdges, align 8
  %779 = add i64 %778, %numStrWtEdges.0.lcssa
  store i64 %779, i64* @global_numStrWtEdges, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 4) #6, !srcloc !20
  br label %783

; <label>:780                                     ; preds = %._crit_edge144
  call void (...) @RTM_fallback_lock() #6
  %781 = load i64, i64* @global_numStrWtEdges, align 8
  %782 = add i64 %781, %numStrWtEdges.0.lcssa
  store i64 %782, i64* @global_numStrWtEdges, align 8
  call void (...) @RTM_fallback_unlock() #6
  br label %783

; <label>:783                                     ; preds = %780, %777
  call void (...) @thread_barrier_wait() #6
  %784 = load i64, i64* @global_numStrWtEdges, align 8
  br i1 %11, label %785, label %793

; <label>:785                                     ; preds = %783
  %786 = load i64, i64* @MAX_STRLEN, align 8
  %787 = mul i64 %786, %784
  %788 = call noalias i8* @malloc(i64 %787) #6
  %789 = getelementptr inbounds i8, i8* %argPtr, i64 24
  %790 = bitcast i8* %789 to i8**
  store i8* %788, i8** %790, align 8
  %791 = icmp eq i8* %788, null
  br i1 %791, label %792, label %793

; <label>:792                                     ; preds = %785
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 1411, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #8
  unreachable

; <label>:793                                     ; preds = %785, %783
  call void (...) @thread_barrier_wait() #6
  call void @createPartition(i64 0, i64 %691, i64 %5, i64 %6, i64* nonnull %i_start, i64* nonnull %i_stop) #6
  %794 = load i64, i64* %i_start, align 8
  %795 = load i64, i64* %i_stop, align 8
  %796 = icmp slt i64 %794, %795
  br i1 %796, label %.lr.ph141, label %._crit_edge142

.lr.ph141:                                        ; preds = %793
  %797 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %798 = bitcast i8* %797 to i64**
  %799 = getelementptr inbounds i8, i8* %argPtr, i64 24
  %800 = bitcast i8* %799 to i8**
  %.pre325 = load i64, i64* @MAX_STRLEN, align 8
  br label %801

; <label>:801                                     ; preds = %.lr.ph141, %.loopexit30
  %802 = phi i64 [ %795, %.lr.ph141 ], [ %824, %.loopexit30 ]
  %803 = phi i64 [ %.pre325, %.lr.ph141 ], [ %825, %.loopexit30 ]
  %i.15139 = phi i64 [ %794, %.lr.ph141 ], [ %826, %.loopexit30 ]
  %804 = load i64*, i64** %798, align 8
  %805 = getelementptr inbounds i64, i64* %804, i64 %i.15139
  %806 = load i64, i64* %805, align 8
  %807 = icmp slt i64 %806, 1
  %808 = icmp sgt i64 %803, 0
  %or.cond251 = and i1 %807, %808
  br i1 %or.cond251, label %.lr.ph138.preheader, label %.loopexit30

.lr.ph138.preheader:                              ; preds = %801
  br label %.lr.ph138

.lr.ph138:                                        ; preds = %.lr.ph138.preheader, %.lr.ph138
  %j29.0137 = phi i64 [ %821, %.lr.ph138 ], [ 0, %.lr.ph138.preheader ]
  %809 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %810 = urem i64 %809, 127
  %811 = add nuw nsw i64 %810, 1
  %812 = trunc i64 %811 to i8
  %813 = load i64*, i64** %798, align 8
  %814 = getelementptr inbounds i64, i64* %813, i64 %i.15139
  %815 = load i64, i64* %814, align 8
  %816 = load i64, i64* @MAX_STRLEN, align 8
  %817 = mul i64 %816, %815
  %818 = sub i64 %j29.0137, %817
  %819 = load i8*, i8** %800, align 8
  %820 = getelementptr inbounds i8, i8* %819, i64 %818
  store i8 %812, i8* %820, align 1
  %821 = add nuw nsw i64 %j29.0137, 1
  %822 = load i64, i64* @MAX_STRLEN, align 8
  %823 = icmp slt i64 %821, %822
  br i1 %823, label %.lr.ph138, label %.loopexit30.loopexit

.loopexit30.loopexit:                             ; preds = %.lr.ph138
  %.lcssa595 = phi i64 [ %822, %.lr.ph138 ]
  %.pre326 = load i64, i64* %i_stop, align 8
  br label %.loopexit30

.loopexit30:                                      ; preds = %.loopexit30.loopexit, %801
  %824 = phi i64 [ %.pre326, %.loopexit30.loopexit ], [ %802, %801 ]
  %825 = phi i64 [ %.lcssa595, %.loopexit30.loopexit ], [ %803, %801 ]
  %826 = add nsw i64 %i.15139, 1
  %827 = icmp slt i64 %826, %824
  br i1 %827, label %801, label %._crit_edge142.loopexit

._crit_edge142.loopexit:                          ; preds = %.loopexit30
  br label %._crit_edge142

._crit_edge142:                                   ; preds = %._crit_edge142.loopexit, %793
  br i1 %11, label %828, label %.loopexit28

; <label>:828                                     ; preds = %._crit_edge142
  %829 = load i8*, i8** @SOUGHT_STRING, align 8
  %830 = call i64 @strlen(i8* %829) #10
  %831 = load i64, i64* @MAX_STRLEN, align 8
  %832 = icmp eq i64 %830, %831
  br i1 %832, label %837, label %833

; <label>:833                                     ; preds = %828
  %834 = call noalias i8* @malloc(i64 %831) #6
  store i8* %834, i8** @SOUGHT_STRING, align 8
  %835 = icmp eq i8* %834, null
  br i1 %835, label %836, label %837

; <label>:836                                     ; preds = %833
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 1436, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #8
  unreachable

; <label>:837                                     ; preds = %833, %828
  %838 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %839 = urem i64 %838, %784
  %840 = load i64, i64* @MAX_STRLEN, align 8
  %841 = icmp sgt i64 %840, 0
  br i1 %841, label %.lr.ph136, label %.loopexit28

.lr.ph136:                                        ; preds = %837
  %842 = getelementptr inbounds i8, i8* %argPtr, i64 24
  %843 = bitcast i8* %842 to i8**
  br label %844

; <label>:844                                     ; preds = %.lr.ph136, %844
  %845 = phi i64 [ %840, %.lr.ph136 ], [ %854, %844 ]
  %j31.0134 = phi i64 [ 0, %.lr.ph136 ], [ %853, %844 ]
  %846 = mul nsw i64 %845, %839
  %847 = add nsw i64 %846, %j31.0134
  %848 = load i8*, i8** %843, align 8
  %849 = getelementptr inbounds i8, i8* %848, i64 %847
  %850 = load i8, i8* %849, align 1
  %851 = load i8*, i8** @SOUGHT_STRING, align 8
  %852 = getelementptr inbounds i8, i8* %851, i64 %j31.0134
  store i8 %850, i8* %852, align 1
  %853 = add nuw nsw i64 %j31.0134, 1
  %854 = load i64, i64* @MAX_STRLEN, align 8
  %855 = icmp slt i64 %853, %854
  br i1 %855, label %844, label %.loopexit28.loopexit

.loopexit28.loopexit:                             ; preds = %844
  br label %.loopexit28

.loopexit28:                                      ; preds = %.loopexit28.loopexit, %837, %._crit_edge142
  call void (...) @thread_barrier_wait() #6
  %856 = load i64, i64* %i_start, align 8
  %857 = load i64, i64* %i_stop, align 8
  %858 = icmp slt i64 %856, %857
  br i1 %858, label %.lr.ph132.preheader, label %._crit_edge133

.lr.ph132.preheader:                              ; preds = %.loopexit28
  br label %.lr.ph132

.lr.ph132:                                        ; preds = %.lr.ph132.preheader, %.lr.ph132
  %i.16130 = phi i64 [ %867, %.lr.ph132 ], [ %856, %.lr.ph132.preheader ]
  %859 = getelementptr inbounds i64, i64* %376, i64 %i.16130
  %860 = load i64, i64* %859, align 8
  %861 = getelementptr inbounds i64, i64* %20, i64 %860
  %862 = load i64, i64* %861, align 8
  store i64 %862, i64* %859, align 8
  %863 = getelementptr inbounds i64, i64* %377, i64 %i.16130
  %864 = load i64, i64* %863, align 8
  %865 = getelementptr inbounds i64, i64* %20, i64 %864
  %866 = load i64, i64* %865, align 8
  store i64 %866, i64* %863, align 8
  %867 = add nsw i64 %i.16130, 1
  %868 = load i64, i64* %i_stop, align 8
  %869 = icmp slt i64 %867, %868
  br i1 %869, label %.lr.ph132, label %._crit_edge133.loopexit

._crit_edge133.loopexit:                          ; preds = %.lr.ph132
  br label %._crit_edge133

._crit_edge133:                                   ; preds = %._crit_edge133.loopexit, %.loopexit28
  call void (...) @thread_barrier_wait() #6
  br i1 %11, label %870, label %._crit_edge133._crit_edge

._crit_edge133._crit_edge:                        ; preds = %._crit_edge133
  %.pre337 = getelementptr inbounds i8, i8* %argPtr, i64 8
  br label %882

; <label>:870                                     ; preds = %._crit_edge133
  %871 = shl i64 %691, 3
  %872 = call noalias i8* @malloc(i64 %871) #6
  %873 = bitcast i8* %argPtr to i8**
  store i8* %872, i8** %873, align 8
  %874 = icmp eq i8* %872, null
  br i1 %874, label %875, label %876

; <label>:875                                     ; preds = %870
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 1472, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #8
  unreachable

; <label>:876                                     ; preds = %870
  %877 = call noalias i8* @malloc(i64 %871) #6
  %878 = getelementptr inbounds i8, i8* %argPtr, i64 8
  %879 = bitcast i8* %878 to i8**
  store i8* %877, i8** %879, align 8
  %880 = icmp eq i8* %877, null
  br i1 %880, label %881, label %882

; <label>:881                                     ; preds = %876
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 1474, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #8
  unreachable

; <label>:882                                     ; preds = %._crit_edge133._crit_edge, %876
  %.pre-phi = phi i8* [ %.pre337, %._crit_edge133._crit_edge ], [ %878, %876 ]
  call void (...) @thread_barrier_wait() #6
  %883 = bitcast i8* %argPtr to i64**
  %884 = load i64*, i64** %883, align 8
  %885 = bitcast i8* %.pre-phi to i64**
  %886 = load i64*, i64** %885, align 8
  call void @all_radixsort_node_aux_s3(i64 %691, i64* %376, i64* %884, i64* %377, i64* %886) #6
  call void (...) @thread_barrier_wait() #6
  br i1 %11, label %887, label %890

; <label>:887                                     ; preds = %882
  %888 = bitcast i64* %376 to i8*
  call void @free(i8* %888) #6
  %889 = bitcast i64* %377 to i8*
  call void @free(i8* %889) #6
  br label %890

; <label>:890                                     ; preds = %887, %882
  call void (...) @thread_barrier_wait() #6
  %891 = load i64, i64* @SCALE, align 8
  %892 = icmp slt i64 %891, 12
  br i1 %892, label %893, label %993

; <label>:893                                     ; preds = %890
  br i1 %11, label %.preheader22, label %.critedge11

.preheader22:                                     ; preds = %893
  %894 = icmp eq i64 %691, 0
  br i1 %894, label %.critedge8, label %.preheader21.lr.ph.preheader

.preheader21.lr.ph.preheader:                     ; preds = %.preheader22
  %895 = add i64 %662, %352
  %896 = add i64 %895, 1
  %897 = add i64 %662, %352
  %898 = add i64 %897, -2
  br label %.preheader21.lr.ph

._crit_edge103:                                   ; preds = %.preheader21.lr.ph
  %899 = load i64*, i64** %883, align 8
  %900 = getelementptr inbounds i64, i64* %899, i64 %i1.0.ph111
  %901 = load i64, i64* %900, align 8
  %902 = load i64, i64* @TOT_VERTICES, align 8
  %903 = add i64 %902, -1
  %904 = icmp eq i64 %901, %903
  br i1 %904, label %.critedge8.loopexit509, label %.outer.loopexit

.outer.loopexit.loopexit:                         ; preds = %._crit_edge103.us
  %i1.1.us.lcssa = phi i64 [ %i1.1.us, %._crit_edge103.us ]
  %i.18.lcssa.us.lcssa = phi i64 [ %i.18.lcssa.us, %._crit_edge103.us ]
  br label %.outer.loopexit

.outer.loopexit:                                  ; preds = %.outer.loopexit.loopexit, %._crit_edge103
  %i1.1.lcssa = phi i64 [ %i1.0.ph111, %._crit_edge103 ], [ %i1.1.us.lcssa, %.outer.loopexit.loopexit ]
  %i.18.lcssa.lcssa = phi i64 [ %i1.0.ph111, %._crit_edge103 ], [ %i.18.lcssa.us.lcssa, %.outer.loopexit.loopexit ]
  %905 = icmp ult i64 %i.18.lcssa.lcssa, %691
  br i1 %905, label %.preheader21.lr.ph, label %.critedge8.loopexit509

.preheader21.lr.ph:                               ; preds = %.preheader21.lr.ph.preheader, %.outer.loopexit
  %i1.0.ph111 = phi i64 [ %i1.1.lcssa, %.outer.loopexit ], [ 0, %.preheader21.lr.ph.preheader ]
  %906 = icmp ult i64 %i1.0.ph111, %691
  br i1 %906, label %.lr.ph.us.preheader, label %._crit_edge103

.lr.ph.us.preheader:                              ; preds = %.preheader21.lr.ph
  %907 = xor i64 %i1.0.ph111, 1
  %908 = sub i64 -2, %i1.0.ph111
  %909 = sub i64 %896, %i1.0.ph111
  %910 = sub i64 %898, %i1.0.ph111
  br label %.lr.ph.us

; <label>:911                                     ; preds = %.lr.ph.us, %986
  %i.1892.us = phi i64 [ %i1.0.ph111, %.lr.ph.us ], [ %987, %986 ]
  %912 = getelementptr inbounds i64, i64* %990, i64 %i.1892.us
  %913 = load i64, i64* %912, align 8
  %914 = icmp eq i64 %913, %992
  br i1 %914, label %986, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %986, %911
  %i.18.lcssa.us = phi i64 [ %i.1892.us, %911 ], [ %987, %986 ]
  %i1.1.us = phi i64 [ %i.1892.us, %911 ], [ %i1.0109.us, %986 ]
  %915 = icmp slt i64 %i1.0.ph111, %i1.1.us
  br i1 %915, label %.lr.ph102.us.preheader, label %._crit_edge103.us

.lr.ph102.us.preheader:                           ; preds = %._crit_edge.us
  %916 = add i64 %i1.1.us, %907
  %917 = add i64 %908, %i1.1.us
  br label %.lr.ph102.us

._crit_edge103.us.loopexit:                       ; preds = %.loopexit19.us
  %.pre336 = load i64*, i64** %883, align 8
  br label %._crit_edge103.us

._crit_edge103.us:                                ; preds = %._crit_edge103.us.loopexit, %._crit_edge.us
  %918 = phi i64* [ %.pre336, %._crit_edge103.us.loopexit ], [ %990, %._crit_edge.us ]
  %919 = getelementptr inbounds i64, i64* %918, i64 %i1.0.ph111
  %920 = load i64, i64* %919, align 8
  %921 = load i64, i64* @TOT_VERTICES, align 8
  %922 = add i64 %921, -1
  %923 = icmp eq i64 %920, %922
  br i1 %923, label %.lr.ph108.us.preheader, label %.outer.loopexit.loopexit

.lr.ph108.us.preheader:                           ; preds = %._crit_edge103.us
  br label %.lr.ph108.us

.lr.ph108.us:                                     ; preds = %.lr.ph108.us.preheader, %.loopexit.us
  %indvar562 = phi i64 [ 0, %.lr.ph108.us.preheader ], [ %indvar.next563, %.loopexit.us ]
  %j35.0107.us = phi i64 [ %i1.0.ph111, %.lr.ph108.us.preheader ], [ %924, %.loopexit.us ]
  %924 = add nuw nsw i64 %j35.0107.us, 1
  %925 = icmp ult i64 %924, %691
  br i1 %925, label %.lr.ph106.us.preheader, label %.loopexit.us

.lr.ph106.us.preheader:                           ; preds = %.lr.ph108.us
  %926 = sub i64 %909, %indvar562
  %xtraiter564 = and i64 %926, 1
  %lcmp.mod565 = icmp eq i64 %xtraiter564, 0
  br i1 %lcmp.mod565, label %.lr.ph106.us.preheader.split, label %.lr.ph106.us.prol

.lr.ph106.us.prol:                                ; preds = %.lr.ph106.us.preheader
  %927 = load i64*, i64** %885, align 8
  %928 = getelementptr inbounds i64, i64* %927, i64 %924
  %929 = load i64, i64* %928, align 8
  %930 = getelementptr inbounds i64, i64* %927, i64 %j35.0107.us
  %931 = load i64, i64* %930, align 8
  %932 = icmp ult i64 %929, %931
  br i1 %932, label %933, label %936

; <label>:933                                     ; preds = %.lr.ph106.us.prol
  store i64 %929, i64* %930, align 8
  %934 = load i64*, i64** %885, align 8
  %935 = getelementptr inbounds i64, i64* %934, i64 %924
  store i64 %931, i64* %935, align 8
  br label %936

; <label>:936                                     ; preds = %933, %.lr.ph106.us.prol
  %937 = add nsw i64 %j35.0107.us, 2
  br label %.lr.ph106.us.preheader.split

.lr.ph106.us.preheader.split:                     ; preds = %.lr.ph106.us.preheader, %936
  %k36.0104.us.unr = phi i64 [ %924, %.lr.ph106.us.preheader ], [ %937, %936 ]
  %938 = icmp eq i64 %910, %indvar562
  br i1 %938, label %.loopexit.us.loopexit, label %.lr.ph106.us.preheader.split.split

.lr.ph106.us.preheader.split.split:               ; preds = %.lr.ph106.us.preheader.split
  br label %.lr.ph106.us

.lr.ph106.us:                                     ; preds = %1101, %.lr.ph106.us.preheader.split.split
  %k36.0104.us = phi i64 [ %k36.0104.us.unr, %.lr.ph106.us.preheader.split.split ], [ %1102, %1101 ]
  %939 = load i64*, i64** %885, align 8
  %940 = getelementptr inbounds i64, i64* %939, i64 %k36.0104.us
  %941 = load i64, i64* %940, align 8
  %942 = getelementptr inbounds i64, i64* %939, i64 %j35.0107.us
  %943 = load i64, i64* %942, align 8
  %944 = icmp ult i64 %941, %943
  br i1 %944, label %945, label %.lr.ph106.us.1566

; <label>:945                                     ; preds = %.lr.ph106.us
  store i64 %941, i64* %942, align 8
  %946 = load i64*, i64** %885, align 8
  %947 = getelementptr inbounds i64, i64* %946, i64 %k36.0104.us
  store i64 %943, i64* %947, align 8
  br label %.lr.ph106.us.1566

.lr.ph106.us.1566:                                ; preds = %945, %.lr.ph106.us
  %948 = add nsw i64 %k36.0104.us, 1
  %949 = load i64*, i64** %885, align 8
  %950 = getelementptr inbounds i64, i64* %949, i64 %948
  %951 = load i64, i64* %950, align 8
  %952 = getelementptr inbounds i64, i64* %949, i64 %j35.0107.us
  %953 = load i64, i64* %952, align 8
  %954 = icmp ult i64 %951, %953
  br i1 %954, label %1098, label %1101

.lr.ph102.us:                                     ; preds = %.lr.ph102.us.preheader, %.loopexit19.us
  %indvar = phi i64 [ 0, %.lr.ph102.us.preheader ], [ %indvar.next, %.loopexit19.us ]
  %j33.0100.us = phi i64 [ %i1.0.ph111, %.lr.ph102.us.preheader ], [ %955, %.loopexit19.us ]
  %955 = add nsw i64 %j33.0100.us, 1
  %956 = icmp slt i64 %955, %i1.1.us
  br i1 %956, label %.lr.ph99.us.preheader, label %.loopexit19.us

.lr.ph99.us.preheader:                            ; preds = %.lr.ph102.us
  %957 = sub i64 %916, %indvar
  %xtraiter = and i64 %957, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph99.us.preheader.split, label %.lr.ph99.us.prol

.lr.ph99.us.prol:                                 ; preds = %.lr.ph99.us.preheader
  %958 = load i64*, i64** %885, align 8
  %959 = getelementptr inbounds i64, i64* %958, i64 %955
  %960 = load i64, i64* %959, align 8
  %961 = getelementptr inbounds i64, i64* %958, i64 %j33.0100.us
  %962 = load i64, i64* %961, align 8
  %963 = icmp ult i64 %960, %962
  br i1 %963, label %964, label %967

; <label>:964                                     ; preds = %.lr.ph99.us.prol
  store i64 %960, i64* %961, align 8
  %965 = load i64*, i64** %885, align 8
  %966 = getelementptr inbounds i64, i64* %965, i64 %955
  store i64 %962, i64* %966, align 8
  br label %967

; <label>:967                                     ; preds = %964, %.lr.ph99.us.prol
  %968 = add nsw i64 %j33.0100.us, 2
  br label %.lr.ph99.us.preheader.split

.lr.ph99.us.preheader.split:                      ; preds = %.lr.ph99.us.preheader, %967
  %k.097.us.unr = phi i64 [ %955, %.lr.ph99.us.preheader ], [ %968, %967 ]
  %969 = icmp eq i64 %917, %indvar
  br i1 %969, label %.loopexit19.us.loopexit, label %.lr.ph99.us.preheader.split.split

.lr.ph99.us.preheader.split.split:                ; preds = %.lr.ph99.us.preheader.split
  br label %.lr.ph99.us

.lr.ph99.us:                                      ; preds = %1096, %.lr.ph99.us.preheader.split.split
  %k.097.us = phi i64 [ %k.097.us.unr, %.lr.ph99.us.preheader.split.split ], [ %1097, %1096 ]
  %970 = load i64*, i64** %885, align 8
  %971 = getelementptr inbounds i64, i64* %970, i64 %k.097.us
  %972 = load i64, i64* %971, align 8
  %973 = getelementptr inbounds i64, i64* %970, i64 %j33.0100.us
  %974 = load i64, i64* %973, align 8
  %975 = icmp ult i64 %972, %974
  br i1 %975, label %976, label %.lr.ph99.us.1561

; <label>:976                                     ; preds = %.lr.ph99.us
  store i64 %972, i64* %973, align 8
  %977 = load i64*, i64** %885, align 8
  %978 = getelementptr inbounds i64, i64* %977, i64 %k.097.us
  store i64 %974, i64* %978, align 8
  br label %.lr.ph99.us.1561

.lr.ph99.us.1561:                                 ; preds = %976, %.lr.ph99.us
  %979 = add nsw i64 %k.097.us, 1
  %980 = load i64*, i64** %885, align 8
  %981 = getelementptr inbounds i64, i64* %980, i64 %979
  %982 = load i64, i64* %981, align 8
  %983 = getelementptr inbounds i64, i64* %980, i64 %j33.0100.us
  %984 = load i64, i64* %983, align 8
  %985 = icmp ult i64 %982, %984
  br i1 %985, label %1093, label %1096

; <label>:986                                     ; preds = %911
  %987 = add nuw nsw i64 %i.1892.us, 1
  %988 = icmp ult i64 %987, %691
  br i1 %988, label %911, label %._crit_edge.us

.loopexit.us.loopexit.unr-lcssa:                  ; preds = %1101
  br label %.loopexit.us.loopexit

.loopexit.us.loopexit:                            ; preds = %.lr.ph106.us.preheader.split, %.loopexit.us.loopexit.unr-lcssa
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.loopexit.us.loopexit, %.lr.ph108.us
  %exitcond301 = icmp eq i64 %924, %691
  %indvar.next563 = add i64 %indvar562, 1
  br i1 %exitcond301, label %.loopexit20.us, label %.lr.ph108.us

.loopexit19.us.loopexit.unr-lcssa:                ; preds = %1096
  br label %.loopexit19.us.loopexit

.loopexit19.us.loopexit:                          ; preds = %.lr.ph99.us.preheader.split, %.loopexit19.us.loopexit.unr-lcssa
  br label %.loopexit19.us

.loopexit19.us:                                   ; preds = %.loopexit19.us.loopexit, %.lr.ph102.us
  %exitcond299 = icmp eq i64 %955, %i1.1.us
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond299, label %._crit_edge103.us.loopexit, label %.lr.ph102.us

.loopexit20.us:                                   ; preds = %.loopexit.us
  %989 = icmp ult i64 %i.18.lcssa.us, %691
  br i1 %989, label %.lr.ph.us, label %.critedge8.loopexit

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.loopexit20.us
  %i1.0109.us = phi i64 [ %i1.1.us, %.loopexit20.us ], [ %i1.0.ph111, %.lr.ph.us.preheader ]
  %990 = load i64*, i64** %883, align 8
  %991 = getelementptr inbounds i64, i64* %990, i64 %i1.0109.us
  %992 = load i64, i64* %991, align 8
  br label %911

; <label>:993                                     ; preds = %890
  br i1 %11, label %994, label %.critedge9

; <label>:994                                     ; preds = %993
  %995 = load i64, i64* @TOT_VERTICES, align 8
  %996 = shl i64 %995, 3
  %997 = add i64 %996, 8
  %998 = call noalias i8* @malloc(i64 %997) #6
  %999 = bitcast i8* %998 to i64*
  %1000 = icmp eq i8* %998, null
  br i1 %1000, label %1001, label %1002

; <label>:1001                                    ; preds = %994
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 1561, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #8
  unreachable

; <label>:1002                                    ; preds = %994
  store i8* %998, i8** bitcast (i64** @global_tempIndex to i8**), align 8
  store i64 0, i64* %999, align 8
  %1003 = getelementptr inbounds i64, i64* %999, i64 %995
  store i64 %691, i64* %1003, align 8
  %1004 = icmp eq i64 %995, 0
  br i1 %1004, label %.preheader25, label %.lr.ph126.preheader

.lr.ph126.preheader:                              ; preds = %1002
  br label %.lr.ph126

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %.outer27
  %i038.0.ph129 = phi i64 [ %.lcssa586, %.outer27 ], [ 0, %.lr.ph126.preheader ]
  %i.19.ph128 = phi i64 [ %.lcssa588, %.outer27 ], [ 0, %.lr.ph126.preheader ]
  %1005 = icmp ult i64 %i038.0.ph129, %691
  %.phi.trans.insert329 = getelementptr inbounds i64, i64* %999, i64 %i.19.ph128
  %.pre330 = load i64, i64* %.phi.trans.insert329, align 8
  br i1 %1005, label %.lr.ph126.split.us.preheader, label %.lr.ph126.split.preheader

.lr.ph126.split.us.preheader:                     ; preds = %.lr.ph126
  %.pre331 = load i64*, i64** %883, align 8
  %1006 = getelementptr inbounds i64, i64* %.pre331, i64 %i038.0.ph129
  br label %.lr.ph126.split.us

.lr.ph126.split.preheader:                        ; preds = %.lr.ph126
  %.pre330.lcssa = phi i64 [ %.pre330, %.lr.ph126 ]
  %i.19.ph128.lcssa = phi i64 [ %i.19.ph128, %.lr.ph126 ]
  %1007 = add i64 %i.19.ph128.lcssa, 1
  %1008 = icmp ugt i64 %995, %1007
  %umax = select i1 %1008, i64 %995, i64 %1007
  %1009 = sub i64 %umax, %i.19.ph128.lcssa
  %min.iters.check485 = icmp ult i64 %1009, 4
  br i1 %min.iters.check485, label %.lr.ph126.split.preheader510, label %min.iters.checked486

.lr.ph126.split.preheader510:                     ; preds = %middle.block483, %min.iters.checked486, %.lr.ph126.split.preheader
  %i.19125.ph = phi i64 [ %i.19.ph128.lcssa, %min.iters.checked486 ], [ %i.19.ph128.lcssa, %.lr.ph126.split.preheader ], [ %ind.end494, %middle.block483 ]
  br label %.lr.ph126.split

min.iters.checked486:                             ; preds = %.lr.ph126.split.preheader
  %n.vec488 = and i64 %1009, -4
  %cmp.zero489 = icmp eq i64 %n.vec488, 0
  %ind.end494 = add i64 %i.19.ph128.lcssa, %n.vec488
  br i1 %cmp.zero489, label %.lr.ph126.split.preheader510, label %vector.ph490

vector.ph490:                                     ; preds = %min.iters.checked486
  %broadcast.splatinsert501 = insertelement <2 x i64> undef, i64 %.pre330.lcssa, i32 0
  %broadcast.splat502 = shufflevector <2 x i64> %broadcast.splatinsert501, <2 x i64> undef, <2 x i32> zeroinitializer
  %1010 = add i64 %i.19.ph128.lcssa, 1
  %1011 = icmp ugt i64 %995, %1010
  %umax567 = select i1 %1011, i64 %995, i64 %1010
  %1012 = sub i64 %umax567, %i.19.ph128.lcssa
  %1013 = add i64 %1012, -4
  %1014 = lshr i64 %1013, 2
  %1015 = add nuw nsw i64 %1014, 1
  %xtraiter568 = and i64 %1015, 3
  %lcmp.mod569 = icmp eq i64 %xtraiter568, 0
  br i1 %lcmp.mod569, label %vector.ph490.split, label %vector.body482.prol.preheader

vector.body482.prol.preheader:                    ; preds = %vector.ph490
  br label %vector.body482.prol

vector.body482.prol:                              ; preds = %vector.body482.prol.preheader, %vector.body482.prol
  %index491.prol = phi i64 [ %index.next492.prol, %vector.body482.prol ], [ 0, %vector.body482.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %vector.body482.prol ], [ %xtraiter568, %vector.body482.prol.preheader ]
  %offset.idx496.prol = add i64 %i.19.ph128.lcssa, %index491.prol
  %1016 = add i64 %offset.idx496.prol, 1
  %1017 = getelementptr inbounds i64, i64* %999, i64 %1016
  %1018 = bitcast i64* %1017 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1018, align 8
  %1019 = getelementptr i64, i64* %1017, i64 2
  %1020 = bitcast i64* %1019 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1020, align 8
  %index.next492.prol = add i64 %index491.prol, 4
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %vector.ph490.split.loopexit, label %vector.body482.prol, !llvm.loop !27

vector.ph490.split.loopexit:                      ; preds = %vector.body482.prol
  %index.next492.prol.lcssa = phi i64 [ %index.next492.prol, %vector.body482.prol ]
  br label %vector.ph490.split

vector.ph490.split:                               ; preds = %vector.ph490.split.loopexit, %vector.ph490
  %index491.unr = phi i64 [ 0, %vector.ph490 ], [ %index.next492.prol.lcssa, %vector.ph490.split.loopexit ]
  %1021 = icmp ult i64 %1013, 12
  br i1 %1021, label %middle.block483, label %vector.ph490.split.split

vector.ph490.split.split:                         ; preds = %vector.ph490.split
  br label %vector.body482

vector.body482:                                   ; preds = %vector.body482, %vector.ph490.split.split
  %index491 = phi i64 [ %index491.unr, %vector.ph490.split.split ], [ %index.next492.3, %vector.body482 ]
  %offset.idx496 = add i64 %i.19.ph128.lcssa, %index491
  %1022 = add i64 %offset.idx496, 1
  %1023 = getelementptr inbounds i64, i64* %999, i64 %1022
  %1024 = bitcast i64* %1023 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1024, align 8
  %1025 = getelementptr i64, i64* %1023, i64 2
  %1026 = bitcast i64* %1025 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1026, align 8
  %index.next492 = add i64 %index491, 4
  %offset.idx496.1 = add i64 %i.19.ph128.lcssa, %index.next492
  %1027 = add i64 %offset.idx496.1, 1
  %1028 = getelementptr inbounds i64, i64* %999, i64 %1027
  %1029 = bitcast i64* %1028 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1029, align 8
  %1030 = getelementptr i64, i64* %1028, i64 2
  %1031 = bitcast i64* %1030 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1031, align 8
  %index.next492.1 = add i64 %index491, 8
  %offset.idx496.2 = add i64 %i.19.ph128.lcssa, %index.next492.1
  %1032 = add i64 %offset.idx496.2, 1
  %1033 = getelementptr inbounds i64, i64* %999, i64 %1032
  %1034 = bitcast i64* %1033 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1034, align 8
  %1035 = getelementptr i64, i64* %1033, i64 2
  %1036 = bitcast i64* %1035 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1036, align 8
  %index.next492.2 = add i64 %index491, 12
  %offset.idx496.3 = add i64 %i.19.ph128.lcssa, %index.next492.2
  %1037 = add i64 %offset.idx496.3, 1
  %1038 = getelementptr inbounds i64, i64* %999, i64 %1037
  %1039 = bitcast i64* %1038 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1039, align 8
  %1040 = getelementptr i64, i64* %1038, i64 2
  %1041 = bitcast i64* %1040 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1041, align 8
  %index.next492.3 = add i64 %index491, 16
  %1042 = icmp eq i64 %index.next492.3, %n.vec488
  br i1 %1042, label %middle.block483.unr-lcssa, label %vector.body482, !llvm.loop !28

middle.block483.unr-lcssa:                        ; preds = %vector.body482
  br label %middle.block483

middle.block483:                                  ; preds = %vector.ph490.split, %middle.block483.unr-lcssa
  %cmp.n495 = icmp eq i64 %1009, %n.vec488
  br i1 %cmp.n495, label %.preheader25, label %.lr.ph126.split.preheader510

.lr.ph126.split.us:                               ; preds = %.lr.ph126.split.us.preheader, %..loopexit26_crit_edge.us
  %i.19125.us = phi i64 [ %1043, %..loopexit26_crit_edge.us ], [ %i.19.ph128, %.lr.ph126.split.us.preheader ]
  %1043 = add nsw i64 %i.19125.us, 1
  %1044 = getelementptr inbounds i64, i64* %999, i64 %1043
  store i64 %.pre330, i64* %1044, align 8
  %1045 = load i64, i64* %1006, align 8
  %1046 = icmp eq i64 %1045, %i.19125.us
  br i1 %1046, label %.lr.ph124.split.us.us.preheader.preheader, label %..loopexit26_crit_edge.us

.lr.ph124.split.us.us.preheader.preheader:        ; preds = %.lr.ph126.split.us
  br label %.lr.ph124.split.us.us.preheader

..loopexit26_crit_edge.us.loopexit:               ; preds = %.lr.ph124.split.us.us.preheader
  br label %..loopexit26_crit_edge.us

..loopexit26_crit_edge.us:                        ; preds = %..loopexit26_crit_edge.us.loopexit, %.lr.ph126.split.us
  %1047 = icmp ult i64 %1043, %995
  br i1 %1047, label %.lr.ph126.split.us, label %.preheader25.loopexit511

.lr.ph124.split.us.us.preheader:                  ; preds = %.lr.ph124.split.us.us.preheader.preheader, %..lr.ph124.split.us.us_crit_edge
  %j39.0122.us.us425 = phi i64 [ %1048, %..lr.ph124.split.us.us_crit_edge ], [ %i038.0.ph129, %.lr.ph124.split.us.us.preheader.preheader ]
  %1048 = add nuw nsw i64 %j39.0122.us.us425, 1
  %1049 = icmp ult i64 %1048, %691
  br i1 %1049, label %..lr.ph124.split.us.us_crit_edge, label %..loopexit26_crit_edge.us.loopexit

..lr.ph124.split.us.us_crit_edge:                 ; preds = %.lr.ph124.split.us.us.preheader
  %.phi.trans.insert332 = getelementptr inbounds i64, i64* %.pre331, i64 %1048
  %.pre333 = load i64, i64* %.phi.trans.insert332, align 8
  %1050 = icmp eq i64 %.pre333, %i.19125.us
  br i1 %1050, label %.lr.ph124.split.us.us.preheader, label %.outer27

.lr.ph126.split:                                  ; preds = %.lr.ph126.split.preheader510, %.lr.ph126.split
  %i.19125 = phi i64 [ %1051, %.lr.ph126.split ], [ %i.19125.ph, %.lr.ph126.split.preheader510 ]
  %1051 = add nsw i64 %i.19125, 1
  %1052 = getelementptr inbounds i64, i64* %999, i64 %1051
  store i64 %.pre330.lcssa, i64* %1052, align 8
  %1053 = icmp ult i64 %1051, %995
  br i1 %1053, label %.lr.ph126.split, label %.preheader25.loopexit, !llvm.loop !29

.outer27:                                         ; preds = %..lr.ph124.split.us.us_crit_edge
  %.lcssa590 = phi i64* [ %1044, %..lr.ph124.split.us.us_crit_edge ]
  %.lcssa588 = phi i64 [ %1043, %..lr.ph124.split.us.us_crit_edge ]
  %.lcssa586 = phi i64 [ %1048, %..lr.ph124.split.us.us_crit_edge ]
  store i64 %.lcssa586, i64* %.lcssa590, align 8
  %1054 = icmp ult i64 %.lcssa588, %995
  br i1 %1054, label %.lr.ph126, label %.preheader25.loopexit512

.preheader25.loopexit:                            ; preds = %.lr.ph126.split
  br label %.preheader25

.preheader25.loopexit511:                         ; preds = %..loopexit26_crit_edge.us
  br label %.preheader25

.preheader25.loopexit512:                         ; preds = %.outer27
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.loopexit512, %.preheader25.loopexit511, %.preheader25.loopexit, %middle.block483, %1002
  call void (...) @thread_barrier_wait() #6
  %1055 = load i64*, i64** @global_tempIndex, align 8
  %1056 = load i64, i64* @TOT_VERTICES, align 8
  %1057 = icmp eq i64 %1056, 0
  br i1 %1057, label %.critedge8.thread, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %.preheader25
  %.pre334 = load i64, i64* %1055, align 8
  br label %.lr.ph120

.loopexit24.loopexit:                             ; preds = %.loopexit23
  %.lcssa584 = phi i64 [ %1066, %.loopexit23 ]
  br label %.loopexit24

.loopexit24:                                      ; preds = %.loopexit24.loopexit, %.lr.ph120
  %1058 = phi i64 [ %1064, %.lr.ph120 ], [ %.lcssa584, %.loopexit24.loopexit ]
  %1059 = load i64, i64* @TOT_VERTICES, align 8
  %1060 = icmp ult i64 %1062, %1059
  br i1 %1060, label %.lr.ph120, label %.critedge8.thread.loopexit

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %.loopexit24
  %1061 = phi i64 [ %1058, %.loopexit24 ], [ %.pre334, %.lr.ph120.preheader ]
  %i.20119 = phi i64 [ %1062, %.loopexit24 ], [ 0, %.lr.ph120.preheader ]
  %1062 = add nuw nsw i64 %i.20119, 1
  %1063 = getelementptr inbounds i64, i64* %1055, i64 %1062
  %1064 = load i64, i64* %1063, align 8
  %1065 = icmp ult i64 %1061, %1064
  br i1 %1065, label %.lr.ph117.preheader, label %.loopexit24

.lr.ph117.preheader:                              ; preds = %.lr.ph120
  br label %.lr.ph117

.loopexit23.loopexit:                             ; preds = %1081
  %.lcssa = phi i64 [ %1082, %1081 ]
  br label %.loopexit23

.loopexit23:                                      ; preds = %.loopexit23.loopexit, %.lr.ph117
  %1066 = phi i64 [ %1068, %.lr.ph117 ], [ %.lcssa, %.loopexit23.loopexit ]
  %1067 = icmp ult i64 %1069, %1066
  br i1 %1067, label %.lr.ph117, label %.loopexit24.loopexit

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %.loopexit23
  %1068 = phi i64 [ %1066, %.loopexit23 ], [ %1064, %.lr.ph117.preheader ]
  %j40.0115 = phi i64 [ %1069, %.loopexit23 ], [ %1061, %.lr.ph117.preheader ]
  %1069 = add nsw i64 %j40.0115, 1
  %1070 = icmp ult i64 %1069, %1068
  br i1 %1070, label %.lr.ph114.preheader, label %.loopexit23

.lr.ph114.preheader:                              ; preds = %.lr.ph117
  br label %.lr.ph114

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %1081
  %1071 = phi i64 [ %1082, %1081 ], [ %1068, %.lr.ph114.preheader ]
  %k41.0112 = phi i64 [ %1083, %1081 ], [ %1069, %.lr.ph114.preheader ]
  %1072 = load i64*, i64** %885, align 8
  %1073 = getelementptr inbounds i64, i64* %1072, i64 %k41.0112
  %1074 = load i64, i64* %1073, align 8
  %1075 = getelementptr inbounds i64, i64* %1072, i64 %j40.0115
  %1076 = load i64, i64* %1075, align 8
  %1077 = icmp ult i64 %1074, %1076
  br i1 %1077, label %1078, label %1081

; <label>:1078                                    ; preds = %.lr.ph114
  store i64 %1074, i64* %1075, align 8
  %1079 = load i64*, i64** %885, align 8
  %1080 = getelementptr inbounds i64, i64* %1079, i64 %k41.0112
  store i64 %1076, i64* %1080, align 8
  %.pre335 = load i64, i64* %1063, align 8
  br label %1081

; <label>:1081                                    ; preds = %.lr.ph114, %1078
  %1082 = phi i64 [ %1071, %.lr.ph114 ], [ %.pre335, %1078 ]
  %1083 = add nsw i64 %k41.0112, 1
  %1084 = icmp ult i64 %1083, %1082
  br i1 %1084, label %.lr.ph114, label %.loopexit23.loopexit

.critedge8.thread.loopexit:                       ; preds = %.loopexit24
  br label %.critedge8.thread

.critedge8.thread:                                ; preds = %.critedge8.thread.loopexit, %.preheader25
  %1085 = bitcast i64* %1055 to i8*
  call void @free(i8* %1085) #6
  call void @Prandom_free(%struct.random* nonnull %7) #6
  br label %1086

.critedge8.loopexit:                              ; preds = %.loopexit20.us
  br label %.critedge8

.critedge8.loopexit509:                           ; preds = %._crit_edge103, %.outer.loopexit
  br label %.critedge8

.critedge8:                                       ; preds = %.critedge8.loopexit509, %.critedge8.loopexit, %.preheader22
  call void @Prandom_free(%struct.random* nonnull %7) #6
  br label %1086

; <label>:1086                                    ; preds = %.critedge8, %.critedge8.thread
  %1087 = bitcast i64* %20 to i8*
  call void @free(i8* %1087) #6
  br label %1088

.critedge9:                                       ; preds = %993
  call void (...) @thread_barrier_wait() #6
  call void @Prandom_free(%struct.random* nonnull %7) #6
  br label %1088

.critedge11:                                      ; preds = %893
  call void @Prandom_free(%struct.random* nonnull %7) #6
  br label %1088

; <label>:1088                                    ; preds = %.critedge11, %.critedge9, %1086
  %1089 = call i64 (...) @thread_getId() #6
  %1090 = trunc i64 %1089 to i32
  %1091 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  %1092 = load i32, i32* %1091, align 4
  call void @SimRoiEnd(i32 %1090, i32 %1092) #6
  ret void

; <label>:1093                                    ; preds = %.lr.ph99.us.1561
  store i64 %982, i64* %983, align 8
  %1094 = load i64*, i64** %885, align 8
  %1095 = getelementptr inbounds i64, i64* %1094, i64 %979
  store i64 %984, i64* %1095, align 8
  br label %1096

; <label>:1096                                    ; preds = %1093, %.lr.ph99.us.1561
  %1097 = add nsw i64 %k.097.us, 2
  %exitcond298.1 = icmp eq i64 %1097, %i1.1.us
  br i1 %exitcond298.1, label %.loopexit19.us.loopexit.unr-lcssa, label %.lr.ph99.us

; <label>:1098                                    ; preds = %.lr.ph106.us.1566
  store i64 %951, i64* %952, align 8
  %1099 = load i64*, i64** %885, align 8
  %1100 = getelementptr inbounds i64, i64* %1099, i64 %948
  store i64 %953, i64* %1100, align 8
  br label %1101

; <label>:1101                                    ; preds = %1098, %.lr.ph106.us.1566
  %1102 = add nsw i64 %k36.0104.us, 2
  %exitcond300.1 = icmp eq i64 %1102, %691
  br i1 %exitcond300.1, label %.loopexit.us.loopexit.unr-lcssa, label %.lr.ph106.us

; <label>:1103                                    ; preds = %757
  %1104 = sub nsw i64 0, %t26.1
  store i64 %1104, i64* %760, align 8
  %1105 = add nsw i64 %t26.1, 1
  br label %1106

; <label>:1106                                    ; preds = %1103, %757
  %t26.1.1 = phi i64 [ %1105, %1103 ], [ %t26.1, %757 ]
  %1107 = add nsw i64 %i.14146, 2
  %exitcond303.1 = icmp eq i64 %1107, %691
  br i1 %exitcond303.1, label %.outer32.preheader.loopexit.unr-lcssa, label %749
}

declare i64 @thread_getId(...) #1

declare void @SimRoiStart(i32) #1

declare i64 @thread_getNumThread(...) #1

declare %struct.random* @Prandom_alloc(...) #1

declare void @thread_barrier_wait(...) #1

declare void @createPartition(i64, i64, i64, i64, i64*, i64*) #1

declare i64 @RTM_fallback_isLocked(...) #1

declare void @RTM_fallback_lock(...) #1

declare void @RTM_fallback_unlock(...) #1

declare void @all_radixsort_node_aux_s3(i64, i64*, i64*, i64*, i64*) #1

declare void @Prandom_free(%struct.random*) #1

declare void @SimRoiEnd(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #6

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { argmemonly nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = distinct !{!1, !2, !3}
!2 = !{!"llvm.loop.vectorize.width", i32 1}
!3 = !{!"llvm.loop.interleave.count", i32 1}
!4 = distinct !{!4, !5, !2, !3}
!5 = !{!"llvm.loop.unroll.runtime.disable"}
!6 = distinct !{!6, !2, !3}
!7 = distinct !{!7, !5, !2, !3}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !2, !3}
!11 = distinct !{!11, !5, !2, !3}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !2, !3}
!14 = distinct !{!14, !5, !2, !3}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !2, !3}
!17 = distinct !{!17, !5, !2, !3}
!18 = !{i32 1724256, i32 1724272, i32 1724308, i32 1724344, i32 1724380}
!19 = !{i32 1724857, i32 1724872, i32 1724906}
!20 = !{i32 1724628, i32 1724643, i32 1724671}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !2, !3}
!23 = distinct !{!23, !5, !2, !3}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !2, !3}
!26 = distinct !{!26, !5, !2, !3}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !2, !3}
!29 = distinct !{!29, !5, !2, !3}
