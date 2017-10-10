; ModuleID = 'yada.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._tm_thread_context_t = type { i32, i32, %struct.simple_metadata*, i32, i32, [44 x i8] }
%struct.simple_metadata = type opaque
%struct.heap = type opaque
%struct.mesh = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.region = type opaque
%struct.element = type opaque
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@global_inputPrefix = global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), align 8
@global_numThread = global i64 1, align 8
@global_angleConstraint = global double 2.000000e+01, align 8
@global_totalNumAdded = global i64 0, align 8
@global_numProcess = global i64 0, align 8
@thread_contexts = external global %struct._tm_thread_context_t*, align 8
@global_workHeapPtr = common global %struct.heap* null, align 8
@global_meshPtr = common global %struct.mesh* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"regionPtr\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"yada.c\00", align 1
@__PRETTY_FUNCTION__.process = private unnamed_addr constant [15 x i8] c"void process()\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"RTM is not present\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"__get_cpuid_max(0, NULL) >= 7 && \22RTM is not present\22\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"!!(b & CPUID_RTM) && \22RTM is not present\22\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"global_meshPtr\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Angle constraint = %lf\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Reading input... \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"done.\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"global_workHeapPtr\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Initial number of mesh elements = %li\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Initial number of bad elements  = %li\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Starting triangulation...\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.14 = private unnamed_addr constant [7 x i8] c" done.\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"Elapsed time                    = %0.3lf\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Final mesh size                 = %li\0A\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"Number of elements processed    = %li\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Final mesh is %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"valid.\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"INVALID!\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"isSuccess\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Work item count: %li\0A\00", align 1
@opterr = external global i32, align 4
@.str.23 = private unnamed_addr constant [7 x i8] c"a:i:t:\00", align 1
@optarg = external global i8*, align 8
@optind = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.24 = private unnamed_addr constant [25 x i8] c"Non-option argument: %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"Usage: %s [options]\0A\00", align 1
@.str.26 = private unnamed_addr constant [51 x i8] c"\0AOptions:                              (defaults)\0A\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"    a <FLT>   Min [a]ngle constraint  (%lf)\0A\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c"    i <STR>   [i]nput name prefix     (%s)\0A\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"    t <UINT>  Number of [t]hreads     (%li)\0A\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@__PRETTY_FUNCTION__.initializeWork = private unnamed_addr constant [40 x i8] c"long initializeWork(heap_t *, mesh_t *)\00", align 1

; Function Attrs: nounwind uwtable
define void @process() #0 {
  %1 = alloca i64, align 8
  %handler.i19 = alloca i64, align 8
  %ret.i20 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %handler.i17 = alloca i64, align 8
  %ret.i18 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %handler.i15 = alloca i64, align 8
  %ret.i16 = alloca i64, align 8
  %10 = alloca i64, align 8
  %handler.i13 = alloca i64, align 8
  %ret.i14 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %handler.i11 = alloca i64, align 8
  %ret.i12 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %handler.i = alloca i64, align 8
  %ret.i = alloca i64, align 8
  %18 = alloca i64, align 8
  %_tm_thread_context = alloca %struct._tm_thread_context_t*, align 8
  %workHeapPtr = alloca %struct.heap*, align 8
  %meshPtr = alloca %struct.mesh*, align 8
  %regionPtr = alloca %struct.region*, align 8
  %totalNumAdded = alloca i64, align 8
  %numProcess = alloca i64, align 8
  %threadId = alloca i32, align 4
  %elementPtr = alloca %struct.element*, align 8
  %__status = alloca i32, align 4
  %tries = alloca i32, align 4
  %isGarbage = alloca i64, align 8
  %__status1 = alloca i32, align 4
  %tries2 = alloca i32, align 4
  %numAdded = alloca i64, align 8
  %__status3 = alloca i32, align 4
  %tries4 = alloca i32, align 4
  %__status5 = alloca i32, align 4
  %tries6 = alloca i32, align 4
  %__status7 = alloca i32, align 4
  %tries8 = alloca i32, align 4
  %__status9 = alloca i32, align 4
  %tries10 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = call i64 (...) @thread_getId()
  %22 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %23 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %22, i64 %21
  store %struct._tm_thread_context_t* %23, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  br label %24

; <label>:24                                      ; preds = %0
  %25 = call i64 (...) @thread_getId()
  %26 = trunc i64 %25 to i32
  call void @SimRoiStart(i32 %26)
  br label %27

; <label>:27                                      ; preds = %24
  %28 = load %struct.heap*, %struct.heap** @global_workHeapPtr, align 8
  store %struct.heap* %28, %struct.heap** %workHeapPtr, align 8
  %29 = load %struct.mesh*, %struct.mesh** @global_meshPtr, align 8
  store %struct.mesh* %29, %struct.mesh** %meshPtr, align 8
  store i64 0, i64* %totalNumAdded, align 8
  store i64 0, i64* %numProcess, align 8
  %30 = call %struct.region* (...) @Pregion_alloc()
  store %struct.region* %30, %struct.region** %regionPtr, align 8
  %31 = load %struct.region*, %struct.region** %regionPtr, align 8
  %32 = icmp ne %struct.region* %31, null
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %27
  br label %36

; <label>:34                                      ; preds = %27
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 201, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %36

; <label>:36                                      ; preds = %35, %33
  br label %37

; <label>:37                                      ; preds = %36, %128, %255
  br label %38

; <label>:38                                      ; preds = %37
  %39 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %40 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %threadId, align 4
  %42 = load i32, i32* %threadId, align 4
  %43 = call i32 @workBegin(i32 0, i32 %42)
  %44 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %45 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  br label %46

; <label>:46                                      ; preds = %38
  store i32 -1, i32* %__status, align 4
  store i32 9, i32* %tries, align 4
  br label %47

; <label>:47                                      ; preds = %68, %46
  br label %48

; <label>:48                                      ; preds = %51, %47
  %49 = call i64 (...) @RTM_fallback_isLocked()
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

; <label>:51                                      ; preds = %48
  call void @llvm.x86.sse2.pause() #5
  br label %48

; <label>:52                                      ; preds = %48
  %53 = load i32, i32* %tries, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %tries, align 4
  %55 = load i32, i32* %tries, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %58

; <label>:57                                      ; preds = %52
  call void (...) @RTM_fallback_lock()
  br label %75

; <label>:58                                      ; preds = %52
  store i64 0, i64* %17, align 8
  store i64 0, i64* %handler.i, align 8
  store i64 4294967295, i64* %ret.i, align 8
  %59 = load i64, i64* %ret.i, align 8
  %60 = load i64, i64* %17, align 8
  %61 = load i64, i64* %handler.i, align 8
  %62 = load i64, i64* %17, align 8
  %63 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %60, i64 %61, i64 %62, i64 %59) #5, !srcloc !1
  store i64 %63, i64* %ret.i, align 8
  %64 = load i64, i64* %ret.i, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %__status, align 4
  %66 = load i32, i32* %__status, align 4
  %67 = icmp ne i32 %66, -1
  br i1 %67, label %68, label %69

; <label>:68                                      ; preds = %58
  br label %47

; <label>:69                                      ; preds = %58
  %70 = call i64 (...) @RTM_fallback_isLocked()
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

; <label>:72                                      ; preds = %69
  store i64 255, i64* %16, align 8
  %73 = load i64, i64* %16, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %73) #5, !srcloc !2
  br label %74

; <label>:74                                      ; preds = %72, %69
  br label %75

; <label>:75                                      ; preds = %74, %57
  %76 = load %struct.heap*, %struct.heap** %workHeapPtr, align 8
  %77 = call i8* @TMheap_remove(%struct.heap* %76)
  %78 = bitcast i8* %77 to %struct.element*
  store %struct.element* %78, %struct.element** %elementPtr, align 8
  %79 = load i32, i32* %tries, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %83

; <label>:81                                      ; preds = %75
  store i64 0, i64* %15, align 8
  %82 = load i64, i64* %15, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %82) #5, !srcloc !3
  br label %84

; <label>:83                                      ; preds = %75
  call void (...) @RTM_fallback_unlock()
  br label %84

; <label>:84                                      ; preds = %83, %81
  %85 = load %struct.element*, %struct.element** %elementPtr, align 8
  %86 = icmp eq %struct.element* %85, null
  br i1 %86, label %87, label %88

; <label>:87                                      ; preds = %84
  br label %256

; <label>:88                                      ; preds = %84
  store i32 -1, i32* %__status1, align 4
  store i32 9, i32* %tries2, align 4
  br label %89

; <label>:89                                      ; preds = %110, %88
  br label %90

; <label>:90                                      ; preds = %93, %89
  %91 = call i64 (...) @RTM_fallback_isLocked()
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

; <label>:93                                      ; preds = %90
  call void @llvm.x86.sse2.pause() #5
  br label %90

; <label>:94                                      ; preds = %90
  %95 = load i32, i32* %tries2, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %tries2, align 4
  %97 = load i32, i32* %tries2, align 4
  %98 = icmp sle i32 %97, 0
  br i1 %98, label %99, label %100

; <label>:99                                      ; preds = %94
  call void (...) @RTM_fallback_lock()
  br label %117

; <label>:100                                     ; preds = %94
  store i64 1, i64* %13, align 8
  store i64 0, i64* %handler.i11, align 8
  store i64 4294967295, i64* %ret.i12, align 8
  %101 = load i64, i64* %ret.i12, align 8
  %102 = load i64, i64* %13, align 8
  %103 = load i64, i64* %handler.i11, align 8
  %104 = load i64, i64* %13, align 8
  %105 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %102, i64 %103, i64 %104, i64 %101) #5, !srcloc !1
  store i64 %105, i64* %ret.i12, align 8
  %106 = load i64, i64* %ret.i12, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %__status1, align 4
  %108 = load i32, i32* %__status1, align 4
  %109 = icmp ne i32 %108, -1
  br i1 %109, label %110, label %111

; <label>:110                                     ; preds = %100
  br label %89

; <label>:111                                     ; preds = %100
  %112 = call i64 (...) @RTM_fallback_isLocked()
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

; <label>:114                                     ; preds = %111
  store i64 255, i64* %12, align 8
  %115 = load i64, i64* %12, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %115) #5, !srcloc !2
  br label %116

; <label>:116                                     ; preds = %114, %111
  br label %117

; <label>:117                                     ; preds = %116, %99
  %118 = load %struct.element*, %struct.element** %elementPtr, align 8
  %119 = call i64 @TMelement_isGarbage(%struct.element* %118)
  store i64 %119, i64* %isGarbage, align 8
  %120 = load i32, i32* %tries2, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %124

; <label>:122                                     ; preds = %117
  store i64 1, i64* %11, align 8
  %123 = load i64, i64* %11, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %123) #5, !srcloc !3
  br label %125

; <label>:124                                     ; preds = %117
  call void (...) @RTM_fallback_unlock()
  br label %125

; <label>:125                                     ; preds = %124, %122
  %126 = load i64, i64* %isGarbage, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

; <label>:128                                     ; preds = %125
  br label %37

; <label>:129                                     ; preds = %125
  store i32 -1, i32* %__status3, align 4
  store i32 9, i32* %tries4, align 4
  br label %130

; <label>:130                                     ; preds = %151, %129
  br label %131

; <label>:131                                     ; preds = %134, %130
  %132 = call i64 (...) @RTM_fallback_isLocked()
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

; <label>:134                                     ; preds = %131
  call void @llvm.x86.sse2.pause() #5
  br label %131

; <label>:135                                     ; preds = %131
  %136 = load i32, i32* %tries4, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %tries4, align 4
  %138 = load i32, i32* %tries4, align 4
  %139 = icmp sle i32 %138, 0
  br i1 %139, label %140, label %141

; <label>:140                                     ; preds = %135
  call void (...) @RTM_fallback_lock()
  br label %158

; <label>:141                                     ; preds = %135
  store i64 2, i64* %9, align 8
  store i64 0, i64* %handler.i15, align 8
  store i64 4294967295, i64* %ret.i16, align 8
  %142 = load i64, i64* %ret.i16, align 8
  %143 = load i64, i64* %9, align 8
  %144 = load i64, i64* %handler.i15, align 8
  %145 = load i64, i64* %9, align 8
  %146 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %143, i64 %144, i64 %145, i64 %142) #5, !srcloc !1
  store i64 %146, i64* %ret.i16, align 8
  %147 = load i64, i64* %ret.i16, align 8
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %__status3, align 4
  %149 = load i32, i32* %__status3, align 4
  %150 = icmp ne i32 %149, -1
  br i1 %150, label %151, label %152

; <label>:151                                     ; preds = %141
  br label %130

; <label>:152                                     ; preds = %141
  %153 = call i64 (...) @RTM_fallback_isLocked()
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

; <label>:155                                     ; preds = %152
  store i64 255, i64* %8, align 8
  %156 = load i64, i64* %8, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %156) #5, !srcloc !2
  br label %157

; <label>:157                                     ; preds = %155, %152
  br label %158

; <label>:158                                     ; preds = %157, %140
  %159 = load %struct.region*, %struct.region** %regionPtr, align 8
  call void @Pregion_clearBad(%struct.region* %159)
  %160 = load %struct.region*, %struct.region** %regionPtr, align 8
  %161 = load %struct.element*, %struct.element** %elementPtr, align 8
  %162 = load %struct.mesh*, %struct.mesh** %meshPtr, align 8
  %163 = call i64 @TMregion_refine(%struct.region* %160, %struct.element* %161, %struct.mesh* %162)
  store i64 %163, i64* %numAdded, align 8
  %164 = load i32, i32* %tries4, align 4
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %168

; <label>:166                                     ; preds = %158
  store i64 2, i64* %7, align 8
  %167 = load i64, i64* %7, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %167) #5, !srcloc !3
  br label %169

; <label>:168                                     ; preds = %158
  call void (...) @RTM_fallback_unlock()
  br label %169

; <label>:169                                     ; preds = %168, %166
  store i32 -1, i32* %__status5, align 4
  store i32 9, i32* %tries6, align 4
  br label %170

; <label>:170                                     ; preds = %191, %169
  br label %171

; <label>:171                                     ; preds = %174, %170
  %172 = call i64 (...) @RTM_fallback_isLocked()
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

; <label>:174                                     ; preds = %171
  call void @llvm.x86.sse2.pause() #5
  br label %171

; <label>:175                                     ; preds = %171
  %176 = load i32, i32* %tries6, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %tries6, align 4
  %178 = load i32, i32* %tries6, align 4
  %179 = icmp sle i32 %178, 0
  br i1 %179, label %180, label %181

; <label>:180                                     ; preds = %175
  call void (...) @RTM_fallback_lock()
  br label %198

; <label>:181                                     ; preds = %175
  store i64 3, i64* %5, align 8
  store i64 0, i64* %handler.i17, align 8
  store i64 4294967295, i64* %ret.i18, align 8
  %182 = load i64, i64* %ret.i18, align 8
  %183 = load i64, i64* %5, align 8
  %184 = load i64, i64* %handler.i17, align 8
  %185 = load i64, i64* %5, align 8
  %186 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %183, i64 %184, i64 %185, i64 %182) #5, !srcloc !1
  store i64 %186, i64* %ret.i18, align 8
  %187 = load i64, i64* %ret.i18, align 8
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %__status5, align 4
  %189 = load i32, i32* %__status5, align 4
  %190 = icmp ne i32 %189, -1
  br i1 %190, label %191, label %192

; <label>:191                                     ; preds = %181
  br label %170

; <label>:192                                     ; preds = %181
  %193 = call i64 (...) @RTM_fallback_isLocked()
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %197

; <label>:195                                     ; preds = %192
  store i64 255, i64* %4, align 8
  %196 = load i64, i64* %4, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %196) #5, !srcloc !2
  br label %197

; <label>:197                                     ; preds = %195, %192
  br label %198

; <label>:198                                     ; preds = %197, %180
  %199 = load %struct.element*, %struct.element** %elementPtr, align 8
  call void @TMelement_setIsReferenced(%struct.element* %199, i64 0)
  %200 = load %struct.element*, %struct.element** %elementPtr, align 8
  %201 = call i64 @TMelement_isGarbage(%struct.element* %200)
  store i64 %201, i64* %isGarbage, align 8
  %202 = load i32, i32* %tries6, align 4
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %206

; <label>:204                                     ; preds = %198
  store i64 3, i64* %3, align 8
  %205 = load i64, i64* %3, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %205) #5, !srcloc !3
  br label %207

; <label>:206                                     ; preds = %198
  call void (...) @RTM_fallback_unlock()
  br label %207

; <label>:207                                     ; preds = %206, %204
  %208 = load i64, i64* %isGarbage, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

; <label>:210                                     ; preds = %207
  br label %211

; <label>:211                                     ; preds = %210, %207
  %212 = load i64, i64* %numAdded, align 8
  %213 = load i64, i64* %totalNumAdded, align 8
  %214 = add nsw i64 %213, %212
  store i64 %214, i64* %totalNumAdded, align 8
  store i32 -1, i32* %__status7, align 4
  store i32 9, i32* %tries8, align 4
  br label %215

; <label>:215                                     ; preds = %236, %211
  br label %216

; <label>:216                                     ; preds = %219, %215
  %217 = call i64 (...) @RTM_fallback_isLocked()
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %220

; <label>:219                                     ; preds = %216
  call void @llvm.x86.sse2.pause() #5
  br label %216

; <label>:220                                     ; preds = %216
  %221 = load i32, i32* %tries8, align 4
  %222 = add nsw i32 %221, -1
  store i32 %222, i32* %tries8, align 4
  %223 = load i32, i32* %tries8, align 4
  %224 = icmp sle i32 %223, 0
  br i1 %224, label %225, label %226

; <label>:225                                     ; preds = %220
  call void (...) @RTM_fallback_lock()
  br label %243

; <label>:226                                     ; preds = %220
  store i64 4, i64* %1, align 8
  store i64 0, i64* %handler.i19, align 8
  store i64 4294967295, i64* %ret.i20, align 8
  %227 = load i64, i64* %ret.i20, align 8
  %228 = load i64, i64* %1, align 8
  %229 = load i64, i64* %handler.i19, align 8
  %230 = load i64, i64* %1, align 8
  %231 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %228, i64 %229, i64 %230, i64 %227) #5, !srcloc !1
  store i64 %231, i64* %ret.i20, align 8
  %232 = load i64, i64* %ret.i20, align 8
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %__status7, align 4
  %234 = load i32, i32* %__status7, align 4
  %235 = icmp ne i32 %234, -1
  br i1 %235, label %236, label %237

; <label>:236                                     ; preds = %226
  br label %215

; <label>:237                                     ; preds = %226
  %238 = call i64 (...) @RTM_fallback_isLocked()
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %242

; <label>:240                                     ; preds = %237
  store i64 255, i64* %2, align 8
  %241 = load i64, i64* %2, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %241) #5, !srcloc !2
  br label %242

; <label>:242                                     ; preds = %240, %237
  br label %243

; <label>:243                                     ; preds = %242, %225
  %244 = load %struct.region*, %struct.region** %regionPtr, align 8
  %245 = load %struct.heap*, %struct.heap** %workHeapPtr, align 8
  call void @TMregion_transferBad(%struct.region* %244, %struct.heap* %245)
  %246 = load i32, i32* %tries8, align 4
  %247 = icmp sgt i32 %246, 0
  br i1 %247, label %248, label %250

; <label>:248                                     ; preds = %243
  store i64 4, i64* %6, align 8
  %249 = load i64, i64* %6, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %249) #5, !srcloc !3
  br label %251

; <label>:250                                     ; preds = %243
  call void (...) @RTM_fallback_unlock()
  br label %251

; <label>:251                                     ; preds = %250, %248
  %252 = load i64, i64* %numProcess, align 8
  %253 = add nsw i64 %252, 1
  store i64 %253, i64* %numProcess, align 8
  br label %254

; <label>:254                                     ; preds = %251
  call void @workEnd(i32 0, i32 0)
  br label %255

; <label>:255                                     ; preds = %254
  br label %37

; <label>:256                                     ; preds = %87
  store i32 -1, i32* %__status9, align 4
  store i32 9, i32* %tries10, align 4
  br label %257

; <label>:257                                     ; preds = %278, %256
  br label %258

; <label>:258                                     ; preds = %261, %257
  %259 = call i64 (...) @RTM_fallback_isLocked()
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %262

; <label>:261                                     ; preds = %258
  call void @llvm.x86.sse2.pause() #5
  br label %258

; <label>:262                                     ; preds = %258
  %263 = load i32, i32* %tries10, align 4
  %264 = add nsw i32 %263, -1
  store i32 %264, i32* %tries10, align 4
  %265 = load i32, i32* %tries10, align 4
  %266 = icmp sle i32 %265, 0
  br i1 %266, label %267, label %268

; <label>:267                                     ; preds = %262
  call void (...) @RTM_fallback_lock()
  br label %285

; <label>:268                                     ; preds = %262
  store i64 5, i64* %10, align 8
  store i64 0, i64* %handler.i13, align 8
  store i64 4294967295, i64* %ret.i14, align 8
  %269 = load i64, i64* %ret.i14, align 8
  %270 = load i64, i64* %10, align 8
  %271 = load i64, i64* %handler.i13, align 8
  %272 = load i64, i64* %10, align 8
  %273 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %270, i64 %271, i64 %272, i64 %269) #5, !srcloc !1
  store i64 %273, i64* %ret.i14, align 8
  %274 = load i64, i64* %ret.i14, align 8
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %__status9, align 4
  %276 = load i32, i32* %__status9, align 4
  %277 = icmp ne i32 %276, -1
  br i1 %277, label %278, label %279

; <label>:278                                     ; preds = %268
  br label %257

; <label>:279                                     ; preds = %268
  %280 = call i64 (...) @RTM_fallback_isLocked()
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %284

; <label>:282                                     ; preds = %279
  store i64 255, i64* %14, align 8
  %283 = load i64, i64* %14, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %283) #5, !srcloc !2
  br label %284

; <label>:284                                     ; preds = %282, %279
  br label %285

; <label>:285                                     ; preds = %284, %267
  %286 = load i64, i64* @global_totalNumAdded, align 8
  %287 = load i64, i64* %totalNumAdded, align 8
  %288 = add nsw i64 %286, %287
  store i64 %288, i64* @global_totalNumAdded, align 8
  %289 = load i64, i64* @global_totalNumAdded, align 8
  store i64 %289, i64* %19, align 8
  %290 = load i64, i64* %19, align 8
  %291 = load i64, i64* @global_numProcess, align 8
  %292 = load i64, i64* %numProcess, align 8
  %293 = add nsw i64 %291, %292
  store i64 %293, i64* @global_numProcess, align 8
  %294 = load i64, i64* @global_numProcess, align 8
  store i64 %294, i64* %20, align 8
  %295 = load i64, i64* %20, align 8
  %296 = load i32, i32* %tries10, align 4
  %297 = icmp sgt i32 %296, 0
  br i1 %297, label %298, label %300

; <label>:298                                     ; preds = %285
  store i64 5, i64* %18, align 8
  %299 = load i64, i64* %18, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %299) #5, !srcloc !3
  br label %301

; <label>:300                                     ; preds = %285
  call void (...) @RTM_fallback_unlock()
  br label %301

; <label>:301                                     ; preds = %300, %298
  %302 = load %struct.region*, %struct.region** %regionPtr, align 8
  call void @Pregion_free(%struct.region* %302)
  br label %303

; <label>:303                                     ; preds = %301
  %304 = call i64 (...) @thread_getId()
  %305 = trunc i64 %304 to i32
  %306 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %307 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 4
  call void @SimRoiEnd(i32 %305, i32 %308)
  br label %309

; <label>:309                                     ; preds = %303
  ret void
}

declare i64 @thread_getId(...) #1

declare void @SimRoiStart(i32) #1

declare %struct.region* @Pregion_alloc(...) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

declare i32 @workBegin(i32, i32) #1

declare i64 @RTM_fallback_isLocked(...) #1

declare void @RTM_fallback_lock(...) #1

declare i8* @TMheap_remove(%struct.heap*) #1

declare void @RTM_fallback_unlock(...) #1

declare i64 @TMelement_isGarbage(%struct.element*) #1

declare void @Pregion_clearBad(%struct.region*) #1

declare i64 @TMregion_refine(%struct.region*, %struct.element*, %struct.mesh*) #1

declare void @TMelement_setIsReferenced(%struct.element*, i64) #1

declare void @TMregion_transferBad(%struct.region*, %struct.heap*) #1

declare void @workEnd(i32, i32) #1

declare void @Pregion_free(%struct.region*) #1

declare void @SimRoiEnd(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %initNumElement = alloca i64, align 8
  %initNumBadElement = alloca i64, align 8
  %start = alloca %struct.timeval, align 8
  %stop = alloca %struct.timeval, align 8
  %finalNumElement = alloca i64, align 8
  %isSuccess = alloca i64, align 8
  %count = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = load i8**, i8*** %3, align 8
  call void @parseArgs(i64 %5, i8** %6)
  br label %7

; <label>:7                                       ; preds = %0
  %8 = call i32 @__get_cpuid_max(i32 0, i32* null)
  %9 = icmp sge i32 %8, 7
  br i1 %9, label %10, label %12

; <label>:10                                      ; preds = %7
  br i1 true, label %11, label %12

; <label>:11                                      ; preds = %10
  br label %14

; <label>:12                                      ; preds = %10, %7
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 283, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %14

; <label>:14                                      ; preds = %13, %11
  %15 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #8, !srcloc !4
  %16 = extractvalue { i32, i32, i32, i32 } %15, 0
  %17 = extractvalue { i32, i32, i32, i32 } %15, 1
  %18 = extractvalue { i32, i32, i32, i32 } %15, 2
  %19 = extractvalue { i32, i32, i32, i32 } %15, 3
  store i32 %16, i32* %a, align 4
  store i32 %17, i32* %b, align 4
  store i32 %18, i32* %c, align 4
  store i32 %19, i32* %d, align 4
  %20 = load i32, i32* %b, align 4
  %21 = and i32 %20, 2048
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

; <label>:23                                      ; preds = %14
  br i1 true, label %24, label %25

; <label>:24                                      ; preds = %23
  br label %27

; <label>:25                                      ; preds = %23, %14
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 283, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %27

; <label>:27                                      ; preds = %26, %24
  call void (...) @RTM_spinlock_init()
  %28 = load i64, i64* @global_numThread, align 8
  call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %28)
  br label %29

; <label>:29                                      ; preds = %27
  %30 = load i64, i64* @global_numThread, align 8
  call void @thread_startup(i64 %30)
  %31 = call %struct.mesh* (...) @mesh_alloc()
  store %struct.mesh* %31, %struct.mesh** @global_meshPtr, align 8
  %32 = load %struct.mesh*, %struct.mesh** @global_meshPtr, align 8
  %33 = icmp ne %struct.mesh* %32, null
  br i1 %33, label %34, label %35

; <label>:34                                      ; preds = %29
  br label %37

; <label>:35                                      ; preds = %29
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 287, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %37

; <label>:37                                      ; preds = %36, %34
  %38 = load double, double* @global_angleConstraint, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), double %38)
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0))
  %41 = load %struct.mesh*, %struct.mesh** @global_meshPtr, align 8
  %42 = load i8*, i8** @global_inputPrefix, align 8
  %43 = call i64 @mesh_read(%struct.mesh* %41, i8* %42)
  store i64 %43, i64* %initNumElement, align 8
  %44 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0))
  %45 = call %struct.heap* @heap_alloc(i64 1, i64 (i8*, i8*)* @element_heapCompare)
  store %struct.heap* %45, %struct.heap** @global_workHeapPtr, align 8
  %46 = load %struct.heap*, %struct.heap** @global_workHeapPtr, align 8
  %47 = icmp ne %struct.heap* %46, null
  br i1 %47, label %48, label %49

; <label>:48                                      ; preds = %37
  br label %51

; <label>:49                                      ; preds = %37
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 293, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %51

; <label>:51                                      ; preds = %50, %48
  %52 = load %struct.heap*, %struct.heap** @global_workHeapPtr, align 8
  %53 = load %struct.mesh*, %struct.mesh** @global_meshPtr, align 8
  %54 = call i64 @initializeWork(%struct.heap* %52, %struct.mesh* %53)
  store i64 %54, i64* %initNumBadElement, align 8
  %55 = load i64, i64* %initNumElement, align 8
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i32 0, i32 0), i64 %55)
  %57 = load i64, i64* %initNumBadElement, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i32 0, i32 0), i64 %57)
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0))
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %61 = call i32 @fflush(%struct._IO_FILE* %60)
  %62 = call i32 @gettimeofday(%struct.timeval* %start, %struct.timezone* null) #5
  call void @thread_start(void (i8*)* bitcast (void ()* @process to void (i8*)*), i8* null)
  %63 = call i32 @gettimeofday(%struct.timeval* %stop, %struct.timezone* null) #5
  %64 = call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0))
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sitofp i64 %66 to double
  %68 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sitofp i64 %69 to double
  %71 = fdiv double %70, 1.000000e+06
  %72 = fadd double %67, %71
  %73 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sitofp i64 %74 to double
  %76 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = sitofp i64 %77 to double
  %79 = fdiv double %78, 1.000000e+06
  %80 = fadd double %75, %79
  %81 = fsub double %72, %80
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i32 0, i32 0), double %81)
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %84 = call i32 @fflush(%struct._IO_FILE* %83)
  %85 = load i64, i64* %initNumElement, align 8
  %86 = load i64, i64* @global_totalNumAdded, align 8
  %87 = add nsw i64 %85, %86
  store i64 %87, i64* %finalNumElement, align 8
  %88 = load i64, i64* %finalNumElement, align 8
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0), i64 %88)
  %90 = load i64, i64* @global_numProcess, align 8
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i32 0, i32 0), i64 %90)
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %93 = call i32 @fflush(%struct._IO_FILE* %92)
  store i64 1, i64* %isSuccess, align 8
  %94 = load i64, i64* %isSuccess, align 8
  %95 = icmp ne i64 %94, 0
  %96 = select i1 %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0)
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i8* %96)
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %99 = call i32 @fflush(%struct._IO_FILE* %98)
  %100 = load i64, i64* %isSuccess, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

; <label>:102                                     ; preds = %51
  br label %105

; <label>:103                                     ; preds = %51
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 341, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %105

; <label>:105                                     ; preds = %104, %102
  br label %106

; <label>:106                                     ; preds = %105
  %107 = call i64 (...) @getWorkItemCount()
  store i64 %107, i64* %count, align 8
  %108 = load i64, i64* %count, align 8
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i64 %108)
  %110 = call i32 @fflush(%struct._IO_FILE* null)
  br label %111

; <label>:111                                     ; preds = %106
  call void (...) @thread_shutdown()
  call void (...) @RTM_output_stats()
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @parseArgs(i64 %argc, i8** %argv) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8**, align 8
  %i = alloca i64, align 8
  %opt = alloca i64, align 8
  store i64 %argc, i64* %1, align 8
  store i8** %argv, i8*** %2, align 8
  store i32 0, i32* @opterr, align 4
  br label %3

; <label>:3                                       ; preds = %24, %0
  %4 = load i64, i64* %1, align 8
  %5 = trunc i64 %4 to i32
  %6 = load i8**, i8*** %2, align 8
  %7 = call i32 @getopt(i32 %5, i8** %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0)) #5
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %opt, align 8
  %9 = icmp ne i64 %8, -1
  br i1 %9, label %10, label %25

; <label>:10                                      ; preds = %3
  %11 = load i64, i64* %opt, align 8
  switch i64 %11, label %21 [
    i64 97, label %12
    i64 105, label %15
    i64 116, label %17
    i64 63, label %20
  ]

; <label>:12                                      ; preds = %10
  %13 = load i8*, i8** @optarg, align 8
  %14 = call double @atof(i8* %13) #9
  store double %14, double* @global_angleConstraint, align 8
  br label %24

; <label>:15                                      ; preds = %10
  %16 = load i8*, i8** @optarg, align 8
  store i8* %16, i8** @global_inputPrefix, align 8
  br label %24

; <label>:17                                      ; preds = %10
  %18 = load i8*, i8** @optarg, align 8
  %19 = call i64 @atol(i8* %18) #9
  store i64 %19, i64* @global_numThread, align 8
  br label %24

; <label>:20                                      ; preds = %10
  br label %21

; <label>:21                                      ; preds = %10, %20
  %22 = load i32, i32* @opterr, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @opterr, align 4
  br label %24

; <label>:24                                      ; preds = %21, %17, %15, %12
  br label %3

; <label>:25                                      ; preds = %3
  %26 = load i32, i32* @optind, align 4
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %i, align 8
  br label %28

; <label>:28                                      ; preds = %41, %25
  %29 = load i64, i64* %i, align 8
  %30 = load i64, i64* %1, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %44

; <label>:32                                      ; preds = %28
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = load i64, i64* %i, align 8
  %35 = load i8**, i8*** %2, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 %34
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0), i8* %37)
  %39 = load i32, i32* @opterr, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @opterr, align 4
  br label %41

; <label>:41                                      ; preds = %32
  %42 = load i64, i64* %i, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %i, align 8
  br label %28

; <label>:44                                      ; preds = %28
  %45 = load i32, i32* @opterr, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

; <label>:47                                      ; preds = %44
  %48 = load i8**, i8*** %2, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  %50 = load i8*, i8** %49, align 8
  call void @displayUsage(i8* %50)
  br label %51

; <label>:51                                      ; preds = %47, %44
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__get_cpuid_max(i32 %__level, i32* %__sig) #3 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %__eax = alloca i32, align 4
  %__ebx = alloca i32, align 4
  %__ecx = alloca i32, align 4
  %__edx = alloca i32, align 4
  store i32 %__level, i32* %1, align 4
  store i32* %__sig, i32** %2, align 8
  %3 = load i32, i32* %1, align 4
  %4 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %3) #8, !srcloc !5
  %5 = extractvalue { i32, i32, i32, i32 } %4, 0
  %6 = extractvalue { i32, i32, i32, i32 } %4, 1
  %7 = extractvalue { i32, i32, i32, i32 } %4, 2
  %8 = extractvalue { i32, i32, i32, i32 } %4, 3
  store i32 %5, i32* %__eax, align 4
  store i32 %6, i32* %__ebx, align 4
  store i32 %7, i32* %__ecx, align 4
  store i32 %8, i32* %__edx, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %0
  %12 = load i32, i32* %__ebx, align 4
  %13 = load i32*, i32** %2, align 8
  store i32 %12, i32* %13, align 4
  br label %14

; <label>:14                                      ; preds = %11, %0
  %15 = load i32, i32* %__eax, align 4
  ret i32 %15
}

declare void @RTM_spinlock_init(...) #1

declare void @SimStartup(...) #1

declare void @thread_startup(i64) #1

declare %struct.mesh* @mesh_alloc(...) #1

declare i32 @printf(i8*, ...) #1

declare i64 @mesh_read(%struct.mesh*, i8*) #1

declare i32 @puts(i8*) #1

declare %struct.heap* @heap_alloc(i64, i64 (i8*, i8*)*) #1

declare i64 @element_heapCompare(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i64 @initializeWork(%struct.heap* %workHeapPtr, %struct.mesh* %meshPtr) #0 {
  %1 = alloca %struct.heap*, align 8
  %2 = alloca %struct.mesh*, align 8
  %randomPtr = alloca %struct.random*, align 8
  %numBad = alloca i64, align 8
  %elementPtr = alloca %struct.element*, align 8
  %status = alloca i64, align 8
  store %struct.heap* %workHeapPtr, %struct.heap** %1, align 8
  store %struct.mesh* %meshPtr, %struct.mesh** %2, align 8
  %3 = call %struct.random* (...) @random_alloc()
  store %struct.random* %3, %struct.random** %randomPtr, align 8
  %4 = load %struct.random*, %struct.random** %randomPtr, align 8
  call void @random_seed(%struct.random* %4, i64 0)
  %5 = load %struct.mesh*, %struct.mesh** %2, align 8
  %6 = load %struct.random*, %struct.random** %randomPtr, align 8
  call void @mesh_shuffleBad(%struct.mesh* %5, %struct.random* %6)
  %7 = load %struct.random*, %struct.random** %randomPtr, align 8
  call void @random_free(%struct.random* %7)
  store i64 0, i64* %numBad, align 8
  br label %8

; <label>:8                                       ; preds = %0, %26
  %9 = load %struct.mesh*, %struct.mesh** %2, align 8
  %10 = call %struct.element* @mesh_getBad(%struct.mesh* %9)
  store %struct.element* %10, %struct.element** %elementPtr, align 8
  %11 = load %struct.element*, %struct.element** %elementPtr, align 8
  %12 = icmp ne %struct.element* %11, null
  br i1 %12, label %14, label %13

; <label>:13                                      ; preds = %8
  br label %28

; <label>:14                                      ; preds = %8
  %15 = load i64, i64* %numBad, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %numBad, align 8
  %17 = load %struct.heap*, %struct.heap** %1, align 8
  %18 = load %struct.element*, %struct.element** %elementPtr, align 8
  %19 = bitcast %struct.element* %18 to i8*
  %20 = call i64 @heap_insert(%struct.heap* %17, i8* %19)
  store i64 %20, i64* %status, align 8
  %21 = load i64, i64* %status, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %14
  br label %26

; <label>:24                                      ; preds = %14
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 177, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.initializeWork, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %26

; <label>:26                                      ; preds = %25, %23
  %27 = load %struct.element*, %struct.element** %elementPtr, align 8
  call void @element_setIsReferenced(%struct.element* %27, i64 1)
  br label %8

; <label>:28                                      ; preds = %13
  %29 = load i64, i64* %numBad, align 8
  ret i64 %29
}

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #4

declare void @thread_start(void (i8*)*, i8*) #1

declare i64 @getWorkItemCount(...) #1

declare void @thread_shutdown(...) #1

declare void @RTM_output_stats(...) #1

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #5

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #4

; Function Attrs: nounwind readonly
declare double @atof(i8*) #6

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #6

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @displayUsage(i8* %appName) #0 {
  %1 = alloca i8*, align 8
  store i8* %appName, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0), i8* %2)
  %4 = call i32 @puts(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.26, i32 0, i32 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i32 0, i32 0), double 2.000000e+01)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.29, i32 0, i32 0), i64 1)
  call void @exit(i32 1) #7
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare %struct.random* @random_alloc(...) #1

declare void @random_seed(%struct.random*, i64) #1

declare void @mesh_shuffleBad(%struct.mesh*, %struct.random*) #1

declare void @random_free(%struct.random*) #1

declare %struct.element* @mesh_getBad(%struct.mesh*) #1

declare i64 @heap_insert(%struct.heap*, i8*) #1

declare void @element_setIsReferenced(%struct.element*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 1453419, i32 1453435, i32 1453471, i32 1453507, i32 1453543}
!2 = !{i32 1454020, i32 1454035, i32 1454069}
!3 = !{i32 1453791, i32 1453806, i32 1453834}
!4 = !{i32 -2145672078, i32 -2145672042, i32 -2145672018}
!5 = !{i32 -2145983380, i32 -2145983344, i32 -2145983320}
