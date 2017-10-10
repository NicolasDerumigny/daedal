; ModuleID = '../bin/maze.marked.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.maze = type { %struct.grid*, %struct.queue*, %struct.vector*, %struct.vector*, %struct.vector* }
%struct.grid = type { i64, i64, i64, i64*, i64* }
%struct.queue = type opaque
%struct.vector = type { i64, i64, i8** }
%struct.list_node = type { i8*, %struct.list_node* }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.coordinate = type { i64, i64, i64 }
%struct.pair = type { i8*, i8* }

@.str = private unnamed_addr constant [98 x i8] c"mazePtr->workQueuePtr && mazePtr->wallVectorPtr && mazePtr->srcVectorPtr && mazePtr->dstVectorPtr\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"maze.c\00", align 1
@__PRETTY_FUNCTION__.maze_alloc = private unnamed_addr constant [21 x i8] c"maze_t *maze_alloc()\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Error: Could not read %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c" %c %li %li %li %li %li %li\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"srcPtr\00", align 1
@__PRETTY_FUNCTION__.maze_read = private unnamed_addr constant [33 x i8] c"long maze_read(maze_t *, char *)\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"dstPtr\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"coordinatePairPtr\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"status == TRUE\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Error: line %li of %s invalid\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"Error: Invalid dimensions (%li, %li, %li)\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"gridPtr\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"wall\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"destination\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"Maze dimensions = %li x %li x %li\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Paths to route  = %li\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"\0ARouted Maze:\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"Error: %s (%li, %li, %li) invalid\0A\00", align 1

; Function Attrs: nounwind uwtable
define noalias %struct.maze* @maze_alloc() #0 {
  %1 = tail call noalias i8* @malloc(i64 40) #6
  %2 = bitcast i8* %1 to %struct.maze*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %24, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %1 to %struct.grid**
  store %struct.grid* null, %struct.grid** %5, align 8
  %6 = tail call %struct.queue* @queue_alloc(i64 1024) #6
  %7 = getelementptr inbounds i8, i8* %1, i64 8
  %8 = bitcast i8* %7 to %struct.queue**
  store %struct.queue* %6, %struct.queue** %8, align 8
  %9 = tail call %struct.vector* @vector_alloc(i64 1) #6
  %10 = getelementptr inbounds i8, i8* %1, i64 16
  %11 = bitcast i8* %10 to %struct.vector**
  store %struct.vector* %9, %struct.vector** %11, align 8
  %12 = tail call %struct.vector* @vector_alloc(i64 1) #6
  %13 = getelementptr inbounds i8, i8* %1, i64 24
  %14 = bitcast i8* %13 to %struct.vector**
  store %struct.vector* %12, %struct.vector** %14, align 8
  %15 = tail call %struct.vector* @vector_alloc(i64 1) #6
  %16 = getelementptr inbounds i8, i8* %1, i64 32
  %17 = bitcast i8* %16 to %struct.vector**
  store %struct.vector* %15, %struct.vector** %17, align 8
  %18 = icmp eq %struct.queue* %6, null
  %19 = icmp eq %struct.vector* %9, null
  %or.cond1 = or i1 %18, %19
  br i1 %or.cond1, label %23, label %20

; <label>:20                                      ; preds = %4
  %21 = icmp eq %struct.vector* %12, null
  %22 = icmp eq %struct.vector* %15, null
  %or.cond = or i1 %22, %21
  br i1 %or.cond, label %23, label %24

; <label>:23                                      ; preds = %20, %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 103, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @__PRETTY_FUNCTION__.maze_alloc, i64 0, i64 0)) #7
  unreachable

; <label>:24                                      ; preds = %20, %0
  ret %struct.maze* %2
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.queue* @queue_alloc(i64) #2

declare %struct.vector* @vector_alloc(i64) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind uwtable
define void @maze_free(%struct.maze* nocapture %mazePtr) #0 {
  %1 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 0
  %2 = load %struct.grid*, %struct.grid** %1, align 8
  %3 = icmp eq %struct.grid* %2, null
  br i1 %3, label %5, label %4

; <label>:4                                       ; preds = %0
  tail call void @grid_free(%struct.grid* nonnull %2) #6
  br label %5

; <label>:5                                       ; preds = %0, %4
  %6 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 1
  %7 = load %struct.queue*, %struct.queue** %6, align 8
  tail call void @queue_free(%struct.queue* %7) #6
  %8 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 2
  %9 = load %struct.vector*, %struct.vector** %8, align 8
  tail call void @vector_free(%struct.vector* %9) #6
  %10 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 3
  %11 = load %struct.vector*, %struct.vector** %10, align 8
  tail call void @vector_free(%struct.vector* %11) #6
  %12 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 4
  %13 = load %struct.vector*, %struct.vector** %12, align 8
  tail call void @vector_free(%struct.vector* %13) #6
  %14 = bitcast %struct.maze* %mazePtr to i8*
  tail call void @free(i8* %14) #6
  ret void
}

declare void @grid_free(%struct.grid*) #2

declare void @queue_free(%struct.queue*) #2

declare void @vector_free(%struct.vector*) #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i64 @maze_read(%struct.maze* nocapture %mazePtr, i8* %inputFileName) #0 {
  %line = alloca [256 x i8], align 16
  %code = alloca i8, align 1
  %x1 = alloca i64, align 8
  %y1 = alloca i64, align 8
  %z1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %y2 = alloca i64, align 8
  %z2 = alloca i64, align 8
  %it = alloca %struct.list_node*, align 8
  %1 = tail call %struct._IO_FILE* @fopen(i8* %inputFileName, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %2 = icmp eq %struct._IO_FILE* %1, null
  br i1 %2, label %3, label %6

; <label>:3                                       ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %inputFileName) #8
  tail call void @profiler_print_stats() #6
  tail call void @exit(i32 1) #7
  unreachable

; <label>:6                                       ; preds = %0
  %7 = tail call %struct.list* @list_alloc(i64 (i8*, i8*)* nonnull @coordinate_comparePair) #6
  %8 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 2
  %9 = load %struct.vector*, %struct.vector** %8, align 8
  %10 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 3
  %11 = load %struct.vector*, %struct.vector** %10, align 8
  %12 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 4
  %13 = load %struct.vector*, %struct.vector** %12, align 8
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i64 0, i64 0
  br label %.outer

.outer:                                           ; preds = %27, %6
  %depth.0.ph = phi i64 [ %30, %27 ], [ -1, %6 ]
  %width.0.ph = phi i64 [ %28, %27 ], [ -1, %6 ]
  %height.0.ph = phi i64 [ %29, %27 ], [ -1, %6 ]
  %lineNumber.0.ph = phi i64 [ %.lcssa203, %27 ], [ 0, %6 ]
  %15 = call i8* @fgets(i8* %14, i32 256, %struct._IO_FILE* nonnull %1)
  %16 = icmp eq i8* %15, null
  br i1 %16, label %.outer._crit_edge.loopexit159, label %.lr.ph38.preheader

.lr.ph38.preheader:                               ; preds = %.outer
  br label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph38.preheader, %.backedge
  %lineNumber.037 = phi i64 [ %18, %.backedge ], [ %lineNumber.0.ph, %.lr.ph38.preheader ]
  %17 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %14, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* nonnull %code, i64* nonnull %x1, i64* nonnull %y1, i64* nonnull %z1, i64* nonnull %x2, i64* nonnull %y2, i64* nonnull %z2) #6
  %18 = add nsw i64 %lineNumber.037, 1
  %19 = icmp slt i32 %17, 1
  br i1 %19, label %.backedge, label %22

.backedge:                                        ; preds = %.lr.ph38, %22, %69, %64
  %20 = call i8* @fgets(i8* %14, i32 256, %struct._IO_FILE* nonnull %1)
  %21 = icmp eq i8* %20, null
  br i1 %21, label %.outer._crit_edge.loopexit, label %.lr.ph38

; <label>:22                                      ; preds = %.lr.ph38
  %23 = load i8, i8* %code, align 1
  %24 = sext i8 %23 to i32
  switch i32 %24, label %.loopexit.loopexit [
    i32 35, label %.backedge
    i32 100, label %25
    i32 112, label %34
    i32 119, label %67
  ]

; <label>:25                                      ; preds = %22
  %.lcssa203 = phi i64 [ %18, %22 ]
  %.lcssa197 = phi i32 [ %17, %22 ]
  %26 = icmp eq i32 %.lcssa197, 4
  br i1 %26, label %27, label %.loopexit.loopexit160

; <label>:27                                      ; preds = %25
  %28 = load i64, i64* %x1, align 8
  %29 = load i64, i64* %y1, align 8
  %30 = load i64, i64* %z1, align 8
  %31 = icmp slt i64 %28, 1
  %32 = icmp slt i64 %29, 1
  %or.cond = or i1 %31, %32
  %33 = icmp slt i64 %30, 1
  %or.cond3 = or i1 %or.cond, %33
  br i1 %or.cond3, label %.loopexit.loopexit160, label %.outer

; <label>:34                                      ; preds = %22
  %35 = icmp eq i32 %17, 7
  br i1 %35, label %36, label %.loopexit.loopexit

; <label>:36                                      ; preds = %34
  %37 = load i64, i64* %x1, align 8
  %38 = load i64, i64* %y1, align 8
  %39 = load i64, i64* %z1, align 8
  %40 = call %struct.coordinate* @coordinate_alloc(i64 %37, i64 %38, i64 %39) #6
  %41 = load i64, i64* %x2, align 8
  %42 = load i64, i64* %y2, align 8
  %43 = load i64, i64* %z2, align 8
  %44 = call %struct.coordinate* @coordinate_alloc(i64 %41, i64 %42, i64 %43) #6
  %45 = icmp eq %struct.coordinate* %40, null
  br i1 %45, label %46, label %47

; <label>:46                                      ; preds = %36
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 216, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.maze_read, i64 0, i64 0)) #7
  unreachable

; <label>:47                                      ; preds = %36
  %48 = icmp eq %struct.coordinate* %44, null
  br i1 %48, label %49, label %50

; <label>:49                                      ; preds = %47
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 217, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.maze_read, i64 0, i64 0)) #7
  unreachable

; <label>:50                                      ; preds = %47
  %51 = call i64 @coordinate_isEqual(%struct.coordinate* nonnull %40, %struct.coordinate* nonnull %44) #6
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %.loopexit.loopexit

; <label>:53                                      ; preds = %50
  %54 = bitcast %struct.coordinate* %40 to i8*
  %55 = bitcast %struct.coordinate* %44 to i8*
  %56 = call %struct.pair* @pair_alloc(i8* %54, i8* %55) #6
  %57 = icmp eq %struct.pair* %56, null
  br i1 %57, label %58, label %59

; <label>:58                                      ; preds = %53
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 222, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.maze_read, i64 0, i64 0)) #7
  unreachable

; <label>:59                                      ; preds = %53
  %60 = bitcast %struct.pair* %56 to i8*
  %61 = call i64 @list_insert(%struct.list* %7, i8* %60) #6
  %62 = icmp eq i64 %61, 1
  br i1 %62, label %64, label %63

; <label>:63                                      ; preds = %59
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 224, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.maze_read, i64 0, i64 0)) #7
  unreachable

; <label>:64                                      ; preds = %59
  %65 = call i64 @vector_pushBack(%struct.vector* %11, i8* %54) #6
  %66 = call i64 @vector_pushBack(%struct.vector* %13, i8* %55) #6
  br label %.backedge

; <label>:67                                      ; preds = %22
  %68 = icmp eq i32 %17, 4
  br i1 %68, label %69, label %.loopexit.loopexit

; <label>:69                                      ; preds = %67
  %70 = load i64, i64* %x1, align 8
  %71 = load i64, i64* %y1, align 8
  %72 = load i64, i64* %z1, align 8
  %73 = call %struct.coordinate* @coordinate_alloc(i64 %70, i64 %71, i64 %72) #6
  %74 = bitcast %struct.coordinate* %73 to i8*
  %75 = call i64 @vector_pushBack(%struct.vector* %9, i8* %74) #6
  br label %.backedge

.loopexit.loopexit:                               ; preds = %22, %67, %34, %50
  %.lcssa = phi i64 [ %18, %22 ], [ %18, %67 ], [ %18, %34 ], [ %18, %50 ]
  br label %.loopexit

.loopexit.loopexit160:                            ; preds = %27, %25
  %.lcssa203.lcssa = phi i64 [ %.lcssa203, %27 ], [ %.lcssa203, %25 ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit160, %.loopexit.loopexit
  %76 = phi i64 [ %.lcssa203.lcssa, %.loopexit.loopexit160 ], [ %.lcssa, %.loopexit.loopexit ]
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i64 %76, i8* %inputFileName) #8
  call void @profiler_print_stats() #6
  call void @exit(i32 1) #7
  unreachable

.outer._crit_edge.loopexit:                       ; preds = %.backedge
  %height.0.ph.lcssa231 = phi i64 [ %height.0.ph, %.backedge ]
  %width.0.ph.lcssa223 = phi i64 [ %width.0.ph, %.backedge ]
  %depth.0.ph.lcssa215 = phi i64 [ %depth.0.ph, %.backedge ]
  br label %.outer._crit_edge

.outer._crit_edge.loopexit159:                    ; preds = %.outer
  %height.0.ph.lcssa = phi i64 [ %height.0.ph, %.outer ]
  %width.0.ph.lcssa = phi i64 [ %width.0.ph, %.outer ]
  %depth.0.ph.lcssa = phi i64 [ %depth.0.ph, %.outer ]
  br label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer._crit_edge.loopexit159, %.outer._crit_edge.loopexit
  %height.0.ph232 = phi i64 [ %height.0.ph.lcssa, %.outer._crit_edge.loopexit159 ], [ %height.0.ph.lcssa231, %.outer._crit_edge.loopexit ]
  %width.0.ph224 = phi i64 [ %width.0.ph.lcssa, %.outer._crit_edge.loopexit159 ], [ %width.0.ph.lcssa223, %.outer._crit_edge.loopexit ]
  %depth.0.ph216 = phi i64 [ %depth.0.ph.lcssa, %.outer._crit_edge.loopexit159 ], [ %depth.0.ph.lcssa215, %.outer._crit_edge.loopexit ]
  %79 = icmp slt i64 %width.0.ph224, 1
  %80 = icmp slt i64 %height.0.ph232, 1
  %or.cond5 = or i1 %79, %80
  %81 = icmp slt i64 %depth.0.ph216, 1
  %or.cond7 = or i1 %81, %or.cond5
  br i1 %or.cond7, label %82, label %85

; <label>:82                                      ; preds = %.outer._crit_edge
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i64 %width.0.ph224, i64 %height.0.ph232, i64 %depth.0.ph216) #8
  call void @profiler_print_stats() #6
  call void @exit(i32 1) #7
  unreachable

; <label>:85                                      ; preds = %.outer._crit_edge
  %86 = call %struct.grid* @grid_alloc(i64 %width.0.ph224, i64 %height.0.ph232, i64 %depth.0.ph216) #6
  %87 = icmp eq %struct.grid* %86, null
  br i1 %87, label %88, label %89

; <label>:88                                      ; preds = %85
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 256, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.maze_read, i64 0, i64 0)) #7
  unreachable

; <label>:89                                      ; preds = %85
  %90 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 0
  store %struct.grid* %86, %struct.grid** %90, align 8
  call fastcc void @addToGrid(%struct.grid* nonnull %86, %struct.vector* %9, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  call fastcc void @addToGrid(%struct.grid* nonnull %86, %struct.vector* %11, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  call fastcc void @addToGrid(%struct.grid* nonnull %86, %struct.vector* %13, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %91 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i64 %width.0.ph224, i64 %height.0.ph232, i64 %depth.0.ph216)
  %92 = call i64 @list_getSize(%struct.list* %7) #6
  %93 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i64 %92)
  %94 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 1
  %95 = load %struct.queue*, %struct.queue** %94, align 8
  call void @list_iter_reset(%struct.list_node** nonnull %it, %struct.list* %7) #6
  %96 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %7) #9
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %89
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %98 = call i8* @list_iter_next(%struct.list_node** nonnull %it, %struct.list* %7) #6
  %99 = call i64 @queue_push(%struct.queue* %95, i8* %98) #6
  %100 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %7) #9
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %89
  call void @list_free(%struct.list* %7) #6
  %102 = call i64 @vector_getSize(%struct.vector* %11) #6
  ret i64 %102
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #1

declare void @profiler_print_stats()

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare %struct.list* @list_alloc(i64 (i8*, i8*)*) #2

declare i64 @coordinate_comparePair(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #1

declare %struct.coordinate* @coordinate_alloc(i64, i64, i64) #2

declare i64 @coordinate_isEqual(%struct.coordinate*, %struct.coordinate*) #2

declare %struct.pair* @pair_alloc(i8*, i8*) #2

declare i64 @list_insert(%struct.list*, i8*) #2

declare i64 @vector_pushBack(%struct.vector*, i8*) #2

declare %struct.grid* @grid_alloc(i64, i64, i64) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @addToGrid(%struct.grid* %gridPtr, %struct.vector* %vectorPtr, i8* %type) unnamed_addr #0 {
  %1 = tail call i64 @vector_getSize(%struct.vector* %vectorPtr) #6
  %2 = icmp sgt i64 %1, 0
  br i1 %2, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

; <label>:3                                       ; preds = %.lr.ph
  %4 = icmp slt i64 %16, %1
  br i1 %4, label %.lr.ph, label %._crit_edge.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %3
  %i.03 = phi i64 [ %16, %3 ], [ 0, %.lr.ph.preheader ]
  %5 = tail call i8* @vector_at(%struct.vector* %vectorPtr, i64 %i.03) #6
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds i8, i8* %5, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i8, i8* %5, i64 16
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = tail call i64 @grid_isPointValid(%struct.grid* %gridPtr, i64 %7, i64 %10, i64 %13) #6
  %15 = icmp eq i64 %14, 0
  %16 = add nuw nsw i64 %i.03, 1
  br i1 %15, label %17, label %3

; <label>:17                                      ; preds = %.lr.ph
  %.lcssa27 = phi i64* [ %12, %.lr.ph ]
  %.lcssa25 = phi i64* [ %9, %.lr.ph ]
  %.lcssa = phi i64* [ %6, %.lr.ph ]
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i64, i64* %.lcssa, align 8
  %20 = load i64, i64* %.lcssa25, align 8
  %21 = load i64, i64* %.lcssa27, align 8
  %22 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0), i8* %type, i64 %19, i64 %20, i64 %21) #8
  tail call void @profiler_print_stats() #6
  tail call void @exit(i32 1) #7
  unreachable

._crit_edge.loopexit:                             ; preds = %3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  tail call void @grid_addPath(%struct.grid* %gridPtr, %struct.vector* %vectorPtr) #6
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

declare i64 @list_getSize(%struct.list*) #2

declare void @list_iter_reset(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind readonly
declare i64 @list_iter_hasNext(%struct.list_node**, %struct.list*) #4

declare i8* @list_iter_next(%struct.list_node**, %struct.list*) #2

declare i64 @queue_push(%struct.queue*, i8*) #2

declare void @list_free(%struct.list*) #2

declare i64 @vector_getSize(%struct.vector*) #2

; Function Attrs: nounwind uwtable
define i64 @maze_checkPaths(%struct.maze* nocapture readonly %mazePtr, %struct.list* %pathVectorListPtr, i64 %doPrintPaths) #0 {
  %it = alloca %struct.list_node*, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %z = alloca i64, align 8
  %prevCoordinate = alloca %struct.coordinate, align 8
  %currCoordinate = alloca %struct.coordinate, align 8
  %1 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 0
  %2 = load %struct.grid*, %struct.grid** %1, align 8
  %3 = getelementptr inbounds %struct.grid, %struct.grid* %2, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct.grid, %struct.grid* %2, i64 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %struct.grid, %struct.grid* %2, i64 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = tail call %struct.grid* @grid_alloc(i64 %4, i64 %6, i64 %8) #6
  %10 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 2
  %11 = load %struct.vector*, %struct.vector** %10, align 8
  tail call void @grid_addPath(%struct.grid* %9, %struct.vector* %11) #6
  %12 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 3
  %13 = load %struct.vector*, %struct.vector** %12, align 8
  %14 = tail call i64 @vector_getSize(%struct.vector* %13) #6
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %.lr.ph23.preheader, label %._crit_edge24

.lr.ph23.preheader:                               ; preds = %0
  br label %.lr.ph23

.lr.ph23:                                         ; preds = %.lr.ph23.preheader, %.lr.ph23
  %i.021 = phi i64 [ %25, %.lr.ph23 ], [ 0, %.lr.ph23.preheader ]
  %16 = tail call i8* @vector_at(%struct.vector* %13, i64 %i.021) #6
  %17 = bitcast i8* %16 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i8, i8* %16, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i8, i8* %16, i64 16
  %23 = bitcast i8* %22 to i64*
  %24 = load i64, i64* %23, align 8
  tail call void @grid_setPoint(%struct.grid* %9, i64 %18, i64 %21, i64 %24, i64 0) #6
  %25 = add nuw nsw i64 %i.021, 1
  %exitcond31 = icmp eq i64 %25, %14
  br i1 %exitcond31, label %._crit_edge24.loopexit, label %.lr.ph23

._crit_edge24.loopexit:                           ; preds = %.lr.ph23
  br label %._crit_edge24

._crit_edge24:                                    ; preds = %._crit_edge24.loopexit, %0
  %26 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 4
  %27 = load %struct.vector*, %struct.vector** %26, align 8
  %28 = tail call i64 @vector_getSize(%struct.vector* %27) #6
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %.lr.ph19.preheader, label %._crit_edge20

.lr.ph19.preheader:                               ; preds = %._crit_edge24
  br label %.lr.ph19

.lr.ph19:                                         ; preds = %.lr.ph19.preheader, %.lr.ph19
  %i.117 = phi i64 [ %39, %.lr.ph19 ], [ 0, %.lr.ph19.preheader ]
  %30 = tail call i8* @vector_at(%struct.vector* %27, i64 %i.117) #6
  %31 = bitcast i8* %30 to i64*
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i8, i8* %30, i64 8
  %34 = bitcast i8* %33 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i8, i8* %30, i64 16
  %37 = bitcast i8* %36 to i64*
  %38 = load i64, i64* %37, align 8
  tail call void @grid_setPoint(%struct.grid* %9, i64 %32, i64 %35, i64 %38, i64 0) #6
  %39 = add nuw nsw i64 %i.117, 1
  %exitcond = icmp eq i64 %39, %28
  br i1 %exitcond, label %._crit_edge20.loopexit, label %.lr.ph19

._crit_edge20.loopexit:                           ; preds = %.lr.ph19
  br label %._crit_edge20

._crit_edge20:                                    ; preds = %._crit_edge20.loopexit, %._crit_edge24
  call void @list_iter_reset(%struct.list_node** nonnull %it, %struct.list* %pathVectorListPtr) #6
  %40 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %pathVectorListPtr) #9
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %._crit_edge16, label %.lr.ph15

.lr.ph15:                                         ; preds = %._crit_edge20
  %42 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %prevCoordinate, i64 0, i32 0
  %43 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %prevCoordinate, i64 0, i32 1
  %44 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %prevCoordinate, i64 0, i32 2
  %45 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %currCoordinate, i64 0, i32 0
  %46 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %currCoordinate, i64 0, i32 1
  %47 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %currCoordinate, i64 0, i32 2
  %48 = bitcast %struct.coordinate* %prevCoordinate to i8*
  %49 = bitcast %struct.coordinate* %currCoordinate to i8*
  br label %52

.loopexit.loopexit:                               ; preds = %57
  %.lcssa55 = phi i64 [ %59, %57 ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %52
  %id.1.lcssa = phi i64 [ %id.013, %52 ], [ %.lcssa55, %.loopexit.loopexit ]
  %50 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %pathVectorListPtr) #9
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %._crit_edge16.loopexit, label %52

; <label>:52                                      ; preds = %.lr.ph15, %.loopexit
  %id.013 = phi i64 [ 0, %.lr.ph15 ], [ %id.1.lcssa, %.loopexit ]
  %53 = call i8* @list_iter_next(%struct.list_node** nonnull %it, %struct.list* %pathVectorListPtr) #6
  %54 = bitcast i8* %53 to %struct.vector*
  %55 = call i64 @vector_getSize(%struct.vector* %54) #6
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %.lr.ph11.preheader, label %.loopexit

.lr.ph11.preheader:                               ; preds = %52
  br label %.lr.ph11

; <label>:57                                      ; preds = %._crit_edge
  %58 = icmp slt i64 %97, %55
  br i1 %58, label %.lr.ph11, label %.loopexit.loopexit

.lr.ph11:                                         ; preds = %.lr.ph11.preheader, %57
  %id.19 = phi i64 [ %59, %57 ], [ %id.013, %.lr.ph11.preheader ]
  %i1.08 = phi i64 [ %97, %57 ], [ 0, %.lr.ph11.preheader ]
  %59 = add nsw i64 %id.19, 1
  %60 = call i8* @vector_at(%struct.vector* %54, i64 %i1.08) #6
  %61 = bitcast i8* %60 to %struct.vector*
  %62 = call i8* @vector_at(%struct.vector* %61, i64 0) #6
  %63 = bitcast i8* %62 to i64*
  call void @grid_getPointIndices(%struct.grid* %2, i64* %63, i64* nonnull %x, i64* nonnull %y, i64* nonnull %z) #6
  %64 = load i64, i64* %x, align 8
  %65 = load i64, i64* %y, align 8
  %66 = load i64, i64* %z, align 8
  %67 = call i64 @grid_getPoint(%struct.grid* %9, i64 %64, i64 %65, i64 %66) #6
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %70, label %69

; <label>:69                                      ; preds = %.lr.ph11
  call void @grid_free(%struct.grid* %9) #6
  br label %103

; <label>:70                                      ; preds = %.lr.ph11
  call void @grid_getPointIndices(%struct.grid* %2, i64* %63, i64* %42, i64* %43, i64* %44) #6
  %71 = call i64 @vector_getSize(%struct.vector* %61) #6
  %72 = add nsw i64 %71, -1
  %73 = icmp sgt i64 %72, 1
  %74 = call i8* @vector_at(%struct.vector* %61, i64 1) #6
  %75 = bitcast i8* %74 to i64*
  br i1 %73, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %70
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %87
  %76 = phi i64* [ %91, %87 ], [ %75, %.lr.ph.preheader ]
  %j.07 = phi i64 [ %88, %87 ], [ 1, %.lr.ph.preheader ]
  call void @grid_getPointIndices(%struct.grid* %2, i64* %76, i64* %45, i64* %46, i64* %47) #6
  %77 = call i64 @coordinate_areAdjacent(%struct.coordinate* nonnull %currCoordinate, %struct.coordinate* nonnull %prevCoordinate) #6
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

; <label>:79                                      ; preds = %.lr.ph
  call void @grid_free(%struct.grid* %9) #6
  br label %103

; <label>:80                                      ; preds = %.lr.ph
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 24, i32 8, i1 false)
  %81 = load i64, i64* %45, align 8
  %82 = load i64, i64* %46, align 8
  %83 = load i64, i64* %47, align 8
  %84 = call i64 @grid_getPoint(%struct.grid* %9, i64 %81, i64 %82, i64 %83) #6
  %85 = icmp eq i64 %84, -1
  br i1 %85, label %87, label %86

; <label>:86                                      ; preds = %80
  call void @grid_free(%struct.grid* %9) #6
  br label %103

; <label>:87                                      ; preds = %80
  call void @grid_setPoint(%struct.grid* %9, i64 %81, i64 %82, i64 %83, i64 %59) #6
  %88 = add nuw nsw i64 %j.07, 1
  %89 = icmp slt i64 %88, %72
  %90 = call i8* @vector_at(%struct.vector* %61, i64 %88) #6
  %91 = bitcast i8* %90 to i64*
  br i1 %89, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %87
  %.lcssa50 = phi i64* [ %91, %87 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %70
  %.lcssa = phi i64* [ %75, %70 ], [ %.lcssa50, %._crit_edge.loopexit ]
  call void @grid_getPointIndices(%struct.grid* %2, i64* %.lcssa, i64* nonnull %x, i64* nonnull %y, i64* nonnull %z) #6
  %92 = load i64, i64* %x, align 8
  %93 = load i64, i64* %y, align 8
  %94 = load i64, i64* %z, align 8
  %95 = call i64 @grid_getPoint(%struct.grid* %9, i64 %92, i64 %93, i64 %94) #6
  %96 = icmp eq i64 %95, 0
  %97 = add nuw nsw i64 %i1.08, 1
  br i1 %96, label %57, label %98

; <label>:98                                      ; preds = %._crit_edge
  call void @grid_free(%struct.grid* %9) #6
  br label %103

._crit_edge16.loopexit:                           ; preds = %.loopexit
  br label %._crit_edge16

._crit_edge16:                                    ; preds = %._crit_edge16.loopexit, %._crit_edge20
  %99 = icmp eq i64 %doPrintPaths, 0
  br i1 %99, label %102, label %100

; <label>:100                                     ; preds = %._crit_edge16
  %101 = call i32 @puts(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  call void @grid_print(%struct.grid* %9) #6
  br label %102

; <label>:102                                     ; preds = %._crit_edge16, %100
  call void @grid_free(%struct.grid* %9) #6
  br label %103

; <label>:103                                     ; preds = %102, %98, %86, %79, %69
  %.0 = phi i64 [ 0, %69 ], [ 0, %86 ], [ 0, %79 ], [ 0, %98 ], [ 1, %102 ]
  ret i64 %.0
}

declare void @grid_addPath(%struct.grid*, %struct.vector*) #2

declare i8* @vector_at(%struct.vector*, i64) #2

declare void @grid_setPoint(%struct.grid*, i64, i64, i64, i64) #2

declare void @grid_getPointIndices(%struct.grid*, i64*, i64*, i64*, i64*) #2

declare i64 @grid_getPoint(%struct.grid*, i64, i64, i64) #2

declare i64 @coordinate_areAdjacent(%struct.coordinate*, %struct.coordinate*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #1

declare void @grid_print(%struct.grid*) #2

declare i64 @grid_isPointValid(%struct.grid*, i64, i64, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { cold }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
