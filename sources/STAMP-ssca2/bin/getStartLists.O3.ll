; ModuleID = '../bin/getStartLists.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._tm_thread_context_t = type { i32, i32, %struct.simple_metadata*, i32, i32, [44 x i8] }
%struct.simple_metadata = type opaque
%struct.edge = type { i64, i64, i64 }
%struct.graph = type { i64, i64, i64, i64, i64, i64, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i8* }

@thread_contexts = external global %struct._tm_thread_context_t*, align 8
@global_maxWeight = internal unnamed_addr global i64 0, align 8
@MAX_INT_WEIGHT = external global i64, align 8
@.str = private unnamed_addr constant [19 x i8] c"i_edgeStartCounter\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"getStartLists.c\00", align 1
@__PRETTY_FUNCTION__.getStartLists = private unnamed_addr constant [27 x i8] c"void getStartLists(void *)\00", align 1
@global_i_edgeStartCounter = internal unnamed_addr global i64* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"i_edgeEndCounter\00", align 1
@global_i_edgeEndCounter = internal unnamed_addr global i64* null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"maxIntWtList\00", align 1
@global_maxIntWtList = internal unnamed_addr global %struct.edge* null, align 8
@MAX_STRLEN = external global i64, align 8
@SOUGHT_STRING = external global i8*, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"soughtStrWtList\00", align 1
@global_soughtStrWtList = internal unnamed_addr global %struct.edge* null, align 8

; Function Attrs: nounwind uwtable
define void @getStartLists(i8* nocapture readonly %argPtr) #0 {
  %i_start = alloca i64, align 8
  %i_stop = alloca i64, align 8
  %1 = tail call i64 (...) @thread_getId() #6
  %2 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %3 = tail call i64 (...) @thread_getId() #6
  %4 = trunc i64 %3 to i32
  tail call void @SimRoiStart(i32 %4) #6
  %5 = bitcast i8* %argPtr to %struct.graph**
  %6 = load %struct.graph*, %struct.graph** %5, align 8
  %7 = getelementptr inbounds i8, i8* %argPtr, i64 8
  %8 = bitcast i8* %7 to %struct.edge***
  %9 = load %struct.edge**, %struct.edge*** %8, align 8
  %10 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %11 = bitcast i8* %10 to i64**
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i8, i8* %argPtr, i64 24
  %14 = bitcast i8* %13 to %struct.edge***
  %15 = load %struct.edge**, %struct.edge*** %14, align 8
  %16 = getelementptr inbounds i8, i8* %argPtr, i64 32
  %17 = bitcast i8* %16 to i64**
  %18 = load i64*, i64** %17, align 8
  %19 = tail call i64 (...) @thread_getId() #6
  %20 = tail call i64 (...) @thread_getNumThread() #6
  %21 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 1
  %22 = load i64, i64* %21, align 8
  call void @createPartition(i64 0, i64 %22, i64 %19, i64 %20, i64* nonnull %i_start, i64* nonnull %i_stop) #6
  %23 = load i64, i64* %i_start, align 8
  %24 = load i64, i64* %i_stop, align 8
  %25 = icmp sgt i64 %24, %23
  br i1 %25, label %.lr.ph67, label %.preheader6

.lr.ph67:                                         ; preds = %0
  %26 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 13
  %27 = load i64*, i64** %26, align 8
  %28 = sub i64 %24, %23
  %min.iters.check = icmp ult i64 %28, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %min.iters.checked

scalar.ph.preheader:                              ; preds = %middle.block, %min.iters.checked, %.lr.ph67
  %maxWeight.065.ph = phi i64 [ 0, %min.iters.checked ], [ 0, %.lr.ph67 ], [ %59, %middle.block ]
  %i.064.ph = phi i64 [ %23, %min.iters.checked ], [ %23, %.lr.ph67 ], [ %ind.end, %middle.block ]
  br label %scalar.ph

min.iters.checked:                                ; preds = %.lr.ph67
  %n.vec = and i64 %28, -4
  %cmp.zero = icmp eq i64 %n.vec, 0
  %ind.end = add i64 %23, %n.vec
  br i1 %cmp.zero, label %scalar.ph.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %min.iters.checked
  %29 = sub i64 %24, %23
  %30 = add i64 %29, -4
  %31 = lshr i64 %30, 2
  %32 = and i64 %31, 1
  %lcmp.mod93 = icmp eq i64 %32, 0
  br i1 %lcmp.mod93, label %vector.body.prol, label %vector.body.preheader.split

vector.body.prol:                                 ; preds = %vector.body.preheader
  %33 = getelementptr inbounds i64, i64* %27, i64 %23
  %34 = bitcast i64* %33 to <2 x i64>*
  %wide.load.prol = load <2 x i64>, <2 x i64>* %34, align 8
  %35 = getelementptr i64, i64* %33, i64 2
  %36 = bitcast i64* %35 to <2 x i64>*
  %wide.load82.prol = load <2 x i64>, <2 x i64>* %36, align 8
  %37 = icmp sgt <2 x i64> %wide.load.prol, zeroinitializer
  %38 = icmp sgt <2 x i64> %wide.load82.prol, zeroinitializer
  %39 = select <2 x i1> %37, <2 x i64> %wide.load.prol, <2 x i64> zeroinitializer
  %40 = select <2 x i1> %38, <2 x i64> %wide.load82.prol, <2 x i64> zeroinitializer
  br label %vector.body.preheader.split

vector.body.preheader.split:                      ; preds = %vector.body.prol, %vector.body.preheader
  %.lcssa89.unr = phi <2 x i64> [ undef, %vector.body.preheader ], [ %40, %vector.body.prol ]
  %.lcssa.unr = phi <2 x i64> [ undef, %vector.body.preheader ], [ %39, %vector.body.prol ]
  %index.unr = phi i64 [ 0, %vector.body.preheader ], [ 4, %vector.body.prol ]
  %vec.phi.unr = phi <2 x i64> [ zeroinitializer, %vector.body.preheader ], [ %39, %vector.body.prol ]
  %vec.phi80.unr = phi <2 x i64> [ zeroinitializer, %vector.body.preheader ], [ %40, %vector.body.prol ]
  %41 = icmp eq i64 %31, 0
  br i1 %41, label %middle.block, label %vector.body.preheader.split.split

vector.body.preheader.split.split:                ; preds = %vector.body.preheader.split
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader.split.split
  %index = phi i64 [ %index.unr, %vector.body.preheader.split.split ], [ %index.next.1, %vector.body ]
  %vec.phi = phi <2 x i64> [ %vec.phi.unr, %vector.body.preheader.split.split ], [ %56, %vector.body ]
  %vec.phi80 = phi <2 x i64> [ %vec.phi80.unr, %vector.body.preheader.split.split ], [ %57, %vector.body ]
  %offset.idx = add i64 %23, %index
  %42 = getelementptr inbounds i64, i64* %27, i64 %offset.idx
  %43 = bitcast i64* %42 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %43, align 8
  %44 = getelementptr i64, i64* %42, i64 2
  %45 = bitcast i64* %44 to <2 x i64>*
  %wide.load82 = load <2 x i64>, <2 x i64>* %45, align 8
  %46 = icmp sgt <2 x i64> %wide.load, %vec.phi
  %47 = icmp sgt <2 x i64> %wide.load82, %vec.phi80
  %48 = select <2 x i1> %46, <2 x i64> %wide.load, <2 x i64> %vec.phi
  %49 = select <2 x i1> %47, <2 x i64> %wide.load82, <2 x i64> %vec.phi80
  %index.next = add i64 %index, 4
  %offset.idx.1 = add i64 %23, %index.next
  %50 = getelementptr inbounds i64, i64* %27, i64 %offset.idx.1
  %51 = bitcast i64* %50 to <2 x i64>*
  %wide.load.1 = load <2 x i64>, <2 x i64>* %51, align 8
  %52 = getelementptr i64, i64* %50, i64 2
  %53 = bitcast i64* %52 to <2 x i64>*
  %wide.load82.1 = load <2 x i64>, <2 x i64>* %53, align 8
  %54 = icmp sgt <2 x i64> %wide.load.1, %48
  %55 = icmp sgt <2 x i64> %wide.load82.1, %49
  %56 = select <2 x i1> %54, <2 x i64> %wide.load.1, <2 x i64> %48
  %57 = select <2 x i1> %55, <2 x i64> %wide.load82.1, <2 x i64> %49
  %index.next.1 = add i64 %index, 8
  %58 = icmp eq i64 %index.next.1, %n.vec
  br i1 %58, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !1

middle.block.unr-lcssa:                           ; preds = %vector.body
  %.lcssa97 = phi <2 x i64> [ %57, %vector.body ]
  %.lcssa96 = phi <2 x i64> [ %56, %vector.body ]
  br label %middle.block

middle.block:                                     ; preds = %vector.body.preheader.split, %middle.block.unr-lcssa
  %.lcssa89 = phi <2 x i64> [ %.lcssa89.unr, %vector.body.preheader.split ], [ %.lcssa97, %middle.block.unr-lcssa ]
  %.lcssa = phi <2 x i64> [ %.lcssa.unr, %vector.body.preheader.split ], [ %.lcssa96, %middle.block.unr-lcssa ]
  %rdx.minmax.cmp = icmp sgt <2 x i64> %.lcssa, %.lcssa89
  %rdx.minmax.select = select <2 x i1> %rdx.minmax.cmp, <2 x i64> %.lcssa, <2 x i64> %.lcssa89
  %rdx.shuf = shufflevector <2 x i64> %rdx.minmax.select, <2 x i64> undef, <2 x i32> <i32 1, i32 undef>
  %rdx.minmax.cmp85 = icmp sgt <2 x i64> %rdx.minmax.select, %rdx.shuf
  %rdx.minmax.cmp85.elt = extractelement <2 x i1> %rdx.minmax.cmp85, i32 0
  %rdx.minmax.select.elt = extractelement <2 x i64> %rdx.minmax.select, i32 0
  %rdx.shuf.elt = extractelement <2 x i64> %rdx.minmax.select, i32 1
  %59 = select i1 %rdx.minmax.cmp85.elt, i64 %rdx.minmax.select.elt, i64 %rdx.shuf.elt
  %cmp.n = icmp eq i64 %28, %n.vec
  br i1 %cmp.n, label %.preheader6, label %scalar.ph.preheader

.preheader6.loopexit:                             ; preds = %scalar.ph
  %.maxWeight.0.lcssa = phi i64 [ %.maxWeight.0, %scalar.ph ]
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.loopexit, %middle.block, %0
  %maxWeight.0.lcssa = phi i64 [ 0, %0 ], [ %59, %middle.block ], [ %.maxWeight.0.lcssa, %.preheader6.loopexit ]
  br label %.outer

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %maxWeight.065 = phi i64 [ %.maxWeight.0, %scalar.ph ], [ %maxWeight.065.ph, %scalar.ph.preheader ]
  %i.064 = phi i64 [ %63, %scalar.ph ], [ %i.064.ph, %scalar.ph.preheader ]
  %60 = getelementptr inbounds i64, i64* %27, i64 %i.064
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %61, %maxWeight.065
  %.maxWeight.0 = select i1 %62, i64 %61, i64 %maxWeight.065
  %63 = add nsw i64 %i.064, 1
  %64 = icmp slt i64 %63, %24
  br i1 %64, label %scalar.ph, label %.preheader6.loopexit, !llvm.loop !4

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %.lr.ph62
  call void @llvm.x86.sse2.pause() #6
  %65 = call i64 (...) @RTM_fallback_isLocked() #6
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %._crit_edge63.loopexit, label %.lr.ph62

._crit_edge63.loopexit:                           ; preds = %.lr.ph62
  br label %._crit_edge63

._crit_edge63:                                    ; preds = %._crit_edge63.loopexit, %.outer
  %67 = icmp slt i32 %tries.0.ph, 2
  br i1 %67, label %68, label %69

; <label>:68                                      ; preds = %._crit_edge63
  %tries.0.ph.lcssa = phi i32 [ %tries.0.ph, %._crit_edge63 ]
  call void (...) @RTM_fallback_lock() #6
  br label %80

; <label>:69                                      ; preds = %._crit_edge63
  %70 = add nsw i32 %tries.0.ph, -1
  %71 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0, i64 0, i64 4294967295) #6, !srcloc !6
  %72 = trunc i64 %71 to i32
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %76, label %.outer

.outer:                                           ; preds = %.preheader6, %69
  %tries.0.ph = phi i32 [ 9, %.preheader6 ], [ %70, %69 ]
  %74 = call i64 (...) @RTM_fallback_isLocked() #6
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %._crit_edge63, label %.lr.ph62.preheader

.lr.ph62.preheader:                               ; preds = %.outer
  br label %.lr.ph62

; <label>:76                                      ; preds = %69
  %tries.0.ph.lcssa94 = phi i32 [ %tries.0.ph, %69 ]
  %77 = call i64 (...) @RTM_fallback_isLocked() #6
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %80, label %79

; <label>:79                                      ; preds = %76
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !7
  br label %80

; <label>:80                                      ; preds = %76, %79, %68
  %tries.0.ph95 = phi i32 [ %tries.0.ph.lcssa94, %76 ], [ %tries.0.ph.lcssa94, %79 ], [ %tries.0.ph.lcssa, %68 ]
  %81 = load i64, i64* @global_maxWeight, align 8
  %82 = icmp sgt i64 %maxWeight.0.lcssa, %81
  br i1 %82, label %83, label %84

; <label>:83                                      ; preds = %80
  store i64 %maxWeight.0.lcssa, i64* @global_maxWeight, align 8
  br label %84

; <label>:84                                      ; preds = %83, %80
  %85 = icmp sgt i32 %tries.0.ph95, 1
  br i1 %85, label %86, label %87

; <label>:86                                      ; preds = %84
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #6, !srcloc !8
  br label %88

; <label>:87                                      ; preds = %84
  call void (...) @RTM_fallback_unlock() #6
  br label %88

; <label>:88                                      ; preds = %87, %86
  call void (...) @thread_barrier_wait() #6
  %89 = load i64, i64* @global_maxWeight, align 8
  %90 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = uitofp i64 %91 to double
  %93 = fmul double %92, 1.500000e+00
  %94 = load i64, i64* @MAX_INT_WEIGHT, align 8
  %95 = uitofp i64 %94 to double
  %96 = fdiv double %93, %95
  %97 = call double @ceil(double %96) #7
  %98 = fadd double %97, 5.000000e+00
  %99 = fptosi double %98 to i64
  %100 = mul i64 %99, 24
  %101 = call noalias i8* @malloc(i64 %100) #6
  %102 = bitcast i8* %101 to %struct.edge*
  %103 = load i64, i64* %i_start, align 8
  %104 = load i64, i64* %i_stop, align 8
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %.lr.ph59, label %._crit_edge60

.lr.ph59:                                         ; preds = %88
  %106 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 13
  %107 = load i64*, i64** %106, align 8
  %108 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 9
  %109 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 2
  %110 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 8
  %111 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 7
  %112 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 0
  br label %113

; <label>:113                                     ; preds = %.lr.ph59, %146
  %i_edgeCounter.057 = phi i64 [ 0, %.lr.ph59 ], [ %i_edgeCounter.1, %146 ]
  %i.156 = phi i64 [ %103, %.lr.ph59 ], [ %147, %146 ]
  %114 = getelementptr inbounds i64, i64* %107, i64 %i.156
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, %89
  br i1 %116, label %.preheader5, label %146

.preheader5:                                      ; preds = %113
  %117 = load i64, i64* %109, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %._crit_edge45, label %.lr.ph44

.lr.ph44:                                         ; preds = %.preheader5
  %119 = load i64*, i64** %108, align 8
  br label %120

; <label>:120                                     ; preds = %.lr.ph44, %124
  %j.043 = phi i64 [ 0, %.lr.ph44 ], [ %125, %124 ]
  %121 = getelementptr inbounds i64, i64* %119, i64 %j.043
  %122 = load i64, i64* %121, align 8
  %123 = icmp ugt i64 %122, %i.156
  br i1 %123, label %._crit_edge45.loopexit, label %124

; <label>:124                                     ; preds = %120
  %125 = add nuw nsw i64 %j.043, 1
  %126 = icmp ult i64 %125, %117
  br i1 %126, label %120, label %._crit_edge45.loopexit

._crit_edge45.loopexit:                           ; preds = %120, %124
  %j.0.lcssa.ph = phi i64 [ %j.043, %120 ], [ %125, %124 ]
  br label %._crit_edge45

._crit_edge45:                                    ; preds = %._crit_edge45.loopexit, %.preheader5
  %j.0.lcssa = phi i64 [ 0, %.preheader5 ], [ %j.0.lcssa.ph, %._crit_edge45.loopexit ]
  %127 = add nsw i64 %j.0.lcssa, -1
  %128 = load i64*, i64** %110, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 %127
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.edge, %struct.edge* %102, i64 %i_edgeCounter.057, i32 1
  store i64 %130, i64* %131, align 8
  %132 = getelementptr inbounds %struct.edge, %struct.edge* %102, i64 %i_edgeCounter.057, i32 2
  store i64 %127, i64* %132, align 8
  %133 = load i64, i64* %112, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %._crit_edge52, label %.lr.ph51

.lr.ph51:                                         ; preds = %._crit_edge45
  %135 = load i64*, i64** %111, align 8
  br label %136

; <label>:136                                     ; preds = %.lr.ph51, %140
  %t.049 = phi i64 [ 0, %.lr.ph51 ], [ %141, %140 ]
  %137 = getelementptr inbounds i64, i64* %135, i64 %t.049
  %138 = load i64, i64* %137, align 8
  %139 = icmp ugt i64 %138, %127
  br i1 %139, label %._crit_edge52.loopexit, label %140

; <label>:140                                     ; preds = %136
  %141 = add nuw nsw i64 %t.049, 1
  %142 = icmp ult i64 %141, %133
  br i1 %142, label %136, label %._crit_edge52.loopexit

._crit_edge52.loopexit:                           ; preds = %136, %140
  %t.0.lcssa.ph = phi i64 [ %t.049, %136 ], [ %141, %140 ]
  br label %._crit_edge52

._crit_edge52:                                    ; preds = %._crit_edge52.loopexit, %._crit_edge45
  %t.0.lcssa = phi i64 [ 0, %._crit_edge45 ], [ %t.0.lcssa.ph, %._crit_edge52.loopexit ]
  %143 = add nsw i64 %t.0.lcssa, -1
  %144 = getelementptr inbounds %struct.edge, %struct.edge* %102, i64 %i_edgeCounter.057, i32 0
  store i64 %143, i64* %144, align 8
  %145 = add nsw i64 %i_edgeCounter.057, 1
  br label %146

; <label>:146                                     ; preds = %113, %._crit_edge52
  %i_edgeCounter.1 = phi i64 [ %145, %._crit_edge52 ], [ %i_edgeCounter.057, %113 ]
  %147 = add nsw i64 %i.156, 1
  %148 = icmp slt i64 %147, %104
  br i1 %148, label %113, label %._crit_edge60.loopexit

._crit_edge60.loopexit:                           ; preds = %146
  %i_edgeCounter.1.lcssa = phi i64 [ %i_edgeCounter.1, %146 ]
  br label %._crit_edge60

._crit_edge60:                                    ; preds = %._crit_edge60.loopexit, %88
  %i_edgeCounter.0.lcssa = phi i64 [ 0, %88 ], [ %i_edgeCounter.1.lcssa, %._crit_edge60.loopexit ]
  %149 = icmp eq i64 %19, 0
  br i1 %149, label %150, label %160

; <label>:150                                     ; preds = %._crit_edge60
  %151 = shl i64 %20, 3
  %152 = call noalias i8* @malloc(i64 %151) #6
  %153 = icmp eq i8* %152, null
  br i1 %153, label %154, label %155

; <label>:154                                     ; preds = %150
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 181, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.getStartLists, i64 0, i64 0)) #8
  unreachable

; <label>:155                                     ; preds = %150
  store i8* %152, i8** bitcast (i64** @global_i_edgeStartCounter to i8**), align 8
  %156 = call noalias i8* @malloc(i64 %151) #6
  %157 = icmp eq i8* %156, null
  br i1 %157, label %158, label %159

; <label>:158                                     ; preds = %155
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 184, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.getStartLists, i64 0, i64 0)) #8
  unreachable

; <label>:159                                     ; preds = %155
  store i8* %156, i8** bitcast (i64** @global_i_edgeEndCounter to i8**), align 8
  store i64 0, i64* %12, align 8
  br label %160

; <label>:160                                     ; preds = %159, %._crit_edge60
  call void (...) @thread_barrier_wait() #6
  %161 = load i64*, i64** @global_i_edgeStartCounter, align 8
  %162 = load i64*, i64** @global_i_edgeEndCounter, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 %19
  store i64 %i_edgeCounter.0.lcssa, i64* %163, align 8
  %164 = getelementptr inbounds i64, i64* %161, i64 %19
  store i64 0, i64* %164, align 8
  call void (...) @thread_barrier_wait() #6
  br i1 %149, label %.preheader4, label %.critedge

.preheader4:                                      ; preds = %160
  %165 = icmp sgt i64 %20, 1
  br i1 %165, label %.lr.ph41.preheader, label %.loopexit75

.lr.ph41.preheader:                               ; preds = %.preheader4
  %166 = and i64 %20, 1
  %lcmp.mod91 = icmp eq i64 %166, 0
  br i1 %lcmp.mod91, label %.lr.ph41.prol, label %.lr.ph41.preheader.split

.lr.ph41.prol:                                    ; preds = %.lr.ph41.preheader
  %167 = load i64, i64* %162, align 8
  %168 = getelementptr inbounds i64, i64* %162, i64 1
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %169, %167
  store i64 %170, i64* %168, align 8
  %171 = getelementptr inbounds i64, i64* %161, i64 1
  store i64 %167, i64* %171, align 8
  br label %.lr.ph41.preheader.split

.lr.ph41.preheader.split:                         ; preds = %.lr.ph41.prol, %.lr.ph41.preheader
  %i.240.unr = phi i64 [ 1, %.lr.ph41.preheader ], [ 2, %.lr.ph41.prol ]
  %172 = icmp eq i64 %20, 2
  br i1 %172, label %.loopexit75.loopexit, label %.lr.ph41.preheader.split.split

.lr.ph41.preheader.split.split:                   ; preds = %.lr.ph41.preheader.split
  br label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph41, %.lr.ph41.preheader.split.split
  %i.240 = phi i64 [ %i.240.unr, %.lr.ph41.preheader.split.split ], [ %187, %.lr.ph41 ]
  %173 = add nsw i64 %i.240, -1
  %174 = getelementptr inbounds i64, i64* %162, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds i64, i64* %162, i64 %i.240
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, %175
  store i64 %178, i64* %176, align 8
  %179 = getelementptr inbounds i64, i64* %161, i64 %i.240
  store i64 %175, i64* %179, align 8
  %180 = add nuw nsw i64 %i.240, 1
  %181 = getelementptr inbounds i64, i64* %162, i64 %i.240
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds i64, i64* %162, i64 %180
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %184, %182
  store i64 %185, i64* %183, align 8
  %186 = getelementptr inbounds i64, i64* %161, i64 %180
  store i64 %182, i64* %186, align 8
  %187 = add nsw i64 %i.240, 2
  %exitcond71.1 = icmp eq i64 %187, %20
  br i1 %exitcond71.1, label %.loopexit75.loopexit.unr-lcssa, label %.lr.ph41

.loopexit75.loopexit.unr-lcssa:                   ; preds = %.lr.ph41
  br label %.loopexit75.loopexit

.loopexit75.loopexit:                             ; preds = %.lr.ph41.preheader.split, %.loopexit75.loopexit.unr-lcssa
  br label %.loopexit75

.loopexit75:                                      ; preds = %.loopexit75.loopexit, %.preheader4
  %188 = load i64, i64* %12, align 8
  %189 = add nsw i64 %188, %i_edgeCounter.0.lcssa
  store i64 %189, i64* %12, align 8
  call void (...) @thread_barrier_wait() #6
  %190 = bitcast %struct.edge** %9 to i8**
  %191 = load i8*, i8** %190, align 8
  call void @free(i8* %191) #6
  %192 = load i64, i64* %12, align 8
  %193 = mul i64 %192, 24
  %194 = call noalias i8* @malloc(i64 %193) #6
  %195 = icmp eq i8* %194, null
  br i1 %195, label %196, label %197

; <label>:196                                     ; preds = %.loopexit75
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 216, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.getStartLists, i64 0, i64 0)) #8
  unreachable

; <label>:197                                     ; preds = %.loopexit75
  store i8* %194, i8** bitcast (%struct.edge** @global_maxIntWtList to i8**), align 8
  br label %200

.critedge:                                        ; preds = %160
  %198 = load i64, i64* %12, align 8
  %199 = add nsw i64 %198, %i_edgeCounter.0.lcssa
  store i64 %199, i64* %12, align 8
  call void (...) @thread_barrier_wait() #6
  br label %200

; <label>:200                                     ; preds = %.critedge, %197
  call void (...) @thread_barrier_wait() #6
  %201 = load %struct.edge*, %struct.edge** @global_maxIntWtList, align 8
  %202 = load i64, i64* %164, align 8
  %203 = load i64, i64* %163, align 8
  %204 = icmp slt i64 %202, %203
  br i1 %204, label %.lr.ph38.preheader, label %._crit_edge39

.lr.ph38.preheader:                               ; preds = %200
  br label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph38.preheader, %.lr.ph38..lr.ph38_crit_edge
  %205 = phi i64 [ %.pre, %.lr.ph38..lr.ph38_crit_edge ], [ %202, %.lr.ph38.preheader ]
  %i.336 = phi i64 [ %220, %.lr.ph38..lr.ph38_crit_edge ], [ %202, %.lr.ph38.preheader ]
  %206 = sub nsw i64 %i.336, %205
  %207 = getelementptr inbounds %struct.edge, %struct.edge* %102, i64 %206, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds %struct.edge, %struct.edge* %201, i64 %i.336, i32 0
  store i64 %208, i64* %209, align 8
  %210 = load i64, i64* %164, align 8
  %211 = sub nsw i64 %i.336, %210
  %212 = getelementptr inbounds %struct.edge, %struct.edge* %102, i64 %211, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds %struct.edge, %struct.edge* %201, i64 %i.336, i32 1
  store i64 %213, i64* %214, align 8
  %215 = load i64, i64* %164, align 8
  %216 = sub nsw i64 %i.336, %215
  %217 = getelementptr inbounds %struct.edge, %struct.edge* %102, i64 %216, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds %struct.edge, %struct.edge* %201, i64 %i.336, i32 2
  store i64 %218, i64* %219, align 8
  %220 = add nsw i64 %i.336, 1
  %221 = load i64, i64* %163, align 8
  %222 = icmp slt i64 %220, %221
  br i1 %222, label %.lr.ph38..lr.ph38_crit_edge, label %._crit_edge39.loopexit

.lr.ph38..lr.ph38_crit_edge:                      ; preds = %.lr.ph38
  %.pre = load i64, i64* %164, align 8
  br label %.lr.ph38

._crit_edge39.loopexit:                           ; preds = %.lr.ph38
  br label %._crit_edge39

._crit_edge39:                                    ; preds = %._crit_edge39.loopexit, %200
  br i1 %149, label %223, label %224

; <label>:223                                     ; preds = %._crit_edge39
  store %struct.edge* %201, %struct.edge** %9, align 8
  br label %224

; <label>:224                                     ; preds = %223, %._crit_edge39
  %225 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 5
  %226 = load i64, i64* %225, align 8
  call void @createPartition(i64 0, i64 %226, i64 %19, i64 %20, i64* nonnull %i_start, i64* nonnull %i_stop) #6
  %227 = load i64, i64* %i_start, align 8
  %228 = load i64, i64* %i_stop, align 8
  %229 = icmp slt i64 %227, %228
  br i1 %229, label %.lr.ph33, label %._crit_edge34

.lr.ph33:                                         ; preds = %224
  %230 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 14
  %231 = load i8*, i8** %230, align 8
  %232 = load i64, i64* @MAX_STRLEN, align 8
  %233 = load i8*, i8** @SOUGHT_STRING, align 8
  %234 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 13
  %235 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 9
  %236 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 2
  %237 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 8
  %238 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 7
  %239 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 0
  br label %240

; <label>:240                                     ; preds = %.lr.ph33, %285
  %i_edgeCounter.231 = phi i64 [ 0, %.lr.ph33 ], [ %i_edgeCounter.3, %285 ]
  %i.430 = phi i64 [ %227, %.lr.ph33 ], [ %286, %285 ]
  %241 = mul nsw i64 %232, %i.430
  %242 = getelementptr inbounds i8, i8* %231, i64 %241
  %243 = call i32 @strncmp(i8* %242, i8* %233, i64 %232) #9
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %.preheader3, label %285

.preheader3:                                      ; preds = %240
  %245 = load i64, i64* %21, align 8
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %.preheader, label %.lr.ph14

.lr.ph14:                                         ; preds = %.preheader3
  %247 = load i64*, i64** %234, align 8
  %248 = sub nsw i64 0, %i.430
  br label %252

.preheader.loopexit:                              ; preds = %252, %256
  %t1.0.lcssa.ph = phi i64 [ %t1.013, %252 ], [ %257, %256 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader3
  %t1.0.lcssa = phi i64 [ 0, %.preheader3 ], [ %t1.0.lcssa.ph, %.preheader.loopexit ]
  %249 = load i64, i64* %236, align 8
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %._crit_edge19, label %.lr.ph18

.lr.ph18:                                         ; preds = %.preheader
  %251 = load i64*, i64** %235, align 8
  br label %259

; <label>:252                                     ; preds = %.lr.ph14, %256
  %t1.013 = phi i64 [ 0, %.lr.ph14 ], [ %257, %256 ]
  %253 = getelementptr inbounds i64, i64* %247, i64 %t1.013
  %254 = load i64, i64* %253, align 8
  %255 = icmp eq i64 %254, %248
  br i1 %255, label %.preheader.loopexit, label %256

; <label>:256                                     ; preds = %252
  %257 = add nuw nsw i64 %t1.013, 1
  %258 = icmp ult i64 %257, %245
  br i1 %258, label %252, label %.preheader.loopexit

; <label>:259                                     ; preds = %.lr.ph18, %263
  %j2.017 = phi i64 [ 0, %.lr.ph18 ], [ %264, %263 ]
  %260 = getelementptr inbounds i64, i64* %251, i64 %j2.017
  %261 = load i64, i64* %260, align 8
  %262 = icmp ugt i64 %261, %t1.0.lcssa
  br i1 %262, label %._crit_edge19.loopexit, label %263

; <label>:263                                     ; preds = %259
  %264 = add nuw nsw i64 %j2.017, 1
  %265 = icmp ult i64 %264, %249
  br i1 %265, label %259, label %._crit_edge19.loopexit

._crit_edge19.loopexit:                           ; preds = %259, %263
  %j2.0.lcssa.ph = phi i64 [ %j2.017, %259 ], [ %264, %263 ]
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %._crit_edge19.loopexit, %.preheader
  %j2.0.lcssa = phi i64 [ 0, %.preheader ], [ %j2.0.lcssa.ph, %._crit_edge19.loopexit ]
  %266 = add nsw i64 %j2.0.lcssa, -1
  %267 = load i64*, i64** %237, align 8
  %268 = getelementptr inbounds i64, i64* %267, i64 %266
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds %struct.edge, %struct.edge* %102, i64 %i_edgeCounter.231, i32 1
  store i64 %269, i64* %270, align 8
  %271 = getelementptr inbounds %struct.edge, %struct.edge* %102, i64 %i_edgeCounter.231, i32 2
  store i64 %266, i64* %271, align 8
  %272 = load i64, i64* %239, align 8
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %._crit_edge19
  %274 = load i64*, i64** %238, align 8
  br label %275

; <label>:275                                     ; preds = %.lr.ph25, %279
  %t1.123 = phi i64 [ 0, %.lr.ph25 ], [ %280, %279 ]
  %276 = getelementptr inbounds i64, i64* %274, i64 %t1.123
  %277 = load i64, i64* %276, align 8
  %278 = icmp ugt i64 %277, %266
  br i1 %278, label %._crit_edge26.loopexit, label %279

; <label>:279                                     ; preds = %275
  %280 = add nuw nsw i64 %t1.123, 1
  %281 = icmp ult i64 %280, %272
  br i1 %281, label %275, label %._crit_edge26.loopexit

._crit_edge26.loopexit:                           ; preds = %275, %279
  %t1.1.lcssa.ph = phi i64 [ %t1.123, %275 ], [ %280, %279 ]
  br label %._crit_edge26

._crit_edge26:                                    ; preds = %._crit_edge26.loopexit, %._crit_edge19
  %t1.1.lcssa = phi i64 [ 0, %._crit_edge19 ], [ %t1.1.lcssa.ph, %._crit_edge26.loopexit ]
  %282 = add nsw i64 %t1.1.lcssa, -1
  %283 = getelementptr inbounds %struct.edge, %struct.edge* %102, i64 %i_edgeCounter.231, i32 0
  store i64 %282, i64* %283, align 8
  %284 = add nsw i64 %i_edgeCounter.231, 1
  br label %285

; <label>:285                                     ; preds = %240, %._crit_edge26
  %i_edgeCounter.3 = phi i64 [ %284, %._crit_edge26 ], [ %i_edgeCounter.231, %240 ]
  %286 = add nsw i64 %i.430, 1
  %287 = icmp slt i64 %286, %228
  br i1 %287, label %240, label %._crit_edge34.loopexit

._crit_edge34.loopexit:                           ; preds = %285
  %i_edgeCounter.3.lcssa = phi i64 [ %i_edgeCounter.3, %285 ]
  br label %._crit_edge34

._crit_edge34:                                    ; preds = %._crit_edge34.loopexit, %224
  %i_edgeCounter.2.lcssa = phi i64 [ 0, %224 ], [ %i_edgeCounter.3.lcssa, %._crit_edge34.loopexit ]
  call void (...) @thread_barrier_wait() #6
  store i64 %i_edgeCounter.2.lcssa, i64* %163, align 8
  store i64 0, i64* %164, align 8
  br i1 %149, label %288, label %.critedge1

; <label>:288                                     ; preds = %._crit_edge34
  store i64 0, i64* %18, align 8
  call void (...) @thread_barrier_wait() #6
  %289 = icmp sgt i64 %20, 1
  br i1 %289, label %.lr.ph12.preheader, label %.loopexit

.lr.ph12.preheader:                               ; preds = %288
  %290 = and i64 %20, 1
  %lcmp.mod = icmp eq i64 %290, 0
  br i1 %lcmp.mod, label %.lr.ph12.prol, label %.lr.ph12.preheader.split

.lr.ph12.prol:                                    ; preds = %.lr.ph12.preheader
  %291 = load i64, i64* %162, align 8
  %292 = getelementptr inbounds i64, i64* %162, i64 1
  %293 = load i64, i64* %292, align 8
  %294 = add nsw i64 %293, %291
  store i64 %294, i64* %292, align 8
  %295 = getelementptr inbounds i64, i64* %161, i64 1
  store i64 %291, i64* %295, align 8
  br label %.lr.ph12.preheader.split

.lr.ph12.preheader.split:                         ; preds = %.lr.ph12.prol, %.lr.ph12.preheader
  %i.510.unr = phi i64 [ 1, %.lr.ph12.preheader ], [ 2, %.lr.ph12.prol ]
  %296 = icmp eq i64 %20, 2
  br i1 %296, label %.loopexit.loopexit, label %.lr.ph12.preheader.split.split

.lr.ph12.preheader.split.split:                   ; preds = %.lr.ph12.preheader.split
  br label %.lr.ph12

.lr.ph12:                                         ; preds = %.lr.ph12, %.lr.ph12.preheader.split.split
  %i.510 = phi i64 [ %i.510.unr, %.lr.ph12.preheader.split.split ], [ %311, %.lr.ph12 ]
  %297 = add nsw i64 %i.510, -1
  %298 = getelementptr inbounds i64, i64* %162, i64 %297
  %299 = load i64, i64* %298, align 8
  %300 = getelementptr inbounds i64, i64* %162, i64 %i.510
  %301 = load i64, i64* %300, align 8
  %302 = add nsw i64 %301, %299
  store i64 %302, i64* %300, align 8
  %303 = getelementptr inbounds i64, i64* %161, i64 %i.510
  store i64 %299, i64* %303, align 8
  %304 = add nuw nsw i64 %i.510, 1
  %305 = getelementptr inbounds i64, i64* %162, i64 %i.510
  %306 = load i64, i64* %305, align 8
  %307 = getelementptr inbounds i64, i64* %162, i64 %304
  %308 = load i64, i64* %307, align 8
  %309 = add nsw i64 %308, %306
  store i64 %309, i64* %307, align 8
  %310 = getelementptr inbounds i64, i64* %161, i64 %304
  store i64 %306, i64* %310, align 8
  %311 = add nsw i64 %i.510, 2
  %exitcond.1 = icmp eq i64 %311, %20
  br i1 %exitcond.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph12

.critedge1:                                       ; preds = %._crit_edge34
  call void (...) @thread_barrier_wait() #6
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph12
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph12.preheader.split, %.loopexit.loopexit.unr-lcssa
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %288, %.critedge1
  %312 = load i64, i64* %18, align 8
  %313 = add nsw i64 %312, %i_edgeCounter.2.lcssa
  store i64 %313, i64* %18, align 8
  call void (...) @thread_barrier_wait() #6
  br i1 %149, label %314, label %323

; <label>:314                                     ; preds = %.loopexit
  %315 = bitcast %struct.edge** %15 to i8**
  %316 = load i8*, i8** %315, align 8
  call void @free(i8* %316) #6
  %317 = load i64, i64* %18, align 8
  %318 = mul i64 %317, 24
  %319 = call noalias i8* @malloc(i64 %318) #6
  %320 = icmp eq i8* %319, null
  br i1 %320, label %321, label %322

; <label>:321                                     ; preds = %314
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 302, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.getStartLists, i64 0, i64 0)) #8
  unreachable

; <label>:322                                     ; preds = %314
  store i8* %319, i8** bitcast (%struct.edge** @global_soughtStrWtList to i8**), align 8
  br label %323

; <label>:323                                     ; preds = %322, %.loopexit
  call void (...) @thread_barrier_wait() #6
  %324 = load %struct.edge*, %struct.edge** @global_soughtStrWtList, align 8
  %325 = load i64, i64* %164, align 8
  %326 = load i64, i64* %163, align 8
  %327 = icmp slt i64 %325, %326
  br i1 %327, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %323
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph..lr.ph_crit_edge
  %328 = phi i64 [ %.pre74, %.lr.ph..lr.ph_crit_edge ], [ %325, %.lr.ph.preheader ]
  %i.69 = phi i64 [ %343, %.lr.ph..lr.ph_crit_edge ], [ %325, %.lr.ph.preheader ]
  %329 = sub nsw i64 %i.69, %328
  %330 = getelementptr inbounds %struct.edge, %struct.edge* %102, i64 %329, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = getelementptr inbounds %struct.edge, %struct.edge* %324, i64 %i.69, i32 0
  store i64 %331, i64* %332, align 8
  %333 = load i64, i64* %164, align 8
  %334 = sub nsw i64 %i.69, %333
  %335 = getelementptr inbounds %struct.edge, %struct.edge* %102, i64 %334, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = getelementptr inbounds %struct.edge, %struct.edge* %324, i64 %i.69, i32 1
  store i64 %336, i64* %337, align 8
  %338 = load i64, i64* %164, align 8
  %339 = sub nsw i64 %i.69, %338
  %340 = getelementptr inbounds %struct.edge, %struct.edge* %102, i64 %339, i32 2
  %341 = load i64, i64* %340, align 8
  %342 = getelementptr inbounds %struct.edge, %struct.edge* %324, i64 %i.69, i32 2
  store i64 %341, i64* %342, align 8
  %343 = add nsw i64 %i.69, 1
  %344 = load i64, i64* %163, align 8
  %345 = icmp slt i64 %343, %344
  br i1 %345, label %.lr.ph..lr.ph_crit_edge, label %._crit_edge.loopexit

.lr.ph..lr.ph_crit_edge:                          ; preds = %.lr.ph
  %.pre74 = load i64, i64* %164, align 8
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %323
  call void (...) @thread_barrier_wait() #6
  br i1 %149, label %346, label %349

; <label>:346                                     ; preds = %._crit_edge
  store %struct.edge* %324, %struct.edge** %15, align 8
  %347 = bitcast i64* %161 to i8*
  call void @free(i8* %347) #6
  %348 = bitcast i64* %162 to i8*
  call void @free(i8* %348) #6
  br label %349

; <label>:349                                     ; preds = %346, %._crit_edge
  call void @free(i8* %101) #6
  %350 = call i64 (...) @thread_getId() #6
  %351 = trunc i64 %350 to i32
  %352 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  %353 = load i32, i32* %352, align 4
  call void @SimRoiEnd(i32 %351, i32 %353) #6
  ret void
}

declare i64 @thread_getId(...) #1

declare void @SimRoiStart(i32) #1

declare i64 @thread_getNumThread(...) #1

declare void @createPartition(i64, i64, i64, i64, i64*, i64*) #1

declare i64 @RTM_fallback_isLocked(...) #1

declare void @RTM_fallback_lock(...) #1

declare void @RTM_fallback_unlock(...) #1

declare void @thread_barrier_wait(...) #1

; Function Attrs: nounwind readnone
declare double @ceil(double) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #5

declare void @SimRoiEnd(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = distinct !{!1, !2, !3}
!2 = !{!"llvm.loop.vectorize.width", i32 1}
!3 = !{!"llvm.loop.interleave.count", i32 1}
!4 = distinct !{!4, !5, !2, !3}
!5 = !{!"llvm.loop.unroll.runtime.disable"}
!6 = !{i32 1667257, i32 1667273, i32 1667309, i32 1667345, i32 1667381}
!7 = !{i32 1667858, i32 1667873, i32 1667907}
!8 = !{i32 1667629, i32 1667644, i32 1667672}
