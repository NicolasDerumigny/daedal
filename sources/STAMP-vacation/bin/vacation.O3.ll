; ModuleID = '../bin/vacation.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.manager = type { %struct.rbtree*, %struct.rbtree*, %struct.rbtree*, %struct.rbtree* }
%struct.rbtree = type opaque
%struct.timeval = type { i64, i64 }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }
%struct.client = type { i64, %struct.manager*, %struct.random*, i64, i64, i64, i64 }
%struct.timezone = type { i32, i32 }

@global_params = common global [256 x double] zeroinitializer, align 16
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
  %1 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 114), align 16
  %2 = fptosi double %1 to i64
  %3 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 3
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  %5 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 0
  %6 = load %struct.rbtree*, %struct.rbtree** %5, align 8
  %7 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 2
  %8 = load %struct.rbtree*, %struct.rbtree** %7, align 8
  %9 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 1
  %10 = load %struct.rbtree*, %struct.rbtree** %9, align 8
  %11 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %13 = tail call i32 @fflush(%struct._IO_FILE* %12)
  %14 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 113), align 8
  %15 = fptosi double %14 to i64
  %16 = sitofp i64 %15 to double
  %17 = fdiv double %16, 1.000000e+02
  %18 = sitofp i64 %2 to double
  %19 = fmul double %18, %17
  %20 = fadd double %19, 5.000000e-01
  %21 = fptosi double %20 to i64
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %.preheader, label %.lr.ph5.preheader

.lr.ph5.preheader:                                ; preds = %0
  br label %.lr.ph5

.preheader.loopexit:                              ; preds = %34
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %0
  %23 = icmp slt i64 %2, 1
  br i1 %23, label %.us-lcssa7.us, label %.preheader.split.preheader.preheader

.preheader.split.preheader.preheader:             ; preds = %.preheader
  br label %.preheader.split.preheader

.lr.ph5:                                          ; preds = %.lr.ph5.preheader, %34
  %i.03 = phi i64 [ %35, %34 ], [ 1, %.lr.ph5.preheader ]
  %24 = inttoptr i64 %i.03 to i8*
  %25 = tail call i8* @rbtree_get(%struct.rbtree* %4, i8* %24) #5
  %26 = icmp eq i8* %25, null
  br i1 %26, label %34, label %27

; <label>:27                                      ; preds = %.lr.ph5
  %28 = tail call i64 @rbtree_delete(%struct.rbtree* %4, i8* %24) #5
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %34, label %30

; <label>:30                                      ; preds = %27
  %31 = tail call i8* @rbtree_get(%struct.rbtree* %4, i8* %24) #5
  %32 = icmp eq i8* %31, null
  br i1 %32, label %34, label %33

; <label>:33                                      ; preds = %30
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 366, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkTables, i64 0, i64 0)) #6
  unreachable

; <label>:34                                      ; preds = %30, %27, %.lr.ph5
  %35 = add nuw nsw i64 %i.03, 1
  %36 = icmp sgt i64 %i.03, %21
  br i1 %36, label %.preheader.loopexit, label %.lr.ph5

.preheader.split.preheader:                       ; preds = %.preheader.split.preheader.preheader, %49
  %i.11 = phi i64 [ %50, %49 ], [ 1, %.preheader.split.preheader.preheader ]
  %37 = inttoptr i64 %i.11 to i8*
  %38 = tail call i8* @rbtree_get(%struct.rbtree* %6, i8* %37) #5
  %39 = icmp eq i8* %38, null
  br i1 %39, label %49, label %40

; <label>:40                                      ; preds = %.preheader.split.preheader
  %41 = tail call i64 @manager_addCar_seq(%struct.manager* %managerPtr, i64 %i.11, i64 0, i64 0) #5
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %.us-lcssa.loopexit31, label %43

.us-lcssa.loopexit:                               ; preds = %73
  br label %.us-lcssa

.us-lcssa.loopexit29:                             ; preds = %58
  br label %.us-lcssa

.us-lcssa.loopexit31:                             ; preds = %40
  br label %.us-lcssa

.us-lcssa:                                        ; preds = %.us-lcssa.loopexit31, %.us-lcssa.loopexit29, %.us-lcssa.loopexit
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 376, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkTables, i64 0, i64 0)) #6
  unreachable

; <label>:43                                      ; preds = %40
  %44 = tail call i64 @rbtree_delete(%struct.rbtree* %6, i8* %37) #5
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %49, label %46

; <label>:46                                      ; preds = %43
  %47 = tail call i64 @rbtree_delete(%struct.rbtree* %6, i8* %37) #5
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %.us-lcssa6.loopexit32

.us-lcssa6.loopexit:                              ; preds = %79
  br label %.us-lcssa6

.us-lcssa6.loopexit30:                            ; preds = %64
  br label %.us-lcssa6

.us-lcssa6.loopexit32:                            ; preds = %46
  br label %.us-lcssa6

.us-lcssa6:                                       ; preds = %.us-lcssa6.loopexit32, %.us-lcssa6.loopexit30, %.us-lcssa6.loopexit
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 378, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkTables, i64 0, i64 0)) #6
  unreachable

; <label>:49                                      ; preds = %46, %43, %.preheader.split.preheader
  %50 = add nuw nsw i64 %i.11, 1
  %51 = icmp slt i64 %i.11, %2
  br i1 %51, label %.preheader.split.preheader, label %._crit_edge.preheader

._crit_edge.preheader:                            ; preds = %49
  br label %._crit_edge

.us-lcssa7.us.loopexit:                           ; preds = %82
  br label %.us-lcssa7.us

.us-lcssa7.us:                                    ; preds = %.us-lcssa7.us.loopexit, %.preheader
  %52 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %54 = tail call i32 @fflush(%struct._IO_FILE* %53)
  ret void

._crit_edge:                                      ; preds = %._crit_edge.preheader, %67
  %i.11.1 = phi i64 [ %68, %67 ], [ 1, %._crit_edge.preheader ]
  %55 = inttoptr i64 %i.11.1 to i8*
  %56 = tail call i8* @rbtree_get(%struct.rbtree* %8, i8* %55) #5
  %57 = icmp eq i8* %56, null
  br i1 %57, label %67, label %58

; <label>:58                                      ; preds = %._crit_edge
  %59 = tail call i64 @manager_addFlight_seq(%struct.manager* %managerPtr, i64 %i.11.1, i64 0, i64 0) #5
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %.us-lcssa.loopexit29, label %61

; <label>:61                                      ; preds = %58
  %62 = tail call i64 @rbtree_delete(%struct.rbtree* %8, i8* %55) #5
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %67, label %64

; <label>:64                                      ; preds = %61
  %65 = tail call i64 @rbtree_delete(%struct.rbtree* %8, i8* %55) #5
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %.us-lcssa6.loopexit30

; <label>:67                                      ; preds = %64, %61, %._crit_edge
  %68 = add nuw nsw i64 %i.11.1, 1
  %69 = icmp slt i64 %i.11.1, %2
  br i1 %69, label %._crit_edge, label %._crit_edge.1.preheader

._crit_edge.1.preheader:                          ; preds = %67
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %._crit_edge.1.preheader, %82
  %i.11.2 = phi i64 [ %83, %82 ], [ 1, %._crit_edge.1.preheader ]
  %70 = inttoptr i64 %i.11.2 to i8*
  %71 = tail call i8* @rbtree_get(%struct.rbtree* %10, i8* %70) #5
  %72 = icmp eq i8* %71, null
  br i1 %72, label %82, label %73

; <label>:73                                      ; preds = %._crit_edge.1
  %74 = tail call i64 @manager_addRoom_seq(%struct.manager* %managerPtr, i64 %i.11.2, i64 0, i64 0) #5
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %.us-lcssa.loopexit, label %76

; <label>:76                                      ; preds = %73
  %77 = tail call i64 @rbtree_delete(%struct.rbtree* %10, i8* %70) #5
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %82, label %79

; <label>:79                                      ; preds = %76
  %80 = tail call i64 @rbtree_delete(%struct.rbtree* %10, i8* %70) #5
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %.us-lcssa6.loopexit

; <label>:82                                      ; preds = %79, %76, %._crit_edge.1
  %83 = add nuw nsw i64 %i.11.2, 1
  %84 = icmp slt i64 %i.11.2, %2
  br i1 %84, label %._crit_edge.1, label %.us-lcssa7.us.loopexit
}

declare i64 @manager_addCar_seq(%struct.manager*, i64, i64, i64) #1

declare i64 @manager_addFlight_seq(%struct.manager*, i64, i64, i64) #1

declare i64 @manager_addRoom_seq(%struct.manager*, i64, i64, i64) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

declare i8* @rbtree_get(%struct.rbtree*, i8*) #1

declare i64 @rbtree_delete(%struct.rbtree*, i8*) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #2

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %start = alloca %struct.timeval, align 8
  %stop = alloca %struct.timeval, align 8
  %1 = sext i32 %argc to i64
  store i32 0, i32* @opterr, align 4
  store double 1.000000e+00, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 99), align 8
  store double 1.000000e+01, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 110), align 16
  store <2 x double> <double 9.000000e+01, double 6.553600e+04>, <2 x double>* bitcast (double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 113) to <2 x double>*), align 8
  store <2 x double> <double 0x4190000000000000, double 8.000000e+01>, <2 x double>* bitcast (double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 116) to <2 x double>*), align 16
  %2 = tail call i32 @getopt(i32 %argc, i8** %argv, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0)) #5
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %._crit_edge4.i, label %.lr.ph3.i.preheader

.lr.ph3.i.preheader:                              ; preds = %0
  br label %.lr.ph3.i

.lr.ph3.i:                                        ; preds = %.lr.ph3.i.preheader, %.backedge.i
  %4 = phi i32 [ %16, %.backedge.i ], [ %2, %.lr.ph3.i.preheader ]
  %5 = sext i32 %4 to i64
  switch i64 %5, label %13 [
    i64 99, label %6
    i64 110, label %6
    i64 113, label %6
    i64 114, label %6
    i64 116, label %6
    i64 117, label %6
  ]

; <label>:6                                       ; preds = %.lr.ph3.i, %.lr.ph3.i, %.lr.ph3.i, %.lr.ph3.i, %.lr.ph3.i, %.lr.ph3.i
  %7 = load i8*, i8** @optarg, align 8
  %8 = tail call i64 @atol(i8* %7) #7
  %9 = sitofp i64 %8 to double
  %10 = zext i32 %4 to i64
  %11 = and i64 %10, 255
  %12 = getelementptr inbounds [256 x double], [256 x double]* @global_params, i64 0, i64 %11
  store double %9, double* %12, align 8
  br label %.backedge.i

; <label>:13                                      ; preds = %.lr.ph3.i
  %14 = load i32, i32* @opterr, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @opterr, align 4
  br label %.backedge.i

.backedge.i:                                      ; preds = %13, %6
  %16 = tail call i32 @getopt(i32 %argc, i8** %argv, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0)) #5
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %._crit_edge4.i.loopexit, label %.lr.ph3.i

._crit_edge4.i.loopexit:                          ; preds = %.backedge.i
  br label %._crit_edge4.i

._crit_edge4.i:                                   ; preds = %._crit_edge4.i.loopexit, %0
  %18 = load i32, i32* @optind, align 4
  %19 = icmp slt i32 %18, %argc
  br i1 %19, label %.lr.ph.i.preheader, label %._crit_edge4.._crit_edge_crit_edge.i

.lr.ph.i.preheader:                               ; preds = %._crit_edge4.i
  %20 = sext i32 %18 to i64
  br label %.lr.ph.i

._crit_edge4.._crit_edge_crit_edge.i:             ; preds = %._crit_edge4.i
  %.pre.i = load i32, i32* @opterr, align 4
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.01.i = phi i64 [ %27, %.lr.ph.i ], [ %20, %.lr.ph.i.preheader ]
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = getelementptr inbounds i8*, i8** %argv, i64 %i.01.i
  %23 = load i8*, i8** %22, align 8
  %24 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i8* %23) #8
  %25 = load i32, i32* @opterr, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @opterr, align 4
  %27 = add nsw i64 %i.01.i, 1
  %exitcond.i = icmp eq i64 %27, %1
  br i1 %exitcond.i, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %.lcssa = phi i32 [ %26, %.lr.ph.i ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %._crit_edge4.._crit_edge_crit_edge.i
  %28 = phi i32 [ %.pre.i, %._crit_edge4.._crit_edge_crit_edge.i ], [ %.lcssa, %._crit_edge.i.loopexit ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %parseArgs.exit, label %30

; <label>:30                                      ; preds = %._crit_edge.i
  %31 = load i8*, i8** %argv, align 8
  %32 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i8* %31) #5
  %33 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([66 x i8], [66 x i8]* @.str.18, i64 0, i64 0)) #5
  %34 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.19, i64 0, i64 0), i32 1) #5
  %35 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.20, i64 0, i64 0), i32 10) #5
  %36 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i64 0, i64 0), i32 90) #5
  %37 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.22, i64 0, i64 0), i32 65536) #5
  %38 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.23, i64 0, i64 0), i32 67108864) #5
  %39 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.24, i64 0, i64 0), i32 80) #5
  tail call void @exit(i32 1) #6
  unreachable

parseArgs.exit:                                   ; preds = %._crit_edge.i
  %40 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0)) #5
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %42 = tail call i32 @fflush(%struct._IO_FILE* %41) #5
  %43 = tail call %struct.random* (...) @random_alloc() #5
  %44 = icmp eq %struct.random* %43, null
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %parseArgs.exit
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 230, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.initializeManager, i64 0, i64 0)) #6
  unreachable

; <label>:46                                      ; preds = %parseArgs.exit
  %47 = tail call %struct.manager* (...) @manager_alloc() #5
  %48 = icmp eq %struct.manager* %47, null
  br i1 %48, label %49, label %50

; <label>:49                                      ; preds = %46
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 233, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.initializeManager, i64 0, i64 0)) #6
  unreachable

; <label>:50                                      ; preds = %46
  %51 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 114), align 16
  %52 = fptosi double %51 to i64
  %53 = shl i64 %52, 3
  %54 = tail call noalias i8* @malloc(i64 %53) #5
  %55 = bitcast i8* %54 to i64*
  %56 = icmp sgt i64 %52, 0
  br i1 %56, label %.lr.ph9.i.preheader, label %.loopexit

.lr.ph9.i.preheader:                              ; preds = %50
  %min.iters.check = icmp ult i64 %52, 4
  br i1 %min.iters.check, label %.lr.ph9.i.preheader13, label %min.iters.checked

.lr.ph9.i.preheader13:                            ; preds = %middle.block, %min.iters.checked, %.lr.ph9.i.preheader
  %i.07.i.ph = phi i64 [ 0, %min.iters.checked ], [ 0, %.lr.ph9.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph9.i

min.iters.checked:                                ; preds = %.lr.ph9.i.preheader
  %n.vec = and i64 %52, -4
  %cmp.zero = icmp eq i64 %n.vec, 0
  br i1 %cmp.zero, label %.lr.ph9.i.preheader13, label %vector.body.preheader

vector.body.preheader:                            ; preds = %min.iters.checked
  %57 = add i64 %52, -4
  %58 = lshr i64 %57, 2
  %59 = and i64 %58, 1
  %lcmp.mod = icmp eq i64 %59, 0
  br i1 %lcmp.mod, label %vector.body.prol, label %vector.body.preheader.split

vector.body.prol:                                 ; preds = %vector.body.preheader
  %60 = bitcast i8* %54 to <2 x i64>*
  store <2 x i64> <i64 1, i64 2>, <2 x i64>* %60, align 8
  %61 = getelementptr i8, i8* %54, i64 16
  %62 = bitcast i8* %61 to <2 x i64>*
  store <2 x i64> <i64 3, i64 4>, <2 x i64>* %62, align 8
  br label %vector.body.preheader.split

vector.body.preheader.split:                      ; preds = %vector.body.prol, %vector.body.preheader
  %index.unr = phi i64 [ 0, %vector.body.preheader ], [ 4, %vector.body.prol ]
  %63 = icmp eq i64 %58, 0
  br i1 %63, label %middle.block, label %vector.body.preheader.split.split

vector.body.preheader.split.split:                ; preds = %vector.body.preheader.split
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader.split.split
  %index = phi i64 [ %index.unr, %vector.body.preheader.split.split ], [ %index.next.1, %vector.body ]
  %broadcast.splatinsert = insertelement <2 x i64> undef, i64 %index, i32 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> undef, <2 x i32> zeroinitializer
  %64 = add <2 x i64> %broadcast.splat, <i64 1, i64 2>
  %65 = add <2 x i64> %broadcast.splat, <i64 3, i64 4>
  %66 = getelementptr inbounds i64, i64* %55, i64 %index
  %67 = bitcast i64* %66 to <2 x i64>*
  store <2 x i64> %64, <2 x i64>* %67, align 8
  %68 = getelementptr i64, i64* %66, i64 2
  %69 = bitcast i64* %68 to <2 x i64>*
  store <2 x i64> %65, <2 x i64>* %69, align 8
  %index.next = add i64 %index, 4
  %broadcast.splatinsert.1 = insertelement <2 x i64> undef, i64 %index.next, i32 0
  %broadcast.splat.1 = shufflevector <2 x i64> %broadcast.splatinsert.1, <2 x i64> undef, <2 x i32> zeroinitializer
  %70 = add <2 x i64> %broadcast.splat.1, <i64 1, i64 2>
  %71 = add <2 x i64> %broadcast.splat.1, <i64 3, i64 4>
  %72 = getelementptr inbounds i64, i64* %55, i64 %index.next
  %73 = bitcast i64* %72 to <2 x i64>*
  store <2 x i64> %70, <2 x i64>* %73, align 8
  %74 = getelementptr i64, i64* %72, i64 2
  %75 = bitcast i64* %74 to <2 x i64>*
  store <2 x i64> %71, <2 x i64>* %75, align 8
  %index.next.1 = add i64 %index, 8
  %76 = icmp eq i64 %index.next.1, %n.vec
  br i1 %76, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !1

middle.block.unr-lcssa:                           ; preds = %vector.body
  br label %middle.block

middle.block:                                     ; preds = %vector.body.preheader.split, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %52, %n.vec
  br i1 %cmp.n, label %.lr.ph.us.i.preheader, label %.lr.ph9.i.preheader13

.lr.ph.us.i.preheader.loopexit:                   ; preds = %.lr.ph9.i
  br label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph.us.i.preheader.loopexit, %middle.block
  br label %.lr.ph.us.i

; <label>:77                                      ; preds = %81
  %78 = icmp slt i64 %94, %52
  br i1 %78, label %81, label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %77
  %79 = add nuw nsw i64 %t.06.us.i, 1
  %80 = icmp slt i64 %79, 4
  br i1 %80, label %.lr.ph.us.i, label %.loopexit.loopexit

; <label>:81                                      ; preds = %.lr.ph5.us.i, %77
  %i.24.us.i = phi i64 [ 0, %.lr.ph5.us.i ], [ %94, %77 ]
  %82 = getelementptr inbounds i64, i64* %55, i64 %i.24.us.i
  %83 = load i64, i64* %82, align 8
  %84 = tail call i64 @random_generate(%struct.random* nonnull %43) #5
  %85 = urem i64 %84, 5
  %86 = mul nuw nsw i64 %85, 100
  %87 = add nuw nsw i64 %86, 100
  %88 = tail call i64 @random_generate(%struct.random* nonnull %43) #5
  %89 = urem i64 %88, 5
  %90 = mul nuw nsw i64 %89, 10
  %91 = add nuw nsw i64 %90, 50
  %92 = tail call i64 %106(%struct.manager* nonnull %47, i64 %83, i64 %87, i64 %91) #5
  %93 = icmp eq i64 %92, 0
  %94 = add nuw nsw i64 %i.24.us.i, 1
  br i1 %93, label %.us-lcssa10.us.i, label %77

; <label>:95                                      ; preds = %.lr.ph.us.i, %95
  %i.13.us.i = phi i64 [ 0, %.lr.ph.us.i ], [ %104, %95 ]
  %96 = tail call i64 @random_generate(%struct.random* nonnull %43) #5
  %97 = urem i64 %96, %52
  %98 = tail call i64 @random_generate(%struct.random* nonnull %43) #5
  %99 = urem i64 %98, %52
  %100 = getelementptr inbounds i64, i64* %55, i64 %97
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i64, i64* %55, i64 %99
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %100, align 8
  store i64 %101, i64* %102, align 8
  %104 = add nuw nsw i64 %i.13.us.i, 1
  %exitcond.i1 = icmp eq i64 %104, %52
  br i1 %exitcond.i1, label %.lr.ph5.us.i, label %95

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %._crit_edge.us.i
  %t.06.us.i = phi i64 [ %79, %._crit_edge.us.i ], [ 0, %.lr.ph.us.i.preheader ]
  br label %95

.lr.ph5.us.i:                                     ; preds = %95
  %105 = getelementptr inbounds [4 x i64 (%struct.manager*, i64, i64, i64)*], [4 x i64 (%struct.manager*, i64, i64, i64)*]* @initializeManager.manager_add, i64 0, i64 %t.06.us.i
  %106 = load i64 (%struct.manager*, i64, i64, i64)*, i64 (%struct.manager*, i64, i64, i64)** %105, align 8
  br label %81

.lr.ph9.i:                                        ; preds = %.lr.ph9.i.preheader13, %.lr.ph9.i
  %i.07.i = phi i64 [ %107, %.lr.ph9.i ], [ %i.07.i.ph, %.lr.ph9.i.preheader13 ]
  %107 = add nuw nsw i64 %i.07.i, 1
  %108 = getelementptr inbounds i64, i64* %55, i64 %i.07.i
  store i64 %107, i64* %108, align 8
  %exitcond13.i = icmp eq i64 %107, %52
  br i1 %exitcond13.i, label %.lr.ph.us.i.preheader.loopexit, label %.lr.ph9.i, !llvm.loop !4

.us-lcssa10.us.i:                                 ; preds = %81
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 259, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.initializeManager, i64 0, i64 0)) #6
  unreachable

.loopexit.loopexit:                               ; preds = %._crit_edge.us.i
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %50
  %109 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %111 = tail call i32 @fflush(%struct._IO_FILE* %110) #5
  tail call void @random_free(%struct.random* nonnull %43) #5
  tail call void @free(i8* %54) #5
  %112 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 99), align 8
  %113 = fptosi double %112 to i64
  %114 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 116), align 16
  %115 = fptosi double %114 to i64
  %116 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 110), align 16
  %117 = fptosi double %116 to i64
  %118 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 114), align 16
  %119 = fptosi double %118 to i64
  %120 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 113), align 8
  %121 = fptosi double %120 to i64
  %122 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 117), align 8
  %123 = fptosi double %122 to i64
  %124 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0)) #5
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %126 = tail call i32 @fflush(%struct._IO_FILE* %125) #5
  %127 = tail call %struct.random* (...) @random_alloc() #5
  %128 = icmp eq %struct.random* %127, null
  br i1 %128, label %129, label %130

; <label>:129                                     ; preds = %.loopexit
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 297, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.initializeClients, i64 0, i64 0)) #6
  unreachable

; <label>:130                                     ; preds = %.loopexit
  %131 = shl i64 %113, 3
  %132 = tail call noalias i8* @malloc(i64 %131) #5
  %133 = bitcast i8* %132 to %struct.client**
  %134 = icmp eq i8* %132, null
  br i1 %134, label %135, label %136

; <label>:135                                     ; preds = %130
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 300, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.initializeClients, i64 0, i64 0)) #6
  unreachable

; <label>:136                                     ; preds = %130
  %137 = sitofp i64 %115 to double
  %138 = sitofp i64 %113 to double
  %139 = fdiv double %137, %138
  %140 = fadd double %139, 5.000000e-01
  %141 = fptosi double %140 to i64
  %142 = sitofp i64 %121 to double
  %143 = fdiv double %142, 1.000000e+02
  %144 = sitofp i64 %119 to double
  %145 = fmul double %144, %143
  %146 = fadd double %145, 5.000000e-01
  %147 = fptosi double %146 to i64
  %148 = icmp sgt i64 %113, 0
  br i1 %148, label %.lr.ph.i3.preheader, label %.loopexit9

.lr.ph.i3.preheader:                              ; preds = %136
  br label %.lr.ph.i3

; <label>:149                                     ; preds = %.lr.ph.i3
  %150 = icmp slt i64 %154, %113
  br i1 %150, label %.lr.ph.i3, label %.loopexit9.loopexit

.lr.ph.i3:                                        ; preds = %.lr.ph.i3.preheader, %149
  %i.01.i2 = phi i64 [ %154, %149 ], [ 0, %.lr.ph.i3.preheader ]
  %151 = tail call %struct.client* @client_alloc(i64 %i.01.i2, %struct.manager* nonnull %47, i64 %141, i64 %117, i64 %147, i64 %123) #5
  %152 = getelementptr inbounds %struct.client*, %struct.client** %133, i64 %i.01.i2
  store %struct.client* %151, %struct.client** %152, align 8
  %153 = icmp eq %struct.client* %151, null
  %154 = add nuw nsw i64 %i.01.i2, 1
  br i1 %153, label %155, label %149

; <label>:155                                     ; preds = %.lr.ph.i3
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 311, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.initializeClients, i64 0, i64 0)) #6
  unreachable

.loopexit9.loopexit:                              ; preds = %149
  br label %.loopexit9

.loopexit9:                                       ; preds = %.loopexit9.loopexit, %136
  %156 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5
  %157 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 %115) #5
  %158 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0), i64 %113) #5
  %159 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0), i64 %141) #5
  %160 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0), i64 %117) #5
  %161 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i64 %119) #5
  %162 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i64 %121) #5
  %163 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i64 0, i64 0), i64 %147) #5
  %164 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i64 0, i64 0), i64 %123) #5
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %166 = tail call i32 @fflush(%struct._IO_FILE* %165) #5
  tail call void @random_free(%struct.random* nonnull %127) #5
  %167 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 99), align 8
  %168 = fptosi double %167 to i64
  %169 = tail call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 0) #9, !srcloc !6
  %170 = extractvalue { i32, i32, i32, i32 } %169, 0
  %171 = icmp sgt i32 %170, 6
  br i1 %171, label %173, label %172

; <label>:172                                     ; preds = %.loopexit9
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 427, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

; <label>:173                                     ; preds = %.loopexit9
  %174 = tail call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #9, !srcloc !7
  %175 = extractvalue { i32, i32, i32, i32 } %174, 1
  %176 = and i32 %175, 2048
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

; <label>:178                                     ; preds = %173
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 427, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

; <label>:179                                     ; preds = %173
  tail call void (...) @RTM_spinlock_init() #5
  tail call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %168) #5
  tail call void @thread_startup(i64 %168) #5
  %180 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %182 = tail call i32 @fflush(%struct._IO_FILE* %181)
  %183 = call i32 @gettimeofday(%struct.timeval* nonnull %start, %struct.timezone* null) #5
  tail call void @thread_start(void (i8*)* nonnull @client_run, i8* nonnull %132) #5
  %184 = call i32 @gettimeofday(%struct.timeval* nonnull %stop, %struct.timezone* null) #5
  %185 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %186 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i64 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = sitofp i64 %187 to double
  %189 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i64 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = sitofp i64 %190 to double
  %192 = fdiv double %191, 1.000000e+06
  %193 = fadd double %188, %192
  %194 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i64 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = sitofp i64 %195 to double
  %197 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i64 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = sitofp i64 %198 to double
  %200 = fdiv double %199, 1.000000e+06
  %201 = fadd double %196, %200
  %202 = fsub double %193, %201
  %203 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), double %202)
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %205 = tail call i32 @fflush(%struct._IO_FILE* %204)
  tail call void @checkTables(%struct.manager* nonnull %47)
  %206 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %208 = tail call i32 @fflush(%struct._IO_FILE* %207)
  %209 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 99), align 8
  %210 = fptosi double %209 to i64
  %211 = icmp sgt i64 %210, 0
  br i1 %211, label %.lr.ph.i7.preheader, label %freeClients.exit

.lr.ph.i7.preheader:                              ; preds = %179
  br label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %.lr.ph.i7.preheader, %.lr.ph.i7
  %i.01.i5 = phi i64 [ %214, %.lr.ph.i7 ], [ 0, %.lr.ph.i7.preheader ]
  %212 = getelementptr inbounds %struct.client*, %struct.client** %133, i64 %i.01.i5
  %213 = load %struct.client*, %struct.client** %212, align 8
  tail call void @client_free(%struct.client* %213) #5
  %214 = add nuw nsw i64 %i.01.i5, 1
  %exitcond.i6 = icmp eq i64 %214, %210
  br i1 %exitcond.i6, label %freeClients.exit.loopexit, label %.lr.ph.i7

freeClients.exit.loopexit:                        ; preds = %.lr.ph.i7
  br label %freeClients.exit

freeClients.exit:                                 ; preds = %freeClients.exit.loopexit, %179
  tail call void @manager_free(%struct.manager* nonnull %47) #5
  %215 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %217 = tail call i32 @fflush(%struct._IO_FILE* %216)
  %218 = tail call i64 (...) @getWorkItemCount() #5
  %219 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i64 %218)
  %220 = tail call i32 @fflush(%struct._IO_FILE* null)
  tail call void (...) @thread_shutdown() #5
  tail call void (...) @RTM_output_stats() #5
  ret i32 0
}

declare void @RTM_spinlock_init(...) #1

declare void @SimStartup(...) #1

declare void @thread_startup(i64) #1

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #2

declare void @thread_start(void (i8*)*, i8*) #1

declare void @client_run(i8*) #1

declare void @manager_free(%struct.manager*) #1

declare i64 @getWorkItemCount(...) #1

declare void @thread_shutdown(...) #1

declare void @RTM_output_stats(...) #1

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @atol(i8* nocapture) #4

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define internal i64 @addCustomer(%struct.manager* %managerPtr, i64 %id, i64 %num, i64 %price) #0 {
  %1 = tail call i64 @manager_addCustomer_seq(%struct.manager* %managerPtr, i64 %id) #5
  ret i64 %1
}

declare %struct.random* @random_alloc(...) #1

declare %struct.manager* @manager_alloc(...) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i64 @random_generate(%struct.random*) #1

declare void @random_free(%struct.random*) #1

; Function Attrs: nounwind
declare void @free(i8* nocapture) #2

declare i64 @manager_addCustomer_seq(%struct.manager*, i64) #1

declare %struct.client* @client_alloc(i64, %struct.manager*, i64, i64, i64, i64) #1

declare void @client_free(%struct.client*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = distinct !{!1, !2, !3}
!2 = !{!"llvm.loop.vectorize.width", i32 1}
!3 = !{!"llvm.loop.interleave.count", i32 1}
!4 = distinct !{!4, !5, !2, !3}
!5 = !{!"llvm.loop.unroll.runtime.disable"}
!6 = !{i32 -2145976018, i32 -2145975982, i32 -2145975958}
!7 = !{i32 -2145704887, i32 -2145704851, i32 -2145704827}
