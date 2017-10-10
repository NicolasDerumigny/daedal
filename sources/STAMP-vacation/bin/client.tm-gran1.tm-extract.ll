; ModuleID = '../bin/client.tm-gran.ll'
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
  %structArg7 = alloca { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }
  %structArg = alloca { i64, i64*, i64*, i64*, %struct.manager*, i64* }
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

; <label>:46                                      ; preds = %218, %7
  %i.0 = phi i64 [ 0, %7 ], [ %219, %218 ]
  %47 = icmp slt i64 %i.0, %17
  br i1 %47, label %48, label %220

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
  switch i32 %55, label %214 [
    i32 0, label %56
    i32 1, label %124
    i32 2, label %157
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

; <label>:94                                      ; preds = %93, %._crit_edge
  br label %95

; <label>:95                                      ; preds = %94, %84
  br label %codeRepl6

codeRepl6:                                        ; preds = %95
  %gep_8 = getelementptr { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }, { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }* %structArg7, i32 0, i32 0
  store i64 %59, i64* %gep_8
  %gep_9 = getelementptr { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }, { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }* %structArg7, i32 0, i32 1
  store i64* %26, i64** %gep_9
  %gep_10 = getelementptr { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }, { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }* %structArg7, i32 0, i32 2
  store i64* %29, i64** %gep_10
  %gep_11 = getelementptr { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }, { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }* %structArg7, i32 0, i32 3
  store %struct.manager* %13, %struct.manager** %gep_11
  %gep_maxPrices = getelementptr { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }, { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }* %structArg7, i32 0, i32 4
  store [3 x i64]* %maxPrices, [3 x i64]** %gep_maxPrices
  %gep_maxIds = getelementptr { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }, { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }* %structArg7, i32 0, i32 5
  store [3 x i64]* %maxIds, [3 x i64]** %gep_maxIds
  %targetBlock12 = call i1 @client_run___kernel__client_run1({ i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }* %structArg7)
  %gep_reload_isFound.0 = getelementptr { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }, { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }* %structArg7, i32 0, i32 6
  %isFound.0.reload = load i64, i64* %gep_reload_isFound.0
  br i1 %targetBlock12, label %97, label %96

; <label>:96                                      ; preds = %codeRepl6
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 220, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.client_run, i32 0, i32 0)) #8
  unreachable

; <label>:97                                      ; preds = %codeRepl6
  %98 = icmp ne i64 %isFound.0.reload, 0
  br i1 %98, label %99, label %._crit_edge5

._crit_edge5:                                     ; preds = %97
  br label %101

; <label>:99                                      ; preds = %97
  %100 = call i64 @manager_addCustomer(%struct.manager* %13, i64 %62)
  br label %101

; <label>:101                                     ; preds = %99, %._crit_edge5
  %102 = load i64, i64* %40, align 16
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %._crit_edge6

._crit_edge6:                                     ; preds = %101
  br label %107

; <label>:104                                     ; preds = %101
  %105 = load i64, i64* %41, align 16
  %106 = call i64 @manager_reserveCar(%struct.manager* %13, i64 %62, i64 %105)
  br label %107

; <label>:107                                     ; preds = %104, %._crit_edge6
  %108 = load i64, i64* %42, align 8
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %._crit_edge7

._crit_edge7:                                     ; preds = %107
  br label %113

; <label>:110                                     ; preds = %107
  %111 = load i64, i64* %43, align 8
  %112 = call i64 @manager_reserveFlight(%struct.manager* %13, i64 %62, i64 %111)
  br label %113

; <label>:113                                     ; preds = %110, %._crit_edge7
  %114 = load i64, i64* %44, align 16
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %._crit_edge8

._crit_edge8:                                     ; preds = %113
  br label %119

; <label>:116                                     ; preds = %113
  %117 = load i64, i64* %45, align 16
  %118 = call i64 @manager_reserveRoom(%struct.manager* %13, i64 %62, i64 %117)
  br label %119

; <label>:119                                     ; preds = %116, %._crit_edge8
  %120 = icmp sgt i32 %82, 0
  br i1 %120, label %121, label %122

; <label>:121                                     ; preds = %119
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #6, !srcloc !3
  br label %123

; <label>:122                                     ; preds = %119
  call void (...) @RTM_fallback_unlock()
  br label %123

; <label>:123                                     ; preds = %122, %121
  br label %215

; <label>:124                                     ; preds = %52
  %125 = call i64 @random_generate(%struct.random* %15)
  %126 = urem i64 %125, %21
  %127 = add i64 %126, 1
  br label %128

; <label>:128                                     ; preds = %141, %124
  %tries3.0 = phi i32 [ 9, %124 ], [ %134, %141 ]
  br label %129

; <label>:129                                     ; preds = %132, %128
  %130 = call i64 (...) @RTM_fallback_isLocked()
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

; <label>:132                                     ; preds = %129
  call void @llvm.x86.sse2.pause() #6
  br label %129

; <label>:133                                     ; preds = %129
  %134 = add nsw i32 %tries3.0, -1
  %135 = icmp sle i32 %134, 0
  br i1 %135, label %136, label %137

; <label>:136                                     ; preds = %133
  call void (...) @RTM_fallback_lock()
  br label %147

; <label>:137                                     ; preds = %133
  %138 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 0, i64 1, i64 4294967295) #6, !srcloc !1
  %139 = trunc i64 %138 to i32
  %140 = icmp ne i32 %139, -1
  br i1 %140, label %141, label %142

; <label>:141                                     ; preds = %137
  br label %128

; <label>:142                                     ; preds = %137
  %143 = call i64 (...) @RTM_fallback_isLocked()
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %._crit_edge9

._crit_edge9:                                     ; preds = %142
  br label %146

; <label>:145                                     ; preds = %142
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %146

; <label>:146                                     ; preds = %145, %._crit_edge9
  br label %147

; <label>:147                                     ; preds = %146, %136
  %148 = call i64 @manager_queryCustomerBill(%struct.manager* %13, i64 %127)
  %149 = icmp sge i64 %148, 0
  br i1 %149, label %150, label %._crit_edge10

._crit_edge10:                                    ; preds = %147
  br label %152

; <label>:150                                     ; preds = %147
  %151 = call i64 @manager_deleteCustomer(%struct.manager* %13, i64 %127)
  br label %152

; <label>:152                                     ; preds = %150, %._crit_edge10
  %153 = icmp sgt i32 %134, 0
  br i1 %153, label %154, label %155

; <label>:154                                     ; preds = %152
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 1) #6, !srcloc !3
  br label %156

; <label>:155                                     ; preds = %152
  call void (...) @RTM_fallback_unlock()
  br label %156

; <label>:156                                     ; preds = %155, %154
  br label %215

; <label>:157                                     ; preds = %52
  %158 = call i64 @random_generate(%struct.random* %15)
  %159 = urem i64 %158, %19
  %160 = add i64 %159, 1
  br label %161

; <label>:161                                     ; preds = %184, %157
  %n4.0 = phi i64 [ 0, %157 ], [ %185, %184 ]
  %162 = icmp slt i64 %n4.0, %160
  br i1 %162, label %163, label %186

; <label>:163                                     ; preds = %161
  %164 = call i64 @random_generate(%struct.random* %15)
  %165 = urem i64 %164, 3
  %166 = getelementptr inbounds i64, i64* %26, i64 %n4.0
  store i64 %165, i64* %166, align 8
  %167 = call i64 @random_generate(%struct.random* %15)
  %168 = urem i64 %167, %21
  %169 = add i64 %168, 1
  %170 = getelementptr inbounds i64, i64* %29, i64 %n4.0
  store i64 %169, i64* %170, align 8
  %171 = call i64 @random_generate(%struct.random* %15)
  %172 = urem i64 %171, 2
  %173 = getelementptr inbounds i64, i64* %32, i64 %n4.0
  store i64 %172, i64* %173, align 8
  %174 = getelementptr inbounds i64, i64* %32, i64 %n4.0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %._crit_edge11

._crit_edge11:                                    ; preds = %163
  br label %183

; <label>:177                                     ; preds = %163
  %178 = call i64 @random_generate(%struct.random* %15)
  %179 = urem i64 %178, 5
  %180 = mul i64 %179, 10
  %181 = add i64 %180, 50
  %182 = getelementptr inbounds i64, i64* %35, i64 %n4.0
  store i64 %181, i64* %182, align 8
  br label %183

; <label>:183                                     ; preds = %177, %._crit_edge11
  br label %184

; <label>:184                                     ; preds = %183
  %185 = add nsw i64 %n4.0, 1
  br label %161

; <label>:186                                     ; preds = %161
  br label %187

; <label>:187                                     ; preds = %200, %186
  %tries6.0 = phi i32 [ 9, %186 ], [ %193, %200 ]
  br label %188

; <label>:188                                     ; preds = %191, %187
  %189 = call i64 (...) @RTM_fallback_isLocked()
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

; <label>:191                                     ; preds = %188
  call void @llvm.x86.sse2.pause() #6
  br label %188

; <label>:192                                     ; preds = %188
  %193 = add nsw i32 %tries6.0, -1
  %194 = icmp sle i32 %193, 0
  br i1 %194, label %195, label %196

; <label>:195                                     ; preds = %192
  call void (...) @RTM_fallback_lock()
  br label %206

; <label>:196                                     ; preds = %192
  %197 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 0, i64 2, i64 4294967295) #6, !srcloc !1
  %198 = trunc i64 %197 to i32
  %199 = icmp ne i32 %198, -1
  br i1 %199, label %200, label %201

; <label>:200                                     ; preds = %196
  br label %187

; <label>:201                                     ; preds = %196
  %202 = call i64 (...) @RTM_fallback_isLocked()
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %._crit_edge12

._crit_edge12:                                    ; preds = %201
  br label %205

; <label>:204                                     ; preds = %201
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %205

; <label>:205                                     ; preds = %204, %._crit_edge12
  br label %206

; <label>:206                                     ; preds = %205, %195
  br label %codeRepl

codeRepl:                                         ; preds = %206
  %gep_ = getelementptr { i64, i64*, i64*, i64*, %struct.manager*, i64* }, { i64, i64*, i64*, i64*, %struct.manager*, i64* }* %structArg, i32 0, i32 0
  store i64 %160, i64* %gep_
  %gep_1 = getelementptr { i64, i64*, i64*, i64*, %struct.manager*, i64* }, { i64, i64*, i64*, i64*, %struct.manager*, i64* }* %structArg, i32 0, i32 1
  store i64* %26, i64** %gep_1
  %gep_2 = getelementptr { i64, i64*, i64*, i64*, %struct.manager*, i64* }, { i64, i64*, i64*, i64*, %struct.manager*, i64* }* %structArg, i32 0, i32 2
  store i64* %29, i64** %gep_2
  %gep_3 = getelementptr { i64, i64*, i64*, i64*, %struct.manager*, i64* }, { i64, i64*, i64*, i64*, %struct.manager*, i64* }* %structArg, i32 0, i32 3
  store i64* %32, i64** %gep_3
  %gep_4 = getelementptr { i64, i64*, i64*, i64*, %struct.manager*, i64* }, { i64, i64*, i64*, i64*, %struct.manager*, i64* }* %structArg, i32 0, i32 4
  store %struct.manager* %13, %struct.manager** %gep_4
  %gep_5 = getelementptr { i64, i64*, i64*, i64*, %struct.manager*, i64* }, { i64, i64*, i64*, i64*, %struct.manager*, i64* }* %structArg, i32 0, i32 5
  store i64* %35, i64** %gep_5
  %targetBlock = call i16 @client_run___kernel__client_run0({ i64, i64*, i64*, i64*, %struct.manager*, i64* }* %structArg)
  switch i16 %targetBlock, label %207 [
    i16 0, label %209
    i16 1, label %208
  ]

; <label>:207                                     ; preds = %codeRepl
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 288, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.client_run, i32 0, i32 0)) #8
  unreachable

; <label>:208                                     ; preds = %codeRepl
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 302, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.client_run, i32 0, i32 0)) #8
  unreachable

; <label>:209                                     ; preds = %codeRepl
  %210 = icmp sgt i32 %193, 0
  br i1 %210, label %211, label %212

; <label>:211                                     ; preds = %209
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 2) #6, !srcloc !3
  br label %213

; <label>:212                                     ; preds = %209
  call void (...) @RTM_fallback_unlock()
  br label %213

; <label>:213                                     ; preds = %212, %211
  br label %215

; <label>:214                                     ; preds = %52
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 311, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.client_run, i32 0, i32 0)) #8
  unreachable

; <label>:215                                     ; preds = %213, %156, %123
  br label %216

; <label>:216                                     ; preds = %215
  call void @workEnd(i32 0, i32 0)
  br label %217

; <label>:217                                     ; preds = %216
  br label %218

; <label>:218                                     ; preds = %217
  %219 = add nsw i64 %i.0, 1
  br label %46

; <label>:220                                     ; preds = %46
  br label %221

; <label>:221                                     ; preds = %220
  %222 = call i64 (...) @thread_getId()
  %223 = trunc i64 %222 to i32
  %224 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 4
  %225 = load i32, i32* %224, align 4
  call void @SimRoiEnd(i32 %223, i32 %225)
  br label %226

; <label>:226                                     ; preds = %221
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

; Function Attrs: alwaysinline nounwind
define internal i16 @client_run___kernel__client_run0({ i64, i64*, i64*, i64*, %struct.manager*, i64* }*) #7 {
newFuncRoot:
  %gep_ = getelementptr { i64, i64*, i64*, i64*, %struct.manager*, i64* }, { i64, i64*, i64*, i64*, %struct.manager*, i64* }* %0, i32 0, i32 0
  %loadgep_ = load i64, i64* %gep_
  %gep_1 = getelementptr { i64, i64*, i64*, i64*, %struct.manager*, i64* }, { i64, i64*, i64*, i64*, %struct.manager*, i64* }* %0, i32 0, i32 1
  %loadgep_2 = load i64*, i64** %gep_1
  %gep_3 = getelementptr { i64, i64*, i64*, i64*, %struct.manager*, i64* }, { i64, i64*, i64*, i64*, %struct.manager*, i64* }* %0, i32 0, i32 2
  %loadgep_4 = load i64*, i64** %gep_3
  %gep_5 = getelementptr { i64, i64*, i64*, i64*, %struct.manager*, i64* }, { i64, i64*, i64*, i64*, %struct.manager*, i64* }* %0, i32 0, i32 3
  %loadgep_6 = load i64*, i64** %gep_5
  %gep_7 = getelementptr { i64, i64*, i64*, i64*, %struct.manager*, i64* }, { i64, i64*, i64*, i64*, %struct.manager*, i64* }* %0, i32 0, i32 4
  %loadgep_8 = load %struct.manager*, %struct.manager** %gep_7
  %gep_9 = getelementptr { i64, i64*, i64*, i64*, %struct.manager*, i64* }, { i64, i64*, i64*, i64*, %struct.manager*, i64* }* %0, i32 0, i32 5
  %loadgep_10 = load i64*, i64** %gep_9
  br label %__kernel__client_run0

.exitStub:                                        ; preds = %__kernel__client_run0
  ret i16 0

.exitStub11:                                      ; preds = %10
  ret i16 1

.exitStub12:                                      ; preds = %18
  ret i16 2

__kernel__client_run0:                            ; preds = %newFuncRoot, %29
  %n4.1 = phi i64 [ 0, %newFuncRoot ], [ %30, %29 ]
  %1 = icmp slt i64 %n4.1, %loadgep_
  br i1 %1, label %2, label %.exitStub

; <label>:2                                       ; preds = %__kernel__client_run0
  %3 = getelementptr inbounds i64, i64* %loadgep_2, i64 %n4.1
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds i64, i64* %loadgep_4, i64 %n4.1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds i64, i64* %loadgep_6, i64 %n4.1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %18, label %10

; <label>:10                                      ; preds = %2
  switch i64 %4, label %.exitStub11 [
    i64 0, label %15
    i64 1, label %13
    i64 2, label %11
  ]

; <label>:11                                      ; preds = %10
  %12 = call i64 @manager_deleteRoom(%struct.manager* %loadgep_8, i64 %6, i64 100)
  br label %17

; <label>:13                                      ; preds = %10
  %14 = call i64 @manager_deleteFlight(%struct.manager* %loadgep_8, i64 %6)
  br label %17

; <label>:15                                      ; preds = %10
  %16 = call i64 @manager_deleteCar(%struct.manager* %loadgep_8, i64 %6, i64 100)
  br label %17

; <label>:17                                      ; preds = %11, %13, %15
  br label %28

; <label>:18                                      ; preds = %2
  %19 = getelementptr inbounds i64, i64* %loadgep_10, i64 %n4.1
  %20 = load i64, i64* %19, align 8
  switch i64 %4, label %.exitStub12 [
    i64 0, label %25
    i64 1, label %23
    i64 2, label %21
  ]

; <label>:21                                      ; preds = %18
  %22 = call i64 @manager_addRoom(%struct.manager* %loadgep_8, i64 %6, i64 100, i64 %20)
  br label %27

; <label>:23                                      ; preds = %18
  %24 = call i64 @manager_addFlight(%struct.manager* %loadgep_8, i64 %6, i64 100, i64 %20)
  br label %27

; <label>:25                                      ; preds = %18
  %26 = call i64 @manager_addCar(%struct.manager* %loadgep_8, i64 %6, i64 100, i64 %20)
  br label %27

; <label>:27                                      ; preds = %21, %23, %25
  br label %28

; <label>:28                                      ; preds = %17, %27
  br label %29

; <label>:29                                      ; preds = %28
  %30 = add nsw i64 %n4.1, 1
  br label %__kernel__client_run0, !llvm.loop !4
}

; Function Attrs: alwaysinline nounwind
define internal i1 @client_run___kernel__client_run1({ i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }*) #7 {
newFuncRoot:
  %gep_ = getelementptr { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }, { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }* %0, i32 0, i32 0
  %loadgep_ = load i64, i64* %gep_
  %gep_1 = getelementptr { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }, { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }* %0, i32 0, i32 1
  %loadgep_2 = load i64*, i64** %gep_1
  %gep_3 = getelementptr { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }, { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }* %0, i32 0, i32 2
  %loadgep_4 = load i64*, i64** %gep_3
  %gep_5 = getelementptr { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }, { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }* %0, i32 0, i32 3
  %loadgep_6 = load %struct.manager*, %struct.manager** %gep_5
  %gep_maxPrices = getelementptr { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }, { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }* %0, i32 0, i32 4
  %loadgep_maxPrices = load [3 x i64]*, [3 x i64]** %gep_maxPrices
  %gep_maxIds = getelementptr { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }, { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }* %0, i32 0, i32 5
  %loadgep_maxIds = load [3 x i64]*, [3 x i64]** %gep_maxIds
  br label %__kernel__client_run1

.exitStub:                                        ; preds = %__kernel__client_run1
  %gep_isFound.0 = getelementptr { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }, { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }* %0, i32 0, i32 6
  store i64 %isFound.0, i64* %gep_isFound.0
  ret i1 true

.exitStub7:                                       ; preds = %2
  %gep_isFound.08 = getelementptr { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }, { i64, i64*, i64*, %struct.manager*, [3 x i64]*, [3 x i64]*, i64 }* %0, i32 0, i32 6
  store i64 %isFound.0, i64* %gep_isFound.08
  ret i1 false

__kernel__client_run1:                            ; preds = %newFuncRoot, %33
  %n.1 = phi i64 [ 0, %newFuncRoot ], [ %34, %33 ]
  %isFound.0 = phi i64 [ 0, %newFuncRoot ], [ %isFound.1, %33 ]
  %1 = icmp slt i64 %n.1, %loadgep_
  br i1 %1, label %2, label %.exitStub

; <label>:2                                       ; preds = %__kernel__client_run1
  %3 = getelementptr inbounds i64, i64* %loadgep_2, i64 %n.1
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds i64, i64* %loadgep_4, i64 %n.1
  %6 = load i64, i64* %5, align 8
  switch i64 %4, label %.exitStub7 [
    i64 0, label %19
    i64 1, label %13
    i64 2, label %7
  ]

; <label>:7                                       ; preds = %2
  %8 = call i64 @manager_queryRoom(%struct.manager* %loadgep_6, i64 %6) #9
  %9 = icmp sge i64 %8, 0
  br i1 %9, label %10, label %._crit_edge3

._crit_edge3:                                     ; preds = %7
  br label %12

; <label>:10                                      ; preds = %7
  %11 = call i64 @manager_queryRoomPrice(%struct.manager* %loadgep_6, i64 %6)
  br label %12

; <label>:12                                      ; preds = %10, %._crit_edge3
  %price.2 = phi i64 [ %11, %10 ], [ -1, %._crit_edge3 ]
  br label %25

; <label>:13                                      ; preds = %2
  %14 = call i64 @manager_queryFlight(%struct.manager* %loadgep_6, i64 %6) #9
  %15 = icmp sge i64 %14, 0
  br i1 %15, label %16, label %._crit_edge2

._crit_edge2:                                     ; preds = %13
  br label %18

; <label>:16                                      ; preds = %13
  %17 = call i64 @manager_queryFlightPrice(%struct.manager* %loadgep_6, i64 %6)
  br label %18

; <label>:18                                      ; preds = %16, %._crit_edge2
  %price.1 = phi i64 [ %17, %16 ], [ -1, %._crit_edge2 ]
  br label %25

; <label>:19                                      ; preds = %2
  %20 = call i64 @manager_queryCar(%struct.manager* %loadgep_6, i64 %6) #9
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %._crit_edge1

._crit_edge1:                                     ; preds = %19
  br label %24

; <label>:22                                      ; preds = %19
  %23 = call i64 @manager_queryCarPrice(%struct.manager* %loadgep_6, i64 %6)
  br label %24

; <label>:24                                      ; preds = %22, %._crit_edge1
  %price.0 = phi i64 [ %23, %22 ], [ -1, %._crit_edge1 ]
  br label %25

; <label>:25                                      ; preds = %12, %18, %24
  %price.3 = phi i64 [ %price.2, %12 ], [ %price.1, %18 ], [ %price.0, %24 ]
  %26 = getelementptr inbounds [3 x i64], [3 x i64]* %loadgep_maxPrices, i64 0, i64 %4
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %price.3, %27
  br i1 %28, label %29, label %._crit_edge4

._crit_edge4:                                     ; preds = %25
  br label %32

; <label>:29                                      ; preds = %25
  %30 = getelementptr inbounds [3 x i64], [3 x i64]* %loadgep_maxPrices, i64 0, i64 %4
  store i64 %price.3, i64* %30, align 8
  %31 = getelementptr inbounds [3 x i64], [3 x i64]* %loadgep_maxIds, i64 0, i64 %4
  store i64 %6, i64* %31, align 8
  br label %32

; <label>:32                                      ; preds = %29, %._crit_edge4
  %isFound.1 = phi i64 [ 1, %29 ], [ %isFound.0, %._crit_edge4 ]
  br label %33

; <label>:33                                      ; preds = %32
  %34 = add nsw i64 %n.1, 1
  br label %__kernel__client_run1, !llvm.loop !6
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { alwaysinline nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 1451375, i32 1451391, i32 1451427, i32 1451463, i32 1451499}
!2 = !{i32 1451976, i32 1451991, i32 1452025}
!3 = !{i32 1451747, i32 1451762, i32 1451790}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.vectorize.width", i32 1337}
!6 = distinct !{!6, !5}
