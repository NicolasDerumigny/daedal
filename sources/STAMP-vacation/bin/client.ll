; ModuleID = 'client.c'
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
  %1 = alloca %struct.client*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.manager*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %clientPtr = alloca %struct.client*, align 8
  store i64 %id, i64* %2, align 8
  store %struct.manager* %managerPtr, %struct.manager** %3, align 8
  store i64 %numOperation, i64* %4, align 8
  store i64 %numQueryPerTransaction, i64* %5, align 8
  store i64 %queryRange, i64* %6, align 8
  store i64 %percentUser, i64* %7, align 8
  %8 = call noalias i8* @malloc(i64 56) #6
  %9 = bitcast i8* %8 to %struct.client*
  store %struct.client* %9, %struct.client** %clientPtr, align 8
  %10 = load %struct.client*, %struct.client** %clientPtr, align 8
  %11 = icmp eq %struct.client* %10, null
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %0
  store %struct.client* null, %struct.client** %1, align 8
  br label %46

; <label>:13                                      ; preds = %0
  %14 = call %struct.random* (...) @random_alloc()
  %15 = load %struct.client*, %struct.client** %clientPtr, align 8
  %16 = getelementptr inbounds %struct.client, %struct.client* %15, i32 0, i32 2
  store %struct.random* %14, %struct.random** %16, align 8
  %17 = load %struct.client*, %struct.client** %clientPtr, align 8
  %18 = getelementptr inbounds %struct.client, %struct.client* %17, i32 0, i32 2
  %19 = load %struct.random*, %struct.random** %18, align 8
  %20 = icmp eq %struct.random* %19, null
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %13
  store %struct.client* null, %struct.client** %1, align 8
  br label %46

; <label>:22                                      ; preds = %13
  %23 = load i64, i64* %2, align 8
  %24 = load %struct.client*, %struct.client** %clientPtr, align 8
  %25 = getelementptr inbounds %struct.client, %struct.client* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.manager*, %struct.manager** %3, align 8
  %27 = load %struct.client*, %struct.client** %clientPtr, align 8
  %28 = getelementptr inbounds %struct.client, %struct.client* %27, i32 0, i32 1
  store %struct.manager* %26, %struct.manager** %28, align 8
  %29 = load %struct.client*, %struct.client** %clientPtr, align 8
  %30 = getelementptr inbounds %struct.client, %struct.client* %29, i32 0, i32 2
  %31 = load %struct.random*, %struct.random** %30, align 8
  %32 = load i64, i64* %2, align 8
  call void @random_seed(%struct.random* %31, i64 %32)
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.client*, %struct.client** %clientPtr, align 8
  %35 = getelementptr inbounds %struct.client, %struct.client* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.client*, %struct.client** %clientPtr, align 8
  %38 = getelementptr inbounds %struct.client, %struct.client* %37, i32 0, i32 4
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.client*, %struct.client** %clientPtr, align 8
  %41 = getelementptr inbounds %struct.client, %struct.client* %40, i32 0, i32 5
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.client*, %struct.client** %clientPtr, align 8
  %44 = getelementptr inbounds %struct.client, %struct.client* %43, i32 0, i32 6
  store i64 %42, i64* %44, align 8
  %45 = load %struct.client*, %struct.client** %clientPtr, align 8
  store %struct.client* %45, %struct.client** %1, align 8
  br label %46

; <label>:46                                      ; preds = %22, %21, %12
  %47 = load %struct.client*, %struct.client** %1, align 8
  ret %struct.client* %47
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.random* @random_alloc(...) #2

declare void @random_seed(%struct.random*, i64) #2

; Function Attrs: nounwind uwtable
define void @client_free(%struct.client* %clientPtr) #0 {
  %1 = alloca %struct.client*, align 8
  store %struct.client* %clientPtr, %struct.client** %1, align 8
  %2 = load %struct.client*, %struct.client** %1, align 8
  %3 = bitcast %struct.client* %2 to i8*
  call void @free(i8* %3) #6
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @client_run(i8* %argPtr) #0 {
  %1 = alloca i64, align 8
  %handler.i11 = alloca i64, align 8
  %ret.i12 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %handler.i9 = alloca i64, align 8
  %ret.i10 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %handler.i = alloca i64, align 8
  %ret.i = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %_tm_thread_context = alloca %struct._tm_thread_context_t*, align 8
  %myId = alloca i64, align 8
  %clientPtr = alloca %struct.client*, align 8
  %managerPtr = alloca %struct.manager*, align 8
  %randomPtr = alloca %struct.random*, align 8
  %numOperation = alloca i64, align 8
  %numQueryPerTransaction = alloca i64, align 8
  %queryRange = alloca i64, align 8
  %percentUser = alloca i64, align 8
  %types = alloca i64*, align 8
  %ids = alloca i64*, align 8
  %ops = alloca i64*, align 8
  %prices = alloca i64*, align 8
  %i = alloca i64, align 8
  %threadId = alloca i32, align 4
  %r = alloca i64, align 8
  %action = alloca i32, align 4
  %maxPrices = alloca [3 x i64], align 16
  %maxIds = alloca [3 x i64], align 16
  %n = alloca i64, align 8
  %numQuery = alloca i64, align 8
  %customerId = alloca i64, align 8
  %isFound = alloca i64, align 8
  %__status = alloca i32, align 4
  %tries = alloca i32, align 4
  %t = alloca i64, align 8
  %id = alloca i64, align 8
  %price = alloca i64, align 8
  %customerId1 = alloca i64, align 8
  %__status2 = alloca i32, align 4
  %tries3 = alloca i32, align 4
  %bill = alloca i64, align 8
  %numUpdate = alloca i64, align 8
  %n4 = alloca i64, align 8
  %__status5 = alloca i32, align 4
  %tries6 = alloca i32, align 4
  %t7 = alloca i64, align 8
  %id8 = alloca i64, align 8
  %doAdd = alloca i64, align 8
  %newPrice = alloca i64, align 8
  store i8* %argPtr, i8** %10, align 8
  %11 = call i64 (...) @thread_getId()
  %12 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %13 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %12, i64 %11
  store %struct._tm_thread_context_t* %13, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  br label %14

; <label>:14                                      ; preds = %0
  %15 = call i64 (...) @thread_getId()
  %16 = trunc i64 %15 to i32
  call void @SimRoiStart(i32 %16)
  br label %17

; <label>:17                                      ; preds = %14
  %18 = call i64 (...) @thread_getId()
  store i64 %18, i64* %myId, align 8
  %19 = load i64, i64* %myId, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to %struct.client**
  %22 = getelementptr inbounds %struct.client*, %struct.client** %21, i64 %19
  %23 = load %struct.client*, %struct.client** %22, align 8
  store %struct.client* %23, %struct.client** %clientPtr, align 8
  %24 = load %struct.client*, %struct.client** %clientPtr, align 8
  %25 = getelementptr inbounds %struct.client, %struct.client* %24, i32 0, i32 1
  %26 = load %struct.manager*, %struct.manager** %25, align 8
  store %struct.manager* %26, %struct.manager** %managerPtr, align 8
  %27 = load %struct.client*, %struct.client** %clientPtr, align 8
  %28 = getelementptr inbounds %struct.client, %struct.client* %27, i32 0, i32 2
  %29 = load %struct.random*, %struct.random** %28, align 8
  store %struct.random* %29, %struct.random** %randomPtr, align 8
  %30 = load %struct.client*, %struct.client** %clientPtr, align 8
  %31 = getelementptr inbounds %struct.client, %struct.client* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %numOperation, align 8
  %33 = load %struct.client*, %struct.client** %clientPtr, align 8
  %34 = getelementptr inbounds %struct.client, %struct.client* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %numQueryPerTransaction, align 8
  %36 = load %struct.client*, %struct.client** %clientPtr, align 8
  %37 = getelementptr inbounds %struct.client, %struct.client* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %queryRange, align 8
  %39 = load %struct.client*, %struct.client** %clientPtr, align 8
  %40 = getelementptr inbounds %struct.client, %struct.client* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %percentUser, align 8
  %42 = load i64, i64* %numQueryPerTransaction, align 8
  %43 = mul i64 %42, 8
  %44 = call noalias i8* @malloc(i64 %43) #6
  %45 = bitcast i8* %44 to i64*
  store i64* %45, i64** %types, align 8
  %46 = load i64, i64* %numQueryPerTransaction, align 8
  %47 = mul i64 %46, 8
  %48 = call noalias i8* @malloc(i64 %47) #6
  %49 = bitcast i8* %48 to i64*
  store i64* %49, i64** %ids, align 8
  %50 = load i64, i64* %numQueryPerTransaction, align 8
  %51 = mul i64 %50, 8
  %52 = call noalias i8* @malloc(i64 %51) #6
  %53 = bitcast i8* %52 to i64*
  store i64* %53, i64** %ops, align 8
  %54 = load i64, i64* %numQueryPerTransaction, align 8
  %55 = mul i64 %54, 8
  %56 = call noalias i8* @malloc(i64 %55) #6
  %57 = bitcast i8* %56 to i64*
  store i64* %57, i64** %prices, align 8
  store i64 0, i64* %i, align 8
  br label %58

; <label>:58                                      ; preds = %453, %17
  %59 = load i64, i64* %i, align 8
  %60 = load i64, i64* %numOperation, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %456

; <label>:62                                      ; preds = %58
  br label %63

; <label>:63                                      ; preds = %62
  %64 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %65 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %threadId, align 4
  %67 = load i32, i32* %threadId, align 4
  %68 = call i32 @workBegin(i32 0, i32 %67)
  %69 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %70 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  br label %71

; <label>:71                                      ; preds = %63
  %72 = load %struct.random*, %struct.random** %randomPtr, align 8
  %73 = call i64 @random_generate(%struct.random* %72)
  %74 = urem i64 %73, 100
  store i64 %74, i64* %r, align 8
  %75 = load i64, i64* %r, align 8
  %76 = load i64, i64* %percentUser, align 8
  %77 = call i32 @selectAction(i64 %75, i64 %76)
  store i32 %77, i32* %action, align 4
  %78 = load i32, i32* %action, align 4
  switch i32 %78, label %449 [
    i32 0, label %79
    i32 1, label %250
    i32 2, label %301
  ]

; <label>:79                                      ; preds = %71
  %80 = bitcast [3 x i64]* %maxPrices to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* bitcast ([3 x i64]* @client_run.maxPrices to i8*), i64 24, i32 16, i1 false)
  %81 = bitcast [3 x i64]* %maxIds to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* bitcast ([3 x i64]* @client_run.maxIds to i8*), i64 24, i32 16, i1 false)
  %82 = load %struct.random*, %struct.random** %randomPtr, align 8
  %83 = call i64 @random_generate(%struct.random* %82)
  %84 = load i64, i64* %numQueryPerTransaction, align 8
  %85 = urem i64 %83, %84
  %86 = add i64 %85, 1
  store i64 %86, i64* %numQuery, align 8
  %87 = load %struct.random*, %struct.random** %randomPtr, align 8
  %88 = call i64 @random_generate(%struct.random* %87)
  %89 = load i64, i64* %queryRange, align 8
  %90 = urem i64 %88, %89
  %91 = add i64 %90, 1
  store i64 %91, i64* %customerId, align 8
  store i64 0, i64* %n, align 8
  br label %92

; <label>:92                                      ; preds = %111, %79
  %93 = load i64, i64* %n, align 8
  %94 = load i64, i64* %numQuery, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %114

; <label>:96                                      ; preds = %92
  %97 = load %struct.random*, %struct.random** %randomPtr, align 8
  %98 = call i64 @random_generate(%struct.random* %97)
  %99 = urem i64 %98, 3
  %100 = load i64, i64* %n, align 8
  %101 = load i64*, i64** %types, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 %100
  store i64 %99, i64* %102, align 8
  %103 = load %struct.random*, %struct.random** %randomPtr, align 8
  %104 = call i64 @random_generate(%struct.random* %103)
  %105 = load i64, i64* %queryRange, align 8
  %106 = urem i64 %104, %105
  %107 = add i64 %106, 1
  %108 = load i64, i64* %n, align 8
  %109 = load i64*, i64** %ids, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 %108
  store i64 %107, i64* %110, align 8
  br label %111

; <label>:111                                     ; preds = %96
  %112 = load i64, i64* %n, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %n, align 8
  br label %92

; <label>:114                                     ; preds = %92
  store i64 0, i64* %isFound, align 8
  store i32 -1, i32* %__status, align 4
  store i32 9, i32* %tries, align 4
  br label %115

; <label>:115                                     ; preds = %136, %114
  br label %116

; <label>:116                                     ; preds = %119, %115
  %117 = call i64 (...) @RTM_fallback_isLocked()
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

; <label>:119                                     ; preds = %116
  call void @llvm.x86.sse2.pause() #6
  br label %116

; <label>:120                                     ; preds = %116
  %121 = load i32, i32* %tries, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %tries, align 4
  %123 = load i32, i32* %tries, align 4
  %124 = icmp sle i32 %123, 0
  br i1 %124, label %125, label %126

; <label>:125                                     ; preds = %120
  call void (...) @RTM_fallback_lock()
  br label %143

; <label>:126                                     ; preds = %120
  store i64 0, i64* %8, align 8
  store i64 0, i64* %handler.i, align 8
  store i64 4294967295, i64* %ret.i, align 8
  %127 = load i64, i64* %ret.i, align 8
  %128 = load i64, i64* %8, align 8
  %129 = load i64, i64* %handler.i, align 8
  %130 = load i64, i64* %8, align 8
  %131 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %128, i64 %129, i64 %130, i64 %127) #6, !srcloc !1
  store i64 %131, i64* %ret.i, align 8
  %132 = load i64, i64* %ret.i, align 8
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %__status, align 4
  %134 = load i32, i32* %__status, align 4
  %135 = icmp ne i32 %134, -1
  br i1 %135, label %136, label %137

; <label>:136                                     ; preds = %126
  br label %115

; <label>:137                                     ; preds = %126
  %138 = call i64 (...) @RTM_fallback_isLocked()
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

; <label>:140                                     ; preds = %137
  store i64 255, i64* %7, align 8
  %141 = load i64, i64* %7, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %141) #6, !srcloc !2
  br label %142

; <label>:142                                     ; preds = %140, %137
  br label %143

; <label>:143                                     ; preds = %142, %125
  store i64 0, i64* %n, align 8
  br label %144

; <label>:144                                     ; preds = %203, %143
  %145 = load i64, i64* %n, align 8
  %146 = load i64, i64* %numQuery, align 8
  %147 = icmp slt i64 %145, %146
  br i1 %147, label %148, label %206

; <label>:148                                     ; preds = %144
  %149 = load i64, i64* %n, align 8
  %150 = load i64*, i64** %types, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 %149
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %t, align 8
  %153 = load i64, i64* %n, align 8
  %154 = load i64*, i64** %ids, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 %153
  %156 = load i64, i64* %155, align 8
  store i64 %156, i64* %id, align 8
  store i64 -1, i64* %price, align 8
  %157 = load i64, i64* %t, align 8
  switch i64 %157, label %188 [
    i64 0, label %158
    i64 1, label %168
    i64 2, label %178
  ]

; <label>:158                                     ; preds = %148
  %159 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %160 = load i64, i64* %id, align 8
  %161 = call i64 @manager_queryCar(%struct.manager* %159, i64 %160) #7
  %162 = icmp sge i64 %161, 0
  br i1 %162, label %163, label %167

; <label>:163                                     ; preds = %158
  %164 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %165 = load i64, i64* %id, align 8
  %166 = call i64 @manager_queryCarPrice(%struct.manager* %164, i64 %165)
  store i64 %166, i64* %price, align 8
  br label %167

; <label>:167                                     ; preds = %163, %158
  br label %189

; <label>:168                                     ; preds = %148
  %169 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %170 = load i64, i64* %id, align 8
  %171 = call i64 @manager_queryFlight(%struct.manager* %169, i64 %170) #7
  %172 = icmp sge i64 %171, 0
  br i1 %172, label %173, label %177

; <label>:173                                     ; preds = %168
  %174 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %175 = load i64, i64* %id, align 8
  %176 = call i64 @manager_queryFlightPrice(%struct.manager* %174, i64 %175)
  store i64 %176, i64* %price, align 8
  br label %177

; <label>:177                                     ; preds = %173, %168
  br label %189

; <label>:178                                     ; preds = %148
  %179 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %180 = load i64, i64* %id, align 8
  %181 = call i64 @manager_queryRoom(%struct.manager* %179, i64 %180) #7
  %182 = icmp sge i64 %181, 0
  br i1 %182, label %183, label %187

; <label>:183                                     ; preds = %178
  %184 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %185 = load i64, i64* %id, align 8
  %186 = call i64 @manager_queryRoomPrice(%struct.manager* %184, i64 %185)
  store i64 %186, i64* %price, align 8
  br label %187

; <label>:187                                     ; preds = %183, %178
  br label %189

; <label>:188                                     ; preds = %148
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 220, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.client_run, i32 0, i32 0)) #8
  unreachable

; <label>:189                                     ; preds = %187, %177, %167
  %190 = load i64, i64* %price, align 8
  %191 = load i64, i64* %t, align 8
  %192 = getelementptr inbounds [3 x i64], [3 x i64]* %maxPrices, i64 0, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = icmp sgt i64 %190, %193
  br i1 %194, label %195, label %202

; <label>:195                                     ; preds = %189
  %196 = load i64, i64* %price, align 8
  %197 = load i64, i64* %t, align 8
  %198 = getelementptr inbounds [3 x i64], [3 x i64]* %maxPrices, i64 0, i64 %197
  store i64 %196, i64* %198, align 8
  %199 = load i64, i64* %id, align 8
  %200 = load i64, i64* %t, align 8
  %201 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 %200
  store i64 %199, i64* %201, align 8
  store i64 1, i64* %isFound, align 8
  br label %202

; <label>:202                                     ; preds = %195, %189
  br label %203

; <label>:203                                     ; preds = %202
  %204 = load i64, i64* %n, align 8
  %205 = add nsw i64 %204, 1
  store i64 %205, i64* %n, align 8
  br label %144, !llvm.loop !3

; <label>:206                                     ; preds = %144
  %207 = load i64, i64* %isFound, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %213

; <label>:209                                     ; preds = %206
  %210 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %211 = load i64, i64* %customerId, align 8
  %212 = call i64 @manager_addCustomer(%struct.manager* %210, i64 %211)
  br label %213

; <label>:213                                     ; preds = %209, %206
  %214 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 0
  %215 = load i64, i64* %214, align 16
  %216 = icmp sgt i64 %215, 0
  br i1 %216, label %217, label %223

; <label>:217                                     ; preds = %213
  %218 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %219 = load i64, i64* %customerId, align 8
  %220 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 0
  %221 = load i64, i64* %220, align 16
  %222 = call i64 @manager_reserveCar(%struct.manager* %218, i64 %219, i64 %221)
  br label %223

; <label>:223                                     ; preds = %217, %213
  %224 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 1
  %225 = load i64, i64* %224, align 8
  %226 = icmp sgt i64 %225, 0
  br i1 %226, label %227, label %233

; <label>:227                                     ; preds = %223
  %228 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %229 = load i64, i64* %customerId, align 8
  %230 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 1
  %231 = load i64, i64* %230, align 8
  %232 = call i64 @manager_reserveFlight(%struct.manager* %228, i64 %229, i64 %231)
  br label %233

; <label>:233                                     ; preds = %227, %223
  %234 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 2
  %235 = load i64, i64* %234, align 16
  %236 = icmp sgt i64 %235, 0
  br i1 %236, label %237, label %243

; <label>:237                                     ; preds = %233
  %238 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %239 = load i64, i64* %customerId, align 8
  %240 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 2
  %241 = load i64, i64* %240, align 16
  %242 = call i64 @manager_reserveRoom(%struct.manager* %238, i64 %239, i64 %241)
  br label %243

; <label>:243                                     ; preds = %237, %233
  %244 = load i32, i32* %tries, align 4
  %245 = icmp sgt i32 %244, 0
  br i1 %245, label %246, label %248

; <label>:246                                     ; preds = %243
  store i64 0, i64* %6, align 8
  %247 = load i64, i64* %6, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %247) #6, !srcloc !5
  br label %249

; <label>:248                                     ; preds = %243
  call void (...) @RTM_fallback_unlock()
  br label %249

; <label>:249                                     ; preds = %248, %246
  br label %450

; <label>:250                                     ; preds = %71
  %251 = load %struct.random*, %struct.random** %randomPtr, align 8
  %252 = call i64 @random_generate(%struct.random* %251)
  %253 = load i64, i64* %queryRange, align 8
  %254 = urem i64 %252, %253
  %255 = add i64 %254, 1
  store i64 %255, i64* %customerId1, align 8
  store i32 -1, i32* %__status2, align 4
  store i32 9, i32* %tries3, align 4
  br label %256

; <label>:256                                     ; preds = %277, %250
  br label %257

; <label>:257                                     ; preds = %260, %256
  %258 = call i64 (...) @RTM_fallback_isLocked()
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %261

; <label>:260                                     ; preds = %257
  call void @llvm.x86.sse2.pause() #6
  br label %257

; <label>:261                                     ; preds = %257
  %262 = load i32, i32* %tries3, align 4
  %263 = add nsw i32 %262, -1
  store i32 %263, i32* %tries3, align 4
  %264 = load i32, i32* %tries3, align 4
  %265 = icmp sle i32 %264, 0
  br i1 %265, label %266, label %267

; <label>:266                                     ; preds = %261
  call void (...) @RTM_fallback_lock()
  br label %284

; <label>:267                                     ; preds = %261
  store i64 1, i64* %4, align 8
  store i64 0, i64* %handler.i9, align 8
  store i64 4294967295, i64* %ret.i10, align 8
  %268 = load i64, i64* %ret.i10, align 8
  %269 = load i64, i64* %4, align 8
  %270 = load i64, i64* %handler.i9, align 8
  %271 = load i64, i64* %4, align 8
  %272 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %269, i64 %270, i64 %271, i64 %268) #6, !srcloc !1
  store i64 %272, i64* %ret.i10, align 8
  %273 = load i64, i64* %ret.i10, align 8
  %274 = trunc i64 %273 to i32
  store i32 %274, i32* %__status2, align 4
  %275 = load i32, i32* %__status2, align 4
  %276 = icmp ne i32 %275, -1
  br i1 %276, label %277, label %278

; <label>:277                                     ; preds = %267
  br label %256

; <label>:278                                     ; preds = %267
  %279 = call i64 (...) @RTM_fallback_isLocked()
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %283

; <label>:281                                     ; preds = %278
  store i64 255, i64* %3, align 8
  %282 = load i64, i64* %3, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %282) #6, !srcloc !2
  br label %283

; <label>:283                                     ; preds = %281, %278
  br label %284

; <label>:284                                     ; preds = %283, %266
  %285 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %286 = load i64, i64* %customerId1, align 8
  %287 = call i64 @manager_queryCustomerBill(%struct.manager* %285, i64 %286)
  store i64 %287, i64* %bill, align 8
  %288 = load i64, i64* %bill, align 8
  %289 = icmp sge i64 %288, 0
  br i1 %289, label %290, label %294

; <label>:290                                     ; preds = %284
  %291 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %292 = load i64, i64* %customerId1, align 8
  %293 = call i64 @manager_deleteCustomer(%struct.manager* %291, i64 %292)
  br label %294

; <label>:294                                     ; preds = %290, %284
  %295 = load i32, i32* %tries3, align 4
  %296 = icmp sgt i32 %295, 0
  br i1 %296, label %297, label %299

; <label>:297                                     ; preds = %294
  store i64 1, i64* %2, align 8
  %298 = load i64, i64* %2, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %298) #6, !srcloc !5
  br label %300

; <label>:299                                     ; preds = %294
  call void (...) @RTM_fallback_unlock()
  br label %300

; <label>:300                                     ; preds = %299, %297
  br label %450

; <label>:301                                     ; preds = %71
  %302 = load %struct.random*, %struct.random** %randomPtr, align 8
  %303 = call i64 @random_generate(%struct.random* %302)
  %304 = load i64, i64* %numQueryPerTransaction, align 8
  %305 = urem i64 %303, %304
  %306 = add i64 %305, 1
  store i64 %306, i64* %numUpdate, align 8
  store i64 0, i64* %n4, align 8
  br label %307

; <label>:307                                     ; preds = %347, %301
  %308 = load i64, i64* %n4, align 8
  %309 = load i64, i64* %numUpdate, align 8
  %310 = icmp slt i64 %308, %309
  br i1 %310, label %311, label %350

; <label>:311                                     ; preds = %307
  %312 = load %struct.random*, %struct.random** %randomPtr, align 8
  %313 = call i64 @random_generate(%struct.random* %312)
  %314 = urem i64 %313, 3
  %315 = load i64, i64* %n4, align 8
  %316 = load i64*, i64** %types, align 8
  %317 = getelementptr inbounds i64, i64* %316, i64 %315
  store i64 %314, i64* %317, align 8
  %318 = load %struct.random*, %struct.random** %randomPtr, align 8
  %319 = call i64 @random_generate(%struct.random* %318)
  %320 = load i64, i64* %queryRange, align 8
  %321 = urem i64 %319, %320
  %322 = add i64 %321, 1
  %323 = load i64, i64* %n4, align 8
  %324 = load i64*, i64** %ids, align 8
  %325 = getelementptr inbounds i64, i64* %324, i64 %323
  store i64 %322, i64* %325, align 8
  %326 = load %struct.random*, %struct.random** %randomPtr, align 8
  %327 = call i64 @random_generate(%struct.random* %326)
  %328 = urem i64 %327, 2
  %329 = load i64, i64* %n4, align 8
  %330 = load i64*, i64** %ops, align 8
  %331 = getelementptr inbounds i64, i64* %330, i64 %329
  store i64 %328, i64* %331, align 8
  %332 = load i64, i64* %n4, align 8
  %333 = load i64*, i64** %ops, align 8
  %334 = getelementptr inbounds i64, i64* %333, i64 %332
  %335 = load i64, i64* %334, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %346

; <label>:337                                     ; preds = %311
  %338 = load %struct.random*, %struct.random** %randomPtr, align 8
  %339 = call i64 @random_generate(%struct.random* %338)
  %340 = urem i64 %339, 5
  %341 = mul i64 %340, 10
  %342 = add i64 %341, 50
  %343 = load i64, i64* %n4, align 8
  %344 = load i64*, i64** %prices, align 8
  %345 = getelementptr inbounds i64, i64* %344, i64 %343
  store i64 %342, i64* %345, align 8
  br label %346

; <label>:346                                     ; preds = %337, %311
  br label %347

; <label>:347                                     ; preds = %346
  %348 = load i64, i64* %n4, align 8
  %349 = add nsw i64 %348, 1
  store i64 %349, i64* %n4, align 8
  br label %307

; <label>:350                                     ; preds = %307
  store i32 -1, i32* %__status5, align 4
  store i32 9, i32* %tries6, align 4
  br label %351

; <label>:351                                     ; preds = %372, %350
  br label %352

; <label>:352                                     ; preds = %355, %351
  %353 = call i64 (...) @RTM_fallback_isLocked()
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %356

; <label>:355                                     ; preds = %352
  call void @llvm.x86.sse2.pause() #6
  br label %352

; <label>:356                                     ; preds = %352
  %357 = load i32, i32* %tries6, align 4
  %358 = add nsw i32 %357, -1
  store i32 %358, i32* %tries6, align 4
  %359 = load i32, i32* %tries6, align 4
  %360 = icmp sle i32 %359, 0
  br i1 %360, label %361, label %362

; <label>:361                                     ; preds = %356
  call void (...) @RTM_fallback_lock()
  br label %379

; <label>:362                                     ; preds = %356
  store i64 2, i64* %1, align 8
  store i64 0, i64* %handler.i11, align 8
  store i64 4294967295, i64* %ret.i12, align 8
  %363 = load i64, i64* %ret.i12, align 8
  %364 = load i64, i64* %1, align 8
  %365 = load i64, i64* %handler.i11, align 8
  %366 = load i64, i64* %1, align 8
  %367 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %364, i64 %365, i64 %366, i64 %363) #6, !srcloc !1
  store i64 %367, i64* %ret.i12, align 8
  %368 = load i64, i64* %ret.i12, align 8
  %369 = trunc i64 %368 to i32
  store i32 %369, i32* %__status5, align 4
  %370 = load i32, i32* %__status5, align 4
  %371 = icmp ne i32 %370, -1
  br i1 %371, label %372, label %373

; <label>:372                                     ; preds = %362
  br label %351

; <label>:373                                     ; preds = %362
  %374 = call i64 (...) @RTM_fallback_isLocked()
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %378

; <label>:376                                     ; preds = %373
  store i64 255, i64* %5, align 8
  %377 = load i64, i64* %5, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %377) #6, !srcloc !2
  br label %378

; <label>:378                                     ; preds = %376, %373
  br label %379

; <label>:379                                     ; preds = %378, %361
  store i64 0, i64* %n4, align 8
  br label %380

; <label>:380                                     ; preds = %439, %379
  %381 = load i64, i64* %n4, align 8
  %382 = load i64, i64* %numUpdate, align 8
  %383 = icmp slt i64 %381, %382
  br i1 %383, label %384, label %442

; <label>:384                                     ; preds = %380
  %385 = load i64, i64* %n4, align 8
  %386 = load i64*, i64** %types, align 8
  %387 = getelementptr inbounds i64, i64* %386, i64 %385
  %388 = load i64, i64* %387, align 8
  store i64 %388, i64* %t7, align 8
  %389 = load i64, i64* %n4, align 8
  %390 = load i64*, i64** %ids, align 8
  %391 = getelementptr inbounds i64, i64* %390, i64 %389
  %392 = load i64, i64* %391, align 8
  store i64 %392, i64* %id8, align 8
  %393 = load i64, i64* %n4, align 8
  %394 = load i64*, i64** %ops, align 8
  %395 = getelementptr inbounds i64, i64* %394, i64 %393
  %396 = load i64, i64* %395, align 8
  store i64 %396, i64* %doAdd, align 8
  %397 = load i64, i64* %doAdd, align 8
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %422

; <label>:399                                     ; preds = %384
  %400 = load i64, i64* %n4, align 8
  %401 = load i64*, i64** %prices, align 8
  %402 = getelementptr inbounds i64, i64* %401, i64 %400
  %403 = load i64, i64* %402, align 8
  store i64 %403, i64* %newPrice, align 8
  %404 = load i64, i64* %t7, align 8
  switch i64 %404, label %420 [
    i64 0, label %405
    i64 1, label %410
    i64 2, label %415
  ]

; <label>:405                                     ; preds = %399
  %406 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %407 = load i64, i64* %id8, align 8
  %408 = load i64, i64* %newPrice, align 8
  %409 = call i64 @manager_addCar(%struct.manager* %406, i64 %407, i64 100, i64 %408)
  br label %421

; <label>:410                                     ; preds = %399
  %411 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %412 = load i64, i64* %id8, align 8
  %413 = load i64, i64* %newPrice, align 8
  %414 = call i64 @manager_addFlight(%struct.manager* %411, i64 %412, i64 100, i64 %413)
  br label %421

; <label>:415                                     ; preds = %399
  %416 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %417 = load i64, i64* %id8, align 8
  %418 = load i64, i64* %newPrice, align 8
  %419 = call i64 @manager_addRoom(%struct.manager* %416, i64 %417, i64 100, i64 %418)
  br label %421

; <label>:420                                     ; preds = %399
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 288, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.client_run, i32 0, i32 0)) #8
  unreachable

; <label>:421                                     ; preds = %415, %410, %405
  br label %438

; <label>:422                                     ; preds = %384
  %423 = load i64, i64* %t7, align 8
  switch i64 %423, label %436 [
    i64 0, label %424
    i64 1, label %428
    i64 2, label %432
  ]

; <label>:424                                     ; preds = %422
  %425 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %426 = load i64, i64* %id8, align 8
  %427 = call i64 @manager_deleteCar(%struct.manager* %425, i64 %426, i64 100)
  br label %437

; <label>:428                                     ; preds = %422
  %429 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %430 = load i64, i64* %id8, align 8
  %431 = call i64 @manager_deleteFlight(%struct.manager* %429, i64 %430)
  br label %437

; <label>:432                                     ; preds = %422
  %433 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %434 = load i64, i64* %id8, align 8
  %435 = call i64 @manager_deleteRoom(%struct.manager* %433, i64 %434, i64 100)
  br label %437

; <label>:436                                     ; preds = %422
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 302, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.client_run, i32 0, i32 0)) #8
  unreachable

; <label>:437                                     ; preds = %432, %428, %424
  br label %438

; <label>:438                                     ; preds = %437, %421
  br label %439

; <label>:439                                     ; preds = %438
  %440 = load i64, i64* %n4, align 8
  %441 = add nsw i64 %440, 1
  store i64 %441, i64* %n4, align 8
  br label %380, !llvm.loop !6

; <label>:442                                     ; preds = %380
  %443 = load i32, i32* %tries6, align 4
  %444 = icmp sgt i32 %443, 0
  br i1 %444, label %445, label %447

; <label>:445                                     ; preds = %442
  store i64 2, i64* %9, align 8
  %446 = load i64, i64* %9, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %446) #6, !srcloc !5
  br label %448

; <label>:447                                     ; preds = %442
  call void (...) @RTM_fallback_unlock()
  br label %448

; <label>:448                                     ; preds = %447, %445
  br label %450

; <label>:449                                     ; preds = %71
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 311, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.client_run, i32 0, i32 0)) #8
  unreachable

; <label>:450                                     ; preds = %448, %300, %249
  br label %451

; <label>:451                                     ; preds = %450
  call void @workEnd(i32 0, i32 0)
  br label %452

; <label>:452                                     ; preds = %451
  br label %453

; <label>:453                                     ; preds = %452
  %454 = load i64, i64* %i, align 8
  %455 = add nsw i64 %454, 1
  store i64 %455, i64* %i, align 8
  br label %58

; <label>:456                                     ; preds = %58
  br label %457

; <label>:457                                     ; preds = %456
  %458 = call i64 (...) @thread_getId()
  %459 = trunc i64 %458 to i32
  %460 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %461 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %460, i32 0, i32 4
  %462 = load i32, i32* %461, align 4
  call void @SimRoiEnd(i32 %459, i32 %462)
  br label %463

; <label>:463                                     ; preds = %457
  ret void
}

declare i64 @thread_getId(...) #2

declare void @SimRoiStart(i32) #2

declare i32 @workBegin(i32, i32) #2

declare i64 @random_generate(%struct.random*) #2

; Function Attrs: nounwind uwtable
define internal i32 @selectAction(i64 %r, i64 %percentUser) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %action = alloca i32, align 4
  store i64 %r, i64* %1, align 8
  store i64 %percentUser, i64* %2, align 8
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp slt i64 %3, %4
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store i32 0, i32* %action, align 4
  br label %14

; <label>:7                                       ; preds = %0
  %8 = load i64, i64* %1, align 8
  %9 = and i64 %8, 1
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %7
  store i32 1, i32* %action, align 4
  br label %13

; <label>:12                                      ; preds = %7
  store i32 2, i32* %action, align 4
  br label %13

; <label>:13                                      ; preds = %12, %11
  br label %14

; <label>:14                                      ; preds = %13, %6
  %15 = load i32, i32* %action, align 4
  ret i32 %15
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
