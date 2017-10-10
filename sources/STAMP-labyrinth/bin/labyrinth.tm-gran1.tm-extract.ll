; ModuleID = '../bin/labyrinth.tm-gran.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.router_solve_arg = type { %struct.router*, %struct.maze*, %struct.list* }
%struct.router = type { i64, i64, i64, i64 }
%struct.maze = type { %struct.grid*, %struct.queue*, %struct.vector*, %struct.vector*, %struct.vector* }
%struct.grid = type { i64, i64, i64, i64*, i64* }
%struct.queue = type opaque
%struct.vector = type { i64, i64, i8** }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.list_node = type { i8*, %struct.list_node* }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@global_doPrint = global i64 0, align 8
@global_inputFile = global i8* null, align 8
@global_params = common global [256 x i64] zeroinitializer, align 16
@.str = private unnamed_addr constant [19 x i8] c"RTM is not present\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"__get_cpuid_max(0, NULL) >= 7 && \22RTM is not present\22\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"labyrinth.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"!!(b & CPUID_RTM) && \22RTM is not present\22\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"mazePtr\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"routerPtr\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"pathVectorListPtr\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Paths routed    = %li\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Elapsed time    = %f seconds\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"numPathRouted <= numPathToRoute\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"status == TRUE\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Verification passed.\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"Work item count: %li\0A\00", align 1
@opterr = external global i32, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"b:i:pt:x:y:z:\00", align 1
@optarg = external global i8*, align 8
@optind = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.14 = private unnamed_addr constant [25 x i8] c"Non-option argument: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"Usage: %s [options]\0A\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"\0AOptions:                            (defaults)\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"    b <INT>    [b]end cost          (%i)\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"    i <FILE>   [i]nput file name    (%s)\0A\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"    p          [p]rint routed maze  (false)\0A\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"    t <UINT>   Number of [t]hreads  (%i)\0A\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"    x <UINT>   [x] movement cost    (%i)\0A\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"    y <UINT>   [y] movement cost    (%i)\0A\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"    z <UINT>   [z] movement cost    (%i)\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %routerArg = alloca %struct.router_solve_arg, align 8
  %startTime = alloca %struct.timeval, align 8
  %stopTime = alloca %struct.timeval, align 8
  %it = alloca %struct.list_node*, align 8
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
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 200, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %10

; <label>:10                                      ; preds = %9, %7
  %11 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #7, !srcloc !1
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
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 200, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %22

; <label>:22                                      ; preds = %21, %19
  call void (...) @RTM_spinlock_init()
  call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %2)
  br label %23

; <label>:23                                      ; preds = %22
  call void @thread_startup(i64 %2)
  %24 = call %struct.maze* (...) @maze_alloc()
  %25 = icmp ne %struct.maze* %24, null
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %23
  br label %29

; <label>:27                                      ; preds = %23
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 204, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %29

; <label>:29                                      ; preds = %28, %26
  %30 = load i8*, i8** @global_inputFile, align 8
  %31 = call i64 @maze_read(%struct.maze* %24, i8* %30)
  %32 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 120), align 16
  %33 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 121), align 8
  %34 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 122), align 16
  %35 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 98), align 16
  %36 = call %struct.router* @router_alloc(i64 %32, i64 %33, i64 %34, i64 %35)
  %37 = icmp ne %struct.router* %36, null
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %29
  br label %41

; <label>:39                                      ; preds = %29
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 210, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %41

; <label>:41                                      ; preds = %40, %38
  %42 = call %struct.list* @list_alloc(i64 (i8*, i8*)* null)
  %43 = icmp ne %struct.list* %42, null
  br i1 %43, label %44, label %45

; <label>:44                                      ; preds = %41
  br label %47

; <label>:45                                      ; preds = %41
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 212, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %47

; <label>:47                                      ; preds = %46, %44
  %48 = getelementptr inbounds %struct.router_solve_arg, %struct.router_solve_arg* %routerArg, i32 0, i32 0
  store %struct.router* %36, %struct.router** %48, align 8
  %49 = getelementptr inbounds %struct.router_solve_arg, %struct.router_solve_arg* %routerArg, i32 0, i32 1
  store %struct.maze* %24, %struct.maze** %49, align 8
  %50 = getelementptr inbounds %struct.router_solve_arg, %struct.router_solve_arg* %routerArg, i32 0, i32 2
  store %struct.list* %42, %struct.list** %50, align 8
  %51 = call i32 @gettimeofday(%struct.timeval* %startTime, %struct.timezone* null) #8
  %52 = bitcast %struct.router_solve_arg* %routerArg to i8*
  call void @thread_start(void (i8*)* @router_solve, i8* %52)
  %53 = call i32 @gettimeofday(%struct.timeval* %stopTime, %struct.timezone* null) #8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %42)
  br label %54

; <label>:54                                      ; preds = %57, %47
  %numPathRouted.0 = phi i64 [ 0, %47 ], [ %61, %57 ]
  %55 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %42) #9
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

; <label>:57                                      ; preds = %54
  %58 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %42)
  %59 = bitcast i8* %58 to %struct.vector*
  %60 = call i64 @vector_getSize(%struct.vector* %59)
  %61 = add nsw i64 %numPathRouted.0, %60
  br label %54

; <label>:62                                      ; preds = %54
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i64 %numPathRouted.0)
  %64 = getelementptr inbounds %struct.timeval, %struct.timeval* %stopTime, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sitofp i64 %65 to double
  %67 = getelementptr inbounds %struct.timeval, %struct.timeval* %stopTime, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = sitofp i64 %68 to double
  %70 = fdiv double %69, 1.000000e+06
  %71 = fadd double %66, %70
  %72 = getelementptr inbounds %struct.timeval, %struct.timeval* %startTime, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sitofp i64 %73 to double
  %75 = getelementptr inbounds %struct.timeval, %struct.timeval* %startTime, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = sitofp i64 %76 to double
  %78 = fdiv double %77, 1.000000e+06
  %79 = fadd double %74, %78
  %80 = fsub double %71, %79
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0), double %80)
  %82 = icmp sle i64 %numPathRouted.0, %31
  br i1 %82, label %83, label %84

; <label>:83                                      ; preds = %62
  br label %86

; <label>:84                                      ; preds = %62
  call void @__assert_fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 246, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %86

; <label>:86                                      ; preds = %85, %83
  %87 = load i64, i64* @global_doPrint, align 8
  %88 = call i64 @maze_checkPaths(%struct.maze* %24, %struct.list* %42, i64 %87)
  %89 = icmp eq i64 %88, 1
  br i1 %89, label %90, label %91

; <label>:90                                      ; preds = %86
  br label %93

; <label>:91                                      ; preds = %86
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 248, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %93

; <label>:93                                      ; preds = %92, %90
  %94 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0))
  call void @maze_free(%struct.maze* %24)
  call void @router_free(%struct.router* %36)
  br label %95

; <label>:95                                      ; preds = %93
  %96 = call i64 (...) @getWorkItemCount()
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i64 %96)
  %98 = call i32 @fflush(%struct._IO_FILE* null)
  br label %99

; <label>:99                                      ; preds = %95
  call void (...) @thread_shutdown()
  call void (...) @RTM_output_stats()
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @parseArgs(i64 %argc, i8** %argv) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i32 0, i32* @opterr, align 4
  call void @setDefaultParams()
  %1 = trunc i64 %argc to i32
  br label %2

; <label>:2                                       ; preds = %20, %0
  %3 = call i32 @getopt(i32 %1, i8** %argv, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0)) #8
  %4 = sext i32 %3 to i64
  %5 = icmp ne i64 %4, -1
  br i1 %5, label %6, label %21

; <label>:6                                       ; preds = %2
  switch i64 %4, label %._crit_edge [
    i64 98, label %._crit_edge1
    i64 116, label %._crit_edge2
    i64 120, label %._crit_edge3
    i64 121, label %._crit_edge4
    i64 122, label %._crit_edge5
    i64 105, label %13
    i64 112, label %15
    i64 63, label %16
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
  br label %17

; <label>:7                                       ; preds = %._crit_edge1, %._crit_edge2, %._crit_edge3, %._crit_edge4, %._crit_edge5
  %8 = load i8*, i8** @optarg, align 8
  %9 = call i64 @atol(i8* %8) #9
  %10 = trunc i64 %4 to i8
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds [256 x i64], [256 x i64]* @global_params, i64 0, i64 %11
  store i64 %9, i64* %12, align 8
  br label %20

; <label>:13                                      ; preds = %6
  %14 = load i8*, i8** @optarg, align 8
  store i8* %14, i8** @global_inputFile, align 8
  br label %20

; <label>:15                                      ; preds = %6
  store i64 1, i64* @global_doPrint, align 8
  br label %20

; <label>:16                                      ; preds = %6
  br label %17

; <label>:17                                      ; preds = %16, %._crit_edge
  %18 = load i32, i32* @opterr, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @opterr, align 4
  br label %20

; <label>:20                                      ; preds = %17, %15, %13, %7
  br label %2

; <label>:21                                      ; preds = %2
  %.lcssa = phi i64 [ %4, %2 ]
  %22 = load i32, i32* @optind, align 4
  %23 = sext i32 %22 to i64
  br label %24

; <label>:24                                      ; preds = %33, %21
  %i.0 = phi i64 [ %23, %21 ], [ %34, %33 ]
  %25 = icmp slt i64 %i.0, %argc
  br i1 %25, label %26, label %35

; <label>:26                                      ; preds = %24
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = getelementptr inbounds i8*, i8** %argv, i64 %i.0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0), i8* %29)
  %31 = load i32, i32* @opterr, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @opterr, align 4
  br label %33

; <label>:33                                      ; preds = %26
  %34 = add nsw i64 %i.0, 1
  br label %24

; <label>:35                                      ; preds = %24
  %36 = load i32, i32* @opterr, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %._crit_edge6

._crit_edge6:                                     ; preds = %35
  br label %41

; <label>:38                                      ; preds = %35
  %39 = getelementptr inbounds i8*, i8** %argv, i64 0
  %40 = load i8*, i8** %39, align 8
  call void @displayUsage(i8* %40)
  br label %41

; <label>:41                                      ; preds = %38, %._crit_edge6
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__get_cpuid_max(i32 %__level, i32* %__sig) #1 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %__level) #7, !srcloc !2
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

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

declare void @RTM_spinlock_init(...) #3

declare void @SimStartup(...) #3

declare void @thread_startup(i64) #3

declare %struct.maze* @maze_alloc(...) #3

declare i64 @maze_read(%struct.maze*, i8*) #3

declare %struct.router* @router_alloc(i64, i64, i64, i64) #3

declare %struct.list* @list_alloc(i64 (i8*, i8*)*) #3

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #4

declare void @thread_start(void (i8*)*, i8*) #3

declare void @router_solve(i8*) #3

declare void @list_iter_reset(%struct.list_node**, %struct.list*) #3

; Function Attrs: nounwind readonly
declare i64 @list_iter_hasNext(%struct.list_node**, %struct.list*) #5

declare i8* @list_iter_next(%struct.list_node**, %struct.list*) #3

declare i64 @vector_getSize(%struct.vector*) #3

declare i32 @printf(i8*, ...) #3

declare i64 @maze_checkPaths(%struct.maze*, %struct.list*, i64) #3

declare i32 @puts(i8*) #3

declare void @maze_free(%struct.maze*) #3

declare void @router_free(%struct.router*) #3

declare i64 @getWorkItemCount(...) #3

declare i32 @fflush(%struct._IO_FILE*) #3

declare void @thread_shutdown(...) #3

declare void @RTM_output_stats(...) #3

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #4

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #5

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @displayUsage(i8* %appName) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i8* %appName)
  %2 = call i32 @puts(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i32 0, i32 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i32 0, i32 0), i32 1)
  %4 = load i8*, i8** @global_inputFile, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i32 0, i32 0), i8* %4)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i32 0, i32 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i32 0, i32 0), i32 1)
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i32 0, i32 0), i32 1)
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i32 0, i32 0), i32 1)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i32 0, i32 0), i32 2)
  call void @profiler_print_stats()
  call void @exit(i32 1) #6
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @setDefaultParams() #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i64 1, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 98), align 16
  store i64 1, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 116), align 16
  store i64 1, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 120), align 16
  store i64 1, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 121), align 8
  store i64 2, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 122), align 16
  ret void
}

declare void @profiler_print_stats()

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 -2145797022, i32 -2145796986, i32 -2145796962}
!2 = !{i32 -2146008595, i32 -2146008559, i32 -2146008535}
