; ModuleID = '../bin/sort.marked.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @sort(i8* %base, i32 %num, i32 %width, i32 (i8*, i8*, i64, i64)* nocapture %cmp, i64 %n, i64 %offset) #0 {
  %lostk = alloca [30 x i8*], align 16
  %histk = alloca [30 x i8*], align 16
  %1 = icmp ult i32 %num, 2
  %2 = icmp eq i32 %width, 0
  %or.cond = or i1 %1, %2
  br i1 %or.cond, label %.loopexit, label %3

; <label>:3                                       ; preds = %0
  %4 = add i32 %num, -1
  %5 = mul i32 %4, %width
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i8, i8* %base, i64 %6
  %8 = zext i32 %width to i64
  %9 = sub nsw i64 0, %8
  %10 = add i32 %width, -1
  %11 = zext i32 %10 to i64
  %12 = add nuw nsw i64 %11, 1
  %13 = zext i32 %10 to i64
  %14 = zext i32 %width to i64
  %15 = sub nsw i64 0, %14
  %16 = zext i32 %10 to i64
  %17 = add nuw nsw i64 %16, 1
  %18 = add i32 %width, -1
  %19 = zext i32 %18 to i64
  %20 = zext i32 %18 to i64
  %21 = add nuw nsw i64 %20, 1
  %22 = zext i32 %18 to i64
  %23 = zext i32 %18 to i64
  %24 = add nuw nsw i64 %23, 1
  %25 = add i32 %width, -1
  %26 = zext i32 %25 to i64
  %27 = zext i32 %25 to i64
  %28 = add nuw nsw i64 %27, 1
  %29 = and i64 %28, 8589934560
  %30 = add nsw i64 %29, -32
  %31 = lshr exact i64 %30, 5
  %32 = add i32 %width, -1
  %33 = zext i32 %32 to i64
  %34 = add nuw nsw i64 %33, 1
  %35 = and i64 %34, 8589934560
  %36 = add nsw i64 %35, -32
  %37 = lshr exact i64 %36, 5
  %38 = add i32 %width, -1
  %39 = zext i32 %38 to i64
  %40 = add nuw nsw i64 %39, 1
  %41 = and i64 %40, 8589934560
  %42 = add nsw i64 %41, -32
  %43 = lshr exact i64 %42, 5
  %44 = add i32 %width, -1
  %45 = zext i32 %44 to i64
  %46 = add nuw nsw i64 %45, 1
  %47 = and i64 %46, 8589934560
  %48 = add nsw i64 %47, -32
  %49 = lshr exact i64 %48, 5
  %min.iters.check362 = icmp ult i64 %21, 32
  %n.vec365 = and i64 %21, 8589934560
  %cmp.zero366 = icmp eq i64 %n.vec365, 0
  %cast.crd381 = trunc i64 %n.vec365 to i32
  %ind.end382 = sub i32 %width, %cast.crd381
  %50 = and i64 %37, 1
  %lcmp.mod706 = icmp eq i64 %50, 0
  %51 = icmp eq i64 %37, 0
  %cmp.n385 = icmp eq i64 %21, %n.vec365
  %min.iters.check198 = icmp ult i64 %17, 32
  %n.vec201 = and i64 %17, 8589934560
  %cmp.zero202 = icmp eq i64 %n.vec201, 0
  %cast.crd217 = trunc i64 %n.vec201 to i32
  %ind.end218 = sub i32 %width, %cast.crd217
  %52 = and i64 %43, 1
  %lcmp.mod711 = icmp eq i64 %52, 0
  %53 = icmp eq i64 %43, 0
  %cmp.n221 = icmp eq i64 %17, %n.vec201
  %min.iters.check526 = icmp ult i64 %24, 32
  %n.vec529 = and i64 %24, 8589934560
  %cmp.zero530 = icmp eq i64 %n.vec529, 0
  %cast.crd547 = trunc i64 %n.vec529 to i32
  %ind.end548 = sub i32 %width, %cast.crd547
  %54 = and i64 %31, 1
  %lcmp.mod = icmp eq i64 %54, 0
  %55 = icmp eq i64 %31, 0
  %cmp.n551 = icmp eq i64 %24, %n.vec529
  %min.iters.check = icmp ult i64 %12, 32
  %n.vec = and i64 %12, 8589934560
  %cmp.zero = icmp eq i64 %n.vec, 0
  %cast.crd = trunc i64 %n.vec to i32
  %ind.end62 = sub i32 %width, %cast.crd
  %56 = and i64 %49, 1
  %lcmp.mod716 = icmp eq i64 %56, 0
  %57 = icmp eq i64 %49, 0
  %cmp.n = icmp eq i64 %12, %n.vec
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %3
  %hi.0.ph = phi i8* [ %7, %3 ], [ %hi.0.ph.be, %.outer.backedge ]
  %lo.0.ph = phi i8* [ %base, %3 ], [ %lo.0.ph.be, %.outer.backedge ]
  %stkptr.0.ph = phi i32 [ 0, %3 ], [ %stkptr.0.ph.be, %.outer.backedge ]
  %58 = ptrtoint i8* %hi.0.ph to i64
  %59 = getelementptr inbounds i8, i8* %hi.0.ph, i64 %8
  br label %60

; <label>:60                                      ; preds = %.outer, %342
  %lo.0 = phi i8* [ %.lcssa.lcssa, %342 ], [ %lo.0.ph, %.outer ]
  %stkptr.0 = phi i32 [ %stkptr.1, %342 ], [ %stkptr.0.ph, %.outer ]
  %61 = ptrtoint i8* %lo.0 to i64
  %62 = sub i64 %58, %61
  %63 = sdiv i64 %62, %8
  %64 = add nsw i64 %63, 1
  %65 = trunc i64 %64 to i32
  %66 = icmp ult i32 %65, 9
  br i1 %66, label %67, label %134

; <label>:67                                      ; preds = %60
  %stkptr.0.lcssa = phi i32 [ %stkptr.0, %60 ]
  %lo.0.lcssa = phi i8* [ %lo.0, %60 ]
  %68 = icmp ugt i8* %hi.0.ph, %lo.0.lcssa
  br i1 %68, label %.lr.ph6.split.i.preheader, label %shortsort.exit

.lr.ph6.split.i.preheader:                        ; preds = %67
  %p.01.i = getelementptr inbounds i8, i8* %lo.0.lcssa, i64 %8
  br label %.lr.ph6.split.i

.lr.ph6.split.i:                                  ; preds = %.lr.ph6.split.i.preheader, %swap.exit.i
  %indvar = phi i64 [ 0, %.lr.ph6.split.i.preheader ], [ %indvar.next, %swap.exit.i ]
  %.04.i = phi i8* [ %hi.0.ph, %.lr.ph6.split.i.preheader ], [ %132, %swap.exit.i ]
  %69 = mul i64 %indvar, %15
  %scevgep59 = getelementptr i8, i8* %hi.0.ph, i64 %69
  %70 = add i64 %13, %69
  %scevgep60 = getelementptr i8, i8* %hi.0.ph, i64 %70
  %71 = icmp ugt i8* %p.01.i, %.04.i
  br i1 %71, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph6.split.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %p.03.i = phi i8* [ %p.0.i, %.lr.ph.i ], [ %p.01.i, %.lr.ph.i.preheader ]
  %max.02.i = phi i8* [ %p.0.max.0.i, %.lr.ph.i ], [ %lo.0.lcssa, %.lr.ph.i.preheader ]
  %72 = tail call i32 %cmp(i8* %p.03.i, i8* %max.02.i, i64 %n, i64 %offset) #1
  %73 = icmp sgt i32 %72, 0
  %p.0.max.0.i = select i1 %73, i8* %p.03.i, i8* %max.02.i
  %p.0.i = getelementptr inbounds i8, i8* %p.03.i, i64 %8
  %74 = icmp ugt i8* %p.0.i, %.04.i
  br i1 %74, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %p.0.max.0.i.lcssa = phi i8* [ %p.0.max.0.i, %.lr.ph.i ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %.lr.ph6.split.i
  %max.0.lcssa.i = phi i8* [ %lo.0.lcssa, %.lr.ph6.split.i ], [ %p.0.max.0.i.lcssa, %._crit_edge.i.loopexit ]
  %75 = icmp eq i8* %max.0.lcssa.i, %.04.i
  br i1 %75, label %swap.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge.i
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader690, label %min.iters.checked

min.iters.checked:                                ; preds = %.lr.ph.i.i.preheader
  br i1 %cmp.zero, label %.lr.ph.i.i.preheader690, label %vector.memcheck

vector.memcheck:                                  ; preds = %min.iters.checked
  %scevgep = getelementptr i8, i8* %max.0.lcssa.i, i64 %13
  %bound0 = icmp ule i8* %max.0.lcssa.i, %scevgep60
  %bound1 = icmp ule i8* %scevgep59, %scevgep
  %memcheck.conflict = and i1 %bound0, %bound1
  %ind.end = getelementptr i8, i8* %max.0.lcssa.i, i64 %n.vec
  %ind.end64 = getelementptr i8, i8* %.04.i, i64 %n.vec
  br i1 %memcheck.conflict, label %.lr.ph.i.i.preheader690, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.memcheck
  br i1 %lcmp.mod716, label %vector.body.prol, label %vector.body.preheader.split

vector.body.prol:                                 ; preds = %vector.body.preheader
  %76 = bitcast i8* %max.0.lcssa.i to <16 x i8>*
  %wide.load.prol = load <16 x i8>, <16 x i8>* %76, align 1
  %77 = getelementptr i8, i8* %max.0.lcssa.i, i64 16
  %78 = bitcast i8* %77 to <16 x i8>*
  %wide.load192.prol = load <16 x i8>, <16 x i8>* %78, align 1
  %79 = bitcast i8* %.04.i to <16 x i8>*
  %wide.load193.prol = load <16 x i8>, <16 x i8>* %79, align 1
  %80 = getelementptr i8, i8* %.04.i, i64 16
  %81 = bitcast i8* %80 to <16 x i8>*
  %wide.load194.prol = load <16 x i8>, <16 x i8>* %81, align 1
  %82 = bitcast i8* %max.0.lcssa.i to <16 x i8>*
  store <16 x i8> %wide.load193.prol, <16 x i8>* %82, align 1
  %83 = bitcast i8* %77 to <16 x i8>*
  store <16 x i8> %wide.load194.prol, <16 x i8>* %83, align 1
  %84 = bitcast i8* %.04.i to <16 x i8>*
  store <16 x i8> %wide.load.prol, <16 x i8>* %84, align 1
  %85 = bitcast i8* %80 to <16 x i8>*
  store <16 x i8> %wide.load192.prol, <16 x i8>* %85, align 1
  br label %vector.body.preheader.split

vector.body.preheader.split:                      ; preds = %vector.body.prol, %vector.body.preheader
  %index.unr = phi i64 [ 0, %vector.body.preheader ], [ 32, %vector.body.prol ]
  br i1 %57, label %middle.block, label %vector.body.preheader.split.split

vector.body.preheader.split.split:                ; preds = %vector.body.preheader.split
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader.split.split
  %index = phi i64 [ %index.unr, %vector.body.preheader.split.split ], [ %index.next.1, %vector.body ]
  %next.gep = getelementptr i8, i8* %max.0.lcssa.i, i64 %index
  %next.gep128 = getelementptr i8, i8* %.04.i, i64 %index
  %86 = bitcast i8* %next.gep to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %86, align 1
  %87 = getelementptr i8, i8* %next.gep, i64 16
  %88 = bitcast i8* %87 to <16 x i8>*
  %wide.load192 = load <16 x i8>, <16 x i8>* %88, align 1
  %89 = bitcast i8* %next.gep128 to <16 x i8>*
  %wide.load193 = load <16 x i8>, <16 x i8>* %89, align 1
  %90 = getelementptr i8, i8* %next.gep128, i64 16
  %91 = bitcast i8* %90 to <16 x i8>*
  %wide.load194 = load <16 x i8>, <16 x i8>* %91, align 1
  %92 = bitcast i8* %next.gep to <16 x i8>*
  store <16 x i8> %wide.load193, <16 x i8>* %92, align 1
  %93 = bitcast i8* %87 to <16 x i8>*
  store <16 x i8> %wide.load194, <16 x i8>* %93, align 1
  %94 = bitcast i8* %next.gep128 to <16 x i8>*
  store <16 x i8> %wide.load, <16 x i8>* %94, align 1
  %95 = bitcast i8* %90 to <16 x i8>*
  store <16 x i8> %wide.load192, <16 x i8>* %95, align 1
  %index.next = add i64 %index, 32
  %next.gep.1 = getelementptr i8, i8* %max.0.lcssa.i, i64 %index.next
  %next.gep128.1 = getelementptr i8, i8* %.04.i, i64 %index.next
  %96 = bitcast i8* %next.gep.1 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %96, align 1
  %97 = getelementptr i8, i8* %next.gep.1, i64 16
  %98 = bitcast i8* %97 to <16 x i8>*
  %wide.load192.1 = load <16 x i8>, <16 x i8>* %98, align 1
  %99 = bitcast i8* %next.gep128.1 to <16 x i8>*
  %wide.load193.1 = load <16 x i8>, <16 x i8>* %99, align 1
  %100 = getelementptr i8, i8* %next.gep128.1, i64 16
  %101 = bitcast i8* %100 to <16 x i8>*
  %wide.load194.1 = load <16 x i8>, <16 x i8>* %101, align 1
  %102 = bitcast i8* %next.gep.1 to <16 x i8>*
  store <16 x i8> %wide.load193.1, <16 x i8>* %102, align 1
  %103 = bitcast i8* %97 to <16 x i8>*
  store <16 x i8> %wide.load194.1, <16 x i8>* %103, align 1
  %104 = bitcast i8* %next.gep128.1 to <16 x i8>*
  store <16 x i8> %wide.load.1, <16 x i8>* %104, align 1
  %105 = bitcast i8* %100 to <16 x i8>*
  store <16 x i8> %wide.load192.1, <16 x i8>* %105, align 1
  %index.next.1 = add i64 %index, 64
  %106 = icmp eq i64 %index.next.1, %n.vec
  br i1 %106, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !1

middle.block.unr-lcssa:                           ; preds = %vector.body
  br label %middle.block

middle.block:                                     ; preds = %vector.body.preheader.split, %middle.block.unr-lcssa
  br i1 %cmp.n, label %swap.exit.i, label %.lr.ph.i.i.preheader690

.lr.ph.i.i.preheader690:                          ; preds = %middle.block, %vector.memcheck, %min.iters.checked, %.lr.ph.i.i.preheader
  %.05.i.i.ph = phi i8* [ %max.0.lcssa.i, %vector.memcheck ], [ %max.0.lcssa.i, %min.iters.checked ], [ %max.0.lcssa.i, %.lr.ph.i.i.preheader ], [ %ind.end, %middle.block ]
  %.014.i.i.ph = phi i32 [ %width, %vector.memcheck ], [ %width, %min.iters.checked ], [ %width, %.lr.ph.i.i.preheader ], [ %ind.end62, %middle.block ]
  %.023.i.i.ph = phi i8* [ %.04.i, %vector.memcheck ], [ %.04.i, %min.iters.checked ], [ %.04.i, %.lr.ph.i.i.preheader ], [ %ind.end64, %middle.block ]
  %107 = add i32 %.014.i.i.ph, -1
  %xtraiter717 = and i32 %.014.i.i.ph, 3
  %lcmp.mod718 = icmp eq i32 %xtraiter717, 0
  br i1 %lcmp.mod718, label %.lr.ph.i.i.preheader690.split, label %.lr.ph.i.i.prol.preheader

.lr.ph.i.i.prol.preheader:                        ; preds = %.lr.ph.i.i.preheader690
  br label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.prol.preheader
  %.05.i.i.prol = phi i8* [ %111, %.lr.ph.i.i.prol ], [ %.05.i.i.ph, %.lr.ph.i.i.prol.preheader ]
  %.014.i.i.prol = phi i32 [ %108, %.lr.ph.i.i.prol ], [ %.014.i.i.ph, %.lr.ph.i.i.prol.preheader ]
  %.023.i.i.prol = phi i8* [ %112, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.prol.preheader ]
  %prol.iter719 = phi i32 [ %prol.iter719.sub, %.lr.ph.i.i.prol ], [ %xtraiter717, %.lr.ph.i.i.prol.preheader ]
  %108 = add i32 %.014.i.i.prol, -1
  %109 = load i8, i8* %.05.i.i.prol, align 1
  %110 = load i8, i8* %.023.i.i.prol, align 1
  %111 = getelementptr inbounds i8, i8* %.05.i.i.prol, i64 1
  store i8 %110, i8* %.05.i.i.prol, align 1
  %112 = getelementptr inbounds i8, i8* %.023.i.i.prol, i64 1
  store i8 %109, i8* %.023.i.i.prol, align 1
  %prol.iter719.sub = add i32 %prol.iter719, -1
  %prol.iter719.cmp = icmp eq i32 %prol.iter719.sub, 0
  br i1 %prol.iter719.cmp, label %.lr.ph.i.i.preheader690.split.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4

.lr.ph.i.i.preheader690.split.loopexit:           ; preds = %.lr.ph.i.i.prol
  %.lcssa741 = phi i8* [ %112, %.lr.ph.i.i.prol ]
  %.lcssa740 = phi i8* [ %111, %.lr.ph.i.i.prol ]
  %.lcssa739 = phi i32 [ %108, %.lr.ph.i.i.prol ]
  br label %.lr.ph.i.i.preheader690.split

.lr.ph.i.i.preheader690.split:                    ; preds = %.lr.ph.i.i.preheader690, %.lr.ph.i.i.preheader690.split.loopexit
  %.05.i.i.unr = phi i8* [ %.05.i.i.ph, %.lr.ph.i.i.preheader690 ], [ %.lcssa740, %.lr.ph.i.i.preheader690.split.loopexit ]
  %.014.i.i.unr = phi i32 [ %.014.i.i.ph, %.lr.ph.i.i.preheader690 ], [ %.lcssa739, %.lr.ph.i.i.preheader690.split.loopexit ]
  %.023.i.i.unr = phi i8* [ %.023.i.i.ph, %.lr.ph.i.i.preheader690 ], [ %.lcssa741, %.lr.ph.i.i.preheader690.split.loopexit ]
  %113 = icmp ult i32 %107, 3
  br i1 %113, label %swap.exit.i.loopexit, label %.lr.ph.i.i.preheader690.split.split

.lr.ph.i.i.preheader690.split.split:              ; preds = %.lr.ph.i.i.preheader690.split
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader690.split.split
  %.05.i.i = phi i8* [ %.05.i.i.unr, %.lr.ph.i.i.preheader690.split.split ], [ %129, %.lr.ph.i.i ]
  %.014.i.i = phi i32 [ %.014.i.i.unr, %.lr.ph.i.i.preheader690.split.split ], [ %126, %.lr.ph.i.i ]
  %.023.i.i = phi i8* [ %.023.i.i.unr, %.lr.ph.i.i.preheader690.split.split ], [ %130, %.lr.ph.i.i ]
  %114 = load i8, i8* %.05.i.i, align 1
  %115 = load i8, i8* %.023.i.i, align 1
  %116 = getelementptr inbounds i8, i8* %.05.i.i, i64 1
  store i8 %115, i8* %.05.i.i, align 1
  %117 = getelementptr inbounds i8, i8* %.023.i.i, i64 1
  store i8 %114, i8* %.023.i.i, align 1
  %118 = load i8, i8* %116, align 1
  %119 = load i8, i8* %117, align 1
  %120 = getelementptr inbounds i8, i8* %.05.i.i, i64 2
  store i8 %119, i8* %116, align 1
  %121 = getelementptr inbounds i8, i8* %.023.i.i, i64 2
  store i8 %118, i8* %117, align 1
  %122 = load i8, i8* %120, align 1
  %123 = load i8, i8* %121, align 1
  %124 = getelementptr inbounds i8, i8* %.05.i.i, i64 3
  store i8 %123, i8* %120, align 1
  %125 = getelementptr inbounds i8, i8* %.023.i.i, i64 3
  store i8 %122, i8* %121, align 1
  %126 = add i32 %.014.i.i, -4
  %127 = load i8, i8* %124, align 1
  %128 = load i8, i8* %125, align 1
  %129 = getelementptr inbounds i8, i8* %.05.i.i, i64 4
  store i8 %128, i8* %124, align 1
  %130 = getelementptr inbounds i8, i8* %.023.i.i, i64 4
  store i8 %127, i8* %125, align 1
  %131 = icmp eq i32 %126, 0
  br i1 %131, label %swap.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !6

swap.exit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  br label %swap.exit.i.loopexit

swap.exit.i.loopexit:                             ; preds = %.lr.ph.i.i.preheader690.split, %swap.exit.i.loopexit.unr-lcssa
  br label %swap.exit.i

swap.exit.i:                                      ; preds = %swap.exit.i.loopexit, %middle.block, %._crit_edge.i
  %132 = getelementptr inbounds i8, i8* %.04.i, i64 %9
  %133 = icmp ugt i8* %132, %lo.0.lcssa
  %indvar.next = add i64 %indvar, 1
  br i1 %133, label %.lr.ph6.split.i, label %shortsort.exit.loopexit

; <label>:134                                     ; preds = %60
  %135 = lshr i32 %65, 1
  %136 = mul i32 %135, %width
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %swap.exit9.outer.preheader, label %.lr.ph.i3.preheader

.lr.ph.i3.preheader:                              ; preds = %134
  %138 = zext i32 %136 to i64
  %139 = getelementptr inbounds i8, i8* %lo.0, i64 %138
  br i1 %min.iters.check526, label %.lr.ph.i3.preheader692, label %min.iters.checked527

min.iters.checked527:                             ; preds = %.lr.ph.i3.preheader
  br i1 %cmp.zero530, label %.lr.ph.i3.preheader692, label %vector.memcheck540

vector.memcheck540:                               ; preds = %min.iters.checked527
  %140 = add i64 %63, 1
  %141 = trunc i64 %140 to i32
  %142 = lshr i32 %141, 1
  %143 = mul i32 %142, %width
  %144 = zext i32 %143 to i64
  %scevgep532 = getelementptr i8, i8* %lo.0, i64 %144
  %scevgep533 = getelementptr i8, i8* %lo.0, i64 %26
  %scevgep534 = getelementptr i8, i8* %scevgep533, i64 %144
  %scevgep535 = getelementptr i8, i8* %lo.0, i64 %26
  %bound0536 = icmp ule i8* %scevgep532, %scevgep535
  %bound1537 = icmp ule i8* %lo.0, %scevgep534
  %memcheck.conflict539 = and i1 %bound0536, %bound1537
  %ind.end545 = getelementptr i8, i8* %139, i64 %n.vec529
  %ind.end550 = getelementptr i8, i8* %lo.0, i64 %n.vec529
  br i1 %memcheck.conflict539, label %.lr.ph.i3.preheader692, label %vector.body523.preheader

vector.body523.preheader:                         ; preds = %vector.memcheck540
  br i1 %lcmp.mod, label %vector.body523.prol, label %vector.body523.preheader.split

vector.body523.prol:                              ; preds = %vector.body523.preheader
  %145 = bitcast i8* %139 to <16 x i8>*
  %wide.load685.prol = load <16 x i8>, <16 x i8>* %145, align 1
  %146 = getelementptr i8, i8* %139, i64 16
  %147 = bitcast i8* %146 to <16 x i8>*
  %wide.load686.prol = load <16 x i8>, <16 x i8>* %147, align 1
  %148 = bitcast i8* %lo.0 to <16 x i8>*
  %wide.load687.prol = load <16 x i8>, <16 x i8>* %148, align 1
  %149 = getelementptr i8, i8* %lo.0, i64 16
  %150 = bitcast i8* %149 to <16 x i8>*
  %wide.load688.prol = load <16 x i8>, <16 x i8>* %150, align 1
  %151 = bitcast i8* %139 to <16 x i8>*
  store <16 x i8> %wide.load687.prol, <16 x i8>* %151, align 1
  %152 = bitcast i8* %146 to <16 x i8>*
  store <16 x i8> %wide.load688.prol, <16 x i8>* %152, align 1
  %153 = bitcast i8* %lo.0 to <16 x i8>*
  store <16 x i8> %wide.load685.prol, <16 x i8>* %153, align 1
  %154 = bitcast i8* %149 to <16 x i8>*
  store <16 x i8> %wide.load686.prol, <16 x i8>* %154, align 1
  br label %vector.body523.preheader.split

vector.body523.preheader.split:                   ; preds = %vector.body523.prol, %vector.body523.preheader
  %index542.unr = phi i64 [ 0, %vector.body523.preheader ], [ 32, %vector.body523.prol ]
  br i1 %55, label %middle.block524, label %vector.body523.preheader.split.split

vector.body523.preheader.split.split:             ; preds = %vector.body523.preheader.split
  br label %vector.body523

vector.body523:                                   ; preds = %vector.body523, %vector.body523.preheader.split.split
  %index542 = phi i64 [ %index542.unr, %vector.body523.preheader.split.split ], [ %index.next543.1, %vector.body523 ]
  %next.gep552 = getelementptr i8, i8* %139, i64 %index542
  %next.gep621 = getelementptr i8, i8* %lo.0, i64 %index542
  %155 = bitcast i8* %next.gep552 to <16 x i8>*
  %wide.load685 = load <16 x i8>, <16 x i8>* %155, align 1
  %156 = getelementptr i8, i8* %next.gep552, i64 16
  %157 = bitcast i8* %156 to <16 x i8>*
  %wide.load686 = load <16 x i8>, <16 x i8>* %157, align 1
  %158 = bitcast i8* %next.gep621 to <16 x i8>*
  %wide.load687 = load <16 x i8>, <16 x i8>* %158, align 1
  %159 = getelementptr i8, i8* %next.gep621, i64 16
  %160 = bitcast i8* %159 to <16 x i8>*
  %wide.load688 = load <16 x i8>, <16 x i8>* %160, align 1
  %161 = bitcast i8* %next.gep552 to <16 x i8>*
  store <16 x i8> %wide.load687, <16 x i8>* %161, align 1
  %162 = bitcast i8* %156 to <16 x i8>*
  store <16 x i8> %wide.load688, <16 x i8>* %162, align 1
  %163 = bitcast i8* %next.gep621 to <16 x i8>*
  store <16 x i8> %wide.load685, <16 x i8>* %163, align 1
  %164 = bitcast i8* %159 to <16 x i8>*
  store <16 x i8> %wide.load686, <16 x i8>* %164, align 1
  %index.next543 = add i64 %index542, 32
  %next.gep552.1 = getelementptr i8, i8* %139, i64 %index.next543
  %next.gep621.1 = getelementptr i8, i8* %lo.0, i64 %index.next543
  %165 = bitcast i8* %next.gep552.1 to <16 x i8>*
  %wide.load685.1 = load <16 x i8>, <16 x i8>* %165, align 1
  %166 = getelementptr i8, i8* %next.gep552.1, i64 16
  %167 = bitcast i8* %166 to <16 x i8>*
  %wide.load686.1 = load <16 x i8>, <16 x i8>* %167, align 1
  %168 = bitcast i8* %next.gep621.1 to <16 x i8>*
  %wide.load687.1 = load <16 x i8>, <16 x i8>* %168, align 1
  %169 = getelementptr i8, i8* %next.gep621.1, i64 16
  %170 = bitcast i8* %169 to <16 x i8>*
  %wide.load688.1 = load <16 x i8>, <16 x i8>* %170, align 1
  %171 = bitcast i8* %next.gep552.1 to <16 x i8>*
  store <16 x i8> %wide.load687.1, <16 x i8>* %171, align 1
  %172 = bitcast i8* %166 to <16 x i8>*
  store <16 x i8> %wide.load688.1, <16 x i8>* %172, align 1
  %173 = bitcast i8* %next.gep621.1 to <16 x i8>*
  store <16 x i8> %wide.load685.1, <16 x i8>* %173, align 1
  %174 = bitcast i8* %169 to <16 x i8>*
  store <16 x i8> %wide.load686.1, <16 x i8>* %174, align 1
  %index.next543.1 = add i64 %index542, 64
  %175 = icmp eq i64 %index.next543.1, %n.vec529
  br i1 %175, label %middle.block524.unr-lcssa, label %vector.body523, !llvm.loop !7

middle.block524.unr-lcssa:                        ; preds = %vector.body523
  br label %middle.block524

middle.block524:                                  ; preds = %vector.body523.preheader.split, %middle.block524.unr-lcssa
  br i1 %cmp.n551, label %swap.exit9.outer.preheader, label %.lr.ph.i3.preheader692

.lr.ph.i3.preheader692:                           ; preds = %middle.block524, %vector.memcheck540, %min.iters.checked527, %.lr.ph.i3.preheader
  %.05.i.ph = phi i8* [ %139, %vector.memcheck540 ], [ %139, %min.iters.checked527 ], [ %139, %.lr.ph.i3.preheader ], [ %ind.end545, %middle.block524 ]
  %.014.i.ph = phi i32 [ %width, %vector.memcheck540 ], [ %width, %min.iters.checked527 ], [ %width, %.lr.ph.i3.preheader ], [ %ind.end548, %middle.block524 ]
  %.023.i.ph = phi i8* [ %lo.0, %vector.memcheck540 ], [ %lo.0, %min.iters.checked527 ], [ %lo.0, %.lr.ph.i3.preheader ], [ %ind.end550, %middle.block524 ]
  %176 = add i32 %.014.i.ph, -1
  %xtraiter703 = and i32 %.014.i.ph, 3
  %lcmp.mod704 = icmp eq i32 %xtraiter703, 0
  br i1 %lcmp.mod704, label %.lr.ph.i3.preheader692.split, label %.lr.ph.i3.prol.preheader

.lr.ph.i3.prol.preheader:                         ; preds = %.lr.ph.i3.preheader692
  br label %.lr.ph.i3.prol

.lr.ph.i3.prol:                                   ; preds = %.lr.ph.i3.prol, %.lr.ph.i3.prol.preheader
  %.05.i.prol = phi i8* [ %180, %.lr.ph.i3.prol ], [ %.05.i.ph, %.lr.ph.i3.prol.preheader ]
  %.014.i.prol = phi i32 [ %177, %.lr.ph.i3.prol ], [ %.014.i.ph, %.lr.ph.i3.prol.preheader ]
  %.023.i.prol = phi i8* [ %181, %.lr.ph.i3.prol ], [ %.023.i.ph, %.lr.ph.i3.prol.preheader ]
  %prol.iter = phi i32 [ %prol.iter.sub, %.lr.ph.i3.prol ], [ %xtraiter703, %.lr.ph.i3.prol.preheader ]
  %177 = add i32 %.014.i.prol, -1
  %178 = load i8, i8* %.05.i.prol, align 1
  %179 = load i8, i8* %.023.i.prol, align 1
  %180 = getelementptr inbounds i8, i8* %.05.i.prol, i64 1
  store i8 %179, i8* %.05.i.prol, align 1
  %181 = getelementptr inbounds i8, i8* %.023.i.prol, i64 1
  store i8 %178, i8* %.023.i.prol, align 1
  %prol.iter.sub = add i32 %prol.iter, -1
  %prol.iter.cmp = icmp eq i32 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph.i3.preheader692.split.loopexit, label %.lr.ph.i3.prol, !llvm.loop !8

.lr.ph.i3.preheader692.split.loopexit:            ; preds = %.lr.ph.i3.prol
  %.lcssa730 = phi i8* [ %181, %.lr.ph.i3.prol ]
  %.lcssa729 = phi i8* [ %180, %.lr.ph.i3.prol ]
  %.lcssa728 = phi i32 [ %177, %.lr.ph.i3.prol ]
  br label %.lr.ph.i3.preheader692.split

.lr.ph.i3.preheader692.split:                     ; preds = %.lr.ph.i3.preheader692, %.lr.ph.i3.preheader692.split.loopexit
  %.05.i.unr = phi i8* [ %.05.i.ph, %.lr.ph.i3.preheader692 ], [ %.lcssa729, %.lr.ph.i3.preheader692.split.loopexit ]
  %.014.i.unr = phi i32 [ %.014.i.ph, %.lr.ph.i3.preheader692 ], [ %.lcssa728, %.lr.ph.i3.preheader692.split.loopexit ]
  %.023.i.unr = phi i8* [ %.023.i.ph, %.lr.ph.i3.preheader692 ], [ %.lcssa730, %.lr.ph.i3.preheader692.split.loopexit ]
  %182 = icmp ult i32 %176, 3
  br i1 %182, label %swap.exit9.outer.preheader.loopexit, label %.lr.ph.i3.preheader692.split.split

.lr.ph.i3.preheader692.split.split:               ; preds = %.lr.ph.i3.preheader692.split
  br label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %.lr.ph.i3, %.lr.ph.i3.preheader692.split.split
  %.05.i = phi i8* [ %.05.i.unr, %.lr.ph.i3.preheader692.split.split ], [ %198, %.lr.ph.i3 ]
  %.014.i = phi i32 [ %.014.i.unr, %.lr.ph.i3.preheader692.split.split ], [ %195, %.lr.ph.i3 ]
  %.023.i = phi i8* [ %.023.i.unr, %.lr.ph.i3.preheader692.split.split ], [ %199, %.lr.ph.i3 ]
  %183 = load i8, i8* %.05.i, align 1
  %184 = load i8, i8* %.023.i, align 1
  %185 = getelementptr inbounds i8, i8* %.05.i, i64 1
  store i8 %184, i8* %.05.i, align 1
  %186 = getelementptr inbounds i8, i8* %.023.i, i64 1
  store i8 %183, i8* %.023.i, align 1
  %187 = load i8, i8* %185, align 1
  %188 = load i8, i8* %186, align 1
  %189 = getelementptr inbounds i8, i8* %.05.i, i64 2
  store i8 %188, i8* %185, align 1
  %190 = getelementptr inbounds i8, i8* %.023.i, i64 2
  store i8 %187, i8* %186, align 1
  %191 = load i8, i8* %189, align 1
  %192 = load i8, i8* %190, align 1
  %193 = getelementptr inbounds i8, i8* %.05.i, i64 3
  store i8 %192, i8* %189, align 1
  %194 = getelementptr inbounds i8, i8* %.023.i, i64 3
  store i8 %191, i8* %190, align 1
  %195 = add i32 %.014.i, -4
  %196 = load i8, i8* %193, align 1
  %197 = load i8, i8* %194, align 1
  %198 = getelementptr inbounds i8, i8* %.05.i, i64 4
  store i8 %197, i8* %193, align 1
  %199 = getelementptr inbounds i8, i8* %.023.i, i64 4
  store i8 %196, i8* %194, align 1
  %200 = icmp eq i32 %195, 0
  br i1 %200, label %swap.exit9.outer.preheader.loopexit.unr-lcssa, label %.lr.ph.i3, !llvm.loop !9

swap.exit9.outer.preheader.loopexit.unr-lcssa:    ; preds = %.lr.ph.i3
  br label %swap.exit9.outer.preheader.loopexit

swap.exit9.outer.preheader.loopexit:              ; preds = %.lr.ph.i3.preheader692.split, %swap.exit9.outer.preheader.loopexit.unr-lcssa
  br label %swap.exit9.outer.preheader

swap.exit9.outer.preheader:                       ; preds = %swap.exit9.outer.preheader.loopexit, %middle.block524, %134
  br label %swap.exit9.outer

swap.exit9.outer.loopexit.unr-lcssa:              ; preds = %.lr.ph.i8
  br label %swap.exit9.outer.loopexit

swap.exit9.outer.loopexit:                        ; preds = %.lr.ph.i8.preheader689.split, %swap.exit9.outer.loopexit.unr-lcssa
  br label %swap.exit9.outer.backedge

swap.exit9.outer:                                 ; preds = %swap.exit9.outer.backedge, %swap.exit9.outer.preheader
  %loguy.0.ph = phi i8* [ %lo.0, %swap.exit9.outer.preheader ], [ %.lcssa, %swap.exit9.outer.backedge ]
  %higuy.0.ph = phi i8* [ %59, %swap.exit9.outer.preheader ], [ %.lcssa721, %swap.exit9.outer.backedge ]
  br label %swap.exit9

swap.exit9:                                       ; preds = %swap.exit9.outer, %203
  %loguy.0 = phi i8* [ %201, %203 ], [ %loguy.0.ph, %swap.exit9.outer ]
  %201 = getelementptr inbounds i8, i8* %loguy.0, i64 %8
  %202 = icmp ugt i8* %201, %hi.0.ph
  br i1 %202, label %.critedge.preheader, label %203

; <label>:203                                     ; preds = %swap.exit9
  %204 = tail call i32 %cmp(i8* %201, i8* %lo.0, i64 %n, i64 %offset) #1
  %205 = icmp slt i32 %204, 1
  br i1 %205, label %swap.exit9, label %.critedge.preheader

.critedge.preheader:                              ; preds = %203, %swap.exit9
  %.lcssa = phi i8* [ %201, %203 ], [ %201, %swap.exit9 ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %208
  %higuy.1 = phi i8* [ %206, %208 ], [ %higuy.0.ph, %.critedge.preheader ]
  %206 = getelementptr inbounds i8, i8* %higuy.1, i64 %9
  %207 = icmp ugt i8* %206, %lo.0
  br i1 %207, label %208, label %.critedge2

; <label>:208                                     ; preds = %.critedge
  %209 = tail call i32 %cmp(i8* %206, i8* %lo.0, i64 %n, i64 %offset) #1
  %210 = icmp sgt i32 %209, -1
  br i1 %210, label %.critedge, label %.critedge2

.critedge2:                                       ; preds = %.critedge, %208
  %.lcssa721 = phi i8* [ %206, %.critedge ], [ %206, %208 ]
  %211 = icmp ult i8* %.lcssa721, %.lcssa
  br i1 %211, label %.us-lcssa.us, label %212

; <label>:212                                     ; preds = %.critedge2
  %213 = icmp eq i8* %.lcssa, %.lcssa721
  br i1 %213, label %swap.exit9.outer.backedge, label %.lr.ph.i8.preheader

.lr.ph.i8.preheader:                              ; preds = %212
  br i1 %min.iters.check362, label %.lr.ph.i8.preheader689, label %min.iters.checked363

min.iters.checked363:                             ; preds = %.lr.ph.i8.preheader
  br i1 %cmp.zero366, label %.lr.ph.i8.preheader689, label %vector.memcheck374

vector.memcheck374:                               ; preds = %min.iters.checked363
  %scevgep368 = getelementptr i8, i8* %.lcssa, i64 %22
  %scevgep369 = getelementptr i8, i8* %.lcssa721, i64 %22
  %bound0370 = icmp ule i8* %.lcssa, %scevgep369
  %bound1371 = icmp ule i8* %.lcssa721, %scevgep368
  %memcheck.conflict373 = and i1 %bound0370, %bound1371
  %ind.end379 = getelementptr i8, i8* %.lcssa, i64 %n.vec365
  %ind.end384 = getelementptr i8, i8* %.lcssa721, i64 %n.vec365
  br i1 %memcheck.conflict373, label %.lr.ph.i8.preheader689, label %vector.body359.preheader

vector.body359.preheader:                         ; preds = %vector.memcheck374
  br i1 %lcmp.mod706, label %vector.body359.prol, label %vector.body359.preheader.split

vector.body359.prol:                              ; preds = %vector.body359.preheader
  %214 = bitcast i8* %.lcssa to <16 x i8>*
  %wide.load519.prol = load <16 x i8>, <16 x i8>* %214, align 1
  %215 = getelementptr i8, i8* %.lcssa, i64 16
  %216 = bitcast i8* %215 to <16 x i8>*
  %wide.load520.prol = load <16 x i8>, <16 x i8>* %216, align 1
  %217 = bitcast i8* %.lcssa721 to <16 x i8>*
  %wide.load521.prol = load <16 x i8>, <16 x i8>* %217, align 1
  %218 = getelementptr i8, i8* %.lcssa721, i64 16
  %219 = bitcast i8* %218 to <16 x i8>*
  %wide.load522.prol = load <16 x i8>, <16 x i8>* %219, align 1
  %220 = bitcast i8* %.lcssa to <16 x i8>*
  store <16 x i8> %wide.load521.prol, <16 x i8>* %220, align 1
  %221 = bitcast i8* %215 to <16 x i8>*
  store <16 x i8> %wide.load522.prol, <16 x i8>* %221, align 1
  %222 = bitcast i8* %.lcssa721 to <16 x i8>*
  store <16 x i8> %wide.load519.prol, <16 x i8>* %222, align 1
  %223 = bitcast i8* %218 to <16 x i8>*
  store <16 x i8> %wide.load520.prol, <16 x i8>* %223, align 1
  br label %vector.body359.preheader.split

vector.body359.preheader.split:                   ; preds = %vector.body359.prol, %vector.body359.preheader
  %index376.unr = phi i64 [ 0, %vector.body359.preheader ], [ 32, %vector.body359.prol ]
  br i1 %51, label %middle.block360, label %vector.body359.preheader.split.split

vector.body359.preheader.split.split:             ; preds = %vector.body359.preheader.split
  br label %vector.body359

vector.body359:                                   ; preds = %vector.body359, %vector.body359.preheader.split.split
  %index376 = phi i64 [ %index376.unr, %vector.body359.preheader.split.split ], [ %index.next377.1, %vector.body359 ]
  %next.gep386 = getelementptr i8, i8* %.lcssa, i64 %index376
  %next.gep455 = getelementptr i8, i8* %.lcssa721, i64 %index376
  %224 = bitcast i8* %next.gep386 to <16 x i8>*
  %wide.load519 = load <16 x i8>, <16 x i8>* %224, align 1
  %225 = getelementptr i8, i8* %next.gep386, i64 16
  %226 = bitcast i8* %225 to <16 x i8>*
  %wide.load520 = load <16 x i8>, <16 x i8>* %226, align 1
  %227 = bitcast i8* %next.gep455 to <16 x i8>*
  %wide.load521 = load <16 x i8>, <16 x i8>* %227, align 1
  %228 = getelementptr i8, i8* %next.gep455, i64 16
  %229 = bitcast i8* %228 to <16 x i8>*
  %wide.load522 = load <16 x i8>, <16 x i8>* %229, align 1
  %230 = bitcast i8* %next.gep386 to <16 x i8>*
  store <16 x i8> %wide.load521, <16 x i8>* %230, align 1
  %231 = bitcast i8* %225 to <16 x i8>*
  store <16 x i8> %wide.load522, <16 x i8>* %231, align 1
  %232 = bitcast i8* %next.gep455 to <16 x i8>*
  store <16 x i8> %wide.load519, <16 x i8>* %232, align 1
  %233 = bitcast i8* %228 to <16 x i8>*
  store <16 x i8> %wide.load520, <16 x i8>* %233, align 1
  %index.next377 = add i64 %index376, 32
  %next.gep386.1 = getelementptr i8, i8* %.lcssa, i64 %index.next377
  %next.gep455.1 = getelementptr i8, i8* %.lcssa721, i64 %index.next377
  %234 = bitcast i8* %next.gep386.1 to <16 x i8>*
  %wide.load519.1 = load <16 x i8>, <16 x i8>* %234, align 1
  %235 = getelementptr i8, i8* %next.gep386.1, i64 16
  %236 = bitcast i8* %235 to <16 x i8>*
  %wide.load520.1 = load <16 x i8>, <16 x i8>* %236, align 1
  %237 = bitcast i8* %next.gep455.1 to <16 x i8>*
  %wide.load521.1 = load <16 x i8>, <16 x i8>* %237, align 1
  %238 = getelementptr i8, i8* %next.gep455.1, i64 16
  %239 = bitcast i8* %238 to <16 x i8>*
  %wide.load522.1 = load <16 x i8>, <16 x i8>* %239, align 1
  %240 = bitcast i8* %next.gep386.1 to <16 x i8>*
  store <16 x i8> %wide.load521.1, <16 x i8>* %240, align 1
  %241 = bitcast i8* %235 to <16 x i8>*
  store <16 x i8> %wide.load522.1, <16 x i8>* %241, align 1
  %242 = bitcast i8* %next.gep455.1 to <16 x i8>*
  store <16 x i8> %wide.load519.1, <16 x i8>* %242, align 1
  %243 = bitcast i8* %238 to <16 x i8>*
  store <16 x i8> %wide.load520.1, <16 x i8>* %243, align 1
  %index.next377.1 = add i64 %index376, 64
  %244 = icmp eq i64 %index.next377.1, %n.vec365
  br i1 %244, label %middle.block360.unr-lcssa, label %vector.body359, !llvm.loop !10

middle.block360.unr-lcssa:                        ; preds = %vector.body359
  br label %middle.block360

middle.block360:                                  ; preds = %vector.body359.preheader.split, %middle.block360.unr-lcssa
  br i1 %cmp.n385, label %swap.exit9.outer.backedge, label %.lr.ph.i8.preheader689

swap.exit9.outer.backedge:                        ; preds = %middle.block360, %212, %swap.exit9.outer.loopexit
  br label %swap.exit9.outer

.lr.ph.i8.preheader689:                           ; preds = %middle.block360, %vector.memcheck374, %min.iters.checked363, %.lr.ph.i8.preheader
  %.05.i5.ph = phi i8* [ %.lcssa, %vector.memcheck374 ], [ %.lcssa, %min.iters.checked363 ], [ %.lcssa, %.lr.ph.i8.preheader ], [ %ind.end379, %middle.block360 ]
  %.014.i6.ph = phi i32 [ %width, %vector.memcheck374 ], [ %width, %min.iters.checked363 ], [ %width, %.lr.ph.i8.preheader ], [ %ind.end382, %middle.block360 ]
  %.023.i7.ph = phi i8* [ %.lcssa721, %vector.memcheck374 ], [ %.lcssa721, %min.iters.checked363 ], [ %.lcssa721, %.lr.ph.i8.preheader ], [ %ind.end384, %middle.block360 ]
  %245 = add i32 %.014.i6.ph, -1
  %xtraiter707 = and i32 %.014.i6.ph, 3
  %lcmp.mod708 = icmp eq i32 %xtraiter707, 0
  br i1 %lcmp.mod708, label %.lr.ph.i8.preheader689.split, label %.lr.ph.i8.prol.preheader

.lr.ph.i8.prol.preheader:                         ; preds = %.lr.ph.i8.preheader689
  br label %.lr.ph.i8.prol

.lr.ph.i8.prol:                                   ; preds = %.lr.ph.i8.prol, %.lr.ph.i8.prol.preheader
  %.05.i5.prol = phi i8* [ %249, %.lr.ph.i8.prol ], [ %.05.i5.ph, %.lr.ph.i8.prol.preheader ]
  %.014.i6.prol = phi i32 [ %246, %.lr.ph.i8.prol ], [ %.014.i6.ph, %.lr.ph.i8.prol.preheader ]
  %.023.i7.prol = phi i8* [ %250, %.lr.ph.i8.prol ], [ %.023.i7.ph, %.lr.ph.i8.prol.preheader ]
  %prol.iter709 = phi i32 [ %prol.iter709.sub, %.lr.ph.i8.prol ], [ %xtraiter707, %.lr.ph.i8.prol.preheader ]
  %246 = add i32 %.014.i6.prol, -1
  %247 = load i8, i8* %.05.i5.prol, align 1
  %248 = load i8, i8* %.023.i7.prol, align 1
  %249 = getelementptr inbounds i8, i8* %.05.i5.prol, i64 1
  store i8 %248, i8* %.05.i5.prol, align 1
  %250 = getelementptr inbounds i8, i8* %.023.i7.prol, i64 1
  store i8 %247, i8* %.023.i7.prol, align 1
  %prol.iter709.sub = add i32 %prol.iter709, -1
  %prol.iter709.cmp = icmp eq i32 %prol.iter709.sub, 0
  br i1 %prol.iter709.cmp, label %.lr.ph.i8.preheader689.split.loopexit, label %.lr.ph.i8.prol, !llvm.loop !11

.lr.ph.i8.preheader689.split.loopexit:            ; preds = %.lr.ph.i8.prol
  %.lcssa727 = phi i8* [ %250, %.lr.ph.i8.prol ]
  %.lcssa726 = phi i8* [ %249, %.lr.ph.i8.prol ]
  %.lcssa725 = phi i32 [ %246, %.lr.ph.i8.prol ]
  br label %.lr.ph.i8.preheader689.split

.lr.ph.i8.preheader689.split:                     ; preds = %.lr.ph.i8.preheader689, %.lr.ph.i8.preheader689.split.loopexit
  %.05.i5.unr = phi i8* [ %.05.i5.ph, %.lr.ph.i8.preheader689 ], [ %.lcssa726, %.lr.ph.i8.preheader689.split.loopexit ]
  %.014.i6.unr = phi i32 [ %.014.i6.ph, %.lr.ph.i8.preheader689 ], [ %.lcssa725, %.lr.ph.i8.preheader689.split.loopexit ]
  %.023.i7.unr = phi i8* [ %.023.i7.ph, %.lr.ph.i8.preheader689 ], [ %.lcssa727, %.lr.ph.i8.preheader689.split.loopexit ]
  %251 = icmp ult i32 %245, 3
  br i1 %251, label %swap.exit9.outer.loopexit, label %.lr.ph.i8.preheader689.split.split

.lr.ph.i8.preheader689.split.split:               ; preds = %.lr.ph.i8.preheader689.split
  br label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %.lr.ph.i8, %.lr.ph.i8.preheader689.split.split
  %.05.i5 = phi i8* [ %.05.i5.unr, %.lr.ph.i8.preheader689.split.split ], [ %267, %.lr.ph.i8 ]
  %.014.i6 = phi i32 [ %.014.i6.unr, %.lr.ph.i8.preheader689.split.split ], [ %264, %.lr.ph.i8 ]
  %.023.i7 = phi i8* [ %.023.i7.unr, %.lr.ph.i8.preheader689.split.split ], [ %268, %.lr.ph.i8 ]
  %252 = load i8, i8* %.05.i5, align 1
  %253 = load i8, i8* %.023.i7, align 1
  %254 = getelementptr inbounds i8, i8* %.05.i5, i64 1
  store i8 %253, i8* %.05.i5, align 1
  %255 = getelementptr inbounds i8, i8* %.023.i7, i64 1
  store i8 %252, i8* %.023.i7, align 1
  %256 = load i8, i8* %254, align 1
  %257 = load i8, i8* %255, align 1
  %258 = getelementptr inbounds i8, i8* %.05.i5, i64 2
  store i8 %257, i8* %254, align 1
  %259 = getelementptr inbounds i8, i8* %.023.i7, i64 2
  store i8 %256, i8* %255, align 1
  %260 = load i8, i8* %258, align 1
  %261 = load i8, i8* %259, align 1
  %262 = getelementptr inbounds i8, i8* %.05.i5, i64 3
  store i8 %261, i8* %258, align 1
  %263 = getelementptr inbounds i8, i8* %.023.i7, i64 3
  store i8 %260, i8* %259, align 1
  %264 = add i32 %.014.i6, -4
  %265 = load i8, i8* %262, align 1
  %266 = load i8, i8* %263, align 1
  %267 = getelementptr inbounds i8, i8* %.05.i5, i64 4
  store i8 %266, i8* %262, align 1
  %268 = getelementptr inbounds i8, i8* %.023.i7, i64 4
  store i8 %265, i8* %263, align 1
  %269 = icmp eq i32 %264, 0
  br i1 %269, label %swap.exit9.outer.loopexit.unr-lcssa, label %.lr.ph.i8, !llvm.loop !12

.us-lcssa.us:                                     ; preds = %.critedge2
  %.lcssa721.lcssa = phi i8* [ %.lcssa721, %.critedge2 ]
  %.lcssa.lcssa = phi i8* [ %.lcssa, %.critedge2 ]
  %270 = icmp eq i8* %lo.0, %.lcssa721.lcssa
  br i1 %270, label %swap.exit15, label %.lr.ph.i14.preheader

.lr.ph.i14.preheader:                             ; preds = %.us-lcssa.us
  br i1 %min.iters.check198, label %.lr.ph.i14.preheader691, label %min.iters.checked199

min.iters.checked199:                             ; preds = %.lr.ph.i14.preheader
  br i1 %cmp.zero202, label %.lr.ph.i14.preheader691, label %vector.memcheck210

vector.memcheck210:                               ; preds = %min.iters.checked199
  %scevgep204 = getelementptr i8, i8* %lo.0, i64 %19
  %scevgep205 = getelementptr i8, i8* %.lcssa721.lcssa, i64 %19
  %bound0206 = icmp ule i8* %lo.0, %scevgep205
  %bound1207 = icmp ule i8* %.lcssa721.lcssa, %scevgep204
  %memcheck.conflict209 = and i1 %bound0206, %bound1207
  %ind.end215 = getelementptr i8, i8* %lo.0, i64 %n.vec201
  %ind.end220 = getelementptr i8, i8* %.lcssa721.lcssa, i64 %n.vec201
  br i1 %memcheck.conflict209, label %.lr.ph.i14.preheader691, label %vector.body195.preheader

vector.body195.preheader:                         ; preds = %vector.memcheck210
  br i1 %lcmp.mod711, label %vector.body195.prol, label %vector.body195.preheader.split

vector.body195.prol:                              ; preds = %vector.body195.preheader
  %271 = bitcast i8* %lo.0 to <16 x i8>*
  %wide.load355.prol = load <16 x i8>, <16 x i8>* %271, align 1
  %272 = getelementptr i8, i8* %lo.0, i64 16
  %273 = bitcast i8* %272 to <16 x i8>*
  %wide.load356.prol = load <16 x i8>, <16 x i8>* %273, align 1
  %274 = bitcast i8* %.lcssa721.lcssa to <16 x i8>*
  %wide.load357.prol = load <16 x i8>, <16 x i8>* %274, align 1
  %275 = getelementptr i8, i8* %.lcssa721.lcssa, i64 16
  %276 = bitcast i8* %275 to <16 x i8>*
  %wide.load358.prol = load <16 x i8>, <16 x i8>* %276, align 1
  %277 = bitcast i8* %lo.0 to <16 x i8>*
  store <16 x i8> %wide.load357.prol, <16 x i8>* %277, align 1
  %278 = bitcast i8* %272 to <16 x i8>*
  store <16 x i8> %wide.load358.prol, <16 x i8>* %278, align 1
  %279 = bitcast i8* %.lcssa721.lcssa to <16 x i8>*
  store <16 x i8> %wide.load355.prol, <16 x i8>* %279, align 1
  %280 = bitcast i8* %275 to <16 x i8>*
  store <16 x i8> %wide.load356.prol, <16 x i8>* %280, align 1
  br label %vector.body195.preheader.split

vector.body195.preheader.split:                   ; preds = %vector.body195.prol, %vector.body195.preheader
  %index212.unr = phi i64 [ 0, %vector.body195.preheader ], [ 32, %vector.body195.prol ]
  br i1 %53, label %middle.block196, label %vector.body195.preheader.split.split

vector.body195.preheader.split.split:             ; preds = %vector.body195.preheader.split
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.body195.preheader.split.split
  %index212 = phi i64 [ %index212.unr, %vector.body195.preheader.split.split ], [ %index.next213.1, %vector.body195 ]
  %next.gep222 = getelementptr i8, i8* %lo.0, i64 %index212
  %next.gep291 = getelementptr i8, i8* %.lcssa721.lcssa, i64 %index212
  %281 = bitcast i8* %next.gep222 to <16 x i8>*
  %wide.load355 = load <16 x i8>, <16 x i8>* %281, align 1
  %282 = getelementptr i8, i8* %next.gep222, i64 16
  %283 = bitcast i8* %282 to <16 x i8>*
  %wide.load356 = load <16 x i8>, <16 x i8>* %283, align 1
  %284 = bitcast i8* %next.gep291 to <16 x i8>*
  %wide.load357 = load <16 x i8>, <16 x i8>* %284, align 1
  %285 = getelementptr i8, i8* %next.gep291, i64 16
  %286 = bitcast i8* %285 to <16 x i8>*
  %wide.load358 = load <16 x i8>, <16 x i8>* %286, align 1
  %287 = bitcast i8* %next.gep222 to <16 x i8>*
  store <16 x i8> %wide.load357, <16 x i8>* %287, align 1
  %288 = bitcast i8* %282 to <16 x i8>*
  store <16 x i8> %wide.load358, <16 x i8>* %288, align 1
  %289 = bitcast i8* %next.gep291 to <16 x i8>*
  store <16 x i8> %wide.load355, <16 x i8>* %289, align 1
  %290 = bitcast i8* %285 to <16 x i8>*
  store <16 x i8> %wide.load356, <16 x i8>* %290, align 1
  %index.next213 = add i64 %index212, 32
  %next.gep222.1 = getelementptr i8, i8* %lo.0, i64 %index.next213
  %next.gep291.1 = getelementptr i8, i8* %.lcssa721.lcssa, i64 %index.next213
  %291 = bitcast i8* %next.gep222.1 to <16 x i8>*
  %wide.load355.1 = load <16 x i8>, <16 x i8>* %291, align 1
  %292 = getelementptr i8, i8* %next.gep222.1, i64 16
  %293 = bitcast i8* %292 to <16 x i8>*
  %wide.load356.1 = load <16 x i8>, <16 x i8>* %293, align 1
  %294 = bitcast i8* %next.gep291.1 to <16 x i8>*
  %wide.load357.1 = load <16 x i8>, <16 x i8>* %294, align 1
  %295 = getelementptr i8, i8* %next.gep291.1, i64 16
  %296 = bitcast i8* %295 to <16 x i8>*
  %wide.load358.1 = load <16 x i8>, <16 x i8>* %296, align 1
  %297 = bitcast i8* %next.gep222.1 to <16 x i8>*
  store <16 x i8> %wide.load357.1, <16 x i8>* %297, align 1
  %298 = bitcast i8* %292 to <16 x i8>*
  store <16 x i8> %wide.load358.1, <16 x i8>* %298, align 1
  %299 = bitcast i8* %next.gep291.1 to <16 x i8>*
  store <16 x i8> %wide.load355.1, <16 x i8>* %299, align 1
  %300 = bitcast i8* %295 to <16 x i8>*
  store <16 x i8> %wide.load356.1, <16 x i8>* %300, align 1
  %index.next213.1 = add i64 %index212, 64
  %301 = icmp eq i64 %index.next213.1, %n.vec201
  br i1 %301, label %middle.block196.unr-lcssa, label %vector.body195, !llvm.loop !13

middle.block196.unr-lcssa:                        ; preds = %vector.body195
  br label %middle.block196

middle.block196:                                  ; preds = %vector.body195.preheader.split, %middle.block196.unr-lcssa
  %.lcssa721724 = phi i8* [ %.lcssa721.lcssa, %vector.body195.preheader.split ], [ %.lcssa721.lcssa, %middle.block196.unr-lcssa ]
  br i1 %cmp.n221, label %swap.exit15, label %.lr.ph.i14.preheader691

.lr.ph.i14.preheader691:                          ; preds = %middle.block196, %vector.memcheck210, %min.iters.checked199, %.lr.ph.i14.preheader
  %.lcssa721722 = phi i8* [ %.lcssa721.lcssa, %vector.memcheck210 ], [ %.lcssa721.lcssa, %min.iters.checked199 ], [ %.lcssa721.lcssa, %.lr.ph.i14.preheader ], [ %.lcssa721724, %middle.block196 ]
  %.05.i11.ph = phi i8* [ %lo.0, %vector.memcheck210 ], [ %lo.0, %min.iters.checked199 ], [ %lo.0, %.lr.ph.i14.preheader ], [ %ind.end215, %middle.block196 ]
  %.014.i12.ph = phi i32 [ %width, %vector.memcheck210 ], [ %width, %min.iters.checked199 ], [ %width, %.lr.ph.i14.preheader ], [ %ind.end218, %middle.block196 ]
  %.023.i13.ph = phi i8* [ %.lcssa721.lcssa, %vector.memcheck210 ], [ %.lcssa721.lcssa, %min.iters.checked199 ], [ %.lcssa721.lcssa, %.lr.ph.i14.preheader ], [ %ind.end220, %middle.block196 ]
  %302 = add i32 %.014.i12.ph, -1
  %xtraiter712 = and i32 %.014.i12.ph, 3
  %lcmp.mod713 = icmp eq i32 %xtraiter712, 0
  br i1 %lcmp.mod713, label %.lr.ph.i14.preheader691.split, label %.lr.ph.i14.prol.preheader

.lr.ph.i14.prol.preheader:                        ; preds = %.lr.ph.i14.preheader691
  br label %.lr.ph.i14.prol

.lr.ph.i14.prol:                                  ; preds = %.lr.ph.i14.prol, %.lr.ph.i14.prol.preheader
  %.05.i11.prol = phi i8* [ %306, %.lr.ph.i14.prol ], [ %.05.i11.ph, %.lr.ph.i14.prol.preheader ]
  %.014.i12.prol = phi i32 [ %303, %.lr.ph.i14.prol ], [ %.014.i12.ph, %.lr.ph.i14.prol.preheader ]
  %.023.i13.prol = phi i8* [ %307, %.lr.ph.i14.prol ], [ %.023.i13.ph, %.lr.ph.i14.prol.preheader ]
  %prol.iter714 = phi i32 [ %prol.iter714.sub, %.lr.ph.i14.prol ], [ %xtraiter712, %.lr.ph.i14.prol.preheader ]
  %303 = add i32 %.014.i12.prol, -1
  %304 = load i8, i8* %.05.i11.prol, align 1
  %305 = load i8, i8* %.023.i13.prol, align 1
  %306 = getelementptr inbounds i8, i8* %.05.i11.prol, i64 1
  store i8 %305, i8* %.05.i11.prol, align 1
  %307 = getelementptr inbounds i8, i8* %.023.i13.prol, i64 1
  store i8 %304, i8* %.023.i13.prol, align 1
  %prol.iter714.sub = add i32 %prol.iter714, -1
  %prol.iter714.cmp = icmp eq i32 %prol.iter714.sub, 0
  br i1 %prol.iter714.cmp, label %.lr.ph.i14.preheader691.split.loopexit, label %.lr.ph.i14.prol, !llvm.loop !14

.lr.ph.i14.preheader691.split.loopexit:           ; preds = %.lr.ph.i14.prol
  %.lcssa733 = phi i8* [ %307, %.lr.ph.i14.prol ]
  %.lcssa732 = phi i8* [ %306, %.lr.ph.i14.prol ]
  %.lcssa731 = phi i32 [ %303, %.lr.ph.i14.prol ]
  br label %.lr.ph.i14.preheader691.split

.lr.ph.i14.preheader691.split:                    ; preds = %.lr.ph.i14.preheader691, %.lr.ph.i14.preheader691.split.loopexit
  %.05.i11.unr = phi i8* [ %.05.i11.ph, %.lr.ph.i14.preheader691 ], [ %.lcssa732, %.lr.ph.i14.preheader691.split.loopexit ]
  %.014.i12.unr = phi i32 [ %.014.i12.ph, %.lr.ph.i14.preheader691 ], [ %.lcssa731, %.lr.ph.i14.preheader691.split.loopexit ]
  %.023.i13.unr = phi i8* [ %.023.i13.ph, %.lr.ph.i14.preheader691 ], [ %.lcssa733, %.lr.ph.i14.preheader691.split.loopexit ]
  %308 = icmp ult i32 %302, 3
  br i1 %308, label %swap.exit15.loopexit, label %.lr.ph.i14.preheader691.split.split

.lr.ph.i14.preheader691.split.split:              ; preds = %.lr.ph.i14.preheader691.split
  br label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %.lr.ph.i14, %.lr.ph.i14.preheader691.split.split
  %.05.i11 = phi i8* [ %.05.i11.unr, %.lr.ph.i14.preheader691.split.split ], [ %324, %.lr.ph.i14 ]
  %.014.i12 = phi i32 [ %.014.i12.unr, %.lr.ph.i14.preheader691.split.split ], [ %321, %.lr.ph.i14 ]
  %.023.i13 = phi i8* [ %.023.i13.unr, %.lr.ph.i14.preheader691.split.split ], [ %325, %.lr.ph.i14 ]
  %309 = load i8, i8* %.05.i11, align 1
  %310 = load i8, i8* %.023.i13, align 1
  %311 = getelementptr inbounds i8, i8* %.05.i11, i64 1
  store i8 %310, i8* %.05.i11, align 1
  %312 = getelementptr inbounds i8, i8* %.023.i13, i64 1
  store i8 %309, i8* %.023.i13, align 1
  %313 = load i8, i8* %311, align 1
  %314 = load i8, i8* %312, align 1
  %315 = getelementptr inbounds i8, i8* %.05.i11, i64 2
  store i8 %314, i8* %311, align 1
  %316 = getelementptr inbounds i8, i8* %.023.i13, i64 2
  store i8 %313, i8* %312, align 1
  %317 = load i8, i8* %315, align 1
  %318 = load i8, i8* %316, align 1
  %319 = getelementptr inbounds i8, i8* %.05.i11, i64 3
  store i8 %318, i8* %315, align 1
  %320 = getelementptr inbounds i8, i8* %.023.i13, i64 3
  store i8 %317, i8* %316, align 1
  %321 = add i32 %.014.i12, -4
  %322 = load i8, i8* %319, align 1
  %323 = load i8, i8* %320, align 1
  %324 = getelementptr inbounds i8, i8* %.05.i11, i64 4
  store i8 %323, i8* %319, align 1
  %325 = getelementptr inbounds i8, i8* %.023.i13, i64 4
  store i8 %322, i8* %320, align 1
  %326 = icmp eq i32 %321, 0
  br i1 %326, label %swap.exit15.loopexit.unr-lcssa, label %.lr.ph.i14, !llvm.loop !15

swap.exit15.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i14
  br label %swap.exit15.loopexit

swap.exit15.loopexit:                             ; preds = %.lr.ph.i14.preheader691.split, %swap.exit15.loopexit.unr-lcssa
  br label %swap.exit15

swap.exit15:                                      ; preds = %swap.exit15.loopexit, %middle.block196, %.us-lcssa.us
  %.lcssa721723 = phi i8* [ %.lcssa721722, %swap.exit15.loopexit ], [ %.lcssa721724, %middle.block196 ], [ %.lcssa721.lcssa, %.us-lcssa.us ]
  %327 = getelementptr inbounds i8, i8* %.lcssa721723, i64 -1
  %328 = ptrtoint i8* %327 to i64
  %329 = sub i64 %328, %61
  %330 = ptrtoint i8* %.lcssa.lcssa to i64
  %331 = sub i64 %58, %330
  %332 = icmp slt i64 %329, %331
  br i1 %332, label %344, label %333

; <label>:333                                     ; preds = %swap.exit15
  %334 = getelementptr inbounds i8, i8* %lo.0, i64 %8
  %335 = icmp ult i8* %334, %.lcssa721723
  br i1 %335, label %336, label %342

; <label>:336                                     ; preds = %333
  %337 = sext i32 %stkptr.0 to i64
  %338 = getelementptr inbounds [30 x i8*], [30 x i8*]* %lostk, i64 0, i64 %337
  store i8* %lo.0, i8** %338, align 8
  %339 = getelementptr inbounds i8, i8* %.lcssa721723, i64 %9
  %340 = getelementptr inbounds [30 x i8*], [30 x i8*]* %histk, i64 0, i64 %337
  store i8* %339, i8** %340, align 8
  %341 = add nsw i32 %stkptr.0, 1
  br label %342

; <label>:342                                     ; preds = %336, %333
  %stkptr.1 = phi i32 [ %341, %336 ], [ %stkptr.0, %333 ]
  %343 = icmp ult i8* %.lcssa.lcssa, %hi.0.ph
  br i1 %343, label %60, label %shortsort.exit.loopexit693

; <label>:344                                     ; preds = %swap.exit15
  %.lcssa721723.lcssa = phi i8* [ %.lcssa721723, %swap.exit15 ]
  %stkptr.0.lcssa736 = phi i32 [ %stkptr.0, %swap.exit15 ]
  %lo.0.lcssa734 = phi i8* [ %lo.0, %swap.exit15 ]
  %.lcssa.lcssa.lcssa = phi i8* [ %.lcssa.lcssa, %swap.exit15 ]
  %345 = icmp ult i8* %.lcssa.lcssa.lcssa, %hi.0.ph
  br i1 %345, label %346, label %351

; <label>:346                                     ; preds = %344
  %347 = sext i32 %stkptr.0.lcssa736 to i64
  %348 = getelementptr inbounds [30 x i8*], [30 x i8*]* %lostk, i64 0, i64 %347
  store i8* %.lcssa.lcssa.lcssa, i8** %348, align 8
  %349 = getelementptr inbounds [30 x i8*], [30 x i8*]* %histk, i64 0, i64 %347
  store i8* %hi.0.ph, i8** %349, align 8
  %350 = add nsw i32 %stkptr.0.lcssa736, 1
  br label %351

; <label>:351                                     ; preds = %346, %344
  %stkptr.2 = phi i32 [ %350, %346 ], [ %stkptr.0.lcssa736, %344 ]
  %352 = getelementptr inbounds i8, i8* %lo.0.lcssa734, i64 %8
  %353 = icmp ult i8* %352, %.lcssa721723.lcssa
  br i1 %353, label %354, label %shortsort.exit

; <label>:354                                     ; preds = %351
  %355 = getelementptr inbounds i8, i8* %.lcssa721723.lcssa, i64 %9
  br label %.outer.backedge

shortsort.exit.loopexit:                          ; preds = %swap.exit.i
  br label %shortsort.exit

shortsort.exit.loopexit693:                       ; preds = %342
  %stkptr.1.lcssa = phi i32 [ %stkptr.1, %342 ]
  br label %shortsort.exit

shortsort.exit:                                   ; preds = %shortsort.exit.loopexit693, %shortsort.exit.loopexit, %67, %351
  %stkptr.3 = phi i32 [ %stkptr.2, %351 ], [ %stkptr.0.lcssa, %67 ], [ %stkptr.0.lcssa, %shortsort.exit.loopexit ], [ %stkptr.1.lcssa, %shortsort.exit.loopexit693 ]
  %356 = add nsw i32 %stkptr.3, -1
  %357 = icmp sgt i32 %stkptr.3, 0
  br i1 %357, label %358, label %.loopexit.loopexit

; <label>:358                                     ; preds = %shortsort.exit
  %359 = sext i32 %356 to i64
  %360 = getelementptr inbounds [30 x i8*], [30 x i8*]* %lostk, i64 0, i64 %359
  %361 = load i8*, i8** %360, align 8
  %362 = getelementptr inbounds [30 x i8*], [30 x i8*]* %histk, i64 0, i64 %359
  %363 = load i8*, i8** %362, align 8
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %358, %354
  %hi.0.ph.be = phi i8* [ %355, %354 ], [ %363, %358 ]
  %lo.0.ph.be = phi i8* [ %lo.0.lcssa734, %354 ], [ %361, %358 ]
  %stkptr.0.ph.be = phi i32 [ %stkptr.2, %354 ], [ %356, %358 ]
  br label %.outer

.loopexit.loopexit:                               ; preds = %shortsort.exit
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = distinct !{!1, !2, !3}
!2 = !{!"llvm.loop.vectorize.width", i32 1}
!3 = !{!"llvm.loop.interleave.count", i32 1}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.unroll.disable"}
!6 = distinct !{!6, !2, !3}
!7 = distinct !{!7, !2, !3}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !2, !3}
!10 = distinct !{!10, !2, !3}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !2, !3}
!13 = distinct !{!13, !2, !3}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !2, !3}
