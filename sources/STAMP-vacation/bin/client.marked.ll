; ModuleID = '../bin/client.stats.ll'
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

; <label>:58                                      ; preds = %451, %17
  %59 = load i64, i64* %i, align 8
  %60 = load i64, i64* %numOperation, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %454

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
  switch i32 %78, label %447 [
    i32 0, label %79
    i32 1, label %249
    i32 2, label %300
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
  br label %__kernel__client_run1

__kernel__client_run1:                            ; preds = %202, %143
  %144 = load i64, i64* %n, align 8
  %145 = load i64, i64* %numQuery, align 8
  %146 = icmp slt i64 %144, %145
  br i1 %146, label %147, label %205

; <label>:147                                     ; preds = %__kernel__client_run1
  %148 = load i64, i64* %n, align 8
  %149 = load i64*, i64** %types, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 %148
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %t, align 8
  %152 = load i64, i64* %n, align 8
  %153 = load i64*, i64** %ids, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 %152
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %id, align 8
  store i64 -1, i64* %price, align 8
  %156 = load i64, i64* %t, align 8
  switch i64 %156, label %187 [
    i64 0, label %157
    i64 1, label %167
    i64 2, label %177
  ]

; <label>:157                                     ; preds = %147
  %158 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %159 = load i64, i64* %id, align 8
  %160 = call i64 @manager_queryCar(%struct.manager* %158, i64 %159) #7
  %161 = icmp sge i64 %160, 0
  br i1 %161, label %162, label %166

; <label>:162                                     ; preds = %157
  %163 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %164 = load i64, i64* %id, align 8
  %165 = call i64 @manager_queryCarPrice(%struct.manager* %163, i64 %164)
  store i64 %165, i64* %price, align 8
  br label %166

; <label>:166                                     ; preds = %162, %157
  br label %188

; <label>:167                                     ; preds = %147
  %168 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %169 = load i64, i64* %id, align 8
  %170 = call i64 @manager_queryFlight(%struct.manager* %168, i64 %169) #7
  %171 = icmp sge i64 %170, 0
  br i1 %171, label %172, label %176

; <label>:172                                     ; preds = %167
  %173 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %174 = load i64, i64* %id, align 8
  %175 = call i64 @manager_queryFlightPrice(%struct.manager* %173, i64 %174)
  store i64 %175, i64* %price, align 8
  br label %176

; <label>:176                                     ; preds = %172, %167
  br label %188

; <label>:177                                     ; preds = %147
  %178 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %179 = load i64, i64* %id, align 8
  %180 = call i64 @manager_queryRoom(%struct.manager* %178, i64 %179) #7
  %181 = icmp sge i64 %180, 0
  br i1 %181, label %182, label %186

; <label>:182                                     ; preds = %177
  %183 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %184 = load i64, i64* %id, align 8
  %185 = call i64 @manager_queryRoomPrice(%struct.manager* %183, i64 %184)
  store i64 %185, i64* %price, align 8
  br label %186

; <label>:186                                     ; preds = %182, %177
  br label %188

; <label>:187                                     ; preds = %147
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 220, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.client_run, i32 0, i32 0)) #8
  unreachable

; <label>:188                                     ; preds = %186, %176, %166
  %189 = load i64, i64* %price, align 8
  %190 = load i64, i64* %t, align 8
  %191 = getelementptr inbounds [3 x i64], [3 x i64]* %maxPrices, i64 0, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = icmp sgt i64 %189, %192
  br i1 %193, label %194, label %201

; <label>:194                                     ; preds = %188
  %195 = load i64, i64* %price, align 8
  %196 = load i64, i64* %t, align 8
  %197 = getelementptr inbounds [3 x i64], [3 x i64]* %maxPrices, i64 0, i64 %196
  store i64 %195, i64* %197, align 8
  %198 = load i64, i64* %id, align 8
  %199 = load i64, i64* %t, align 8
  %200 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 %199
  store i64 %198, i64* %200, align 8
  store i64 1, i64* %isFound, align 8
  br label %201

; <label>:201                                     ; preds = %194, %188
  br label %202

; <label>:202                                     ; preds = %201
  %203 = load i64, i64* %n, align 8
  %204 = add nsw i64 %203, 1
  store i64 %204, i64* %n, align 8
  br label %__kernel__client_run1, !llvm.loop !3

; <label>:205                                     ; preds = %__kernel__client_run1
  %206 = load i64, i64* %isFound, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %212

; <label>:208                                     ; preds = %205
  %209 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %210 = load i64, i64* %customerId, align 8
  %211 = call i64 @manager_addCustomer(%struct.manager* %209, i64 %210)
  br label %212

; <label>:212                                     ; preds = %208, %205
  %213 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 0
  %214 = load i64, i64* %213, align 16
  %215 = icmp sgt i64 %214, 0
  br i1 %215, label %216, label %222

; <label>:216                                     ; preds = %212
  %217 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %218 = load i64, i64* %customerId, align 8
  %219 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 0
  %220 = load i64, i64* %219, align 16
  %221 = call i64 @manager_reserveCar(%struct.manager* %217, i64 %218, i64 %220)
  br label %222

; <label>:222                                     ; preds = %216, %212
  %223 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 1
  %224 = load i64, i64* %223, align 8
  %225 = icmp sgt i64 %224, 0
  br i1 %225, label %226, label %232

; <label>:226                                     ; preds = %222
  %227 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %228 = load i64, i64* %customerId, align 8
  %229 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 1
  %230 = load i64, i64* %229, align 8
  %231 = call i64 @manager_reserveFlight(%struct.manager* %227, i64 %228, i64 %230)
  br label %232

; <label>:232                                     ; preds = %226, %222
  %233 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 2
  %234 = load i64, i64* %233, align 16
  %235 = icmp sgt i64 %234, 0
  br i1 %235, label %236, label %242

; <label>:236                                     ; preds = %232
  %237 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %238 = load i64, i64* %customerId, align 8
  %239 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 2
  %240 = load i64, i64* %239, align 16
  %241 = call i64 @manager_reserveRoom(%struct.manager* %237, i64 %238, i64 %240)
  br label %242

; <label>:242                                     ; preds = %236, %232
  %243 = load i32, i32* %tries, align 4
  %244 = icmp sgt i32 %243, 0
  br i1 %244, label %245, label %247

; <label>:245                                     ; preds = %242
  store i64 0, i64* %6, align 8
  %246 = load i64, i64* %6, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %246) #6, !srcloc !5
  br label %248

; <label>:247                                     ; preds = %242
  call void (...) @RTM_fallback_unlock()
  br label %248

; <label>:248                                     ; preds = %247, %245
  br label %448

; <label>:249                                     ; preds = %71
  %250 = load %struct.random*, %struct.random** %randomPtr, align 8
  %251 = call i64 @random_generate(%struct.random* %250)
  %252 = load i64, i64* %queryRange, align 8
  %253 = urem i64 %251, %252
  %254 = add i64 %253, 1
  store i64 %254, i64* %customerId1, align 8
  store i32 -1, i32* %__status2, align 4
  store i32 9, i32* %tries3, align 4
  br label %255

; <label>:255                                     ; preds = %276, %249
  br label %256

; <label>:256                                     ; preds = %259, %255
  %257 = call i64 (...) @RTM_fallback_isLocked()
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %260

; <label>:259                                     ; preds = %256
  call void @llvm.x86.sse2.pause() #6
  br label %256

; <label>:260                                     ; preds = %256
  %261 = load i32, i32* %tries3, align 4
  %262 = add nsw i32 %261, -1
  store i32 %262, i32* %tries3, align 4
  %263 = load i32, i32* %tries3, align 4
  %264 = icmp sle i32 %263, 0
  br i1 %264, label %265, label %266

; <label>:265                                     ; preds = %260
  call void (...) @RTM_fallback_lock()
  br label %283

; <label>:266                                     ; preds = %260
  store i64 1, i64* %4, align 8
  store i64 0, i64* %handler.i9, align 8
  store i64 4294967295, i64* %ret.i10, align 8
  %267 = load i64, i64* %ret.i10, align 8
  %268 = load i64, i64* %4, align 8
  %269 = load i64, i64* %handler.i9, align 8
  %270 = load i64, i64* %4, align 8
  %271 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %268, i64 %269, i64 %270, i64 %267) #6, !srcloc !1
  store i64 %271, i64* %ret.i10, align 8
  %272 = load i64, i64* %ret.i10, align 8
  %273 = trunc i64 %272 to i32
  store i32 %273, i32* %__status2, align 4
  %274 = load i32, i32* %__status2, align 4
  %275 = icmp ne i32 %274, -1
  br i1 %275, label %276, label %277

; <label>:276                                     ; preds = %266
  br label %255

; <label>:277                                     ; preds = %266
  %278 = call i64 (...) @RTM_fallback_isLocked()
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %282

; <label>:280                                     ; preds = %277
  store i64 255, i64* %3, align 8
  %281 = load i64, i64* %3, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %281) #6, !srcloc !2
  br label %282

; <label>:282                                     ; preds = %280, %277
  br label %283

; <label>:283                                     ; preds = %282, %265
  %284 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %285 = load i64, i64* %customerId1, align 8
  %286 = call i64 @manager_queryCustomerBill(%struct.manager* %284, i64 %285)
  store i64 %286, i64* %bill, align 8
  %287 = load i64, i64* %bill, align 8
  %288 = icmp sge i64 %287, 0
  br i1 %288, label %289, label %293

; <label>:289                                     ; preds = %283
  %290 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %291 = load i64, i64* %customerId1, align 8
  %292 = call i64 @manager_deleteCustomer(%struct.manager* %290, i64 %291)
  br label %293

; <label>:293                                     ; preds = %289, %283
  %294 = load i32, i32* %tries3, align 4
  %295 = icmp sgt i32 %294, 0
  br i1 %295, label %296, label %298

; <label>:296                                     ; preds = %293
  store i64 1, i64* %2, align 8
  %297 = load i64, i64* %2, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %297) #6, !srcloc !5
  br label %299

; <label>:298                                     ; preds = %293
  call void (...) @RTM_fallback_unlock()
  br label %299

; <label>:299                                     ; preds = %298, %296
  br label %448

; <label>:300                                     ; preds = %71
  %301 = load %struct.random*, %struct.random** %randomPtr, align 8
  %302 = call i64 @random_generate(%struct.random* %301)
  %303 = load i64, i64* %numQueryPerTransaction, align 8
  %304 = urem i64 %302, %303
  %305 = add i64 %304, 1
  store i64 %305, i64* %numUpdate, align 8
  store i64 0, i64* %n4, align 8
  br label %306

; <label>:306                                     ; preds = %346, %300
  %307 = load i64, i64* %n4, align 8
  %308 = load i64, i64* %numUpdate, align 8
  %309 = icmp slt i64 %307, %308
  br i1 %309, label %310, label %349

; <label>:310                                     ; preds = %306
  %311 = load %struct.random*, %struct.random** %randomPtr, align 8
  %312 = call i64 @random_generate(%struct.random* %311)
  %313 = urem i64 %312, 3
  %314 = load i64, i64* %n4, align 8
  %315 = load i64*, i64** %types, align 8
  %316 = getelementptr inbounds i64, i64* %315, i64 %314
  store i64 %313, i64* %316, align 8
  %317 = load %struct.random*, %struct.random** %randomPtr, align 8
  %318 = call i64 @random_generate(%struct.random* %317)
  %319 = load i64, i64* %queryRange, align 8
  %320 = urem i64 %318, %319
  %321 = add i64 %320, 1
  %322 = load i64, i64* %n4, align 8
  %323 = load i64*, i64** %ids, align 8
  %324 = getelementptr inbounds i64, i64* %323, i64 %322
  store i64 %321, i64* %324, align 8
  %325 = load %struct.random*, %struct.random** %randomPtr, align 8
  %326 = call i64 @random_generate(%struct.random* %325)
  %327 = urem i64 %326, 2
  %328 = load i64, i64* %n4, align 8
  %329 = load i64*, i64** %ops, align 8
  %330 = getelementptr inbounds i64, i64* %329, i64 %328
  store i64 %327, i64* %330, align 8
  %331 = load i64, i64* %n4, align 8
  %332 = load i64*, i64** %ops, align 8
  %333 = getelementptr inbounds i64, i64* %332, i64 %331
  %334 = load i64, i64* %333, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %345

; <label>:336                                     ; preds = %310
  %337 = load %struct.random*, %struct.random** %randomPtr, align 8
  %338 = call i64 @random_generate(%struct.random* %337)
  %339 = urem i64 %338, 5
  %340 = mul i64 %339, 10
  %341 = add i64 %340, 50
  %342 = load i64, i64* %n4, align 8
  %343 = load i64*, i64** %prices, align 8
  %344 = getelementptr inbounds i64, i64* %343, i64 %342
  store i64 %341, i64* %344, align 8
  br label %345

; <label>:345                                     ; preds = %336, %310
  br label %346

; <label>:346                                     ; preds = %345
  %347 = load i64, i64* %n4, align 8
  %348 = add nsw i64 %347, 1
  store i64 %348, i64* %n4, align 8
  br label %306

; <label>:349                                     ; preds = %306
  store i32 -1, i32* %__status5, align 4
  store i32 9, i32* %tries6, align 4
  br label %350

; <label>:350                                     ; preds = %371, %349
  br label %351

; <label>:351                                     ; preds = %354, %350
  %352 = call i64 (...) @RTM_fallback_isLocked()
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %355

; <label>:354                                     ; preds = %351
  call void @llvm.x86.sse2.pause() #6
  br label %351

; <label>:355                                     ; preds = %351
  %356 = load i32, i32* %tries6, align 4
  %357 = add nsw i32 %356, -1
  store i32 %357, i32* %tries6, align 4
  %358 = load i32, i32* %tries6, align 4
  %359 = icmp sle i32 %358, 0
  br i1 %359, label %360, label %361

; <label>:360                                     ; preds = %355
  call void (...) @RTM_fallback_lock()
  br label %378

; <label>:361                                     ; preds = %355
  store i64 2, i64* %1, align 8
  store i64 0, i64* %handler.i11, align 8
  store i64 4294967295, i64* %ret.i12, align 8
  %362 = load i64, i64* %ret.i12, align 8
  %363 = load i64, i64* %1, align 8
  %364 = load i64, i64* %handler.i11, align 8
  %365 = load i64, i64* %1, align 8
  %366 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %363, i64 %364, i64 %365, i64 %362) #6, !srcloc !1
  store i64 %366, i64* %ret.i12, align 8
  %367 = load i64, i64* %ret.i12, align 8
  %368 = trunc i64 %367 to i32
  store i32 %368, i32* %__status5, align 4
  %369 = load i32, i32* %__status5, align 4
  %370 = icmp ne i32 %369, -1
  br i1 %370, label %371, label %372

; <label>:371                                     ; preds = %361
  br label %350

; <label>:372                                     ; preds = %361
  %373 = call i64 (...) @RTM_fallback_isLocked()
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %377

; <label>:375                                     ; preds = %372
  store i64 255, i64* %5, align 8
  %376 = load i64, i64* %5, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %376) #6, !srcloc !2
  br label %377

; <label>:377                                     ; preds = %375, %372
  br label %378

; <label>:378                                     ; preds = %377, %360
  store i64 0, i64* %n4, align 8
  br label %__kernel__client_run0

__kernel__client_run0:                            ; preds = %437, %378
  %379 = load i64, i64* %n4, align 8
  %380 = load i64, i64* %numUpdate, align 8
  %381 = icmp slt i64 %379, %380
  br i1 %381, label %382, label %440

; <label>:382                                     ; preds = %__kernel__client_run0
  %383 = load i64, i64* %n4, align 8
  %384 = load i64*, i64** %types, align 8
  %385 = getelementptr inbounds i64, i64* %384, i64 %383
  %386 = load i64, i64* %385, align 8
  store i64 %386, i64* %t7, align 8
  %387 = load i64, i64* %n4, align 8
  %388 = load i64*, i64** %ids, align 8
  %389 = getelementptr inbounds i64, i64* %388, i64 %387
  %390 = load i64, i64* %389, align 8
  store i64 %390, i64* %id8, align 8
  %391 = load i64, i64* %n4, align 8
  %392 = load i64*, i64** %ops, align 8
  %393 = getelementptr inbounds i64, i64* %392, i64 %391
  %394 = load i64, i64* %393, align 8
  store i64 %394, i64* %doAdd, align 8
  %395 = load i64, i64* %doAdd, align 8
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %420

; <label>:397                                     ; preds = %382
  %398 = load i64, i64* %n4, align 8
  %399 = load i64*, i64** %prices, align 8
  %400 = getelementptr inbounds i64, i64* %399, i64 %398
  %401 = load i64, i64* %400, align 8
  store i64 %401, i64* %newPrice, align 8
  %402 = load i64, i64* %t7, align 8
  switch i64 %402, label %418 [
    i64 0, label %403
    i64 1, label %408
    i64 2, label %413
  ]

; <label>:403                                     ; preds = %397
  %404 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %405 = load i64, i64* %id8, align 8
  %406 = load i64, i64* %newPrice, align 8
  %407 = call i64 @manager_addCar(%struct.manager* %404, i64 %405, i64 100, i64 %406)
  br label %419

; <label>:408                                     ; preds = %397
  %409 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %410 = load i64, i64* %id8, align 8
  %411 = load i64, i64* %newPrice, align 8
  %412 = call i64 @manager_addFlight(%struct.manager* %409, i64 %410, i64 100, i64 %411)
  br label %419

; <label>:413                                     ; preds = %397
  %414 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %415 = load i64, i64* %id8, align 8
  %416 = load i64, i64* %newPrice, align 8
  %417 = call i64 @manager_addRoom(%struct.manager* %414, i64 %415, i64 100, i64 %416)
  br label %419

; <label>:418                                     ; preds = %397
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 288, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.client_run, i32 0, i32 0)) #8
  unreachable

; <label>:419                                     ; preds = %413, %408, %403
  br label %436

; <label>:420                                     ; preds = %382
  %421 = load i64, i64* %t7, align 8
  switch i64 %421, label %434 [
    i64 0, label %422
    i64 1, label %426
    i64 2, label %430
  ]

; <label>:422                                     ; preds = %420
  %423 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %424 = load i64, i64* %id8, align 8
  %425 = call i64 @manager_deleteCar(%struct.manager* %423, i64 %424, i64 100)
  br label %435

; <label>:426                                     ; preds = %420
  %427 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %428 = load i64, i64* %id8, align 8
  %429 = call i64 @manager_deleteFlight(%struct.manager* %427, i64 %428)
  br label %435

; <label>:430                                     ; preds = %420
  %431 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %432 = load i64, i64* %id8, align 8
  %433 = call i64 @manager_deleteRoom(%struct.manager* %431, i64 %432, i64 100)
  br label %435

; <label>:434                                     ; preds = %420
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 302, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.client_run, i32 0, i32 0)) #8
  unreachable

; <label>:435                                     ; preds = %430, %426, %422
  br label %436

; <label>:436                                     ; preds = %435, %419
  br label %437

; <label>:437                                     ; preds = %436
  %438 = load i64, i64* %n4, align 8
  %439 = add nsw i64 %438, 1
  store i64 %439, i64* %n4, align 8
  br label %__kernel__client_run0, !llvm.loop !6

; <label>:440                                     ; preds = %__kernel__client_run0
  %441 = load i32, i32* %tries6, align 4
  %442 = icmp sgt i32 %441, 0
  br i1 %442, label %443, label %445

; <label>:443                                     ; preds = %440
  store i64 2, i64* %9, align 8
  %444 = load i64, i64* %9, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %444) #6, !srcloc !5
  br label %446

; <label>:445                                     ; preds = %440
  call void (...) @RTM_fallback_unlock()
  br label %446

; <label>:446                                     ; preds = %445, %443
  br label %448

; <label>:447                                     ; preds = %71
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 311, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.client_run, i32 0, i32 0)) #8
  unreachable

; <label>:448                                     ; preds = %446, %299, %248
  br label %449

; <label>:449                                     ; preds = %448
  call void @workEnd(i32 0, i32 0)
  br label %450

; <label>:450                                     ; preds = %449
  br label %451

; <label>:451                                     ; preds = %450
  %452 = load i64, i64* %i, align 8
  %453 = add nsw i64 %452, 1
  store i64 %453, i64* %i, align 8
  br label %58

; <label>:454                                     ; preds = %58
  br label %455

; <label>:455                                     ; preds = %454
  %456 = call i64 (...) @thread_getId()
  %457 = trunc i64 %456 to i32
  %458 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %459 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %458, i32 0, i32 4
  %460 = load i32, i32* %459, align 4
  call void @SimRoiEnd(i32 %457, i32 %460)
  br label %461

; <label>:461                                     ; preds = %455
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
