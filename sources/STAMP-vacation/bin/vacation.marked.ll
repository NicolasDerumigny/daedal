; ModuleID = '../bin/vacation.stats.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.manager = type { %struct.rbtree*, %struct.rbtree*, %struct.rbtree*, %struct.rbtree* }
%struct.rbtree = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.client = type { i64, %struct.manager*, %struct.random*, i64, i64, i64, i64 }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }
%struct.timeval = type { i64, i64 }
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
  %1 = alloca %struct.manager*, align 8
  %i = alloca i64, align 8
  %numRelation = alloca i64, align 8
  %customerTablePtr = alloca %struct.rbtree*, align 8
  %tables = alloca [3 x %struct.rbtree*], align 16
  %numTable = alloca i64, align 8
  %manager_add = alloca [3 x i64 (%struct.manager*, i64, i64, i64)*], align 16
  %t = alloca i64, align 8
  %percentQuery = alloca i64, align 8
  %queryRange = alloca i64, align 8
  %maxCustomerId = alloca i64, align 8
  %tablePtr = alloca %struct.rbtree*, align 8
  store %struct.manager* %managerPtr, %struct.manager** %1, align 8
  %2 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 114), align 16
  %3 = fptosi double %2 to i64
  store i64 %3, i64* %numRelation, align 8
  %4 = load %struct.manager*, %struct.manager** %1, align 8
  %5 = getelementptr inbounds %struct.manager, %struct.manager* %4, i32 0, i32 3
  %6 = load %struct.rbtree*, %struct.rbtree** %5, align 8
  store %struct.rbtree* %6, %struct.rbtree** %customerTablePtr, align 8
  %7 = getelementptr inbounds [3 x %struct.rbtree*], [3 x %struct.rbtree*]* %tables, i64 0, i64 0
  %8 = load %struct.manager*, %struct.manager** %1, align 8
  %9 = getelementptr inbounds %struct.manager, %struct.manager* %8, i32 0, i32 0
  %10 = load %struct.rbtree*, %struct.rbtree** %9, align 8
  store %struct.rbtree* %10, %struct.rbtree** %7, align 8
  %11 = getelementptr inbounds %struct.rbtree*, %struct.rbtree** %7, i64 1
  %12 = load %struct.manager*, %struct.manager** %1, align 8
  %13 = getelementptr inbounds %struct.manager, %struct.manager* %12, i32 0, i32 2
  %14 = load %struct.rbtree*, %struct.rbtree** %13, align 8
  store %struct.rbtree* %14, %struct.rbtree** %11, align 8
  %15 = getelementptr inbounds %struct.rbtree*, %struct.rbtree** %11, i64 1
  %16 = load %struct.manager*, %struct.manager** %1, align 8
  %17 = getelementptr inbounds %struct.manager, %struct.manager* %16, i32 0, i32 1
  %18 = load %struct.rbtree*, %struct.rbtree** %17, align 8
  store %struct.rbtree* %18, %struct.rbtree** %15, align 8
  store i64 3, i64* %numTable, align 8
  %19 = bitcast [3 x i64 (%struct.manager*, i64, i64, i64)*]* %manager_add to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* bitcast ([3 x i64 (%struct.manager*, i64, i64, i64)*]* @checkTables.manager_add to i8*), i64 24, i32 16, i1 false)
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %22 = call i32 @fflush(%struct._IO_FILE* %21)
  %23 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 113), align 8
  %24 = fptosi double %23 to i64
  store i64 %24, i64* %percentQuery, align 8
  %25 = load i64, i64* %percentQuery, align 8
  %26 = sitofp i64 %25 to double
  %27 = fdiv double %26, 1.000000e+02
  %28 = load i64, i64* %numRelation, align 8
  %29 = sitofp i64 %28 to double
  %30 = fmul double %27, %29
  %31 = fadd double %30, 5.000000e-01
  %32 = fptosi double %31 to i64
  store i64 %32, i64* %queryRange, align 8
  %33 = load i64, i64* %queryRange, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %maxCustomerId, align 8
  store i64 1, i64* %i, align 8
  br label %35

; <label>:35                                      ; preds = %63, %0
  %36 = load i64, i64* %i, align 8
  %37 = load i64, i64* %maxCustomerId, align 8
  %38 = icmp sle i64 %36, %37
  br i1 %38, label %39, label %66

; <label>:39                                      ; preds = %35
  %40 = load %struct.rbtree*, %struct.rbtree** %customerTablePtr, align 8
  %41 = load i64, i64* %i, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = call i8* @rbtree_get(%struct.rbtree* %40, i8* %42)
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %62

; <label>:45                                      ; preds = %39
  %46 = load %struct.rbtree*, %struct.rbtree** %customerTablePtr, align 8
  %47 = load i64, i64* %i, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = call i64 @rbtree_delete(%struct.rbtree* %46, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

; <label>:51                                      ; preds = %45
  %52 = load %struct.rbtree*, %struct.rbtree** %customerTablePtr, align 8
  %53 = load i64, i64* %i, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = call i8* @rbtree_get(%struct.rbtree* %52, i8* %54)
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

; <label>:57                                      ; preds = %51
  br label %60

; <label>:58                                      ; preds = %51
  call void @__assert_fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 366, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkTables, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %60

; <label>:60                                      ; preds = %59, %57
  br label %61

; <label>:61                                      ; preds = %60, %45
  br label %62

; <label>:62                                      ; preds = %61, %39
  br label %63

; <label>:63                                      ; preds = %62
  %64 = load i64, i64* %i, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %i, align 8
  br label %35

; <label>:66                                      ; preds = %35
  store i64 0, i64* %t, align 8
  br label %67

; <label>:67                                      ; preds = %118, %66
  %68 = load i64, i64* %t, align 8
  %69 = load i64, i64* %numTable, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %121

; <label>:71                                      ; preds = %67
  %72 = load i64, i64* %t, align 8
  %73 = getelementptr inbounds [3 x %struct.rbtree*], [3 x %struct.rbtree*]* %tables, i64 0, i64 %72
  %74 = load %struct.rbtree*, %struct.rbtree** %73, align 8
  store %struct.rbtree* %74, %struct.rbtree** %tablePtr, align 8
  store i64 1, i64* %i, align 8
  br label %75

; <label>:75                                      ; preds = %114, %71
  %76 = load i64, i64* %i, align 8
  %77 = load i64, i64* %numRelation, align 8
  %78 = icmp sle i64 %76, %77
  br i1 %78, label %79, label %117

; <label>:79                                      ; preds = %75
  %80 = load %struct.rbtree*, %struct.rbtree** %tablePtr, align 8
  %81 = load i64, i64* %i, align 8
  %82 = inttoptr i64 %81 to i8*
  %83 = call i8* @rbtree_get(%struct.rbtree* %80, i8* %82)
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %113

; <label>:85                                      ; preds = %79
  %86 = load i64, i64* %t, align 8
  %87 = getelementptr inbounds [3 x i64 (%struct.manager*, i64, i64, i64)*], [3 x i64 (%struct.manager*, i64, i64, i64)*]* %manager_add, i64 0, i64 %86
  %88 = load i64 (%struct.manager*, i64, i64, i64)*, i64 (%struct.manager*, i64, i64, i64)** %87, align 8
  %89 = load %struct.manager*, %struct.manager** %1, align 8
  %90 = load i64, i64* %i, align 8
  %91 = call i64 %88(%struct.manager* %89, i64 %90, i64 0, i64 0)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

; <label>:93                                      ; preds = %85
  br label %96

; <label>:94                                      ; preds = %85
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 376, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkTables, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %96

; <label>:96                                      ; preds = %95, %93
  %97 = load %struct.rbtree*, %struct.rbtree** %tablePtr, align 8
  %98 = load i64, i64* %i, align 8
  %99 = inttoptr i64 %98 to i8*
  %100 = call i64 @rbtree_delete(%struct.rbtree* %97, i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

; <label>:102                                     ; preds = %96
  %103 = load %struct.rbtree*, %struct.rbtree** %tablePtr, align 8
  %104 = load i64, i64* %i, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = call i64 @rbtree_delete(%struct.rbtree* %103, i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %109, label %108

; <label>:108                                     ; preds = %102
  br label %111

; <label>:109                                     ; preds = %102
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 378, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkTables, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %111

; <label>:111                                     ; preds = %110, %108
  br label %112

; <label>:112                                     ; preds = %111, %96
  br label %113

; <label>:113                                     ; preds = %112, %79
  br label %114

; <label>:114                                     ; preds = %113
  %115 = load i64, i64* %i, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %i, align 8
  br label %75

; <label>:117                                     ; preds = %75
  br label %118

; <label>:118                                     ; preds = %117
  %119 = load i64, i64* %t, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %t, align 8
  br label %67

; <label>:121                                     ; preds = %67
  %122 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %124 = call i32 @fflush(%struct._IO_FILE* %123)
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
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %managerPtr = alloca %struct.manager*, align 8
  %clients = alloca %struct.client**, align 8
  %start = alloca %struct.timeval, align 8
  %stop = alloca %struct.timeval, align 8
  %numThread = alloca i64, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %count = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = load i8**, i8*** %3, align 8
  call void @parseArgs(i64 %5, i8** %6)
  %7 = call %struct.manager* @initializeManager()
  store %struct.manager* %7, %struct.manager** %managerPtr, align 8
  %8 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %9 = icmp ne %struct.manager* %8, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  br label %13

; <label>:11                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 423, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %12, %10
  %14 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %15 = call %struct.client** @initializeClients(%struct.manager* %14)
  store %struct.client** %15, %struct.client*** %clients, align 8
  %16 = load %struct.client**, %struct.client*** %clients, align 8
  %17 = icmp ne %struct.client** %16, null
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %13
  br label %21

; <label>:19                                      ; preds = %13
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 425, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %21

; <label>:21                                      ; preds = %20, %18
  %22 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 99), align 8
  %23 = fptosi double %22 to i64
  store i64 %23, i64* %numThread, align 8
  br label %24

; <label>:24                                      ; preds = %21
  %25 = call i32 @__get_cpuid_max(i32 0, i32* null)
  %26 = icmp sge i32 %25, 7
  br i1 %26, label %27, label %29

; <label>:27                                      ; preds = %24
  br i1 true, label %28, label %29

; <label>:28                                      ; preds = %27
  br label %31

; <label>:29                                      ; preds = %27, %24
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 427, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %31

; <label>:31                                      ; preds = %30, %28
  %32 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #8, !srcloc !1
  %33 = extractvalue { i32, i32, i32, i32 } %32, 0
  %34 = extractvalue { i32, i32, i32, i32 } %32, 1
  %35 = extractvalue { i32, i32, i32, i32 } %32, 2
  %36 = extractvalue { i32, i32, i32, i32 } %32, 3
  store i32 %33, i32* %a, align 4
  store i32 %34, i32* %b, align 4
  store i32 %35, i32* %c, align 4
  store i32 %36, i32* %d, align 4
  %37 = load i32, i32* %b, align 4
  %38 = and i32 %37, 2048
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

; <label>:40                                      ; preds = %31
  br i1 true, label %41, label %42

; <label>:41                                      ; preds = %40
  br label %44

; <label>:42                                      ; preds = %40, %31
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 427, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %44

; <label>:44                                      ; preds = %43, %41
  call void (...) @RTM_spinlock_init()
  %45 = load i64, i64* %numThread, align 8
  call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %45)
  br label %46

; <label>:46                                      ; preds = %44
  %47 = load i64, i64* %numThread, align 8
  call void @thread_startup(i64 %47)
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0))
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %50 = call i32 @fflush(%struct._IO_FILE* %49)
  %51 = call i32 @gettimeofday(%struct.timeval* %start, %struct.timezone* null) #9
  %52 = load %struct.client**, %struct.client*** %clients, align 8
  %53 = bitcast %struct.client** %52 to i8*
  call void @thread_start(void (i8*)* @client_run, i8* %53)
  %54 = call i32 @gettimeofday(%struct.timeval* %stop, %struct.timezone* null) #9
  %55 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %56 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sitofp i64 %57 to double
  %59 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = sitofp i64 %60 to double
  %62 = fdiv double %61, 1.000000e+06
  %63 = fadd double %58, %62
  %64 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sitofp i64 %65 to double
  %67 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = sitofp i64 %68 to double
  %70 = fdiv double %69, 1.000000e+06
  %71 = fadd double %66, %70
  %72 = fsub double %63, %71
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), double %72)
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %75 = call i32 @fflush(%struct._IO_FILE* %74)
  %76 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  call void @checkTables(%struct.manager* %76)
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0))
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %79 = call i32 @fflush(%struct._IO_FILE* %78)
  %80 = load %struct.client**, %struct.client*** %clients, align 8
  call void @freeClients(%struct.client** %80)
  %81 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  call void @manager_free(%struct.manager* %81)
  %82 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %84 = call i32 @fflush(%struct._IO_FILE* %83)
  br label %85

; <label>:85                                      ; preds = %46
  %86 = call i64 (...) @getWorkItemCount()
  store i64 %86, i64* %count, align 8
  %87 = load i64, i64* %count, align 8
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i64 %87)
  %89 = call i32 @fflush(%struct._IO_FILE* null)
  br label %90

; <label>:90                                      ; preds = %85
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

; <label>:3                                       ; preds = %24, %0
  %4 = load i64, i64* %1, align 8
  %5 = trunc i64 %4 to i32
  %6 = load i8**, i8*** %2, align 8
  %7 = call i32 @getopt(i32 %5, i8** %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0)) #9
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %opt, align 8
  %9 = icmp ne i64 %8, -1
  br i1 %9, label %10, label %25

; <label>:10                                      ; preds = %3
  %11 = load i64, i64* %opt, align 8
  switch i64 %11, label %21 [
    i64 99, label %12
    i64 110, label %12
    i64 113, label %12
    i64 114, label %12
    i64 116, label %12
    i64 117, label %12
    i64 63, label %20
  ]

; <label>:12                                      ; preds = %10, %10, %10, %10, %10, %10
  %13 = load i8*, i8** @optarg, align 8
  %14 = call i64 @atol(i8* %13) #10
  %15 = sitofp i64 %14 to double
  %16 = load i64, i64* %opt, align 8
  %17 = trunc i64 %16 to i8
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds [256 x double], [256 x double]* @global_params, i64 0, i64 %18
  store double %15, double* %19, align 8
  br label %24

; <label>:20                                      ; preds = %10
  br label %21

; <label>:21                                      ; preds = %20, %10
  %22 = load i32, i32* @opterr, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @opterr, align 4
  br label %24

; <label>:24                                      ; preds = %21, %12
  br label %3

; <label>:25                                      ; preds = %3
  %26 = load i32, i32* @optind, align 4
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %i, align 8
  br label %28

; <label>:28                                      ; preds = %41, %25
  %29 = load i64, i64* %i, align 8
  %30 = load i64, i64* %1, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %44

; <label>:32                                      ; preds = %28
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = load i64, i64* %i, align 8
  %35 = load i8**, i8*** %2, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 %34
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i8* %37)
  %39 = load i32, i32* @opterr, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @opterr, align 4
  br label %41

; <label>:41                                      ; preds = %32
  %42 = load i64, i64* %i, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %i, align 8
  br label %28

; <label>:44                                      ; preds = %28
  %45 = load i32, i32* @opterr, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

; <label>:47                                      ; preds = %44
  %48 = load i8**, i8*** %2, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  %50 = load i8*, i8** %49, align 8
  call void @displayUsage(i8* %50)
  br label %51

; <label>:51                                      ; preds = %47, %44
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.client** @initializeClients(%struct.manager* %managerPtr) #0 {
  %1 = alloca %struct.manager*, align 8
  %randomPtr = alloca %struct.random*, align 8
  %clients = alloca %struct.client**, align 8
  %i = alloca i64, align 8
  %numClient = alloca i64, align 8
  %numTransaction = alloca i64, align 8
  %numTransactionPerClient = alloca i64, align 8
  %numQueryPerTransaction = alloca i64, align 8
  %numRelation = alloca i64, align 8
  %percentQuery = alloca i64, align 8
  %queryRange = alloca i64, align 8
  %percentUser = alloca i64, align 8
  store %struct.manager* %managerPtr, %struct.manager** %1, align 8
  %2 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 99), align 8
  %3 = fptosi double %2 to i64
  store i64 %3, i64* %numClient, align 8
  %4 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 116), align 16
  %5 = fptosi double %4 to i64
  store i64 %5, i64* %numTransaction, align 8
  %6 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 110), align 16
  %7 = fptosi double %6 to i64
  store i64 %7, i64* %numQueryPerTransaction, align 8
  %8 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 114), align 16
  %9 = fptosi double %8 to i64
  store i64 %9, i64* %numRelation, align 8
  %10 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 113), align 8
  %11 = fptosi double %10 to i64
  store i64 %11, i64* %percentQuery, align 8
  %12 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 117), align 8
  %13 = fptosi double %12 to i64
  store i64 %13, i64* %percentUser, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %16 = call i32 @fflush(%struct._IO_FILE* %15)
  %17 = call %struct.random* (...) @random_alloc()
  store %struct.random* %17, %struct.random** %randomPtr, align 8
  %18 = load %struct.random*, %struct.random** %randomPtr, align 8
  %19 = icmp ne %struct.random* %18, null
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %0
  br label %23

; <label>:21                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 297, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.initializeClients, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %23

; <label>:23                                      ; preds = %22, %20
  %24 = load i64, i64* %numClient, align 8
  %25 = mul i64 %24, 8
  %26 = call noalias i8* @malloc(i64 %25) #9
  %27 = bitcast i8* %26 to %struct.client**
  store %struct.client** %27, %struct.client*** %clients, align 8
  %28 = load %struct.client**, %struct.client*** %clients, align 8
  %29 = icmp ne %struct.client** %28, null
  br i1 %29, label %30, label %31

; <label>:30                                      ; preds = %23
  br label %33

; <label>:31                                      ; preds = %23
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 300, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.initializeClients, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %33

; <label>:33                                      ; preds = %32, %30
  %34 = load i64, i64* %numTransaction, align 8
  %35 = sitofp i64 %34 to double
  %36 = load i64, i64* %numClient, align 8
  %37 = sitofp i64 %36 to double
  %38 = fdiv double %35, %37
  %39 = fadd double %38, 5.000000e-01
  %40 = fptosi double %39 to i64
  store i64 %40, i64* %numTransactionPerClient, align 8
  %41 = load i64, i64* %percentQuery, align 8
  %42 = sitofp i64 %41 to double
  %43 = fdiv double %42, 1.000000e+02
  %44 = load i64, i64* %numRelation, align 8
  %45 = sitofp i64 %44 to double
  %46 = fmul double %43, %45
  %47 = fadd double %46, 5.000000e-01
  %48 = fptosi double %47 to i64
  store i64 %48, i64* %queryRange, align 8
  store i64 0, i64* %i, align 8
  br label %49

; <label>:49                                      ; preds = %73, %33
  %50 = load i64, i64* %i, align 8
  %51 = load i64, i64* %numClient, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %76

; <label>:53                                      ; preds = %49
  %54 = load i64, i64* %i, align 8
  %55 = load %struct.manager*, %struct.manager** %1, align 8
  %56 = load i64, i64* %numTransactionPerClient, align 8
  %57 = load i64, i64* %numQueryPerTransaction, align 8
  %58 = load i64, i64* %queryRange, align 8
  %59 = load i64, i64* %percentUser, align 8
  %60 = call %struct.client* @client_alloc(i64 %54, %struct.manager* %55, i64 %56, i64 %57, i64 %58, i64 %59)
  %61 = load i64, i64* %i, align 8
  %62 = load %struct.client**, %struct.client*** %clients, align 8
  %63 = getelementptr inbounds %struct.client*, %struct.client** %62, i64 %61
  store %struct.client* %60, %struct.client** %63, align 8
  %64 = load i64, i64* %i, align 8
  %65 = load %struct.client**, %struct.client*** %clients, align 8
  %66 = getelementptr inbounds %struct.client*, %struct.client** %65, i64 %64
  %67 = load %struct.client*, %struct.client** %66, align 8
  %68 = icmp ne %struct.client* %67, null
  br i1 %68, label %69, label %70

; <label>:69                                      ; preds = %53
  br label %72

; <label>:70                                      ; preds = %53
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 311, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.initializeClients, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %72

; <label>:72                                      ; preds = %71, %69
  br label %73

; <label>:73                                      ; preds = %72
  %74 = load i64, i64* %i, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %i, align 8
  br label %49

; <label>:76                                      ; preds = %49
  %77 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %78 = load i64, i64* %numTransaction, align 8
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0), i64 %78)
  %80 = load i64, i64* %numClient, align 8
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i32 0, i32 0), i64 %80)
  %82 = load i64, i64* %numTransactionPerClient, align 8
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i32 0, i32 0), i64 %82)
  %84 = load i64, i64* %numQueryPerTransaction, align 8
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i32 0, i32 0), i64 %84)
  %86 = load i64, i64* %numRelation, align 8
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i32 0, i32 0), i64 %86)
  %88 = load i64, i64* %percentQuery, align 8
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i32 0, i32 0), i64 %88)
  %90 = load i64, i64* %queryRange, align 8
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i32 0, i32 0), i64 %90)
  %92 = load i64, i64* %percentUser, align 8
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i32 0, i32 0), i64 %92)
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %95 = call i32 @fflush(%struct._IO_FILE* %94)
  %96 = load %struct.random*, %struct.random** %randomPtr, align 8
  call void @random_free(%struct.random* %96)
  %97 = load %struct.client**, %struct.client*** %clients, align 8
  ret %struct.client** %97
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
  %4 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %3) #8, !srcloc !2
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

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #5

declare void @thread_start(void (i8*)*, i8*) #1

declare void @client_run(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @freeClients(%struct.client** %clients) #0 {
  %1 = alloca %struct.client**, align 8
  %i = alloca i64, align 8
  %numClient = alloca i64, align 8
  %clientPtr = alloca %struct.client*, align 8
  store %struct.client** %clients, %struct.client*** %1, align 8
  %2 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 99), align 8
  %3 = fptosi double %2 to i64
  store i64 %3, i64* %numClient, align 8
  store i64 0, i64* %i, align 8
  br label %4

; <label>:4                                       ; preds = %14, %0
  %5 = load i64, i64* %i, align 8
  %6 = load i64, i64* %numClient, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %17

; <label>:8                                       ; preds = %4
  %9 = load i64, i64* %i, align 8
  %10 = load %struct.client**, %struct.client*** %1, align 8
  %11 = getelementptr inbounds %struct.client*, %struct.client** %10, i64 %9
  %12 = load %struct.client*, %struct.client** %11, align 8
  store %struct.client* %12, %struct.client** %clientPtr, align 8
  %13 = load %struct.client*, %struct.client** %clientPtr, align 8
  call void @client_free(%struct.client* %13)
  br label %14

; <label>:14                                      ; preds = %8
  %15 = load i64, i64* %i, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %i, align 8
  br label %4

; <label>:17                                      ; preds = %4
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
  %1 = alloca i8*, align 8
  store i8* %appName, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0), i8* %2)
  %4 = call i32 @puts(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.18, i32 0, i32 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.19, i32 0, i32 0), i32 1)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.20, i32 0, i32 0), i32 10)
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i32 0, i32 0), i32 90)
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.22, i32 0, i32 0), i32 65536)
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.23, i32 0, i32 0), i32 67108864)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.24, i32 0, i32 0), i32 80)
  call void @profiler_print_stats()
  call void @exit(i32 1) #7
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @setDefaultParams() #0 {
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
  %managerPtr = alloca %struct.manager*, align 8
  %i = alloca i64, align 8
  %numRelation = alloca i64, align 8
  %randomPtr = alloca %struct.random*, align 8
  %ids = alloca i64*, align 8
  %manager_add = alloca [4 x i64 (%struct.manager*, i64, i64, i64)*], align 16
  %t = alloca i64, align 8
  %numTable = alloca i64, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %tmp = alloca i64, align 8
  %status = alloca i64, align 8
  %id = alloca i64, align 8
  %num = alloca i64, align 8
  %price = alloca i64, align 8
  %1 = bitcast [4 x i64 (%struct.manager*, i64, i64, i64)*]* %manager_add to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([4 x i64 (%struct.manager*, i64, i64, i64)*]* @initializeManager.manager_add to i8*), i64 32, i32 16, i1 false)
  store i64 4, i64* %numTable, align 8
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %4 = call i32 @fflush(%struct._IO_FILE* %3)
  %5 = call %struct.random* (...) @random_alloc()
  store %struct.random* %5, %struct.random** %randomPtr, align 8
  %6 = load %struct.random*, %struct.random** %randomPtr, align 8
  %7 = icmp ne %struct.random* %6, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  br label %11

; <label>:9                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 230, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.initializeManager, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %11

; <label>:11                                      ; preds = %10, %8
  %12 = call %struct.manager* (...) @manager_alloc()
  store %struct.manager* %12, %struct.manager** %managerPtr, align 8
  %13 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %14 = icmp ne %struct.manager* %13, null
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %11
  br label %18

; <label>:16                                      ; preds = %11
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 233, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.initializeManager, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %18

; <label>:18                                      ; preds = %17, %15
  %19 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 114), align 16
  %20 = fptosi double %19 to i64
  store i64 %20, i64* %numRelation, align 8
  %21 = load i64, i64* %numRelation, align 8
  %22 = mul i64 %21, 8
  %23 = call noalias i8* @malloc(i64 %22) #9
  %24 = bitcast i8* %23 to i64*
  store i64* %24, i64** %ids, align 8
  store i64 0, i64* %i, align 8
  br label %25

; <label>:25                                      ; preds = %35, %18
  %26 = load i64, i64* %i, align 8
  %27 = load i64, i64* %numRelation, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %38

; <label>:29                                      ; preds = %25
  %30 = load i64, i64* %i, align 8
  %31 = add nsw i64 %30, 1
  %32 = load i64, i64* %i, align 8
  %33 = load i64*, i64** %ids, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 %32
  store i64 %31, i64* %34, align 8
  br label %35

; <label>:35                                      ; preds = %29
  %36 = load i64, i64* %i, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %i, align 8
  br label %25

; <label>:38                                      ; preds = %25
  store i64 0, i64* %t, align 8
  br label %39

; <label>:39                                      ; preds = %113, %38
  %40 = load i64, i64* %t, align 8
  %41 = load i64, i64* %numTable, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %116

; <label>:43                                      ; preds = %39
  store i64 0, i64* %i, align 8
  br label %44

; <label>:44                                      ; preds = %72, %43
  %45 = load i64, i64* %i, align 8
  %46 = load i64, i64* %numRelation, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %75

; <label>:48                                      ; preds = %44
  %49 = load %struct.random*, %struct.random** %randomPtr, align 8
  %50 = call i64 @random_generate(%struct.random* %49)
  %51 = load i64, i64* %numRelation, align 8
  %52 = urem i64 %50, %51
  store i64 %52, i64* %x, align 8
  %53 = load %struct.random*, %struct.random** %randomPtr, align 8
  %54 = call i64 @random_generate(%struct.random* %53)
  %55 = load i64, i64* %numRelation, align 8
  %56 = urem i64 %54, %55
  store i64 %56, i64* %y, align 8
  %57 = load i64, i64* %x, align 8
  %58 = load i64*, i64** %ids, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 %57
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %tmp, align 8
  %61 = load i64, i64* %y, align 8
  %62 = load i64*, i64** %ids, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 %61
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %x, align 8
  %66 = load i64*, i64** %ids, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 %65
  store i64 %64, i64* %67, align 8
  %68 = load i64, i64* %tmp, align 8
  %69 = load i64, i64* %y, align 8
  %70 = load i64*, i64** %ids, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 %69
  store i64 %68, i64* %71, align 8
  br label %72

; <label>:72                                      ; preds = %48
  %73 = load i64, i64* %i, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %i, align 8
  br label %44

; <label>:75                                      ; preds = %44
  store i64 0, i64* %i, align 8
  br label %76

; <label>:76                                      ; preds = %109, %75
  %77 = load i64, i64* %i, align 8
  %78 = load i64, i64* %numRelation, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %112

; <label>:80                                      ; preds = %76
  %81 = load i64, i64* %i, align 8
  %82 = load i64*, i64** %ids, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 %81
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %id, align 8
  %85 = load %struct.random*, %struct.random** %randomPtr, align 8
  %86 = call i64 @random_generate(%struct.random* %85)
  %87 = urem i64 %86, 5
  %88 = add i64 %87, 1
  %89 = mul i64 %88, 100
  store i64 %89, i64* %num, align 8
  %90 = load %struct.random*, %struct.random** %randomPtr, align 8
  %91 = call i64 @random_generate(%struct.random* %90)
  %92 = urem i64 %91, 5
  %93 = mul i64 %92, 10
  %94 = add i64 %93, 50
  store i64 %94, i64* %price, align 8
  %95 = load i64, i64* %t, align 8
  %96 = getelementptr inbounds [4 x i64 (%struct.manager*, i64, i64, i64)*], [4 x i64 (%struct.manager*, i64, i64, i64)*]* %manager_add, i64 0, i64 %95
  %97 = load i64 (%struct.manager*, i64, i64, i64)*, i64 (%struct.manager*, i64, i64, i64)** %96, align 8
  %98 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  %99 = load i64, i64* %id, align 8
  %100 = load i64, i64* %num, align 8
  %101 = load i64, i64* %price, align 8
  %102 = call i64 %97(%struct.manager* %98, i64 %99, i64 %100, i64 %101)
  store i64 %102, i64* %status, align 8
  %103 = load i64, i64* %status, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

; <label>:105                                     ; preds = %80
  br label %108

; <label>:106                                     ; preds = %80
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 259, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.initializeManager, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %108

; <label>:108                                     ; preds = %107, %105
  br label %109

; <label>:109                                     ; preds = %108
  %110 = load i64, i64* %i, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %i, align 8
  br label %76

; <label>:112                                     ; preds = %76
  br label %113

; <label>:113                                     ; preds = %112
  %114 = load i64, i64* %t, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %t, align 8
  br label %39

; <label>:116                                     ; preds = %39
  %117 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %119 = call i32 @fflush(%struct._IO_FILE* %118)
  %120 = load %struct.random*, %struct.random** %randomPtr, align 8
  call void @random_free(%struct.random* %120)
  %121 = load i64*, i64** %ids, align 8
  %122 = bitcast i64* %121 to i8*
  call void @free(i8* %122) #9
  %123 = load %struct.manager*, %struct.manager** %managerPtr, align 8
  ret %struct.manager* %123
}

; Function Attrs: nounwind uwtable
define internal i64 @addCustomer(%struct.manager* %managerPtr, i64 %id, i64 %num, i64 %price) #0 {
  %1 = alloca %struct.manager*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.manager* %managerPtr, %struct.manager** %1, align 8
  store i64 %id, i64* %2, align 8
  store i64 %num, i64* %3, align 8
  store i64 %price, i64* %4, align 8
  %5 = load %struct.manager*, %struct.manager** %1, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @manager_addCustomer_seq(%struct.manager* %5, i64 %6)
  ret i64 %7
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
