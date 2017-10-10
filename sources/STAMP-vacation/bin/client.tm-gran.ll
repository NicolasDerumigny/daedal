; ModuleID = '../bin/client.marked.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._tm_thread_context_t = type { i32, i32, %struct.simple_metadata*, i32, i32, [44 x i8] }
%struct.simple_metadata = type opaque
%struct.client = type { i64, %struct.manager*, %struct.random*, i64, i64, i64, i64 }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }
%struct.manager = type { %struct.rbtree*, %struct.rbtree*, %struct.rbtree*, %struct.rbtree* }
%struct.rbtree = type opaque

@thread_contexts = external global %struct._tm_thread_context_t*, align 8
@client_run.maxPrices = private unnamed_addr constant [3 x i64] [i64 -1, i64 -1, i64 -1], align 16
@client_run.maxIds = private unnamed_addr constant [3 x i64] [i64 -1, i64 -1, i64 -1], align 16
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"client.c\00", align 1
@__PRETTY_FUNCTION__.client_run = private unnamed_addr constant [24 x i8] c"void client_run(void *)\00", align 1

; Function Attrs: nounwind uwtable
define %struct.client* @client_alloc(i64 %id, %struct.manager* %managerPtr, i64 %numOperation, i64 %numQueryPerTransaction, i64 %queryRange, i64 %percentUser) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call noalias i8* @malloc(i64 56) #6
  %2 = bitcast i8* %1 to %struct.client*
  %3 = icmp eq %struct.client* %2, null
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  br label %21

; <label>:5                                       ; preds = %0
  %6 = call %struct.random* (...) @random_alloc()
  %7 = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 2
  store %struct.random* %6, %struct.random** %7, align 8
  %8 = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 2
  %9 = load %struct.random*, %struct.random** %8, align 8
  %10 = icmp eq %struct.random* %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %5
  br label %21

; <label>:12                                      ; preds = %5
  %13 = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 0
  store i64 %id, i64* %13, align 8
  %14 = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 1
  store %struct.manager* %managerPtr, %struct.manager** %14, align 8
  %15 = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 2
  %16 = load %struct.random*, %struct.random** %15, align 8
  call void @random_seed(%struct.random* %16, i64 %id)
  %17 = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 3
  store i64 %numOperation, i64* %17, align 8
  %18 = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 4
  store i64 %numQueryPerTransaction, i64* %18, align 8
  %19 = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 5
  store i64 %queryRange, i64* %19, align 8
  %20 = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 6
  store i64 %percentUser, i64* %20, align 8
  br label %21

; <label>:21                                      ; preds = %12, %11, %4
  %.0 = phi %struct.client* [ null, %4 ], [ null, %11 ], [ %2, %12 ]
  ret %struct.client* %.0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.random* @random_alloc(...) #2

declare void @random_seed(%struct.random*, i64) #2

; Function Attrs: nounwind uwtable
define void @client_free(%struct.client* %clientPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = bitcast %struct.client* %clientPtr to i8*
  call void @free(i8* %1) #6
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @client_run(i8* %argPtr) #0 {
  %maxPrices = alloca [3 x i64], align 16
  %maxIds = alloca [3 x i64], align 16
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i64 (...) @thread_getId()
  %2 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %3 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1
  br label %4

; <label>:4                                       ; preds = %0
  %5 = call i64 (...) @thread_getId()
  %6 = trunc i64 %5 to i32
  call void @SimRoiStart(i32 %6)
  br label %7

; <label>:7                                       ; preds = %4
  %8 = call i64 (...) @thread_getId()
  %9 = bitcast i8* %argPtr to %struct.client**
  %10 = getelementptr inbounds %struct.client*, %struct.client** %9, i64 %8
  %11 = load %struct.client*, %struct.client** %10, align 8
  %12 = getelementptr inbounds %struct.client, %struct.client* %11, i32 0, i32 1
  %13 = load %struct.manager*, %struct.manager** %12, align 8
  %14 = getelementptr inbounds %struct.client, %struct.client* %11, i32 0, i32 2
  %15 = load %struct.random*, %struct.random** %14, align 8
  %16 = getelementptr inbounds %struct.client, %struct.client* %11, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.client, %struct.client* %11, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.client, %struct.client* %11, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.client, %struct.client* %11, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = mul i64 %19, 8
  %25 = call noalias i8* @malloc(i64 %24) #6
  %26 = bitcast i8* %25 to i64*
  %27 = mul i64 %19, 8
  %28 = call noalias i8* @malloc(i64 %27) #6
  %29 = bitcast i8* %28 to i64*
  %30 = mul i64 %19, 8
  %31 = call noalias i8* @malloc(i64 %30) #6
  %32 = bitcast i8* %31 to i64*
  %33 = mul i64 %19, 8
  %34 = call noalias i8* @malloc(i64 %33) #6
  %35 = bitcast i8* %34 to i64*
  %36 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 0
  %37 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 4
  %38 = bitcast [3 x i64]* %maxPrices to i8*
  %39 = bitcast [3 x i64]* %maxIds to i8*
  %40 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 0
  %41 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 0
  %42 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 1
  %43 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 1
  %44 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 2
  %45 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 2
  br label %46

; <label>:46                                      ; preds = %282, %7
  %i.0 = phi i64 [ 0, %7 ], [ %283, %282 ]
  %47 = icmp slt i64 %i.0, %17
  br i1 %47, label %48, label %284

; <label>:48                                      ; preds = %46
  br label %49

; <label>:49                                      ; preds = %48
  %50 = load i32, i32* %36, align 8
  %51 = call i32 @workBegin(i32 0, i32 %50)
  store i32 %51, i32* %37, align 4
  br label %52

; <label>:52                                      ; preds = %49
  %53 = call i64 @random_generate(%struct.random* %15)
  %54 = urem i64 %53, 100
  %55 = call i32 @selectAction(i64 %54, i64 %23)
  switch i32 %55, label %278 [
    i32 0, label %56
    i32 1, label %158
    i32 2, label %191
  ]

; <label>:56                                      ; preds = %52
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* bitcast ([3 x i64]* @client_run.maxPrices to i8*), i64 24, i32 16, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* bitcast ([3 x i64]* @client_run.maxIds to i8*), i64 24, i32 16, i1 false)
  %57 = call i64 @random_generate(%struct.random* %15)
  %58 = urem i64 %57, %19
  %59 = add i64 %58, 1
  %60 = call i64 @random_generate(%struct.random* %15)
  %61 = urem i64 %60, %21
  %62 = add i64 %61, 1
  br label %63

; <label>:63                                      ; preds = %73, %56
  %n.0 = phi i64 [ 0, %56 ], [ %74, %73 ]
  %64 = icmp slt i64 %n.0, %59
  br i1 %64, label %65, label %75

; <label>:65                                      ; preds = %63
  %66 = call i64 @random_generate(%struct.random* %15)
  %67 = urem i64 %66, 3
  %68 = getelementptr inbounds i64, i64* %26, i64 %n.0
  store i64 %67, i64* %68, align 8
  %69 = call i64 @random_generate(%struct.random* %15)
  %70 = urem i64 %69, %21
  %71 = add i64 %70, 1
  %72 = getelementptr inbounds i64, i64* %29, i64 %n.0
  store i64 %71, i64* %72, align 8
  br label %73

; <label>:73                                      ; preds = %65
  %74 = add nsw i64 %n.0, 1
  br label %63

; <label>:75                                      ; preds = %63
  br label %76

; <label>:76                                      ; preds = %89, %75
  %tries.0 = phi i32 [ 9, %75 ], [ %82, %89 ]
  br label %77

; <label>:77                                      ; preds = %80, %76
  %78 = call i64 (...) @RTM_fallback_isLocked()
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

; <label>:80                                      ; preds = %77
  call void @llvm.x86.sse2.pause() #6
  br label %77

; <label>:81                                      ; preds = %77
  %82 = add nsw i32 %tries.0, -1
  %83 = icmp sle i32 %82, 0
  br i1 %83, label %84, label %85

; <label>:84                                      ; preds = %81
  call void (...) @RTM_fallback_lock()
  br label %95

; <label>:85                                      ; preds = %81
  %86 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0, i64 0, i64 4294967295) #6, !srcloc !1
  %87 = trunc i64 %86 to i32
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %90

; <label>:89                                      ; preds = %85
  br label %76

; <label>:90                                      ; preds = %85
  %91 = call i64 (...) @RTM_fallback_isLocked()
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %._crit_edge

._crit_edge:                                      ; preds = %90
  br label %94

; <label>:93                                      ; preds = %90
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %94

; <label>:94                                      ; preds = %._crit_edge, %93
  br label %95

; <label>:95                                      ; preds = %94, %84
  br label %__kernel__client_run1

__kernel__client_run1:                            ; preds = %129, %95
  %n.1 = phi i64 [ 0, %95 ], [ %130, %129 ]
  %isFound.0 = phi i64 [ 0, %95 ], [ %isFound.1, %129 ]
  %96 = icmp slt i64 %n.1, %59
  br i1 %96, label %97, label %131

; <label>:97                                      ; preds = %__kernel__client_run1
  %98 = getelementptr inbounds i64, i64* %26, i64 %n.1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i64, i64* %29, i64 %n.1
  %101 = load i64, i64* %100, align 8
  switch i64 %99, label %120 [
    i64 0, label %102
    i64 1, label %108
    i64 2, label %114
  ]

; <label>:102                                     ; preds = %97
  %103 = call i64 @manager_queryCar(%struct.manager* %13, i64 %101) #7
  %104 = icmp sge i64 %103, 0
  br i1 %104, label %105, label %._crit_edge1

._crit_edge1:                                     ; preds = %102
  br label %107

; <label>:105                                     ; preds = %102
  %106 = call i64 @manager_queryCarPrice(%struct.manager* %13, i64 %101)
  br label %107

; <label>:107                                     ; preds = %._crit_edge1, %105
  %price.0 = phi i64 [ %106, %105 ], [ -1, %._crit_edge1 ]
  br label %121

; <label>:108                                     ; preds = %97
  %109 = call i64 @manager_queryFlight(%struct.manager* %13, i64 %101) #7
  %110 = icmp sge i64 %109, 0
  br i1 %110, label %111, label %._crit_edge2

._crit_edge2:                                     ; preds = %108
  br label %113

; <label>:111                                     ; preds = %108
  %112 = call i64 @manager_queryFlightPrice(%struct.manager* %13, i64 %101)
  br label %113

; <label>:113                                     ; preds = %._crit_edge2, %111
  %price.1 = phi i64 [ %112, %111 ], [ -1, %._crit_edge2 ]
  br label %121

; <label>:114                                     ; preds = %97
  %115 = call i64 @manager_queryRoom(%struct.manager* %13, i64 %101) #7
  %116 = icmp sge i64 %115, 0
  br i1 %116, label %117, label %._crit_edge3

._crit_edge3:                                     ; preds = %114
  br label %119

; <label>:117                                     ; preds = %114
  %118 = call i64 @manager_queryRoomPrice(%struct.manager* %13, i64 %101)
  br label %119

; <label>:119                                     ; preds = %._crit_edge3, %117
  %price.2 = phi i64 [ %118, %117 ], [ -1, %._crit_edge3 ]
  br label %121

; <label>:120                                     ; preds = %97
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 220, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.client_run, i32 0, i32 0)) #8
  unreachable

; <label>:121                                     ; preds = %119, %113, %107
  %price.3 = phi i64 [ %price.2, %119 ], [ %price.1, %113 ], [ %price.0, %107 ]
  %122 = getelementptr inbounds [3 x i64], [3 x i64]* %maxPrices, i64 0, i64 %99
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %price.3, %123
  br i1 %124, label %125, label %._crit_edge4

._crit_edge4:                                     ; preds = %121
  br label %128

; <label>:125                                     ; preds = %121
  %126 = getelementptr inbounds [3 x i64], [3 x i64]* %maxPrices, i64 0, i64 %99
  store i64 %price.3, i64* %126, align 8
  %127 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 %99
  store i64 %101, i64* %127, align 8
  br label %128

; <label>:128                                     ; preds = %._crit_edge4, %125
  %isFound.1 = phi i64 [ 1, %125 ], [ %isFound.0, %._crit_edge4 ]
  br label %129

; <label>:129                                     ; preds = %128
  %130 = add nsw i64 %n.1, 1
  br label %__kernel__client_run1, !llvm.loop !3

; <label>:131                                     ; preds = %__kernel__client_run1
  %132 = icmp ne i64 %isFound.0, 0
  br i1 %132, label %133, label %._crit_edge5

._crit_edge5:                                     ; preds = %131
  br label %135

; <label>:133                                     ; preds = %131
  %134 = call i64 @manager_addCustomer(%struct.manager* %13, i64 %62)
  br label %135

; <label>:135                                     ; preds = %._crit_edge5, %133
  %136 = load i64, i64* %40, align 16
  %137 = icmp sgt i64 %136, 0
  br i1 %137, label %138, label %._crit_edge6

._crit_edge6:                                     ; preds = %135
  br label %141

; <label>:138                                     ; preds = %135
  %139 = load i64, i64* %41, align 16
  %140 = call i64 @manager_reserveCar(%struct.manager* %13, i64 %62, i64 %139)
  br label %141

; <label>:141                                     ; preds = %._crit_edge6, %138
  %142 = load i64, i64* %42, align 8
  %143 = icmp sgt i64 %142, 0
  br i1 %143, label %144, label %._crit_edge7

._crit_edge7:                                     ; preds = %141
  br label %147

; <label>:144                                     ; preds = %141
  %145 = load i64, i64* %43, align 8
  %146 = call i64 @manager_reserveFlight(%struct.manager* %13, i64 %62, i64 %145)
  br label %147

; <label>:147                                     ; preds = %._crit_edge7, %144
  %148 = load i64, i64* %44, align 16
  %149 = icmp sgt i64 %148, 0
  br i1 %149, label %150, label %._crit_edge8

._crit_edge8:                                     ; preds = %147
  br label %153

; <label>:150                                     ; preds = %147
  %151 = load i64, i64* %45, align 16
  %152 = call i64 @manager_reserveRoom(%struct.manager* %13, i64 %62, i64 %151)
  br label %153

; <label>:153                                     ; preds = %._crit_edge8, %150
  %154 = icmp sgt i32 %82, 0
  br i1 %154, label %155, label %156

; <label>:155                                     ; preds = %153
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #6, !srcloc !5
  br label %157

; <label>:156                                     ; preds = %153
  call void (...) @RTM_fallback_unlock()
  br label %157

; <label>:157                                     ; preds = %156, %155
  br label %279

; <label>:158                                     ; preds = %52
  %159 = call i64 @random_generate(%struct.random* %15)
  %160 = urem i64 %159, %21
  %161 = add i64 %160, 1
  br label %162

; <label>:162                                     ; preds = %175, %158
  %tries3.0 = phi i32 [ 9, %158 ], [ %168, %175 ]
  br label %163

; <label>:163                                     ; preds = %166, %162
  %164 = call i64 (...) @RTM_fallback_isLocked()
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

; <label>:166                                     ; preds = %163
  call void @llvm.x86.sse2.pause() #6
  br label %163

; <label>:167                                     ; preds = %163
  %168 = add nsw i32 %tries3.0, -1
  %169 = icmp sle i32 %168, 0
  br i1 %169, label %170, label %171

; <label>:170                                     ; preds = %167
  call void (...) @RTM_fallback_lock()
  br label %181

; <label>:171                                     ; preds = %167
  %172 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 0, i64 1, i64 4294967295) #6, !srcloc !1
  %173 = trunc i64 %172 to i32
  %174 = icmp ne i32 %173, -1
  br i1 %174, label %175, label %176

; <label>:175                                     ; preds = %171
  br label %162

; <label>:176                                     ; preds = %171
  %177 = call i64 (...) @RTM_fallback_isLocked()
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %._crit_edge9

._crit_edge9:                                     ; preds = %176
  br label %180

; <label>:179                                     ; preds = %176
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %180

; <label>:180                                     ; preds = %._crit_edge9, %179
  br label %181

; <label>:181                                     ; preds = %180, %170
  %182 = call i64 @manager_queryCustomerBill(%struct.manager* %13, i64 %161)
  %183 = icmp sge i64 %182, 0
  br i1 %183, label %184, label %._crit_edge10

._crit_edge10:                                    ; preds = %181
  br label %186

; <label>:184                                     ; preds = %181
  %185 = call i64 @manager_deleteCustomer(%struct.manager* %13, i64 %161)
  br label %186

; <label>:186                                     ; preds = %._crit_edge10, %184
  %187 = icmp sgt i32 %168, 0
  br i1 %187, label %188, label %189

; <label>:188                                     ; preds = %186
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 1) #6, !srcloc !5
  br label %190

; <label>:189                                     ; preds = %186
  call void (...) @RTM_fallback_unlock()
  br label %190

; <label>:190                                     ; preds = %189, %188
  br label %279

; <label>:191                                     ; preds = %52
  %192 = call i64 @random_generate(%struct.random* %15)
  %193 = urem i64 %192, %19
  %194 = add i64 %193, 1
  br label %195

; <label>:195                                     ; preds = %218, %191
  %n4.0 = phi i64 [ 0, %191 ], [ %219, %218 ]
  %196 = icmp slt i64 %n4.0, %194
  br i1 %196, label %197, label %220

; <label>:197                                     ; preds = %195
  %198 = call i64 @random_generate(%struct.random* %15)
  %199 = urem i64 %198, 3
  %200 = getelementptr inbounds i64, i64* %26, i64 %n4.0
  store i64 %199, i64* %200, align 8
  %201 = call i64 @random_generate(%struct.random* %15)
  %202 = urem i64 %201, %21
  %203 = add i64 %202, 1
  %204 = getelementptr inbounds i64, i64* %29, i64 %n4.0
  store i64 %203, i64* %204, align 8
  %205 = call i64 @random_generate(%struct.random* %15)
  %206 = urem i64 %205, 2
  %207 = getelementptr inbounds i64, i64* %32, i64 %n4.0
  store i64 %206, i64* %207, align 8
  %208 = getelementptr inbounds i64, i64* %32, i64 %n4.0
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %._crit_edge11

._crit_edge11:                                    ; preds = %197
  br label %217

; <label>:211                                     ; preds = %197
  %212 = call i64 @random_generate(%struct.random* %15)
  %213 = urem i64 %212, 5
  %214 = mul i64 %213, 10
  %215 = add i64 %214, 50
  %216 = getelementptr inbounds i64, i64* %35, i64 %n4.0
  store i64 %215, i64* %216, align 8
  br label %217

; <label>:217                                     ; preds = %._crit_edge11, %211
  br label %218

; <label>:218                                     ; preds = %217
  %219 = add nsw i64 %n4.0, 1
  br label %195

; <label>:220                                     ; preds = %195
  br label %221

; <label>:221                                     ; preds = %234, %220
  %tries6.0 = phi i32 [ 9, %220 ], [ %227, %234 ]
  br label %222

; <label>:222                                     ; preds = %225, %221
  %223 = call i64 (...) @RTM_fallback_isLocked()
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %226

; <label>:225                                     ; preds = %222
  call void @llvm.x86.sse2.pause() #6
  br label %222

; <label>:226                                     ; preds = %222
  %227 = add nsw i32 %tries6.0, -1
  %228 = icmp sle i32 %227, 0
  br i1 %228, label %229, label %230

; <label>:229                                     ; preds = %226
  call void (...) @RTM_fallback_lock()
  br label %240

; <label>:230                                     ; preds = %226
  %231 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 0, i64 2, i64 4294967295) #6, !srcloc !1
  %232 = trunc i64 %231 to i32
  %233 = icmp ne i32 %232, -1
  br i1 %233, label %234, label %235

; <label>:234                                     ; preds = %230
  br label %221

; <label>:235                                     ; preds = %230
  %236 = call i64 (...) @RTM_fallback_isLocked()
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %._crit_edge12

._crit_edge12:                                    ; preds = %235
  br label %239

; <label>:238                                     ; preds = %235
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %239

; <label>:239                                     ; preds = %._crit_edge12, %238
  br label %240

; <label>:240                                     ; preds = %239, %229
  br label %__kernel__client_run0

__kernel__client_run0:                            ; preds = %271, %240
  %n4.1 = phi i64 [ 0, %240 ], [ %272, %271 ]
  %241 = icmp slt i64 %n4.1, %194
  br i1 %241, label %242, label %273

; <label>:242                                     ; preds = %__kernel__client_run0
  %243 = getelementptr inbounds i64, i64* %26, i64 %n4.1
  %244 = load i64, i64* %243, align 8
  %245 = getelementptr inbounds i64, i64* %29, i64 %n4.1
  %246 = load i64, i64* %245, align 8
  %247 = getelementptr inbounds i64, i64* %32, i64 %n4.1
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %261

; <label>:250                                     ; preds = %242
  %251 = getelementptr inbounds i64, i64* %35, i64 %n4.1
  %252 = load i64, i64* %251, align 8
  switch i64 %244, label %259 [
    i64 0, label %253
    i64 1, label %255
    i64 2, label %257
  ]

; <label>:253                                     ; preds = %250
  %254 = call i64 @manager_addCar(%struct.manager* %13, i64 %246, i64 100, i64 %252)
  br label %260

; <label>:255                                     ; preds = %250
  %256 = call i64 @manager_addFlight(%struct.manager* %13, i64 %246, i64 100, i64 %252)
  br label %260

; <label>:257                                     ; preds = %250
  %258 = call i64 @manager_addRoom(%struct.manager* %13, i64 %246, i64 100, i64 %252)
  br label %260

; <label>:259                                     ; preds = %250
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 288, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.client_run, i32 0, i32 0)) #8
  unreachable

; <label>:260                                     ; preds = %257, %255, %253
  br label %270

; <label>:261                                     ; preds = %242
  switch i64 %244, label %268 [
    i64 0, label %262
    i64 1, label %264
    i64 2, label %266
  ]

; <label>:262                                     ; preds = %261
  %263 = call i64 @manager_deleteCar(%struct.manager* %13, i64 %246, i64 100)
  br label %269

; <label>:264                                     ; preds = %261
  %265 = call i64 @manager_deleteFlight(%struct.manager* %13, i64 %246)
  br label %269

; <label>:266                                     ; preds = %261
  %267 = call i64 @manager_deleteRoom(%struct.manager* %13, i64 %246, i64 100)
  br label %269

; <label>:268                                     ; preds = %261
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 302, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.client_run, i32 0, i32 0)) #8
  unreachable

; <label>:269                                     ; preds = %266, %264, %262
  br label %270

; <label>:270                                     ; preds = %269, %260
  br label %271

; <label>:271                                     ; preds = %270
  %272 = add nsw i64 %n4.1, 1
  br label %__kernel__client_run0, !llvm.loop !6

; <label>:273                                     ; preds = %__kernel__client_run0
  %274 = icmp sgt i32 %227, 0
  br i1 %274, label %275, label %276

; <label>:275                                     ; preds = %273
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 2) #6, !srcloc !5
  br label %277

; <label>:276                                     ; preds = %273
  call void (...) @RTM_fallback_unlock()
  br label %277

; <label>:277                                     ; preds = %276, %275
  br label %279

; <label>:278                                     ; preds = %52
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 311, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.client_run, i32 0, i32 0)) #8
  unreachable

; <label>:279                                     ; preds = %277, %190, %157
  br label %280

; <label>:280                                     ; preds = %279
  call void @workEnd(i32 0, i32 0)
  br label %281

; <label>:281                                     ; preds = %280
  br label %282

; <label>:282                                     ; preds = %281
  %283 = add nsw i64 %i.0, 1
  br label %46

; <label>:284                                     ; preds = %46
  br label %285

; <label>:285                                     ; preds = %284
  %286 = call i64 (...) @thread_getId()
  %287 = trunc i64 %286 to i32
  %288 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 4
  %289 = load i32, i32* %288, align 4
  call void @SimRoiEnd(i32 %287, i32 %289)
  br label %290

; <label>:290                                     ; preds = %285
  ret void
}

declare i64 @thread_getId(...) #2

declare void @SimRoiStart(i32) #2

declare i32 @workBegin(i32, i32) #2

declare i64 @random_generate(%struct.random*) #2

; Function Attrs: nounwind uwtable
define internal i32 @selectAction(i64 %r, i64 %percentUser) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = icmp slt i64 %r, %percentUser
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  br label %9

; <label>:3                                       ; preds = %0
  %4 = and i64 %r, 1
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %3
  br label %8

; <label>:7                                       ; preds = %3
  br label %8

; <label>:8                                       ; preds = %7, %6
  %action.0 = phi i32 [ 1, %6 ], [ 2, %7 ]
  br label %9

; <label>:9                                       ; preds = %8, %2
  %action.1 = phi i32 [ 0, %2 ], [ %action.0, %8 ]
  ret i32 %action.1
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare i64 @RTM_fallback_isLocked(...) #2

declare void @RTM_fallback_lock(...) #2

; Function Attrs: nounwind readonly
declare i64 @manager_queryCar(%struct.manager*, i64) #4

declare i64 @manager_queryCarPrice(%struct.manager*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @manager_queryFlight(%struct.manager*, i64) #4

declare i64 @manager_queryFlightPrice(%struct.manager*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @manager_queryRoom(%struct.manager*, i64) #4

declare i64 @manager_queryRoomPrice(%struct.manager*, i64) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #5

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
declare void @llvm.x86.sse2.pause() #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
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
