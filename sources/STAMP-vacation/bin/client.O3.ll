; ModuleID = '../bin/client.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._tm_thread_context_t = type { i32, i32, %struct.simple_metadata*, i32, i32, [44 x i8] }
%struct.simple_metadata = type opaque
%struct.client = type { i64, %struct.manager*, %struct.random*, i64, i64, i64, i64 }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }
%struct.manager = type { %struct.rbtree*, %struct.rbtree*, %struct.rbtree*, %struct.rbtree* }
%struct.rbtree = type opaque

@thread_contexts = external global %struct._tm_thread_context_t*, align 8
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"client.c\00", align 1
@__PRETTY_FUNCTION__.client_run = private unnamed_addr constant [24 x i8] c"void client_run(void *)\00", align 1

; Function Attrs: nounwind uwtable
define noalias %struct.client* @client_alloc(i64 %id, %struct.manager* %managerPtr, i64 %numOperation, i64 %numQueryPerTransaction, i64 %queryRange, i64 %percentUser) #0 {
  %1 = tail call noalias i8* @malloc(i64 56) #5
  %2 = bitcast i8* %1 to %struct.client*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %21, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call %struct.random* (...) @random_alloc() #5
  %6 = getelementptr inbounds i8, i8* %1, i64 16
  %7 = bitcast i8* %6 to %struct.random**
  store %struct.random* %5, %struct.random** %7, align 8
  %8 = icmp eq %struct.random* %5, null
  br i1 %8, label %21, label %9

; <label>:9                                       ; preds = %4
  %10 = bitcast i8* %1 to i64*
  store i64 %id, i64* %10, align 8
  %11 = getelementptr inbounds i8, i8* %1, i64 8
  %12 = bitcast i8* %11 to %struct.manager**
  store %struct.manager* %managerPtr, %struct.manager** %12, align 8
  tail call void @random_seed(%struct.random* nonnull %5, i64 %id) #5
  %13 = getelementptr inbounds i8, i8* %1, i64 24
  %14 = bitcast i8* %13 to i64*
  store i64 %numOperation, i64* %14, align 8
  %15 = getelementptr inbounds i8, i8* %1, i64 32
  %16 = bitcast i8* %15 to i64*
  store i64 %numQueryPerTransaction, i64* %16, align 8
  %17 = getelementptr inbounds i8, i8* %1, i64 40
  %18 = bitcast i8* %17 to i64*
  store i64 %queryRange, i64* %18, align 8
  %19 = getelementptr inbounds i8, i8* %1, i64 48
  %20 = bitcast i8* %19 to i64*
  store i64 %percentUser, i64* %20, align 8
  br label %21

; <label>:21                                      ; preds = %4, %0, %9
  %.0 = phi %struct.client* [ %2, %9 ], [ null, %0 ], [ null, %4 ]
  ret %struct.client* %.0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.random* @random_alloc(...) #2

declare void @random_seed(%struct.random*, i64) #2

; Function Attrs: nounwind uwtable
define void @client_free(%struct.client* nocapture %clientPtr) #0 {
  %1 = bitcast %struct.client* %clientPtr to i8*
  tail call void @free(i8* %1) #5
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @client_run(i8* nocapture readonly %argPtr) #0 {
  %maxPrices = alloca [3 x i64], align 16
  %maxIds = alloca [3 x i64], align 16
  %1 = tail call i64 (...) @thread_getId() #5
  %2 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %3 = tail call i64 (...) @thread_getId() #5
  %4 = trunc i64 %3 to i32
  tail call void @SimRoiStart(i32 %4) #5
  %5 = tail call i64 (...) @thread_getId() #5
  %6 = bitcast i8* %argPtr to %struct.client**
  %7 = getelementptr inbounds %struct.client*, %struct.client** %6, i64 %5
  %8 = load %struct.client*, %struct.client** %7, align 8
  %9 = getelementptr inbounds %struct.client, %struct.client* %8, i64 0, i32 1
  %10 = load %struct.manager*, %struct.manager** %9, align 8
  %11 = getelementptr inbounds %struct.client, %struct.client* %8, i64 0, i32 2
  %12 = load %struct.random*, %struct.random** %11, align 8
  %13 = getelementptr inbounds %struct.client, %struct.client* %8, i64 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.client, %struct.client* %8, i64 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.client, %struct.client* %8, i64 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.client, %struct.client* %8, i64 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = shl i64 %16, 3
  %22 = tail call noalias i8* @malloc(i64 %21) #5
  %23 = bitcast i8* %22 to i64*
  %24 = tail call noalias i8* @malloc(i64 %21) #5
  %25 = bitcast i8* %24 to i64*
  %26 = tail call noalias i8* @malloc(i64 %21) #5
  %27 = bitcast i8* %26 to i64*
  %28 = tail call noalias i8* @malloc(i64 %21) #5
  %29 = bitcast i8* %28 to i64*
  %30 = icmp sgt i64 %14, 0
  br i1 %30, label %.lr.ph31, label %.._crit_edge32_crit_edge

.._crit_edge32_crit_edge:                         ; preds = %0
  %.pre = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  br label %._crit_edge32

.lr.ph31:                                         ; preds = %0
  %31 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 0
  %32 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  %33 = bitcast [3 x i64]* %maxPrices to i8*
  %34 = bitcast [3 x i64]* %maxIds to i8*
  %35 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 0
  %36 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 1
  %37 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 2
  br label %38

; <label>:38                                      ; preds = %.lr.ph31, %226
  %i.029 = phi i64 [ 0, %.lr.ph31 ], [ %227, %226 ]
  %39 = load i32, i32* %31, align 8
  %40 = tail call i32 @workBegin(i32 0, i32 %39) #5
  store i32 %40, i32* %32, align 4
  %41 = tail call i64 @random_generate(%struct.random* %12) #5
  %42 = urem i64 %41, 100
  %43 = icmp slt i64 %42, %20
  %r.tr.i = trunc i64 %42 to i32
  %44 = and i32 %r.tr.i, 1
  %45 = sub nsw i32 2, %44
  %action.0.i = select i1 %43, i32 0, i32 %45
  switch i32 %action.0.i, label %225 [
    i32 0, label %46
    i32 1, label %127
    i32 2, label %155
  ]

; <label>:46                                      ; preds = %38
  call void @llvm.memset.p0i8.i64(i8* %33, i8 -1, i64 24, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %34, i8 -1, i64 24, i32 16, i1 false)
  %47 = tail call i64 @random_generate(%struct.random* %12) #5
  %48 = urem i64 %47, %16
  %49 = add i64 %48, 1
  %50 = tail call i64 @random_generate(%struct.random* %12) #5
  %51 = urem i64 %50, %18
  %52 = add i64 %51, 1
  %53 = icmp sgt i64 %49, 0
  br i1 %53, label %.lr.ph22.preheader, label %.outer.preheader

.lr.ph22.preheader:                               ; preds = %46
  br label %.lr.ph22

.lr.ph22:                                         ; preds = %.lr.ph22.preheader, %.lr.ph22
  %n.020 = phi i64 [ %61, %.lr.ph22 ], [ 0, %.lr.ph22.preheader ]
  %54 = tail call i64 @random_generate(%struct.random* %12) #5
  %55 = urem i64 %54, 3
  %56 = getelementptr inbounds i64, i64* %23, i64 %n.020
  store i64 %55, i64* %56, align 8
  %57 = tail call i64 @random_generate(%struct.random* %12) #5
  %58 = urem i64 %57, %18
  %59 = add i64 %58, 1
  %60 = getelementptr inbounds i64, i64* %25, i64 %n.020
  store i64 %59, i64* %60, align 8
  %61 = add nuw nsw i64 %n.020, 1
  %exitcond39 = icmp eq i64 %61, %49
  br i1 %exitcond39, label %.outer.preheader.loopexit, label %.lr.ph22

.outer.preheader.loopexit:                        ; preds = %.lr.ph22
  br label %.outer.preheader

.outer.preheader:                                 ; preds = %.outer.preheader.loopexit, %46
  br label %.outer

.lr.ph23:                                         ; preds = %.lr.ph23.preheader, %.lr.ph23
  tail call void @llvm.x86.sse2.pause() #5
  %62 = tail call i64 (...) @RTM_fallback_isLocked() #5
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %._crit_edge24.loopexit, label %.lr.ph23

._crit_edge24.loopexit:                           ; preds = %.lr.ph23
  br label %._crit_edge24

._crit_edge24:                                    ; preds = %._crit_edge24.loopexit, %.outer
  %64 = icmp slt i32 %tries.0.ph, 2
  br i1 %64, label %65, label %66

; <label>:65                                      ; preds = %._crit_edge24
  %tries.0.ph.lcssa = phi i32 [ %tries.0.ph, %._crit_edge24 ]
  tail call void (...) @RTM_fallback_lock() #5
  br label %.preheader

; <label>:66                                      ; preds = %._crit_edge24
  %67 = add nsw i32 %tries.0.ph, -1
  %68 = tail call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0, i64 0, i64 4294967295) #5, !srcloc !1
  %69 = trunc i64 %68 to i32
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %73, label %.outer

.outer:                                           ; preds = %.outer.preheader, %66
  %tries.0.ph = phi i32 [ %67, %66 ], [ 9, %.outer.preheader ]
  %71 = tail call i64 (...) @RTM_fallback_isLocked() #5
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %._crit_edge24, label %.lr.ph23.preheader

.lr.ph23.preheader:                               ; preds = %.outer
  br label %.lr.ph23

; <label>:73                                      ; preds = %66
  %tries.0.ph.lcssa62 = phi i32 [ %tries.0.ph, %66 ]
  %74 = tail call i64 (...) @RTM_fallback_isLocked() #5
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %.preheader, label %76

; <label>:76                                      ; preds = %73
  tail call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !2
  br label %.preheader

.preheader:                                       ; preds = %73, %76, %65
  %tries.0.ph63 = phi i32 [ %tries.0.ph.lcssa62, %73 ], [ %tries.0.ph.lcssa62, %76 ], [ %tries.0.ph.lcssa, %65 ]
  br i1 %53, label %.lr.ph27.preheader, label %._crit_edge28.thread

.lr.ph27.preheader:                               ; preds = %.preheader
  br label %.lr.ph27

.lr.ph27:                                         ; preds = %.lr.ph27.preheader, %103
  %n.126 = phi i64 [ %104, %103 ], [ 0, %.lr.ph27.preheader ]
  %isFound.025 = phi i64 [ %isFound.1, %103 ], [ 0, %.lr.ph27.preheader ]
  %77 = getelementptr inbounds i64, i64* %23, i64 %n.126
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i64, i64* %25, i64 %n.126
  %80 = load i64, i64* %79, align 8
  switch i64 %78, label %96 [
    i64 0, label %81
    i64 1, label %86
    i64 2, label %91
  ]

; <label>:81                                      ; preds = %.lr.ph27
  %82 = tail call i64 @manager_queryCar(%struct.manager* %10, i64 %80) #7
  %83 = icmp sgt i64 %82, -1
  br i1 %83, label %84, label %97

; <label>:84                                      ; preds = %81
  %85 = tail call i64 @manager_queryCarPrice(%struct.manager* %10, i64 %80) #5
  br label %97

; <label>:86                                      ; preds = %.lr.ph27
  %87 = tail call i64 @manager_queryFlight(%struct.manager* %10, i64 %80) #7
  %88 = icmp sgt i64 %87, -1
  br i1 %88, label %89, label %97

; <label>:89                                      ; preds = %86
  %90 = tail call i64 @manager_queryFlightPrice(%struct.manager* %10, i64 %80) #5
  br label %97

; <label>:91                                      ; preds = %.lr.ph27
  %92 = tail call i64 @manager_queryRoom(%struct.manager* %10, i64 %80) #7
  %93 = icmp sgt i64 %92, -1
  br i1 %93, label %94, label %97

; <label>:94                                      ; preds = %91
  %95 = tail call i64 @manager_queryRoomPrice(%struct.manager* %10, i64 %80) #5
  br label %97

; <label>:96                                      ; preds = %.lr.ph27
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 220, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.client_run, i64 0, i64 0)) #8
  unreachable

; <label>:97                                      ; preds = %91, %94, %86, %89, %81, %84
  %price.0 = phi i64 [ %95, %94 ], [ -1, %91 ], [ %90, %89 ], [ -1, %86 ], [ %85, %84 ], [ -1, %81 ]
  %98 = getelementptr inbounds [3 x i64], [3 x i64]* %maxPrices, i64 0, i64 %78
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %price.0, %99
  br i1 %100, label %101, label %103

; <label>:101                                     ; preds = %97
  store i64 %price.0, i64* %98, align 8
  %102 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 %78
  store i64 %80, i64* %102, align 8
  br label %103

; <label>:103                                     ; preds = %97, %101
  %isFound.1 = phi i64 [ 1, %101 ], [ %isFound.025, %97 ]
  %104 = add nuw nsw i64 %n.126, 1
  %105 = icmp slt i64 %104, %49
  br i1 %105, label %.lr.ph27, label %._crit_edge28, !llvm.loop !3

._crit_edge28:                                    ; preds = %103
  %isFound.1.lcssa = phi i64 [ %isFound.1, %103 ]
  %106 = icmp eq i64 %isFound.1.lcssa, 0
  br i1 %106, label %._crit_edge28.thread, label %107

; <label>:107                                     ; preds = %._crit_edge28
  %108 = tail call i64 @manager_addCustomer(%struct.manager* %10, i64 %52) #5
  br label %._crit_edge28.thread

._crit_edge28.thread:                             ; preds = %.preheader, %._crit_edge28, %107
  %109 = load i64, i64* %35, align 16
  %110 = icmp sgt i64 %109, 0
  br i1 %110, label %111, label %113

; <label>:111                                     ; preds = %._crit_edge28.thread
  %112 = tail call i64 @manager_reserveCar(%struct.manager* %10, i64 %52, i64 %109) #5
  br label %113

; <label>:113                                     ; preds = %111, %._crit_edge28.thread
  %114 = load i64, i64* %36, align 8
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %118

; <label>:116                                     ; preds = %113
  %117 = tail call i64 @manager_reserveFlight(%struct.manager* %10, i64 %52, i64 %114) #5
  br label %118

; <label>:118                                     ; preds = %116, %113
  %119 = load i64, i64* %37, align 16
  %120 = icmp sgt i64 %119, 0
  br i1 %120, label %121, label %123

; <label>:121                                     ; preds = %118
  %122 = tail call i64 @manager_reserveRoom(%struct.manager* %10, i64 %52, i64 %119) #5
  br label %123

; <label>:123                                     ; preds = %121, %118
  %124 = icmp sgt i32 %tries.0.ph63, 1
  br i1 %124, label %125, label %126

; <label>:125                                     ; preds = %123
  tail call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !srcloc !5
  br label %226

; <label>:126                                     ; preds = %123
  tail call void (...) @RTM_fallback_unlock() #5
  br label %226

; <label>:127                                     ; preds = %38
  %128 = tail call i64 @random_generate(%struct.random* %12) #5
  %129 = urem i64 %128, %18
  %130 = add i64 %129, 1
  br label %.outer2

.outer2:                                          ; preds = %137, %127
  %tries3.0.ph = phi i32 [ %138, %137 ], [ 9, %127 ]
  %131 = tail call i64 (...) @RTM_fallback_isLocked() #5
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %._crit_edge19, label %.lr.ph18.preheader

.lr.ph18.preheader:                               ; preds = %.outer2
  br label %.lr.ph18

.lr.ph18:                                         ; preds = %.lr.ph18.preheader, %.lr.ph18
  tail call void @llvm.x86.sse2.pause() #5
  %133 = tail call i64 (...) @RTM_fallback_isLocked() #5
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %._crit_edge19.loopexit, label %.lr.ph18

._crit_edge19.loopexit:                           ; preds = %.lr.ph18
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %._crit_edge19.loopexit, %.outer2
  %135 = icmp slt i32 %tries3.0.ph, 2
  br i1 %135, label %136, label %137

; <label>:136                                     ; preds = %._crit_edge19
  %tries3.0.ph.lcssa = phi i32 [ %tries3.0.ph, %._crit_edge19 ]
  tail call void (...) @RTM_fallback_lock() #5
  br label %146

; <label>:137                                     ; preds = %._crit_edge19
  %138 = add nsw i32 %tries3.0.ph, -1
  %139 = tail call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 0, i64 1, i64 4294967295) #5, !srcloc !1
  %140 = trunc i64 %139 to i32
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %142, label %.outer2

; <label>:142                                     ; preds = %137
  %tries3.0.ph.lcssa60 = phi i32 [ %tries3.0.ph, %137 ]
  %143 = tail call i64 (...) @RTM_fallback_isLocked() #5
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %146, label %145

; <label>:145                                     ; preds = %142
  tail call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !2
  br label %146

; <label>:146                                     ; preds = %142, %145, %136
  %tries3.0.ph61 = phi i32 [ %tries3.0.ph.lcssa60, %142 ], [ %tries3.0.ph.lcssa60, %145 ], [ %tries3.0.ph.lcssa, %136 ]
  %147 = tail call i64 @manager_queryCustomerBill(%struct.manager* %10, i64 %130) #5
  %148 = icmp sgt i64 %147, -1
  br i1 %148, label %149, label %151

; <label>:149                                     ; preds = %146
  %150 = tail call i64 @manager_deleteCustomer(%struct.manager* %10, i64 %130) #5
  br label %151

; <label>:151                                     ; preds = %149, %146
  %152 = icmp sgt i32 %tries3.0.ph61, 1
  br i1 %152, label %153, label %154

; <label>:153                                     ; preds = %151
  tail call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 1) #5, !srcloc !5
  br label %226

; <label>:154                                     ; preds = %151
  tail call void (...) @RTM_fallback_unlock() #5
  br label %226

; <label>:155                                     ; preds = %38
  %156 = tail call i64 @random_generate(%struct.random* %12) #5
  %157 = urem i64 %156, %16
  %158 = add i64 %157, 1
  %159 = icmp sgt i64 %158, 0
  br i1 %159, label %.lr.ph.preheader, label %.outer5.preheader

.lr.ph.preheader:                                 ; preds = %155
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %177
  %n4.013 = phi i64 [ %178, %177 ], [ 0, %.lr.ph.preheader ]
  %160 = tail call i64 @random_generate(%struct.random* %12) #5
  %161 = urem i64 %160, 3
  %162 = getelementptr inbounds i64, i64* %23, i64 %n4.013
  store i64 %161, i64* %162, align 8
  %163 = tail call i64 @random_generate(%struct.random* %12) #5
  %164 = urem i64 %163, %18
  %165 = add i64 %164, 1
  %166 = getelementptr inbounds i64, i64* %25, i64 %n4.013
  store i64 %165, i64* %166, align 8
  %167 = tail call i64 @random_generate(%struct.random* %12) #5
  %168 = and i64 %167, 1
  %169 = getelementptr inbounds i64, i64* %27, i64 %n4.013
  store i64 %168, i64* %169, align 8
  %170 = icmp eq i64 %168, 0
  br i1 %170, label %177, label %171

; <label>:171                                     ; preds = %.lr.ph
  %172 = tail call i64 @random_generate(%struct.random* %12) #5
  %173 = urem i64 %172, 5
  %174 = mul nuw nsw i64 %173, 10
  %175 = add nuw nsw i64 %174, 50
  %176 = getelementptr inbounds i64, i64* %29, i64 %n4.013
  store i64 %175, i64* %176, align 8
  br label %177

; <label>:177                                     ; preds = %.lr.ph, %171
  %178 = add nuw nsw i64 %n4.013, 1
  %exitcond = icmp eq i64 %178, %158
  br i1 %exitcond, label %.outer5.preheader.loopexit, label %.lr.ph

.outer5.preheader.loopexit:                       ; preds = %177
  br label %.outer5.preheader

.outer5.preheader:                                ; preds = %.outer5.preheader.loopexit, %155
  br label %.outer5

.lr.ph14:                                         ; preds = %.lr.ph14.preheader, %.lr.ph14
  tail call void @llvm.x86.sse2.pause() #5
  %179 = tail call i64 (...) @RTM_fallback_isLocked() #5
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %._crit_edge.loopexit, label %.lr.ph14

._crit_edge.loopexit:                             ; preds = %.lr.ph14
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.outer5
  %181 = icmp slt i32 %tries6.0.ph, 2
  br i1 %181, label %182, label %183

; <label>:182                                     ; preds = %._crit_edge
  %tries6.0.ph.lcssa = phi i32 [ %tries6.0.ph, %._crit_edge ]
  tail call void (...) @RTM_fallback_lock() #5
  br label %.preheader3

; <label>:183                                     ; preds = %._crit_edge
  %184 = add nsw i32 %tries6.0.ph, -1
  %185 = tail call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 0, i64 2, i64 4294967295) #5, !srcloc !1
  %186 = trunc i64 %185 to i32
  %187 = icmp eq i32 %186, -1
  br i1 %187, label %190, label %.outer5

.outer5:                                          ; preds = %.outer5.preheader, %183
  %tries6.0.ph = phi i32 [ %184, %183 ], [ 9, %.outer5.preheader ]
  %188 = tail call i64 (...) @RTM_fallback_isLocked() #5
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %._crit_edge, label %.lr.ph14.preheader

.lr.ph14.preheader:                               ; preds = %.outer5
  br label %.lr.ph14

; <label>:190                                     ; preds = %183
  %tries6.0.ph.lcssa58 = phi i32 [ %tries6.0.ph, %183 ]
  %191 = tail call i64 (...) @RTM_fallback_isLocked() #5
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %.preheader3, label %193

; <label>:193                                     ; preds = %190
  tail call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !2
  br label %.preheader3

.preheader3:                                      ; preds = %190, %193, %182
  %tries6.0.ph59 = phi i32 [ %tries6.0.ph.lcssa58, %190 ], [ %tries6.0.ph.lcssa58, %193 ], [ %tries6.0.ph.lcssa, %182 ]
  br i1 %159, label %.lr.ph16.preheader, label %._crit_edge17

.lr.ph16.preheader:                               ; preds = %.preheader3
  br label %.lr.ph16

.lr.ph16:                                         ; preds = %.lr.ph16.preheader, %219
  %n4.115 = phi i64 [ %220, %219 ], [ 0, %.lr.ph16.preheader ]
  %194 = getelementptr inbounds i64, i64* %23, i64 %n4.115
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds i64, i64* %25, i64 %n4.115
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds i64, i64* %27, i64 %n4.115
  %199 = load i64, i64* %198, align 8
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %211, label %201

; <label>:201                                     ; preds = %.lr.ph16
  %202 = getelementptr inbounds i64, i64* %29, i64 %n4.115
  %203 = load i64, i64* %202, align 8
  switch i64 %195, label %210 [
    i64 0, label %204
    i64 1, label %206
    i64 2, label %208
  ]

; <label>:204                                     ; preds = %201
  %205 = tail call i64 @manager_addCar(%struct.manager* %10, i64 %197, i64 100, i64 %203) #5
  br label %219

; <label>:206                                     ; preds = %201
  %207 = tail call i64 @manager_addFlight(%struct.manager* %10, i64 %197, i64 100, i64 %203) #5
  br label %219

; <label>:208                                     ; preds = %201
  %209 = tail call i64 @manager_addRoom(%struct.manager* %10, i64 %197, i64 100, i64 %203) #5
  br label %219

; <label>:210                                     ; preds = %201
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 288, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.client_run, i64 0, i64 0)) #8
  unreachable

; <label>:211                                     ; preds = %.lr.ph16
  switch i64 %195, label %218 [
    i64 0, label %212
    i64 1, label %214
    i64 2, label %216
  ]

; <label>:212                                     ; preds = %211
  %213 = tail call i64 @manager_deleteCar(%struct.manager* %10, i64 %197, i64 100) #5
  br label %219

; <label>:214                                     ; preds = %211
  %215 = tail call i64 @manager_deleteFlight(%struct.manager* %10, i64 %197) #5
  br label %219

; <label>:216                                     ; preds = %211
  %217 = tail call i64 @manager_deleteRoom(%struct.manager* %10, i64 %197, i64 100) #5
  br label %219

; <label>:218                                     ; preds = %211
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 302, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.client_run, i64 0, i64 0)) #8
  unreachable

; <label>:219                                     ; preds = %208, %206, %204, %216, %214, %212
  %220 = add nuw nsw i64 %n4.115, 1
  %221 = icmp slt i64 %220, %158
  br i1 %221, label %.lr.ph16, label %._crit_edge17.loopexit, !llvm.loop !6

._crit_edge17.loopexit:                           ; preds = %219
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %._crit_edge17.loopexit, %.preheader3
  %222 = icmp sgt i32 %tries6.0.ph59, 1
  br i1 %222, label %223, label %224

; <label>:223                                     ; preds = %._crit_edge17
  tail call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 2) #5, !srcloc !5
  br label %226

; <label>:224                                     ; preds = %._crit_edge17
  tail call void (...) @RTM_fallback_unlock() #5
  br label %226

; <label>:225                                     ; preds = %38
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 311, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.client_run, i64 0, i64 0)) #8
  unreachable

; <label>:226                                     ; preds = %126, %125, %154, %153, %224, %223
  tail call void @workEnd(i32 0, i32 0) #5
  %227 = add nuw nsw i64 %i.029, 1
  %228 = icmp slt i64 %227, %14
  br i1 %228, label %38, label %._crit_edge32.loopexit

._crit_edge32.loopexit:                           ; preds = %226
  br label %._crit_edge32

._crit_edge32:                                    ; preds = %._crit_edge32.loopexit, %.._crit_edge32_crit_edge
  %.pre-phi = phi i32* [ %.pre, %.._crit_edge32_crit_edge ], [ %32, %._crit_edge32.loopexit ]
  %229 = tail call i64 (...) @thread_getId() #5
  %230 = trunc i64 %229 to i32
  %231 = load i32, i32* %.pre-phi, align 4
  tail call void @SimRoiEnd(i32 %230, i32 %231) #5
  ret void
}

declare i64 @thread_getId(...) #2

declare void @SimRoiStart(i32) #2

declare i32 @workBegin(i32, i32) #2

declare i64 @random_generate(%struct.random*) #2

declare i64 @RTM_fallback_isLocked(...) #2

declare void @RTM_fallback_lock(...) #2

; Function Attrs: nounwind readonly
declare i64 @manager_queryCar(%struct.manager*, i64) #3

declare i64 @manager_queryCarPrice(%struct.manager*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @manager_queryFlight(%struct.manager*, i64) #3

declare i64 @manager_queryFlightPrice(%struct.manager*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @manager_queryRoom(%struct.manager*, i64) #3

declare i64 @manager_queryRoomPrice(%struct.manager*, i64) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

declare i64 @manager_addCustomer(%struct.manager*, i64) #2

declare i64 @manager_reserveCar(%struct.manager*, i64, i64) #2

declare i64 @manager_reserveFlight(%struct.manager*, i64, i64) #2

declare i64 @manager_reserveRoom(%struct.manager*, i64, i64) #2

declare void @RTM_fallback_unlock(...) #2

declare i64 @manager_queryCustomerBill(%struct.manager*, i64) #2

declare i64 @manager_deleteCustomer(%struct.manager*, i64) #2

declare i64 @manager_addCar(%struct.manager*, i64, i64, i64) #2

declare i64 @manager_addFlight(%struct.manager*, i64, i64, i64) #2

declare i64 @manager_addRoom(%struct.manager*, i64, i64, i64) #2

declare i64 @manager_deleteCar(%struct.manager*, i64, i64) #2

declare i64 @manager_deleteFlight(%struct.manager*, i64) #2

declare i64 @manager_deleteRoom(%struct.manager*, i64, i64) #2

declare void @workEnd(i32, i32) #2

declare void @SimRoiEnd(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 1451375, i32 1451391, i32 1451427, i32 1451463, i32 1451499}
!2 = !{i32 1451976, i32 1451991, i32 1452025}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.vectorize.width", i32 1337}
!5 = !{i32 1451747, i32 1451762, i32 1451790}
!6 = distinct !{!6, !4}
