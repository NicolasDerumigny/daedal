; ModuleID = '../bin/vacation.tm-gran.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.manager = type { %struct.rbtree*, %struct.rbtree*, %struct.rbtree*, %struct.rbtree* }
%struct.rbtree = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeval = type { i64, i64 }
%struct.client = type { i64, %struct.manager*, %struct.random*, i64, i64, i64, i64 }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }
%struct.timezone = type { i32, i32 }

@global_params = common global [256 x double] zeroinitializer, align 16
@checkTables.manager_add = private unnamed_addr constant [3 x i64 (%struct.manager*, i64, i64, i64)*] [i64 (%struct.manager*, i64, i64, i64)* @manager_addCar_seq, i64 (%struct.manager*, i64, i64, i64)* @manager_addFlight_seq, i64 (%struct.manager*, i64, i64, i64)* @manager_addRoom_seq], align 16
@.str = private unnamed_addr constant [20 x i8] c"Checking tables... \00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"!MAP_FIND(customerTablePtr, i)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"vacation.c\00", align 1
@__PRETTY_FUNCTION__.checkTables = private unnamed_addr constant [30 x i8] c"void checkTables(manager_t *)\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"manager_add[t](managerPtr, i, 0, 0)\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"!MAP_REMOVE(tablePtr, i)\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"done.\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"managerPtr != NULL\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"clients != NULL\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"RTM is not present\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"__get_cpuid_max(0, NULL) >= 7 && \22RTM is not present\22\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"!!(b & CPUID_RTM) && \22RTM is not present\22\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Running clients... \00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Time = %0.6lf\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Deallocating memory... \00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Work item count: %li\0A\00", align 1
@opterr = external global i32, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"c:n:q:r:t:u:\00", align 1
@optarg = external global i8*, align 8
@optind = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [25 x i8] c"Non-option argument: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"Usage: %s [options]\0A\00", align 1
@.str.18 = private unnamed_addr constant [66 x i8] c"\0AOptions:                                             (defaults)\0A\00", align 1
@.str.19 = private unnamed_addr constant [59 x i8] c"    c <UINT>   Number of [c]lients                   (%i)\0A\00", align 1
@.str.20 = private unnamed_addr constant [59 x i8] c"    n <UINT>   [n]umber of user queries/transaction  (%i)\0A\00", align 1
@.str.21 = private unnamed_addr constant [59 x i8] c"    q <UINT>   Percentage of relations [q]ueried     (%i)\0A\00", align 1
@.str.22 = private unnamed_addr constant [59 x i8] c"    r <UINT>   Number of possible [r]elations        (%i)\0A\00", align 1
@.str.23 = private unnamed_addr constant [59 x i8] c"    t <UINT>   Number of [t]ransactions              (%i)\0A\00", align 1
@.str.24 = private unnamed_addr constant [59 x i8] c"    u <UINT>   Percentage of [u]ser transactions     (%i)\0A\00", align 1
@initializeManager.manager_add = private unnamed_addr constant [4 x i64 (%struct.manager*, i64, i64, i64)*] [i64 (%struct.manager*, i64, i64, i64)* @manager_addCar_seq, i64 (%struct.manager*, i64, i64, i64)* @manager_addFlight_seq, i64 (%struct.manager*, i64, i64, i64)* @manager_addRoom_seq, i64 (%struct.manager*, i64, i64, i64)* @addCustomer], align 16
@.str.25 = private unnamed_addr constant [25 x i8] c"Initializing manager... \00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"randomPtr != NULL\00", align 1
@__PRETTY_FUNCTION__.initializeManager = private unnamed_addr constant [31 x i8] c"manager_t *initializeManager()\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"Initializing clients... \00", align 1
@__PRETTY_FUNCTION__.initializeClients = private unnamed_addr constant [42 x i8] c"client_t **initializeClients(manager_t *)\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"clients[i] != NULL\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"    Transactions        = %li\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"    Clients             = %li\0A\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"    Transactions/client = %li\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"    Queries/transaction = %li\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"    Relations           = %li\0A\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"    Query percent       = %li\0A\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"    Query range         = %li\0A\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"    Percent user        = %li\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @checkTables(%struct.manager* %managerPtr) #0 {
  %tables = alloca [3 x %struct.rbtree*], align 16
  %manager_add = alloca [3 x i64 (%struct.manager*, i64, i64, i64)*], align 16
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 114), align 16
  %2 = fptosi double %1 to i64
  %3 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 3
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  %5 = getelementptr inbounds [3 x %struct.rbtree*], [3 x %struct.rbtree*]* %tables, i64 0, i64 0
  %6 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 0
  %7 = load %struct.rbtree*, %struct.rbtree** %6, align 8
  store %struct.rbtree* %7, %struct.rbtree** %5, align 8
  %8 = getelementptr inbounds %struct.rbtree*, %struct.rbtree** %5, i64 1
  %9 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 2
  %10 = load %struct.rbtree*, %struct.rbtree** %9, align 8
  store %struct.rbtree* %10, %struct.rbtree** %8, align 8
  %11 = getelementptr inbounds %struct.rbtree*, %struct.rbtree** %8, i64 1
  %12 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i32 0, i32 1
  %13 = load %struct.rbtree*, %struct.rbtree** %12, align 8
  store %struct.rbtree* %13, %struct.rbtree** %11, align 8
  %14 = bitcast [3 x i64 (%struct.manager*, i64, i64, i64)*]* %manager_add to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* bitcast ([3 x i64 (%struct.manager*, i64, i64, i64)*]* @checkTables.manager_add to i8*), i64 24, i32 16, i1 false)
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = call i32 @fflush(%struct._IO_FILE* %16)
  %18 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 113), align 8
  %19 = fptosi double %18 to i64
  %20 = sitofp i64 %19 to double
  %21 = fdiv double %20, 1.000000e+02
  %22 = sitofp i64 %2 to double
  %23 = fmul double %21, %22
  %24 = fadd double %23, 5.000000e-01
  %25 = fptosi double %24 to i64
  %26 = add nsw i64 %25, 1
  br label %27

; <label>:27                                      ; preds = %47, %0
  %i.0 = phi i64 [ 1, %0 ], [ %48, %47 ]
  %28 = icmp sle i64 %i.0, %26
  br i1 %28, label %29, label %49

; <label>:29                                      ; preds = %27
  %30 = inttoptr i64 %i.0 to i8*
  %31 = call i8* @rbtree_get(%struct.rbtree* %4, i8* %30)
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %._crit_edge

._crit_edge:                                      ; preds = %29
  br label %46

; <label>:33                                      ; preds = %29
  %34 = inttoptr i64 %i.0 to i8*
  %35 = call i64 @rbtree_delete(%struct.rbtree* %4, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %._crit_edge1

._crit_edge1:                                     ; preds = %33
  br label %45

; <label>:37                                      ; preds = %33
  %38 = inttoptr i64 %i.0 to i8*
  %39 = call i8* @rbtree_get(%struct.rbtree* %4, i8* %38)
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

; <label>:41                                      ; preds = %37
  br label %44

; <label>:42                                      ; preds = %37
  call void @__assert_fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 366, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkTables, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:44                                      ; preds = %41
  br label %45

; <label>:45                                      ; preds = %44, %._crit_edge1
  br label %46

; <label>:46                                      ; preds = %45, %._crit_edge
  br label %47

; <label>:47                                      ; preds = %46
  %48 = add nsw i64 %i.0, 1
  br label %27

; <label>:49                                      ; preds = %27
  br label %50

; <label>:50                                      ; preds = %86, %49
  %t.0 = phi i64 [ 0, %49 ], [ %87, %86 ]
  %51 = icmp slt i64 %t.0, 3
  br i1 %51, label %52, label %88

; <label>:52                                      ; preds = %50
  %53 = getelementptr inbounds [3 x %struct.rbtree*], [3 x %struct.rbtree*]* %tables, i64 0, i64 %t.0
  %54 = load %struct.rbtree*, %struct.rbtree** %53, align 8
  %55 = getelementptr inbounds [3 x i64 (%struct.manager*, i64, i64, i64)*], [3 x i64 (%struct.manager*, i64, i64, i64)*]* %manager_add, i64 0, i64 %t.0
  br label %56

; <label>:56                                      ; preds = %83, %52
  %i.1 = phi i64 [ 1, %52 ], [ %84, %83 ]
  %57 = icmp sle i64 %i.1, %2
  br i1 %57, label %58, label %85

; <label>:58                                      ; preds = %56
  %59 = inttoptr i64 %i.1 to i8*
  %60 = call i8* @rbtree_get(%struct.rbtree* %54, i8* %59)
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %._crit_edge2

._crit_edge2:                                     ; preds = %58
  br label %82

; <label>:62                                      ; preds = %58
  %63 = load i64 (%struct.manager*, i64, i64, i64)*, i64 (%struct.manager*, i64, i64, i64)** %55, align 8
  %64 = call i64 %63(%struct.manager* %managerPtr, i64 %i.1, i64 0, i64 0)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

; <label>:66                                      ; preds = %62
  br label %69

; <label>:67                                      ; preds = %62
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 376, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkTables, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:69                                      ; preds = %66
  %70 = inttoptr i64 %i.1 to i8*
  %71 = call i64 @rbtree_delete(%struct.rbtree* %54, i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %._crit_edge3

._crit_edge3:                                     ; preds = %69
  br label %81

; <label>:73                                      ; preds = %69
  %74 = inttoptr i64 %i.1 to i8*
  %75 = call i64 @rbtree_delete(%struct.rbtree* %54, i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %78, label %77

; <label>:77                                      ; preds = %73
  br label %80

; <label>:78                                      ; preds = %73
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 378, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkTables, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:80                                      ; preds = %77
  br label %81

; <label>:81                                      ; preds = %80, %._crit_edge3
  br label %82

; <label>:82                                      ; preds = %81, %._crit_edge2
  br label %83

; <label>:83                                      ; preds = %82
  %84 = add nsw i64 %i.1, 1
  br label %56

; <label>:85                                      ; preds = %56
  br label %86

; <label>:86                                      ; preds = %85
  %87 = add nsw i64 %t.0, 1
  br label %50

; <label>:88                                      ; preds = %50
  %89 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %91 = call i32 @fflush(%struct._IO_FILE* %90)
  ret void
}

declare i64 @manager_addCar_seq(%struct.manager*, i64, i64, i64) #1

declare i64 @manager_addFlight_seq(%struct.manager*, i64, i64, i64) #1

declare i64 @manager_addRoom_seq(%struct.manager*, i64, i64, i64) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @printf(i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare i8* @rbtree_get(%struct.rbtree*, i8*) #1

declare i64 @rbtree_delete(%struct.rbtree*, i8*) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare i32 @puts(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %start = alloca %struct.timeval, align 8
  %stop = alloca %struct.timeval, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = sext i32 %argc to i64
  call void @parseArgs(i64 %1, i8** %argv)
  %2 = call %struct.manager* @initializeManager()
  %3 = icmp ne %struct.manager* %2, null
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  br label %7

; <label>:5                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 423, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %7

; <label>:7                                       ; preds = %6, %4
  %8 = call %struct.client** @initializeClients(%struct.manager* %2)
  %9 = icmp ne %struct.client** %8, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7
  br label %13

; <label>:11                                      ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 425, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %12, %10
  %14 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 99), align 8
  %15 = fptosi double %14 to i64
  br label %16

; <label>:16                                      ; preds = %13
  %17 = call i32 @__get_cpuid_max(i32 0, i32* null)
  %18 = icmp sge i32 %17, 7
  br i1 %18, label %19, label %._crit_edge

._crit_edge:                                      ; preds = %16
  br label %21

; <label>:19                                      ; preds = %16
  br i1 true, label %20, label %._crit_edge1

._crit_edge1:                                     ; preds = %19
  br label %21

; <label>:20                                      ; preds = %19
  br label %23

; <label>:21                                      ; preds = %._crit_edge1, %._crit_edge
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 427, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %23

; <label>:23                                      ; preds = %22, %20
  %24 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #8, !srcloc !1
  %25 = extractvalue { i32, i32, i32, i32 } %24, 0
  %26 = extractvalue { i32, i32, i32, i32 } %24, 1
  %27 = extractvalue { i32, i32, i32, i32 } %24, 2
  %28 = extractvalue { i32, i32, i32, i32 } %24, 3
  %29 = and i32 %26, 2048
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %._crit_edge2

._crit_edge2:                                     ; preds = %23
  br label %33

; <label>:31                                      ; preds = %23
  br i1 true, label %32, label %._crit_edge3

._crit_edge3:                                     ; preds = %31
  br label %33

; <label>:32                                      ; preds = %31
  br label %35

; <label>:33                                      ; preds = %._crit_edge3, %._crit_edge2
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 427, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %35

; <label>:35                                      ; preds = %34, %32
  call void (...) @RTM_spinlock_init()
  call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %15)
  br label %36

; <label>:36                                      ; preds = %35
  call void @thread_startup(i64 %15)
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0))
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %39 = call i32 @fflush(%struct._IO_FILE* %38)
  %40 = call i32 @gettimeofday(%struct.timeval* %start, %struct.timezone* null) #9
  %41 = bitcast %struct.client** %8 to i8*
  call void @thread_start(void (i8*)* @client_run, i8* %41)
  %42 = call i32 @gettimeofday(%struct.timeval* %stop, %struct.timezone* null) #9
  %43 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sitofp i64 %45 to double
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = sitofp i64 %48 to double
  %50 = fdiv double %49, 1.000000e+06
  %51 = fadd double %46, %50
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sitofp i64 %53 to double
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sitofp i64 %56 to double
  %58 = fdiv double %57, 1.000000e+06
  %59 = fadd double %54, %58
  %60 = fsub double %51, %59
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), double %60)
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %63 = call i32 @fflush(%struct._IO_FILE* %62)
  call void @checkTables(%struct.manager* %2)
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0))
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %66 = call i32 @fflush(%struct._IO_FILE* %65)
  call void @freeClients(%struct.client** %8)
  call void @manager_free(%struct.manager* %2)
  %67 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %69 = call i32 @fflush(%struct._IO_FILE* %68)
  br label %70

; <label>:70                                      ; preds = %36
  %71 = call i64 (...) @getWorkItemCount()
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i64 %71)
  %73 = call i32 @fflush(%struct._IO_FILE* null)
  br label %74

; <label>:74                                      ; preds = %70
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

; <label>:2                                       ; preds = %18, %0
  %3 = call i32 @getopt(i32 %1, i8** %argv, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0)) #9
  %4 = sext i32 %3 to i64
  %5 = icmp ne i64 %4, -1
  br i1 %5, label %6, label %19

; <label>:6                                       ; preds = %2
  switch i64 %4, label %._crit_edge [
    i64 99, label %._crit_edge1
    i64 110, label %._crit_edge2
    i64 113, label %._crit_edge3
    i64 114, label %._crit_edge4
    i64 116, label %._crit_edge5
    i64 117, label %._crit_edge6
    i64 63, label %14
  ]

._crit_edge6:                                     ; preds = %6
  br label %7

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
  br label %15

; <label>:7                                       ; preds = %._crit_edge1, %._crit_edge2, %._crit_edge3, %._crit_edge4, %._crit_edge5, %._crit_edge6
  %8 = load i8*, i8** @optarg, align 8
  %9 = call i64 @atol(i8* %8) #10
  %10 = sitofp i64 %9 to double
  %11 = trunc i64 %4 to i8
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [256 x double], [256 x double]* @global_params, i64 0, i64 %12
  store double %10, double* %13, align 8
  br label %18

; <label>:14                                      ; preds = %6
  br label %15

; <label>:15                                      ; preds = %14, %._crit_edge
  %16 = load i32, i32* @opterr, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @opterr, align 4
  br label %18

; <label>:18                                      ; preds = %15, %7
  br label %2

; <label>:19                                      ; preds = %2
  %.lcssa = phi i64 [ %4, %2 ]
  %20 = load i32, i32* @optind, align 4
  %21 = sext i32 %20 to i64
  br label %22

; <label>:22                                      ; preds = %31, %19
  %i.0 = phi i64 [ %21, %19 ], [ %32, %31 ]
  %23 = icmp slt i64 %i.0, %argc
  br i1 %23, label %24, label %33

; <label>:24                                      ; preds = %22
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = getelementptr inbounds i8*, i8** %argv, i64 %i.0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i8* %27)
  %29 = load i32, i32* @opterr, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @opterr, align 4
  br label %31

; <label>:31                                      ; preds = %24
  %32 = add nsw i64 %i.0, 1
  br label %22

; <label>:33                                      ; preds = %22
  %34 = load i32, i32* @opterr, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %._crit_edge7

._crit_edge7:                                     ; preds = %33
  br label %39

; <label>:36                                      ; preds = %33
  %37 = getelementptr inbounds i8*, i8** %argv, i64 0
  %38 = load i8*, i8** %37, align 8
  call void @displayUsage(i8* %38)
  br label %39

; <label>:39                                      ; preds = %36, %._crit_edge7
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.client** @initializeClients(%struct.manager* %managerPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 99), align 8
  %2 = fptosi double %1 to i64
  %3 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 116), align 16
  %4 = fptosi double %3 to i64
  %5 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 110), align 16
  %6 = fptosi double %5 to i64
  %7 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 114), align 16
  %8 = fptosi double %7 to i64
  %9 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 113), align 8
  %10 = fptosi double %9 to i64
  %11 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 117), align 8
  %12 = fptosi double %11 to i64
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %15 = call i32 @fflush(%struct._IO_FILE* %14)
  %16 = call %struct.random* (...) @random_alloc()
  %17 = icmp ne %struct.random* %16, null
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %0
  br label %21

; <label>:19                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 297, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.initializeClients, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %21

; <label>:21                                      ; preds = %20, %18
  %22 = mul i64 %2, 8
  %23 = call noalias i8* @malloc(i64 %22) #9
  %24 = bitcast i8* %23 to %struct.client**
  %25 = icmp ne %struct.client** %24, null
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %21
  br label %29

; <label>:27                                      ; preds = %21
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 300, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.initializeClients, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %29

; <label>:29                                      ; preds = %28, %26
  %30 = sitofp i64 %4 to double
  %31 = sitofp i64 %2 to double
  %32 = fdiv double %30, %31
  %33 = fadd double %32, 5.000000e-01
  %34 = fptosi double %33 to i64
  %35 = sitofp i64 %10 to double
  %36 = fdiv double %35, 1.000000e+02
  %37 = sitofp i64 %8 to double
  %38 = fmul double %36, %37
  %39 = fadd double %38, 5.000000e-01
  %40 = fptosi double %39 to i64
  br label %41

; <label>:41                                      ; preds = %53, %29
  %i.0 = phi i64 [ 0, %29 ], [ %54, %53 ]
  %42 = icmp slt i64 %i.0, %2
  br i1 %42, label %43, label %55

; <label>:43                                      ; preds = %41
  %44 = call %struct.client* @client_alloc(i64 %i.0, %struct.manager* %managerPtr, i64 %34, i64 %6, i64 %40, i64 %12)
  %45 = getelementptr inbounds %struct.client*, %struct.client** %24, i64 %i.0
  store %struct.client* %44, %struct.client** %45, align 8
  %46 = getelementptr inbounds %struct.client*, %struct.client** %24, i64 %i.0
  %47 = load %struct.client*, %struct.client** %46, align 8
  %48 = icmp ne %struct.client* %47, null
  br i1 %48, label %49, label %50

; <label>:49                                      ; preds = %43
  br label %52

; <label>:50                                      ; preds = %43
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 311, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.initializeClients, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:52                                      ; preds = %49
  br label %53

; <label>:53                                      ; preds = %52
  %54 = add nsw i64 %i.0, 1
  br label %41

; <label>:55                                      ; preds = %41
  %56 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0), i64 %4)
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i32 0, i32 0), i64 %2)
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i32 0, i32 0), i64 %34)
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i32 0, i32 0), i64 %6)
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i32 0, i32 0), i64 %8)
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i32 0, i32 0), i64 %10)
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i32 0, i32 0), i64 %40)
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i32 0, i32 0), i64 %12)
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %66 = call i32 @fflush(%struct._IO_FILE* %65)
  call void @random_free(%struct.random* %16)
  ret %struct.client** %24
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__get_cpuid_max(i32 %__level, i32* %__sig) #4 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %__level) #8, !srcloc !2
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

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #5

declare void @thread_start(void (i8*)*, i8*) #1

declare void @client_run(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @freeClients(%struct.client** %clients) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 99), align 8
  %2 = fptosi double %1 to i64
  br label %3

; <label>:3                                       ; preds = %8, %0
  %i.0 = phi i64 [ 0, %0 ], [ %9, %8 ]
  %4 = icmp slt i64 %i.0, %2
  br i1 %4, label %5, label %10

; <label>:5                                       ; preds = %3
  %6 = getelementptr inbounds %struct.client*, %struct.client** %clients, i64 %i.0
  %7 = load %struct.client*, %struct.client** %6, align 8
  call void @client_free(%struct.client* %7)
  br label %8

; <label>:8                                       ; preds = %5
  %9 = add nsw i64 %i.0, 1
  br label %3

; <label>:10                                      ; preds = %3
  ret void
}

declare void @manager_free(%struct.manager*) #1

declare i64 @getWorkItemCount(...) #1

declare void @thread_shutdown(...) #1

declare void @RTM_output_stats(...) #1

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #5

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #6

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @displayUsage(i8* %appName) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0), i8* %appName)
  %2 = call i32 @puts(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.18, i32 0, i32 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.19, i32 0, i32 0), i32 1)
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.20, i32 0, i32 0), i32 10)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i32 0, i32 0), i32 90)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.22, i32 0, i32 0), i32 65536)
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.23, i32 0, i32 0), i32 67108864)
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.24, i32 0, i32 0), i32 80)
  call void @profiler_print_stats()
  call void @exit(i32 1) #7
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @setDefaultParams() #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store double 1.000000e+00, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 99), align 8
  store double 1.000000e+01, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 110), align 16
  store double 9.000000e+01, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 113), align 8
  store double 6.553600e+04, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 114), align 16
  store double 0x4190000000000000, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 116), align 16
  store double 8.000000e+01, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 117), align 8
  ret void
}

declare void @profiler_print_stats()

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define internal %struct.manager* @initializeManager() #0 {
  %manager_add = alloca [4 x i64 (%struct.manager*, i64, i64, i64)*], align 16
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = bitcast [4 x i64 (%struct.manager*, i64, i64, i64)*]* %manager_add to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([4 x i64 (%struct.manager*, i64, i64, i64)*]* @initializeManager.manager_add to i8*), i64 32, i32 16, i1 false)
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %4 = call i32 @fflush(%struct._IO_FILE* %3)
  %5 = call %struct.random* (...) @random_alloc()
  %6 = icmp ne %struct.random* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %10

; <label>:8                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 230, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.initializeManager, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %10

; <label>:10                                      ; preds = %9, %7
  %11 = call %struct.manager* (...) @manager_alloc()
  %12 = icmp ne %struct.manager* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %10
  br label %16

; <label>:14                                      ; preds = %10
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 233, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.initializeManager, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 114), align 16
  %18 = fptosi double %17 to i64
  %19 = mul i64 %18, 8
  %20 = call noalias i8* @malloc(i64 %19) #9
  %21 = bitcast i8* %20 to i64*
  br label %22

; <label>:22                                      ; preds = %27, %16
  %i.0 = phi i64 [ 0, %16 ], [ %28, %27 ]
  %23 = icmp slt i64 %i.0, %18
  br i1 %23, label %24, label %29

; <label>:24                                      ; preds = %22
  %25 = add nsw i64 %i.0, 1
  %26 = getelementptr inbounds i64, i64* %21, i64 %i.0
  store i64 %25, i64* %26, align 8
  br label %27

; <label>:27                                      ; preds = %24
  %28 = add nsw i64 %i.0, 1
  br label %22

; <label>:29                                      ; preds = %22
  br label %30

; <label>:30                                      ; preds = %73, %29
  %t.0 = phi i64 [ 0, %29 ], [ %74, %73 ]
  %31 = icmp slt i64 %t.0, 4
  br i1 %31, label %32, label %75

; <label>:32                                      ; preds = %30
  br label %33

; <label>:33                                      ; preds = %46, %32
  %i.1 = phi i64 [ 0, %32 ], [ %47, %46 ]
  %34 = icmp slt i64 %i.1, %18
  br i1 %34, label %35, label %48

; <label>:35                                      ; preds = %33
  %36 = call i64 @random_generate(%struct.random* %5)
  %37 = urem i64 %36, %18
  %38 = call i64 @random_generate(%struct.random* %5)
  %39 = urem i64 %38, %18
  %40 = getelementptr inbounds i64, i64* %21, i64 %37
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i64, i64* %21, i64 %39
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i64, i64* %21, i64 %37
  store i64 %43, i64* %44, align 8
  %45 = getelementptr inbounds i64, i64* %21, i64 %39
  store i64 %41, i64* %45, align 8
  br label %46

; <label>:46                                      ; preds = %35
  %47 = add nsw i64 %i.1, 1
  br label %33

; <label>:48                                      ; preds = %33
  %49 = getelementptr inbounds [4 x i64 (%struct.manager*, i64, i64, i64)*], [4 x i64 (%struct.manager*, i64, i64, i64)*]* %manager_add, i64 0, i64 %t.0
  br label %50

; <label>:50                                      ; preds = %70, %48
  %i.2 = phi i64 [ 0, %48 ], [ %71, %70 ]
  %51 = icmp slt i64 %i.2, %18
  br i1 %51, label %52, label %72

; <label>:52                                      ; preds = %50
  %53 = getelementptr inbounds i64, i64* %21, i64 %i.2
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @random_generate(%struct.random* %5)
  %56 = urem i64 %55, 5
  %57 = add i64 %56, 1
  %58 = mul i64 %57, 100
  %59 = call i64 @random_generate(%struct.random* %5)
  %60 = urem i64 %59, 5
  %61 = mul i64 %60, 10
  %62 = add i64 %61, 50
  %63 = load i64 (%struct.manager*, i64, i64, i64)*, i64 (%struct.manager*, i64, i64, i64)** %49, align 8
  %64 = call i64 %63(%struct.manager* %11, i64 %54, i64 %58, i64 %62)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

; <label>:66                                      ; preds = %52
  br label %69

; <label>:67                                      ; preds = %52
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 259, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.initializeManager, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:69                                      ; preds = %66
  br label %70

; <label>:70                                      ; preds = %69
  %71 = add nsw i64 %i.2, 1
  br label %50

; <label>:72                                      ; preds = %50
  br label %73

; <label>:73                                      ; preds = %72
  %74 = add nsw i64 %t.0, 1
  br label %30

; <label>:75                                      ; preds = %30
  %76 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %78 = call i32 @fflush(%struct._IO_FILE* %77)
  call void @random_free(%struct.random* %5)
  %79 = bitcast i64* %21 to i8*
  call void @free(i8* %79) #9
  ret %struct.manager* %11
}

; Function Attrs: nounwind uwtable
define internal i64 @addCustomer(%struct.manager* %managerPtr, i64 %id, i64 %num, i64 %price) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i64 @manager_addCustomer_seq(%struct.manager* %managerPtr, i64 %id)
  ret i64 %1
}

declare %struct.random* @random_alloc(...) #1

declare %struct.manager* @manager_alloc(...) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

declare i64 @random_generate(%struct.random*) #1

declare void @random_free(%struct.random*) #1

; Function Attrs: nounwind
declare void @free(i8*) #5

declare i64 @manager_addCustomer_seq(%struct.manager*, i64) #1

declare %struct.client* @client_alloc(i64, %struct.manager*, i64, i64, i64, i64) #1

declare void @client_free(%struct.client*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 -2145704887, i32 -2145704851, i32 -2145704827}
!2 = !{i32 -2145976018, i32 -2145975982, i32 -2145975958}
