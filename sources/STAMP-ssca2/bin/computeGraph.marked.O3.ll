; ModuleID = '../bin/computeGraph.marked.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._tm_thread_context_t = type { i32, i32, %struct.simple_metadata*, i32, i32, [44 x i8] }
%struct.simple_metadata = type opaque
%struct.graph = type { i64, i64, i64, i64, i64, i64, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i8* }
%struct.graphSDG = type { i64*, i64*, i64*, i8*, i64 }

@thread_contexts = external global %struct._tm_thread_context_t*, align 8
@global_maxNumVertices = internal unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GPtr->outDegree\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"computeGraph.c\00", align 1
@__PRETTY_FUNCTION__.computeGraph = private unnamed_addr constant [26 x i8] c"void computeGraph(void *)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"GPtr->outVertexIndex\00", align 1
@global_outVertexListSize = internal unnamed_addr global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"GPtr->outVertexList\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"GPtr->paralEdgeIndex\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"GPtr->inDegree\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"GPtr->inVertexIndex\00", align 1
@MAX_CLUSTER_SIZE = external global i64, align 8
@global_impliedEdgeList = internal unnamed_addr global i64* null, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"auxArr\00", align 1
@global_auxArr = internal unnamed_addr global i64** null, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@__PRETTY_FUNCTION__.prefix_sums = private unnamed_addr constant [56 x i8] c"void prefix_sums(ULONGINT_T *, LONGINT_T *, ULONGINT_T)\00", align 1
@global_p = internal unnamed_addr global i64* null, align 8

; Function Attrs: nounwind uwtable
define void @computeGraph(i8* nocapture readonly %argPtr) #0 {
  %i_start = alloca i64, align 8
  %i_stop = alloca i64, align 8
  %1 = tail call i64 (...) @thread_getId() #4
  %2 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %3 = tail call i64 (...) @thread_getId() #4
  %4 = trunc i64 %3 to i32
  tail call void @SimRoiStart(i32 %4) #4
  %5 = bitcast i8* %argPtr to %struct.graph**
  %6 = load %struct.graph*, %struct.graph** %5, align 8
  %7 = getelementptr inbounds i8, i8* %argPtr, i64 8
  %8 = bitcast i8* %7 to %struct.graphSDG**
  %9 = load %struct.graphSDG*, %struct.graphSDG** %8, align 8
  %10 = tail call i64 (...) @thread_getId() #4
  %11 = tail call i64 (...) @thread_getNumThread() #4
  %12 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 4
  %13 = load i64, i64* %12, align 8
  call void @createPartition(i64 0, i64 %13, i64 %10, i64 %11, i64* nonnull %i_start, i64* nonnull %i_stop) #4
  %14 = load i64, i64* %i_start, align 8
  %15 = load i64, i64* %i_stop, align 8
  %16 = icmp sgt i64 %15, %14
  br i1 %16, label %.lr.ph128, label %.preheader25

.lr.ph128:                                        ; preds = %0
  %17 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = sub i64 %15, %14
  %min.iters.check = icmp ult i64 %19, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %min.iters.checked

scalar.ph.preheader:                              ; preds = %middle.block, %min.iters.checked, %.lr.ph128
  %maxNumVertices.0126.ph = phi i64 [ 0, %min.iters.checked ], [ 0, %.lr.ph128 ], [ %46, %middle.block ]
  %i.0125.ph = phi i64 [ %14, %min.iters.checked ], [ %14, %.lr.ph128 ], [ %ind.end, %middle.block ]
  br label %scalar.ph

min.iters.checked:                                ; preds = %.lr.ph128
  %n.vec = and i64 %19, -4
  %cmp.zero = icmp eq i64 %n.vec, 0
  %ind.end = add i64 %14, %n.vec
  br i1 %cmp.zero, label %scalar.ph.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %min.iters.checked
  %20 = sub i64 %15, %14
  %21 = add i64 %20, -4
  %22 = lshr i64 %21, 2
  %23 = and i64 %22, 1
  %lcmp.mod263 = icmp eq i64 %23, 0
  br i1 %lcmp.mod263, label %vector.body.prol, label %vector.body.preheader.split

vector.body.prol:                                 ; preds = %vector.body.preheader
  %24 = getelementptr inbounds i64, i64* %18, i64 %14
  %25 = bitcast i64* %24 to <2 x i64>*
  %wide.load.prol = load <2 x i64>, <2 x i64>* %25, align 8
  %26 = getelementptr i64, i64* %24, i64 2
  %27 = bitcast i64* %26 to <2 x i64>*
  %wide.load215.prol = load <2 x i64>, <2 x i64>* %27, align 8
  br label %vector.body.preheader.split

vector.body.preheader.split:                      ; preds = %vector.body.prol, %vector.body.preheader
  %.lcssa261.unr = phi <2 x i64> [ undef, %vector.body.preheader ], [ %wide.load215.prol, %vector.body.prol ]
  %.lcssa260.unr = phi <2 x i64> [ undef, %vector.body.preheader ], [ %wide.load.prol, %vector.body.prol ]
  %index.unr = phi i64 [ 0, %vector.body.preheader ], [ 4, %vector.body.prol ]
  %vec.phi.unr = phi <2 x i64> [ zeroinitializer, %vector.body.preheader ], [ %wide.load.prol, %vector.body.prol ]
  %vec.phi213.unr = phi <2 x i64> [ zeroinitializer, %vector.body.preheader ], [ %wide.load215.prol, %vector.body.prol ]
  %28 = icmp eq i64 %22, 0
  br i1 %28, label %middle.block, label %vector.body.preheader.split.split

vector.body.preheader.split.split:                ; preds = %vector.body.preheader.split
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader.split.split
  %index = phi i64 [ %index.unr, %vector.body.preheader.split.split ], [ %index.next.1, %vector.body ]
  %vec.phi = phi <2 x i64> [ %vec.phi.unr, %vector.body.preheader.split.split ], [ %43, %vector.body ]
  %vec.phi213 = phi <2 x i64> [ %vec.phi213.unr, %vector.body.preheader.split.split ], [ %44, %vector.body ]
  %offset.idx = add i64 %14, %index
  %29 = getelementptr inbounds i64, i64* %18, i64 %offset.idx
  %30 = bitcast i64* %29 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %30, align 8
  %31 = getelementptr i64, i64* %29, i64 2
  %32 = bitcast i64* %31 to <2 x i64>*
  %wide.load215 = load <2 x i64>, <2 x i64>* %32, align 8
  %33 = icmp ugt <2 x i64> %wide.load, %vec.phi
  %34 = icmp ugt <2 x i64> %wide.load215, %vec.phi213
  %35 = select <2 x i1> %33, <2 x i64> %wide.load, <2 x i64> %vec.phi
  %36 = select <2 x i1> %34, <2 x i64> %wide.load215, <2 x i64> %vec.phi213
  %index.next = add i64 %index, 4
  %offset.idx.1 = add i64 %14, %index.next
  %37 = getelementptr inbounds i64, i64* %18, i64 %offset.idx.1
  %38 = bitcast i64* %37 to <2 x i64>*
  %wide.load.1 = load <2 x i64>, <2 x i64>* %38, align 8
  %39 = getelementptr i64, i64* %37, i64 2
  %40 = bitcast i64* %39 to <2 x i64>*
  %wide.load215.1 = load <2 x i64>, <2 x i64>* %40, align 8
  %41 = icmp ugt <2 x i64> %wide.load.1, %35
  %42 = icmp ugt <2 x i64> %wide.load215.1, %36
  %43 = select <2 x i1> %41, <2 x i64> %wide.load.1, <2 x i64> %35
  %44 = select <2 x i1> %42, <2 x i64> %wide.load215.1, <2 x i64> %36
  %index.next.1 = add i64 %index, 8
  %45 = icmp eq i64 %index.next.1, %n.vec
  br i1 %45, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !1

middle.block.unr-lcssa:                           ; preds = %vector.body
  %.lcssa283 = phi <2 x i64> [ %44, %vector.body ]
  %.lcssa282 = phi <2 x i64> [ %43, %vector.body ]
  br label %middle.block

middle.block:                                     ; preds = %vector.body.preheader.split, %middle.block.unr-lcssa
  %.lcssa261 = phi <2 x i64> [ %.lcssa261.unr, %vector.body.preheader.split ], [ %.lcssa283, %middle.block.unr-lcssa ]
  %.lcssa260 = phi <2 x i64> [ %.lcssa260.unr, %vector.body.preheader.split ], [ %.lcssa282, %middle.block.unr-lcssa ]
  %rdx.minmax.cmp = icmp ugt <2 x i64> %.lcssa260, %.lcssa261
  %rdx.minmax.select = select <2 x i1> %rdx.minmax.cmp, <2 x i64> %.lcssa260, <2 x i64> %.lcssa261
  %rdx.shuf = shufflevector <2 x i64> %rdx.minmax.select, <2 x i64> undef, <2 x i32> <i32 1, i32 undef>
  %rdx.minmax.cmp218 = icmp ugt <2 x i64> %rdx.minmax.select, %rdx.shuf
  %rdx.minmax.cmp218.elt = extractelement <2 x i1> %rdx.minmax.cmp218, i32 0
  %rdx.minmax.select.elt = extractelement <2 x i64> %rdx.minmax.select, i32 0
  %rdx.shuf.elt = extractelement <2 x i64> %rdx.minmax.select, i32 1
  %46 = select i1 %rdx.minmax.cmp218.elt, i64 %rdx.minmax.select.elt, i64 %rdx.shuf.elt
  %cmp.n = icmp eq i64 %19, %n.vec
  br i1 %cmp.n, label %.preheader25, label %scalar.ph.preheader

.preheader25.loopexit:                            ; preds = %scalar.ph
  %.maxNumVertices.0.lcssa = phi i64 [ %.maxNumVertices.0, %scalar.ph ]
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.loopexit, %middle.block, %0
  %maxNumVertices.0.lcssa = phi i64 [ 0, %0 ], [ %46, %middle.block ], [ %.maxNumVertices.0.lcssa, %.preheader25.loopexit ]
  br label %.outer26

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %maxNumVertices.0126 = phi i64 [ %.maxNumVertices.0, %scalar.ph ], [ %maxNumVertices.0126.ph, %scalar.ph.preheader ]
  %i.0125 = phi i64 [ %50, %scalar.ph ], [ %i.0125.ph, %scalar.ph.preheader ]
  %47 = getelementptr inbounds i64, i64* %18, i64 %i.0125
  %48 = load i64, i64* %47, align 8
  %49 = icmp ugt i64 %48, %maxNumVertices.0126
  %.maxNumVertices.0 = select i1 %49, i64 %48, i64 %maxNumVertices.0126
  %50 = add nsw i64 %i.0125, 1
  %51 = icmp slt i64 %50, %15
  br i1 %51, label %scalar.ph, label %.preheader25.loopexit, !llvm.loop !4

.lr.ph123:                                        ; preds = %.lr.ph123.preheader, %.lr.ph123
  call void @llvm.x86.sse2.pause() #4
  %52 = call i64 (...) @RTM_fallback_isLocked() #4
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %._crit_edge124.loopexit, label %.lr.ph123

._crit_edge124.loopexit:                          ; preds = %.lr.ph123
  br label %._crit_edge124

._crit_edge124:                                   ; preds = %._crit_edge124.loopexit, %.outer26
  %54 = icmp slt i32 %tries.0.ph, 2
  br i1 %54, label %71, label %55

; <label>:55                                      ; preds = %._crit_edge124
  %56 = add nsw i32 %tries.0.ph, -1
  %57 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 7, i64 0, i64 7, i64 4294967295) #4, !srcloc !6
  %58 = trunc i64 %57 to i32
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %62, label %.outer26

.outer26:                                         ; preds = %.preheader25, %55
  %tries.0.ph = phi i32 [ 9, %.preheader25 ], [ %56, %55 ]
  %60 = call i64 (...) @RTM_fallback_isLocked() #4
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %._crit_edge124, label %.lr.ph123.preheader

.lr.ph123.preheader:                              ; preds = %.outer26
  br label %.lr.ph123

; <label>:62                                      ; preds = %55
  %63 = call i64 (...) @RTM_fallback_isLocked() #4
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %66, label %65

; <label>:65                                      ; preds = %62
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !7
  br label %66

; <label>:66                                      ; preds = %62, %65
  %67 = load i64, i64* @global_maxNumVertices, align 8
  %68 = icmp ugt i64 %67, %maxNumVertices.0.lcssa
  %69 = select i1 %68, i64 %67, i64 %maxNumVertices.0.lcssa
  %70 = add i64 %69, 1
  store i64 %70, i64* @global_maxNumVertices, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 7) #4, !srcloc !8
  br label %76

; <label>:71                                      ; preds = %._crit_edge124
  call void (...) @RTM_fallback_lock() #4
  %72 = load i64, i64* @global_maxNumVertices, align 8
  %73 = icmp ugt i64 %72, %maxNumVertices.0.lcssa
  %74 = select i1 %73, i64 %72, i64 %maxNumVertices.0.lcssa
  %75 = add i64 %74, 1
  store i64 %75, i64* @global_maxNumVertices, align 8
  call void (...) @RTM_fallback_unlock() #4
  br label %76

; <label>:76                                      ; preds = %71, %66
  call void (...) @thread_barrier_wait() #4
  %77 = icmp eq i64 %10, 0
  br i1 %77, label %78, label %._crit_edge164

._crit_edge164:                                   ; preds = %76
  %.pre165 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 0
  br label %122

; <label>:78                                      ; preds = %76
  %79 = load i64, i64* @global_maxNumVertices, align 8
  %80 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 0
  store i64 %79, i64* %80, align 8
  %81 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 1
  store i64 %13, i64* %81, align 8
  %82 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 2
  %83 = bitcast i64** %82 to i64*
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 13
  %86 = bitcast i64** %85 to i64*
  store i64 %84, i64* %86, align 8
  %87 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 3
  %88 = bitcast i8** %87 to i64*
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 14
  %91 = bitcast i8** %90 to i64*
  store i64 %89, i64* %91, align 8
  %92 = icmp eq i64 %13, 0
  %93 = inttoptr i64 %84 to i64*
  br i1 %92, label %.loopexit24, label %.lr.ph122

.lr.ph122:                                        ; preds = %78
  %94 = add i64 %13, -1
  br label %97

; <label>:95                                      ; preds = %97
  %96 = icmp ugt i64 %13, %102
  br i1 %96, label %97, label %.loopexit24.loopexit

; <label>:97                                      ; preds = %.lr.ph122, %95
  %i.1120 = phi i64 [ 0, %.lr.ph122 ], [ %102, %95 ]
  %98 = sub i64 %94, %i.1120
  %99 = getelementptr inbounds i64, i64* %93, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = icmp slt i64 %100, 0
  %102 = add nuw nsw i64 %i.1120, 1
  br i1 %101, label %103, label %95

; <label>:103                                     ; preds = %97
  %.lcssa280 = phi i64 [ %100, %97 ]
  %104 = sub i64 1, %.lcssa280
  %105 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 5
  store i64 %104, i64* %105, align 8
  %106 = sub i64 %13, %104
  %107 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 4
  store i64 %106, i64* %107, align 8
  br label %.loopexit24

.loopexit24.loopexit:                             ; preds = %95
  br label %.loopexit24

.loopexit24:                                      ; preds = %.loopexit24.loopexit, %78, %103
  %108 = shl i64 %79, 3
  %109 = call noalias i8* @malloc(i64 %108) #4
  %110 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 6
  %111 = bitcast i64** %110 to i8**
  store i8* %109, i8** %111, align 8
  %112 = icmp eq i8* %109, null
  br i1 %112, label %113, label %114

; <label>:113                                     ; preds = %.loopexit24
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 210, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i64 0, i64 0)) #5
  unreachable

; <label>:114                                     ; preds = %.loopexit24
  %115 = load i64, i64* %80, align 8
  %116 = shl i64 %115, 3
  %117 = call noalias i8* @malloc(i64 %116) #4
  %118 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 7
  %119 = bitcast i64** %118 to i8**
  store i8* %117, i8** %119, align 8
  %120 = icmp eq i8* %117, null
  br i1 %120, label %121, label %122

; <label>:121                                     ; preds = %114
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 214, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i64 0, i64 0)) #5
  unreachable

; <label>:122                                     ; preds = %._crit_edge164, %114
  %.pre-phi = phi i64* [ %.pre165, %._crit_edge164 ], [ %80, %114 ]
  call void (...) @thread_barrier_wait() #4
  %123 = load i64, i64* %.pre-phi, align 8
  call void @createPartition(i64 0, i64 %123, i64 %10, i64 %11, i64* nonnull %i_start, i64* nonnull %i_stop) #4
  %124 = load i64, i64* %i_start, align 8
  %125 = load i64, i64* %i_stop, align 8
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %.lr.ph118, label %._crit_edge119

.lr.ph118:                                        ; preds = %122
  %127 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 6
  %128 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 7
  br label %129

; <label>:129                                     ; preds = %.lr.ph118, %129
  %i.2116 = phi i64 [ %124, %.lr.ph118 ], [ %134, %129 ]
  %130 = load i64*, i64** %127, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 %i.2116
  store i64 0, i64* %131, align 8
  %132 = load i64*, i64** %128, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 %i.2116
  store i64 0, i64* %133, align 8
  %134 = add nsw i64 %i.2116, 1
  %135 = load i64, i64* %i_stop, align 8
  %136 = icmp slt i64 %134, %135
  br i1 %136, label %129, label %._crit_edge119.loopexit

._crit_edge119.loopexit:                          ; preds = %129
  br label %._crit_edge119

._crit_edge119:                                   ; preds = %._crit_edge119.loopexit, %122
  call void (...) @thread_barrier_wait() #4
  %137 = load i64, i64* %i_start, align 8
  %138 = load i64, i64* %i_stop, align 8
  %139 = icmp slt i64 %137, %138
  %140 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 6
  br i1 %139, label %.lr.ph113, label %._crit_edge114

.lr.ph113:                                        ; preds = %._crit_edge119
  %141 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 1
  %142 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 0
  %143 = icmp eq i64 %13, 0
  br label %144

; <label>:144                                     ; preds = %.lr.ph113, %.loopexit17
  %i.3109 = phi i64 [ %137, %.lr.ph113 ], [ %218, %.loopexit17 ]
  %outVertexListSize.0108 = phi i64 [ 0, %.lr.ph113 ], [ %outVertexListSize.7, %.loopexit17 ]
  %i0.0107 = phi i64 [ -1, %.lr.ph113 ], [ %i0.5, %.loopexit17 ]
  %145 = icmp eq i64 %outVertexListSize.0108, 0
  %146 = icmp ne i64 %i.3109, 0
  %or.cond = and i1 %145, %146
  %147 = icmp eq i64 %i0.0107, -1
  %or.cond7 = and i1 %147, %or.cond
  br i1 %or.cond7, label %.preheader22, label %.loopexit23

.preheader22:                                     ; preds = %144
  br i1 %143, label %.preheader22.split.preheader, label %.lr.ph98.us.preheader

.preheader22.split.preheader:                     ; preds = %.preheader22
  br label %.preheader22.split

.lr.ph98.us.preheader:                            ; preds = %.preheader22
  %.pre = load i64*, i64** %142, align 8
  br label %.lr.ph98.us

; <label>:148                                     ; preds = %.lr.ph98.us, %152
  %j.096.us = phi i64 [ 0, %.lr.ph98.us ], [ %153, %152 ]
  %149 = getelementptr inbounds i64, i64* %.pre, i64 %j.096.us
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %k.0.us, %150
  br i1 %151, label %._crit_edge99.us, label %152

; <label>:152                                     ; preds = %148
  %153 = add nuw i64 %j.096.us, 1
  %154 = icmp ult i64 %153, %13
  br i1 %154, label %148, label %._crit_edge99.us.thread

._crit_edge99.us.thread:                          ; preds = %152
  %155 = add i64 %k.0.us, -1
  br label %.lr.ph98.us.backedge

._crit_edge99.us:                                 ; preds = %148
  %j.096.us.lcssa = phi i64 [ %j.096.us, %148 ]
  %156 = add i64 %k.0.us, -1
  %.old6.us = icmp eq i64 %j.096.us.lcssa, -1
  br i1 %.old6.us, label %.lr.ph98.us.backedge, label %.loopexit23.loopexit

.lr.ph98.us.backedge:                             ; preds = %._crit_edge99.us, %._crit_edge99.us.thread
  %k.0.us.be = phi i64 [ %156, %._crit_edge99.us ], [ %155, %._crit_edge99.us.thread ]
  br label %.lr.ph98.us

.lr.ph98.us:                                      ; preds = %.lr.ph98.us.backedge, %.lr.ph98.us.preheader
  %k.0.us = phi i64 [ %i.3109, %.lr.ph98.us.preheader ], [ %k.0.us.be, %.lr.ph98.us.backedge ]
  br label %148

.preheader22.split:                               ; preds = %.preheader22.split.preheader, %.preheader22.split
  br label %.preheader22.split

.loopexit23.loopexit:                             ; preds = %._crit_edge99.us
  %.lcssa276 = phi i64 [ %156, %._crit_edge99.us ]
  %j.096.us.lcssa.lcssa = phi i64 [ %j.096.us.lcssa, %._crit_edge99.us ]
  br label %.loopexit23

.loopexit23:                                      ; preds = %.loopexit23.loopexit, %144
  %k.1 = phi i64 [ %i.3109, %144 ], [ %.lcssa276, %.loopexit23.loopexit ]
  %i0.3 = phi i64 [ %i0.0107, %144 ], [ %j.096.us.lcssa.lcssa, %.loopexit23.loopexit ]
  %157 = or i64 %k.1, %outVertexListSize.0108
  %158 = icmp eq i64 %157, 0
  %.i0.3 = select i1 %158, i64 0, i64 %i0.3
  %159 = icmp ult i64 %.i0.3, %13
  br i1 %159, label %.lr.ph105, label %.loopexit19

.lr.ph105:                                        ; preds = %.loopexit23
  %160 = load i64, i64* %.pre-phi, align 8
  %161 = add i64 %160, -1
  %162 = icmp eq i64 %i.3109, %161
  br i1 %162, label %.loopexit19, label %.lr.ph105.split.preheader

.lr.ph105.split.preheader:                        ; preds = %.lr.ph105
  %.pre154 = load i64*, i64** %142, align 8
  br label %.lr.ph105.split

.lr.ph105.split:                                  ; preds = %.lr.ph105.split.preheader, %193
  %j.1103 = phi i64 [ %194, %193 ], [ %.i0.3, %.lr.ph105.split.preheader ]
  %163 = getelementptr inbounds i64, i64* %.pre154, i64 %j.1103
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %i.3109, %164
  br i1 %165, label %193, label %166

; <label>:166                                     ; preds = %.lr.ph105.split
  %j.1103.lcssa = phi i64 [ %j.1103, %.lr.ph105.split ]
  %167 = icmp eq i64 %j.1103.lcssa, 0
  br i1 %167, label %.loopexit19, label %168

; <label>:168                                     ; preds = %166
  %169 = add i64 %j.1103.lcssa, -1
  %170 = getelementptr inbounds i64, i64* %.pre154, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %i.3109, %171
  %173 = icmp eq i64 %j.1103.lcssa, %.i0.3
  %or.cond8 = or i1 %173, %172
  br i1 %or.cond8, label %.loopexit19, label %174

; <label>:174                                     ; preds = %168
  %175 = load i64*, i64** %140, align 8
  %176 = getelementptr inbounds i64, i64* %175, i64 %i.3109
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %176, align 8
  br label %.outer20

.outer20:                                         ; preds = %188, %174
  %t.0.in.ph = phi i64 [ %t.0.lcssa278, %188 ], [ %.i0.3, %174 ]
  %outVertexListSize.1.ph.in = phi i64 [ %outVertexListSize.1.ph, %188 ], [ %outVertexListSize.0108, %174 ]
  %outVertexListSize.1.ph = add i64 %outVertexListSize.1.ph.in, 1
  br label %179

; <label>:179                                     ; preds = %.outer20, %181
  %t.0.in = phi i64 [ %t.0, %181 ], [ %t.0.in.ph, %.outer20 ]
  %t.0 = add i64 %t.0.in, 1
  %180 = icmp ult i64 %t.0, %j.1103.lcssa
  br i1 %180, label %181, label %.loopexit19.loopexit

; <label>:181                                     ; preds = %179
  %182 = load i64*, i64** %141, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 %t.0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds i64, i64* %182, i64 %t.0.in
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %184, %186
  br i1 %187, label %179, label %188

; <label>:188                                     ; preds = %181
  %t.0.lcssa278 = phi i64 [ %t.0, %181 ]
  %189 = load i64*, i64** %140, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 %i.3109
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %191, 1
  store i64 %192, i64* %190, align 8
  br label %.outer20

; <label>:193                                     ; preds = %.lr.ph105.split
  %194 = add nuw i64 %j.1103, 1
  %195 = icmp ult i64 %194, %13
  br i1 %195, label %.lr.ph105.split, label %.loopexit19.loopexit241

.loopexit19.loopexit:                             ; preds = %179
  %outVertexListSize.1.ph.lcssa = phi i64 [ %outVertexListSize.1.ph, %179 ]
  br label %.loopexit19

.loopexit19.loopexit241:                          ; preds = %193
  br label %.loopexit19

.loopexit19:                                      ; preds = %.loopexit19.loopexit241, %.loopexit19.loopexit, %.loopexit23, %.lr.ph105, %166, %168
  %i0.5 = phi i64 [ %j.1103.lcssa, %168 ], [ 0, %166 ], [ %.i0.3, %.lr.ph105 ], [ %.i0.3, %.loopexit23 ], [ %j.1103.lcssa, %.loopexit19.loopexit ], [ %.i0.3, %.loopexit19.loopexit241 ]
  %outVertexListSize.4 = phi i64 [ %outVertexListSize.0108, %168 ], [ %outVertexListSize.0108, %166 ], [ %outVertexListSize.0108, %.lr.ph105 ], [ %outVertexListSize.0108, %.loopexit23 ], [ %outVertexListSize.1.ph.lcssa, %.loopexit19.loopexit ], [ %outVertexListSize.0108, %.loopexit19.loopexit241 ]
  %196 = load i64, i64* %.pre-phi, align 8
  %197 = add i64 %196, -1
  %198 = icmp eq i64 %i.3109, %197
  br i1 %198, label %199, label %.loopexit17

; <label>:199                                     ; preds = %.loopexit19
  %200 = load i64*, i64** %140, align 8
  %201 = getelementptr inbounds i64, i64* %200, i64 %i.3109
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %202, 1
  store i64 %203, i64* %201, align 8
  br label %.outer18

.outer18:                                         ; preds = %213, %199
  %t1.0.in.ph = phi i64 [ %t1.0.lcssa279, %213 ], [ %i0.5, %199 ]
  %outVertexListSize.5.ph.in = phi i64 [ %outVertexListSize.5.ph, %213 ], [ %outVertexListSize.4, %199 ]
  %outVertexListSize.5.ph = add i64 %outVertexListSize.5.ph.in, 1
  br label %204

; <label>:204                                     ; preds = %.outer18, %206
  %t1.0.in = phi i64 [ %t1.0, %206 ], [ %t1.0.in.ph, %.outer18 ]
  %t1.0 = add i64 %t1.0.in, 1
  %205 = icmp ult i64 %t1.0, %13
  br i1 %205, label %206, label %.loopexit17.loopexit

; <label>:206                                     ; preds = %204
  %207 = load i64*, i64** %141, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 %t1.0
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds i64, i64* %207, i64 %t1.0.in
  %211 = load i64, i64* %210, align 8
  %212 = icmp eq i64 %209, %211
  br i1 %212, label %204, label %213

; <label>:213                                     ; preds = %206
  %t1.0.lcssa279 = phi i64 [ %t1.0, %206 ]
  %214 = load i64*, i64** %140, align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 %i.3109
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %216, 1
  store i64 %217, i64* %215, align 8
  br label %.outer18

.loopexit17.loopexit:                             ; preds = %204
  %outVertexListSize.5.ph.lcssa = phi i64 [ %outVertexListSize.5.ph, %204 ]
  br label %.loopexit17

.loopexit17:                                      ; preds = %.loopexit17.loopexit, %.loopexit19
  %outVertexListSize.7 = phi i64 [ %outVertexListSize.4, %.loopexit19 ], [ %outVertexListSize.5.ph.lcssa, %.loopexit17.loopexit ]
  %218 = add nsw i64 %i.3109, 1
  %219 = load i64, i64* %i_stop, align 8
  %220 = icmp slt i64 %218, %219
  br i1 %220, label %144, label %._crit_edge114.loopexit

._crit_edge114.loopexit:                          ; preds = %.loopexit17
  %outVertexListSize.7.lcssa = phi i64 [ %outVertexListSize.7, %.loopexit17 ]
  br label %._crit_edge114

._crit_edge114:                                   ; preds = %._crit_edge114.loopexit, %._crit_edge119
  %outVertexListSize.0.lcssa = phi i64 [ 0, %._crit_edge119 ], [ %outVertexListSize.7.lcssa, %._crit_edge114.loopexit ]
  call void (...) @thread_barrier_wait() #4
  %221 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 7
  %222 = load i64*, i64** %221, align 8
  %223 = load i64*, i64** %140, align 8
  %224 = load i64, i64* %.pre-phi, align 8
  call fastcc void @prefix_sums(i64* %222, i64* %223, i64 %224)
  call void (...) @thread_barrier_wait() #4
  br label %.outer16

.outer16:                                         ; preds = %230, %._crit_edge114
  %tries3.0.ph = phi i32 [ %231, %230 ], [ 9, %._crit_edge114 ]
  %225 = call i64 (...) @RTM_fallback_isLocked() #4
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %._crit_edge95, label %.lr.ph94.preheader

.lr.ph94.preheader:                               ; preds = %.outer16
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %.lr.ph94
  call void @llvm.x86.sse2.pause() #4
  %227 = call i64 (...) @RTM_fallback_isLocked() #4
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %._crit_edge95.loopexit, label %.lr.ph94

._crit_edge95.loopexit:                           ; preds = %.lr.ph94
  br label %._crit_edge95

._crit_edge95:                                    ; preds = %._crit_edge95.loopexit, %.outer16
  %229 = icmp slt i32 %tries3.0.ph, 2
  br i1 %229, label %242, label %230

; <label>:230                                     ; preds = %._crit_edge95
  %231 = add nsw i32 %tries3.0.ph, -1
  %232 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 8, i64 0, i64 8, i64 4294967295) #4, !srcloc !6
  %233 = trunc i64 %232 to i32
  %234 = icmp eq i32 %233, -1
  br i1 %234, label %235, label %.outer16

; <label>:235                                     ; preds = %230
  %236 = call i64 (...) @RTM_fallback_isLocked() #4
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %239, label %238

; <label>:238                                     ; preds = %235
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !7
  br label %239

; <label>:239                                     ; preds = %235, %238
  %240 = load i64, i64* @global_outVertexListSize, align 8
  %241 = add i64 %240, %outVertexListSize.0.lcssa
  store i64 %241, i64* @global_outVertexListSize, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 8) #4, !srcloc !8
  br label %245

; <label>:242                                     ; preds = %._crit_edge95
  call void (...) @RTM_fallback_lock() #4
  %243 = load i64, i64* @global_outVertexListSize, align 8
  %244 = add i64 %243, %outVertexListSize.0.lcssa
  store i64 %244, i64* @global_outVertexListSize, align 8
  call void (...) @RTM_fallback_unlock() #4
  br label %245

; <label>:245                                     ; preds = %242, %239
  call void (...) @thread_barrier_wait() #4
  %246 = load i64, i64* @global_outVertexListSize, align 8
  br i1 %77, label %247, label %266

; <label>:247                                     ; preds = %245
  %248 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 2
  store i64 %246, i64* %248, align 8
  %249 = shl i64 %246, 3
  %250 = call noalias i8* @malloc(i64 %249) #4
  %251 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 8
  %252 = bitcast i64** %251 to i8**
  store i8* %250, i8** %252, align 8
  %253 = icmp eq i8* %250, null
  br i1 %253, label %254, label %255

; <label>:254                                     ; preds = %247
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 314, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i64 0, i64 0)) #5
  unreachable

; <label>:255                                     ; preds = %247
  %256 = call noalias i8* @malloc(i64 %249) #4
  %257 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 9
  %258 = bitcast i64** %257 to i8**
  store i8* %256, i8** %258, align 8
  %259 = icmp eq i8* %256, null
  br i1 %259, label %260, label %261

; <label>:260                                     ; preds = %255
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 317, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i64 0, i64 0)) #5
  unreachable

; <label>:261                                     ; preds = %255
  %262 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 1
  %263 = load i64*, i64** %262, align 8
  %264 = load i64, i64* %263, align 8
  %265 = load i64*, i64** %251, align 8
  store i64 %264, i64* %265, align 8
  br label %266

; <label>:266                                     ; preds = %261, %245
  call void (...) @thread_barrier_wait() #4
  %267 = load i64, i64* %i_start, align 8
  %268 = load i64, i64* %i_stop, align 8
  %269 = icmp slt i64 %267, %268
  br i1 %269, label %.preheader15.lr.ph, label %._crit_edge93

.preheader15.lr.ph:                               ; preds = %266
  %270 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 9
  %271 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 1
  %272 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 8
  %273 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 0
  %274 = icmp eq i64 %13, 0
  br label %.preheader15

.preheader15:                                     ; preds = %.preheader15.lr.ph, %.loopexit
  %indvar = phi i64 [ 0, %.preheader15.lr.ph ], [ %indvar.next, %.loopexit ]
  %i.490 = phi i64 [ %267, %.preheader15.lr.ph ], [ %380, %.loopexit ]
  %i0.689 = phi i64 [ -1, %.preheader15.lr.ph ], [ %i0.10, %.loopexit ]
  %275 = add i64 %267, %indvar
  %276 = add i64 %275, -16
  %277 = lshr i64 %276, 4
  %278 = add nuw nsw i64 %277, 1
  %279 = add i64 %267, %indvar
  %280 = icmp eq i64 %i0.689, -1
  %281 = icmp ne i64 %i.490, 0
  %282 = and i1 %281, %280
  br i1 %282, label %.preheader10.lr.ph, label %._crit_edge81

.preheader10.lr.ph:                               ; preds = %.preheader15
  br i1 %274, label %.preheader10.preheader, label %.lr.ph74.us.preheader

.preheader10.preheader:                           ; preds = %.preheader10.lr.ph
  %min.iters.check223 = icmp ult i64 %279, 16
  br i1 %min.iters.check223, label %.preheader10.preheader239, label %min.iters.checked224

.preheader10.preheader239:                        ; preds = %middle.block221, %min.iters.checked224, %.preheader10.preheader
  %k4.079.ph = phi i64 [ %i.490, %min.iters.checked224 ], [ %i.490, %.preheader10.preheader ], [ %ind.end232, %middle.block221 ]
  br label %.preheader10

min.iters.checked224:                             ; preds = %.preheader10.preheader
  %n.vec226 = and i64 %279, -16
  %cmp.zero227 = icmp eq i64 %n.vec226, 0
  %ind.end232 = sub i64 %i.490, %n.vec226
  br i1 %cmp.zero227, label %.preheader10.preheader239, label %vector.body220.preheader

vector.body220.preheader:                         ; preds = %min.iters.checked224
  %xtraiter = and i64 %278, 7
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %vector.body220.preheader.split, label %vector.body220.prol.preheader

vector.body220.prol.preheader:                    ; preds = %vector.body220.preheader
  br label %vector.body220.prol

vector.body220.prol:                              ; preds = %vector.body220.prol, %vector.body220.prol.preheader
  %index229.prol = phi i64 [ %index.next230.prol, %vector.body220.prol ], [ 0, %vector.body220.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %vector.body220.prol ], [ %xtraiter, %vector.body220.prol.preheader ]
  %index.next230.prol = add i64 %index229.prol, 16
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %vector.body220.preheader.split.loopexit, label %vector.body220.prol, !llvm.loop !9

vector.body220.preheader.split.loopexit:          ; preds = %vector.body220.prol
  %index.next230.prol.lcssa = phi i64 [ %index.next230.prol, %vector.body220.prol ]
  br label %vector.body220.preheader.split

vector.body220.preheader.split:                   ; preds = %vector.body220.preheader, %vector.body220.preheader.split.loopexit
  %index229.unr = phi i64 [ 0, %vector.body220.preheader ], [ %index.next230.prol.lcssa, %vector.body220.preheader.split.loopexit ]
  %283 = icmp ult i64 %276, 112
  br i1 %283, label %middle.block221, label %vector.body220.preheader.split.split

vector.body220.preheader.split.split:             ; preds = %vector.body220.preheader.split
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.body220.preheader.split.split
  %index229 = phi i64 [ %index229.unr, %vector.body220.preheader.split.split ], [ %index.next230.7, %vector.body220 ]
  %index.next230.7 = add i64 %index229, 128
  %284 = icmp eq i64 %index.next230.7, %n.vec226
  br i1 %284, label %middle.block221.unr-lcssa, label %vector.body220, !llvm.loop !11

middle.block221.unr-lcssa:                        ; preds = %vector.body220
  br label %middle.block221

middle.block221:                                  ; preds = %vector.body220.preheader.split, %middle.block221.unr-lcssa
  %cmp.n233 = icmp eq i64 %279, %n.vec226
  br i1 %cmp.n233, label %._crit_edge81, label %.preheader10.preheader239

.lr.ph74.us.preheader:                            ; preds = %.preheader10.lr.ph
  %.pre155 = load i64*, i64** %273, align 8
  br label %.lr.ph74.us

; <label>:285                                     ; preds = %.lr.ph74.us, %289
  %j.273.us = phi i64 [ 0, %.lr.ph74.us ], [ %290, %289 ]
  %286 = getelementptr inbounds i64, i64* %.pre155, i64 %j.273.us
  %287 = load i64, i64* %286, align 8
  %288 = icmp eq i64 %k4.079.us, %287
  br i1 %288, label %._crit_edge75.us, label %289

; <label>:289                                     ; preds = %285
  %290 = add nuw i64 %j.273.us, 1
  %291 = icmp ult i64 %290, %13
  br i1 %291, label %285, label %._crit_edge75.us

._crit_edge75.us:                                 ; preds = %289, %285
  %i0.8.us = phi i64 [ %j.273.us, %285 ], [ -1, %289 ]
  %292 = add i64 %k4.079.us, -1
  %293 = icmp eq i64 %i0.8.us, -1
  %294 = icmp ne i64 %292, 0
  %295 = and i1 %294, %293
  br i1 %295, label %.lr.ph74.us, label %._crit_edge81.loopexit240

.lr.ph74.us:                                      ; preds = %.lr.ph74.us.preheader, %._crit_edge75.us
  %k4.079.us = phi i64 [ %292, %._crit_edge75.us ], [ %i.490, %.lr.ph74.us.preheader ]
  br label %285

.preheader10:                                     ; preds = %.preheader10.preheader239, %.preheader10
  %k4.079 = phi i64 [ %296, %.preheader10 ], [ %k4.079.ph, %.preheader10.preheader239 ]
  %296 = add i64 %k4.079, -1
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %._crit_edge81.loopexit, label %.preheader10, !llvm.loop !12

._crit_edge81.loopexit:                           ; preds = %.preheader10
  br label %._crit_edge81

._crit_edge81.loopexit240:                        ; preds = %._crit_edge75.us
  %.lcssa271 = phi i1 [ %293, %._crit_edge75.us ]
  %.lcssa270 = phi i64 [ %292, %._crit_edge75.us ]
  %i0.8.us.lcssa = phi i64 [ %i0.8.us, %._crit_edge75.us ]
  br label %._crit_edge81

._crit_edge81:                                    ; preds = %._crit_edge81.loopexit240, %._crit_edge81.loopexit, %middle.block221, %.preheader15
  %.lcssa = phi i1 [ %280, %.preheader15 ], [ true, %middle.block221 ], [ true, %._crit_edge81.loopexit ], [ %.lcssa271, %._crit_edge81.loopexit240 ]
  %i0.7.lcssa = phi i64 [ %i0.689, %.preheader15 ], [ -1, %middle.block221 ], [ -1, %._crit_edge81.loopexit ], [ %i0.8.us.lcssa, %._crit_edge81.loopexit240 ]
  %k4.0.lcssa = phi i64 [ %i.490, %.preheader15 ], [ 0, %middle.block221 ], [ 0, %._crit_edge81.loopexit ], [ %.lcssa270, %._crit_edge81.loopexit240 ]
  %298 = icmp eq i64 %k4.0.lcssa, 0
  %or.cond5 = and i1 %298, %.lcssa
  %.i0.7 = select i1 %or.cond5, i64 0, i64 %i0.7.lcssa
  %299 = icmp ult i64 %.i0.7, %13
  br i1 %299, label %.lr.ph87, label %.loopexit12

.lr.ph87:                                         ; preds = %._crit_edge81
  %300 = load i64, i64* %.pre-phi, align 8
  %301 = add i64 %300, -1
  %302 = icmp eq i64 %i.490, %301
  br i1 %302, label %.loopexit12, label %.lr.ph87.split.preheader

.lr.ph87.split.preheader:                         ; preds = %.lr.ph87
  %.pre156 = load i64*, i64** %273, align 8
  br label %.lr.ph87.split

.lr.ph87.split:                                   ; preds = %.lr.ph87.split.preheader, %344
  %j.385 = phi i64 [ %345, %344 ], [ %.i0.7, %.lr.ph87.split.preheader ]
  %303 = getelementptr inbounds i64, i64* %.pre156, i64 %j.385
  %304 = load i64, i64* %303, align 8
  %305 = icmp eq i64 %i.490, %304
  br i1 %305, label %344, label %306

; <label>:306                                     ; preds = %.lr.ph87.split
  %j.385.lcssa = phi i64 [ %j.385, %.lr.ph87.split ]
  %307 = icmp eq i64 %j.385.lcssa, 0
  br i1 %307, label %.loopexit12, label %308

; <label>:308                                     ; preds = %306
  %309 = add i64 %j.385.lcssa, -1
  %310 = getelementptr inbounds i64, i64* %.pre156, i64 %309
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %i.490, %311
  %313 = icmp eq i64 %j.385.lcssa, %.i0.7
  %or.cond9 = or i1 %313, %312
  br i1 %or.cond9, label %.loopexit12, label %314

; <label>:314                                     ; preds = %308
  %315 = load i64*, i64** %221, align 8
  %316 = getelementptr inbounds i64, i64* %315, i64 %i.490
  %317 = load i64, i64* %316, align 8
  %318 = load i64*, i64** %270, align 8
  %319 = getelementptr inbounds i64, i64* %318, i64 %317
  store i64 %.i0.7, i64* %319, align 8
  %320 = load i64*, i64** %271, align 8
  %321 = getelementptr inbounds i64, i64* %320, i64 %.i0.7
  %322 = load i64, i64* %321, align 8
  %323 = load i64*, i64** %272, align 8
  %324 = getelementptr inbounds i64, i64* %323, i64 %317
  store i64 %322, i64* %324, align 8
  br label %.outer13

.outer13:                                         ; preds = %334, %314
  %r.0.ph = phi i64 [ %343, %334 ], [ 1, %314 ]
  %t5.0.in.ph = phi i64 [ %t5.0.lcssa273, %334 ], [ %.i0.7, %314 ]
  br label %325

; <label>:325                                     ; preds = %.outer13, %327
  %t5.0.in = phi i64 [ %t5.0, %327 ], [ %t5.0.in.ph, %.outer13 ]
  %t5.0 = add i64 %t5.0.in, 1
  %326 = icmp ult i64 %t5.0, %j.385.lcssa
  br i1 %326, label %327, label %.loopexit12.loopexit

; <label>:327                                     ; preds = %325
  %328 = load i64*, i64** %271, align 8
  %329 = getelementptr inbounds i64, i64* %328, i64 %t5.0
  %330 = load i64, i64* %329, align 8
  %331 = getelementptr inbounds i64, i64* %328, i64 %t5.0.in
  %332 = load i64, i64* %331, align 8
  %333 = icmp eq i64 %330, %332
  br i1 %333, label %325, label %334

; <label>:334                                     ; preds = %327
  %t5.0.lcssa273 = phi i64 [ %t5.0, %327 ]
  %335 = add i64 %r.0.ph, %317
  %336 = load i64*, i64** %270, align 8
  %337 = getelementptr inbounds i64, i64* %336, i64 %335
  store i64 %t5.0.lcssa273, i64* %337, align 8
  %338 = load i64*, i64** %271, align 8
  %339 = getelementptr inbounds i64, i64* %338, i64 %t5.0.lcssa273
  %340 = load i64, i64* %339, align 8
  %341 = load i64*, i64** %272, align 8
  %342 = getelementptr inbounds i64, i64* %341, i64 %335
  store i64 %340, i64* %342, align 8
  %343 = add i64 %r.0.ph, 1
  br label %.outer13

; <label>:344                                     ; preds = %.lr.ph87.split
  %345 = add nuw i64 %j.385, 1
  %346 = icmp ult i64 %345, %13
  br i1 %346, label %.lr.ph87.split, label %.loopexit12.loopexit238

.loopexit12.loopexit:                             ; preds = %325
  br label %.loopexit12

.loopexit12.loopexit238:                          ; preds = %344
  br label %.loopexit12

.loopexit12:                                      ; preds = %.loopexit12.loopexit238, %.loopexit12.loopexit, %._crit_edge81, %.lr.ph87, %306, %308
  %i0.10 = phi i64 [ %j.385.lcssa, %308 ], [ 0, %306 ], [ %.i0.7, %.lr.ph87 ], [ %.i0.7, %._crit_edge81 ], [ %j.385.lcssa, %.loopexit12.loopexit ], [ %.i0.7, %.loopexit12.loopexit238 ]
  %347 = load i64, i64* %.pre-phi, align 8
  %348 = add i64 %347, -1
  %349 = icmp eq i64 %i.490, %348
  br i1 %349, label %350, label %.loopexit

; <label>:350                                     ; preds = %.loopexit12
  %351 = load i64*, i64** %221, align 8
  %352 = getelementptr inbounds i64, i64* %351, i64 %i.490
  %353 = load i64, i64* %352, align 8
  %354 = load i64*, i64** %270, align 8
  %355 = getelementptr inbounds i64, i64* %354, i64 %353
  store i64 %i0.10, i64* %355, align 8
  %356 = load i64*, i64** %271, align 8
  %357 = getelementptr inbounds i64, i64* %356, i64 %i0.10
  %358 = load i64, i64* %357, align 8
  %359 = load i64*, i64** %272, align 8
  %360 = getelementptr inbounds i64, i64* %359, i64 %353
  store i64 %358, i64* %360, align 8
  br label %.outer11

.outer11:                                         ; preds = %370, %350
  %r6.0.ph = phi i64 [ %379, %370 ], [ 1, %350 ]
  %t8.0.in.ph = phi i64 [ %t8.0.lcssa274, %370 ], [ %i0.10, %350 ]
  br label %361

; <label>:361                                     ; preds = %.outer11, %363
  %t8.0.in = phi i64 [ %t8.0, %363 ], [ %t8.0.in.ph, %.outer11 ]
  %t8.0 = add i64 %t8.0.in, 1
  %362 = icmp ult i64 %t8.0, %13
  br i1 %362, label %363, label %.loopexit.loopexit

; <label>:363                                     ; preds = %361
  %364 = load i64*, i64** %271, align 8
  %365 = getelementptr inbounds i64, i64* %364, i64 %t8.0
  %366 = load i64, i64* %365, align 8
  %367 = getelementptr inbounds i64, i64* %364, i64 %t8.0.in
  %368 = load i64, i64* %367, align 8
  %369 = icmp eq i64 %366, %368
  br i1 %369, label %361, label %370

; <label>:370                                     ; preds = %363
  %t8.0.lcssa274 = phi i64 [ %t8.0, %363 ]
  %371 = add i64 %r6.0.ph, %353
  %372 = load i64*, i64** %270, align 8
  %373 = getelementptr inbounds i64, i64* %372, i64 %371
  store i64 %t8.0.lcssa274, i64* %373, align 8
  %374 = load i64*, i64** %271, align 8
  %375 = getelementptr inbounds i64, i64* %374, i64 %t8.0.lcssa274
  %376 = load i64, i64* %375, align 8
  %377 = load i64*, i64** %272, align 8
  %378 = getelementptr inbounds i64, i64* %377, i64 %371
  store i64 %376, i64* %378, align 8
  %379 = add i64 %r6.0.ph, 1
  br label %.outer11

.loopexit.loopexit:                               ; preds = %361
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit12
  %380 = add nsw i64 %i.490, 1
  %381 = load i64, i64* %i_stop, align 8
  %382 = icmp slt i64 %380, %381
  %indvar.next = add i64 %indvar, 1
  br i1 %382, label %.preheader15, label %._crit_edge93.loopexit

._crit_edge93.loopexit:                           ; preds = %.loopexit
  br label %._crit_edge93

._crit_edge93:                                    ; preds = %._crit_edge93.loopexit, %266
  call void (...) @thread_barrier_wait() #4
  br i1 %77, label %383, label %404

; <label>:383                                     ; preds = %._crit_edge93
  %384 = bitcast %struct.graphSDG* %9 to i8**
  %385 = load i8*, i8** %384, align 8
  call void @free(i8* %385) #4
  %386 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 1
  %387 = bitcast i64** %386 to i8**
  %388 = load i8*, i8** %387, align 8
  call void @free(i8* %388) #4
  %389 = load i64, i64* %.pre-phi, align 8
  %390 = shl i64 %389, 3
  %391 = call noalias i8* @malloc(i64 %390) #4
  %392 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 10
  %393 = bitcast i64** %392 to i8**
  store i8* %391, i8** %393, align 8
  %394 = icmp eq i8* %391, null
  br i1 %394, label %395, label %396

; <label>:395                                     ; preds = %383
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 403, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i64 0, i64 0)) #5
  unreachable

; <label>:396                                     ; preds = %383
  %397 = load i64, i64* %.pre-phi, align 8
  %398 = shl i64 %397, 3
  %399 = call noalias i8* @malloc(i64 %398) #4
  %400 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 11
  %401 = bitcast i64** %400 to i8**
  store i8* %399, i8** %401, align 8
  %402 = icmp eq i8* %399, null
  br i1 %402, label %403, label %404

; <label>:403                                     ; preds = %396
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 406, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i64 0, i64 0)) #5
  unreachable

; <label>:404                                     ; preds = %396, %._crit_edge93
  call void (...) @thread_barrier_wait() #4
  %405 = load i64, i64* %i_start, align 8
  %406 = load i64, i64* %i_stop, align 8
  %407 = icmp slt i64 %405, %406
  br i1 %407, label %.lr.ph71, label %._crit_edge72

.lr.ph71:                                         ; preds = %404
  %408 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 10
  %409 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 11
  br label %410

; <label>:410                                     ; preds = %.lr.ph71, %410
  %i.569 = phi i64 [ %405, %.lr.ph71 ], [ %415, %410 ]
  %411 = load i64*, i64** %408, align 8
  %412 = getelementptr inbounds i64, i64* %411, i64 %i.569
  store i64 0, i64* %412, align 8
  %413 = load i64*, i64** %409, align 8
  %414 = getelementptr inbounds i64, i64* %413, i64 %i.569
  store i64 0, i64* %414, align 8
  %415 = add nsw i64 %i.569, 1
  %416 = load i64, i64* %i_stop, align 8
  %417 = icmp slt i64 %415, %416
  br i1 %417, label %410, label %._crit_edge72.loopexit

._crit_edge72.loopexit:                           ; preds = %410
  br label %._crit_edge72

._crit_edge72:                                    ; preds = %._crit_edge72.loopexit, %404
  br i1 %77, label %418, label %424

; <label>:418                                     ; preds = %._crit_edge72
  %419 = load i64, i64* %.pre-phi, align 8
  %420 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %421 = shl i64 %419, 3
  %422 = mul i64 %421, %420
  %423 = call noalias i8* @malloc(i64 %422) #4
  store i8* %423, i8** bitcast (i64** @global_impliedEdgeList to i8**), align 8
  br label %424

; <label>:424                                     ; preds = %418, %._crit_edge72
  call void (...) @thread_barrier_wait() #4
  %425 = load i64*, i64** @global_impliedEdgeList, align 8
  %426 = load i64, i64* %.pre-phi, align 8
  %427 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %428 = mul i64 %427, %426
  call void @createPartition(i64 0, i64 %428, i64 %10, i64 %11, i64* nonnull %i_start, i64* nonnull %i_stop) #4
  %429 = load i64, i64* %i_start, align 8
  %430 = load i64, i64* %i_stop, align 8
  %431 = icmp slt i64 %429, %430
  br i1 %431, label %.lr.ph67.preheader, label %._crit_edge68

.lr.ph67.preheader:                               ; preds = %424
  br label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph67.preheader, %.lr.ph67
  %i.665 = phi i64 [ %433, %.lr.ph67 ], [ %429, %.lr.ph67.preheader ]
  %432 = getelementptr inbounds i64, i64* %425, i64 %i.665
  store i64 0, i64* %432, align 8
  %433 = add nsw i64 %i.665, 1
  %434 = load i64, i64* %i_stop, align 8
  %435 = icmp slt i64 %433, %434
  br i1 %435, label %.lr.ph67, label %._crit_edge68.loopexit

._crit_edge68.loopexit:                           ; preds = %.lr.ph67
  br label %._crit_edge68

._crit_edge68:                                    ; preds = %._crit_edge68.loopexit, %424
  br i1 %77, label %436, label %443

; <label>:436                                     ; preds = %._crit_edge68
  %437 = load i64, i64* %.pre-phi, align 8
  %438 = shl i64 %437, 3
  %439 = call noalias i8* @malloc(i64 %438) #4
  %440 = icmp eq i8* %439, null
  br i1 %440, label %441, label %442

; <label>:441                                     ; preds = %436
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 448, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i64 0, i64 0)) #5
  unreachable

; <label>:442                                     ; preds = %436
  store i8* %439, i8** bitcast (i64*** @global_auxArr to i8**), align 8
  br label %443

; <label>:443                                     ; preds = %442, %._crit_edge68
  call void (...) @thread_barrier_wait() #4
  %444 = load i64**, i64*** @global_auxArr, align 8
  %445 = load i64, i64* %.pre-phi, align 8
  call void @createPartition(i64 0, i64 %445, i64 %10, i64 %11, i64* nonnull %i_start, i64* nonnull %i_stop) #4
  %446 = load i64, i64* %i_start, align 8
  %447 = load i64, i64* %i_stop, align 8
  %448 = icmp slt i64 %446, %447
  br i1 %448, label %.lr.ph63, label %.._crit_edge64_crit_edge

.._crit_edge64_crit_edge:                         ; preds = %443
  %.pre168 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 10
  br label %._crit_edge64

.lr.ph63:                                         ; preds = %443
  %449 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 8
  %450 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 10
  %.pre157 = load i64*, i64** %221, align 8
  %.pre158 = load i64*, i64** %140, align 8
  br label %451

; <label>:451                                     ; preds = %.lr.ph63, %._crit_edge60
  %452 = phi i64* [ %.pre158, %.lr.ph63 ], [ %537, %._crit_edge60 ]
  %453 = phi i64* [ %.pre157, %.lr.ph63 ], [ %538, %._crit_edge60 ]
  %i.761 = phi i64 [ %446, %.lr.ph63 ], [ %539, %._crit_edge60 ]
  %454 = getelementptr inbounds i64, i64* %453, i64 %i.761
  %455 = load i64, i64* %454, align 8
  %456 = getelementptr inbounds i64, i64* %452, i64 %i.761
  %457 = load i64, i64* %456, align 8
  %458 = add i64 %457, %455
  %459 = icmp ult i64 %455, %458
  br i1 %459, label %.lr.ph59.preheader, label %._crit_edge60

.lr.ph59.preheader:                               ; preds = %451
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %527
  %460 = phi i64* [ %532, %527 ], [ %452, %.lr.ph59.preheader ]
  %461 = phi i64* [ %529, %527 ], [ %453, %.lr.ph59.preheader ]
  %j.457 = phi i64 [ %528, %527 ], [ %455, %.lr.ph59.preheader ]
  %462 = load i64*, i64** %449, align 8
  %463 = getelementptr inbounds i64, i64* %462, i64 %j.457
  %464 = load i64, i64* %463, align 8
  %465 = getelementptr inbounds i64, i64* %461, i64 %464
  %466 = load i64, i64* %465, align 8
  %467 = getelementptr inbounds i64, i64* %460, i64 %464
  %468 = load i64, i64* %467, align 8
  %469 = add i64 %468, %466
  %470 = icmp ult i64 %466, %469
  br i1 %470, label %.lr.ph51.preheader, label %._crit_edge52

.lr.ph51.preheader:                               ; preds = %.lr.ph59
  br label %.lr.ph51

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %474
  %k9.049 = phi i64 [ %475, %474 ], [ %466, %.lr.ph51.preheader ]
  %471 = getelementptr inbounds i64, i64* %462, i64 %k9.049
  %472 = load i64, i64* %471, align 8
  %473 = icmp eq i64 %472, %i.761
  br i1 %473, label %._crit_edge52.loopexit, label %474

; <label>:474                                     ; preds = %.lr.ph51
  %475 = add i64 %k9.049, 1
  %476 = icmp ult i64 %475, %469
  br i1 %476, label %.lr.ph51, label %._crit_edge52.loopexit

._crit_edge52.loopexit:                           ; preds = %.lr.ph51, %474
  %k9.0.lcssa.ph = phi i64 [ %k9.049, %.lr.ph51 ], [ %475, %474 ]
  br label %._crit_edge52

._crit_edge52:                                    ; preds = %._crit_edge52.loopexit, %.lr.ph59
  %k9.0.lcssa = phi i64 [ %466, %.lr.ph59 ], [ %k9.0.lcssa.ph, %._crit_edge52.loopexit ]
  %477 = icmp eq i64 %k9.0.lcssa, %469
  br i1 %477, label %.outer.preheader, label %527

.outer.preheader:                                 ; preds = %._crit_edge52
  br label %.outer

.outer:                                           ; preds = %.outer.preheader, %484
  %tries11.0.ph = phi i32 [ %485, %484 ], [ 9, %.outer.preheader ]
  %478 = call i64 (...) @RTM_fallback_isLocked() #4
  %479 = icmp eq i64 %478, 0
  br i1 %479, label %._crit_edge56, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %.outer
  br label %.lr.ph55

.lr.ph55:                                         ; preds = %.lr.ph55.preheader, %.lr.ph55
  call void @llvm.x86.sse2.pause() #4
  %480 = call i64 (...) @RTM_fallback_isLocked() #4
  %481 = icmp eq i64 %480, 0
  br i1 %481, label %._crit_edge56.loopexit, label %.lr.ph55

._crit_edge56.loopexit:                           ; preds = %.lr.ph55
  br label %._crit_edge56

._crit_edge56:                                    ; preds = %._crit_edge56.loopexit, %.outer
  %482 = icmp slt i32 %tries11.0.ph, 2
  br i1 %482, label %483, label %484

; <label>:483                                     ; preds = %._crit_edge56
  %tries11.0.ph.lcssa = phi i32 [ %tries11.0.ph, %._crit_edge56 ]
  call void (...) @RTM_fallback_lock() #4
  br label %493

; <label>:484                                     ; preds = %._crit_edge56
  %485 = add nsw i32 %tries11.0.ph, -1
  %486 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 9, i64 0, i64 9, i64 4294967295) #4, !srcloc !6
  %487 = trunc i64 %486 to i32
  %488 = icmp eq i32 %487, -1
  br i1 %488, label %489, label %.outer

; <label>:489                                     ; preds = %484
  %tries11.0.ph.lcssa266 = phi i32 [ %tries11.0.ph, %484 ]
  %490 = call i64 (...) @RTM_fallback_isLocked() #4
  %491 = icmp eq i64 %490, 0
  br i1 %491, label %493, label %492

; <label>:492                                     ; preds = %489
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !7
  br label %493

; <label>:493                                     ; preds = %489, %492, %483
  %tries11.0.ph267 = phi i32 [ %tries11.0.ph.lcssa266, %489 ], [ %tries11.0.ph.lcssa266, %492 ], [ %tries11.0.ph.lcssa, %483 ]
  %494 = load i64*, i64** %450, align 8
  %495 = getelementptr inbounds i64, i64* %494, i64 %464
  %496 = load i64, i64* %495, align 8
  %497 = add nsw i64 %496, 1
  store i64 %497, i64* %495, align 8
  %498 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %499 = icmp slt i64 %496, %498
  br i1 %499, label %500, label %504

; <label>:500                                     ; preds = %493
  %501 = mul i64 %498, %464
  %502 = add i64 %501, %496
  %503 = getelementptr inbounds i64, i64* %425, i64 %502
  store i64 %i.761, i64* %503, align 8
  br label %523

; <label>:504                                     ; preds = %493
  %505 = srem i64 %496, %498
  %506 = icmp eq i64 %505, 0
  br i1 %506, label %507, label %516

; <label>:507                                     ; preds = %504
  %508 = shl i64 %498, 3
  %509 = call noalias i8* @malloc(i64 %508) #4
  %510 = icmp eq i8* %509, null
  br i1 %510, label %511, label %512

; <label>:511                                     ; preds = %507
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 489, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i64 0, i64 0)) #5
  unreachable

; <label>:512                                     ; preds = %507
  %513 = bitcast i8* %509 to i64*
  %514 = getelementptr inbounds i64*, i64** %444, i64 %464
  %515 = bitcast i64** %514 to i8**
  store i8* %509, i8** %515, align 8
  %.pre159 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  br label %519

; <label>:516                                     ; preds = %504
  %517 = getelementptr inbounds i64*, i64** %444, i64 %464
  %518 = load i64*, i64** %517, align 8
  br label %519

; <label>:519                                     ; preds = %516, %512
  %520 = phi i64 [ %.pre159, %512 ], [ %498, %516 ]
  %a.0 = phi i64* [ %513, %512 ], [ %518, %516 ]
  %521 = srem i64 %496, %520
  %522 = getelementptr inbounds i64, i64* %a.0, i64 %521
  store i64 %i.761, i64* %522, align 8
  br label %523

; <label>:523                                     ; preds = %519, %500
  %524 = icmp sgt i32 %tries11.0.ph267, 1
  br i1 %524, label %525, label %526

; <label>:525                                     ; preds = %523
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 9) #4, !srcloc !8
  br label %527

; <label>:526                                     ; preds = %523
  call void (...) @RTM_fallback_unlock() #4
  br label %527

; <label>:527                                     ; preds = %._crit_edge52, %526, %525
  %528 = add i64 %j.457, 1
  %529 = load i64*, i64** %221, align 8
  %530 = getelementptr inbounds i64, i64* %529, i64 %i.761
  %531 = load i64, i64* %530, align 8
  %532 = load i64*, i64** %140, align 8
  %533 = getelementptr inbounds i64, i64* %532, i64 %i.761
  %534 = load i64, i64* %533, align 8
  %535 = add i64 %534, %531
  %536 = icmp ult i64 %528, %535
  br i1 %536, label %.lr.ph59, label %._crit_edge60.loopexit

._crit_edge60.loopexit:                           ; preds = %527
  %.lcssa269 = phi i64* [ %532, %527 ]
  %.lcssa268 = phi i64* [ %529, %527 ]
  br label %._crit_edge60

._crit_edge60:                                    ; preds = %._crit_edge60.loopexit, %451
  %537 = phi i64* [ %452, %451 ], [ %.lcssa269, %._crit_edge60.loopexit ]
  %538 = phi i64* [ %453, %451 ], [ %.lcssa268, %._crit_edge60.loopexit ]
  %539 = add nsw i64 %i.761, 1
  %540 = load i64, i64* %i_stop, align 8
  %541 = icmp slt i64 %539, %540
  br i1 %541, label %451, label %._crit_edge64.loopexit

._crit_edge64.loopexit:                           ; preds = %._crit_edge60
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %.._crit_edge64_crit_edge
  %.pre-phi169 = phi i64** [ %.pre168, %.._crit_edge64_crit_edge ], [ %450, %._crit_edge64.loopexit ]
  call void (...) @thread_barrier_wait() #4
  %542 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 11
  %543 = load i64*, i64** %542, align 8
  %544 = load i64*, i64** %.pre-phi169, align 8
  %545 = load i64, i64* %.pre-phi, align 8
  call fastcc void @prefix_sums(i64* %543, i64* %544, i64 %545)
  br i1 %77, label %546, label %561

; <label>:546                                     ; preds = %._crit_edge64
  %547 = load i64, i64* %.pre-phi, align 8
  %548 = add i64 %547, -1
  %549 = load i64*, i64** %542, align 8
  %550 = getelementptr inbounds i64, i64* %549, i64 %548
  %551 = load i64, i64* %550, align 8
  %552 = load i64*, i64** %.pre-phi169, align 8
  %553 = getelementptr inbounds i64, i64* %552, i64 %548
  %554 = load i64, i64* %553, align 8
  %555 = add i64 %554, %551
  %556 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 3
  store i64 %555, i64* %556, align 8
  %557 = shl i64 %555, 3
  %558 = call noalias i8* @malloc(i64 %557) #4
  %559 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 12
  %560 = bitcast i64** %559 to i8**
  store i8* %558, i8** %560, align 8
  br label %561

; <label>:561                                     ; preds = %546, %._crit_edge64
  call void (...) @thread_barrier_wait() #4
  %562 = load i64, i64* %i_start, align 8
  %563 = load i64, i64* %i_stop, align 8
  %564 = icmp slt i64 %562, %563
  br i1 %564, label %.lr.ph47, label %._crit_edge48

.lr.ph47:                                         ; preds = %561
  %565 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 12
  %.pre160 = load i64*, i64** %542, align 8
  %.pre161 = load i64*, i64** %.pre-phi169, align 8
  br label %566

; <label>:566                                     ; preds = %.lr.ph47, %._crit_edge43
  %567 = phi i64 [ %563, %.lr.ph47 ], [ %606, %._crit_edge43 ]
  %568 = phi i64* [ %.pre161, %.lr.ph47 ], [ %607, %._crit_edge43 ]
  %569 = phi i64* [ %.pre160, %.lr.ph47 ], [ %608, %._crit_edge43 ]
  %i.844 = phi i64 [ %562, %.lr.ph47 ], [ %609, %._crit_edge43 ]
  %570 = getelementptr inbounds i64, i64* %569, i64 %i.844
  %571 = load i64, i64* %570, align 8
  %572 = getelementptr inbounds i64, i64* %568, i64 %i.844
  %573 = load i64, i64* %572, align 8
  %574 = add i64 %573, %571
  %575 = icmp ult i64 %571, %574
  br i1 %575, label %.lr.ph42, label %._crit_edge43

.lr.ph42:                                         ; preds = %566
  %576 = getelementptr inbounds i64*, i64** %444, i64 %i.844
  br label %577

; <label>:577                                     ; preds = %.lr.ph42, %596
  %578 = phi i64 [ %571, %.lr.ph42 ], [ %600, %596 ]
  %j.540 = phi i64 [ %571, %.lr.ph42 ], [ %597, %596 ]
  %579 = sub i64 %j.540, %578
  %580 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %581 = icmp ult i64 %579, %580
  br i1 %581, label %582, label %589

; <label>:582                                     ; preds = %577
  %583 = mul nsw i64 %580, %i.844
  %584 = add i64 %579, %583
  %585 = getelementptr inbounds i64, i64* %425, i64 %584
  %586 = load i64, i64* %585, align 8
  %587 = load i64*, i64** %565, align 8
  %588 = getelementptr inbounds i64, i64* %587, i64 %j.540
  store i64 %586, i64* %588, align 8
  br label %596

; <label>:589                                     ; preds = %577
  %590 = urem i64 %579, %580
  %591 = load i64*, i64** %576, align 8
  %592 = getelementptr inbounds i64, i64* %591, i64 %590
  %593 = load i64, i64* %592, align 8
  %594 = load i64*, i64** %565, align 8
  %595 = getelementptr inbounds i64, i64* %594, i64 %j.540
  store i64 %593, i64* %595, align 8
  br label %596

; <label>:596                                     ; preds = %582, %589
  %597 = add i64 %j.540, 1
  %598 = load i64*, i64** %542, align 8
  %599 = getelementptr inbounds i64, i64* %598, i64 %i.844
  %600 = load i64, i64* %599, align 8
  %601 = load i64*, i64** %.pre-phi169, align 8
  %602 = getelementptr inbounds i64, i64* %601, i64 %i.844
  %603 = load i64, i64* %602, align 8
  %604 = add i64 %603, %600
  %605 = icmp ult i64 %597, %604
  br i1 %605, label %577, label %._crit_edge43.loopexit

._crit_edge43.loopexit:                           ; preds = %596
  %.lcssa265 = phi i64* [ %601, %596 ]
  %.lcssa264 = phi i64* [ %598, %596 ]
  %.pre162 = load i64, i64* %i_stop, align 8
  br label %._crit_edge43

._crit_edge43:                                    ; preds = %._crit_edge43.loopexit, %566
  %606 = phi i64 [ %.pre162, %._crit_edge43.loopexit ], [ %567, %566 ]
  %607 = phi i64* [ %.lcssa265, %._crit_edge43.loopexit ], [ %568, %566 ]
  %608 = phi i64* [ %.lcssa264, %._crit_edge43.loopexit ], [ %569, %566 ]
  %609 = add nsw i64 %i.844, 1
  %610 = icmp slt i64 %609, %606
  br i1 %610, label %566, label %._crit_edge48.loopexit

._crit_edge48.loopexit:                           ; preds = %._crit_edge43
  br label %._crit_edge48

._crit_edge48:                                    ; preds = %._crit_edge48.loopexit, %561
  call void (...) @thread_barrier_wait() #4
  br i1 %77, label %611, label %613

; <label>:611                                     ; preds = %._crit_edge48
  %612 = bitcast i64* %425 to i8*
  call void @free(i8* %612) #4
  br label %613

; <label>:613                                     ; preds = %611, %._crit_edge48
  %614 = load i64, i64* %i_start, align 8
  %615 = load i64, i64* %i_stop, align 8
  %616 = icmp slt i64 %614, %615
  br i1 %616, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %613
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %627
  %617 = phi i64 [ %628, %627 ], [ %615, %.lr.ph.preheader ]
  %i.939 = phi i64 [ %629, %627 ], [ %614, %.lr.ph.preheader ]
  %618 = load i64*, i64** %.pre-phi169, align 8
  %619 = getelementptr inbounds i64, i64* %618, i64 %i.939
  %620 = load i64, i64* %619, align 8
  %621 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %622 = icmp sgt i64 %620, %621
  br i1 %622, label %623, label %627

; <label>:623                                     ; preds = %.lr.ph
  %624 = getelementptr inbounds i64*, i64** %444, i64 %i.939
  %625 = bitcast i64** %624 to i8**
  %626 = load i8*, i8** %625, align 8
  call void @free(i8* %626) #4
  %.pre163 = load i64, i64* %i_stop, align 8
  br label %627

; <label>:627                                     ; preds = %.lr.ph, %623
  %628 = phi i64 [ %617, %.lr.ph ], [ %.pre163, %623 ]
  %629 = add nsw i64 %i.939, 1
  %630 = icmp slt i64 %629, %628
  br i1 %630, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %627
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %613
  call void (...) @thread_barrier_wait() #4
  br i1 %77, label %631, label %633

; <label>:631                                     ; preds = %._crit_edge
  %632 = bitcast i64** %444 to i8*
  call void @free(i8* %632) #4
  br label %633

; <label>:633                                     ; preds = %._crit_edge, %631
  %634 = call i64 (...) @thread_getId() #4
  %635 = trunc i64 %634 to i32
  %636 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  %637 = load i32, i32* %636, align 4
  call void @SimRoiEnd(i32 %635, i32 %637) #4
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

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind uwtable
define internal fastcc void @prefix_sums(i64* nocapture %result, i64* nocapture readonly %input, i64 %arraySize) unnamed_addr #0 {
  %1 = tail call i64 (...) @thread_getId() #4
  %2 = tail call i64 (...) @thread_getNumThread() #4
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %4, label %10

; <label>:4                                       ; preds = %0
  %5 = shl i64 %2, 10
  %6 = tail call noalias i8* @malloc(i64 %5) #4
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 98, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.prefix_sums, i64 0, i64 0)) #5
  unreachable

; <label>:9                                       ; preds = %4
  store i8* %6, i8** bitcast (i64** @global_p to i8**), align 8
  br label %10

; <label>:10                                      ; preds = %9, %0
  tail call void (...) @thread_barrier_wait() #4
  %11 = load i64*, i64** @global_p, align 8
  %12 = udiv i64 %arraySize, %2
  %13 = mul nsw i64 %12, %1
  %14 = add nsw i64 %1, 1
  %15 = mul nsw i64 %12, %14
  %16 = add nsw i64 %2, -1
  %17 = icmp eq i64 %1, %16
  %arraySize. = select i1 %17, i64 %arraySize, i64 %15
  %j.05 = add i64 %13, 1
  %18 = icmp ult i64 %j.05, %arraySize.
  br i1 %18, label %.lr.ph8.preheader, label %._crit_edge

.lr.ph8.preheader:                                ; preds = %10
  %.phi.trans.insert = getelementptr inbounds i64, i64* %result, i64 %13
  %.pre = load i64, i64* %.phi.trans.insert, align 8
  br label %.lr.ph8

.lr.ph8:                                          ; preds = %.lr.ph8.preheader, %.lr.ph8
  %19 = phi i64 [ %22, %.lr.ph8 ], [ %.pre, %.lr.ph8.preheader ]
  %j.07 = phi i64 [ %j.0, %.lr.ph8 ], [ %j.05, %.lr.ph8.preheader ]
  %j.0.in6 = phi i64 [ %j.07, %.lr.ph8 ], [ %13, %.lr.ph8.preheader ]
  %20 = getelementptr inbounds i64, i64* %input, i64 %j.0.in6
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %19, %21
  %23 = getelementptr inbounds i64, i64* %result, i64 %j.07
  store i64 %22, i64* %23, align 8
  %j.0 = add i64 %j.07, 1
  %24 = icmp ult i64 %j.0, %arraySize.
  br i1 %24, label %.lr.ph8, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %10
  %25 = add nsw i64 %arraySize., -1
  %26 = getelementptr inbounds i64, i64* %result, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = shl i64 %1, 7
  %29 = getelementptr inbounds i64, i64* %11, i64 %28
  store i64 %27, i64* %29, align 8
  tail call void (...) @thread_barrier_wait() #4
  %30 = icmp ugt i64 %2, 1
  %or.cond = and i1 %3, %30
  br i1 %or.cond, label %.lr.ph4.preheader, label %.loopexit1

.lr.ph4.preheader:                                ; preds = %._crit_edge
  %31 = and i64 %2, 1
  %lcmp.mod17 = icmp eq i64 %31, 0
  br i1 %lcmp.mod17, label %.lr.ph4.prol, label %.lr.ph4.preheader.split

.lr.ph4.prol:                                     ; preds = %.lr.ph4.preheader
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds i64, i64* %11, i64 128
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, %32
  store i64 %35, i64* %33, align 8
  br label %.lr.ph4.preheader.split

.lr.ph4.preheader.split:                          ; preds = %.lr.ph4.prol, %.lr.ph4.preheader
  %j.13.unr = phi i64 [ 1, %.lr.ph4.preheader ], [ 2, %.lr.ph4.prol ]
  %36 = icmp eq i64 %2, 2
  br i1 %36, label %.loopexit1.loopexit, label %.lr.ph4.preheader.split.split

.lr.ph4.preheader.split.split:                    ; preds = %.lr.ph4.preheader.split
  br label %.lr.ph4

.lr.ph4:                                          ; preds = %.lr.ph4, %.lr.ph4.preheader.split.split
  %j.13 = phi i64 [ %j.13.unr, %.lr.ph4.preheader.split.split ], [ %51, %.lr.ph4 ]
  %37 = shl i64 %j.13, 7
  %38 = add i64 %37, -128
  %39 = getelementptr inbounds i64, i64* %11, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i64, i64* %11, i64 %37
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, %40
  store i64 %43, i64* %41, align 8
  %44 = shl i64 %j.13, 7
  %45 = add i64 %44, 128
  %46 = getelementptr inbounds i64, i64* %11, i64 %44
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i64, i64* %11, i64 %45
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, %47
  store i64 %50, i64* %48, align 8
  %51 = add i64 %j.13, 2
  %exitcond.1 = icmp eq i64 %51, %2
  br i1 %exitcond.1, label %.loopexit1.loopexit.unr-lcssa, label %.lr.ph4

.loopexit1.loopexit.unr-lcssa:                    ; preds = %.lr.ph4
  br label %.loopexit1.loopexit

.loopexit1.loopexit:                              ; preds = %.lr.ph4.preheader.split, %.loopexit1.loopexit.unr-lcssa
  br label %.loopexit1

.loopexit1:                                       ; preds = %.loopexit1.loopexit, %._crit_edge
  tail call void (...) @thread_barrier_wait() #4
  %52 = icmp sgt i64 %1, 0
  br i1 %52, label %53, label %.loopexit

; <label>:53                                      ; preds = %.loopexit1
  %54 = add i64 %28, -128
  %55 = getelementptr inbounds i64, i64* %11, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %13, %arraySize.
  br i1 %57, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %53
  %58 = udiv i64 %arraySize, %2
  %59 = mul i64 %1, %58
  %60 = sub i64 %arraySize., %59
  %min.iters.check = icmp ult i64 %60, 4
  br i1 %min.iters.check, label %.lr.ph.preheader15, label %min.iters.checked

min.iters.checked:                                ; preds = %.lr.ph.preheader
  %n.vec = and i64 %60, -4
  %cmp.zero = icmp eq i64 %n.vec, 0
  %ind.end = add i64 %13, %n.vec
  br i1 %cmp.zero, label %.lr.ph.preheader15, label %vector.ph

vector.ph:                                        ; preds = %min.iters.checked
  %broadcast.splatinsert11 = insertelement <2 x i64> undef, i64 %56, i32 0
  %broadcast.splat12 = shufflevector <2 x i64> %broadcast.splatinsert11, <2 x i64> undef, <2 x i32> zeroinitializer
  %61 = udiv i64 %arraySize, %2
  %62 = mul i64 %1, %61
  %63 = sub i64 %arraySize., %62
  %64 = add i64 %63, -4
  %65 = lshr i64 %64, 2
  %66 = and i64 %65, 1
  %lcmp.mod = icmp eq i64 %66, 0
  br i1 %lcmp.mod, label %vector.body.prol, label %vector.ph.split

vector.body.prol:                                 ; preds = %vector.ph
  %67 = getelementptr inbounds i64, i64* %result, i64 %13
  %68 = bitcast i64* %67 to <2 x i64>*
  %wide.load.prol = load <2 x i64>, <2 x i64>* %68, align 8
  %69 = getelementptr i64, i64* %67, i64 2
  %70 = bitcast i64* %69 to <2 x i64>*
  %wide.load10.prol = load <2 x i64>, <2 x i64>* %70, align 8
  %71 = add <2 x i64> %wide.load.prol, %broadcast.splat12
  %72 = add <2 x i64> %wide.load10.prol, %broadcast.splat12
  %73 = bitcast i64* %67 to <2 x i64>*
  store <2 x i64> %71, <2 x i64>* %73, align 8
  %74 = bitcast i64* %69 to <2 x i64>*
  store <2 x i64> %72, <2 x i64>* %74, align 8
  br label %vector.ph.split

vector.ph.split:                                  ; preds = %vector.body.prol, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ 4, %vector.body.prol ]
  %75 = icmp eq i64 %65, 0
  br i1 %75, label %middle.block, label %vector.ph.split.split

vector.ph.split.split:                            ; preds = %vector.ph.split
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.split.split
  %index = phi i64 [ %index.unr, %vector.ph.split.split ], [ %index.next.1, %vector.body ]
  %offset.idx = add i64 %13, %index
  %76 = getelementptr inbounds i64, i64* %result, i64 %offset.idx
  %77 = bitcast i64* %76 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %77, align 8
  %78 = getelementptr i64, i64* %76, i64 2
  %79 = bitcast i64* %78 to <2 x i64>*
  %wide.load10 = load <2 x i64>, <2 x i64>* %79, align 8
  %80 = add <2 x i64> %wide.load, %broadcast.splat12
  %81 = add <2 x i64> %wide.load10, %broadcast.splat12
  %82 = bitcast i64* %76 to <2 x i64>*
  store <2 x i64> %80, <2 x i64>* %82, align 8
  %83 = bitcast i64* %78 to <2 x i64>*
  store <2 x i64> %81, <2 x i64>* %83, align 8
  %index.next = add i64 %index, 4
  %offset.idx.1 = add i64 %13, %index.next
  %84 = getelementptr inbounds i64, i64* %result, i64 %offset.idx.1
  %85 = bitcast i64* %84 to <2 x i64>*
  %wide.load.1 = load <2 x i64>, <2 x i64>* %85, align 8
  %86 = getelementptr i64, i64* %84, i64 2
  %87 = bitcast i64* %86 to <2 x i64>*
  %wide.load10.1 = load <2 x i64>, <2 x i64>* %87, align 8
  %88 = add <2 x i64> %wide.load.1, %broadcast.splat12
  %89 = add <2 x i64> %wide.load10.1, %broadcast.splat12
  %90 = bitcast i64* %84 to <2 x i64>*
  store <2 x i64> %88, <2 x i64>* %90, align 8
  %91 = bitcast i64* %86 to <2 x i64>*
  store <2 x i64> %89, <2 x i64>* %91, align 8
  %index.next.1 = add i64 %index, 8
  %92 = icmp eq i64 %index.next.1, %n.vec
  br i1 %92, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !13

middle.block.unr-lcssa:                           ; preds = %vector.body
  br label %middle.block

middle.block:                                     ; preds = %vector.ph.split, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %60, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader15

.lr.ph.preheader15:                               ; preds = %middle.block, %min.iters.checked, %.lr.ph.preheader
  %j.22.ph = phi i64 [ %13, %min.iters.checked ], [ %13, %.lr.ph.preheader ], [ %ind.end, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader15, %.lr.ph
  %j.22 = phi i64 [ %96, %.lr.ph ], [ %j.22.ph, %.lr.ph.preheader15 ]
  %93 = getelementptr inbounds i64, i64* %result, i64 %j.22
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, %56
  store i64 %95, i64* %93, align 8
  %96 = add nuw i64 %j.22, 1
  %97 = icmp ult i64 %96, %arraySize.
  br i1 %97, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !14

.loopexit.loopexit:                               ; preds = %.lr.ph
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %middle.block, %53, %.loopexit1
  tail call void (...) @thread_barrier_wait() #4
  br i1 %3, label %98, label %100

; <label>:98                                      ; preds = %.loopexit
  %99 = bitcast i64* %11 to i8*
  tail call void @free(i8* %99) #4
  br label %100

; <label>:100                                     ; preds = %98, %.loopexit
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #2

declare void @SimRoiEnd(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = distinct !{!1, !2, !3}
!2 = !{!"llvm.loop.vectorize.width", i32 1}
!3 = !{!"llvm.loop.interleave.count", i32 1}
!4 = distinct !{!4, !5, !2, !3}
!5 = !{!"llvm.loop.unroll.runtime.disable"}
!6 = !{i32 1436342, i32 1436358, i32 1436394, i32 1436430, i32 1436466}
!7 = !{i32 1436943, i32 1436958, i32 1436992}
!8 = !{i32 1436714, i32 1436729, i32 1436757}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !2, !3}
!12 = distinct !{!12, !5, !2, !3}
!13 = distinct !{!13, !2, !3}
!14 = distinct !{!14, !5, !2, !3}
