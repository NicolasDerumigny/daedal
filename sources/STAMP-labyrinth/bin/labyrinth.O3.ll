; ModuleID = '../bin/labyrinth.ll'
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
@.str.20 = private unnamed_addr constant [42 x i8] c"    t <UINT>   Number of [t]hreads  (%i)\0A\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"    x <UINT>   [x] movement cost    (%i)\0A\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"    y <UINT>   [y] movement cost    (%i)\0A\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"    z <UINT>   [z] movement cost    (%i)\0A\00", align 1
@str = private unnamed_addr constant [44 x i8] c"    p          [p]rint routed maze  (false)\00"

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %routerArg = alloca %struct.router_solve_arg, align 8
  %startTime = alloca %struct.timeval, align 8
  %stopTime = alloca %struct.timeval, align 8
  %it = alloca %struct.list_node*, align 8
  %1 = sext i32 %argc to i64
  store i32 0, i32* @opterr, align 4
  store i64 1, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 98), align 16
  store i64 1, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 116), align 16
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* bitcast (i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 120) to <2 x i64>*), align 16
  store i64 2, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 122), align 16
  %2 = tail call i32 @getopt(i32 %argc, i8** %argv, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #5
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %._crit_edge4.i, label %.lr.ph3.i.preheader

.lr.ph3.i.preheader:                              ; preds = %0
  br label %.lr.ph3.i

.lr.ph3.i:                                        ; preds = %.lr.ph3.i.preheader, %.backedge.i
  %4 = phi i32 [ %18, %.backedge.i ], [ %2, %.lr.ph3.i.preheader ]
  %5 = sext i32 %4 to i64
  switch i64 %5, label %15 [
    i64 98, label %6
    i64 116, label %6
    i64 120, label %6
    i64 121, label %6
    i64 122, label %6
    i64 105, label %12
    i64 112, label %14
  ]

; <label>:6                                       ; preds = %.lr.ph3.i, %.lr.ph3.i, %.lr.ph3.i, %.lr.ph3.i, %.lr.ph3.i
  %7 = load i8*, i8** @optarg, align 8
  %8 = tail call i64 @atol(i8* %7) #6
  %9 = zext i32 %4 to i64
  %10 = and i64 %9, 255
  %11 = getelementptr inbounds [256 x i64], [256 x i64]* @global_params, i64 0, i64 %10
  store i64 %8, i64* %11, align 8
  br label %.backedge.i

; <label>:12                                      ; preds = %.lr.ph3.i
  %13 = load i64, i64* bitcast (i8** @optarg to i64*), align 8
  store i64 %13, i64* bitcast (i8** @global_inputFile to i64*), align 8
  br label %.backedge.i

; <label>:14                                      ; preds = %.lr.ph3.i
  store i64 1, i64* @global_doPrint, align 8
  br label %.backedge.i

; <label>:15                                      ; preds = %.lr.ph3.i
  %16 = load i32, i32* @opterr, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @opterr, align 4
  br label %.backedge.i

.backedge.i:                                      ; preds = %15, %14, %12, %6
  %18 = tail call i32 @getopt(i32 %argc, i8** %argv, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #5
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %._crit_edge4.i.loopexit, label %.lr.ph3.i

._crit_edge4.i.loopexit:                          ; preds = %.backedge.i
  br label %._crit_edge4.i

._crit_edge4.i:                                   ; preds = %._crit_edge4.i.loopexit, %0
  %20 = load i32, i32* @optind, align 4
  %21 = icmp slt i32 %20, %argc
  br i1 %21, label %.lr.ph.i.preheader, label %._crit_edge4.._crit_edge_crit_edge.i

.lr.ph.i.preheader:                               ; preds = %._crit_edge4.i
  %22 = sext i32 %20 to i64
  br label %.lr.ph.i

._crit_edge4.._crit_edge_crit_edge.i:             ; preds = %._crit_edge4.i
  %.pre.i = load i32, i32* @opterr, align 4
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.01.i = phi i64 [ %29, %.lr.ph.i ], [ %22, %.lr.ph.i.preheader ]
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = getelementptr inbounds i8*, i8** %argv, i64 %i.01.i
  %25 = load i8*, i8** %24, align 8
  %26 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i8* %25) #7
  %27 = load i32, i32* @opterr, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @opterr, align 4
  %29 = add nsw i64 %i.01.i, 1
  %exitcond.i = icmp eq i64 %29, %1
  br i1 %exitcond.i, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %.lcssa6 = phi i32 [ %28, %.lr.ph.i ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %._crit_edge4.._crit_edge_crit_edge.i
  %30 = phi i32 [ %.pre.i, %._crit_edge4.._crit_edge_crit_edge.i ], [ %.lcssa6, %._crit_edge.i.loopexit ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %parseArgs.exit, label %32

; <label>:32                                      ; preds = %._crit_edge.i
  %33 = load i8*, i8** %argv, align 8
  %34 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8* %33) #5
  %35 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i64 0, i64 0)) #5
  %36 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i32 1) #5
  %37 = load i8*, i8** @global_inputFile, align 8
  %38 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i8* %37) #5
  %puts.i.i = tail call i32 @puts(i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @str, i64 0, i64 0)) #5
  %39 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0), i32 1) #5
  %40 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0), i32 1) #5
  %41 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i64 0, i64 0), i32 1) #5
  %42 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i64 0, i64 0), i32 2) #5
  tail call void @exit(i32 1) #8
  unreachable

parseArgs.exit:                                   ; preds = %._crit_edge.i
  %43 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 116), align 16
  %44 = tail call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 0) #9, !srcloc !1
  %45 = extractvalue { i32, i32, i32, i32 } %44, 0
  %46 = icmp sgt i32 %45, 6
  br i1 %46, label %48, label %47

; <label>:47                                      ; preds = %parseArgs.exit
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 200, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

; <label>:48                                      ; preds = %parseArgs.exit
  %49 = tail call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #9, !srcloc !2
  %50 = extractvalue { i32, i32, i32, i32 } %49, 1
  %51 = and i32 %50, 2048
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

; <label>:53                                      ; preds = %48
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 200, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

; <label>:54                                      ; preds = %48
  tail call void (...) @RTM_spinlock_init() #5
  tail call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %43) #5
  tail call void @thread_startup(i64 %43) #5
  %55 = tail call %struct.maze* (...) @maze_alloc() #5
  %56 = icmp eq %struct.maze* %55, null
  br i1 %56, label %57, label %58

; <label>:57                                      ; preds = %54
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 204, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

; <label>:58                                      ; preds = %54
  %59 = load i8*, i8** @global_inputFile, align 8
  %60 = tail call i64 @maze_read(%struct.maze* nonnull %55, i8* %59) #5
  %61 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 120), align 16
  %62 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 121), align 8
  %63 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 122), align 16
  %64 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 98), align 16
  %65 = tail call %struct.router* @router_alloc(i64 %61, i64 %62, i64 %63, i64 %64) #5
  %66 = icmp eq %struct.router* %65, null
  br i1 %66, label %67, label %68

; <label>:67                                      ; preds = %58
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 210, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

; <label>:68                                      ; preds = %58
  %69 = tail call %struct.list* @list_alloc(i64 (i8*, i8*)* null) #5
  %70 = icmp eq %struct.list* %69, null
  br i1 %70, label %71, label %72

; <label>:71                                      ; preds = %68
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 212, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

; <label>:72                                      ; preds = %68
  %73 = getelementptr inbounds %struct.router_solve_arg, %struct.router_solve_arg* %routerArg, i64 0, i32 0
  store %struct.router* %65, %struct.router** %73, align 8
  %74 = getelementptr inbounds %struct.router_solve_arg, %struct.router_solve_arg* %routerArg, i64 0, i32 1
  store %struct.maze* %55, %struct.maze** %74, align 8
  %75 = getelementptr inbounds %struct.router_solve_arg, %struct.router_solve_arg* %routerArg, i64 0, i32 2
  store %struct.list* %69, %struct.list** %75, align 8
  %76 = call i32 @gettimeofday(%struct.timeval* nonnull %startTime, %struct.timezone* null) #5
  %77 = bitcast %struct.router_solve_arg* %routerArg to i8*
  call void @thread_start(void (i8*)* nonnull @router_solve, i8* %77) #5
  %78 = call i32 @gettimeofday(%struct.timeval* nonnull %stopTime, %struct.timezone* null) #5
  call void @list_iter_reset(%struct.list_node** nonnull %it, %struct.list* nonnull %69) #5
  %79 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* nonnull %69) #6
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %72
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %numPathRouted.01 = phi i64 [ %84, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %81 = call i8* @list_iter_next(%struct.list_node** nonnull %it, %struct.list* nonnull %69) #5
  %82 = bitcast i8* %81 to %struct.vector*
  %83 = call i64 @vector_getSize(%struct.vector* %82) #5
  %84 = add nsw i64 %83, %numPathRouted.01
  %85 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* nonnull %69) #6
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.lcssa = phi i64 [ %84, %.lr.ph ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %72
  %numPathRouted.0.lcssa = phi i64 [ 0, %72 ], [ %.lcssa, %._crit_edge.loopexit ]
  %87 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 %numPathRouted.0.lcssa)
  %88 = getelementptr inbounds %struct.timeval, %struct.timeval* %stopTime, i64 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sitofp i64 %89 to double
  %91 = getelementptr inbounds %struct.timeval, %struct.timeval* %stopTime, i64 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = sitofp i64 %92 to double
  %94 = fdiv double %93, 1.000000e+06
  %95 = fadd double %90, %94
  %96 = getelementptr inbounds %struct.timeval, %struct.timeval* %startTime, i64 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = sitofp i64 %97 to double
  %99 = getelementptr inbounds %struct.timeval, %struct.timeval* %startTime, i64 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = sitofp i64 %100 to double
  %102 = fdiv double %101, 1.000000e+06
  %103 = fadd double %98, %102
  %104 = fsub double %95, %103
  %105 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), double %104)
  %106 = icmp sgt i64 %numPathRouted.0.lcssa, %60
  br i1 %106, label %107, label %108

; <label>:107                                     ; preds = %._crit_edge
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 246, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

; <label>:108                                     ; preds = %._crit_edge
  %109 = load i64, i64* @global_doPrint, align 8
  %110 = call i64 @maze_checkPaths(%struct.maze* nonnull %55, %struct.list* nonnull %69, i64 %109) #5
  %111 = icmp eq i64 %110, 1
  br i1 %111, label %113, label %112

; <label>:112                                     ; preds = %108
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 248, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

; <label>:113                                     ; preds = %108
  %114 = call i32 @puts(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  call void @maze_free(%struct.maze* nonnull %55) #5
  call void @router_free(%struct.router* nonnull %65) #5
  %115 = call i64 (...) @getWorkItemCount() #5
  %116 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i64 %115)
  %117 = call i32 @fflush(%struct._IO_FILE* null)
  call void (...) @thread_shutdown() #5
  call void (...) @RTM_output_stats() #5
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

declare void @RTM_spinlock_init(...) #2

declare void @SimStartup(...) #2

declare void @thread_startup(i64) #2

declare %struct.maze* @maze_alloc(...) #2

declare i64 @maze_read(%struct.maze*, i8*) #2

declare %struct.router* @router_alloc(i64, i64, i64, i64) #2

declare %struct.list* @list_alloc(i64 (i8*, i8*)*) #2

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #3

declare void @thread_start(void (i8*)*, i8*) #2

declare void @router_solve(i8*) #2

declare void @list_iter_reset(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind readonly
declare i64 @list_iter_hasNext(%struct.list_node**, %struct.list*) #4

declare i8* @list_iter_next(%struct.list_node**, %struct.list*) #2

declare i64 @vector_getSize(%struct.vector*) #2

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #3

declare i64 @maze_checkPaths(%struct.maze*, %struct.list*, i64) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #3

declare void @maze_free(%struct.maze*) #2

declare void @router_free(%struct.router*) #2

declare i64 @getWorkItemCount(...) #2

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) #3

declare void @thread_shutdown(...) #2

declare void @RTM_output_stats(...) #2

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @atol(i8* nocapture) #4

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { cold nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 -2146008595, i32 -2146008559, i32 -2146008535}
!2 = !{i32 -2145797022, i32 -2145796986, i32 -2145796962}
