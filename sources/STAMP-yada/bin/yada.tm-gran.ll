; ModuleID = '../bin/yada.marked.ll'
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
  %8 = load %struct.heap*, %struct.heap** @global_workHeapPtr, align 8
  %9 = load %struct.mesh*, %struct.mesh** @global_meshPtr, align 8
  %10 = call %struct.region* (...) @Pregion_alloc()
  %11 = icmp ne %struct.region* %10, null
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %7
  br label %15

; <label>:13                                      ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 201, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 0
  %17 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 4
  br label %18

; <label>:18                                      ; preds = %.backedge, %15
  %totalNumAdded.0 = phi i64 [ 0, %15 ], [ %totalNumAdded.1, %.backedge ]
  %numProcess.0 = phi i64 [ 0, %15 ], [ %numProcess.1, %.backedge ]
  br label %19

; <label>:19                                      ; preds = %18
  %20 = load i32, i32* %16, align 8
  %21 = call i32 @workBegin(i32 0, i32 %20)
  store i32 %21, i32* %17, align 4
  br label %22

; <label>:22                                      ; preds = %19
  br label %23

; <label>:23                                      ; preds = %36, %22
  %tries.0 = phi i32 [ 9, %22 ], [ %29, %36 ]
  br label %24

; <label>:24                                      ; preds = %27, %23
  %25 = call i64 (...) @RTM_fallback_isLocked()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %24
  call void @llvm.x86.sse2.pause() #5
  br label %24

; <label>:28                                      ; preds = %24
  %29 = add nsw i32 %tries.0, -1
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %28
  call void (...) @RTM_fallback_lock()
  br label %42

; <label>:32                                      ; preds = %28
  %33 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0, i64 0, i64 4294967295) #5, !srcloc !1
  %34 = trunc i64 %33 to i32
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %37

; <label>:36                                      ; preds = %32
  br label %23

; <label>:37                                      ; preds = %32
  %38 = call i64 (...) @RTM_fallback_isLocked()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %._crit_edge

._crit_edge:                                      ; preds = %37
  br label %41

; <label>:40                                      ; preds = %37
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !2
  br label %41

; <label>:41                                      ; preds = %._crit_edge, %40
  br label %42

; <label>:42                                      ; preds = %41, %31
  %43 = call i8* @TMheap_remove(%struct.heap* %8)
  %44 = bitcast i8* %43 to %struct.element*
  %45 = icmp sgt i32 %29, 0
  br i1 %45, label %46, label %47

; <label>:46                                      ; preds = %42
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !srcloc !3
  br label %48

; <label>:47                                      ; preds = %42
  call void (...) @RTM_fallback_unlock()
  br label %48

; <label>:48                                      ; preds = %47, %46
  %49 = icmp eq %struct.element* %44, null
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %48
  br label %161

; <label>:51                                      ; preds = %48
  br label %52

; <label>:52                                      ; preds = %65, %51
  %tries2.0 = phi i32 [ 9, %51 ], [ %58, %65 ]
  br label %53

; <label>:53                                      ; preds = %56, %52
  %54 = call i64 (...) @RTM_fallback_isLocked()
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %53
  call void @llvm.x86.sse2.pause() #5
  br label %53

; <label>:57                                      ; preds = %53
  %58 = add nsw i32 %tries2.0, -1
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %61

; <label>:60                                      ; preds = %57
  call void (...) @RTM_fallback_lock()
  br label %71

; <label>:61                                      ; preds = %57
  %62 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 0, i64 1, i64 4294967295) #5, !srcloc !1
  %63 = trunc i64 %62 to i32
  %64 = icmp ne i32 %63, -1
  br i1 %64, label %65, label %66

; <label>:65                                      ; preds = %61
  br label %52

; <label>:66                                      ; preds = %61
  %67 = call i64 (...) @RTM_fallback_isLocked()
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %._crit_edge1

._crit_edge1:                                     ; preds = %66
  br label %70

; <label>:69                                      ; preds = %66
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !2
  br label %70

; <label>:70                                      ; preds = %._crit_edge1, %69
  br label %71

; <label>:71                                      ; preds = %70, %60
  %72 = call i64 @TMelement_isGarbage(%struct.element* %44)
  %73 = icmp sgt i32 %58, 0
  br i1 %73, label %74, label %75

; <label>:74                                      ; preds = %71
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 1) #5, !srcloc !3
  br label %76

; <label>:75                                      ; preds = %71
  call void (...) @RTM_fallback_unlock()
  br label %76

; <label>:76                                      ; preds = %75, %74
  %77 = icmp ne i64 %72, 0
  br i1 %77, label %78, label %79

; <label>:78                                      ; preds = %76
  br label %.backedge

.backedge:                                        ; preds = %78, %160
  %totalNumAdded.1 = phi i64 [ %totalNumAdded.0, %78 ], [ %133, %160 ]
  %numProcess.1 = phi i64 [ %numProcess.0, %78 ], [ %158, %160 ]
  br label %18

; <label>:79                                      ; preds = %76
  br label %80

; <label>:80                                      ; preds = %93, %79
  %tries4.0 = phi i32 [ 9, %79 ], [ %86, %93 ]
  br label %81

; <label>:81                                      ; preds = %84, %80
  %82 = call i64 (...) @RTM_fallback_isLocked()
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

; <label>:84                                      ; preds = %81
  call void @llvm.x86.sse2.pause() #5
  br label %81

; <label>:85                                      ; preds = %81
  %86 = add nsw i32 %tries4.0, -1
  %87 = icmp sle i32 %86, 0
  br i1 %87, label %88, label %89

; <label>:88                                      ; preds = %85
  call void (...) @RTM_fallback_lock()
  br label %99

; <label>:89                                      ; preds = %85
  %90 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 0, i64 2, i64 4294967295) #5, !srcloc !1
  %91 = trunc i64 %90 to i32
  %92 = icmp ne i32 %91, -1
  br i1 %92, label %93, label %94

; <label>:93                                      ; preds = %89
  br label %80

; <label>:94                                      ; preds = %89
  %95 = call i64 (...) @RTM_fallback_isLocked()
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %._crit_edge2

._crit_edge2:                                     ; preds = %94
  br label %98

; <label>:97                                      ; preds = %94
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !2
  br label %98

; <label>:98                                      ; preds = %._crit_edge2, %97
  br label %99

; <label>:99                                      ; preds = %98, %88
  call void @Pregion_clearBad(%struct.region* %10)
  %100 = call i64 @TMregion_refine(%struct.region* %10, %struct.element* %44, %struct.mesh* %9)
  %101 = icmp sgt i32 %86, 0
  br i1 %101, label %102, label %103

; <label>:102                                     ; preds = %99
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 2) #5, !srcloc !3
  br label %104

; <label>:103                                     ; preds = %99
  call void (...) @RTM_fallback_unlock()
  br label %104

; <label>:104                                     ; preds = %103, %102
  br label %105

; <label>:105                                     ; preds = %118, %104
  %tries6.0 = phi i32 [ 9, %104 ], [ %111, %118 ]
  br label %106

; <label>:106                                     ; preds = %109, %105
  %107 = call i64 (...) @RTM_fallback_isLocked()
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

; <label>:109                                     ; preds = %106
  call void @llvm.x86.sse2.pause() #5
  br label %106

; <label>:110                                     ; preds = %106
  %111 = add nsw i32 %tries6.0, -1
  %112 = icmp sle i32 %111, 0
  br i1 %112, label %113, label %114

; <label>:113                                     ; preds = %110
  call void (...) @RTM_fallback_lock()
  br label %124

; <label>:114                                     ; preds = %110
  %115 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 3, i64 0, i64 3, i64 4294967295) #5, !srcloc !1
  %116 = trunc i64 %115 to i32
  %117 = icmp ne i32 %116, -1
  br i1 %117, label %118, label %119

; <label>:118                                     ; preds = %114
  br label %105

; <label>:119                                     ; preds = %114
  %120 = call i64 (...) @RTM_fallback_isLocked()
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %._crit_edge3

._crit_edge3:                                     ; preds = %119
  br label %123

; <label>:122                                     ; preds = %119
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !2
  br label %123

; <label>:123                                     ; preds = %._crit_edge3, %122
  br label %124

; <label>:124                                     ; preds = %123, %113
  call void @TMelement_setIsReferenced(%struct.element* %44, i64 0)
  %125 = call i64 @TMelement_isGarbage(%struct.element* %44)
  %126 = icmp sgt i32 %111, 0
  br i1 %126, label %127, label %128

; <label>:127                                     ; preds = %124
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 3) #5, !srcloc !3
  br label %129

; <label>:128                                     ; preds = %124
  call void (...) @RTM_fallback_unlock()
  br label %129

; <label>:129                                     ; preds = %128, %127
  %130 = icmp ne i64 %125, 0
  br i1 %130, label %131, label %._crit_edge4

._crit_edge4:                                     ; preds = %129
  br label %132

; <label>:131                                     ; preds = %129
  br label %132

; <label>:132                                     ; preds = %._crit_edge4, %131
  %133 = add nsw i64 %totalNumAdded.0, %100
  br label %134

; <label>:134                                     ; preds = %147, %132
  %tries8.0 = phi i32 [ 9, %132 ], [ %140, %147 ]
  br label %135

; <label>:135                                     ; preds = %138, %134
  %136 = call i64 (...) @RTM_fallback_isLocked()
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

; <label>:138                                     ; preds = %135
  call void @llvm.x86.sse2.pause() #5
  br label %135

; <label>:139                                     ; preds = %135
  %140 = add nsw i32 %tries8.0, -1
  %141 = icmp sle i32 %140, 0
  br i1 %141, label %142, label %143

; <label>:142                                     ; preds = %139
  call void (...) @RTM_fallback_lock()
  br label %153

; <label>:143                                     ; preds = %139
  %144 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 4, i64 0, i64 4, i64 4294967295) #5, !srcloc !1
  %145 = trunc i64 %144 to i32
  %146 = icmp ne i32 %145, -1
  br i1 %146, label %147, label %148

; <label>:147                                     ; preds = %143
  br label %134

; <label>:148                                     ; preds = %143
  %149 = call i64 (...) @RTM_fallback_isLocked()
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %._crit_edge5

._crit_edge5:                                     ; preds = %148
  br label %152

; <label>:151                                     ; preds = %148
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !2
  br label %152

; <label>:152                                     ; preds = %._crit_edge5, %151
  br label %153

; <label>:153                                     ; preds = %152, %142
  call void @TMregion_transferBad(%struct.region* %10, %struct.heap* %8)
  %154 = icmp sgt i32 %140, 0
  br i1 %154, label %155, label %156

; <label>:155                                     ; preds = %153
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 4) #5, !srcloc !3
  br label %157

; <label>:156                                     ; preds = %153
  call void (...) @RTM_fallback_unlock()
  br label %157

; <label>:157                                     ; preds = %156, %155
  %158 = add nsw i64 %numProcess.0, 1
  br label %159

; <label>:159                                     ; preds = %157
  call void @workEnd(i32 0, i32 0)
  br label %160

; <label>:160                                     ; preds = %159
  br label %.backedge

; <label>:161                                     ; preds = %50
  br label %162

; <label>:162                                     ; preds = %175, %161
  %tries10.0 = phi i32 [ 9, %161 ], [ %168, %175 ]
  br label %163

; <label>:163                                     ; preds = %166, %162
  %164 = call i64 (...) @RTM_fallback_isLocked()
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

; <label>:166                                     ; preds = %163
  call void @llvm.x86.sse2.pause() #5
  br label %163

; <label>:167                                     ; preds = %163
  %168 = add nsw i32 %tries10.0, -1
  %169 = icmp sle i32 %168, 0
  br i1 %169, label %170, label %171

; <label>:170                                     ; preds = %167
  call void (...) @RTM_fallback_lock()
  br label %181

; <label>:171                                     ; preds = %167
  %172 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 5, i64 0, i64 5, i64 4294967295) #5, !srcloc !1
  %173 = trunc i64 %172 to i32
  %174 = icmp ne i32 %173, -1
  br i1 %174, label %175, label %176

; <label>:175                                     ; preds = %171
  br label %162

; <label>:176                                     ; preds = %171
  %177 = call i64 (...) @RTM_fallback_isLocked()
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %._crit_edge6

._crit_edge6:                                     ; preds = %176
  br label %180

; <label>:179                                     ; preds = %176
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !2
  br label %180

; <label>:180                                     ; preds = %._crit_edge6, %179
  br label %181

; <label>:181                                     ; preds = %180, %170
  %182 = load i64, i64* @global_totalNumAdded, align 8
  %183 = add nsw i64 %182, %totalNumAdded.0
  store i64 %183, i64* @global_totalNumAdded, align 8
  %184 = load i64, i64* @global_totalNumAdded, align 8
  %185 = load i64, i64* @global_numProcess, align 8
  %186 = add nsw i64 %185, %numProcess.0
  store i64 %186, i64* @global_numProcess, align 8
  %187 = load i64, i64* @global_numProcess, align 8
  %188 = icmp sgt i32 %168, 0
  br i1 %188, label %189, label %190

; <label>:189                                     ; preds = %181
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 5) #5, !srcloc !3
  br label %191

; <label>:190                                     ; preds = %181
  call void (...) @RTM_fallback_unlock()
  br label %191

; <label>:191                                     ; preds = %190, %189
  call void @Pregion_free(%struct.region* %10)
  br label %192

; <label>:192                                     ; preds = %191
  %193 = call i64 (...) @thread_getId()
  %194 = trunc i64 %193 to i32
  %195 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  call void @SimRoiEnd(i32 %194, i32 %196)
  br label %197

; <label>:197                                     ; preds = %192
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
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = sext i32 %argc to i64
  call void @parseArgs(i64 %1, i8** %argv)
  br label %2

; <label>:2                                       ; preds = %0
  %3 = call i32 @__get_cpuid_max(i32 0, i32* null)
  %4 = icmp sge i32 %3, 7
  br i1 %4, label %5, label %._crit_edge

._crit_edge:                                      ; preds = %2
  br label %7

; <label>:5                                       ; preds = %2
  br i1 true, label %6, label %._crit_edge1

._crit_edge1:                                     ; preds = %5
  br label %7

; <label>:6                                       ; preds = %5
  br label %9

; <label>:7                                       ; preds = %._crit_edge1, %._crit_edge
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 283, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %8, %6
  %10 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #8, !srcloc !4
  %11 = extractvalue { i32, i32, i32, i32 } %10, 0
  %12 = extractvalue { i32, i32, i32, i32 } %10, 1
  %13 = extractvalue { i32, i32, i32, i32 } %10, 2
  %14 = extractvalue { i32, i32, i32, i32 } %10, 3
  %15 = and i32 %12, 2048
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %._crit_edge2

._crit_edge2:                                     ; preds = %9
  br label %19

; <label>:17                                      ; preds = %9
  br i1 true, label %18, label %._crit_edge3

._crit_edge3:                                     ; preds = %17
  br label %19

; <label>:18                                      ; preds = %17
  br label %21

; <label>:19                                      ; preds = %._crit_edge3, %._crit_edge2
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 283, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %21

; <label>:21                                      ; preds = %20, %18
  call void (...) @RTM_spinlock_init()
  %22 = load i64, i64* @global_numThread, align 8
  call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %22)
  br label %23

; <label>:23                                      ; preds = %21
  %24 = load i64, i64* @global_numThread, align 8
  call void @thread_startup(i64 %24)
  %25 = call %struct.mesh* (...) @mesh_alloc()
  store %struct.mesh* %25, %struct.mesh** @global_meshPtr, align 8
  %26 = load %struct.mesh*, %struct.mesh** @global_meshPtr, align 8
  %27 = icmp ne %struct.mesh* %26, null
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %23
  br label %31

; <label>:29                                      ; preds = %23
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 287, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %31

; <label>:31                                      ; preds = %30, %28
  %32 = load double, double* @global_angleConstraint, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), double %32)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0))
  %35 = load %struct.mesh*, %struct.mesh** @global_meshPtr, align 8
  %36 = load i8*, i8** @global_inputPrefix, align 8
  %37 = call i64 @mesh_read(%struct.mesh* %35, i8* %36)
  %38 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0))
  %39 = call %struct.heap* @heap_alloc(i64 1, i64 (i8*, i8*)* @element_heapCompare)
  store %struct.heap* %39, %struct.heap** @global_workHeapPtr, align 8
  %40 = load %struct.heap*, %struct.heap** @global_workHeapPtr, align 8
  %41 = icmp ne %struct.heap* %40, null
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %31
  br label %45

; <label>:43                                      ; preds = %31
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 293, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %45

; <label>:45                                      ; preds = %44, %42
  %46 = load %struct.heap*, %struct.heap** @global_workHeapPtr, align 8
  %47 = load %struct.mesh*, %struct.mesh** @global_meshPtr, align 8
  %48 = call i64 @initializeWork(%struct.heap* %46, %struct.mesh* %47)
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i32 0, i32 0), i64 %37)
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i32 0, i32 0), i64 %48)
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0))
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %53 = call i32 @fflush(%struct._IO_FILE* %52)
  %54 = call i32 @gettimeofday(%struct.timeval* %start, %struct.timezone* null) #5
  call void @thread_start(void (i8*)* bitcast (void ()* @process to void (i8*)*), i8* null)
  %55 = call i32 @gettimeofday(%struct.timeval* %stop, %struct.timezone* null) #5
  %56 = call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0))
  %57 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sitofp i64 %58 to double
  %60 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = sitofp i64 %61 to double
  %63 = fdiv double %62, 1.000000e+06
  %64 = fadd double %59, %63
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sitofp i64 %66 to double
  %68 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sitofp i64 %69 to double
  %71 = fdiv double %70, 1.000000e+06
  %72 = fadd double %67, %71
  %73 = fsub double %64, %72
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i32 0, i32 0), double %73)
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %76 = call i32 @fflush(%struct._IO_FILE* %75)
  %77 = load i64, i64* @global_totalNumAdded, align 8
  %78 = add nsw i64 %37, %77
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0), i64 %78)
  %80 = load i64, i64* @global_numProcess, align 8
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i32 0, i32 0), i64 %80)
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %83 = call i32 @fflush(%struct._IO_FILE* %82)
  %84 = icmp ne i64 1, 0
  %85 = select i1 %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0)
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i8* %85)
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %88 = call i32 @fflush(%struct._IO_FILE* %87)
  %89 = icmp ne i64 1, 0
  br i1 %89, label %90, label %91

; <label>:90                                      ; preds = %45
  br label %93

; <label>:91                                      ; preds = %45
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 341, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %93

; <label>:93                                      ; preds = %92, %90
  br label %94

; <label>:94                                      ; preds = %93
  %95 = call i64 (...) @getWorkItemCount()
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i64 %95)
  %97 = call i32 @fflush(%struct._IO_FILE* null)
  br label %98

; <label>:98                                      ; preds = %94
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

; <label>:2                                       ; preds = %19, %0
  %3 = call i32 @getopt(i32 %1, i8** %argv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0)) #5
  %4 = sext i32 %3 to i64
  %5 = icmp ne i64 %4, -1
  br i1 %5, label %6, label %20

; <label>:6                                       ; preds = %2
  switch i64 %4, label %._crit_edge [
    i64 97, label %7
    i64 105, label %10
    i64 116, label %12
    i64 63, label %15
  ]

._crit_edge:                                      ; preds = %6
  br label %16

; <label>:7                                       ; preds = %6
  %8 = load i8*, i8** @optarg, align 8
  %9 = call double @atof(i8* %8) #9
  store double %9, double* @global_angleConstraint, align 8
  br label %19

; <label>:10                                      ; preds = %6
  %11 = load i8*, i8** @optarg, align 8
  store i8* %11, i8** @global_inputPrefix, align 8
  br label %19

; <label>:12                                      ; preds = %6
  %13 = load i8*, i8** @optarg, align 8
  %14 = call i64 @atol(i8* %13) #9
  store i64 %14, i64* @global_numThread, align 8
  br label %19

; <label>:15                                      ; preds = %6
  br label %16

; <label>:16                                      ; preds = %._crit_edge, %15
  %17 = load i32, i32* @opterr, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @opterr, align 4
  br label %19

; <label>:19                                      ; preds = %16, %12, %10, %7
  br label %2

; <label>:20                                      ; preds = %2
  %.lcssa = phi i64 [ %4, %2 ]
  %21 = load i32, i32* @optind, align 4
  %22 = sext i32 %21 to i64
  br label %23

; <label>:23                                      ; preds = %32, %20
  %i.0 = phi i64 [ %22, %20 ], [ %33, %32 ]
  %24 = icmp slt i64 %i.0, %argc
  br i1 %24, label %25, label %34

; <label>:25                                      ; preds = %23
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = getelementptr inbounds i8*, i8** %argv, i64 %i.0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0), i8* %28)
  %30 = load i32, i32* @opterr, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @opterr, align 4
  br label %32

; <label>:32                                      ; preds = %25
  %33 = add nsw i64 %i.0, 1
  br label %23

; <label>:34                                      ; preds = %23
  %35 = load i32, i32* @opterr, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %._crit_edge1

._crit_edge1:                                     ; preds = %34
  br label %40

; <label>:37                                      ; preds = %34
  %38 = getelementptr inbounds i8*, i8** %argv, i64 0
  %39 = load i8*, i8** %38, align 8
  call void @displayUsage(i8* %39)
  br label %40

; <label>:40                                      ; preds = %._crit_edge1, %37
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__get_cpuid_max(i32 %__level, i32* %__sig) #3 {
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

; <label>:8                                       ; preds = %._crit_edge, %7
  ret i32 %2
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
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call %struct.random* (...) @random_alloc()
  call void @random_seed(%struct.random* %1, i64 0)
  call void @mesh_shuffleBad(%struct.mesh* %meshPtr, %struct.random* %1)
  call void @random_free(%struct.random* %1)
  br label %2

; <label>:2                                       ; preds = %14, %0
  %numBad.0 = phi i64 [ 0, %0 ], [ %7, %14 ]
  %3 = call %struct.element* @mesh_getBad(%struct.mesh* %meshPtr)
  %4 = icmp ne %struct.element* %3, null
  br i1 %4, label %6, label %5

; <label>:5                                       ; preds = %2
  br label %15

; <label>:6                                       ; preds = %2
  %7 = add nsw i64 %numBad.0, 1
  %8 = bitcast %struct.element* %3 to i8*
  %9 = call i64 @heap_insert(%struct.heap* %workHeapPtr, i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %6
  br label %14

; <label>:12                                      ; preds = %6
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 177, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.initializeWork, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:14                                      ; preds = %11
  call void @element_setIsReferenced(%struct.element* %3, i64 1)
  br label %2

; <label>:15                                      ; preds = %5
  ret i64 %numBad.0
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
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0), i8* %appName)
  %2 = call i32 @puts(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.26, i32 0, i32 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i32 0, i32 0), double 2.000000e+01)
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.29, i32 0, i32 0), i64 1)
  call void @profiler_print_stats()
  call void @exit(i32 1) #7
  unreachable
                                                  ; No predecessors!
  ret void
}

declare void @profiler_print_stats()

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
