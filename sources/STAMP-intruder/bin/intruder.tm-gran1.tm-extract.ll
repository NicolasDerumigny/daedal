; ModuleID = '../bin/intruder.tm-gran.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._tm_thread_context_t = type { i32, i32, %struct.simple_metadata*, i32, i32, [44 x i8] }
%struct.simple_metadata = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.arg = type { %struct.stream*, %struct.decoder*, %struct.vector** }
%struct.stream = type opaque
%struct.decoder = type opaque
%struct.vector = type { i64, i64, i8** }
%struct.detector = type opaque
%struct.packet = type { i64, i64, i64, i64, [0 x i8] }
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
  %decodedFlowId = alloca i64, align 8
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
  %9 = bitcast i8* %argPtr to %struct.arg*
  %10 = getelementptr inbounds %struct.arg, %struct.arg* %9, i32 0, i32 0
  %11 = load %struct.stream*, %struct.stream** %10, align 8
  %12 = bitcast i8* %argPtr to %struct.arg*
  %13 = getelementptr inbounds %struct.arg, %struct.arg* %12, i32 0, i32 1
  %14 = load %struct.decoder*, %struct.decoder** %13, align 8
  %15 = bitcast i8* %argPtr to %struct.arg*
  %16 = getelementptr inbounds %struct.arg, %struct.arg* %15, i32 0, i32 2
  %17 = load %struct.vector**, %struct.vector*** %16, align 8
  %18 = call %struct.detector* (...) @Pdetector_alloc()
  %19 = icmp ne %struct.detector* %18, null
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %7
  br label %23

; <label>:21                                      ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 191, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.processPackets, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %23

; <label>:23                                      ; preds = %22, %20
  call void @detector_addPreprocessor(%struct.detector* %18, void (i8*)* @preprocessor_toLower)
  %24 = getelementptr inbounds %struct.vector*, %struct.vector** %17, i64 %8
  %25 = load %struct.vector*, %struct.vector** %24, align 8
  %26 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 0
  %27 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 4
  br label %28

; <label>:28                                      ; preds = %136, %23
  br label %29

; <label>:29                                      ; preds = %28
  %30 = load i32, i32* %26, align 8
  %31 = call i32 @workBegin(i32 0, i32 %30)
  store i32 %31, i32* %27, align 4
  br label %32

; <label>:32                                      ; preds = %29
  br label %33

; <label>:33                                      ; preds = %46, %32
  %tries.0 = phi i32 [ 9, %32 ], [ %39, %46 ]
  br label %34

; <label>:34                                      ; preds = %37, %33
  %35 = call i64 (...) @RTM_fallback_isLocked()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %34
  call void @llvm.x86.sse2.pause() #5
  br label %34

; <label>:38                                      ; preds = %34
  %39 = add nsw i32 %tries.0, -1
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %42

; <label>:41                                      ; preds = %38
  call void (...) @RTM_fallback_lock()
  br label %52

; <label>:42                                      ; preds = %38
  %43 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0, i64 0, i64 4294967295) #5, !srcloc !1
  %44 = trunc i64 %43 to i32
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %47

; <label>:46                                      ; preds = %42
  br label %33

; <label>:47                                      ; preds = %42
  %48 = call i64 (...) @RTM_fallback_isLocked()
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %._crit_edge

._crit_edge:                                      ; preds = %47
  br label %51

; <label>:50                                      ; preds = %47
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !2
  br label %51

; <label>:51                                      ; preds = %50, %._crit_edge
  br label %52

; <label>:52                                      ; preds = %51, %41
  %53 = call i8* @TMstream_getPacket(%struct.stream* %11)
  %54 = icmp sgt i32 %39, 0
  br i1 %54, label %55, label %56

; <label>:55                                      ; preds = %52
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !srcloc !3
  br label %57

; <label>:56                                      ; preds = %52
  call void (...) @RTM_fallback_unlock()
  br label %57

; <label>:57                                      ; preds = %56, %55
  %58 = icmp ne i8* %53, null
  br i1 %58, label %60, label %59

; <label>:59                                      ; preds = %57
  br label %137

; <label>:60                                      ; preds = %57
  %61 = bitcast i8* %53 to %struct.packet*
  %62 = getelementptr inbounds %struct.packet, %struct.packet* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  br label %64

; <label>:64                                      ; preds = %77, %60
  %tries3.0 = phi i32 [ 9, %60 ], [ %70, %77 ]
  br label %65

; <label>:65                                      ; preds = %68, %64
  %66 = call i64 (...) @RTM_fallback_isLocked()
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

; <label>:68                                      ; preds = %65
  call void @llvm.x86.sse2.pause() #5
  br label %65

; <label>:69                                      ; preds = %65
  %70 = add nsw i32 %tries3.0, -1
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %72, label %73

; <label>:72                                      ; preds = %69
  call void (...) @RTM_fallback_lock()
  br label %83

; <label>:73                                      ; preds = %69
  %74 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 0, i64 1, i64 4294967295) #5, !srcloc !1
  %75 = trunc i64 %74 to i32
  %76 = icmp ne i32 %75, -1
  br i1 %76, label %77, label %78

; <label>:77                                      ; preds = %73
  br label %64

; <label>:78                                      ; preds = %73
  %79 = call i64 (...) @RTM_fallback_isLocked()
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %._crit_edge1

._crit_edge1:                                     ; preds = %78
  br label %82

; <label>:81                                      ; preds = %78
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !2
  br label %82

; <label>:82                                      ; preds = %81, %._crit_edge1
  br label %83

; <label>:83                                      ; preds = %82, %72
  %84 = getelementptr inbounds %struct.packet, %struct.packet* %61, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = add i64 32, %85
  %87 = call i32 @TMdecoder_process(%struct.decoder* %14, i8* %53, i64 %86)
  %88 = icmp sgt i32 %70, 0
  br i1 %88, label %89, label %90

; <label>:89                                      ; preds = %83
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 1) #5, !srcloc !3
  br label %91

; <label>:90                                      ; preds = %83
  call void (...) @RTM_fallback_unlock()
  br label %91

; <label>:91                                      ; preds = %90, %89
  %92 = icmp ne i32 %87, 0
  br i1 %92, label %93, label %94

; <label>:93                                      ; preds = %91
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 219, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.processPackets, i32 0, i32 0)) #7
  unreachable

; <label>:94                                      ; preds = %91
  br label %95

; <label>:95                                      ; preds = %108, %94
  %tries5.0 = phi i32 [ 9, %94 ], [ %101, %108 ]
  br label %96

; <label>:96                                      ; preds = %99, %95
  %97 = call i64 (...) @RTM_fallback_isLocked()
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

; <label>:99                                      ; preds = %96
  call void @llvm.x86.sse2.pause() #5
  br label %96

; <label>:100                                     ; preds = %96
  %101 = add nsw i32 %tries5.0, -1
  %102 = icmp sle i32 %101, 0
  br i1 %102, label %103, label %104

; <label>:103                                     ; preds = %100
  call void (...) @RTM_fallback_lock()
  br label %114

; <label>:104                                     ; preds = %100
  %105 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 0, i64 2, i64 4294967295) #5, !srcloc !1
  %106 = trunc i64 %105 to i32
  %107 = icmp ne i32 %106, -1
  br i1 %107, label %108, label %109

; <label>:108                                     ; preds = %104
  br label %95

; <label>:109                                     ; preds = %104
  %110 = call i64 (...) @RTM_fallback_isLocked()
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %._crit_edge2

._crit_edge2:                                     ; preds = %109
  br label %113

; <label>:112                                     ; preds = %109
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !2
  br label %113

; <label>:113                                     ; preds = %112, %._crit_edge2
  br label %114

; <label>:114                                     ; preds = %113, %103
  %115 = call i8* @TMdecoder_getComplete(%struct.decoder* %14, i64* %decodedFlowId)
  %116 = icmp sgt i32 %101, 0
  br i1 %116, label %117, label %118

; <label>:117                                     ; preds = %114
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 2) #5, !srcloc !3
  br label %119

; <label>:118                                     ; preds = %114
  call void (...) @RTM_fallback_unlock()
  br label %119

; <label>:119                                     ; preds = %118, %117
  %120 = icmp ne i8* %115, null
  br i1 %120, label %121, label %._crit_edge3

._crit_edge3:                                     ; preds = %119
  br label %134

; <label>:121                                     ; preds = %119
  %122 = call i32 @detector_process(%struct.detector* %18, i8* %115)
  call void @free(i8* %115) #5
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %._crit_edge4

._crit_edge4:                                     ; preds = %121
  br label %133

; <label>:124                                     ; preds = %121
  %125 = load i64, i64* %decodedFlowId, align 8
  %126 = inttoptr i64 %125 to i8*
  %127 = call i64 @Pvector_pushBack(%struct.vector* %25, i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

; <label>:129                                     ; preds = %124
  br label %132

; <label>:130                                     ; preds = %124
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 235, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.processPackets, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:132                                     ; preds = %129
  br label %133

; <label>:133                                     ; preds = %132, %._crit_edge4
  br label %134

; <label>:134                                     ; preds = %133, %._crit_edge3
  br label %135

; <label>:135                                     ; preds = %134
  call void @workEnd(i32 0, i32 0)
  br label %136

; <label>:136                                     ; preds = %135
  br label %28

; <label>:137                                     ; preds = %59
  call void @Pdetector_free(%struct.detector* %18)
  br label %138

; <label>:138                                     ; preds = %137
  %139 = call i64 (...) @thread_getId()
  %140 = trunc i64 %139 to i32
  %141 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  call void @SimRoiEnd(i32 %140, i32 %142)
  br label %143

; <label>:143                                     ; preds = %138
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
  %arg = alloca %struct.arg, align 8
  %startTime = alloca %struct.timeval, align 8
  %stopTime = alloca %struct.timeval, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = sext i32 %argc to i64
  call void @parseArgs(i64 %1, i8** %argv)
  %2 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 116), align 16
  br label %3

; <label>:3                                       ; preds = %0
  %4 = call i32 @__get_cpuid_max(i32 0, i32* null)
  %5 = icmp sge i32 %4, 7
  br i1 %5, label %6, label %._crit_edge

._crit_edge:                                      ; preds = %3
  br label %8

; <label>:6                                       ; preds = %3
  br i1 true, label %7, label %._crit_edge1

._crit_edge1:                                     ; preds = %6
  br label %8

; <label>:7                                       ; preds = %6
  br label %10

; <label>:8                                       ; preds = %._crit_edge1, %._crit_edge
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 262, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %10

; <label>:10                                      ; preds = %9, %7
  %11 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #8, !srcloc !4
  %12 = extractvalue { i32, i32, i32, i32 } %11, 0
  %13 = extractvalue { i32, i32, i32, i32 } %11, 1
  %14 = extractvalue { i32, i32, i32, i32 } %11, 2
  %15 = extractvalue { i32, i32, i32, i32 } %11, 3
  %16 = and i32 %13, 2048
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %._crit_edge2

._crit_edge2:                                     ; preds = %10
  br label %20

; <label>:18                                      ; preds = %10
  br i1 true, label %19, label %._crit_edge3

._crit_edge3:                                     ; preds = %18
  br label %20

; <label>:19                                      ; preds = %18
  br label %22

; <label>:20                                      ; preds = %._crit_edge3, %._crit_edge2
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 262, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %22

; <label>:22                                      ; preds = %21, %19
  call void (...) @RTM_spinlock_init()
  call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %2)
  br label %23

; <label>:23                                      ; preds = %22
  call void @thread_startup(i64 %2)
  %24 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 97), align 8
  %25 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 108), align 16
  %26 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 110), align 16
  %27 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 115), align 8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i64 %24)
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i64 %25)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i64 %26)
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i64 %27)
  %32 = call %struct.vector* (...) @dictionary_alloc()
  %33 = icmp ne %struct.vector* %32, null
  br i1 %33, label %34, label %35

; <label>:34                                      ; preds = %23
  br label %37

; <label>:35                                      ; preds = %23
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 276, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %37

; <label>:37                                      ; preds = %36, %34
  %38 = call %struct.stream* @stream_alloc(i64 %24)
  %39 = icmp ne %struct.stream* %38, null
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %37
  br label %43

; <label>:41                                      ; preds = %37
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 278, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %43

; <label>:43                                      ; preds = %42, %40
  %44 = call i64 @stream_generate(%struct.stream* %38, %struct.vector* %32, i64 %26, i64 %27, i64 %25)
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0), i64 %44)
  %46 = call %struct.decoder* (...) @decoder_alloc()
  %47 = icmp ne %struct.decoder* %46, null
  br i1 %47, label %48, label %49

; <label>:48                                      ; preds = %43
  br label %51

; <label>:49                                      ; preds = %43
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 287, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %51

; <label>:51                                      ; preds = %50, %48
  %52 = mul i64 %2, 8
  %53 = call noalias i8* @malloc(i64 %52) #5
  %54 = bitcast i8* %53 to %struct.vector**
  %55 = icmp ne %struct.vector** %54, null
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %51
  br label %59

; <label>:57                                      ; preds = %51
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 290, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %59

; <label>:59                                      ; preds = %58, %56
  br label %60

; <label>:60                                      ; preds = %70, %59
  %i.0 = phi i64 [ 0, %59 ], [ %71, %70 ]
  %61 = icmp slt i64 %i.0, %2
  br i1 %61, label %62, label %72

; <label>:62                                      ; preds = %60
  %63 = call %struct.vector* @vector_alloc(i64 %26)
  %64 = icmp ne %struct.vector* %63, null
  br i1 %64, label %65, label %66

; <label>:65                                      ; preds = %62
  br label %68

; <label>:66                                      ; preds = %62
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 294, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:68                                      ; preds = %65
  %69 = getelementptr inbounds %struct.vector*, %struct.vector** %54, i64 %i.0
  store %struct.vector* %63, %struct.vector** %69, align 8
  br label %70

; <label>:70                                      ; preds = %68
  %71 = add nsw i64 %i.0, 1
  br label %60

; <label>:72                                      ; preds = %60
  %73 = getelementptr inbounds %struct.arg, %struct.arg* %arg, i32 0, i32 0
  store %struct.stream* %38, %struct.stream** %73, align 8
  %74 = getelementptr inbounds %struct.arg, %struct.arg* %arg, i32 0, i32 1
  store %struct.decoder* %46, %struct.decoder** %74, align 8
  %75 = getelementptr inbounds %struct.arg, %struct.arg* %arg, i32 0, i32 2
  store %struct.vector** %54, %struct.vector*** %75, align 8
  %76 = call i32 @gettimeofday(%struct.timeval* %startTime, %struct.timezone* null) #5
  %77 = bitcast %struct.arg* %arg to i8*
  call void @thread_start(void (i8*)* @processPackets, i8* %77)
  %78 = call i32 @gettimeofday(%struct.timeval* %stopTime, %struct.timezone* null) #5
  %79 = getelementptr inbounds %struct.timeval, %struct.timeval* %stopTime, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = sitofp i64 %80 to double
  %82 = getelementptr inbounds %struct.timeval, %struct.timeval* %stopTime, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = sitofp i64 %83 to double
  %85 = fdiv double %84, 1.000000e+06
  %86 = fadd double %81, %85
  %87 = getelementptr inbounds %struct.timeval, %struct.timeval* %startTime, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = sitofp i64 %88 to double
  %90 = getelementptr inbounds %struct.timeval, %struct.timeval* %startTime, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = sitofp i64 %91 to double
  %93 = fdiv double %92, 1.000000e+06
  %94 = fadd double %89, %93
  %95 = fsub double %86, %94
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0), double %95)
  br label %97

; <label>:97                                      ; preds = %118, %72
  %i.1 = phi i64 [ 0, %72 ], [ %119, %118 ]
  %numFound.0 = phi i64 [ 0, %72 ], [ %103, %118 ]
  %98 = icmp slt i64 %i.1, %2
  br i1 %98, label %99, label %120

; <label>:99                                      ; preds = %97
  %100 = getelementptr inbounds %struct.vector*, %struct.vector** %54, i64 %i.1
  %101 = load %struct.vector*, %struct.vector** %100, align 8
  %102 = call i64 @vector_getSize(%struct.vector* %101)
  %103 = add nsw i64 %numFound.0, %102
  br label %104

; <label>:104                                     ; preds = %115, %99
  %e.0 = phi i64 [ 0, %99 ], [ %116, %115 ]
  %105 = icmp slt i64 %e.0, %102
  br i1 %105, label %106, label %117

; <label>:106                                     ; preds = %104
  %107 = call i8* @vector_at(%struct.vector* %101, i64 %e.0)
  %108 = ptrtoint i8* %107 to i64
  %109 = call i64 @stream_isAttack(%struct.stream* %38, i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

; <label>:111                                     ; preds = %106
  br label %114

; <label>:112                                     ; preds = %106
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 337, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:114                                     ; preds = %111
  br label %115

; <label>:115                                     ; preds = %114
  %116 = add nsw i64 %e.0, 1
  br label %104

; <label>:117                                     ; preds = %104
  br label %118

; <label>:118                                     ; preds = %117
  %119 = add nsw i64 %i.1, 1
  br label %97

; <label>:120                                     ; preds = %97
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i64 %numFound.0)
  %122 = icmp eq i64 %numFound.0, %44
  br i1 %122, label %123, label %124

; <label>:123                                     ; preds = %120
  br label %126

; <label>:124                                     ; preds = %120
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 341, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %126

; <label>:126                                     ; preds = %125, %123
  br label %127

; <label>:127                                     ; preds = %132, %126
  %i.2 = phi i64 [ 0, %126 ], [ %133, %132 ]
  %128 = icmp slt i64 %i.2, %2
  br i1 %128, label %129, label %134

; <label>:129                                     ; preds = %127
  %130 = getelementptr inbounds %struct.vector*, %struct.vector** %54, i64 %i.2
  %131 = load %struct.vector*, %struct.vector** %130, align 8
  call void @vector_free(%struct.vector* %131)
  br label %132

; <label>:132                                     ; preds = %129
  %133 = add nsw i64 %i.2, 1
  br label %127

; <label>:134                                     ; preds = %127
  %135 = bitcast %struct.vector** %54 to i8*
  call void @free(i8* %135) #5
  call void @decoder_free(%struct.decoder* %46)
  call void @stream_free(%struct.stream* %38)
  call void @dictionary_free(%struct.vector* %32)
  br label %136

; <label>:136                                     ; preds = %134
  %137 = call i64 (...) @getWorkItemCount()
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), i64 %137)
  %139 = call i32 @fflush(%struct._IO_FILE* null)
  br label %140

; <label>:140                                     ; preds = %136
  call void (...) @thread_shutdown()
  call void (...) @RTM_output_stats()
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @parseArgs(i64 %argc, i8** %argv) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i32 0, i32* @opterr, align 4
  %1 = trunc i64 %argc to i32
  br label %2

; <label>:2                                       ; preds = %17, %0
  %3 = call i32 @getopt(i32 %1, i8** %argv, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0)) #5
  %4 = sext i32 %3 to i64
  %5 = icmp ne i64 %4, -1
  br i1 %5, label %6, label %18

; <label>:6                                       ; preds = %2
  switch i64 %4, label %._crit_edge [
    i64 97, label %._crit_edge1
    i64 108, label %._crit_edge2
    i64 110, label %._crit_edge3
    i64 115, label %._crit_edge4
    i64 116, label %._crit_edge5
    i64 63, label %13
  ]

._crit_edge5:                                     ; preds = %6
  br label %7

._crit_edge4:                                     ; preds = %6
  br label %7

._crit_edge3:                                     ; preds = %6
  br label %7

._crit_edge2:                                     ; preds = %6
  br label %7

._crit_edge1:                                     ; preds = %6
  br label %7

._crit_edge:                                      ; preds = %6
  br label %14

; <label>:7                                       ; preds = %._crit_edge1, %._crit_edge2, %._crit_edge3, %._crit_edge4, %._crit_edge5
  %8 = load i8*, i8** @optarg, align 8
  %9 = call i64 @atol(i8* %8) #9
  %10 = trunc i64 %4 to i8
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds [256 x i64], [256 x i64]* @global_params, i64 0, i64 %11
  store i64 %9, i64* %12, align 8
  br label %17

; <label>:13                                      ; preds = %6
  br label %14

; <label>:14                                      ; preds = %13, %._crit_edge
  %15 = load i32, i32* @opterr, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @opterr, align 4
  br label %17

; <label>:17                                      ; preds = %14, %7
  br label %2

; <label>:18                                      ; preds = %2
  %.lcssa = phi i64 [ %4, %2 ]
  %19 = load i32, i32* @optind, align 4
  %20 = sext i32 %19 to i64
  br label %21

; <label>:21                                      ; preds = %30, %18
  %i.0 = phi i64 [ %20, %18 ], [ %31, %30 ]
  %22 = icmp slt i64 %i.0, %argc
  br i1 %22, label %23, label %32

; <label>:23                                      ; preds = %21
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = getelementptr inbounds i8*, i8** %argv, i64 %i.0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0), i8* %26)
  %28 = load i32, i32* @opterr, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @opterr, align 4
  br label %30

; <label>:30                                      ; preds = %23
  %31 = add nsw i64 %i.0, 1
  br label %21

; <label>:32                                      ; preds = %21
  %33 = load i32, i32* @opterr, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %._crit_edge6

._crit_edge6:                                     ; preds = %32
  br label %38

; <label>:35                                      ; preds = %32
  %36 = getelementptr inbounds i8*, i8** %argv, i64 0
  %37 = load i8*, i8** %36, align 8
  call void @displayUsage(i8* %37)
  br label %38

; <label>:38                                      ; preds = %35, %._crit_edge6
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__get_cpuid_max(i32 %__level, i32* %__sig) #4 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %__level) #8, !srcloc !5
  %2 = extractvalue { i32, i32, i32, i32 } %1, 0
  %3 = extractvalue { i32, i32, i32, i32 } %1, 1
  %4 = extractvalue { i32, i32, i32, i32 } %1, 2
  %5 = extractvalue { i32, i32, i32, i32 } %1, 3
  %6 = icmp ne i32* %__sig, null
  br i1 %6, label %7, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %8

; <label>:7                                       ; preds = %0
  store i32 %3, i32* %__sig, align 4
  br label %8

; <label>:8                                       ; preds = %7, %._crit_edge
  ret i32 %2
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
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0), i8* %appName)
  %2 = call i32 @puts(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.24, i32 0, i32 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i32 0, i32 0), i32 10)
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i32 0, i32 0), i32 16)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.27, i32 0, i32 0), i32 1048576)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i32 0, i32 0), i32 1)
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i32 0, i32 0), i32 1)
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
