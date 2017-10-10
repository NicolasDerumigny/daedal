; ModuleID = '../bin/intruder.stats.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._tm_thread_context_t = type { i32, i32, %struct.simple_metadata*, i32, i32, [44 x i8] }
%struct.simple_metadata = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stream = type opaque
%struct.decoder = type opaque
%struct.vector = type { i64, i64, i8** }
%struct.detector = type opaque
%struct.packet = type { i64, i64, i64, i64, [0 x i8] }
%struct.arg = type { %struct.stream*, %struct.decoder*, %struct.vector** }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@global_params = global [256 x i64] [i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 10, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 16, i64 0, i64 1048576, i64 0, i64 0, i64 0, i64 0, i64 1, i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], align 16
@thread_contexts = external global %struct._tm_thread_context_t*, align 8
@.str = private unnamed_addr constant [12 x i8] c"detectorPtr\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"intruder.c\00", align 1
@__PRETTY_FUNCTION__.processPackets = private unnamed_addr constant [28 x i8] c"void processPackets(void *)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"RTM is not present\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"__get_cpuid_max(0, NULL) >= 7 && \22RTM is not present\22\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"!!(b & CPUID_RTM) && \22RTM is not present\22\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Percent attack  = %li\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Max data length = %li\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Num flow        = %li\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Random seed     = %li\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"dictionaryPtr\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"streamPtr\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Num attack      = %li\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"decoderPtr\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"errorVectors\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"errorVectorPtr\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Elapsed time    = %f seconds\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Num found       = %li\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"numFound == numAttack\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Work item count: %li\0A\00", align 1
@opterr = external global i32, align 4
@.str.21 = private unnamed_addr constant [11 x i8] c"a:l:n:s:t:\00", align 1
@optarg = external global i8*, align 8
@optind = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.22 = private unnamed_addr constant [25 x i8] c"Non-option argument: %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"Usage: %s [options]\0A\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"\0AOptions:                            (defaults)\0A\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"    a <UINT>   Percent [a]ttack     (%i)\0A\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"    l <UINT>   Max data [l]ength    (%i)\0A\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"    n <UINT>   [n]umber of flows    (%i)\0A\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"    s <UINT>   Random [s]eed        (%i)\0A\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"    t <UINT>   Number of [t]hreads  (%i)\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @processPackets(i8* %argPtr) #0 {
  %1 = alloca i64, align 8
  %handler.i10 = alloca i64, align 8
  %ret.i11 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %handler.i8 = alloca i64, align 8
  %ret.i9 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %handler.i = alloca i64, align 8
  %ret.i = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %_tm_thread_context = alloca %struct._tm_thread_context_t*, align 8
  %threadId = alloca i64, align 8
  %streamPtr = alloca %struct.stream*, align 8
  %decoderPtr = alloca %struct.decoder*, align 8
  %errorVectors = alloca %struct.vector**, align 8
  %detectorPtr = alloca %struct.detector*, align 8
  %errorVectorPtr = alloca %struct.vector*, align 8
  %threadId1 = alloca i32, align 4
  %bytes = alloca i8*, align 8
  %__status = alloca i32, align 4
  %tries = alloca i32, align 4
  %packetPtr = alloca %struct.packet*, align 8
  %flowId = alloca i64, align 8
  %error = alloca i32, align 4
  %__status2 = alloca i32, align 4
  %tries3 = alloca i32, align 4
  %status = alloca i64, align 8
  %data = alloca i8*, align 8
  %decodedFlowId = alloca i64, align 8
  %__status4 = alloca i32, align 4
  %tries5 = alloca i32, align 4
  %error6 = alloca i32, align 4
  %status7 = alloca i64, align 8
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
  store i64 %18, i64* %threadId, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.arg*
  %21 = getelementptr inbounds %struct.arg, %struct.arg* %20, i32 0, i32 0
  %22 = load %struct.stream*, %struct.stream** %21, align 8
  store %struct.stream* %22, %struct.stream** %streamPtr, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = bitcast i8* %23 to %struct.arg*
  %25 = getelementptr inbounds %struct.arg, %struct.arg* %24, i32 0, i32 1
  %26 = load %struct.decoder*, %struct.decoder** %25, align 8
  store %struct.decoder* %26, %struct.decoder** %decoderPtr, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = bitcast i8* %27 to %struct.arg*
  %29 = getelementptr inbounds %struct.arg, %struct.arg* %28, i32 0, i32 2
  %30 = load %struct.vector**, %struct.vector*** %29, align 8
  store %struct.vector** %30, %struct.vector*** %errorVectors, align 8
  %31 = call %struct.detector* (...) @Pdetector_alloc()
  store %struct.detector* %31, %struct.detector** %detectorPtr, align 8
  %32 = load %struct.detector*, %struct.detector** %detectorPtr, align 8
  %33 = icmp ne %struct.detector* %32, null
  br i1 %33, label %34, label %35

; <label>:34                                      ; preds = %17
  br label %37

; <label>:35                                      ; preds = %17
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 191, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.processPackets, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %37

; <label>:37                                      ; preds = %36, %34
  %38 = load %struct.detector*, %struct.detector** %detectorPtr, align 8
  call void @detector_addPreprocessor(%struct.detector* %38, void (i8*)* @preprocessor_toLower)
  %39 = load i64, i64* %threadId, align 8
  %40 = load %struct.vector**, %struct.vector*** %errorVectors, align 8
  %41 = getelementptr inbounds %struct.vector*, %struct.vector** %40, i64 %39
  %42 = load %struct.vector*, %struct.vector** %41, align 8
  store %struct.vector* %42, %struct.vector** %errorVectorPtr, align 8
  br label %43

; <label>:43                                      ; preds = %205, %37
  br label %44

; <label>:44                                      ; preds = %43
  %45 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %46 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %threadId1, align 4
  %48 = load i32, i32* %threadId1, align 4
  %49 = call i32 @workBegin(i32 0, i32 %48)
  %50 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %51 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  br label %52

; <label>:52                                      ; preds = %44
  store i32 -1, i32* %__status, align 4
  store i32 9, i32* %tries, align 4
  br label %53

; <label>:53                                      ; preds = %74, %52
  br label %54

; <label>:54                                      ; preds = %57, %53
  %55 = call i64 (...) @RTM_fallback_isLocked()
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

; <label>:57                                      ; preds = %54
  call void @llvm.x86.sse2.pause() #5
  br label %54

; <label>:58                                      ; preds = %54
  %59 = load i32, i32* %tries, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %tries, align 4
  %61 = load i32, i32* %tries, align 4
  %62 = icmp sle i32 %61, 0
  br i1 %62, label %63, label %64

; <label>:63                                      ; preds = %58
  call void (...) @RTM_fallback_lock()
  br label %81

; <label>:64                                      ; preds = %58
  store i64 0, i64* %8, align 8
  store i64 0, i64* %handler.i, align 8
  store i64 4294967295, i64* %ret.i, align 8
  %65 = load i64, i64* %ret.i, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %handler.i, align 8
  %68 = load i64, i64* %8, align 8
  %69 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %66, i64 %67, i64 %68, i64 %65) #5, !srcloc !1
  store i64 %69, i64* %ret.i, align 8
  %70 = load i64, i64* %ret.i, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %__status, align 4
  %72 = load i32, i32* %__status, align 4
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %74, label %75

; <label>:74                                      ; preds = %64
  br label %53

; <label>:75                                      ; preds = %64
  %76 = call i64 (...) @RTM_fallback_isLocked()
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

; <label>:78                                      ; preds = %75
  store i64 255, i64* %7, align 8
  %79 = load i64, i64* %7, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %79) #5, !srcloc !2
  br label %80

; <label>:80                                      ; preds = %78, %75
  br label %81

; <label>:81                                      ; preds = %80, %63
  %82 = load %struct.stream*, %struct.stream** %streamPtr, align 8
  %83 = call i8* @TMstream_getPacket(%struct.stream* %82)
  store i8* %83, i8** %bytes, align 8
  %84 = load i32, i32* %tries, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %88

; <label>:86                                      ; preds = %81
  store i64 0, i64* %6, align 8
  %87 = load i64, i64* %6, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %87) #5, !srcloc !3
  br label %89

; <label>:88                                      ; preds = %81
  call void (...) @RTM_fallback_unlock()
  br label %89

; <label>:89                                      ; preds = %88, %86
  %90 = load i8*, i8** %bytes, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %93, label %92

; <label>:92                                      ; preds = %89
  br label %206

; <label>:93                                      ; preds = %89
  %94 = load i8*, i8** %bytes, align 8
  %95 = bitcast i8* %94 to %struct.packet*
  store %struct.packet* %95, %struct.packet** %packetPtr, align 8
  %96 = load %struct.packet*, %struct.packet** %packetPtr, align 8
  %97 = getelementptr inbounds %struct.packet, %struct.packet* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %flowId, align 8
  store i32 -1, i32* %__status2, align 4
  store i32 9, i32* %tries3, align 4
  br label %99

; <label>:99                                      ; preds = %120, %93
  br label %100

; <label>:100                                     ; preds = %103, %99
  %101 = call i64 (...) @RTM_fallback_isLocked()
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

; <label>:103                                     ; preds = %100
  call void @llvm.x86.sse2.pause() #5
  br label %100

; <label>:104                                     ; preds = %100
  %105 = load i32, i32* %tries3, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %tries3, align 4
  %107 = load i32, i32* %tries3, align 4
  %108 = icmp sle i32 %107, 0
  br i1 %108, label %109, label %110

; <label>:109                                     ; preds = %104
  call void (...) @RTM_fallback_lock()
  br label %127

; <label>:110                                     ; preds = %104
  store i64 1, i64* %4, align 8
  store i64 0, i64* %handler.i8, align 8
  store i64 4294967295, i64* %ret.i9, align 8
  %111 = load i64, i64* %ret.i9, align 8
  %112 = load i64, i64* %4, align 8
  %113 = load i64, i64* %handler.i8, align 8
  %114 = load i64, i64* %4, align 8
  %115 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %112, i64 %113, i64 %114, i64 %111) #5, !srcloc !1
  store i64 %115, i64* %ret.i9, align 8
  %116 = load i64, i64* %ret.i9, align 8
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %__status2, align 4
  %118 = load i32, i32* %__status2, align 4
  %119 = icmp ne i32 %118, -1
  br i1 %119, label %120, label %121

; <label>:120                                     ; preds = %110
  br label %99

; <label>:121                                     ; preds = %110
  %122 = call i64 (...) @RTM_fallback_isLocked()
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

; <label>:124                                     ; preds = %121
  store i64 255, i64* %3, align 8
  %125 = load i64, i64* %3, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %125) #5, !srcloc !2
  br label %126

; <label>:126                                     ; preds = %124, %121
  br label %127

; <label>:127                                     ; preds = %126, %109
  %128 = load %struct.decoder*, %struct.decoder** %decoderPtr, align 8
  %129 = load i8*, i8** %bytes, align 8
  %130 = load %struct.packet*, %struct.packet** %packetPtr, align 8
  %131 = getelementptr inbounds %struct.packet, %struct.packet* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = add i64 32, %132
  %134 = call i32 @TMdecoder_process(%struct.decoder* %128, i8* %129, i64 %133)
  store i32 %134, i32* %error, align 4
  %135 = load i32, i32* %tries3, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %139

; <label>:137                                     ; preds = %127
  store i64 1, i64* %2, align 8
  %138 = load i64, i64* %2, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %138) #5, !srcloc !3
  br label %140

; <label>:139                                     ; preds = %127
  call void (...) @RTM_fallback_unlock()
  br label %140

; <label>:140                                     ; preds = %139, %137
  %141 = load i32, i32* %error, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

; <label>:143                                     ; preds = %140
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 219, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.processPackets, i32 0, i32 0)) #7
  unreachable

; <label>:144                                     ; preds = %140
  store i32 -1, i32* %__status4, align 4
  store i32 9, i32* %tries5, align 4
  br label %145

; <label>:145                                     ; preds = %166, %144
  br label %146

; <label>:146                                     ; preds = %149, %145
  %147 = call i64 (...) @RTM_fallback_isLocked()
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

; <label>:149                                     ; preds = %146
  call void @llvm.x86.sse2.pause() #5
  br label %146

; <label>:150                                     ; preds = %146
  %151 = load i32, i32* %tries5, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %tries5, align 4
  %153 = load i32, i32* %tries5, align 4
  %154 = icmp sle i32 %153, 0
  br i1 %154, label %155, label %156

; <label>:155                                     ; preds = %150
  call void (...) @RTM_fallback_lock()
  br label %173

; <label>:156                                     ; preds = %150
  store i64 2, i64* %1, align 8
  store i64 0, i64* %handler.i10, align 8
  store i64 4294967295, i64* %ret.i11, align 8
  %157 = load i64, i64* %ret.i11, align 8
  %158 = load i64, i64* %1, align 8
  %159 = load i64, i64* %handler.i10, align 8
  %160 = load i64, i64* %1, align 8
  %161 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %158, i64 %159, i64 %160, i64 %157) #5, !srcloc !1
  store i64 %161, i64* %ret.i11, align 8
  %162 = load i64, i64* %ret.i11, align 8
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %__status4, align 4
  %164 = load i32, i32* %__status4, align 4
  %165 = icmp ne i32 %164, -1
  br i1 %165, label %166, label %167

; <label>:166                                     ; preds = %156
  br label %145

; <label>:167                                     ; preds = %156
  %168 = call i64 (...) @RTM_fallback_isLocked()
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %172

; <label>:170                                     ; preds = %167
  store i64 255, i64* %5, align 8
  %171 = load i64, i64* %5, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %171) #5, !srcloc !2
  br label %172

; <label>:172                                     ; preds = %170, %167
  br label %173

; <label>:173                                     ; preds = %172, %155
  %174 = load %struct.decoder*, %struct.decoder** %decoderPtr, align 8
  %175 = call i8* @TMdecoder_getComplete(%struct.decoder* %174, i64* %decodedFlowId)
  store i8* %175, i8** %data, align 8
  %176 = load i32, i32* %tries5, align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %180

; <label>:178                                     ; preds = %173
  store i64 2, i64* %9, align 8
  %179 = load i64, i64* %9, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %179) #5, !srcloc !3
  br label %181

; <label>:180                                     ; preds = %173
  call void (...) @RTM_fallback_unlock()
  br label %181

; <label>:181                                     ; preds = %180, %178
  %182 = load i8*, i8** %data, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %203

; <label>:184                                     ; preds = %181
  %185 = load %struct.detector*, %struct.detector** %detectorPtr, align 8
  %186 = load i8*, i8** %data, align 8
  %187 = call i32 @detector_process(%struct.detector* %185, i8* %186)
  store i32 %187, i32* %error6, align 4
  %188 = load i8*, i8** %data, align 8
  call void @free(i8* %188) #5
  %189 = load i32, i32* %error6, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %202

; <label>:191                                     ; preds = %184
  %192 = load %struct.vector*, %struct.vector** %errorVectorPtr, align 8
  %193 = load i64, i64* %decodedFlowId, align 8
  %194 = inttoptr i64 %193 to i8*
  %195 = call i64 @Pvector_pushBack(%struct.vector* %192, i8* %194)
  store i64 %195, i64* %status7, align 8
  %196 = load i64, i64* %status7, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %199

; <label>:198                                     ; preds = %191
  br label %201

; <label>:199                                     ; preds = %191
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 235, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.processPackets, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %201

; <label>:201                                     ; preds = %200, %198
  br label %202

; <label>:202                                     ; preds = %201, %184
  br label %203

; <label>:203                                     ; preds = %202, %181
  br label %204

; <label>:204                                     ; preds = %203
  call void @workEnd(i32 0, i32 0)
  br label %205

; <label>:205                                     ; preds = %204
  br label %43

; <label>:206                                     ; preds = %92
  %207 = load %struct.detector*, %struct.detector** %detectorPtr, align 8
  call void @Pdetector_free(%struct.detector* %207)
  br label %208

; <label>:208                                     ; preds = %206
  %209 = call i64 (...) @thread_getId()
  %210 = trunc i64 %209 to i32
  %211 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %212 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 4
  call void @SimRoiEnd(i32 %210, i32 %213)
  br label %214

; <label>:214                                     ; preds = %208
  ret void
}

declare i64 @thread_getId(...) #1

declare void @SimRoiStart(i32) #1

declare %struct.detector* @Pdetector_alloc(...) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

declare void @detector_addPreprocessor(%struct.detector*, void (i8*)*) #1

declare void @preprocessor_toLower(i8*) #1

declare i32 @workBegin(i32, i32) #1

declare i64 @RTM_fallback_isLocked(...) #1

declare void @RTM_fallback_lock(...) #1

declare i8* @TMstream_getPacket(%struct.stream*) #1

declare void @RTM_fallback_unlock(...) #1

declare i32 @TMdecoder_process(%struct.decoder*, i8*, i64) #1

declare i8* @TMdecoder_getComplete(%struct.decoder*, i64*) #1

declare i32 @detector_process(%struct.detector*, i8*) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i64 @Pvector_pushBack(%struct.vector*, i8*) #1

declare void @workEnd(i32, i32) #1

declare void @Pdetector_free(%struct.detector*) #1

declare void @SimRoiEnd(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %numThread = alloca i64, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %percentAttack = alloca i64, align 8
  %maxDataLength = alloca i64, align 8
  %numFlow = alloca i64, align 8
  %randomSeed = alloca i64, align 8
  %dictionaryPtr = alloca %struct.vector*, align 8
  %streamPtr = alloca %struct.stream*, align 8
  %numAttack = alloca i64, align 8
  %decoderPtr = alloca %struct.decoder*, align 8
  %errorVectors = alloca %struct.vector**, align 8
  %i = alloca i64, align 8
  %errorVectorPtr = alloca %struct.vector*, align 8
  %arg = alloca %struct.arg, align 8
  %startTime = alloca %struct.timeval, align 8
  %stopTime = alloca %struct.timeval, align 8
  %numFound = alloca i64, align 8
  %errorVectorPtr1 = alloca %struct.vector*, align 8
  %e = alloca i64, align 8
  %numError = alloca i64, align 8
  %flowId = alloca i64, align 8
  %status = alloca i64, align 8
  %count = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = load i8**, i8*** %3, align 8
  call void @parseArgs(i64 %5, i8** %6)
  %7 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 116), align 16
  store i64 %7, i64* %numThread, align 8
  br label %8

; <label>:8                                       ; preds = %0
  %9 = call i32 @__get_cpuid_max(i32 0, i32* null)
  %10 = icmp sge i32 %9, 7
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %8
  br i1 true, label %12, label %13

; <label>:12                                      ; preds = %11
  br label %15

; <label>:13                                      ; preds = %11, %8
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 262, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #8, !srcloc !4
  %17 = extractvalue { i32, i32, i32, i32 } %16, 0
  %18 = extractvalue { i32, i32, i32, i32 } %16, 1
  %19 = extractvalue { i32, i32, i32, i32 } %16, 2
  %20 = extractvalue { i32, i32, i32, i32 } %16, 3
  store i32 %17, i32* %a, align 4
  store i32 %18, i32* %b, align 4
  store i32 %19, i32* %c, align 4
  store i32 %20, i32* %d, align 4
  %21 = load i32, i32* %b, align 4
  %22 = and i32 %21, 2048
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

; <label>:24                                      ; preds = %15
  br i1 true, label %25, label %26

; <label>:25                                      ; preds = %24
  br label %28

; <label>:26                                      ; preds = %24, %15
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 262, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %28

; <label>:28                                      ; preds = %27, %25
  call void (...) @RTM_spinlock_init()
  %29 = load i64, i64* %numThread, align 8
  call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %29)
  br label %30

; <label>:30                                      ; preds = %28
  %31 = load i64, i64* %numThread, align 8
  call void @thread_startup(i64 %31)
  %32 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 97), align 8
  store i64 %32, i64* %percentAttack, align 8
  %33 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 108), align 16
  store i64 %33, i64* %maxDataLength, align 8
  %34 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 110), align 16
  store i64 %34, i64* %numFlow, align 8
  %35 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 115), align 8
  store i64 %35, i64* %randomSeed, align 8
  %36 = load i64, i64* %percentAttack, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i64 %36)
  %38 = load i64, i64* %maxDataLength, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i64 %38)
  %40 = load i64, i64* %numFlow, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i64 %40)
  %42 = load i64, i64* %randomSeed, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i64 %42)
  %44 = call %struct.vector* (...) @dictionary_alloc()
  store %struct.vector* %44, %struct.vector** %dictionaryPtr, align 8
  %45 = load %struct.vector*, %struct.vector** %dictionaryPtr, align 8
  %46 = icmp ne %struct.vector* %45, null
  br i1 %46, label %47, label %48

; <label>:47                                      ; preds = %30
  br label %50

; <label>:48                                      ; preds = %30
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 276, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %50

; <label>:50                                      ; preds = %49, %47
  %51 = load i64, i64* %percentAttack, align 8
  %52 = call %struct.stream* @stream_alloc(i64 %51)
  store %struct.stream* %52, %struct.stream** %streamPtr, align 8
  %53 = load %struct.stream*, %struct.stream** %streamPtr, align 8
  %54 = icmp ne %struct.stream* %53, null
  br i1 %54, label %55, label %56

; <label>:55                                      ; preds = %50
  br label %58

; <label>:56                                      ; preds = %50
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 278, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %58

; <label>:58                                      ; preds = %57, %55
  %59 = load %struct.stream*, %struct.stream** %streamPtr, align 8
  %60 = load %struct.vector*, %struct.vector** %dictionaryPtr, align 8
  %61 = load i64, i64* %numFlow, align 8
  %62 = load i64, i64* %randomSeed, align 8
  %63 = load i64, i64* %maxDataLength, align 8
  %64 = call i64 @stream_generate(%struct.stream* %59, %struct.vector* %60, i64 %61, i64 %62, i64 %63)
  store i64 %64, i64* %numAttack, align 8
  %65 = load i64, i64* %numAttack, align 8
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0), i64 %65)
  %67 = call %struct.decoder* (...) @decoder_alloc()
  store %struct.decoder* %67, %struct.decoder** %decoderPtr, align 8
  %68 = load %struct.decoder*, %struct.decoder** %decoderPtr, align 8
  %69 = icmp ne %struct.decoder* %68, null
  br i1 %69, label %70, label %71

; <label>:70                                      ; preds = %58
  br label %73

; <label>:71                                      ; preds = %58
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 287, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %73

; <label>:73                                      ; preds = %72, %70
  %74 = load i64, i64* %numThread, align 8
  %75 = mul i64 %74, 8
  %76 = call noalias i8* @malloc(i64 %75) #5
  %77 = bitcast i8* %76 to %struct.vector**
  store %struct.vector** %77, %struct.vector*** %errorVectors, align 8
  %78 = load %struct.vector**, %struct.vector*** %errorVectors, align 8
  %79 = icmp ne %struct.vector** %78, null
  br i1 %79, label %80, label %81

; <label>:80                                      ; preds = %73
  br label %83

; <label>:81                                      ; preds = %73
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 290, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %83

; <label>:83                                      ; preds = %82, %80
  store i64 0, i64* %i, align 8
  br label %84

; <label>:84                                      ; preds = %101, %83
  %85 = load i64, i64* %i, align 8
  %86 = load i64, i64* %numThread, align 8
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %104

; <label>:88                                      ; preds = %84
  %89 = load i64, i64* %numFlow, align 8
  %90 = call %struct.vector* @vector_alloc(i64 %89)
  store %struct.vector* %90, %struct.vector** %errorVectorPtr, align 8
  %91 = load %struct.vector*, %struct.vector** %errorVectorPtr, align 8
  %92 = icmp ne %struct.vector* %91, null
  br i1 %92, label %93, label %94

; <label>:93                                      ; preds = %88
  br label %96

; <label>:94                                      ; preds = %88
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 294, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %96

; <label>:96                                      ; preds = %95, %93
  %97 = load %struct.vector*, %struct.vector** %errorVectorPtr, align 8
  %98 = load i64, i64* %i, align 8
  %99 = load %struct.vector**, %struct.vector*** %errorVectors, align 8
  %100 = getelementptr inbounds %struct.vector*, %struct.vector** %99, i64 %98
  store %struct.vector* %97, %struct.vector** %100, align 8
  br label %101

; <label>:101                                     ; preds = %96
  %102 = load i64, i64* %i, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %i, align 8
  br label %84

; <label>:104                                     ; preds = %84
  %105 = load %struct.stream*, %struct.stream** %streamPtr, align 8
  %106 = getelementptr inbounds %struct.arg, %struct.arg* %arg, i32 0, i32 0
  store %struct.stream* %105, %struct.stream** %106, align 8
  %107 = load %struct.decoder*, %struct.decoder** %decoderPtr, align 8
  %108 = getelementptr inbounds %struct.arg, %struct.arg* %arg, i32 0, i32 1
  store %struct.decoder* %107, %struct.decoder** %108, align 8
  %109 = load %struct.vector**, %struct.vector*** %errorVectors, align 8
  %110 = getelementptr inbounds %struct.arg, %struct.arg* %arg, i32 0, i32 2
  store %struct.vector** %109, %struct.vector*** %110, align 8
  %111 = call i32 @gettimeofday(%struct.timeval* %startTime, %struct.timezone* null) #5
  %112 = bitcast %struct.arg* %arg to i8*
  call void @thread_start(void (i8*)* @processPackets, i8* %112)
  %113 = call i32 @gettimeofday(%struct.timeval* %stopTime, %struct.timezone* null) #5
  %114 = getelementptr inbounds %struct.timeval, %struct.timeval* %stopTime, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = sitofp i64 %115 to double
  %117 = getelementptr inbounds %struct.timeval, %struct.timeval* %stopTime, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = sitofp i64 %118 to double
  %120 = fdiv double %119, 1.000000e+06
  %121 = fadd double %116, %120
  %122 = getelementptr inbounds %struct.timeval, %struct.timeval* %startTime, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = sitofp i64 %123 to double
  %125 = getelementptr inbounds %struct.timeval, %struct.timeval* %startTime, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = sitofp i64 %126 to double
  %128 = fdiv double %127, 1.000000e+06
  %129 = fadd double %124, %128
  %130 = fsub double %121, %129
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0), double %130)
  store i64 0, i64* %numFound, align 8
  store i64 0, i64* %i, align 8
  br label %132

; <label>:132                                     ; preds = %168, %104
  %133 = load i64, i64* %i, align 8
  %134 = load i64, i64* %numThread, align 8
  %135 = icmp slt i64 %133, %134
  br i1 %135, label %136, label %171

; <label>:136                                     ; preds = %132
  %137 = load i64, i64* %i, align 8
  %138 = load %struct.vector**, %struct.vector*** %errorVectors, align 8
  %139 = getelementptr inbounds %struct.vector*, %struct.vector** %138, i64 %137
  %140 = load %struct.vector*, %struct.vector** %139, align 8
  store %struct.vector* %140, %struct.vector** %errorVectorPtr1, align 8
  %141 = load %struct.vector*, %struct.vector** %errorVectorPtr1, align 8
  %142 = call i64 @vector_getSize(%struct.vector* %141)
  store i64 %142, i64* %numError, align 8
  %143 = load i64, i64* %numError, align 8
  %144 = load i64, i64* %numFound, align 8
  %145 = add nsw i64 %144, %143
  store i64 %145, i64* %numFound, align 8
  store i64 0, i64* %e, align 8
  br label %146

; <label>:146                                     ; preds = %164, %136
  %147 = load i64, i64* %e, align 8
  %148 = load i64, i64* %numError, align 8
  %149 = icmp slt i64 %147, %148
  br i1 %149, label %150, label %167

; <label>:150                                     ; preds = %146
  %151 = load %struct.vector*, %struct.vector** %errorVectorPtr1, align 8
  %152 = load i64, i64* %e, align 8
  %153 = call i8* @vector_at(%struct.vector* %151, i64 %152)
  %154 = ptrtoint i8* %153 to i64
  store i64 %154, i64* %flowId, align 8
  %155 = load %struct.stream*, %struct.stream** %streamPtr, align 8
  %156 = load i64, i64* %flowId, align 8
  %157 = call i64 @stream_isAttack(%struct.stream* %155, i64 %156)
  store i64 %157, i64* %status, align 8
  %158 = load i64, i64* %status, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

; <label>:160                                     ; preds = %150
  br label %163

; <label>:161                                     ; preds = %150
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 337, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %163

; <label>:163                                     ; preds = %162, %160
  br label %164

; <label>:164                                     ; preds = %163
  %165 = load i64, i64* %e, align 8
  %166 = add nsw i64 %165, 1
  store i64 %166, i64* %e, align 8
  br label %146

; <label>:167                                     ; preds = %146
  br label %168

; <label>:168                                     ; preds = %167
  %169 = load i64, i64* %i, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %i, align 8
  br label %132

; <label>:171                                     ; preds = %132
  %172 = load i64, i64* %numFound, align 8
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i64 %172)
  %174 = load i64, i64* %numFound, align 8
  %175 = load i64, i64* %numAttack, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %178

; <label>:177                                     ; preds = %171
  br label %180

; <label>:178                                     ; preds = %171
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 341, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %180

; <label>:180                                     ; preds = %179, %177
  store i64 0, i64* %i, align 8
  br label %181

; <label>:181                                     ; preds = %190, %180
  %182 = load i64, i64* %i, align 8
  %183 = load i64, i64* %numThread, align 8
  %184 = icmp slt i64 %182, %183
  br i1 %184, label %185, label %193

; <label>:185                                     ; preds = %181
  %186 = load i64, i64* %i, align 8
  %187 = load %struct.vector**, %struct.vector*** %errorVectors, align 8
  %188 = getelementptr inbounds %struct.vector*, %struct.vector** %187, i64 %186
  %189 = load %struct.vector*, %struct.vector** %188, align 8
  call void @vector_free(%struct.vector* %189)
  br label %190

; <label>:190                                     ; preds = %185
  %191 = load i64, i64* %i, align 8
  %192 = add nsw i64 %191, 1
  store i64 %192, i64* %i, align 8
  br label %181

; <label>:193                                     ; preds = %181
  %194 = load %struct.vector**, %struct.vector*** %errorVectors, align 8
  %195 = bitcast %struct.vector** %194 to i8*
  call void @free(i8* %195) #5
  %196 = load %struct.decoder*, %struct.decoder** %decoderPtr, align 8
  call void @decoder_free(%struct.decoder* %196)
  %197 = load %struct.stream*, %struct.stream** %streamPtr, align 8
  call void @stream_free(%struct.stream* %197)
  %198 = load %struct.vector*, %struct.vector** %dictionaryPtr, align 8
  call void @dictionary_free(%struct.vector* %198)
  br label %199

; <label>:199                                     ; preds = %193
  %200 = call i64 (...) @getWorkItemCount()
  store i64 %200, i64* %count, align 8
  %201 = load i64, i64* %count, align 8
  %202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), i64 %201)
  %203 = call i32 @fflush(%struct._IO_FILE* null)
  br label %204

; <label>:204                                     ; preds = %199
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

; <label>:3                                       ; preds = %23, %0
  %4 = load i64, i64* %1, align 8
  %5 = trunc i64 %4 to i32
  %6 = load i8**, i8*** %2, align 8
  %7 = call i32 @getopt(i32 %5, i8** %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0)) #5
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %opt, align 8
  %9 = icmp ne i64 %8, -1
  br i1 %9, label %10, label %24

; <label>:10                                      ; preds = %3
  %11 = load i64, i64* %opt, align 8
  switch i64 %11, label %20 [
    i64 97, label %12
    i64 108, label %12
    i64 110, label %12
    i64 115, label %12
    i64 116, label %12
    i64 63, label %19
  ]

; <label>:12                                      ; preds = %10, %10, %10, %10, %10
  %13 = load i8*, i8** @optarg, align 8
  %14 = call i64 @atol(i8* %13) #9
  %15 = load i64, i64* %opt, align 8
  %16 = trunc i64 %15 to i8
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds [256 x i64], [256 x i64]* @global_params, i64 0, i64 %17
  store i64 %14, i64* %18, align 8
  br label %23

; <label>:19                                      ; preds = %10
  br label %20

; <label>:20                                      ; preds = %19, %10
  %21 = load i32, i32* @opterr, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @opterr, align 4
  br label %23

; <label>:23                                      ; preds = %20, %12
  br label %3

; <label>:24                                      ; preds = %3
  %25 = load i32, i32* @optind, align 4
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %i, align 8
  br label %27

; <label>:27                                      ; preds = %40, %24
  %28 = load i64, i64* %i, align 8
  %29 = load i64, i64* %1, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %43

; <label>:31                                      ; preds = %27
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = load i64, i64* %i, align 8
  %34 = load i8**, i8*** %2, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 %33
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0), i8* %36)
  %38 = load i32, i32* @opterr, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @opterr, align 4
  br label %40

; <label>:40                                      ; preds = %31
  %41 = load i64, i64* %i, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %i, align 8
  br label %27

; <label>:43                                      ; preds = %27
  %44 = load i32, i32* @opterr, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

; <label>:46                                      ; preds = %43
  %47 = load i8**, i8*** %2, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  call void @displayUsage(i8* %49)
  br label %50

; <label>:50                                      ; preds = %46, %43
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__get_cpuid_max(i32 %__level, i32* %__sig) #4 {
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

declare i32 @printf(i8*, ...) #1

declare %struct.vector* @dictionary_alloc(...) #1

declare %struct.stream* @stream_alloc(i64) #1

declare i64 @stream_generate(%struct.stream*, %struct.vector*, i64, i64, i64) #1

declare %struct.decoder* @decoder_alloc(...) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare %struct.vector* @vector_alloc(i64) #1

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #3

declare void @thread_start(void (i8*)*, i8*) #1

declare i64 @vector_getSize(%struct.vector*) #1

declare i8* @vector_at(%struct.vector*, i64) #1

declare i64 @stream_isAttack(%struct.stream*, i64) #1

declare void @vector_free(%struct.vector*) #1

declare void @decoder_free(%struct.decoder*) #1

declare void @stream_free(%struct.stream*) #1

declare void @dictionary_free(%struct.vector*) #1

declare i64 @getWorkItemCount(...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare void @thread_shutdown(...) #1

declare void @RTM_output_stats(...) #1

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #5

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #6

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @displayUsage(i8* %appName) #0 {
  %1 = alloca i8*, align 8
  store i8* %appName, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0), i8* %2)
  %4 = call i32 @puts(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.24, i32 0, i32 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i32 0, i32 0), i32 10)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i32 0, i32 0), i32 16)
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.27, i32 0, i32 0), i32 1048576)
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i32 0, i32 0), i32 1)
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i32 0, i32 0), i32 1)
  call void @profiler_print_stats()
  call void @exit(i32 1) #7
  unreachable
                                                  ; No predecessors!
  ret void
}

declare i32 @puts(i8*) #1

declare void @profiler_print_stats()

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 1426813, i32 1426829, i32 1426865, i32 1426901, i32 1426937}
!2 = !{i32 1427414, i32 1427429, i32 1427463}
!3 = !{i32 1427185, i32 1427200, i32 1427228}
!4 = !{i32 -2145869420, i32 -2145869384, i32 -2145869360}
!5 = !{i32 -2146009986, i32 -2146009950, i32 -2146009926}
