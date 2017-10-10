; ModuleID = '../bin/router.marked.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.point = type { i64, i64, i64, i64, i32 }
%struct._tm_thread_context_t = type { i32, i32, %struct.simple_metadata*, i32, i32, [44 x i8] }
%struct.simple_metadata = type opaque
%struct.router = type { i64, i64, i64, i64 }
%struct.maze = type { %struct.grid*, %struct.queue*, %struct.vector*, %struct.vector*, %struct.vector* }
%struct.grid = type { i64, i64, i64, i64*, i64* }
%struct.queue = type opaque
%struct.vector = type { i64, i64, i8** }
%struct.pair = type { i8*, i8* }
%struct.coordinate = type { i64, i64, i64 }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.list_node = type { i8*, %struct.list_node* }

@MOVE_POSX = global %struct.point { i64 1, i64 0, i64 0, i64 0, i32 1 }, align 8
@MOVE_POSY = global %struct.point { i64 0, i64 1, i64 0, i64 0, i32 2 }, align 8
@MOVE_POSZ = global %struct.point { i64 0, i64 0, i64 1, i64 0, i32 3 }, align 8
@MOVE_NEGX = global %struct.point { i64 -1, i64 0, i64 0, i64 0, i32 4 }, align 8
@MOVE_NEGY = global %struct.point { i64 0, i64 -1, i64 0, i64 0, i32 5 }, align 8
@MOVE_NEGZ = global %struct.point { i64 0, i64 0, i64 -1, i64 0, i32 6 }, align 8
@thread_contexts = external global %struct._tm_thread_context_t*, align 8
@.str = private unnamed_addr constant [16 x i8] c"myPathVectorPtr\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"router.c\00", align 1
@__PRETTY_FUNCTION__.router_solve = private unnamed_addr constant [26 x i8] c"void router_solve(void *)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"myGridPtr\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"pointVectorPtr\00", align 1
@__PRETTY_FUNCTION__.PdoTraceback = private unnamed_addr constant [65 x i8] c"vector_t *PdoTraceback(grid_t *, grid_t *, coordinate_t *, long)\00", align 1

; Function Attrs: nounwind uwtable
define noalias %struct.router* @router_alloc(i64 %xCost, i64 %yCost, i64 %zCost, i64 %bendCost) #0 {
  %1 = tail call noalias i8* @malloc(i64 32) #4
  %2 = bitcast i8* %1 to %struct.router*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %12, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %1 to i64*
  store i64 %xCost, i64* %5, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i64*
  store i64 %yCost, i64* %7, align 8
  %8 = getelementptr inbounds i8, i8* %1, i64 16
  %9 = bitcast i8* %8 to i64*
  store i64 %zCost, i64* %9, align 8
  %10 = getelementptr inbounds i8, i8* %1, i64 24
  %11 = bitcast i8* %10 to i64*
  store i64 %bendCost, i64* %11, align 8
  br label %12

; <label>:12                                      ; preds = %0, %4
  ret %struct.router* %2
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @router_free(%struct.router* nocapture %routerPtr) #0 {
  %1 = bitcast %struct.router* %routerPtr to i8*
  tail call void @free(i8* %1) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @router_solve(i8* nocapture readonly %argPtr) #0 {
  %x.i = alloca i64, align 8
  %y.i = alloca i64, align 8
  %z.i = alloca i64, align 8
  %1 = tail call i64 (...) @thread_getId() #4
  %2 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %3 = tail call i64 (...) @thread_getId() #4
  %4 = trunc i64 %3 to i32
  tail call void @SimRoiStart(i32 %4) #4
  %5 = bitcast i8* %argPtr to %struct.router**
  %6 = load %struct.router*, %struct.router** %5, align 8
  %7 = getelementptr inbounds i8, i8* %argPtr, i64 8
  %8 = bitcast i8* %7 to %struct.maze**
  %9 = load %struct.maze*, %struct.maze** %8, align 8
  %10 = tail call %struct.vector* @Pvector_alloc(i64 1) #4
  %11 = icmp eq %struct.vector* %10, null
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 362, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.router_solve, i64 0, i64 0)) #6
  unreachable

; <label>:13                                      ; preds = %0
  %14 = getelementptr inbounds %struct.maze, %struct.maze* %9, i64 0, i32 1
  %15 = load %struct.queue*, %struct.queue** %14, align 8
  %16 = getelementptr inbounds %struct.maze, %struct.maze* %9, i64 0, i32 0
  %17 = load %struct.grid*, %struct.grid** %16, align 8
  %18 = getelementptr inbounds %struct.grid, %struct.grid* %17, i64 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.grid, %struct.grid* %17, i64 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.grid, %struct.grid* %17, i64 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = tail call %struct.grid* @Pgrid_alloc(i64 %19, i64 %21, i64 %23) #4
  %25 = icmp eq %struct.grid* %24, null
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %13
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 368, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.router_solve, i64 0, i64 0)) #6
  unreachable

; <label>:27                                      ; preds = %13
  %28 = getelementptr inbounds %struct.router, %struct.router* %6, i64 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = tail call %struct.queue* @Pqueue_alloc(i64 -1) #4
  %.idx = getelementptr %struct.router, %struct.router* %6, i64 0, i32 0
  %.idx1 = getelementptr %struct.router, %struct.router* %6, i64 0, i32 1
  %.idx2 = getelementptr %struct.router, %struct.router* %6, i64 0, i32 2
  %31 = bitcast i64* %x.i to i8*
  %32 = bitcast i64* %y.i to i8*
  %33 = bitcast i64* %z.i to i8*
  br label %.outer8

.outer8:                                          ; preds = %.outer8.backedge, %27
  %tries.0.ph = phi i32 [ 9, %27 ], [ %tries.0.ph.be, %.outer8.backedge ]
  %34 = call i64 (...) @RTM_fallback_isLocked() #4
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %._crit_edge12, label %.lr.ph11.preheader

.lr.ph11.preheader:                               ; preds = %.outer8
  br label %.lr.ph11

.lr.ph11:                                         ; preds = %.lr.ph11.preheader, %.lr.ph11
  call void @llvm.x86.sse2.pause() #4
  %36 = call i64 (...) @RTM_fallback_isLocked() #4
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %._crit_edge12.loopexit, label %.lr.ph11

._crit_edge12.loopexit:                           ; preds = %.lr.ph11
  br label %._crit_edge12

._crit_edge12:                                    ; preds = %._crit_edge12.loopexit, %.outer8
  %38 = icmp slt i32 %tries.0.ph, 2
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %._crit_edge12
  call void (...) @RTM_fallback_lock() #4
  br label %49

; <label>:40                                      ; preds = %._crit_edge12
  %41 = add nsw i32 %tries.0.ph, -1
  %42 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0, i64 0, i64 4294967295) #4, !srcloc !1
  %43 = trunc i64 %42 to i32
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %.outer8.backedge

.outer8.backedge:                                 ; preds = %40, %476, %474
  %tries.0.ph.be = phi i32 [ 9, %474 ], [ 9, %476 ], [ %41, %40 ]
  br label %.outer8

; <label>:45                                      ; preds = %40
  %46 = call i64 (...) @RTM_fallback_isLocked() #4
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %49, label %48

; <label>:48                                      ; preds = %45
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !2
  br label %49

; <label>:49                                      ; preds = %45, %48, %39
  %50 = call i64 @TMqueue_isEmpty(%struct.queue* %15) #4
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

; <label>:52                                      ; preds = %49
  %53 = call i8* @TMqueue_pop(%struct.queue* %15) #4
  %54 = bitcast i8* %53 to %struct.pair*
  br label %55

; <label>:55                                      ; preds = %49, %52
  %coordinatePairPtr.0 = phi %struct.pair* [ %54, %52 ], [ null, %49 ]
  %56 = icmp sgt i32 %tries.0.ph, 1
  br i1 %56, label %57, label %58

; <label>:57                                      ; preds = %55
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #4, !srcloc !3
  br label %59

; <label>:58                                      ; preds = %55
  call void (...) @RTM_fallback_unlock() #4
  br label %59

; <label>:59                                      ; preds = %58, %57
  %60 = icmp eq %struct.pair* %coordinatePairPtr.0, null
  br i1 %60, label %481, label %61

; <label>:61                                      ; preds = %59
  %62 = bitcast %struct.pair* %coordinatePairPtr.0 to %struct.coordinate**
  %63 = load %struct.coordinate*, %struct.coordinate** %62, align 8
  %64 = getelementptr inbounds %struct.pair, %struct.pair* %coordinatePairPtr.0, i64 0, i32 1
  %65 = bitcast i8** %64 to %struct.coordinate**
  %66 = load %struct.coordinate*, %struct.coordinate** %65, align 8
  br label %.outer7

.outer7:                                          ; preds = %73, %61
  %tries2.0.ph = phi i32 [ %74, %73 ], [ 9, %61 ]
  %67 = call i64 (...) @RTM_fallback_isLocked() #4
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %._crit_edge14, label %.lr.ph13.preheader

.lr.ph13.preheader:                               ; preds = %.outer7
  br label %.lr.ph13

.lr.ph13:                                         ; preds = %.lr.ph13.preheader, %.lr.ph13
  call void @llvm.x86.sse2.pause() #4
  %69 = call i64 (...) @RTM_fallback_isLocked() #4
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %._crit_edge14.loopexit, label %.lr.ph13

._crit_edge14.loopexit:                           ; preds = %.lr.ph13
  br label %._crit_edge14

._crit_edge14:                                    ; preds = %._crit_edge14.loopexit, %.outer7
  %71 = icmp slt i32 %tries2.0.ph, 2
  br i1 %71, label %72, label %73

; <label>:72                                      ; preds = %._crit_edge14
  %tries2.0.ph.lcssa = phi i32 [ %tries2.0.ph, %._crit_edge14 ]
  call void (...) @RTM_fallback_lock() #4
  br label %82

; <label>:73                                      ; preds = %._crit_edge14
  %74 = add nsw i32 %tries2.0.ph, -1
  %75 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 0, i64 1, i64 4294967295) #4, !srcloc !1
  %76 = trunc i64 %75 to i32
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %.outer7

; <label>:78                                      ; preds = %73
  %tries2.0.ph.lcssa23 = phi i32 [ %tries2.0.ph, %73 ]
  %79 = call i64 (...) @RTM_fallback_isLocked() #4
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %82, label %81

; <label>:81                                      ; preds = %78
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !2
  br label %82

; <label>:82                                      ; preds = %78, %81, %72
  %tries2.0.ph24 = phi i32 [ %tries2.0.ph.lcssa23, %78 ], [ %tries2.0.ph.lcssa23, %81 ], [ %tries2.0.ph.lcssa, %72 ]
  call void @grid_copy(%struct.grid* nonnull %24, %struct.grid* %17) #4
  %.idx.val = load i64, i64* %.idx, align 8
  %.idx1.val = load i64, i64* %.idx1, align 8
  %.idx2.val = load i64, i64* %.idx2, align 8
  call void @llvm.lifetime.start(i64 8, i8* %31)
  call void @llvm.lifetime.start(i64 8, i8* %32)
  call void @llvm.lifetime.start(i64 8, i8* %33)
  call void @queue_clear(%struct.queue* %30) #4
  %83 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %63, i64 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %63, i64 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %63, i64 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call i64* @grid_getPointRef(%struct.grid* %24, i64 %84, i64 %86, i64 %88) #4
  %90 = bitcast i64* %89 to i8*
  %91 = call i64 @Pqueue_push(%struct.queue* %30, i8* %90) #4
  %92 = load i64, i64* %83, align 8
  %93 = load i64, i64* %85, align 8
  %94 = load i64, i64* %87, align 8
  call void @grid_setPoint(%struct.grid* %24, i64 %92, i64 %93, i64 %94, i64 0) #4
  %95 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %66, i64 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %66, i64 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %66, i64 0, i32 2
  %100 = load i64, i64* %99, align 8
  call void @grid_setPoint(%struct.grid* %24, i64 %96, i64 %98, i64 %100, i64 -1) #4
  %101 = load i64, i64* %95, align 8
  %102 = load i64, i64* %97, align 8
  %103 = load i64, i64* %99, align 8
  %104 = call i64* @grid_getPointRef(%struct.grid* %24, i64 %101, i64 %102, i64 %103) #4
  %105 = call i64 @queue_isEmpty(%struct.queue* %30) #4
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %.lr.ph.i.preheader, label %.critedge

.lr.ph.i.preheader:                               ; preds = %82
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %PexpandToNeighbor.exit5.backedge.i
  %107 = call i8* @queue_pop(%struct.queue* %30) #4
  %108 = bitcast i8* %107 to i64*
  %109 = icmp eq i64* %108, %104
  br i1 %109, label %.critedge6, label %110

; <label>:110                                     ; preds = %.lr.ph.i
  call void @grid_getPointIndices(%struct.grid* %24, i64* %108, i64* nonnull %x.i, i64* nonnull %y.i, i64* nonnull %z.i) #4
  %111 = load i64, i64* %108, align 8
  %112 = load i64, i64* %x.i, align 8
  %113 = add nsw i64 %112, 1
  %114 = load i64, i64* %y.i, align 8
  %115 = load i64, i64* %z.i, align 8
  %116 = add nsw i64 %111, %.idx.val
  %117 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %113, i64 %114, i64 %115) #4
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %PexpandToNeighbor.exit.i, label %119

; <label>:119                                     ; preds = %110
  %120 = call i64* @grid_getPointRef(%struct.grid* %24, i64 %113, i64 %114, i64 %115) #4
  %121 = load i64, i64* %120, align 8
  switch i64 %121, label %125 [
    i64 -1, label %122
    i64 -2, label %PexpandToNeighbor.exit.i
  ]

; <label>:122                                     ; preds = %119
  store i64 %116, i64* %120, align 8
  %123 = bitcast i64* %120 to i8*
  %124 = call i64 @Pqueue_push(%struct.queue* %30, i8* %123) #4
  br label %PexpandToNeighbor.exit.i

; <label>:125                                     ; preds = %119
  %126 = icmp sgt i64 %121, %116
  br i1 %126, label %127, label %PexpandToNeighbor.exit.i

; <label>:127                                     ; preds = %125
  store i64 %116, i64* %120, align 8
  %128 = bitcast i64* %120 to i8*
  %129 = call i64 @Pqueue_push(%struct.queue* %30, i8* %128) #4
  br label %PexpandToNeighbor.exit.i

PexpandToNeighbor.exit.i:                         ; preds = %127, %125, %122, %119, %110
  %130 = load i64, i64* %x.i, align 8
  %131 = add nsw i64 %130, -1
  %132 = load i64, i64* %y.i, align 8
  %133 = load i64, i64* %z.i, align 8
  %134 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %131, i64 %132, i64 %133) #4
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %PexpandToNeighbor.exit1.i, label %136

; <label>:136                                     ; preds = %PexpandToNeighbor.exit.i
  %137 = call i64* @grid_getPointRef(%struct.grid* %24, i64 %131, i64 %132, i64 %133) #4
  %138 = load i64, i64* %137, align 8
  switch i64 %138, label %142 [
    i64 -1, label %139
    i64 -2, label %PexpandToNeighbor.exit1.i
  ]

; <label>:139                                     ; preds = %136
  store i64 %116, i64* %137, align 8
  %140 = bitcast i64* %137 to i8*
  %141 = call i64 @Pqueue_push(%struct.queue* %30, i8* %140) #4
  br label %PexpandToNeighbor.exit1.i

; <label>:142                                     ; preds = %136
  %143 = icmp sgt i64 %138, %116
  br i1 %143, label %144, label %PexpandToNeighbor.exit1.i

; <label>:144                                     ; preds = %142
  store i64 %116, i64* %137, align 8
  %145 = bitcast i64* %137 to i8*
  %146 = call i64 @Pqueue_push(%struct.queue* %30, i8* %145) #4
  br label %PexpandToNeighbor.exit1.i

PexpandToNeighbor.exit1.i:                        ; preds = %144, %142, %139, %136, %PexpandToNeighbor.exit.i
  %147 = load i64, i64* %x.i, align 8
  %148 = load i64, i64* %y.i, align 8
  %149 = add nsw i64 %148, 1
  %150 = load i64, i64* %z.i, align 8
  %151 = add nsw i64 %111, %.idx1.val
  %152 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %147, i64 %149, i64 %150) #4
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %PexpandToNeighbor.exit2.i, label %154

; <label>:154                                     ; preds = %PexpandToNeighbor.exit1.i
  %155 = call i64* @grid_getPointRef(%struct.grid* %24, i64 %147, i64 %149, i64 %150) #4
  %156 = load i64, i64* %155, align 8
  switch i64 %156, label %160 [
    i64 -1, label %157
    i64 -2, label %PexpandToNeighbor.exit2.i
  ]

; <label>:157                                     ; preds = %154
  store i64 %151, i64* %155, align 8
  %158 = bitcast i64* %155 to i8*
  %159 = call i64 @Pqueue_push(%struct.queue* %30, i8* %158) #4
  br label %PexpandToNeighbor.exit2.i

; <label>:160                                     ; preds = %154
  %161 = icmp sgt i64 %156, %151
  br i1 %161, label %162, label %PexpandToNeighbor.exit2.i

; <label>:162                                     ; preds = %160
  store i64 %151, i64* %155, align 8
  %163 = bitcast i64* %155 to i8*
  %164 = call i64 @Pqueue_push(%struct.queue* %30, i8* %163) #4
  br label %PexpandToNeighbor.exit2.i

PexpandToNeighbor.exit2.i:                        ; preds = %162, %160, %157, %154, %PexpandToNeighbor.exit1.i
  %165 = load i64, i64* %x.i, align 8
  %166 = load i64, i64* %y.i, align 8
  %167 = add nsw i64 %166, -1
  %168 = load i64, i64* %z.i, align 8
  %169 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %165, i64 %167, i64 %168) #4
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %PexpandToNeighbor.exit3.i, label %171

; <label>:171                                     ; preds = %PexpandToNeighbor.exit2.i
  %172 = call i64* @grid_getPointRef(%struct.grid* %24, i64 %165, i64 %167, i64 %168) #4
  %173 = load i64, i64* %172, align 8
  switch i64 %173, label %177 [
    i64 -1, label %174
    i64 -2, label %PexpandToNeighbor.exit3.i
  ]

; <label>:174                                     ; preds = %171
  store i64 %151, i64* %172, align 8
  %175 = bitcast i64* %172 to i8*
  %176 = call i64 @Pqueue_push(%struct.queue* %30, i8* %175) #4
  br label %PexpandToNeighbor.exit3.i

; <label>:177                                     ; preds = %171
  %178 = icmp sgt i64 %173, %151
  br i1 %178, label %179, label %PexpandToNeighbor.exit3.i

; <label>:179                                     ; preds = %177
  store i64 %151, i64* %172, align 8
  %180 = bitcast i64* %172 to i8*
  %181 = call i64 @Pqueue_push(%struct.queue* %30, i8* %180) #4
  br label %PexpandToNeighbor.exit3.i

PexpandToNeighbor.exit3.i:                        ; preds = %179, %177, %174, %171, %PexpandToNeighbor.exit2.i
  %182 = load i64, i64* %x.i, align 8
  %183 = load i64, i64* %y.i, align 8
  %184 = load i64, i64* %z.i, align 8
  %185 = add nsw i64 %184, 1
  %186 = add nsw i64 %111, %.idx2.val
  %187 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %182, i64 %183, i64 %185) #4
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %PexpandToNeighbor.exit4.i, label %189

; <label>:189                                     ; preds = %PexpandToNeighbor.exit3.i
  %190 = call i64* @grid_getPointRef(%struct.grid* %24, i64 %182, i64 %183, i64 %185) #4
  %191 = load i64, i64* %190, align 8
  switch i64 %191, label %195 [
    i64 -1, label %192
    i64 -2, label %PexpandToNeighbor.exit4.i
  ]

; <label>:192                                     ; preds = %189
  store i64 %186, i64* %190, align 8
  %193 = bitcast i64* %190 to i8*
  %194 = call i64 @Pqueue_push(%struct.queue* %30, i8* %193) #4
  br label %PexpandToNeighbor.exit4.i

; <label>:195                                     ; preds = %189
  %196 = icmp sgt i64 %191, %186
  br i1 %196, label %197, label %PexpandToNeighbor.exit4.i

; <label>:197                                     ; preds = %195
  store i64 %186, i64* %190, align 8
  %198 = bitcast i64* %190 to i8*
  %199 = call i64 @Pqueue_push(%struct.queue* %30, i8* %198) #4
  br label %PexpandToNeighbor.exit4.i

PexpandToNeighbor.exit4.i:                        ; preds = %197, %195, %192, %189, %PexpandToNeighbor.exit3.i
  %200 = load i64, i64* %x.i, align 8
  %201 = load i64, i64* %y.i, align 8
  %202 = load i64, i64* %z.i, align 8
  %203 = add nsw i64 %202, -1
  %204 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %200, i64 %201, i64 %203) #4
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %PexpandToNeighbor.exit5.backedge.i, label %208

PexpandToNeighbor.exit5.backedge.i:               ; preds = %216, %214, %211, %208, %PexpandToNeighbor.exit4.i
  %206 = call i64 @queue_isEmpty(%struct.queue* %30) #4
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %.lr.ph.i, label %PdoExpansion.exit

; <label>:208                                     ; preds = %PexpandToNeighbor.exit4.i
  %209 = call i64* @grid_getPointRef(%struct.grid* %24, i64 %200, i64 %201, i64 %203) #4
  %210 = load i64, i64* %209, align 8
  switch i64 %210, label %214 [
    i64 -1, label %211
    i64 -2, label %PexpandToNeighbor.exit5.backedge.i
  ]

; <label>:211                                     ; preds = %208
  store i64 %186, i64* %209, align 8
  %212 = bitcast i64* %209 to i8*
  %213 = call i64 @Pqueue_push(%struct.queue* %30, i8* %212) #4
  br label %PexpandToNeighbor.exit5.backedge.i

; <label>:214                                     ; preds = %208
  %215 = icmp sgt i64 %210, %186
  br i1 %215, label %216, label %PexpandToNeighbor.exit5.backedge.i

; <label>:216                                     ; preds = %214
  store i64 %186, i64* %209, align 8
  %217 = bitcast i64* %209 to i8*
  %218 = call i64 @Pqueue_push(%struct.queue* %30, i8* %217) #4
  br label %PexpandToNeighbor.exit5.backedge.i

PdoExpansion.exit:                                ; preds = %PexpandToNeighbor.exit5.backedge.i
  call void @llvm.lifetime.end(i64 8, i8* nonnull %31)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %32)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %33)
  br label %470

.critedge6:                                       ; preds = %.lr.ph.i
  call void @llvm.lifetime.end(i64 8, i8* %31)
  call void @llvm.lifetime.end(i64 8, i8* %32)
  call void @llvm.lifetime.end(i64 8, i8* %33)
  %219 = call %struct.vector* @Pvector_alloc(i64 1) #4
  %220 = icmp eq %struct.vector* %219, null
  br i1 %220, label %221, label %222

; <label>:221                                     ; preds = %.critedge6
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 276, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.PdoTraceback, i64 0, i64 0)) #6
  unreachable

; <label>:222                                     ; preds = %.critedge6
  %223 = load i64, i64* %95, align 8
  %224 = load i64, i64* %97, align 8
  %225 = load i64, i64* %99, align 8
  %226 = call i64 @grid_getPoint(%struct.grid* %24, i64 %223, i64 %224, i64 %225) #4
  %227 = call i64* @grid_getPointRef(%struct.grid* %17, i64 %223, i64 %224, i64 %225) #4
  %228 = bitcast i64* %227 to i8*
  %229 = call i64 @Pvector_pushBack(%struct.vector* nonnull %219, i8* %228) #4
  call void @grid_setPoint(%struct.grid* %24, i64 %223, i64 %224, i64 %225, i64 -2) #4
  %230 = icmp eq i64 %226, 0
  br i1 %230, label %PdoTraceback.exit.thread4, label %.lr.ph.i3.preheader

.lr.ph.i3.preheader:                              ; preds = %222
  br label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %.lr.ph.i3.preheader, %.backedge.i
  %next.sroa.83.025.i = phi i32 [ %next.sroa.83.0.be.i, %.backedge.i ], [ 0, %.lr.ph.i3.preheader ]
  %next.sroa.55.024.i = phi i64 [ %next.sroa.55.0.be.i, %.backedge.i ], [ %226, %.lr.ph.i3.preheader ]
  %next.sroa.37.023.i = phi i64 [ %next.sroa.37.0.be.i, %.backedge.i ], [ %225, %.lr.ph.i3.preheader ]
  %next.sroa.19.022.i = phi i64 [ %next.sroa.19.0.be.i, %.backedge.i ], [ %224, %.lr.ph.i3.preheader ]
  %next.sroa.0.021.i = phi i64 [ %next.sroa.0.0.be.i, %.backedge.i ], [ %223, %.lr.ph.i3.preheader ]
  %231 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSX, i64 0, i32 0), align 8
  %232 = add nsw i64 %231, %next.sroa.0.021.i
  %233 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSX, i64 0, i32 1), align 8
  %234 = add nsw i64 %233, %next.sroa.19.022.i
  %235 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSX, i64 0, i32 2), align 8
  %236 = add nsw i64 %235, %next.sroa.37.023.i
  %237 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %232, i64 %234, i64 %236) #4
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %traceToNeighbor.exit.i, label %239

; <label>:239                                     ; preds = %.lr.ph.i3
  %240 = call i64 @grid_isPointEmpty(%struct.grid* %24, i64 %232, i64 %234, i64 %236) #4
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %traceToNeighbor.exit.i

; <label>:242                                     ; preds = %239
  %243 = call i64 @grid_isPointFull(%struct.grid* %24, i64 %232, i64 %234, i64 %236) #4
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %traceToNeighbor.exit.i

; <label>:245                                     ; preds = %242
  %246 = call i64 @grid_getPoint(%struct.grid* %24, i64 %232, i64 %234, i64 %236) #4
  %247 = load i32, i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSX, i64 0, i32 4), align 8
  %248 = icmp eq i32 %next.sroa.83.025.i, %247
  %.bendCost.i.i = select i1 %248, i64 0, i64 %29
  %249 = add nsw i64 %.bendCost.i.i, %246
  %250 = icmp sgt i64 %249, %next.sroa.55.024.i
  %next.sroa.0.0..i = select i1 %250, i64 %next.sroa.0.021.i, i64 %232
  %next.sroa.19.0..i = select i1 %250, i64 %next.sroa.19.022.i, i64 %234
  %next.sroa.37.0..i = select i1 %250, i64 %next.sroa.37.023.i, i64 %236
  %next.sroa.55.0..i = select i1 %250, i64 %next.sroa.55.024.i, i64 %246
  %next.sroa.83.0..i = select i1 %250, i32 %next.sroa.83.025.i, i32 %247
  br label %traceToNeighbor.exit.i

traceToNeighbor.exit.i:                           ; preds = %245, %242, %239, %.lr.ph.i3
  %next.sroa.0.1.i = phi i64 [ %next.sroa.0.021.i, %.lr.ph.i3 ], [ %next.sroa.0.021.i, %242 ], [ %next.sroa.0.021.i, %239 ], [ %next.sroa.0.0..i, %245 ]
  %next.sroa.19.1.i = phi i64 [ %next.sroa.19.022.i, %.lr.ph.i3 ], [ %next.sroa.19.022.i, %242 ], [ %next.sroa.19.022.i, %239 ], [ %next.sroa.19.0..i, %245 ]
  %next.sroa.37.1.i = phi i64 [ %next.sroa.37.023.i, %.lr.ph.i3 ], [ %next.sroa.37.023.i, %242 ], [ %next.sroa.37.023.i, %239 ], [ %next.sroa.37.0..i, %245 ]
  %next.sroa.55.1.i = phi i64 [ %next.sroa.55.024.i, %.lr.ph.i3 ], [ %next.sroa.55.024.i, %242 ], [ %next.sroa.55.024.i, %239 ], [ %next.sroa.55.0..i, %245 ]
  %next.sroa.83.1.i = phi i32 [ %next.sroa.83.025.i, %.lr.ph.i3 ], [ %next.sroa.83.025.i, %242 ], [ %next.sroa.83.025.i, %239 ], [ %next.sroa.83.0..i, %245 ]
  %251 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSY, i64 0, i32 0), align 8
  %252 = add nsw i64 %251, %next.sroa.0.021.i
  %253 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSY, i64 0, i32 1), align 8
  %254 = add nsw i64 %253, %next.sroa.19.022.i
  %255 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSY, i64 0, i32 2), align 8
  %256 = add nsw i64 %255, %next.sroa.37.023.i
  %257 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %252, i64 %254, i64 %256) #4
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %traceToNeighbor.exit2.i, label %259

; <label>:259                                     ; preds = %traceToNeighbor.exit.i
  %260 = call i64 @grid_isPointEmpty(%struct.grid* %24, i64 %252, i64 %254, i64 %256) #4
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %262, label %traceToNeighbor.exit2.i

; <label>:262                                     ; preds = %259
  %263 = call i64 @grid_isPointFull(%struct.grid* %24, i64 %252, i64 %254, i64 %256) #4
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %265, label %traceToNeighbor.exit2.i

; <label>:265                                     ; preds = %262
  %266 = call i64 @grid_getPoint(%struct.grid* %24, i64 %252, i64 %254, i64 %256) #4
  %267 = load i32, i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSY, i64 0, i32 4), align 8
  %268 = icmp eq i32 %next.sroa.83.025.i, %267
  %.bendCost.i1.i = select i1 %268, i64 0, i64 %29
  %269 = add nsw i64 %.bendCost.i1.i, %266
  %270 = icmp sgt i64 %269, %next.sroa.55.1.i
  %next.sroa.0.1..i = select i1 %270, i64 %next.sroa.0.1.i, i64 %252
  %next.sroa.19.1..i = select i1 %270, i64 %next.sroa.19.1.i, i64 %254
  %next.sroa.37.1..i = select i1 %270, i64 %next.sroa.37.1.i, i64 %256
  %next.sroa.55.1..i = select i1 %270, i64 %next.sroa.55.1.i, i64 %266
  %next.sroa.83.1..i = select i1 %270, i32 %next.sroa.83.1.i, i32 %267
  br label %traceToNeighbor.exit2.i

traceToNeighbor.exit2.i:                          ; preds = %265, %262, %259, %traceToNeighbor.exit.i
  %next.sroa.0.2.i = phi i64 [ %next.sroa.0.1.i, %traceToNeighbor.exit.i ], [ %next.sroa.0.1.i, %262 ], [ %next.sroa.0.1.i, %259 ], [ %next.sroa.0.1..i, %265 ]
  %next.sroa.19.2.i = phi i64 [ %next.sroa.19.1.i, %traceToNeighbor.exit.i ], [ %next.sroa.19.1.i, %262 ], [ %next.sroa.19.1.i, %259 ], [ %next.sroa.19.1..i, %265 ]
  %next.sroa.37.2.i = phi i64 [ %next.sroa.37.1.i, %traceToNeighbor.exit.i ], [ %next.sroa.37.1.i, %262 ], [ %next.sroa.37.1.i, %259 ], [ %next.sroa.37.1..i, %265 ]
  %next.sroa.55.2.i = phi i64 [ %next.sroa.55.1.i, %traceToNeighbor.exit.i ], [ %next.sroa.55.1.i, %262 ], [ %next.sroa.55.1.i, %259 ], [ %next.sroa.55.1..i, %265 ]
  %next.sroa.83.2.i = phi i32 [ %next.sroa.83.1.i, %traceToNeighbor.exit.i ], [ %next.sroa.83.1.i, %262 ], [ %next.sroa.83.1.i, %259 ], [ %next.sroa.83.1..i, %265 ]
  %271 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSZ, i64 0, i32 0), align 8
  %272 = add nsw i64 %271, %next.sroa.0.021.i
  %273 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSZ, i64 0, i32 1), align 8
  %274 = add nsw i64 %273, %next.sroa.19.022.i
  %275 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSZ, i64 0, i32 2), align 8
  %276 = add nsw i64 %275, %next.sroa.37.023.i
  %277 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %272, i64 %274, i64 %276) #4
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %traceToNeighbor.exit4.i, label %279

; <label>:279                                     ; preds = %traceToNeighbor.exit2.i
  %280 = call i64 @grid_isPointEmpty(%struct.grid* %24, i64 %272, i64 %274, i64 %276) #4
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %traceToNeighbor.exit4.i

; <label>:282                                     ; preds = %279
  %283 = call i64 @grid_isPointFull(%struct.grid* %24, i64 %272, i64 %274, i64 %276) #4
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %285, label %traceToNeighbor.exit4.i

; <label>:285                                     ; preds = %282
  %286 = call i64 @grid_getPoint(%struct.grid* %24, i64 %272, i64 %274, i64 %276) #4
  %287 = load i32, i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSZ, i64 0, i32 4), align 8
  %288 = icmp eq i32 %next.sroa.83.025.i, %287
  %.bendCost.i3.i = select i1 %288, i64 0, i64 %29
  %289 = add nsw i64 %.bendCost.i3.i, %286
  %290 = icmp sgt i64 %289, %next.sroa.55.2.i
  %next.sroa.0.2..i = select i1 %290, i64 %next.sroa.0.2.i, i64 %272
  %next.sroa.19.2..i = select i1 %290, i64 %next.sroa.19.2.i, i64 %274
  %next.sroa.37.2..i = select i1 %290, i64 %next.sroa.37.2.i, i64 %276
  %next.sroa.55.2..i = select i1 %290, i64 %next.sroa.55.2.i, i64 %286
  %next.sroa.83.2..i = select i1 %290, i32 %next.sroa.83.2.i, i32 %287
  br label %traceToNeighbor.exit4.i

traceToNeighbor.exit4.i:                          ; preds = %285, %282, %279, %traceToNeighbor.exit2.i
  %next.sroa.0.3.i = phi i64 [ %next.sroa.0.2.i, %traceToNeighbor.exit2.i ], [ %next.sroa.0.2.i, %282 ], [ %next.sroa.0.2.i, %279 ], [ %next.sroa.0.2..i, %285 ]
  %next.sroa.19.3.i = phi i64 [ %next.sroa.19.2.i, %traceToNeighbor.exit2.i ], [ %next.sroa.19.2.i, %282 ], [ %next.sroa.19.2.i, %279 ], [ %next.sroa.19.2..i, %285 ]
  %next.sroa.37.3.i = phi i64 [ %next.sroa.37.2.i, %traceToNeighbor.exit2.i ], [ %next.sroa.37.2.i, %282 ], [ %next.sroa.37.2.i, %279 ], [ %next.sroa.37.2..i, %285 ]
  %next.sroa.55.3.i = phi i64 [ %next.sroa.55.2.i, %traceToNeighbor.exit2.i ], [ %next.sroa.55.2.i, %282 ], [ %next.sroa.55.2.i, %279 ], [ %next.sroa.55.2..i, %285 ]
  %next.sroa.83.3.i = phi i32 [ %next.sroa.83.2.i, %traceToNeighbor.exit2.i ], [ %next.sroa.83.2.i, %282 ], [ %next.sroa.83.2.i, %279 ], [ %next.sroa.83.2..i, %285 ]
  %291 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGX, i64 0, i32 0), align 8
  %292 = add nsw i64 %291, %next.sroa.0.021.i
  %293 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGX, i64 0, i32 1), align 8
  %294 = add nsw i64 %293, %next.sroa.19.022.i
  %295 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGX, i64 0, i32 2), align 8
  %296 = add nsw i64 %295, %next.sroa.37.023.i
  %297 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %292, i64 %294, i64 %296) #4
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %traceToNeighbor.exit6.i, label %299

; <label>:299                                     ; preds = %traceToNeighbor.exit4.i
  %300 = call i64 @grid_isPointEmpty(%struct.grid* %24, i64 %292, i64 %294, i64 %296) #4
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %302, label %traceToNeighbor.exit6.i

; <label>:302                                     ; preds = %299
  %303 = call i64 @grid_isPointFull(%struct.grid* %24, i64 %292, i64 %294, i64 %296) #4
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %305, label %traceToNeighbor.exit6.i

; <label>:305                                     ; preds = %302
  %306 = call i64 @grid_getPoint(%struct.grid* %24, i64 %292, i64 %294, i64 %296) #4
  %307 = load i32, i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGX, i64 0, i32 4), align 8
  %308 = icmp eq i32 %next.sroa.83.025.i, %307
  %.bendCost.i5.i = select i1 %308, i64 0, i64 %29
  %309 = add nsw i64 %.bendCost.i5.i, %306
  %310 = icmp sgt i64 %309, %next.sroa.55.3.i
  %next.sroa.0.3..i = select i1 %310, i64 %next.sroa.0.3.i, i64 %292
  %next.sroa.19.3..i = select i1 %310, i64 %next.sroa.19.3.i, i64 %294
  %next.sroa.37.3..i = select i1 %310, i64 %next.sroa.37.3.i, i64 %296
  %next.sroa.55.3..i = select i1 %310, i64 %next.sroa.55.3.i, i64 %306
  %next.sroa.83.3..i = select i1 %310, i32 %next.sroa.83.3.i, i32 %307
  br label %traceToNeighbor.exit6.i

traceToNeighbor.exit6.i:                          ; preds = %305, %302, %299, %traceToNeighbor.exit4.i
  %next.sroa.0.4.i = phi i64 [ %next.sroa.0.3.i, %traceToNeighbor.exit4.i ], [ %next.sroa.0.3.i, %302 ], [ %next.sroa.0.3.i, %299 ], [ %next.sroa.0.3..i, %305 ]
  %next.sroa.19.4.i = phi i64 [ %next.sroa.19.3.i, %traceToNeighbor.exit4.i ], [ %next.sroa.19.3.i, %302 ], [ %next.sroa.19.3.i, %299 ], [ %next.sroa.19.3..i, %305 ]
  %next.sroa.37.4.i = phi i64 [ %next.sroa.37.3.i, %traceToNeighbor.exit4.i ], [ %next.sroa.37.3.i, %302 ], [ %next.sroa.37.3.i, %299 ], [ %next.sroa.37.3..i, %305 ]
  %next.sroa.55.4.i = phi i64 [ %next.sroa.55.3.i, %traceToNeighbor.exit4.i ], [ %next.sroa.55.3.i, %302 ], [ %next.sroa.55.3.i, %299 ], [ %next.sroa.55.3..i, %305 ]
  %next.sroa.83.4.i = phi i32 [ %next.sroa.83.3.i, %traceToNeighbor.exit4.i ], [ %next.sroa.83.3.i, %302 ], [ %next.sroa.83.3.i, %299 ], [ %next.sroa.83.3..i, %305 ]
  %311 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGY, i64 0, i32 0), align 8
  %312 = add nsw i64 %311, %next.sroa.0.021.i
  %313 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGY, i64 0, i32 1), align 8
  %314 = add nsw i64 %313, %next.sroa.19.022.i
  %315 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGY, i64 0, i32 2), align 8
  %316 = add nsw i64 %315, %next.sroa.37.023.i
  %317 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %312, i64 %314, i64 %316) #4
  %318 = icmp eq i64 %317, 0
  br i1 %318, label %traceToNeighbor.exit8.i, label %319

; <label>:319                                     ; preds = %traceToNeighbor.exit6.i
  %320 = call i64 @grid_isPointEmpty(%struct.grid* %24, i64 %312, i64 %314, i64 %316) #4
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %322, label %traceToNeighbor.exit8.i

; <label>:322                                     ; preds = %319
  %323 = call i64 @grid_isPointFull(%struct.grid* %24, i64 %312, i64 %314, i64 %316) #4
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %325, label %traceToNeighbor.exit8.i

; <label>:325                                     ; preds = %322
  %326 = call i64 @grid_getPoint(%struct.grid* %24, i64 %312, i64 %314, i64 %316) #4
  %327 = load i32, i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGY, i64 0, i32 4), align 8
  %328 = icmp eq i32 %next.sroa.83.025.i, %327
  %.bendCost.i7.i = select i1 %328, i64 0, i64 %29
  %329 = add nsw i64 %.bendCost.i7.i, %326
  %330 = icmp sgt i64 %329, %next.sroa.55.4.i
  %next.sroa.0.4..i = select i1 %330, i64 %next.sroa.0.4.i, i64 %312
  %next.sroa.19.4..i = select i1 %330, i64 %next.sroa.19.4.i, i64 %314
  %next.sroa.37.4..i = select i1 %330, i64 %next.sroa.37.4.i, i64 %316
  %next.sroa.55.4..i = select i1 %330, i64 %next.sroa.55.4.i, i64 %326
  %next.sroa.83.4..i = select i1 %330, i32 %next.sroa.83.4.i, i32 %327
  br label %traceToNeighbor.exit8.i

traceToNeighbor.exit8.i:                          ; preds = %325, %322, %319, %traceToNeighbor.exit6.i
  %next.sroa.0.5.i = phi i64 [ %next.sroa.0.4.i, %traceToNeighbor.exit6.i ], [ %next.sroa.0.4.i, %322 ], [ %next.sroa.0.4.i, %319 ], [ %next.sroa.0.4..i, %325 ]
  %next.sroa.19.5.i = phi i64 [ %next.sroa.19.4.i, %traceToNeighbor.exit6.i ], [ %next.sroa.19.4.i, %322 ], [ %next.sroa.19.4.i, %319 ], [ %next.sroa.19.4..i, %325 ]
  %next.sroa.37.5.i = phi i64 [ %next.sroa.37.4.i, %traceToNeighbor.exit6.i ], [ %next.sroa.37.4.i, %322 ], [ %next.sroa.37.4.i, %319 ], [ %next.sroa.37.4..i, %325 ]
  %next.sroa.55.5.i = phi i64 [ %next.sroa.55.4.i, %traceToNeighbor.exit6.i ], [ %next.sroa.55.4.i, %322 ], [ %next.sroa.55.4.i, %319 ], [ %next.sroa.55.4..i, %325 ]
  %next.sroa.83.5.i = phi i32 [ %next.sroa.83.4.i, %traceToNeighbor.exit6.i ], [ %next.sroa.83.4.i, %322 ], [ %next.sroa.83.4.i, %319 ], [ %next.sroa.83.4..i, %325 ]
  %331 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGZ, i64 0, i32 0), align 8
  %332 = add nsw i64 %331, %next.sroa.0.021.i
  %333 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGZ, i64 0, i32 1), align 8
  %334 = add nsw i64 %333, %next.sroa.19.022.i
  %335 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGZ, i64 0, i32 2), align 8
  %336 = add nsw i64 %335, %next.sroa.37.023.i
  %337 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %332, i64 %334, i64 %336) #4
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %traceToNeighbor.exit10.i, label %339

; <label>:339                                     ; preds = %traceToNeighbor.exit8.i
  %340 = call i64 @grid_isPointEmpty(%struct.grid* %24, i64 %332, i64 %334, i64 %336) #4
  %341 = icmp eq i64 %340, 0
  br i1 %341, label %342, label %traceToNeighbor.exit10.i

; <label>:342                                     ; preds = %339
  %343 = call i64 @grid_isPointFull(%struct.grid* %24, i64 %332, i64 %334, i64 %336) #4
  %344 = icmp eq i64 %343, 0
  br i1 %344, label %345, label %traceToNeighbor.exit10.i

; <label>:345                                     ; preds = %342
  %346 = call i64 @grid_getPoint(%struct.grid* %24, i64 %332, i64 %334, i64 %336) #4
  %347 = load i32, i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGZ, i64 0, i32 4), align 8
  %348 = icmp eq i32 %next.sroa.83.025.i, %347
  %.bendCost.i9.i = select i1 %348, i64 0, i64 %29
  %349 = add nsw i64 %.bendCost.i9.i, %346
  %350 = icmp sgt i64 %349, %next.sroa.55.5.i
  %next.sroa.0.5..i = select i1 %350, i64 %next.sroa.0.5.i, i64 %332
  %next.sroa.19.5..i = select i1 %350, i64 %next.sroa.19.5.i, i64 %334
  %next.sroa.37.5..i = select i1 %350, i64 %next.sroa.37.5.i, i64 %336
  %next.sroa.55.5..i = select i1 %350, i64 %next.sroa.55.5.i, i64 %346
  %next.sroa.83.5..i = select i1 %350, i32 %next.sroa.83.5.i, i32 %347
  br label %traceToNeighbor.exit10.i

traceToNeighbor.exit10.i:                         ; preds = %345, %342, %339, %traceToNeighbor.exit8.i
  %next.sroa.0.6.i = phi i64 [ %next.sroa.0.5.i, %traceToNeighbor.exit8.i ], [ %next.sroa.0.5.i, %342 ], [ %next.sroa.0.5.i, %339 ], [ %next.sroa.0.5..i, %345 ]
  %next.sroa.19.6.i = phi i64 [ %next.sroa.19.5.i, %traceToNeighbor.exit8.i ], [ %next.sroa.19.5.i, %342 ], [ %next.sroa.19.5.i, %339 ], [ %next.sroa.19.5..i, %345 ]
  %next.sroa.37.6.i = phi i64 [ %next.sroa.37.5.i, %traceToNeighbor.exit8.i ], [ %next.sroa.37.5.i, %342 ], [ %next.sroa.37.5.i, %339 ], [ %next.sroa.37.5..i, %345 ]
  %next.sroa.55.6.i = phi i64 [ %next.sroa.55.5.i, %traceToNeighbor.exit8.i ], [ %next.sroa.55.5.i, %342 ], [ %next.sroa.55.5.i, %339 ], [ %next.sroa.55.5..i, %345 ]
  %next.sroa.83.6.i = phi i32 [ %next.sroa.83.5.i, %traceToNeighbor.exit8.i ], [ %next.sroa.83.5.i, %342 ], [ %next.sroa.83.5.i, %339 ], [ %next.sroa.83.5..i, %345 ]
  %351 = icmp eq i64 %next.sroa.0.021.i, %next.sroa.0.6.i
  %352 = icmp eq i64 %next.sroa.19.022.i, %next.sroa.19.6.i
  %or.cond.i = and i1 %351, %352
  %353 = icmp eq i64 %next.sroa.37.023.i, %next.sroa.37.6.i
  %or.cond17.i = and i1 %or.cond.i, %353
  br i1 %or.cond17.i, label %354, label %.backedge.i

; <label>:354                                     ; preds = %traceToNeighbor.exit10.i
  %355 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSX, i64 0, i32 0), align 8
  %356 = add nsw i64 %355, %next.sroa.0.021.i
  %357 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSX, i64 0, i32 1), align 8
  %358 = add nsw i64 %357, %next.sroa.19.022.i
  %359 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSX, i64 0, i32 2), align 8
  %360 = add nsw i64 %359, %next.sroa.37.023.i
  %361 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %356, i64 %358, i64 %360) #4
  %362 = icmp eq i64 %361, 0
  br i1 %362, label %traceToNeighbor.exit11.i, label %363

; <label>:363                                     ; preds = %354
  %364 = call i64 @grid_isPointEmpty(%struct.grid* %24, i64 %356, i64 %358, i64 %360) #4
  %365 = icmp eq i64 %364, 0
  br i1 %365, label %366, label %traceToNeighbor.exit11.i

; <label>:366                                     ; preds = %363
  %367 = call i64 @grid_isPointFull(%struct.grid* %24, i64 %356, i64 %358, i64 %360) #4
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %369, label %traceToNeighbor.exit11.i

; <label>:369                                     ; preds = %366
  %370 = call i64 @grid_getPoint(%struct.grid* %24, i64 %356, i64 %358, i64 %360) #4
  %371 = icmp sgt i64 %370, %next.sroa.55.024.i
  %372 = load i32, i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSX, i64 0, i32 4), align 8
  %next.sroa.0.6..i = select i1 %371, i64 %next.sroa.0.021.i, i64 %356
  %next.sroa.19.6..i = select i1 %371, i64 %next.sroa.19.022.i, i64 %358
  %next.sroa.37.6..i = select i1 %371, i64 %next.sroa.37.023.i, i64 %360
  %next.sroa.55.0.18.i = select i1 %371, i64 %next.sroa.55.024.i, i64 %370
  %next.sroa.83.6..i = select i1 %371, i32 %next.sroa.83.6.i, i32 %372
  br label %traceToNeighbor.exit11.i

traceToNeighbor.exit11.i:                         ; preds = %369, %366, %363, %354
  %next.sroa.0.7.i = phi i64 [ %next.sroa.0.021.i, %354 ], [ %next.sroa.0.021.i, %366 ], [ %next.sroa.0.021.i, %363 ], [ %next.sroa.0.6..i, %369 ]
  %next.sroa.19.7.i = phi i64 [ %next.sroa.19.022.i, %354 ], [ %next.sroa.19.022.i, %366 ], [ %next.sroa.19.022.i, %363 ], [ %next.sroa.19.6..i, %369 ]
  %next.sroa.37.7.i = phi i64 [ %next.sroa.37.023.i, %354 ], [ %next.sroa.37.023.i, %366 ], [ %next.sroa.37.023.i, %363 ], [ %next.sroa.37.6..i, %369 ]
  %next.sroa.55.7.i = phi i64 [ %next.sroa.55.024.i, %354 ], [ %next.sroa.55.024.i, %366 ], [ %next.sroa.55.024.i, %363 ], [ %next.sroa.55.0.18.i, %369 ]
  %next.sroa.83.7.i = phi i32 [ %next.sroa.83.6.i, %354 ], [ %next.sroa.83.6.i, %366 ], [ %next.sroa.83.6.i, %363 ], [ %next.sroa.83.6..i, %369 ]
  %373 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSY, i64 0, i32 0), align 8
  %374 = add nsw i64 %373, %next.sroa.0.021.i
  %375 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSY, i64 0, i32 1), align 8
  %376 = add nsw i64 %375, %next.sroa.19.022.i
  %377 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSY, i64 0, i32 2), align 8
  %378 = add nsw i64 %377, %next.sroa.37.023.i
  %379 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %374, i64 %376, i64 %378) #4
  %380 = icmp eq i64 %379, 0
  br i1 %380, label %traceToNeighbor.exit12.i, label %381

; <label>:381                                     ; preds = %traceToNeighbor.exit11.i
  %382 = call i64 @grid_isPointEmpty(%struct.grid* %24, i64 %374, i64 %376, i64 %378) #4
  %383 = icmp eq i64 %382, 0
  br i1 %383, label %384, label %traceToNeighbor.exit12.i

; <label>:384                                     ; preds = %381
  %385 = call i64 @grid_isPointFull(%struct.grid* %24, i64 %374, i64 %376, i64 %378) #4
  %386 = icmp eq i64 %385, 0
  br i1 %386, label %387, label %traceToNeighbor.exit12.i

; <label>:387                                     ; preds = %384
  %388 = call i64 @grid_getPoint(%struct.grid* %24, i64 %374, i64 %376, i64 %378) #4
  %389 = icmp sgt i64 %388, %next.sroa.55.7.i
  %390 = load i32, i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSY, i64 0, i32 4), align 8
  %next.sroa.0.7..i = select i1 %389, i64 %next.sroa.0.7.i, i64 %374
  %next.sroa.19.7..i = select i1 %389, i64 %next.sroa.19.7.i, i64 %376
  %next.sroa.37.7..i = select i1 %389, i64 %next.sroa.37.7.i, i64 %378
  %next.sroa.55.7..i = select i1 %389, i64 %next.sroa.55.7.i, i64 %388
  %next.sroa.83.7..i = select i1 %389, i32 %next.sroa.83.7.i, i32 %390
  br label %traceToNeighbor.exit12.i

traceToNeighbor.exit12.i:                         ; preds = %387, %384, %381, %traceToNeighbor.exit11.i
  %next.sroa.0.8.i = phi i64 [ %next.sroa.0.7.i, %traceToNeighbor.exit11.i ], [ %next.sroa.0.7.i, %384 ], [ %next.sroa.0.7.i, %381 ], [ %next.sroa.0.7..i, %387 ]
  %next.sroa.19.8.i = phi i64 [ %next.sroa.19.7.i, %traceToNeighbor.exit11.i ], [ %next.sroa.19.7.i, %384 ], [ %next.sroa.19.7.i, %381 ], [ %next.sroa.19.7..i, %387 ]
  %next.sroa.37.8.i = phi i64 [ %next.sroa.37.7.i, %traceToNeighbor.exit11.i ], [ %next.sroa.37.7.i, %384 ], [ %next.sroa.37.7.i, %381 ], [ %next.sroa.37.7..i, %387 ]
  %next.sroa.55.8.i = phi i64 [ %next.sroa.55.7.i, %traceToNeighbor.exit11.i ], [ %next.sroa.55.7.i, %384 ], [ %next.sroa.55.7.i, %381 ], [ %next.sroa.55.7..i, %387 ]
  %next.sroa.83.8.i = phi i32 [ %next.sroa.83.7.i, %traceToNeighbor.exit11.i ], [ %next.sroa.83.7.i, %384 ], [ %next.sroa.83.7.i, %381 ], [ %next.sroa.83.7..i, %387 ]
  %391 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSZ, i64 0, i32 0), align 8
  %392 = add nsw i64 %391, %next.sroa.0.021.i
  %393 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSZ, i64 0, i32 1), align 8
  %394 = add nsw i64 %393, %next.sroa.19.022.i
  %395 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSZ, i64 0, i32 2), align 8
  %396 = add nsw i64 %395, %next.sroa.37.023.i
  %397 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %392, i64 %394, i64 %396) #4
  %398 = icmp eq i64 %397, 0
  br i1 %398, label %traceToNeighbor.exit13.i, label %399

; <label>:399                                     ; preds = %traceToNeighbor.exit12.i
  %400 = call i64 @grid_isPointEmpty(%struct.grid* %24, i64 %392, i64 %394, i64 %396) #4
  %401 = icmp eq i64 %400, 0
  br i1 %401, label %402, label %traceToNeighbor.exit13.i

; <label>:402                                     ; preds = %399
  %403 = call i64 @grid_isPointFull(%struct.grid* %24, i64 %392, i64 %394, i64 %396) #4
  %404 = icmp eq i64 %403, 0
  br i1 %404, label %405, label %traceToNeighbor.exit13.i

; <label>:405                                     ; preds = %402
  %406 = call i64 @grid_getPoint(%struct.grid* %24, i64 %392, i64 %394, i64 %396) #4
  %407 = icmp sgt i64 %406, %next.sroa.55.8.i
  %408 = load i32, i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSZ, i64 0, i32 4), align 8
  %next.sroa.0.8..i = select i1 %407, i64 %next.sroa.0.8.i, i64 %392
  %next.sroa.19.8..i = select i1 %407, i64 %next.sroa.19.8.i, i64 %394
  %next.sroa.37.8..i = select i1 %407, i64 %next.sroa.37.8.i, i64 %396
  %next.sroa.55.8..i = select i1 %407, i64 %next.sroa.55.8.i, i64 %406
  %next.sroa.83.8..i = select i1 %407, i32 %next.sroa.83.8.i, i32 %408
  br label %traceToNeighbor.exit13.i

traceToNeighbor.exit13.i:                         ; preds = %405, %402, %399, %traceToNeighbor.exit12.i
  %next.sroa.0.9.i = phi i64 [ %next.sroa.0.8.i, %traceToNeighbor.exit12.i ], [ %next.sroa.0.8.i, %402 ], [ %next.sroa.0.8.i, %399 ], [ %next.sroa.0.8..i, %405 ]
  %next.sroa.19.9.i = phi i64 [ %next.sroa.19.8.i, %traceToNeighbor.exit12.i ], [ %next.sroa.19.8.i, %402 ], [ %next.sroa.19.8.i, %399 ], [ %next.sroa.19.8..i, %405 ]
  %next.sroa.37.9.i = phi i64 [ %next.sroa.37.8.i, %traceToNeighbor.exit12.i ], [ %next.sroa.37.8.i, %402 ], [ %next.sroa.37.8.i, %399 ], [ %next.sroa.37.8..i, %405 ]
  %next.sroa.55.9.i = phi i64 [ %next.sroa.55.8.i, %traceToNeighbor.exit12.i ], [ %next.sroa.55.8.i, %402 ], [ %next.sroa.55.8.i, %399 ], [ %next.sroa.55.8..i, %405 ]
  %next.sroa.83.9.i = phi i32 [ %next.sroa.83.8.i, %traceToNeighbor.exit12.i ], [ %next.sroa.83.8.i, %402 ], [ %next.sroa.83.8.i, %399 ], [ %next.sroa.83.8..i, %405 ]
  %409 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGX, i64 0, i32 0), align 8
  %410 = add nsw i64 %409, %next.sroa.0.021.i
  %411 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGX, i64 0, i32 1), align 8
  %412 = add nsw i64 %411, %next.sroa.19.022.i
  %413 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGX, i64 0, i32 2), align 8
  %414 = add nsw i64 %413, %next.sroa.37.023.i
  %415 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %410, i64 %412, i64 %414) #4
  %416 = icmp eq i64 %415, 0
  br i1 %416, label %traceToNeighbor.exit14.i, label %417

; <label>:417                                     ; preds = %traceToNeighbor.exit13.i
  %418 = call i64 @grid_isPointEmpty(%struct.grid* %24, i64 %410, i64 %412, i64 %414) #4
  %419 = icmp eq i64 %418, 0
  br i1 %419, label %420, label %traceToNeighbor.exit14.i

; <label>:420                                     ; preds = %417
  %421 = call i64 @grid_isPointFull(%struct.grid* %24, i64 %410, i64 %412, i64 %414) #4
  %422 = icmp eq i64 %421, 0
  br i1 %422, label %423, label %traceToNeighbor.exit14.i

; <label>:423                                     ; preds = %420
  %424 = call i64 @grid_getPoint(%struct.grid* %24, i64 %410, i64 %412, i64 %414) #4
  %425 = icmp sgt i64 %424, %next.sroa.55.9.i
  %426 = load i32, i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGX, i64 0, i32 4), align 8
  %next.sroa.0.9..i = select i1 %425, i64 %next.sroa.0.9.i, i64 %410
  %next.sroa.19.9..i = select i1 %425, i64 %next.sroa.19.9.i, i64 %412
  %next.sroa.37.9..i = select i1 %425, i64 %next.sroa.37.9.i, i64 %414
  %next.sroa.55.9..i = select i1 %425, i64 %next.sroa.55.9.i, i64 %424
  %next.sroa.83.9..i = select i1 %425, i32 %next.sroa.83.9.i, i32 %426
  br label %traceToNeighbor.exit14.i

traceToNeighbor.exit14.i:                         ; preds = %423, %420, %417, %traceToNeighbor.exit13.i
  %next.sroa.0.10.i = phi i64 [ %next.sroa.0.9.i, %traceToNeighbor.exit13.i ], [ %next.sroa.0.9.i, %420 ], [ %next.sroa.0.9.i, %417 ], [ %next.sroa.0.9..i, %423 ]
  %next.sroa.19.10.i = phi i64 [ %next.sroa.19.9.i, %traceToNeighbor.exit13.i ], [ %next.sroa.19.9.i, %420 ], [ %next.sroa.19.9.i, %417 ], [ %next.sroa.19.9..i, %423 ]
  %next.sroa.37.10.i = phi i64 [ %next.sroa.37.9.i, %traceToNeighbor.exit13.i ], [ %next.sroa.37.9.i, %420 ], [ %next.sroa.37.9.i, %417 ], [ %next.sroa.37.9..i, %423 ]
  %next.sroa.55.10.i = phi i64 [ %next.sroa.55.9.i, %traceToNeighbor.exit13.i ], [ %next.sroa.55.9.i, %420 ], [ %next.sroa.55.9.i, %417 ], [ %next.sroa.55.9..i, %423 ]
  %next.sroa.83.10.i = phi i32 [ %next.sroa.83.9.i, %traceToNeighbor.exit13.i ], [ %next.sroa.83.9.i, %420 ], [ %next.sroa.83.9.i, %417 ], [ %next.sroa.83.9..i, %423 ]
  %427 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGY, i64 0, i32 0), align 8
  %428 = add nsw i64 %427, %next.sroa.0.021.i
  %429 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGY, i64 0, i32 1), align 8
  %430 = add nsw i64 %429, %next.sroa.19.022.i
  %431 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGY, i64 0, i32 2), align 8
  %432 = add nsw i64 %431, %next.sroa.37.023.i
  %433 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %428, i64 %430, i64 %432) #4
  %434 = icmp eq i64 %433, 0
  br i1 %434, label %traceToNeighbor.exit15.i, label %435

; <label>:435                                     ; preds = %traceToNeighbor.exit14.i
  %436 = call i64 @grid_isPointEmpty(%struct.grid* %24, i64 %428, i64 %430, i64 %432) #4
  %437 = icmp eq i64 %436, 0
  br i1 %437, label %438, label %traceToNeighbor.exit15.i

; <label>:438                                     ; preds = %435
  %439 = call i64 @grid_isPointFull(%struct.grid* %24, i64 %428, i64 %430, i64 %432) #4
  %440 = icmp eq i64 %439, 0
  br i1 %440, label %441, label %traceToNeighbor.exit15.i

; <label>:441                                     ; preds = %438
  %442 = call i64 @grid_getPoint(%struct.grid* %24, i64 %428, i64 %430, i64 %432) #4
  %443 = icmp sgt i64 %442, %next.sroa.55.10.i
  %444 = load i32, i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGY, i64 0, i32 4), align 8
  %next.sroa.0.10..i = select i1 %443, i64 %next.sroa.0.10.i, i64 %428
  %next.sroa.19.10..i = select i1 %443, i64 %next.sroa.19.10.i, i64 %430
  %next.sroa.37.10..i = select i1 %443, i64 %next.sroa.37.10.i, i64 %432
  %next.sroa.55.10..i = select i1 %443, i64 %next.sroa.55.10.i, i64 %442
  %next.sroa.83.10..i = select i1 %443, i32 %next.sroa.83.10.i, i32 %444
  br label %traceToNeighbor.exit15.i

traceToNeighbor.exit15.i:                         ; preds = %441, %438, %435, %traceToNeighbor.exit14.i
  %next.sroa.0.11.i = phi i64 [ %next.sroa.0.10.i, %traceToNeighbor.exit14.i ], [ %next.sroa.0.10.i, %438 ], [ %next.sroa.0.10.i, %435 ], [ %next.sroa.0.10..i, %441 ]
  %next.sroa.19.11.i = phi i64 [ %next.sroa.19.10.i, %traceToNeighbor.exit14.i ], [ %next.sroa.19.10.i, %438 ], [ %next.sroa.19.10.i, %435 ], [ %next.sroa.19.10..i, %441 ]
  %next.sroa.37.11.i = phi i64 [ %next.sroa.37.10.i, %traceToNeighbor.exit14.i ], [ %next.sroa.37.10.i, %438 ], [ %next.sroa.37.10.i, %435 ], [ %next.sroa.37.10..i, %441 ]
  %next.sroa.55.11.i = phi i64 [ %next.sroa.55.10.i, %traceToNeighbor.exit14.i ], [ %next.sroa.55.10.i, %438 ], [ %next.sroa.55.10.i, %435 ], [ %next.sroa.55.10..i, %441 ]
  %next.sroa.83.11.i = phi i32 [ %next.sroa.83.10.i, %traceToNeighbor.exit14.i ], [ %next.sroa.83.10.i, %438 ], [ %next.sroa.83.10.i, %435 ], [ %next.sroa.83.10..i, %441 ]
  %445 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGZ, i64 0, i32 0), align 8
  %446 = add nsw i64 %445, %next.sroa.0.021.i
  %447 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGZ, i64 0, i32 1), align 8
  %448 = add nsw i64 %447, %next.sroa.19.022.i
  %449 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGZ, i64 0, i32 2), align 8
  %450 = add nsw i64 %449, %next.sroa.37.023.i
  %451 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %446, i64 %448, i64 %450) #4
  %452 = icmp eq i64 %451, 0
  br i1 %452, label %traceToNeighbor.exit16.i, label %453

; <label>:453                                     ; preds = %traceToNeighbor.exit15.i
  %454 = call i64 @grid_isPointEmpty(%struct.grid* %24, i64 %446, i64 %448, i64 %450) #4
  %455 = icmp eq i64 %454, 0
  br i1 %455, label %456, label %traceToNeighbor.exit16.i

; <label>:456                                     ; preds = %453
  %457 = call i64 @grid_isPointFull(%struct.grid* %24, i64 %446, i64 %448, i64 %450) #4
  %458 = icmp eq i64 %457, 0
  br i1 %458, label %459, label %traceToNeighbor.exit16.i

; <label>:459                                     ; preds = %456
  %460 = call i64 @grid_getPoint(%struct.grid* %24, i64 %446, i64 %448, i64 %450) #4
  %461 = icmp sgt i64 %460, %next.sroa.55.11.i
  %462 = load i32, i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGZ, i64 0, i32 4), align 8
  %next.sroa.0.11..i = select i1 %461, i64 %next.sroa.0.11.i, i64 %446
  %next.sroa.19.11..i = select i1 %461, i64 %next.sroa.19.11.i, i64 %448
  %next.sroa.37.11..i = select i1 %461, i64 %next.sroa.37.11.i, i64 %450
  %next.sroa.55.11..i = select i1 %461, i64 %next.sroa.55.11.i, i64 %460
  %next.sroa.83.11..i = select i1 %461, i32 %next.sroa.83.11.i, i32 %462
  br label %traceToNeighbor.exit16.i

traceToNeighbor.exit16.i:                         ; preds = %459, %456, %453, %traceToNeighbor.exit15.i
  %next.sroa.0.12.i = phi i64 [ %next.sroa.0.11.i, %traceToNeighbor.exit15.i ], [ %next.sroa.0.11.i, %456 ], [ %next.sroa.0.11.i, %453 ], [ %next.sroa.0.11..i, %459 ]
  %next.sroa.19.12.i = phi i64 [ %next.sroa.19.11.i, %traceToNeighbor.exit15.i ], [ %next.sroa.19.11.i, %456 ], [ %next.sroa.19.11.i, %453 ], [ %next.sroa.19.11..i, %459 ]
  %next.sroa.37.12.i = phi i64 [ %next.sroa.37.11.i, %traceToNeighbor.exit15.i ], [ %next.sroa.37.11.i, %456 ], [ %next.sroa.37.11.i, %453 ], [ %next.sroa.37.11..i, %459 ]
  %next.sroa.55.12.i = phi i64 [ %next.sroa.55.11.i, %traceToNeighbor.exit15.i ], [ %next.sroa.55.11.i, %456 ], [ %next.sroa.55.11.i, %453 ], [ %next.sroa.55.11..i, %459 ]
  %next.sroa.83.12.i = phi i32 [ %next.sroa.83.11.i, %traceToNeighbor.exit15.i ], [ %next.sroa.83.11.i, %456 ], [ %next.sroa.83.11.i, %453 ], [ %next.sroa.83.11..i, %459 ]
  %463 = icmp eq i64 %next.sroa.0.021.i, %next.sroa.0.12.i
  %464 = icmp eq i64 %next.sroa.19.022.i, %next.sroa.19.12.i
  %or.cond19.i = and i1 %463, %464
  %465 = icmp eq i64 %next.sroa.37.023.i, %next.sroa.37.12.i
  %or.cond20.i = and i1 %or.cond19.i, %465
  br i1 %or.cond20.i, label %PdoTraceback.exit.thread, label %.backedge.i

.backedge.i:                                      ; preds = %traceToNeighbor.exit16.i, %traceToNeighbor.exit10.i
  %next.sroa.0.0.be.i = phi i64 [ %next.sroa.0.12.i, %traceToNeighbor.exit16.i ], [ %next.sroa.0.6.i, %traceToNeighbor.exit10.i ]
  %next.sroa.19.0.be.i = phi i64 [ %next.sroa.19.12.i, %traceToNeighbor.exit16.i ], [ %next.sroa.19.6.i, %traceToNeighbor.exit10.i ]
  %next.sroa.37.0.be.i = phi i64 [ %next.sroa.37.12.i, %traceToNeighbor.exit16.i ], [ %next.sroa.37.6.i, %traceToNeighbor.exit10.i ]
  %next.sroa.55.0.be.i = phi i64 [ %next.sroa.55.12.i, %traceToNeighbor.exit16.i ], [ %next.sroa.55.6.i, %traceToNeighbor.exit10.i ]
  %next.sroa.83.0.be.i = phi i32 [ %next.sroa.83.12.i, %traceToNeighbor.exit16.i ], [ %next.sroa.83.6.i, %traceToNeighbor.exit10.i ]
  %466 = call i64* @grid_getPointRef(%struct.grid* %17, i64 %next.sroa.0.0.be.i, i64 %next.sroa.19.0.be.i, i64 %next.sroa.37.0.be.i) #4
  %467 = bitcast i64* %466 to i8*
  %468 = call i64 @Pvector_pushBack(%struct.vector* nonnull %219, i8* %467) #4
  call void @grid_setPoint(%struct.grid* %24, i64 %next.sroa.0.0.be.i, i64 %next.sroa.19.0.be.i, i64 %next.sroa.37.0.be.i, i64 -2) #4
  %469 = icmp eq i64 %next.sroa.55.0.be.i, 0
  br i1 %469, label %PdoTraceback.exit.thread4.loopexit, label %.lr.ph.i3

PdoTraceback.exit.thread:                         ; preds = %traceToNeighbor.exit16.i
  call void @Pvector_free(%struct.vector* nonnull %219) #4
  br label %470

PdoTraceback.exit.thread4.loopexit:               ; preds = %.backedge.i
  br label %PdoTraceback.exit.thread4

PdoTraceback.exit.thread4:                        ; preds = %PdoTraceback.exit.thread4.loopexit, %222
  call void @TMgrid_addPath(%struct.grid* %17, %struct.vector* nonnull %219) #4
  br label %470

.critedge:                                        ; preds = %82
  call void @llvm.lifetime.end(i64 8, i8* %31)
  call void @llvm.lifetime.end(i64 8, i8* %32)
  call void @llvm.lifetime.end(i64 8, i8* %33)
  br label %470

; <label>:470                                     ; preds = %PdoExpansion.exit, %.critedge, %PdoTraceback.exit.thread, %PdoTraceback.exit.thread4
  %success.0 = phi i64 [ 1, %PdoTraceback.exit.thread4 ], [ 0, %PdoExpansion.exit ], [ 0, %PdoTraceback.exit.thread ], [ 0, %.critedge ]
  %pointVectorPtr.0 = phi %struct.vector* [ %219, %PdoTraceback.exit.thread4 ], [ null, %PdoExpansion.exit ], [ null, %PdoTraceback.exit.thread ], [ null, %.critedge ]
  %471 = icmp sgt i32 %tries2.0.ph24, 1
  br i1 %471, label %472, label %473

; <label>:472                                     ; preds = %470
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 1) #4, !srcloc !3
  br label %474

; <label>:473                                     ; preds = %470
  call void (...) @RTM_fallback_unlock() #4
  br label %474

; <label>:474                                     ; preds = %473, %472
  %475 = icmp eq i64 %success.0, 0
  br i1 %475, label %.outer8.backedge, label %476

; <label>:476                                     ; preds = %474
  %477 = bitcast %struct.vector* %pointVectorPtr.0 to i8*
  %478 = call i64 @Pvector_pushBack(%struct.vector* nonnull %10, i8* %477) #4
  %479 = icmp eq i64 %478, 0
  br i1 %479, label %480, label %.outer8.backedge

; <label>:480                                     ; preds = %476
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 416, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.router_solve, i64 0, i64 0)) #6
  unreachable

; <label>:481                                     ; preds = %59
  %482 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %483 = bitcast i8* %482 to %struct.list**
  %484 = load %struct.list*, %struct.list** %483, align 8
  br label %.outer

.outer:                                           ; preds = %490, %481
  %tries4.0.ph = phi i32 [ %491, %490 ], [ 9, %481 ]
  %485 = call i64 (...) @RTM_fallback_isLocked() #4
  %486 = icmp eq i64 %485, 0
  br i1 %486, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.outer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  call void @llvm.x86.sse2.pause() #4
  %487 = call i64 (...) @RTM_fallback_isLocked() #4
  %488 = icmp eq i64 %487, 0
  br i1 %488, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.outer
  %489 = icmp slt i32 %tries4.0.ph, 2
  br i1 %489, label %502, label %490

; <label>:490                                     ; preds = %._crit_edge
  %491 = add nsw i32 %tries4.0.ph, -1
  %492 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 0, i64 2, i64 4294967295) #4, !srcloc !1
  %493 = trunc i64 %492 to i32
  %494 = icmp eq i32 %493, -1
  br i1 %494, label %495, label %.outer

; <label>:495                                     ; preds = %490
  %496 = call i64 (...) @RTM_fallback_isLocked() #4
  %497 = icmp eq i64 %496, 0
  br i1 %497, label %499, label %498

; <label>:498                                     ; preds = %495
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !2
  br label %499

; <label>:499                                     ; preds = %495, %498
  %500 = bitcast %struct.vector* %10 to i8*
  %501 = call i64 @TMlist_insert(%struct.list* %484, i8* %500) #4
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 2) #4, !srcloc !3
  br label %505

; <label>:502                                     ; preds = %._crit_edge
  call void (...) @RTM_fallback_lock() #4
  %503 = bitcast %struct.vector* %10 to i8*
  %504 = call i64 @TMlist_insert(%struct.list* %484, i8* %503) #4
  call void (...) @RTM_fallback_unlock() #4
  br label %505

; <label>:505                                     ; preds = %502, %499
  call void @Pgrid_free(%struct.grid* nonnull %24) #4
  call void @Pqueue_free(%struct.queue* %30) #4
  %506 = call i64 (...) @thread_getId() #4
  %507 = trunc i64 %506 to i32
  %508 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  %509 = load i32, i32* %508, align 4
  call void @SimRoiEnd(i32 %507, i32 %509) #4
  ret void
}

declare i64 @thread_getId(...) #2

declare void @SimRoiStart(i32) #2

declare %struct.vector* @Pvector_alloc(i64) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare %struct.grid* @Pgrid_alloc(i64, i64, i64) #2

declare %struct.queue* @Pqueue_alloc(i64) #2

declare i64 @RTM_fallback_isLocked(...) #2

declare void @RTM_fallback_lock(...) #2

declare i64 @TMqueue_isEmpty(%struct.queue*) #2

declare i8* @TMqueue_pop(%struct.queue*) #2

declare void @RTM_fallback_unlock(...) #2

declare void @grid_copy(%struct.grid*, %struct.grid*) #2

declare void @TMgrid_addPath(%struct.grid*, %struct.vector*) #2

declare i64 @Pvector_pushBack(%struct.vector*, i8*) #2

declare i64 @TMlist_insert(%struct.list*, i8*) #2

declare void @Pgrid_free(%struct.grid*) #2

declare void @Pqueue_free(%struct.queue*) #2

declare void @SimRoiEnd(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #4

declare void @queue_clear(%struct.queue*) #2

declare i64* @grid_getPointRef(%struct.grid*, i64, i64, i64) #2

declare i64 @Pqueue_push(%struct.queue*, i8*) #2

declare void @grid_setPoint(%struct.grid*, i64, i64, i64, i64) #2

declare i64 @queue_isEmpty(%struct.queue*) #2

declare i8* @queue_pop(%struct.queue*) #2

declare void @grid_getPointIndices(%struct.grid*, i64*, i64*, i64*, i64*) #2

declare i64 @grid_isPointValid(%struct.grid*, i64, i64, i64) #2

declare i64 @grid_getPoint(%struct.grid*, i64, i64, i64) #2

declare void @Pvector_free(%struct.vector*) #2

declare i64 @grid_isPointEmpty(%struct.grid*, i64, i64, i64) #2

declare i64 @grid_isPointFull(%struct.grid*, i64, i64, i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { argmemonly nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 1419884, i32 1419900, i32 1419936, i32 1419972, i32 1420008}
!2 = !{i32 1420485, i32 1420500, i32 1420534}
!3 = !{i32 1420256, i32 1420271, i32 1420299}
