; ModuleID = '../bin/getUserParameters.marked.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@THREADS = external global i64, align 8
@SCALE = external global i64, align 8
@MAX_PARAL_EDGES = external global i64, align 8
@PERC_INT_WEIGHTS = external global float, align 4
@PROB_UNIDIRECTIONAL = external global float, align 4
@PROB_INTERCL_EDGES = external global float, align 4
@SUBGR_EDGE_LENGTH = external global i64, align 8
@K3_DS = external global i64, align 8
@TOT_VERTICES = external global i64, align 8
@MAX_CLIQUE_SIZE = external global i64, align 8
@MAX_INT_WEIGHT = external global i64, align 8
@MAX_STRLEN = external global i64, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SOUGHT_STRING = external global i8*, align 8
@MAX_CLUSTER_SIZE = external global i64, align 8
@opterr = external global i32, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"i:k:l:p:s:t:u:w:\00", align 1
@optarg = external global i8*, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"K3_DS >= 0 && K3_DS <= 2\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"getUserParameters.c\00", align 1
@__PRETTY_FUNCTION__.parseArgs = private unnamed_addr constant [36 x i8] c"void parseArgs(long, char *const *)\00", align 1
@optind = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"Non-option argument: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Usage: %s [options]\0A\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"\0AOptions:                                       (defaults)\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"    i <FLT>    Probability [i]nter-clique      (%f)\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"    k <UINT>   [k]ind: 0=array 1=list 2=vector (%li)\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"    l <UINT>   Max path [l]ength               (%li)\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"    p <UINT>   Max [p]arallel edges            (%li)\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"    s <UINT>   Problem [s]cale                 (%li)\0A\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"    t <UINT>   Number of [t]hreads             (%li)\0A\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"    u <FLT>    Probability [u]nidirectional    (%f)\0A\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"    w <FLT>    Fraction integer [w]eights      (%f)\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @getUserParameters(i64 %argc, i8** %argv) #0 {
  store i64 1, i64* @THREADS, align 8
  store i64 20, i64* @SCALE, align 8
  store i64 3, i64* @MAX_PARAL_EDGES, align 8
  store float 0x3FE3333340000000, float* @PERC_INT_WEIGHTS, align 4
  store float 0x3FB99999A0000000, float* @PROB_UNIDIRECTIONAL, align 4
  store float 5.000000e-01, float* @PROB_INTERCL_EDGES, align 4
  store i64 3, i64* @SUBGR_EDGE_LENGTH, align 8
  store i64 2, i64* @K3_DS, align 8
  store i32 0, i32* @opterr, align 4
  %1 = trunc i64 %argc to i32
  %2 = tail call i32 @getopt(i32 %1, i8** %argv, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0)) #4
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %._crit_edge5.i, label %.lr.ph4.i.preheader

.lr.ph4.i.preheader:                              ; preds = %0
  br label %.lr.ph4.i

.lr.ph4.i:                                        ; preds = %.lr.ph4.i.preheader, %.backedge.i
  %4 = phi i32 [ %14, %.backedge.i ], [ %2, %.lr.ph4.i.preheader ]
  %5 = sext i32 %4 to i64
  switch i64 %5, label %37 [
    i64 105, label %6
    i64 107, label %10
    i64 108, label %17
    i64 112, label %20
    i64 115, label %23
    i64 116, label %26
    i64 117, label %29
    i64 119, label %33
  ]

; <label>:6                                       ; preds = %.lr.ph4.i
  %7 = load i8*, i8** @optarg, align 8
  %8 = tail call double @atof(i8* %7) #5
  %9 = fptrunc double %8 to float
  store float %9, float* @PROB_INTERCL_EDGES, align 4
  br label %.backedge.i

; <label>:10                                      ; preds = %.lr.ph4.i
  %11 = load i8*, i8** @optarg, align 8
  %12 = tail call i64 @atol(i8* %11) #5
  store i64 %12, i64* @K3_DS, align 8
  %13 = icmp ult i64 %12, 3
  br i1 %13, label %.backedge.i, label %16

.backedge.i:                                      ; preds = %37, %33, %29, %26, %23, %20, %17, %10, %6
  %14 = tail call i32 @getopt(i32 %1, i8** %argv, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0)) #4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %._crit_edge5.i.loopexit, label %.lr.ph4.i

; <label>:16                                      ; preds = %10
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 115, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.parseArgs, i64 0, i64 0)) #6
  unreachable

; <label>:17                                      ; preds = %.lr.ph4.i
  %18 = load i8*, i8** @optarg, align 8
  %19 = tail call i64 @atol(i8* %18) #5
  store i64 %19, i64* @SUBGR_EDGE_LENGTH, align 8
  br label %.backedge.i

; <label>:20                                      ; preds = %.lr.ph4.i
  %21 = load i8*, i8** @optarg, align 8
  %22 = tail call i64 @atol(i8* %21) #5
  store i64 %22, i64* @MAX_PARAL_EDGES, align 8
  br label %.backedge.i

; <label>:23                                      ; preds = %.lr.ph4.i
  %24 = load i8*, i8** @optarg, align 8
  %25 = tail call i64 @atol(i8* %24) #5
  store i64 %25, i64* @SCALE, align 8
  br label %.backedge.i

; <label>:26                                      ; preds = %.lr.ph4.i
  %27 = load i8*, i8** @optarg, align 8
  %28 = tail call i64 @atol(i8* %27) #5
  store i64 %28, i64* @THREADS, align 8
  br label %.backedge.i

; <label>:29                                      ; preds = %.lr.ph4.i
  %30 = load i8*, i8** @optarg, align 8
  %31 = tail call double @atof(i8* %30) #5
  %32 = fptrunc double %31 to float
  store float %32, float* @PROB_UNIDIRECTIONAL, align 4
  br label %.backedge.i

; <label>:33                                      ; preds = %.lr.ph4.i
  %34 = load i8*, i8** @optarg, align 8
  %35 = tail call double @atof(i8* %34) #5
  %36 = fptrunc double %35 to float
  store float %36, float* @PERC_INT_WEIGHTS, align 4
  br label %.backedge.i

; <label>:37                                      ; preds = %.lr.ph4.i
  %38 = load i32, i32* @opterr, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @opterr, align 4
  br label %.backedge.i

._crit_edge5.i.loopexit:                          ; preds = %.backedge.i
  br label %._crit_edge5.i

._crit_edge5.i:                                   ; preds = %._crit_edge5.i.loopexit, %0
  %40 = load i32, i32* @optind, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %41, %argc
  br i1 %42, label %.lr.ph.i.preheader, label %._crit_edge5.._crit_edge_crit_edge.i

.lr.ph.i.preheader:                               ; preds = %._crit_edge5.i
  br label %.lr.ph.i

._crit_edge5.._crit_edge_crit_edge.i:             ; preds = %._crit_edge5.i
  %.pre.i = load i32, i32* @opterr, align 4
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.02.i = phi i64 [ %49, %.lr.ph.i ], [ %41, %.lr.ph.i.preheader ]
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %44 = getelementptr inbounds i8*, i8** %argv, i64 %i.02.i
  %45 = load i8*, i8** %44, align 8
  %46 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %45) #7
  %47 = load i32, i32* @opterr, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @opterr, align 4
  %49 = add nsw i64 %i.02.i, 1
  %exitcond.i = icmp eq i64 %49, %argc
  br i1 %exitcond.i, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %.lcssa = phi i32 [ %48, %.lr.ph.i ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %._crit_edge5.._crit_edge_crit_edge.i
  %50 = phi i32 [ %.pre.i, %._crit_edge5.._crit_edge_crit_edge.i ], [ %.lcssa, %._crit_edge.i.loopexit ]
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %parseArgs.exit, label %52

; <label>:52                                      ; preds = %._crit_edge.i
  %53 = load i8*, i8** %argv, align 8
  %54 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %53) #4
  %55 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0)) #4
  %56 = load float, float* @PROB_INTERCL_EDGES, align 4
  %57 = fpext float %56 to double
  %58 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), double %57) #4
  %59 = load i64, i64* @K3_DS, align 8
  %60 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i64 %59) #4
  %61 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %62 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i64 %61) #4
  %63 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %64 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i64 %63) #4
  %65 = load i64, i64* @SCALE, align 8
  %66 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i64 %65) #4
  %67 = load i64, i64* @THREADS, align 8
  %68 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i64 0, i64 0), i64 %67) #4
  %69 = load float, float* @PROB_UNIDIRECTIONAL, align 4
  %70 = fpext float %69 to double
  %71 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), double %70) #4
  %72 = load float, float* @PERC_INT_WEIGHTS, align 4
  %73 = fpext float %72 to double
  %74 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i64 0, i64 0), double %73) #4
  tail call void @profiler_print_stats() #4
  tail call void @exit(i32 1) #6
  unreachable

parseArgs.exit:                                   ; preds = %._crit_edge.i
  %75 = load i64, i64* @SCALE, align 8
  %76 = trunc i64 %75 to i32
  %77 = shl i32 1, %76
  %78 = sext i32 %77 to i64
  store i64 %78, i64* @TOT_VERTICES, align 8
  %79 = sdiv i64 %75, 3
  %80 = trunc i64 %79 to i32
  %81 = shl i32 1, %80
  %82 = sext i32 %81 to i64
  store i64 %82, i64* @MAX_CLIQUE_SIZE, align 8
  store i64 %78, i64* @MAX_INT_WEIGHT, align 8
  store i64 %75, i64* @MAX_STRLEN, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** @SOUGHT_STRING, align 8
  store i64 %82, i64* @MAX_CLUSTER_SIZE, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #1

; Function Attrs: nounwind readonly
declare double @atof(i8* nocapture) #2

; Function Attrs: nounwind readonly
declare i64 @atol(i8* nocapture) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #1

declare void @profiler_print_stats()

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn nounwind }
attributes #7 = { cold nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
