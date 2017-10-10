; ModuleID = 'router.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.point = type { i64, i64, i64, i64, i32 }
%struct._tm_thread_context_t = type { i32, i32, %struct.simple_metadata*, i32, i32, [44 x i8] }
%struct.simple_metadata = type opaque
%struct.router = type { i64, i64, i64, i64 }
%struct.router_solve_arg = type { %struct.router*, %struct.maze*, %struct.list* }
%struct.maze = type { %struct.grid*, %struct.queue*, %struct.vector*, %struct.vector*, %struct.vector* }
%struct.grid = type { i64, i64, i64, i64*, i64* }
%struct.queue = type opaque
%struct.vector = type { i64, i64, i8** }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.list_node = type { i8*, %struct.list_node* }
%struct.pair = type { i8*, i8* }
%struct.coordinate = type { i64, i64, i64 }

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
define %struct.router* @router_alloc(i64 %xCost, i64 %yCost, i64 %zCost, i64 %bendCost) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %routerPtr = alloca %struct.router*, align 8
  store i64 %xCost, i64* %1, align 8
  store i64 %yCost, i64* %2, align 8
  store i64 %zCost, i64* %3, align 8
  store i64 %bendCost, i64* %4, align 8
  %5 = call noalias i8* @malloc(i64 32) #4
  %6 = bitcast i8* %5 to %struct.router*
  store %struct.router* %6, %struct.router** %routerPtr, align 8
  %7 = load %struct.router*, %struct.router** %routerPtr, align 8
  %8 = icmp ne %struct.router* %7, null
  br i1 %8, label %9, label %22

; <label>:9                                       ; preds = %0
  %10 = load i64, i64* %1, align 8
  %11 = load %struct.router*, %struct.router** %routerPtr, align 8
  %12 = getelementptr inbounds %struct.router, %struct.router* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load i64, i64* %2, align 8
  %14 = load %struct.router*, %struct.router** %routerPtr, align 8
  %15 = getelementptr inbounds %struct.router, %struct.router* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.router*, %struct.router** %routerPtr, align 8
  %18 = getelementptr inbounds %struct.router, %struct.router* %17, i32 0, i32 2
  store i64 %16, i64* %18, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.router*, %struct.router** %routerPtr, align 8
  %21 = getelementptr inbounds %struct.router, %struct.router* %20, i32 0, i32 3
  store i64 %19, i64* %21, align 8
  br label %22

; <label>:22                                      ; preds = %9, %0
  %23 = load %struct.router*, %struct.router** %routerPtr, align 8
  ret %struct.router* %23
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @router_free(%struct.router* %routerPtr) #0 {
  %1 = alloca %struct.router*, align 8
  store %struct.router* %routerPtr, %struct.router** %1, align 8
  %2 = load %struct.router*, %struct.router** %1, align 8
  %3 = bitcast %struct.router* %2 to i8*
  call void @free(i8* %3) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @router_solve(i8* %argPtr) #0 {
  %1 = alloca i64, align 8
  %handler.i7 = alloca i64, align 8
  %ret.i8 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %handler.i5 = alloca i64, align 8
  %ret.i6 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %handler.i = alloca i64, align 8
  %ret.i = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %_tm_thread_context = alloca %struct._tm_thread_context_t*, align 8
  %routerArgPtr = alloca %struct.router_solve_arg*, align 8
  %routerPtr = alloca %struct.router*, align 8
  %mazePtr = alloca %struct.maze*, align 8
  %myPathVectorPtr = alloca %struct.vector*, align 8
  %workQueuePtr = alloca %struct.queue*, align 8
  %gridPtr = alloca %struct.grid*, align 8
  %myGridPtr = alloca %struct.grid*, align 8
  %bendCost = alloca i64, align 8
  %myExpansionQueuePtr = alloca %struct.queue*, align 8
  %coordinatePairPtr = alloca %struct.pair*, align 8
  %__status = alloca i32, align 4
  %tries = alloca i32, align 4
  %srcPtr = alloca %struct.coordinate*, align 8
  %dstPtr = alloca %struct.coordinate*, align 8
  %success = alloca i64, align 8
  %pointVectorPtr = alloca %struct.vector*, align 8
  %__status1 = alloca i32, align 4
  %tries2 = alloca i32, align 4
  %11 = alloca i64, align 8
  %status = alloca i64, align 8
  %pathVectorListPtr = alloca %struct.list*, align 8
  %__status3 = alloca i32, align 4
  %tries4 = alloca i32, align 4
  store i8* %argPtr, i8** %10, align 8
  %12 = call i64 (...) @thread_getId()
  %13 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %14 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %13, i64 %12
  store %struct._tm_thread_context_t* %14, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  br label %15

; <label>:15                                      ; preds = %0
  %16 = call i64 (...) @thread_getId()
  %17 = trunc i64 %16 to i32
  call void @SimRoiStart(i32 %17)
  br label %18

; <label>:18                                      ; preds = %15
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.router_solve_arg*
  store %struct.router_solve_arg* %20, %struct.router_solve_arg** %routerArgPtr, align 8
  %21 = load %struct.router_solve_arg*, %struct.router_solve_arg** %routerArgPtr, align 8
  %22 = getelementptr inbounds %struct.router_solve_arg, %struct.router_solve_arg* %21, i32 0, i32 0
  %23 = load %struct.router*, %struct.router** %22, align 8
  store %struct.router* %23, %struct.router** %routerPtr, align 8
  %24 = load %struct.router_solve_arg*, %struct.router_solve_arg** %routerArgPtr, align 8
  %25 = getelementptr inbounds %struct.router_solve_arg, %struct.router_solve_arg* %24, i32 0, i32 1
  %26 = load %struct.maze*, %struct.maze** %25, align 8
  store %struct.maze* %26, %struct.maze** %mazePtr, align 8
  %27 = call %struct.vector* @Pvector_alloc(i64 1)
  store %struct.vector* %27, %struct.vector** %myPathVectorPtr, align 8
  %28 = load %struct.vector*, %struct.vector** %myPathVectorPtr, align 8
  %29 = icmp ne %struct.vector* %28, null
  br i1 %29, label %30, label %31

; <label>:30                                      ; preds = %18
  br label %33

; <label>:31                                      ; preds = %18
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 362, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.router_solve, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %33

; <label>:33                                      ; preds = %32, %30
  %34 = load %struct.maze*, %struct.maze** %mazePtr, align 8
  %35 = getelementptr inbounds %struct.maze, %struct.maze* %34, i32 0, i32 1
  %36 = load %struct.queue*, %struct.queue** %35, align 8
  store %struct.queue* %36, %struct.queue** %workQueuePtr, align 8
  %37 = load %struct.maze*, %struct.maze** %mazePtr, align 8
  %38 = getelementptr inbounds %struct.maze, %struct.maze* %37, i32 0, i32 0
  %39 = load %struct.grid*, %struct.grid** %38, align 8
  store %struct.grid* %39, %struct.grid** %gridPtr, align 8
  %40 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %41 = getelementptr inbounds %struct.grid, %struct.grid* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %44 = getelementptr inbounds %struct.grid, %struct.grid* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %47 = getelementptr inbounds %struct.grid, %struct.grid* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call %struct.grid* @Pgrid_alloc(i64 %42, i64 %45, i64 %48)
  store %struct.grid* %49, %struct.grid** %myGridPtr, align 8
  %50 = load %struct.grid*, %struct.grid** %myGridPtr, align 8
  %51 = icmp ne %struct.grid* %50, null
  br i1 %51, label %52, label %53

; <label>:52                                      ; preds = %33
  br label %55

; <label>:53                                      ; preds = %33
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 368, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.router_solve, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %55

; <label>:55                                      ; preds = %54, %52
  %56 = load %struct.router*, %struct.router** %routerPtr, align 8
  %57 = getelementptr inbounds %struct.router, %struct.router* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %bendCost, align 8
  %59 = call %struct.queue* @Pqueue_alloc(i64 -1)
  store %struct.queue* %59, %struct.queue** %myExpansionQueuePtr, align 8
  br label %60

; <label>:60                                      ; preds = %55, %189
  store i32 -1, i32* %__status, align 4
  store i32 9, i32* %tries, align 4
  br label %61

; <label>:61                                      ; preds = %82, %60
  br label %62

; <label>:62                                      ; preds = %65, %61
  %63 = call i64 (...) @RTM_fallback_isLocked()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

; <label>:65                                      ; preds = %62
  call void @llvm.x86.sse2.pause() #4
  br label %62

; <label>:66                                      ; preds = %62
  %67 = load i32, i32* %tries, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %tries, align 4
  %69 = load i32, i32* %tries, align 4
  %70 = icmp sle i32 %69, 0
  br i1 %70, label %71, label %72

; <label>:71                                      ; preds = %66
  call void (...) @RTM_fallback_lock()
  br label %89

; <label>:72                                      ; preds = %66
  store i64 0, i64* %8, align 8
  store i64 0, i64* %handler.i, align 8
  store i64 4294967295, i64* %ret.i, align 8
  %73 = load i64, i64* %ret.i, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %handler.i, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %74, i64 %75, i64 %76, i64 %73) #4, !srcloc !1
  store i64 %77, i64* %ret.i, align 8
  %78 = load i64, i64* %ret.i, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %__status, align 4
  %80 = load i32, i32* %__status, align 4
  %81 = icmp ne i32 %80, -1
  br i1 %81, label %82, label %83

; <label>:82                                      ; preds = %72
  br label %61

; <label>:83                                      ; preds = %72
  %84 = call i64 (...) @RTM_fallback_isLocked()
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

; <label>:86                                      ; preds = %83
  store i64 255, i64* %7, align 8
  %87 = load i64, i64* %7, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %87) #4, !srcloc !2
  br label %88

; <label>:88                                      ; preds = %86, %83
  br label %89

; <label>:89                                      ; preds = %88, %71
  %90 = load %struct.queue*, %struct.queue** %workQueuePtr, align 8
  %91 = call i64 @TMqueue_isEmpty(%struct.queue* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

; <label>:93                                      ; preds = %89
  store %struct.pair* null, %struct.pair** %coordinatePairPtr, align 8
  br label %98

; <label>:94                                      ; preds = %89
  %95 = load %struct.queue*, %struct.queue** %workQueuePtr, align 8
  %96 = call i8* @TMqueue_pop(%struct.queue* %95)
  %97 = bitcast i8* %96 to %struct.pair*
  store %struct.pair* %97, %struct.pair** %coordinatePairPtr, align 8
  br label %98

; <label>:98                                      ; preds = %94, %93
  %99 = load i32, i32* %tries, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %103

; <label>:101                                     ; preds = %98
  store i64 0, i64* %6, align 8
  %102 = load i64, i64* %6, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %102) #4, !srcloc !3
  br label %104

; <label>:103                                     ; preds = %98
  call void (...) @RTM_fallback_unlock()
  br label %104

; <label>:104                                     ; preds = %103, %101
  %105 = load %struct.pair*, %struct.pair** %coordinatePairPtr, align 8
  %106 = icmp eq %struct.pair* %105, null
  br i1 %106, label %107, label %108

; <label>:107                                     ; preds = %104
  br label %190

; <label>:108                                     ; preds = %104
  %109 = load %struct.pair*, %struct.pair** %coordinatePairPtr, align 8
  %110 = getelementptr inbounds %struct.pair, %struct.pair* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = bitcast i8* %111 to %struct.coordinate*
  store %struct.coordinate* %112, %struct.coordinate** %srcPtr, align 8
  %113 = load %struct.pair*, %struct.pair** %coordinatePairPtr, align 8
  %114 = getelementptr inbounds %struct.pair, %struct.pair* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = bitcast i8* %115 to %struct.coordinate*
  store %struct.coordinate* %116, %struct.coordinate** %dstPtr, align 8
  store i64 0, i64* %success, align 8
  store %struct.vector* null, %struct.vector** %pointVectorPtr, align 8
  store i32 -1, i32* %__status1, align 4
  store i32 9, i32* %tries2, align 4
  br label %117

; <label>:117                                     ; preds = %138, %108
  br label %118

; <label>:118                                     ; preds = %121, %117
  %119 = call i64 (...) @RTM_fallback_isLocked()
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

; <label>:121                                     ; preds = %118
  call void @llvm.x86.sse2.pause() #4
  br label %118

; <label>:122                                     ; preds = %118
  %123 = load i32, i32* %tries2, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %tries2, align 4
  %125 = load i32, i32* %tries2, align 4
  %126 = icmp sle i32 %125, 0
  br i1 %126, label %127, label %128

; <label>:127                                     ; preds = %122
  call void (...) @RTM_fallback_lock()
  br label %145

; <label>:128                                     ; preds = %122
  store i64 1, i64* %4, align 8
  store i64 0, i64* %handler.i5, align 8
  store i64 4294967295, i64* %ret.i6, align 8
  %129 = load i64, i64* %ret.i6, align 8
  %130 = load i64, i64* %4, align 8
  %131 = load i64, i64* %handler.i5, align 8
  %132 = load i64, i64* %4, align 8
  %133 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %130, i64 %131, i64 %132, i64 %129) #4, !srcloc !1
  store i64 %133, i64* %ret.i6, align 8
  %134 = load i64, i64* %ret.i6, align 8
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %__status1, align 4
  %136 = load i32, i32* %__status1, align 4
  %137 = icmp ne i32 %136, -1
  br i1 %137, label %138, label %139

; <label>:138                                     ; preds = %128
  br label %117

; <label>:139                                     ; preds = %128
  %140 = call i64 (...) @RTM_fallback_isLocked()
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

; <label>:142                                     ; preds = %139
  store i64 255, i64* %3, align 8
  %143 = load i64, i64* %3, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %143) #4, !srcloc !2
  br label %144

; <label>:144                                     ; preds = %142, %139
  br label %145

; <label>:145                                     ; preds = %144, %127
  %146 = load %struct.grid*, %struct.grid** %myGridPtr, align 8
  %147 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  call void @grid_copy(%struct.grid* %146, %struct.grid* %147)
  %148 = load %struct.router*, %struct.router** %routerPtr, align 8
  %149 = load %struct.grid*, %struct.grid** %myGridPtr, align 8
  %150 = load %struct.queue*, %struct.queue** %myExpansionQueuePtr, align 8
  %151 = load %struct.coordinate*, %struct.coordinate** %srcPtr, align 8
  %152 = load %struct.coordinate*, %struct.coordinate** %dstPtr, align 8
  %153 = call i64 @PdoExpansion(%struct.router* %148, %struct.grid* %149, %struct.queue* %150, %struct.coordinate* %151, %struct.coordinate* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %169

; <label>:155                                     ; preds = %145
  %156 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %157 = load %struct.grid*, %struct.grid** %myGridPtr, align 8
  %158 = load %struct.coordinate*, %struct.coordinate** %dstPtr, align 8
  %159 = load i64, i64* %bendCost, align 8
  %160 = call %struct.vector* @PdoTraceback(%struct.grid* %156, %struct.grid* %157, %struct.coordinate* %158, i64 %159)
  store %struct.vector* %160, %struct.vector** %pointVectorPtr, align 8
  %161 = load %struct.vector*, %struct.vector** %pointVectorPtr, align 8
  %162 = icmp ne %struct.vector* %161, null
  br i1 %162, label %163, label %168

; <label>:163                                     ; preds = %155
  %164 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %165 = load %struct.vector*, %struct.vector** %pointVectorPtr, align 8
  call void @TMgrid_addPath(%struct.grid* %164, %struct.vector* %165)
  store i64 1, i64* %success, align 8
  %166 = load i64, i64* %success, align 8
  store i64 %166, i64* %11, align 8
  %167 = load i64, i64* %11, align 8
  br label %168

; <label>:168                                     ; preds = %163, %155
  br label %169

; <label>:169                                     ; preds = %168, %145
  %170 = load i32, i32* %tries2, align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %174

; <label>:172                                     ; preds = %169
  store i64 1, i64* %2, align 8
  %173 = load i64, i64* %2, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %173) #4, !srcloc !3
  br label %175

; <label>:174                                     ; preds = %169
  call void (...) @RTM_fallback_unlock()
  br label %175

; <label>:175                                     ; preds = %174, %172
  %176 = load i64, i64* %success, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %189

; <label>:178                                     ; preds = %175
  %179 = load %struct.vector*, %struct.vector** %myPathVectorPtr, align 8
  %180 = load %struct.vector*, %struct.vector** %pointVectorPtr, align 8
  %181 = bitcast %struct.vector* %180 to i8*
  %182 = call i64 @Pvector_pushBack(%struct.vector* %179, i8* %181)
  store i64 %182, i64* %status, align 8
  %183 = load i64, i64* %status, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

; <label>:185                                     ; preds = %178
  br label %188

; <label>:186                                     ; preds = %178
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 416, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.router_solve, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %188

; <label>:188                                     ; preds = %187, %185
  br label %189

; <label>:189                                     ; preds = %188, %175
  br label %60

; <label>:190                                     ; preds = %107
  %191 = load %struct.router_solve_arg*, %struct.router_solve_arg** %routerArgPtr, align 8
  %192 = getelementptr inbounds %struct.router_solve_arg, %struct.router_solve_arg* %191, i32 0, i32 2
  %193 = load %struct.list*, %struct.list** %192, align 8
  store %struct.list* %193, %struct.list** %pathVectorListPtr, align 8
  store i32 -1, i32* %__status3, align 4
  store i32 9, i32* %tries4, align 4
  br label %194

; <label>:194                                     ; preds = %215, %190
  br label %195

; <label>:195                                     ; preds = %198, %194
  %196 = call i64 (...) @RTM_fallback_isLocked()
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %199

; <label>:198                                     ; preds = %195
  call void @llvm.x86.sse2.pause() #4
  br label %195

; <label>:199                                     ; preds = %195
  %200 = load i32, i32* %tries4, align 4
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %tries4, align 4
  %202 = load i32, i32* %tries4, align 4
  %203 = icmp sle i32 %202, 0
  br i1 %203, label %204, label %205

; <label>:204                                     ; preds = %199
  call void (...) @RTM_fallback_lock()
  br label %222

; <label>:205                                     ; preds = %199
  store i64 2, i64* %1, align 8
  store i64 0, i64* %handler.i7, align 8
  store i64 4294967295, i64* %ret.i8, align 8
  %206 = load i64, i64* %ret.i8, align 8
  %207 = load i64, i64* %1, align 8
  %208 = load i64, i64* %handler.i7, align 8
  %209 = load i64, i64* %1, align 8
  %210 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %207, i64 %208, i64 %209, i64 %206) #4, !srcloc !1
  store i64 %210, i64* %ret.i8, align 8
  %211 = load i64, i64* %ret.i8, align 8
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %__status3, align 4
  %213 = load i32, i32* %__status3, align 4
  %214 = icmp ne i32 %213, -1
  br i1 %214, label %215, label %216

; <label>:215                                     ; preds = %205
  br label %194

; <label>:216                                     ; preds = %205
  %217 = call i64 (...) @RTM_fallback_isLocked()
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %221

; <label>:219                                     ; preds = %216
  store i64 255, i64* %5, align 8
  %220 = load i64, i64* %5, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %220) #4, !srcloc !2
  br label %221

; <label>:221                                     ; preds = %219, %216
  br label %222

; <label>:222                                     ; preds = %221, %204
  %223 = load %struct.list*, %struct.list** %pathVectorListPtr, align 8
  %224 = load %struct.vector*, %struct.vector** %myPathVectorPtr, align 8
  %225 = bitcast %struct.vector* %224 to i8*
  %226 = call i64 @TMlist_insert(%struct.list* %223, i8* %225)
  %227 = load i32, i32* %tries4, align 4
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %231

; <label>:229                                     ; preds = %222
  store i64 2, i64* %9, align 8
  %230 = load i64, i64* %9, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %230) #4, !srcloc !3
  br label %232

; <label>:231                                     ; preds = %222
  call void (...) @RTM_fallback_unlock()
  br label %232

; <label>:232                                     ; preds = %231, %229
  %233 = load %struct.grid*, %struct.grid** %myGridPtr, align 8
  call void @Pgrid_free(%struct.grid* %233)
  %234 = load %struct.queue*, %struct.queue** %myExpansionQueuePtr, align 8
  call void @Pqueue_free(%struct.queue* %234)
  br label %235

; <label>:235                                     ; preds = %232
  %236 = call i64 (...) @thread_getId()
  %237 = trunc i64 %236 to i32
  %238 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %239 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 4
  call void @SimRoiEnd(i32 %237, i32 %240)
  br label %241

; <label>:241                                     ; preds = %235
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

; Function Attrs: nounwind uwtable
define internal i64 @PdoExpansion(%struct.router* %routerPtr, %struct.grid* %myGridPtr, %struct.queue* %queuePtr, %struct.coordinate* %srcPtr, %struct.coordinate* %dstPtr) #0 {
  %1 = alloca %struct.router*, align 8
  %2 = alloca %struct.grid*, align 8
  %3 = alloca %struct.queue*, align 8
  %4 = alloca %struct.coordinate*, align 8
  %5 = alloca %struct.coordinate*, align 8
  %xCost = alloca i64, align 8
  %yCost = alloca i64, align 8
  %zCost = alloca i64, align 8
  %srcGridPointPtr = alloca i64*, align 8
  %dstGridPointPtr = alloca i64*, align 8
  %isPathFound = alloca i64, align 8
  %gridPointPtr = alloca i64*, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %z = alloca i64, align 8
  %value = alloca i64, align 8
  store %struct.router* %routerPtr, %struct.router** %1, align 8
  store %struct.grid* %myGridPtr, %struct.grid** %2, align 8
  store %struct.queue* %queuePtr, %struct.queue** %3, align 8
  store %struct.coordinate* %srcPtr, %struct.coordinate** %4, align 8
  store %struct.coordinate* %dstPtr, %struct.coordinate** %5, align 8
  %6 = load %struct.router*, %struct.router** %1, align 8
  %7 = getelementptr inbounds %struct.router, %struct.router* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %xCost, align 8
  %9 = load %struct.router*, %struct.router** %1, align 8
  %10 = getelementptr inbounds %struct.router, %struct.router* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %yCost, align 8
  %12 = load %struct.router*, %struct.router** %1, align 8
  %13 = getelementptr inbounds %struct.router, %struct.router* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %zCost, align 8
  %15 = load %struct.queue*, %struct.queue** %3, align 8
  call void @queue_clear(%struct.queue* %15)
  %16 = load %struct.grid*, %struct.grid** %2, align 8
  %17 = load %struct.coordinate*, %struct.coordinate** %4, align 8
  %18 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.coordinate*, %struct.coordinate** %4, align 8
  %21 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.coordinate*, %struct.coordinate** %4, align 8
  %24 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i64* @grid_getPointRef(%struct.grid* %16, i64 %19, i64 %22, i64 %25)
  store i64* %26, i64** %srcGridPointPtr, align 8
  %27 = load %struct.queue*, %struct.queue** %3, align 8
  %28 = load i64*, i64** %srcGridPointPtr, align 8
  %29 = bitcast i64* %28 to i8*
  %30 = call i64 @Pqueue_push(%struct.queue* %27, i8* %29)
  %31 = load %struct.grid*, %struct.grid** %2, align 8
  %32 = load %struct.coordinate*, %struct.coordinate** %4, align 8
  %33 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.coordinate*, %struct.coordinate** %4, align 8
  %36 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.coordinate*, %struct.coordinate** %4, align 8
  %39 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  call void @grid_setPoint(%struct.grid* %31, i64 %34, i64 %37, i64 %40, i64 0)
  %41 = load %struct.grid*, %struct.grid** %2, align 8
  %42 = load %struct.coordinate*, %struct.coordinate** %5, align 8
  %43 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.coordinate*, %struct.coordinate** %5, align 8
  %46 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.coordinate*, %struct.coordinate** %5, align 8
  %49 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  call void @grid_setPoint(%struct.grid* %41, i64 %44, i64 %47, i64 %50, i64 -1)
  %51 = load %struct.grid*, %struct.grid** %2, align 8
  %52 = load %struct.coordinate*, %struct.coordinate** %5, align 8
  %53 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.coordinate*, %struct.coordinate** %5, align 8
  %56 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.coordinate*, %struct.coordinate** %5, align 8
  %59 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i64* @grid_getPointRef(%struct.grid* %51, i64 %54, i64 %57, i64 %60)
  store i64* %61, i64** %dstGridPointPtr, align 8
  store i64 0, i64* %isPathFound, align 8
  br label %62

; <label>:62                                      ; preds = %75, %0
  %63 = load %struct.queue*, %struct.queue** %3, align 8
  %64 = call i64 @queue_isEmpty(%struct.queue* %63)
  %65 = icmp ne i64 %64, 0
  %66 = xor i1 %65, true
  br i1 %66, label %67, label %134

; <label>:67                                      ; preds = %62
  %68 = load %struct.queue*, %struct.queue** %3, align 8
  %69 = call i8* @queue_pop(%struct.queue* %68)
  %70 = bitcast i8* %69 to i64*
  store i64* %70, i64** %gridPointPtr, align 8
  %71 = load i64*, i64** %gridPointPtr, align 8
  %72 = load i64*, i64** %dstGridPointPtr, align 8
  %73 = icmp eq i64* %71, %72
  br i1 %73, label %74, label %75

; <label>:74                                      ; preds = %67
  store i64 1, i64* %isPathFound, align 8
  br label %134

; <label>:75                                      ; preds = %67
  %76 = load %struct.grid*, %struct.grid** %2, align 8
  %77 = load i64*, i64** %gridPointPtr, align 8
  call void @grid_getPointIndices(%struct.grid* %76, i64* %77, i64* %x, i64* %y, i64* %z)
  %78 = load i64*, i64** %gridPointPtr, align 8
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %value, align 8
  %80 = load %struct.grid*, %struct.grid** %2, align 8
  %81 = load i64, i64* %x, align 8
  %82 = add nsw i64 %81, 1
  %83 = load i64, i64* %y, align 8
  %84 = load i64, i64* %z, align 8
  %85 = load i64, i64* %value, align 8
  %86 = load i64, i64* %xCost, align 8
  %87 = add nsw i64 %85, %86
  %88 = load %struct.queue*, %struct.queue** %3, align 8
  call void @PexpandToNeighbor(%struct.grid* %80, i64 %82, i64 %83, i64 %84, i64 %87, %struct.queue* %88)
  %89 = load %struct.grid*, %struct.grid** %2, align 8
  %90 = load i64, i64* %x, align 8
  %91 = sub nsw i64 %90, 1
  %92 = load i64, i64* %y, align 8
  %93 = load i64, i64* %z, align 8
  %94 = load i64, i64* %value, align 8
  %95 = load i64, i64* %xCost, align 8
  %96 = add nsw i64 %94, %95
  %97 = load %struct.queue*, %struct.queue** %3, align 8
  call void @PexpandToNeighbor(%struct.grid* %89, i64 %91, i64 %92, i64 %93, i64 %96, %struct.queue* %97)
  %98 = load %struct.grid*, %struct.grid** %2, align 8
  %99 = load i64, i64* %x, align 8
  %100 = load i64, i64* %y, align 8
  %101 = add nsw i64 %100, 1
  %102 = load i64, i64* %z, align 8
  %103 = load i64, i64* %value, align 8
  %104 = load i64, i64* %yCost, align 8
  %105 = add nsw i64 %103, %104
  %106 = load %struct.queue*, %struct.queue** %3, align 8
  call void @PexpandToNeighbor(%struct.grid* %98, i64 %99, i64 %101, i64 %102, i64 %105, %struct.queue* %106)
  %107 = load %struct.grid*, %struct.grid** %2, align 8
  %108 = load i64, i64* %x, align 8
  %109 = load i64, i64* %y, align 8
  %110 = sub nsw i64 %109, 1
  %111 = load i64, i64* %z, align 8
  %112 = load i64, i64* %value, align 8
  %113 = load i64, i64* %yCost, align 8
  %114 = add nsw i64 %112, %113
  %115 = load %struct.queue*, %struct.queue** %3, align 8
  call void @PexpandToNeighbor(%struct.grid* %107, i64 %108, i64 %110, i64 %111, i64 %114, %struct.queue* %115)
  %116 = load %struct.grid*, %struct.grid** %2, align 8
  %117 = load i64, i64* %x, align 8
  %118 = load i64, i64* %y, align 8
  %119 = load i64, i64* %z, align 8
  %120 = add nsw i64 %119, 1
  %121 = load i64, i64* %value, align 8
  %122 = load i64, i64* %zCost, align 8
  %123 = add nsw i64 %121, %122
  %124 = load %struct.queue*, %struct.queue** %3, align 8
  call void @PexpandToNeighbor(%struct.grid* %116, i64 %117, i64 %118, i64 %120, i64 %123, %struct.queue* %124)
  %125 = load %struct.grid*, %struct.grid** %2, align 8
  %126 = load i64, i64* %x, align 8
  %127 = load i64, i64* %y, align 8
  %128 = load i64, i64* %z, align 8
  %129 = sub nsw i64 %128, 1
  %130 = load i64, i64* %value, align 8
  %131 = load i64, i64* %zCost, align 8
  %132 = add nsw i64 %130, %131
  %133 = load %struct.queue*, %struct.queue** %3, align 8
  call void @PexpandToNeighbor(%struct.grid* %125, i64 %126, i64 %127, i64 %129, i64 %132, %struct.queue* %133)
  br label %62

; <label>:134                                     ; preds = %74, %62
  %135 = load i64, i64* %isPathFound, align 8
  ret i64 %135
}

; Function Attrs: nounwind uwtable
define internal %struct.vector* @PdoTraceback(%struct.grid* %gridPtr, %struct.grid* %myGridPtr, %struct.coordinate* %dstPtr, i64 %bendCost) #0 {
  %1 = alloca %struct.vector*, align 8
  %2 = alloca %struct.grid*, align 8
  %3 = alloca %struct.grid*, align 8
  %4 = alloca %struct.coordinate*, align 8
  %5 = alloca i64, align 8
  %pointVectorPtr = alloca %struct.vector*, align 8
  %next = alloca %struct.point, align 8
  %gridPointPtr = alloca i64*, align 8
  %curr = alloca %struct.point, align 8
  store %struct.grid* %gridPtr, %struct.grid** %2, align 8
  store %struct.grid* %myGridPtr, %struct.grid** %3, align 8
  store %struct.coordinate* %dstPtr, %struct.coordinate** %4, align 8
  store i64 %bendCost, i64* %5, align 8
  %6 = call %struct.vector* @Pvector_alloc(i64 1)
  store %struct.vector* %6, %struct.vector** %pointVectorPtr, align 8
  %7 = load %struct.vector*, %struct.vector** %pointVectorPtr, align 8
  %8 = icmp ne %struct.vector* %7, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  br label %12

; <label>:10                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 276, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.PdoTraceback, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %12

; <label>:12                                      ; preds = %11, %9
  %13 = load %struct.coordinate*, %struct.coordinate** %4, align 8
  %14 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.point, %struct.point* %next, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = load %struct.coordinate*, %struct.coordinate** %4, align 8
  %18 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.point, %struct.point* %next, i32 0, i32 1
  store i64 %19, i64* %20, align 8
  %21 = load %struct.coordinate*, %struct.coordinate** %4, align 8
  %22 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.point, %struct.point* %next, i32 0, i32 2
  store i64 %23, i64* %24, align 8
  %25 = load %struct.grid*, %struct.grid** %3, align 8
  %26 = getelementptr inbounds %struct.point, %struct.point* %next, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.point, %struct.point* %next, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.point, %struct.point* %next, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @grid_getPoint(%struct.grid* %25, i64 %27, i64 %29, i64 %31)
  %33 = getelementptr inbounds %struct.point, %struct.point* %next, i32 0, i32 3
  store i64 %32, i64* %33, align 8
  %34 = getelementptr inbounds %struct.point, %struct.point* %next, i32 0, i32 4
  store i32 0, i32* %34, align 8
  br label %35

; <label>:35                                      ; preds = %12, %127
  %36 = load %struct.grid*, %struct.grid** %2, align 8
  %37 = getelementptr inbounds %struct.point, %struct.point* %next, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.point, %struct.point* %next, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.point, %struct.point* %next, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i64* @grid_getPointRef(%struct.grid* %36, i64 %38, i64 %40, i64 %42)
  store i64* %43, i64** %gridPointPtr, align 8
  %44 = load %struct.vector*, %struct.vector** %pointVectorPtr, align 8
  %45 = load i64*, i64** %gridPointPtr, align 8
  %46 = bitcast i64* %45 to i8*
  %47 = call i64 @Pvector_pushBack(%struct.vector* %44, i8* %46)
  %48 = load %struct.grid*, %struct.grid** %3, align 8
  %49 = getelementptr inbounds %struct.point, %struct.point* %next, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.point, %struct.point* %next, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.point, %struct.point* %next, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  call void @grid_setPoint(%struct.grid* %48, i64 %50, i64 %52, i64 %54, i64 -2)
  %55 = getelementptr inbounds %struct.point, %struct.point* %next, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

; <label>:58                                      ; preds = %35
  br label %128

; <label>:59                                      ; preds = %35
  %60 = bitcast %struct.point* %curr to i8*
  %61 = bitcast %struct.point* %next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %61, i64 40, i32 8, i1 false)
  %62 = load %struct.grid*, %struct.grid** %3, align 8
  %63 = load i64, i64* %5, align 8
  call void @traceToNeighbor(%struct.grid* %62, %struct.point* %curr, %struct.point* @MOVE_POSX, i64 1, i64 %63, %struct.point* %next)
  %64 = load %struct.grid*, %struct.grid** %3, align 8
  %65 = load i64, i64* %5, align 8
  call void @traceToNeighbor(%struct.grid* %64, %struct.point* %curr, %struct.point* @MOVE_POSY, i64 1, i64 %65, %struct.point* %next)
  %66 = load %struct.grid*, %struct.grid** %3, align 8
  %67 = load i64, i64* %5, align 8
  call void @traceToNeighbor(%struct.grid* %66, %struct.point* %curr, %struct.point* @MOVE_POSZ, i64 1, i64 %67, %struct.point* %next)
  %68 = load %struct.grid*, %struct.grid** %3, align 8
  %69 = load i64, i64* %5, align 8
  call void @traceToNeighbor(%struct.grid* %68, %struct.point* %curr, %struct.point* @MOVE_NEGX, i64 1, i64 %69, %struct.point* %next)
  %70 = load %struct.grid*, %struct.grid** %3, align 8
  %71 = load i64, i64* %5, align 8
  call void @traceToNeighbor(%struct.grid* %70, %struct.point* %curr, %struct.point* @MOVE_NEGY, i64 1, i64 %71, %struct.point* %next)
  %72 = load %struct.grid*, %struct.grid** %3, align 8
  %73 = load i64, i64* %5, align 8
  call void @traceToNeighbor(%struct.grid* %72, %struct.point* %curr, %struct.point* @MOVE_NEGZ, i64 1, i64 %73, %struct.point* %next)
  %74 = getelementptr inbounds %struct.point, %struct.point* %curr, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.point, %struct.point* %next, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %75, %77
  br i1 %78, label %79, label %127

; <label>:79                                      ; preds = %59
  %80 = getelementptr inbounds %struct.point, %struct.point* %curr, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.point, %struct.point* %next, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %81, %83
  br i1 %84, label %85, label %127

; <label>:85                                      ; preds = %79
  %86 = getelementptr inbounds %struct.point, %struct.point* %curr, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.point, %struct.point* %next, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %87, %89
  br i1 %90, label %91, label %127

; <label>:91                                      ; preds = %85
  %92 = getelementptr inbounds %struct.point, %struct.point* %curr, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.point, %struct.point* %next, i32 0, i32 3
  store i64 %93, i64* %94, align 8
  %95 = load %struct.grid*, %struct.grid** %3, align 8
  %96 = load i64, i64* %5, align 8
  call void @traceToNeighbor(%struct.grid* %95, %struct.point* %curr, %struct.point* @MOVE_POSX, i64 0, i64 %96, %struct.point* %next)
  %97 = load %struct.grid*, %struct.grid** %3, align 8
  %98 = load i64, i64* %5, align 8
  call void @traceToNeighbor(%struct.grid* %97, %struct.point* %curr, %struct.point* @MOVE_POSY, i64 0, i64 %98, %struct.point* %next)
  %99 = load %struct.grid*, %struct.grid** %3, align 8
  %100 = load i64, i64* %5, align 8
  call void @traceToNeighbor(%struct.grid* %99, %struct.point* %curr, %struct.point* @MOVE_POSZ, i64 0, i64 %100, %struct.point* %next)
  %101 = load %struct.grid*, %struct.grid** %3, align 8
  %102 = load i64, i64* %5, align 8
  call void @traceToNeighbor(%struct.grid* %101, %struct.point* %curr, %struct.point* @MOVE_NEGX, i64 0, i64 %102, %struct.point* %next)
  %103 = load %struct.grid*, %struct.grid** %3, align 8
  %104 = load i64, i64* %5, align 8
  call void @traceToNeighbor(%struct.grid* %103, %struct.point* %curr, %struct.point* @MOVE_NEGY, i64 0, i64 %104, %struct.point* %next)
  %105 = load %struct.grid*, %struct.grid** %3, align 8
  %106 = load i64, i64* %5, align 8
  call void @traceToNeighbor(%struct.grid* %105, %struct.point* %curr, %struct.point* @MOVE_NEGZ, i64 0, i64 %106, %struct.point* %next)
  %107 = getelementptr inbounds %struct.point, %struct.point* %curr, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.point, %struct.point* %next, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %108, %110
  br i1 %111, label %112, label %126

; <label>:112                                     ; preds = %91
  %113 = getelementptr inbounds %struct.point, %struct.point* %curr, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.point, %struct.point* %next, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %114, %116
  br i1 %117, label %118, label %126

; <label>:118                                     ; preds = %112
  %119 = getelementptr inbounds %struct.point, %struct.point* %curr, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.point, %struct.point* %next, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %120, %122
  br i1 %123, label %124, label %126

; <label>:124                                     ; preds = %118
  %125 = load %struct.vector*, %struct.vector** %pointVectorPtr, align 8
  call void @Pvector_free(%struct.vector* %125)
  store %struct.vector* null, %struct.vector** %1, align 8
  br label %130

; <label>:126                                     ; preds = %118, %112, %91
  br label %127

; <label>:127                                     ; preds = %126, %85, %79, %59
  br label %35

; <label>:128                                     ; preds = %58
  %129 = load %struct.vector*, %struct.vector** %pointVectorPtr, align 8
  store %struct.vector* %129, %struct.vector** %1, align 8
  br label %130

; <label>:130                                     ; preds = %128, %124
  %131 = load %struct.vector*, %struct.vector** %1, align 8
  ret %struct.vector* %131
}

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

; Function Attrs: nounwind uwtable
define internal void @PexpandToNeighbor(%struct.grid* %myGridPtr, i64 %x, i64 %y, i64 %z, i64 %value, %struct.queue* %queuePtr) #0 {
  %1 = alloca %struct.grid*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.queue*, align 8
  %neighborGridPointPtr = alloca i64*, align 8
  %neighborValue = alloca i64, align 8
  store %struct.grid* %myGridPtr, %struct.grid** %1, align 8
  store i64 %x, i64* %2, align 8
  store i64 %y, i64* %3, align 8
  store i64 %z, i64* %4, align 8
  store i64 %value, i64* %5, align 8
  store %struct.queue* %queuePtr, %struct.queue** %6, align 8
  %7 = load %struct.grid*, %struct.grid** %1, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @grid_isPointValid(%struct.grid* %7, i64 %8, i64 %9, i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %47

; <label>:13                                      ; preds = %0
  %14 = load %struct.grid*, %struct.grid** %1, align 8
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i64* @grid_getPointRef(%struct.grid* %14, i64 %15, i64 %16, i64 %17)
  store i64* %18, i64** %neighborGridPointPtr, align 8
  %19 = load i64*, i64** %neighborGridPointPtr, align 8
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %neighborValue, align 8
  %21 = load i64, i64* %neighborValue, align 8
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %23, label %30

; <label>:23                                      ; preds = %13
  %24 = load i64, i64* %5, align 8
  %25 = load i64*, i64** %neighborGridPointPtr, align 8
  store i64 %24, i64* %25, align 8
  %26 = load %struct.queue*, %struct.queue** %6, align 8
  %27 = load i64*, i64** %neighborGridPointPtr, align 8
  %28 = bitcast i64* %27 to i8*
  %29 = call i64 @Pqueue_push(%struct.queue* %26, i8* %28)
  br label %46

; <label>:30                                      ; preds = %13
  %31 = load i64, i64* %neighborValue, align 8
  %32 = icmp ne i64 %31, -2
  br i1 %32, label %33, label %45

; <label>:33                                      ; preds = %30
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %neighborValue, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %44

; <label>:37                                      ; preds = %33
  %38 = load i64, i64* %5, align 8
  %39 = load i64*, i64** %neighborGridPointPtr, align 8
  store i64 %38, i64* %39, align 8
  %40 = load %struct.queue*, %struct.queue** %6, align 8
  %41 = load i64*, i64** %neighborGridPointPtr, align 8
  %42 = bitcast i64* %41 to i8*
  %43 = call i64 @Pqueue_push(%struct.queue* %40, i8* %42)
  br label %44

; <label>:44                                      ; preds = %37, %33
  br label %45

; <label>:45                                      ; preds = %44, %30
  br label %46

; <label>:46                                      ; preds = %45, %23
  br label %47

; <label>:47                                      ; preds = %46, %0
  ret void
}

declare i64 @grid_isPointValid(%struct.grid*, i64, i64, i64) #2

declare i64 @grid_getPoint(%struct.grid*, i64, i64, i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal void @traceToNeighbor(%struct.grid* %myGridPtr, %struct.point* %currPtr, %struct.point* %movePtr, i64 %useMomentum, i64 %bendCost, %struct.point* %nextPtr) #0 {
  %1 = alloca %struct.grid*, align 8
  %2 = alloca %struct.point*, align 8
  %3 = alloca %struct.point*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.point*, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %z = alloca i64, align 8
  %value = alloca i64, align 8
  %b = alloca i64, align 8
  store %struct.grid* %myGridPtr, %struct.grid** %1, align 8
  store %struct.point* %currPtr, %struct.point** %2, align 8
  store %struct.point* %movePtr, %struct.point** %3, align 8
  store i64 %useMomentum, i64* %4, align 8
  store i64 %bendCost, i64* %5, align 8
  store %struct.point* %nextPtr, %struct.point** %6, align 8
  %7 = load %struct.point*, %struct.point** %2, align 8
  %8 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.point*, %struct.point** %3, align 8
  %11 = getelementptr inbounds %struct.point, %struct.point* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %9, %12
  store i64 %13, i64* %x, align 8
  %14 = load %struct.point*, %struct.point** %2, align 8
  %15 = getelementptr inbounds %struct.point, %struct.point* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.point*, %struct.point** %3, align 8
  %18 = getelementptr inbounds %struct.point, %struct.point* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  store i64 %20, i64* %y, align 8
  %21 = load %struct.point*, %struct.point** %2, align 8
  %22 = getelementptr inbounds %struct.point, %struct.point* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.point*, %struct.point** %3, align 8
  %25 = getelementptr inbounds %struct.point, %struct.point* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  store i64 %27, i64* %z, align 8
  %28 = load %struct.grid*, %struct.grid** %1, align 8
  %29 = load i64, i64* %x, align 8
  %30 = load i64, i64* %y, align 8
  %31 = load i64, i64* %z, align 8
  %32 = call i64 @grid_isPointValid(%struct.grid* %28, i64 %29, i64 %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %93

; <label>:34                                      ; preds = %0
  %35 = load %struct.grid*, %struct.grid** %1, align 8
  %36 = load i64, i64* %x, align 8
  %37 = load i64, i64* %y, align 8
  %38 = load i64, i64* %z, align 8
  %39 = call i64 @grid_isPointEmpty(%struct.grid* %35, i64 %36, i64 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %93, label %41

; <label>:41                                      ; preds = %34
  %42 = load %struct.grid*, %struct.grid** %1, align 8
  %43 = load i64, i64* %x, align 8
  %44 = load i64, i64* %y, align 8
  %45 = load i64, i64* %z, align 8
  %46 = call i64 @grid_isPointFull(%struct.grid* %42, i64 %43, i64 %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %93, label %48

; <label>:48                                      ; preds = %41
  %49 = load %struct.grid*, %struct.grid** %1, align 8
  %50 = load i64, i64* %x, align 8
  %51 = load i64, i64* %y, align 8
  %52 = load i64, i64* %z, align 8
  %53 = call i64 @grid_getPoint(%struct.grid* %49, i64 %50, i64 %51, i64 %52)
  store i64 %53, i64* %value, align 8
  store i64 0, i64* %b, align 8
  %54 = load i64, i64* %4, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

; <label>:56                                      ; preds = %48
  %57 = load %struct.point*, %struct.point** %2, align 8
  %58 = getelementptr inbounds %struct.point, %struct.point* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.point*, %struct.point** %3, align 8
  %61 = getelementptr inbounds %struct.point, %struct.point* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %64, label %66

; <label>:64                                      ; preds = %56
  %65 = load i64, i64* %5, align 8
  store i64 %65, i64* %b, align 8
  br label %66

; <label>:66                                      ; preds = %64, %56, %48
  %67 = load i64, i64* %value, align 8
  %68 = load i64, i64* %b, align 8
  %69 = add nsw i64 %67, %68
  %70 = load %struct.point*, %struct.point** %6, align 8
  %71 = getelementptr inbounds %struct.point, %struct.point* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp sle i64 %69, %72
  br i1 %73, label %74, label %92

; <label>:74                                      ; preds = %66
  %75 = load i64, i64* %x, align 8
  %76 = load %struct.point*, %struct.point** %6, align 8
  %77 = getelementptr inbounds %struct.point, %struct.point* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* %y, align 8
  %79 = load %struct.point*, %struct.point** %6, align 8
  %80 = getelementptr inbounds %struct.point, %struct.point* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load i64, i64* %z, align 8
  %82 = load %struct.point*, %struct.point** %6, align 8
  %83 = getelementptr inbounds %struct.point, %struct.point* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = load i64, i64* %value, align 8
  %85 = load %struct.point*, %struct.point** %6, align 8
  %86 = getelementptr inbounds %struct.point, %struct.point* %85, i32 0, i32 3
  store i64 %84, i64* %86, align 8
  %87 = load %struct.point*, %struct.point** %3, align 8
  %88 = getelementptr inbounds %struct.point, %struct.point* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.point*, %struct.point** %6, align 8
  %91 = getelementptr inbounds %struct.point, %struct.point* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  br label %92

; <label>:92                                      ; preds = %74, %66
  br label %93

; <label>:93                                      ; preds = %92, %41, %34, %0
  ret void
}

declare void @Pvector_free(%struct.vector*) #2

declare i64 @grid_isPointEmpty(%struct.grid*, i64, i64, i64) #2

declare i64 @grid_isPointFull(%struct.grid*, i64, i64, i64) #2

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
