; ModuleID = '../bin/intruder.ll'
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
define void @processPackets(i8* nocapture readonly %argPtr) #0 {
  %decodedFlowId = alloca i64, align 8
  %1 = tail call i64 (...) @thread_getId() #4
  %2 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %3 = tail call i64 (...) @thread_getId() #4
  %4 = trunc i64 %3 to i32
  tail call void @SimRoiStart(i32 %4) #4
  %5 = tail call i64 (...) @thread_getId() #4
  %6 = bitcast i8* %argPtr to %struct.stream**
  %7 = load %struct.stream*, %struct.stream** %6, align 8
  %8 = getelementptr inbounds i8, i8* %argPtr, i64 8
  %9 = bitcast i8* %8 to %struct.decoder**
  %10 = load %struct.decoder*, %struct.decoder** %9, align 8
  %11 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %12 = bitcast i8* %11 to %struct.vector***
  %13 = load %struct.vector**, %struct.vector*** %12, align 8
  %14 = tail call %struct.detector* (...) @Pdetector_alloc() #4
  %15 = icmp eq %struct.detector* %14, null
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 191, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.processPackets, i64 0, i64 0)) #6
  unreachable

; <label>:17                                      ; preds = %0
  tail call void @detector_addPreprocessor(%struct.detector* nonnull %14, void (i8*)* nonnull @preprocessor_toLower) #4
  %18 = getelementptr inbounds %struct.vector*, %struct.vector** %13, i64 %5
  %19 = load %struct.vector*, %struct.vector** %18, align 8
  %20 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 0
  %21 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  %22 = bitcast i64* %decodedFlowId to i8**
  br label %23

; <label>:23                                      ; preds = %17, %103
  %24 = load i32, i32* %20, align 8
  %25 = call i32 @workBegin(i32 0, i32 %24) #4
  store i32 %25, i32* %21, align 4
  br label %.outer3

.outer3:                                          ; preds = %31, %23
  %tries.0.ph = phi i32 [ %32, %31 ], [ 9, %23 ]
  %26 = call i64 (...) @RTM_fallback_isLocked() #4
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.outer3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  call void @llvm.x86.sse2.pause() #4
  %28 = call i64 (...) @RTM_fallback_isLocked() #4
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.outer3
  %30 = icmp slt i32 %tries.0.ph, 2
  br i1 %30, label %42, label %31

; <label>:31                                      ; preds = %._crit_edge
  %32 = add nsw i32 %tries.0.ph, -1
  %33 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0, i64 0, i64 4294967295) #4, !srcloc !1
  %34 = trunc i64 %33 to i32
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %.outer3

; <label>:36                                      ; preds = %31
  %37 = call i64 (...) @RTM_fallback_isLocked() #4
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %40, label %39

; <label>:39                                      ; preds = %36
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !2
  br label %40

; <label>:40                                      ; preds = %36, %39
  %41 = call i8* @TMstream_getPacket(%struct.stream* %7) #4
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #4, !srcloc !3
  br label %44

; <label>:42                                      ; preds = %._crit_edge
  call void (...) @RTM_fallback_lock() #4
  %43 = call i8* @TMstream_getPacket(%struct.stream* %7) #4
  call void (...) @RTM_fallback_unlock() #4
  br label %44

; <label>:44                                      ; preds = %42, %40
  %45 = phi i8* [ %43, %42 ], [ %41, %40 ]
  %46 = icmp eq i8* %45, null
  br i1 %46, label %104, label %.outer2.preheader

.outer2.preheader:                                ; preds = %44
  br label %.outer2

.outer2:                                          ; preds = %.outer2.preheader, %53
  %tries3.0.ph = phi i32 [ %54, %53 ], [ 9, %.outer2.preheader ]
  %47 = call i64 (...) @RTM_fallback_isLocked() #4
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %._crit_edge9, label %.lr.ph8.preheader

.lr.ph8.preheader:                                ; preds = %.outer2
  br label %.lr.ph8

.lr.ph8:                                          ; preds = %.lr.ph8.preheader, %.lr.ph8
  call void @llvm.x86.sse2.pause() #4
  %49 = call i64 (...) @RTM_fallback_isLocked() #4
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %._crit_edge9.loopexit, label %.lr.ph8

._crit_edge9.loopexit:                            ; preds = %.lr.ph8
  br label %._crit_edge9

._crit_edge9:                                     ; preds = %._crit_edge9.loopexit, %.outer2
  %51 = icmp slt i32 %tries3.0.ph, 2
  br i1 %51, label %52, label %53

; <label>:52                                      ; preds = %._crit_edge9
  %tries3.0.ph.lcssa = phi i32 [ %tries3.0.ph, %._crit_edge9 ]
  call void (...) @RTM_fallback_lock() #4
  br label %62

; <label>:53                                      ; preds = %._crit_edge9
  %54 = add nsw i32 %tries3.0.ph, -1
  %55 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 0, i64 1, i64 4294967295) #4, !srcloc !1
  %56 = trunc i64 %55 to i32
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %.outer2

; <label>:58                                      ; preds = %53
  %tries3.0.ph.lcssa20 = phi i32 [ %tries3.0.ph, %53 ]
  %59 = call i64 (...) @RTM_fallback_isLocked() #4
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %62, label %61

; <label>:61                                      ; preds = %58
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !2
  br label %62

; <label>:62                                      ; preds = %58, %61, %52
  %tries3.0.ph21 = phi i32 [ %tries3.0.ph.lcssa20, %58 ], [ %tries3.0.ph.lcssa20, %61 ], [ %tries3.0.ph.lcssa, %52 ]
  %63 = getelementptr inbounds i8, i8* %45, i64 24
  %64 = bitcast i8* %63 to i64*
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, 32
  %67 = call i32 @TMdecoder_process(%struct.decoder* %10, i8* nonnull %45, i64 %66) #4
  %68 = icmp sgt i32 %tries3.0.ph21, 1
  br i1 %68, label %69, label %70

; <label>:69                                      ; preds = %62
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 1) #4, !srcloc !3
  br label %71

; <label>:70                                      ; preds = %62
  call void (...) @RTM_fallback_unlock() #4
  br label %71

; <label>:71                                      ; preds = %70, %69
  %72 = icmp eq i32 %67, 0
  br i1 %72, label %.outer.preheader, label %73

.outer.preheader:                                 ; preds = %71
  br label %.outer

; <label>:73                                      ; preds = %71
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 219, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.processPackets, i64 0, i64 0)) #6
  unreachable

.lr.ph10:                                         ; preds = %.lr.ph10.preheader, %.lr.ph10
  call void @llvm.x86.sse2.pause() #4
  %74 = call i64 (...) @RTM_fallback_isLocked() #4
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %._crit_edge11.loopexit, label %.lr.ph10

._crit_edge11.loopexit:                           ; preds = %.lr.ph10
  br label %._crit_edge11

._crit_edge11:                                    ; preds = %._crit_edge11.loopexit, %.outer
  %76 = icmp slt i32 %tries5.0.ph, 2
  br i1 %76, label %90, label %77

; <label>:77                                      ; preds = %._crit_edge11
  %78 = add nsw i32 %tries5.0.ph, -1
  %79 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 0, i64 2, i64 4294967295) #4, !srcloc !1
  %80 = trunc i64 %79 to i32
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %84, label %.outer

.outer:                                           ; preds = %.outer.preheader, %77
  %tries5.0.ph = phi i32 [ %78, %77 ], [ 9, %.outer.preheader ]
  %82 = call i64 (...) @RTM_fallback_isLocked() #4
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %._crit_edge11, label %.lr.ph10.preheader

.lr.ph10.preheader:                               ; preds = %.outer
  br label %.lr.ph10

; <label>:84                                      ; preds = %77
  %85 = call i64 (...) @RTM_fallback_isLocked() #4
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %88, label %87

; <label>:87                                      ; preds = %84
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !2
  br label %88

; <label>:88                                      ; preds = %84, %87
  %89 = call i8* @TMdecoder_getComplete(%struct.decoder* %10, i64* nonnull %decodedFlowId) #4
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 2) #4, !srcloc !3
  br label %92

; <label>:90                                      ; preds = %._crit_edge11
  call void (...) @RTM_fallback_lock() #4
  %91 = call i8* @TMdecoder_getComplete(%struct.decoder* %10, i64* nonnull %decodedFlowId) #4
  call void (...) @RTM_fallback_unlock() #4
  br label %92

; <label>:92                                      ; preds = %90, %88
  %93 = phi i8* [ %91, %90 ], [ %89, %88 ]
  %94 = icmp eq i8* %93, null
  br i1 %94, label %103, label %95

; <label>:95                                      ; preds = %92
  %96 = call i32 @detector_process(%struct.detector* nonnull %14, i8* nonnull %93) #4
  call void @free(i8* nonnull %93) #4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %103, label %98

; <label>:98                                      ; preds = %95
  %99 = load i8*, i8** %22, align 8
  %100 = call i64 @Pvector_pushBack(%struct.vector* %19, i8* %99) #4
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %103

; <label>:102                                     ; preds = %98
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 235, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.processPackets, i64 0, i64 0)) #6
  unreachable

; <label>:103                                     ; preds = %98, %95, %92
  call void @workEnd(i32 0, i32 0) #4
  br label %23

; <label>:104                                     ; preds = %44
  call void @Pdetector_free(%struct.detector* nonnull %14) #4
  %105 = call i64 (...) @thread_getId() #4
  %106 = trunc i64 %105 to i32
  %107 = load i32, i32* %21, align 4
  call void @SimRoiEnd(i32 %106, i32 %107) #4
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
declare void @free(i8* nocapture) #3

declare i64 @Pvector_pushBack(%struct.vector*, i8*) #1

declare void @workEnd(i32, i32) #1

declare void @Pdetector_free(%struct.detector*) #1

declare void @SimRoiEnd(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %arg = alloca %struct.arg, align 8
  %startTime = alloca %struct.timeval, align 8
  %stopTime = alloca %struct.timeval, align 8
  %1 = sext i32 %argc to i64
  store i32 0, i32* @opterr, align 4
  %2 = tail call i32 @getopt(i32 %argc, i8** %argv, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0)) #4
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %._crit_edge4.i, label %.lr.ph3.i.preheader

.lr.ph3.i.preheader:                              ; preds = %0
  br label %.lr.ph3.i

.lr.ph3.i:                                        ; preds = %.lr.ph3.i.preheader, %.backedge.i
  %4 = phi i32 [ %15, %.backedge.i ], [ %2, %.lr.ph3.i.preheader ]
  %5 = sext i32 %4 to i64
  switch i64 %5, label %12 [
    i64 97, label %6
    i64 108, label %6
    i64 110, label %6
    i64 115, label %6
    i64 116, label %6
  ]

; <label>:6                                       ; preds = %.lr.ph3.i, %.lr.ph3.i, %.lr.ph3.i, %.lr.ph3.i, %.lr.ph3.i
  %7 = load i8*, i8** @optarg, align 8
  %8 = tail call i64 @atol(i8* %7) #7
  %9 = zext i32 %4 to i64
  %10 = and i64 %9, 255
  %11 = getelementptr inbounds [256 x i64], [256 x i64]* @global_params, i64 0, i64 %10
  store i64 %8, i64* %11, align 8
  br label %.backedge.i

; <label>:12                                      ; preds = %.lr.ph3.i
  %13 = load i32, i32* @opterr, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @opterr, align 4
  br label %.backedge.i

.backedge.i:                                      ; preds = %12, %6
  %15 = tail call i32 @getopt(i32 %argc, i8** %argv, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0)) #4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %._crit_edge4.i.loopexit, label %.lr.ph3.i

._crit_edge4.i.loopexit:                          ; preds = %.backedge.i
  br label %._crit_edge4.i

._crit_edge4.i:                                   ; preds = %._crit_edge4.i.loopexit, %0
  %17 = load i32, i32* @optind, align 4
  %18 = icmp slt i32 %17, %argc
  br i1 %18, label %.lr.ph.i.preheader, label %._crit_edge4.._crit_edge_crit_edge.i

.lr.ph.i.preheader:                               ; preds = %._crit_edge4.i
  %19 = sext i32 %17 to i64
  br label %.lr.ph.i

._crit_edge4.._crit_edge_crit_edge.i:             ; preds = %._crit_edge4.i
  %.pre.i = load i32, i32* @opterr, align 4
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.01.i = phi i64 [ %26, %.lr.ph.i ], [ %19, %.lr.ph.i.preheader ]
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = getelementptr inbounds i8*, i8** %argv, i64 %i.01.i
  %22 = load i8*, i8** %21, align 8
  %23 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i8* %22) #8
  %24 = load i32, i32* @opterr, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @opterr, align 4
  %26 = add nsw i64 %i.01.i, 1
  %exitcond.i = icmp eq i64 %26, %1
  br i1 %exitcond.i, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %.lcssa = phi i32 [ %25, %.lr.ph.i ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %._crit_edge4.._crit_edge_crit_edge.i
  %27 = phi i32 [ %.pre.i, %._crit_edge4.._crit_edge_crit_edge.i ], [ %.lcssa, %._crit_edge.i.loopexit ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %parseArgs.exit, label %29

; <label>:29                                      ; preds = %._crit_edge.i
  %30 = load i8*, i8** %argv, align 8
  %31 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8* %30) #4
  %32 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.24, i64 0, i64 0)) #4
  %33 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0), i32 10) #4
  %34 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i64 0, i64 0), i32 16) #4
  %35 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.27, i64 0, i64 0), i32 1048576) #4
  %36 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i64 0, i64 0), i32 1) #4
  %37 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i64 0, i64 0), i32 1) #4
  tail call void @exit(i32 1) #6
  unreachable

parseArgs.exit:                                   ; preds = %._crit_edge.i
  %38 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 116), align 16
  %39 = tail call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 0) #9, !srcloc !4
  %40 = extractvalue { i32, i32, i32, i32 } %39, 0
  %41 = icmp sgt i32 %40, 6
  br i1 %41, label %43, label %42

; <label>:42                                      ; preds = %parseArgs.exit
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 262, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

; <label>:43                                      ; preds = %parseArgs.exit
  %44 = tail call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #9, !srcloc !5
  %45 = extractvalue { i32, i32, i32, i32 } %44, 1
  %46 = and i32 %45, 2048
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

; <label>:48                                      ; preds = %43
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 262, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

; <label>:49                                      ; preds = %43
  tail call void (...) @RTM_spinlock_init() #4
  tail call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %38) #4
  tail call void @thread_startup(i64 %38) #4
  %50 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 97), align 8
  %51 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 108), align 16
  %52 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 110), align 16
  %53 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 115), align 8
  %54 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 %50)
  %55 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 %51)
  %56 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i64 %52)
  %57 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i64 %53)
  %58 = tail call %struct.vector* (...) @dictionary_alloc() #4
  %59 = icmp eq %struct.vector* %58, null
  br i1 %59, label %60, label %61

; <label>:60                                      ; preds = %49
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 276, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

; <label>:61                                      ; preds = %49
  %62 = tail call %struct.stream* @stream_alloc(i64 %50) #4
  %63 = icmp eq %struct.stream* %62, null
  br i1 %63, label %64, label %65

; <label>:64                                      ; preds = %61
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 278, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

; <label>:65                                      ; preds = %61
  %66 = tail call i64 @stream_generate(%struct.stream* nonnull %62, %struct.vector* nonnull %58, i64 %52, i64 %53, i64 %51) #4
  %67 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i64 %66)
  %68 = tail call %struct.decoder* (...) @decoder_alloc() #4
  %69 = icmp eq %struct.decoder* %68, null
  br i1 %69, label %70, label %71

; <label>:70                                      ; preds = %65
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 287, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

; <label>:71                                      ; preds = %65
  %72 = shl i64 %38, 3
  %73 = tail call noalias i8* @malloc(i64 %72) #4
  %74 = bitcast i8* %73 to %struct.vector**
  %75 = icmp eq i8* %73, null
  br i1 %75, label %77, label %.preheader1

.preheader1:                                      ; preds = %71
  %76 = icmp sgt i64 %38, 0
  br i1 %76, label %.lr.ph14.preheader, label %._crit_edge15

.lr.ph14.preheader:                               ; preds = %.preheader1
  br label %.lr.ph14

; <label>:77                                      ; preds = %71
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 290, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

.lr.ph14:                                         ; preds = %.lr.ph14.preheader, %81
  %i.013 = phi i64 [ %83, %81 ], [ 0, %.lr.ph14.preheader ]
  %78 = tail call %struct.vector* @vector_alloc(i64 %52) #4
  %79 = icmp eq %struct.vector* %78, null
  br i1 %79, label %80, label %81

; <label>:80                                      ; preds = %.lr.ph14
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 294, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

; <label>:81                                      ; preds = %.lr.ph14
  %82 = getelementptr inbounds %struct.vector*, %struct.vector** %74, i64 %i.013
  store %struct.vector* %78, %struct.vector** %82, align 8
  %83 = add nuw nsw i64 %i.013, 1
  %84 = icmp slt i64 %83, %38
  br i1 %84, label %.lr.ph14, label %._crit_edge15.loopexit

._crit_edge15.loopexit:                           ; preds = %81
  br label %._crit_edge15

._crit_edge15:                                    ; preds = %._crit_edge15.loopexit, %.preheader1
  %85 = getelementptr inbounds %struct.arg, %struct.arg* %arg, i64 0, i32 0
  store %struct.stream* %62, %struct.stream** %85, align 8
  %86 = getelementptr inbounds %struct.arg, %struct.arg* %arg, i64 0, i32 1
  store %struct.decoder* %68, %struct.decoder** %86, align 8
  %87 = getelementptr inbounds %struct.arg, %struct.arg* %arg, i64 0, i32 2
  %88 = bitcast %struct.vector*** %87 to i8**
  store i8* %73, i8** %88, align 8
  %89 = call i32 @gettimeofday(%struct.timeval* nonnull %startTime, %struct.timezone* null) #4
  %90 = bitcast %struct.arg* %arg to i8*
  call void @thread_start(void (i8*)* nonnull @processPackets, i8* %90) #4
  %91 = call i32 @gettimeofday(%struct.timeval* nonnull %stopTime, %struct.timezone* null) #4
  %92 = getelementptr inbounds %struct.timeval, %struct.timeval* %stopTime, i64 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = sitofp i64 %93 to double
  %95 = getelementptr inbounds %struct.timeval, %struct.timeval* %stopTime, i64 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = sitofp i64 %96 to double
  %98 = fdiv double %97, 1.000000e+06
  %99 = fadd double %94, %98
  %100 = getelementptr inbounds %struct.timeval, %struct.timeval* %startTime, i64 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = sitofp i64 %101 to double
  %103 = getelementptr inbounds %struct.timeval, %struct.timeval* %startTime, i64 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = sitofp i64 %104 to double
  %106 = fdiv double %105, 1.000000e+06
  %107 = fadd double %102, %106
  %108 = fsub double %99, %107
  %109 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), double %108)
  br i1 %76, label %.lr.ph11.preheader, label %._crit_edge12

.lr.ph11.preheader:                               ; preds = %._crit_edge15
  br label %.lr.ph11

.lr.ph11:                                         ; preds = %.lr.ph11.preheader, %._crit_edge7
  %i.19 = phi i64 [ %123, %._crit_edge7 ], [ 0, %.lr.ph11.preheader ]
  %numFound.08 = phi i64 [ %113, %._crit_edge7 ], [ 0, %.lr.ph11.preheader ]
  %110 = getelementptr inbounds %struct.vector*, %struct.vector** %74, i64 %i.19
  %111 = load %struct.vector*, %struct.vector** %110, align 8
  %112 = call i64 @vector_getSize(%struct.vector* %111) #4
  %113 = add nsw i64 %112, %numFound.08
  %114 = icmp sgt i64 %112, 0
  br i1 %114, label %.lr.ph6.preheader, label %._crit_edge7

.lr.ph6.preheader:                                ; preds = %.lr.ph11
  br label %.lr.ph6

; <label>:115                                     ; preds = %.lr.ph6
  %116 = icmp slt i64 %121, %112
  br i1 %116, label %.lr.ph6, label %._crit_edge7.loopexit

.lr.ph6:                                          ; preds = %.lr.ph6.preheader, %115
  %e.04 = phi i64 [ %121, %115 ], [ 0, %.lr.ph6.preheader ]
  %117 = call i8* @vector_at(%struct.vector* %111, i64 %e.04) #4
  %118 = ptrtoint i8* %117 to i64
  %119 = call i64 @stream_isAttack(%struct.stream* nonnull %62, i64 %118) #4
  %120 = icmp eq i64 %119, 0
  %121 = add nuw nsw i64 %e.04, 1
  br i1 %120, label %122, label %115

; <label>:122                                     ; preds = %.lr.ph6
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 337, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

._crit_edge7.loopexit:                            ; preds = %115
  br label %._crit_edge7

._crit_edge7:                                     ; preds = %._crit_edge7.loopexit, %.lr.ph11
  %123 = add nuw nsw i64 %i.19, 1
  %124 = icmp slt i64 %123, %38
  br i1 %124, label %.lr.ph11, label %._crit_edge12.loopexit

._crit_edge12.loopexit:                           ; preds = %._crit_edge7
  %.lcssa20 = phi i64 [ %113, %._crit_edge7 ]
  br label %._crit_edge12

._crit_edge12:                                    ; preds = %._crit_edge12.loopexit, %._crit_edge15
  %numFound.0.lcssa = phi i64 [ 0, %._crit_edge15 ], [ %.lcssa20, %._crit_edge12.loopexit ]
  %125 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i64 %numFound.0.lcssa)
  %126 = icmp eq i64 %numFound.0.lcssa, %66
  br i1 %126, label %.preheader, label %127

.preheader:                                       ; preds = %._crit_edge12
  br i1 %76, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  br label %.lr.ph

; <label>:127                                     ; preds = %._crit_edge12
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 341, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.23 = phi i64 [ %130, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %128 = getelementptr inbounds %struct.vector*, %struct.vector** %74, i64 %i.23
  %129 = load %struct.vector*, %struct.vector** %128, align 8
  call void @vector_free(%struct.vector* %129) #4
  %130 = add nuw nsw i64 %i.23, 1
  %exitcond = icmp eq i64 %130, %38
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  call void @free(i8* %73) #4
  call void @decoder_free(%struct.decoder* nonnull %68) #4
  call void @stream_free(%struct.stream* nonnull %62) #4
  call void @dictionary_free(%struct.vector* nonnull %58) #4
  %131 = call i64 (...) @getWorkItemCount() #4
  %132 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i64 %131)
  %133 = call i32 @fflush(%struct._IO_FILE* null)
  call void (...) @thread_shutdown() #4
  call void (...) @RTM_output_stats() #4
  ret i32 0
}

declare void @RTM_spinlock_init(...) #1

declare void @SimStartup(...) #1

declare void @thread_startup(i64) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #3

declare %struct.vector* @dictionary_alloc(...) #1

declare %struct.stream* @stream_alloc(i64) #1

declare i64 @stream_generate(%struct.stream*, %struct.vector*, i64, i64, i64) #1

declare %struct.decoder* @decoder_alloc(...) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare %struct.vector* @vector_alloc(i64) #1

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #3

declare void @thread_start(void (i8*)*, i8*) #1

declare i64 @vector_getSize(%struct.vector*) #1

declare i8* @vector_at(%struct.vector*, i64) #1

declare i64 @stream_isAttack(%struct.stream*, i64) #1

declare void @vector_free(%struct.vector*) #1

declare void @decoder_free(%struct.decoder*) #1

declare void @stream_free(%struct.stream*) #1

declare void @dictionary_free(%struct.vector*) #1

declare i64 @getWorkItemCount(...) #1

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) #3

declare void @thread_shutdown(...) #1

declare void @RTM_output_stats(...) #1

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #4

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @atol(i8* nocapture) #5

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 1426813, i32 1426829, i32 1426865, i32 1426901, i32 1426937}
!2 = !{i32 1427414, i32 1427429, i32 1427463}
!3 = !{i32 1427185, i32 1427200, i32 1427228}
!4 = !{i32 -2146009986, i32 -2146009950, i32 -2146009926}
!5 = !{i32 -2145869420, i32 -2145869384, i32 -2145869360}
