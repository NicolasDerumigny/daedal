; ModuleID = 'labyrinth.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.maze = type { %struct.grid*, %struct.queue*, %struct.vector*, %struct.vector*, %struct.vector* }
%struct.grid = type { i64, i64, i64, i64*, i64* }
%struct.queue = type opaque
%struct.vector = type { i64, i64, i8** }
%struct.router = type { i64, i64, i64, i64 }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.list_node = type { i8*, %struct.list_node* }
%struct.router_solve_arg = type { %struct.router*, %struct.maze*, %struct.list* }
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
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %numThread = alloca i64, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %mazePtr = alloca %struct.maze*, align 8
  %numPathToRoute = alloca i64, align 8
  %routerPtr = alloca %struct.router*, align 8
  %pathVectorListPtr = alloca %struct.list*, align 8
  %routerArg = alloca %struct.router_solve_arg, align 8
  %startTime = alloca %struct.timeval, align 8
  %stopTime = alloca %struct.timeval, align 8
  %numPathRouted = alloca i64, align 8
  %it = alloca %struct.list_node*, align 8
  %pathVectorPtr = alloca %struct.vector*, align 8
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
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 200, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #7, !srcloc !1
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
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 200, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
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
  %32 = call %struct.maze* (...) @maze_alloc()
  store %struct.maze* %32, %struct.maze** %mazePtr, align 8
  %33 = load %struct.maze*, %struct.maze** %mazePtr, align 8
  %34 = icmp ne %struct.maze* %33, null
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %30
  br label %38

; <label>:36                                      ; preds = %30
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 204, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %38

; <label>:38                                      ; preds = %37, %35
  %39 = load %struct.maze*, %struct.maze** %mazePtr, align 8
  %40 = load i8*, i8** @global_inputFile, align 8
  %41 = call i64 @maze_read(%struct.maze* %39, i8* %40)
  store i64 %41, i64* %numPathToRoute, align 8
  %42 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 120), align 16
  %43 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 121), align 8
  %44 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 122), align 16
  %45 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 98), align 16
  %46 = call %struct.router* @router_alloc(i64 %42, i64 %43, i64 %44, i64 %45)
  store %struct.router* %46, %struct.router** %routerPtr, align 8
  %47 = load %struct.router*, %struct.router** %routerPtr, align 8
  %48 = icmp ne %struct.router* %47, null
  br i1 %48, label %49, label %50

; <label>:49                                      ; preds = %38
  br label %52

; <label>:50                                      ; preds = %38
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 210, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %52

; <label>:52                                      ; preds = %51, %49
  %53 = call %struct.list* @list_alloc(i64 (i8*, i8*)* null)
  store %struct.list* %53, %struct.list** %pathVectorListPtr, align 8
  %54 = load %struct.list*, %struct.list** %pathVectorListPtr, align 8
  %55 = icmp ne %struct.list* %54, null
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %52
  br label %59

; <label>:57                                      ; preds = %52
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 212, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %59

; <label>:59                                      ; preds = %58, %56
  %60 = getelementptr inbounds %struct.router_solve_arg, %struct.router_solve_arg* %routerArg, i32 0, i32 0
  %61 = load %struct.router*, %struct.router** %routerPtr, align 8
  store %struct.router* %61, %struct.router** %60, align 8
  %62 = getelementptr inbounds %struct.router_solve_arg, %struct.router_solve_arg* %routerArg, i32 0, i32 1
  %63 = load %struct.maze*, %struct.maze** %mazePtr, align 8
  store %struct.maze* %63, %struct.maze** %62, align 8
  %64 = getelementptr inbounds %struct.router_solve_arg, %struct.router_solve_arg* %routerArg, i32 0, i32 2
  %65 = load %struct.list*, %struct.list** %pathVectorListPtr, align 8
  store %struct.list* %65, %struct.list** %64, align 8
  %66 = call i32 @gettimeofday(%struct.timeval* %startTime, %struct.timezone* null) #8
  %67 = bitcast %struct.router_solve_arg* %routerArg to i8*
  call void @thread_start(void (i8*)* @router_solve, i8* %67)
  %68 = call i32 @gettimeofday(%struct.timeval* %stopTime, %struct.timezone* null) #8
  store i64 0, i64* %numPathRouted, align 8
  %69 = load %struct.list*, %struct.list** %pathVectorListPtr, align 8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %69)
  br label %70

; <label>:70                                      ; preds = %74, %59
  %71 = load %struct.list*, %struct.list** %pathVectorListPtr, align 8
  %72 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %71) #9
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

; <label>:74                                      ; preds = %70
  %75 = load %struct.list*, %struct.list** %pathVectorListPtr, align 8
  %76 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %75)
  %77 = bitcast i8* %76 to %struct.vector*
  store %struct.vector* %77, %struct.vector** %pathVectorPtr, align 8
  %78 = load %struct.vector*, %struct.vector** %pathVectorPtr, align 8
  %79 = call i64 @vector_getSize(%struct.vector* %78)
  %80 = load i64, i64* %numPathRouted, align 8
  %81 = add nsw i64 %80, %79
  store i64 %81, i64* %numPathRouted, align 8
  br label %70

; <label>:82                                      ; preds = %70
  %83 = load i64, i64* %numPathRouted, align 8
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i64 %83)
  %85 = getelementptr inbounds %struct.timeval, %struct.timeval* %stopTime, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = sitofp i64 %86 to double
  %88 = getelementptr inbounds %struct.timeval, %struct.timeval* %stopTime, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = sitofp i64 %89 to double
  %91 = fdiv double %90, 1.000000e+06
  %92 = fadd double %87, %91
  %93 = getelementptr inbounds %struct.timeval, %struct.timeval* %startTime, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = sitofp i64 %94 to double
  %96 = getelementptr inbounds %struct.timeval, %struct.timeval* %startTime, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = sitofp i64 %97 to double
  %99 = fdiv double %98, 1.000000e+06
  %100 = fadd double %95, %99
  %101 = fsub double %92, %100
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0), double %101)
  %103 = load i64, i64* %numPathRouted, align 8
  %104 = load i64, i64* %numPathToRoute, align 8
  %105 = icmp sle i64 %103, %104
  br i1 %105, label %106, label %107

; <label>:106                                     ; preds = %82
  br label %109

; <label>:107                                     ; preds = %82
  call void @__assert_fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 246, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %109

; <label>:109                                     ; preds = %108, %106
  %110 = load %struct.maze*, %struct.maze** %mazePtr, align 8
  %111 = load %struct.list*, %struct.list** %pathVectorListPtr, align 8
  %112 = load i64, i64* @global_doPrint, align 8
  %113 = call i64 @maze_checkPaths(%struct.maze* %110, %struct.list* %111, i64 %112)
  store i64 %113, i64* %status, align 8
  %114 = load i64, i64* %status, align 8
  %115 = icmp eq i64 %114, 1
  br i1 %115, label %116, label %117

; <label>:116                                     ; preds = %109
  br label %119

; <label>:117                                     ; preds = %109
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 248, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %119

; <label>:119                                     ; preds = %118, %116
  %120 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0))
  %121 = load %struct.maze*, %struct.maze** %mazePtr, align 8
  call void @maze_free(%struct.maze* %121)
  %122 = load %struct.router*, %struct.router** %routerPtr, align 8
  call void @router_free(%struct.router* %122)
  br label %123

; <label>:123                                     ; preds = %119
  %124 = call i64 (...) @getWorkItemCount()
  store i64 %124, i64* %count, align 8
  %125 = load i64, i64* %count, align 8
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i64 %125)
  %127 = call i32 @fflush(%struct._IO_FILE* null)
  br label %128

; <label>:128                                     ; preds = %123
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
  call void @setDefaultParams()
  br label %3

; <label>:3                                       ; preds = %26, %0
  %4 = load i64, i64* %1, align 8
  %5 = trunc i64 %4 to i32
  %6 = load i8**, i8*** %2, align 8
  %7 = call i32 @getopt(i32 %5, i8** %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0)) #8
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %opt, align 8
  %9 = icmp ne i64 %8, -1
  br i1 %9, label %10, label %27

; <label>:10                                      ; preds = %3
  %11 = load i64, i64* %opt, align 8
  switch i64 %11, label %23 [
    i64 98, label %12
    i64 116, label %12
    i64 120, label %12
    i64 121, label %12
    i64 122, label %12
    i64 105, label %19
    i64 112, label %21
    i64 63, label %22
  ]

; <label>:12                                      ; preds = %10, %10, %10, %10, %10
  %13 = load i8*, i8** @optarg, align 8
  %14 = call i64 @atol(i8* %13) #9
  %15 = load i64, i64* %opt, align 8
  %16 = trunc i64 %15 to i8
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds [256 x i64], [256 x i64]* @global_params, i64 0, i64 %17
  store i64 %14, i64* %18, align 8
  br label %26

; <label>:19                                      ; preds = %10
  %20 = load i8*, i8** @optarg, align 8
  store i8* %20, i8** @global_inputFile, align 8
  br label %26

; <label>:21                                      ; preds = %10
  store i64 1, i64* @global_doPrint, align 8
  br label %26

; <label>:22                                      ; preds = %10
  br label %23

; <label>:23                                      ; preds = %10, %22
  %24 = load i32, i32* @opterr, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @opterr, align 4
  br label %26

; <label>:26                                      ; preds = %23, %21, %19, %12
  br label %3

; <label>:27                                      ; preds = %3
  %28 = load i32, i32* @optind, align 4
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %i, align 8
  br label %30

; <label>:30                                      ; preds = %43, %27
  %31 = load i64, i64* %i, align 8
  %32 = load i64, i64* %1, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %46

; <label>:34                                      ; preds = %30
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = load i64, i64* %i, align 8
  %37 = load i8**, i8*** %2, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 %36
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0), i8* %39)
  %41 = load i32, i32* @opterr, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @opterr, align 4
  br label %43

; <label>:43                                      ; preds = %34
  %44 = load i64, i64* %i, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %i, align 8
  br label %30

; <label>:46                                      ; preds = %30
  %47 = load i32, i32* @opterr, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

; <label>:49                                      ; preds = %46
  %50 = load i8**, i8*** %2, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  %52 = load i8*, i8** %51, align 8
  call void @displayUsage(i8* %52)
  br label %53

; <label>:53                                      ; preds = %49, %46
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__get_cpuid_max(i32 %__level, i32* %__sig) #1 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %__eax = alloca i32, align 4
  %__ebx = alloca i32, align 4
  %__ecx = alloca i32, align 4
  %__edx = alloca i32, align 4
  store i32 %__level, i32* %1, align 4
  store i32* %__sig, i32** %2, align 8
  %3 = load i32, i32* %1, align 4
  %4 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %3) #7, !srcloc !2
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
  %1 = alloca i8*, align 8
  store i8* %appName, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i8* %2)
  %4 = call i32 @puts(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i32 0, i32 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i32 0, i32 0), i32 1)
  %6 = load i8*, i8** @global_inputFile, align 8
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i32 0, i32 0), i8* %6)
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i32 0, i32 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i32 0, i32 0), i32 1)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i32 0, i32 0), i32 1)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i32 0, i32 0), i32 1)
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i32 0, i32 0), i32 2)
  call void @exit(i32 1) #6
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @setDefaultParams() #0 {
  store i64 1, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 98), align 16
  store i64 1, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 116), align 16
  store i64 1, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 120), align 16
  store i64 1, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 121), align 8
  store i64 2, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 122), align 16
  ret void
}

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
