; ModuleID = '../bin/yada.ll'
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
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@global_inputPrefix = global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), align 8
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
  %1 = tail call i64 (...) @thread_getId() #4
  %2 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %3 = tail call i64 (...) @thread_getId() #4
  %4 = trunc i64 %3 to i32
  tail call void @SimRoiStart(i32 %4) #4
  %5 = load %struct.heap*, %struct.heap** @global_workHeapPtr, align 8
  %6 = load %struct.mesh*, %struct.mesh** @global_meshPtr, align 8
  %7 = tail call %struct.region* (...) @Pregion_alloc() #4
  %8 = icmp eq %struct.region* %7, null
  br i1 %8, label %11, label %.preheader9

.preheader9:                                      ; preds = %0
  %9 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 0
  %10 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  br label %.outer10

; <label>:11                                      ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 201, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.process, i64 0, i64 0)) #6
  unreachable

; <label>:12                                      ; preds = %.outer10, %54
  %13 = load i32, i32* %9, align 8
  %14 = tail call i32 @workBegin(i32 0, i32 %13) #4
  store i32 %14, i32* %10, align 4
  br label %.outer8

.outer8:                                          ; preds = %20, %12
  %tries.0.ph = phi i32 [ %21, %20 ], [ 9, %12 ]
  %15 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %._crit_edge21, label %.lr.ph20.preheader

.lr.ph20.preheader:                               ; preds = %.outer8
  br label %.lr.ph20

.lr.ph20:                                         ; preds = %.lr.ph20.preheader, %.lr.ph20
  tail call void @llvm.x86.sse2.pause() #4
  %17 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %._crit_edge21.loopexit, label %.lr.ph20

._crit_edge21.loopexit:                           ; preds = %.lr.ph20
  br label %._crit_edge21

._crit_edge21:                                    ; preds = %._crit_edge21.loopexit, %.outer8
  %19 = icmp slt i32 %tries.0.ph, 2
  br i1 %19, label %31, label %20

; <label>:20                                      ; preds = %._crit_edge21
  %21 = add nsw i32 %tries.0.ph, -1
  %22 = tail call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0, i64 0, i64 4294967295) #4, !srcloc !1
  %23 = trunc i64 %22 to i32
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %.outer8

; <label>:25                                      ; preds = %20
  %26 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %29, label %28

; <label>:28                                      ; preds = %25
  tail call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !2
  br label %29

; <label>:29                                      ; preds = %25, %28
  %30 = tail call i8* @TMheap_remove(%struct.heap* %5) #4
  tail call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #4, !srcloc !3
  br label %33

; <label>:31                                      ; preds = %._crit_edge21
  tail call void (...) @RTM_fallback_lock() #4
  %32 = tail call i8* @TMheap_remove(%struct.heap* %5) #4
  tail call void (...) @RTM_fallback_unlock() #4
  br label %33

; <label>:33                                      ; preds = %31, %29
  %.in = phi i8* [ %32, %31 ], [ %30, %29 ]
  %34 = bitcast i8* %.in to %struct.element*
  %35 = icmp eq i8* %.in, null
  br i1 %35, label %.outer.preheader, label %.outer7.preheader

.outer7.preheader:                                ; preds = %33
  br label %.outer7

.outer.preheader:                                 ; preds = %33
  %totalNumAdded.0.ph.lcssa = phi i64 [ %totalNumAdded.0.ph, %33 ]
  %numProcess.0.ph.lcssa = phi i64 [ %numProcess.0.ph, %33 ]
  br label %.outer

.lr.ph22:                                         ; preds = %.lr.ph22.preheader, %.lr.ph22
  tail call void @llvm.x86.sse2.pause() #4
  %36 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %._crit_edge23.loopexit, label %.lr.ph22

._crit_edge23.loopexit:                           ; preds = %.lr.ph22
  br label %._crit_edge23

._crit_edge23:                                    ; preds = %._crit_edge23.loopexit, %.outer7
  %38 = icmp slt i32 %tries2.0.ph, 2
  br i1 %38, label %52, label %39

; <label>:39                                      ; preds = %._crit_edge23
  %40 = add nsw i32 %tries2.0.ph, -1
  %41 = tail call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 0, i64 1, i64 4294967295) #4, !srcloc !1
  %42 = trunc i64 %41 to i32
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %46, label %.outer7

.outer7:                                          ; preds = %.outer7.preheader, %39
  %tries2.0.ph = phi i32 [ %40, %39 ], [ 9, %.outer7.preheader ]
  %44 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %._crit_edge23, label %.lr.ph22.preheader

.lr.ph22.preheader:                               ; preds = %.outer7
  br label %.lr.ph22

; <label>:46                                      ; preds = %39
  %47 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %50, label %49

; <label>:49                                      ; preds = %46
  tail call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !2
  br label %50

; <label>:50                                      ; preds = %46, %49
  %51 = tail call i64 @TMelement_isGarbage(%struct.element* %34) #4
  tail call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 1) #4, !srcloc !3
  br label %54

; <label>:52                                      ; preds = %._crit_edge23
  tail call void (...) @RTM_fallback_lock() #4
  %53 = tail call i64 @TMelement_isGarbage(%struct.element* %34) #4
  tail call void (...) @RTM_fallback_unlock() #4
  br label %54

; <label>:54                                      ; preds = %52, %50
  %55 = phi i64 [ %53, %52 ], [ %51, %50 ]
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %.outer5.preheader, label %12

.outer5.preheader:                                ; preds = %54
  %.lcssa60 = phi %struct.element* [ %34, %54 ]
  br label %.outer5

.outer5:                                          ; preds = %.outer5.preheader, %63
  %tries4.0.ph = phi i32 [ %64, %63 ], [ 9, %.outer5.preheader ]
  %57 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %._crit_edge25, label %.lr.ph24.preheader

.lr.ph24.preheader:                               ; preds = %.outer5
  br label %.lr.ph24

.lr.ph24:                                         ; preds = %.lr.ph24.preheader, %.lr.ph24
  tail call void @llvm.x86.sse2.pause() #4
  %59 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %._crit_edge25.loopexit, label %.lr.ph24

._crit_edge25.loopexit:                           ; preds = %.lr.ph24
  br label %._crit_edge25

._crit_edge25:                                    ; preds = %._crit_edge25.loopexit, %.outer5
  %61 = icmp slt i32 %tries4.0.ph, 2
  br i1 %61, label %62, label %63

; <label>:62                                      ; preds = %._crit_edge25
  %tries4.0.ph.lcssa = phi i32 [ %tries4.0.ph, %._crit_edge25 ]
  tail call void (...) @RTM_fallback_lock() #4
  br label %72

; <label>:63                                      ; preds = %._crit_edge25
  %64 = add nsw i32 %tries4.0.ph, -1
  %65 = tail call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 0, i64 2, i64 4294967295) #4, !srcloc !1
  %66 = trunc i64 %65 to i32
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %.outer5

; <label>:68                                      ; preds = %63
  %tries4.0.ph.lcssa61 = phi i32 [ %tries4.0.ph, %63 ]
  %69 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %72, label %71

; <label>:71                                      ; preds = %68
  tail call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !2
  br label %72

; <label>:72                                      ; preds = %68, %71, %62
  %tries4.0.ph62 = phi i32 [ %tries4.0.ph.lcssa61, %68 ], [ %tries4.0.ph.lcssa61, %71 ], [ %tries4.0.ph.lcssa, %62 ]
  tail call void @Pregion_clearBad(%struct.region* nonnull %7) #4
  %73 = tail call i64 @TMregion_refine(%struct.region* nonnull %7, %struct.element* %.lcssa60, %struct.mesh* %6) #4
  %74 = icmp sgt i32 %tries4.0.ph62, 1
  br i1 %74, label %75, label %76

; <label>:75                                      ; preds = %72
  tail call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 2) #4, !srcloc !3
  br label %.outer3.preheader

; <label>:76                                      ; preds = %72
  tail call void (...) @RTM_fallback_unlock() #4
  br label %.outer3.preheader

.outer3.preheader:                                ; preds = %76, %75
  br label %.outer3

.outer3:                                          ; preds = %.outer3.preheader, %83
  %tries6.0.ph = phi i32 [ %84, %83 ], [ 9, %.outer3.preheader ]
  %77 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %._crit_edge27, label %.lr.ph26.preheader

.lr.ph26.preheader:                               ; preds = %.outer3
  br label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph26.preheader, %.lr.ph26
  tail call void @llvm.x86.sse2.pause() #4
  %79 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %._crit_edge27.loopexit, label %.lr.ph26

._crit_edge27.loopexit:                           ; preds = %.lr.ph26
  br label %._crit_edge27

._crit_edge27:                                    ; preds = %._crit_edge27.loopexit, %.outer3
  %81 = icmp slt i32 %tries6.0.ph, 2
  br i1 %81, label %82, label %83

; <label>:82                                      ; preds = %._crit_edge27
  %tries6.0.ph.lcssa = phi i32 [ %tries6.0.ph, %._crit_edge27 ]
  tail call void (...) @RTM_fallback_lock() #4
  br label %92

; <label>:83                                      ; preds = %._crit_edge27
  %84 = add nsw i32 %tries6.0.ph, -1
  %85 = tail call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 3, i64 0, i64 3, i64 4294967295) #4, !srcloc !1
  %86 = trunc i64 %85 to i32
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %.outer3

; <label>:88                                      ; preds = %83
  %tries6.0.ph.lcssa63 = phi i32 [ %tries6.0.ph, %83 ]
  %89 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %92, label %91

; <label>:91                                      ; preds = %88
  tail call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !2
  br label %92

; <label>:92                                      ; preds = %88, %91, %82
  %tries6.0.ph64 = phi i32 [ %tries6.0.ph.lcssa63, %88 ], [ %tries6.0.ph.lcssa63, %91 ], [ %tries6.0.ph.lcssa, %82 ]
  tail call void @TMelement_setIsReferenced(%struct.element* %.lcssa60, i64 0) #4
  %93 = tail call i64 @TMelement_isGarbage(%struct.element* %.lcssa60) #4
  %94 = icmp sgt i32 %tries6.0.ph64, 1
  br i1 %94, label %95, label %96

; <label>:95                                      ; preds = %92
  tail call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 3) #4, !srcloc !3
  br label %97

; <label>:96                                      ; preds = %92
  tail call void (...) @RTM_fallback_unlock() #4
  br label %97

; <label>:97                                      ; preds = %96, %95
  %98 = add nsw i64 %73, %totalNumAdded.0.ph
  br label %.outer1

.outer1:                                          ; preds = %104, %97
  %tries8.0.ph = phi i32 [ %105, %104 ], [ 9, %97 ]
  %99 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %._crit_edge29, label %.lr.ph28.preheader

.lr.ph28.preheader:                               ; preds = %.outer1
  br label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph28.preheader, %.lr.ph28
  tail call void @llvm.x86.sse2.pause() #4
  %101 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %._crit_edge29.loopexit, label %.lr.ph28

._crit_edge29.loopexit:                           ; preds = %.lr.ph28
  br label %._crit_edge29

._crit_edge29:                                    ; preds = %._crit_edge29.loopexit, %.outer1
  %103 = icmp slt i32 %tries8.0.ph, 2
  br i1 %103, label %114, label %104

; <label>:104                                     ; preds = %._crit_edge29
  %105 = add nsw i32 %tries8.0.ph, -1
  %106 = tail call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 4, i64 0, i64 4, i64 4294967295) #4, !srcloc !1
  %107 = trunc i64 %106 to i32
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %109, label %.outer1

; <label>:109                                     ; preds = %104
  %110 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %113, label %112

; <label>:112                                     ; preds = %109
  tail call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !2
  br label %113

; <label>:113                                     ; preds = %109, %112
  tail call void @TMregion_transferBad(%struct.region* nonnull %7, %struct.heap* %5) #4
  tail call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 4) #4, !srcloc !3
  br label %115

; <label>:114                                     ; preds = %._crit_edge29
  tail call void (...) @RTM_fallback_lock() #4
  tail call void @TMregion_transferBad(%struct.region* nonnull %7, %struct.heap* %5) #4
  tail call void (...) @RTM_fallback_unlock() #4
  br label %115

; <label>:115                                     ; preds = %114, %113
  %116 = add nuw nsw i64 %numProcess.0.ph, 1
  tail call void @workEnd(i32 0, i32 0) #4
  br label %.outer10

.outer10:                                         ; preds = %.preheader9, %115
  %numProcess.0.ph = phi i64 [ 0, %.preheader9 ], [ %116, %115 ]
  %totalNumAdded.0.ph = phi i64 [ 0, %.preheader9 ], [ %98, %115 ]
  br label %12

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  tail call void @llvm.x86.sse2.pause() #4
  %117 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.outer
  %119 = icmp slt i32 %tries10.0.ph, 2
  br i1 %119, label %120, label %121

; <label>:120                                     ; preds = %._crit_edge
  %tries10.0.ph.lcssa = phi i32 [ %tries10.0.ph, %._crit_edge ]
  tail call void (...) @RTM_fallback_lock() #4
  br label %132

; <label>:121                                     ; preds = %._crit_edge
  %122 = add nsw i32 %tries10.0.ph, -1
  %123 = tail call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 5, i64 0, i64 5, i64 4294967295) #4, !srcloc !1
  %124 = trunc i64 %123 to i32
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %128, label %.outer

.outer:                                           ; preds = %.outer.preheader, %121
  %tries10.0.ph = phi i32 [ %122, %121 ], [ 9, %.outer.preheader ]
  %126 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.outer
  br label %.lr.ph

; <label>:128                                     ; preds = %121
  %tries10.0.ph.lcssa58 = phi i32 [ %tries10.0.ph, %121 ]
  %129 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %132, label %131

; <label>:131                                     ; preds = %128
  tail call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !2
  br label %132

; <label>:132                                     ; preds = %128, %131, %120
  %tries10.0.ph59 = phi i32 [ %tries10.0.ph.lcssa58, %128 ], [ %tries10.0.ph.lcssa58, %131 ], [ %tries10.0.ph.lcssa, %120 ]
  %133 = load i64, i64* @global_totalNumAdded, align 8
  %134 = add nsw i64 %133, %totalNumAdded.0.ph.lcssa
  store i64 %134, i64* @global_totalNumAdded, align 8
  %135 = load i64, i64* @global_numProcess, align 8
  %136 = add nsw i64 %135, %numProcess.0.ph.lcssa
  store i64 %136, i64* @global_numProcess, align 8
  %137 = icmp sgt i32 %tries10.0.ph59, 1
  br i1 %137, label %138, label %139

; <label>:138                                     ; preds = %132
  tail call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 5) #4, !srcloc !3
  br label %140

; <label>:139                                     ; preds = %132
  tail call void (...) @RTM_fallback_unlock() #4
  br label %140

; <label>:140                                     ; preds = %139, %138
  tail call void @Pregion_free(%struct.region* nonnull %7) #4
  %141 = tail call i64 (...) @thread_getId() #4
  %142 = trunc i64 %141 to i32
  %143 = load i32, i32* %10, align 4
  tail call void @SimRoiEnd(i32 %142, i32 %143) #4
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
  %start = alloca %struct.timeval, align 8
  %stop = alloca %struct.timeval, align 8
  %1 = sext i32 %argc to i64
  store i32 0, i32* @opterr, align 4
  %2 = tail call i32 @getopt(i32 %argc, i8** %argv, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #4
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %._crit_edge4.i, label %.lr.ph3.i.preheader

.lr.ph3.i.preheader:                              ; preds = %0
  br label %.lr.ph3.i

.lr.ph3.i:                                        ; preds = %.lr.ph3.i.preheader, %.backedge.i
  %4 = phi i32 [ %17, %.backedge.i ], [ %2, %.lr.ph3.i.preheader ]
  %5 = sext i32 %4 to i64
  switch i64 %5, label %14 [
    i64 97, label %6
    i64 105, label %9
    i64 116, label %11
  ]

; <label>:6                                       ; preds = %.lr.ph3.i
  %7 = load i8*, i8** @optarg, align 8
  %8 = tail call double @atof(i8* %7) #7
  store double %8, double* @global_angleConstraint, align 8
  br label %.backedge.i

; <label>:9                                       ; preds = %.lr.ph3.i
  %10 = load i64, i64* bitcast (i8** @optarg to i64*), align 8
  store i64 %10, i64* bitcast (i8** @global_inputPrefix to i64*), align 8
  br label %.backedge.i

; <label>:11                                      ; preds = %.lr.ph3.i
  %12 = load i8*, i8** @optarg, align 8
  %13 = tail call i64 @atol(i8* %12) #7
  store i64 %13, i64* @global_numThread, align 8
  br label %.backedge.i

; <label>:14                                      ; preds = %.lr.ph3.i
  %15 = load i32, i32* @opterr, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @opterr, align 4
  br label %.backedge.i

.backedge.i:                                      ; preds = %14, %11, %9, %6
  %17 = tail call i32 @getopt(i32 %argc, i8** %argv, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %._crit_edge4.i.loopexit, label %.lr.ph3.i

._crit_edge4.i.loopexit:                          ; preds = %.backedge.i
  br label %._crit_edge4.i

._crit_edge4.i:                                   ; preds = %._crit_edge4.i.loopexit, %0
  %19 = load i32, i32* @optind, align 4
  %20 = icmp slt i32 %19, %argc
  br i1 %20, label %.lr.ph.i.preheader, label %._crit_edge4.._crit_edge_crit_edge.i

.lr.ph.i.preheader:                               ; preds = %._crit_edge4.i
  %21 = sext i32 %19 to i64
  br label %.lr.ph.i

._crit_edge4.._crit_edge_crit_edge.i:             ; preds = %._crit_edge4.i
  %.pre.i = load i32, i32* @opterr, align 4
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.01.i = phi i64 [ %28, %.lr.ph.i ], [ %21, %.lr.ph.i.preheader ]
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = getelementptr inbounds i8*, i8** %argv, i64 %i.01.i
  %24 = load i8*, i8** %23, align 8
  %25 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i8* %24) #8
  %26 = load i32, i32* @opterr, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @opterr, align 4
  %28 = add nsw i64 %i.01.i, 1
  %exitcond.i = icmp eq i64 %28, %1
  br i1 %exitcond.i, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %.lcssa8 = phi i32 [ %27, %.lr.ph.i ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %._crit_edge4.._crit_edge_crit_edge.i
  %29 = phi i32 [ %.pre.i, %._crit_edge4.._crit_edge_crit_edge.i ], [ %.lcssa8, %._crit_edge.i.loopexit ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %parseArgs.exit, label %31

; <label>:31                                      ; preds = %._crit_edge.i
  %32 = load i8*, i8** %argv, align 8
  %33 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i8* %32) #4
  %34 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([51 x i8], [51 x i8]* @.str.26, i64 0, i64 0)) #4
  %35 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i64 0, i64 0), double 2.000000e+01) #4
  %36 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str.28, i64 0, i64 0), i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #4
  %37 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @.str.29, i64 0, i64 0), i64 1) #4
  tail call void @exit(i32 1) #6
  unreachable

parseArgs.exit:                                   ; preds = %._crit_edge.i
  %38 = tail call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 0) #9, !srcloc !4
  %39 = extractvalue { i32, i32, i32, i32 } %38, 0
  %40 = icmp sgt i32 %39, 6
  br i1 %40, label %42, label %41

; <label>:41                                      ; preds = %parseArgs.exit
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 283, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

; <label>:42                                      ; preds = %parseArgs.exit
  %43 = tail call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #9, !srcloc !5
  %44 = extractvalue { i32, i32, i32, i32 } %43, 1
  %45 = and i32 %44, 2048
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

; <label>:47                                      ; preds = %42
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 283, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

; <label>:48                                      ; preds = %42
  tail call void (...) @RTM_spinlock_init() #4
  %49 = load i64, i64* @global_numThread, align 8
  tail call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %49) #4
  %50 = load i64, i64* @global_numThread, align 8
  tail call void @thread_startup(i64 %50) #4
  %51 = tail call %struct.mesh* (...) @mesh_alloc() #4
  store %struct.mesh* %51, %struct.mesh** @global_meshPtr, align 8
  %52 = icmp eq %struct.mesh* %51, null
  br i1 %52, label %53, label %54

; <label>:53                                      ; preds = %48
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 287, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

; <label>:54                                      ; preds = %48
  %55 = load double, double* @global_angleConstraint, align 8
  %56 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), double %55)
  %57 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %58 = load %struct.mesh*, %struct.mesh** @global_meshPtr, align 8
  %59 = load i8*, i8** @global_inputPrefix, align 8
  %60 = tail call i64 @mesh_read(%struct.mesh* %58, i8* %59) #4
  %61 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %62 = tail call %struct.heap* @heap_alloc(i64 1, i64 (i8*, i8*)* nonnull @element_heapCompare) #4
  store %struct.heap* %62, %struct.heap** @global_workHeapPtr, align 8
  %63 = icmp eq %struct.heap* %62, null
  br i1 %63, label %64, label %65

; <label>:64                                      ; preds = %54
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 293, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

; <label>:65                                      ; preds = %54
  %66 = load %struct.mesh*, %struct.mesh** @global_meshPtr, align 8
  %67 = tail call %struct.random* (...) @random_alloc() #4
  tail call void @random_seed(%struct.random* %67, i64 0) #4
  tail call void @mesh_shuffleBad(%struct.mesh* %66, %struct.random* %67) #4
  tail call void @random_free(%struct.random* %67) #4
  %68 = tail call %struct.element* @mesh_getBad(%struct.mesh* %66) #4
  %69 = icmp eq %struct.element* %68, null
  br i1 %69, label %initializeWork.exit, label %.lr.ph.i1.preheader

.lr.ph.i1.preheader:                              ; preds = %65
  br label %.lr.ph.i1

.lr.ph.i1:                                        ; preds = %.lr.ph.i1.preheader, %75
  %70 = phi %struct.element* [ %77, %75 ], [ %68, %.lr.ph.i1.preheader ]
  %numBad.02.i = phi i64 [ %76, %75 ], [ 0, %.lr.ph.i1.preheader ]
  %71 = bitcast %struct.element* %70 to i8*
  %72 = tail call i64 @heap_insert(%struct.heap* nonnull %62, i8* %71) #4
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

; <label>:74                                      ; preds = %.lr.ph.i1
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 177, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.initializeWork, i64 0, i64 0)) #6
  unreachable

; <label>:75                                      ; preds = %.lr.ph.i1
  %76 = add nuw nsw i64 %numBad.02.i, 1
  tail call void @element_setIsReferenced(%struct.element* nonnull %70, i64 1) #4
  %77 = tail call %struct.element* @mesh_getBad(%struct.mesh* %66) #4
  %78 = icmp eq %struct.element* %77, null
  br i1 %78, label %initializeWork.exit.loopexit, label %.lr.ph.i1

initializeWork.exit.loopexit:                     ; preds = %75
  %.lcssa = phi i64 [ %76, %75 ]
  br label %initializeWork.exit

initializeWork.exit:                              ; preds = %initializeWork.exit.loopexit, %65
  %numBad.0.lcssa.i = phi i64 [ 0, %65 ], [ %.lcssa, %initializeWork.exit.loopexit ]
  %79 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i64 %60)
  %80 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i64 %numBad.0.lcssa.i)
  %81 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %83 = tail call i32 @fflush(%struct._IO_FILE* %82)
  %84 = call i32 @gettimeofday(%struct.timeval* nonnull %start, %struct.timezone* null) #4
  tail call void @thread_start(void (i8*)* nonnull bitcast (void ()* @process to void (i8*)*), i8* null) #4
  %85 = call i32 @gettimeofday(%struct.timeval* nonnull %stop, %struct.timezone* null) #4
  %86 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %87 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i64 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = sitofp i64 %88 to double
  %90 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i64 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = sitofp i64 %91 to double
  %93 = fdiv double %92, 1.000000e+06
  %94 = fadd double %89, %93
  %95 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i64 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = sitofp i64 %96 to double
  %98 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i64 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = sitofp i64 %99 to double
  %101 = fdiv double %100, 1.000000e+06
  %102 = fadd double %97, %101
  %103 = fsub double %94, %102
  %104 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), double %103)
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %106 = tail call i32 @fflush(%struct._IO_FILE* %105)
  %107 = load i64, i64* @global_totalNumAdded, align 8
  %108 = add nsw i64 %107, %60
  %109 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), i64 %108)
  %110 = load i64, i64* @global_numProcess, align 8
  %111 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0), i64 %110)
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %113 = tail call i32 @fflush(%struct._IO_FILE* %112)
  %114 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %116 = tail call i32 @fflush(%struct._IO_FILE* %115)
  %117 = tail call i64 (...) @getWorkItemCount() #4
  %118 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0), i64 %117)
  %119 = tail call i32 @fflush(%struct._IO_FILE* null)
  tail call void (...) @thread_shutdown() #4
  tail call void (...) @RTM_output_stats() #4
  ret i32 0
}

declare void @RTM_spinlock_init(...) #1

declare void @SimStartup(...) #1

declare void @thread_startup(i64) #1

declare %struct.mesh* @mesh_alloc(...) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #3

declare i64 @mesh_read(%struct.mesh*, i8*) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #3

declare %struct.heap* @heap_alloc(i64, i64 (i8*, i8*)*) #1

declare i64 @element_heapCompare(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #3

declare void @thread_start(void (i8*)*, i8*) #1

declare i64 @getWorkItemCount(...) #1

declare void @thread_shutdown(...) #1

declare void @RTM_output_stats(...) #1

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #4

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #3

; Function Attrs: nounwind readonly
declare double @atof(i8* nocapture) #5

; Function Attrs: nounwind readonly
declare i64 @atol(i8* nocapture) #5

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #3

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
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 1453419, i32 1453435, i32 1453471, i32 1453507, i32 1453543}
!2 = !{i32 1454020, i32 1454035, i32 1454069}
!3 = !{i32 1453791, i32 1453806, i32 1453834}
!4 = !{i32 -2145983380, i32 -2145983344, i32 -2145983320}
!5 = !{i32 -2145672078, i32 -2145672042, i32 -2145672018}
