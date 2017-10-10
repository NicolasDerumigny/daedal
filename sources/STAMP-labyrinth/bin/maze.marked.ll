; ModuleID = '../bin/maze.stats.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.maze = type { %struct.grid*, %struct.queue*, %struct.vector*, %struct.vector*, %struct.vector* }
%struct.grid = type { i64, i64, i64, i64*, i64* }
%struct.queue = type opaque
%struct.vector = type { i64, i64, i8** }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.list_node = type { i8*, %struct.list_node* }
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
define %struct.maze* @maze_alloc() #0 {
  %mazePtr = alloca %struct.maze*, align 8
  %1 = call noalias i8* @malloc(i64 40) #6
  %2 = bitcast i8* %1 to %struct.maze*
  store %struct.maze* %2, %struct.maze** %mazePtr, align 8
  %3 = load %struct.maze*, %struct.maze** %mazePtr, align 8
  %4 = icmp ne %struct.maze* %3, null
  br i1 %4, label %5, label %43

; <label>:5                                       ; preds = %0
  %6 = load %struct.maze*, %struct.maze** %mazePtr, align 8
  %7 = getelementptr inbounds %struct.maze, %struct.maze* %6, i32 0, i32 0
  store %struct.grid* null, %struct.grid** %7, align 8
  %8 = call %struct.queue* @queue_alloc(i64 1024)
  %9 = load %struct.maze*, %struct.maze** %mazePtr, align 8
  %10 = getelementptr inbounds %struct.maze, %struct.maze* %9, i32 0, i32 1
  store %struct.queue* %8, %struct.queue** %10, align 8
  %11 = call %struct.vector* @vector_alloc(i64 1)
  %12 = load %struct.maze*, %struct.maze** %mazePtr, align 8
  %13 = getelementptr inbounds %struct.maze, %struct.maze* %12, i32 0, i32 2
  store %struct.vector* %11, %struct.vector** %13, align 8
  %14 = call %struct.vector* @vector_alloc(i64 1)
  %15 = load %struct.maze*, %struct.maze** %mazePtr, align 8
  %16 = getelementptr inbounds %struct.maze, %struct.maze* %15, i32 0, i32 3
  store %struct.vector* %14, %struct.vector** %16, align 8
  %17 = call %struct.vector* @vector_alloc(i64 1)
  %18 = load %struct.maze*, %struct.maze** %mazePtr, align 8
  %19 = getelementptr inbounds %struct.maze, %struct.maze* %18, i32 0, i32 4
  store %struct.vector* %17, %struct.vector** %19, align 8
  %20 = load %struct.maze*, %struct.maze** %mazePtr, align 8
  %21 = getelementptr inbounds %struct.maze, %struct.maze* %20, i32 0, i32 1
  %22 = load %struct.queue*, %struct.queue** %21, align 8
  %23 = icmp ne %struct.queue* %22, null
  br i1 %23, label %24, label %40

; <label>:24                                      ; preds = %5
  %25 = load %struct.maze*, %struct.maze** %mazePtr, align 8
  %26 = getelementptr inbounds %struct.maze, %struct.maze* %25, i32 0, i32 2
  %27 = load %struct.vector*, %struct.vector** %26, align 8
  %28 = icmp ne %struct.vector* %27, null
  br i1 %28, label %29, label %40

; <label>:29                                      ; preds = %24
  %30 = load %struct.maze*, %struct.maze** %mazePtr, align 8
  %31 = getelementptr inbounds %struct.maze, %struct.maze* %30, i32 0, i32 3
  %32 = load %struct.vector*, %struct.vector** %31, align 8
  %33 = icmp ne %struct.vector* %32, null
  br i1 %33, label %34, label %40

; <label>:34                                      ; preds = %29
  %35 = load %struct.maze*, %struct.maze** %mazePtr, align 8
  %36 = getelementptr inbounds %struct.maze, %struct.maze* %35, i32 0, i32 4
  %37 = load %struct.vector*, %struct.vector** %36, align 8
  %38 = icmp ne %struct.vector* %37, null
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %34
  br label %42

; <label>:40                                      ; preds = %34, %29, %24, %5
  call void @__assert_fail(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 103, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__PRETTY_FUNCTION__.maze_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %42

; <label>:42                                      ; preds = %41, %39
  br label %43

; <label>:43                                      ; preds = %42, %0
  %44 = load %struct.maze*, %struct.maze** %mazePtr, align 8
  ret %struct.maze* %44
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.queue* @queue_alloc(i64) #2

declare %struct.vector* @vector_alloc(i64) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind uwtable
define void @maze_free(%struct.maze* %mazePtr) #0 {
  %1 = alloca %struct.maze*, align 8
  store %struct.maze* %mazePtr, %struct.maze** %1, align 8
  %2 = load %struct.maze*, %struct.maze** %1, align 8
  %3 = getelementptr inbounds %struct.maze, %struct.maze* %2, i32 0, i32 0
  %4 = load %struct.grid*, %struct.grid** %3, align 8
  %5 = icmp ne %struct.grid* %4, null
  br i1 %5, label %6, label %10

; <label>:6                                       ; preds = %0
  %7 = load %struct.maze*, %struct.maze** %1, align 8
  %8 = getelementptr inbounds %struct.maze, %struct.maze* %7, i32 0, i32 0
  %9 = load %struct.grid*, %struct.grid** %8, align 8
  call void @grid_free(%struct.grid* %9)
  br label %10

; <label>:10                                      ; preds = %6, %0
  %11 = load %struct.maze*, %struct.maze** %1, align 8
  %12 = getelementptr inbounds %struct.maze, %struct.maze* %11, i32 0, i32 1
  %13 = load %struct.queue*, %struct.queue** %12, align 8
  call void @queue_free(%struct.queue* %13)
  %14 = load %struct.maze*, %struct.maze** %1, align 8
  %15 = getelementptr inbounds %struct.maze, %struct.maze* %14, i32 0, i32 2
  %16 = load %struct.vector*, %struct.vector** %15, align 8
  call void @vector_free(%struct.vector* %16)
  %17 = load %struct.maze*, %struct.maze** %1, align 8
  %18 = getelementptr inbounds %struct.maze, %struct.maze* %17, i32 0, i32 3
  %19 = load %struct.vector*, %struct.vector** %18, align 8
  call void @vector_free(%struct.vector* %19)
  %20 = load %struct.maze*, %struct.maze** %1, align 8
  %21 = getelementptr inbounds %struct.maze, %struct.maze* %20, i32 0, i32 4
  %22 = load %struct.vector*, %struct.vector** %21, align 8
  call void @vector_free(%struct.vector* %22)
  %23 = load %struct.maze*, %struct.maze** %1, align 8
  %24 = bitcast %struct.maze* %23 to i8*
  call void @free(i8* %24) #6
  ret void
}

declare void @grid_free(%struct.grid*) #2

declare void @queue_free(%struct.queue*) #2

declare void @vector_free(%struct.vector*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i64 @maze_read(%struct.maze* %mazePtr, i8* %inputFileName) #0 {
  %1 = alloca %struct.maze*, align 8
  %2 = alloca i8*, align 8
  %inputFile = alloca %struct._IO_FILE*, align 8
  %lineNumber = alloca i64, align 8
  %height = alloca i64, align 8
  %width = alloca i64, align 8
  %depth = alloca i64, align 8
  %line = alloca [256 x i8], align 16
  %workListPtr = alloca %struct.list*, align 8
  %wallVectorPtr = alloca %struct.vector*, align 8
  %srcVectorPtr = alloca %struct.vector*, align 8
  %dstVectorPtr = alloca %struct.vector*, align 8
  %code = alloca i8, align 1
  %x1 = alloca i64, align 8
  %y1 = alloca i64, align 8
  %z1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %y2 = alloca i64, align 8
  %z2 = alloca i64, align 8
  %numToken = alloca i64, align 8
  %srcPtr = alloca %struct.coordinate*, align 8
  %dstPtr = alloca %struct.coordinate*, align 8
  %coordinatePairPtr = alloca %struct.pair*, align 8
  %status = alloca i64, align 8
  %wallPtr = alloca %struct.coordinate*, align 8
  %gridPtr = alloca %struct.grid*, align 8
  %workQueuePtr = alloca %struct.queue*, align 8
  %it = alloca %struct.list_node*, align 8
  %coordinatePairPtr1 = alloca %struct.pair*, align 8
  store %struct.maze* %mazePtr, %struct.maze** %1, align 8
  store i8* %inputFileName, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %4, %struct._IO_FILE** %inputFile, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %inputFile, align 8
  %6 = icmp ne %struct._IO_FILE* %5, null
  br i1 %6, label %11, label %7

; <label>:7                                       ; preds = %0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i8* %9)
  call void @profiler_print_stats()
  call void @exit(i32 1) #7
  unreachable

; <label>:11                                      ; preds = %0
  store i64 0, i64* %lineNumber, align 8
  store i64 -1, i64* %height, align 8
  store i64 -1, i64* %width, align 8
  store i64 -1, i64* %depth, align 8
  %12 = call %struct.list* @list_alloc(i64 (i8*, i8*)* @coordinate_comparePair)
  store %struct.list* %12, %struct.list** %workListPtr, align 8
  %13 = load %struct.maze*, %struct.maze** %1, align 8
  %14 = getelementptr inbounds %struct.maze, %struct.maze* %13, i32 0, i32 2
  %15 = load %struct.vector*, %struct.vector** %14, align 8
  store %struct.vector* %15, %struct.vector** %wallVectorPtr, align 8
  %16 = load %struct.maze*, %struct.maze** %1, align 8
  %17 = getelementptr inbounds %struct.maze, %struct.maze* %16, i32 0, i32 3
  %18 = load %struct.vector*, %struct.vector** %17, align 8
  store %struct.vector* %18, %struct.vector** %srcVectorPtr, align 8
  %19 = load %struct.maze*, %struct.maze** %1, align 8
  %20 = getelementptr inbounds %struct.maze, %struct.maze* %19, i32 0, i32 4
  %21 = load %struct.vector*, %struct.vector** %20, align 8
  store %struct.vector* %21, %struct.vector** %dstVectorPtr, align 8
  br label %22

; <label>:22                                      ; preds = %137, %35, %11
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i32 0
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %inputFile, align 8
  %25 = call i8* @fgets(i8* %23, i32 256, %struct._IO_FILE* %24)
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %138

; <label>:27                                      ; preds = %22
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i32 0
  %29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i8* %code, i64* %x1, i64* %y1, i64* %z1, i64* %x2, i64* %y2, i64* %z2) #6
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %numToken, align 8
  %31 = load i64, i64* %lineNumber, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %lineNumber, align 8
  %33 = load i64, i64* %numToken, align 8
  %34 = icmp slt i64 %33, 1
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %27
  br label %22

; <label>:36                                      ; preds = %27
  %37 = load i8, i8* %code, align 1
  %38 = sext i8 %37 to i32
  switch i32 %38, label %132 [
    i32 35, label %39
    i32 100, label %40
    i32 112, label %58
    i32 119, label %118
  ]

; <label>:39                                      ; preds = %36
  br label %137

; <label>:40                                      ; preds = %36
  %41 = load i64, i64* %numToken, align 8
  %42 = icmp ne i64 %41, 4
  br i1 %42, label %43, label %44

; <label>:43                                      ; preds = %40
  br label %131

; <label>:44                                      ; preds = %40
  %45 = load i64, i64* %x1, align 8
  store i64 %45, i64* %width, align 8
  %46 = load i64, i64* %y1, align 8
  store i64 %46, i64* %height, align 8
  %47 = load i64, i64* %z1, align 8
  store i64 %47, i64* %depth, align 8
  %48 = load i64, i64* %width, align 8
  %49 = icmp slt i64 %48, 1
  br i1 %49, label %56, label %50

; <label>:50                                      ; preds = %44
  %51 = load i64, i64* %height, align 8
  %52 = icmp slt i64 %51, 1
  br i1 %52, label %56, label %53

; <label>:53                                      ; preds = %50
  %54 = load i64, i64* %depth, align 8
  %55 = icmp slt i64 %54, 1
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %53, %50, %44
  br label %131

; <label>:57                                      ; preds = %53
  br label %137

; <label>:58                                      ; preds = %36
  %59 = load i64, i64* %numToken, align 8
  %60 = icmp ne i64 %59, 7
  br i1 %60, label %61, label %62

; <label>:61                                      ; preds = %58
  br label %131

; <label>:62                                      ; preds = %58
  %63 = load i64, i64* %x1, align 8
  %64 = load i64, i64* %y1, align 8
  %65 = load i64, i64* %z1, align 8
  %66 = call %struct.coordinate* @coordinate_alloc(i64 %63, i64 %64, i64 %65)
  store %struct.coordinate* %66, %struct.coordinate** %srcPtr, align 8
  %67 = load i64, i64* %x2, align 8
  %68 = load i64, i64* %y2, align 8
  %69 = load i64, i64* %z2, align 8
  %70 = call %struct.coordinate* @coordinate_alloc(i64 %67, i64 %68, i64 %69)
  store %struct.coordinate* %70, %struct.coordinate** %dstPtr, align 8
  %71 = load %struct.coordinate*, %struct.coordinate** %srcPtr, align 8
  %72 = icmp ne %struct.coordinate* %71, null
  br i1 %72, label %73, label %74

; <label>:73                                      ; preds = %62
  br label %76

; <label>:74                                      ; preds = %62
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 216, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.maze_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %76

; <label>:76                                      ; preds = %75, %73
  %77 = load %struct.coordinate*, %struct.coordinate** %dstPtr, align 8
  %78 = icmp ne %struct.coordinate* %77, null
  br i1 %78, label %79, label %80

; <label>:79                                      ; preds = %76
  br label %82

; <label>:80                                      ; preds = %76
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 217, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.maze_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %82

; <label>:82                                      ; preds = %81, %79
  %83 = load %struct.coordinate*, %struct.coordinate** %srcPtr, align 8
  %84 = load %struct.coordinate*, %struct.coordinate** %dstPtr, align 8
  %85 = call i64 @coordinate_isEqual(%struct.coordinate* %83, %struct.coordinate* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

; <label>:87                                      ; preds = %82
  br label %131

; <label>:88                                      ; preds = %82
  %89 = load %struct.coordinate*, %struct.coordinate** %srcPtr, align 8
  %90 = bitcast %struct.coordinate* %89 to i8*
  %91 = load %struct.coordinate*, %struct.coordinate** %dstPtr, align 8
  %92 = bitcast %struct.coordinate* %91 to i8*
  %93 = call %struct.pair* @pair_alloc(i8* %90, i8* %92)
  store %struct.pair* %93, %struct.pair** %coordinatePairPtr, align 8
  %94 = load %struct.pair*, %struct.pair** %coordinatePairPtr, align 8
  %95 = icmp ne %struct.pair* %94, null
  br i1 %95, label %96, label %97

; <label>:96                                      ; preds = %88
  br label %99

; <label>:97                                      ; preds = %88
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 222, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.maze_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %99

; <label>:99                                      ; preds = %98, %96
  %100 = load %struct.list*, %struct.list** %workListPtr, align 8
  %101 = load %struct.pair*, %struct.pair** %coordinatePairPtr, align 8
  %102 = bitcast %struct.pair* %101 to i8*
  %103 = call i64 @list_insert(%struct.list* %100, i8* %102)
  store i64 %103, i64* %status, align 8
  %104 = load i64, i64* %status, align 8
  %105 = icmp eq i64 %104, 1
  br i1 %105, label %106, label %107

; <label>:106                                     ; preds = %99
  br label %109

; <label>:107                                     ; preds = %99
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 224, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.maze_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %109

; <label>:109                                     ; preds = %108, %106
  %110 = load %struct.vector*, %struct.vector** %srcVectorPtr, align 8
  %111 = load %struct.coordinate*, %struct.coordinate** %srcPtr, align 8
  %112 = bitcast %struct.coordinate* %111 to i8*
  %113 = call i64 @vector_pushBack(%struct.vector* %110, i8* %112)
  %114 = load %struct.vector*, %struct.vector** %dstVectorPtr, align 8
  %115 = load %struct.coordinate*, %struct.coordinate** %dstPtr, align 8
  %116 = bitcast %struct.coordinate* %115 to i8*
  %117 = call i64 @vector_pushBack(%struct.vector* %114, i8* %116)
  br label %137

; <label>:118                                     ; preds = %36
  %119 = load i64, i64* %numToken, align 8
  %120 = icmp ne i64 %119, 4
  br i1 %120, label %121, label %122

; <label>:121                                     ; preds = %118
  br label %131

; <label>:122                                     ; preds = %118
  %123 = load i64, i64* %x1, align 8
  %124 = load i64, i64* %y1, align 8
  %125 = load i64, i64* %z1, align 8
  %126 = call %struct.coordinate* @coordinate_alloc(i64 %123, i64 %124, i64 %125)
  store %struct.coordinate* %126, %struct.coordinate** %wallPtr, align 8
  %127 = load %struct.vector*, %struct.vector** %wallVectorPtr, align 8
  %128 = load %struct.coordinate*, %struct.coordinate** %wallPtr, align 8
  %129 = bitcast %struct.coordinate* %128 to i8*
  %130 = call i64 @vector_pushBack(%struct.vector* %127, i8* %129)
  br label %137

; <label>:131                                     ; preds = %121, %87, %61, %56, %43
  br label %132

; <label>:132                                     ; preds = %131, %36
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %134 = load i64, i64* %lineNumber, align 8
  %135 = load i8*, i8** %2, align 8
  %136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %133, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0), i64 %134, i8* %135)
  call void @profiler_print_stats()
  call void @exit(i32 1) #7
  unreachable

; <label>:137                                     ; preds = %122, %109, %57, %39
  br label %22

; <label>:138                                     ; preds = %22
  %139 = load i64, i64* %width, align 8
  %140 = icmp slt i64 %139, 1
  br i1 %140, label %147, label %141

; <label>:141                                     ; preds = %138
  %142 = load i64, i64* %height, align 8
  %143 = icmp slt i64 %142, 1
  br i1 %143, label %147, label %144

; <label>:144                                     ; preds = %141
  %145 = load i64, i64* %depth, align 8
  %146 = icmp slt i64 %145, 1
  br i1 %146, label %147, label %153

; <label>:147                                     ; preds = %144, %141, %138
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %149 = load i64, i64* %width, align 8
  %150 = load i64, i64* %height, align 8
  %151 = load i64, i64* %depth, align 8
  %152 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %148, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i32 0, i32 0), i64 %149, i64 %150, i64 %151)
  call void @profiler_print_stats()
  call void @exit(i32 1) #7
  unreachable

; <label>:153                                     ; preds = %144
  %154 = load i64, i64* %width, align 8
  %155 = load i64, i64* %height, align 8
  %156 = load i64, i64* %depth, align 8
  %157 = call %struct.grid* @grid_alloc(i64 %154, i64 %155, i64 %156)
  store %struct.grid* %157, %struct.grid** %gridPtr, align 8
  %158 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %159 = icmp ne %struct.grid* %158, null
  br i1 %159, label %160, label %161

; <label>:160                                     ; preds = %153
  br label %163

; <label>:161                                     ; preds = %153
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 256, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.maze_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %163

; <label>:163                                     ; preds = %162, %160
  %164 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %165 = load %struct.maze*, %struct.maze** %1, align 8
  %166 = getelementptr inbounds %struct.maze, %struct.maze* %165, i32 0, i32 0
  store %struct.grid* %164, %struct.grid** %166, align 8
  %167 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %168 = load %struct.vector*, %struct.vector** %wallVectorPtr, align 8
  call void @addToGrid(%struct.grid* %167, %struct.vector* %168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0))
  %169 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %170 = load %struct.vector*, %struct.vector** %srcVectorPtr, align 8
  call void @addToGrid(%struct.grid* %169, %struct.vector* %170, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0))
  %171 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %172 = load %struct.vector*, %struct.vector** %dstVectorPtr, align 8
  call void @addToGrid(%struct.grid* %171, %struct.vector* %172, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0))
  %173 = load i64, i64* %width, align 8
  %174 = load i64, i64* %height, align 8
  %175 = load i64, i64* %depth, align 8
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i32 0, i32 0), i64 %173, i64 %174, i64 %175)
  %177 = load %struct.list*, %struct.list** %workListPtr, align 8
  %178 = call i64 @list_getSize(%struct.list* %177)
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i64 %178)
  %180 = load %struct.maze*, %struct.maze** %1, align 8
  %181 = getelementptr inbounds %struct.maze, %struct.maze* %180, i32 0, i32 1
  %182 = load %struct.queue*, %struct.queue** %181, align 8
  store %struct.queue* %182, %struct.queue** %workQueuePtr, align 8
  %183 = load %struct.list*, %struct.list** %workListPtr, align 8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %183)
  br label %184

; <label>:184                                     ; preds = %188, %163
  %185 = load %struct.list*, %struct.list** %workListPtr, align 8
  %186 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %185) #8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %196

; <label>:188                                     ; preds = %184
  %189 = load %struct.list*, %struct.list** %workListPtr, align 8
  %190 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %189)
  %191 = bitcast i8* %190 to %struct.pair*
  store %struct.pair* %191, %struct.pair** %coordinatePairPtr1, align 8
  %192 = load %struct.queue*, %struct.queue** %workQueuePtr, align 8
  %193 = load %struct.pair*, %struct.pair** %coordinatePairPtr1, align 8
  %194 = bitcast %struct.pair* %193 to i8*
  %195 = call i64 @queue_push(%struct.queue* %192, i8* %194)
  br label %184

; <label>:196                                     ; preds = %184
  %197 = load %struct.list*, %struct.list** %workListPtr, align 8
  call void @list_free(%struct.list* %197)
  %198 = load %struct.vector*, %struct.vector** %srcVectorPtr, align 8
  %199 = call i64 @vector_getSize(%struct.vector* %198)
  ret i64 %199
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare void @profiler_print_stats()

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare %struct.list* @list_alloc(i64 (i8*, i8*)*) #2

declare i64 @coordinate_comparePair(i8*, i8*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #1

declare %struct.coordinate* @coordinate_alloc(i64, i64, i64) #2

declare i64 @coordinate_isEqual(%struct.coordinate*, %struct.coordinate*) #2

declare %struct.pair* @pair_alloc(i8*, i8*) #2

declare i64 @list_insert(%struct.list*, i8*) #2

declare i64 @vector_pushBack(%struct.vector*, i8*) #2

declare %struct.grid* @grid_alloc(i64, i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @addToGrid(%struct.grid* %gridPtr, %struct.vector* %vectorPtr, i8* %type) #0 {
  %1 = alloca %struct.grid*, align 8
  %2 = alloca %struct.vector*, align 8
  %3 = alloca i8*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %coordinatePtr = alloca %struct.coordinate*, align 8
  store %struct.grid* %gridPtr, %struct.grid** %1, align 8
  store %struct.vector* %vectorPtr, %struct.vector** %2, align 8
  store i8* %type, i8** %3, align 8
  %4 = load %struct.vector*, %struct.vector** %2, align 8
  %5 = call i64 @vector_getSize(%struct.vector* %4)
  store i64 %5, i64* %n, align 8
  store i64 0, i64* %i, align 8
  br label %6

; <label>:6                                       ; preds = %41, %0
  %7 = load i64, i64* %i, align 8
  %8 = load i64, i64* %n, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %44

; <label>:10                                      ; preds = %6
  %11 = load %struct.vector*, %struct.vector** %2, align 8
  %12 = load i64, i64* %i, align 8
  %13 = call i8* @vector_at(%struct.vector* %11, i64 %12)
  %14 = bitcast i8* %13 to %struct.coordinate*
  store %struct.coordinate* %14, %struct.coordinate** %coordinatePtr, align 8
  %15 = load %struct.grid*, %struct.grid** %1, align 8
  %16 = load %struct.coordinate*, %struct.coordinate** %coordinatePtr, align 8
  %17 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.coordinate*, %struct.coordinate** %coordinatePtr, align 8
  %20 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.coordinate*, %struct.coordinate** %coordinatePtr, align 8
  %23 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @grid_isPointValid(%struct.grid* %15, i64 %18, i64 %21, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %40, label %27

; <label>:27                                      ; preds = %10
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = load %struct.coordinate*, %struct.coordinate** %coordinatePtr, align 8
  %31 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.coordinate*, %struct.coordinate** %coordinatePtr, align 8
  %34 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.coordinate*, %struct.coordinate** %coordinatePtr, align 8
  %37 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0), i8* %29, i64 %32, i64 %35, i64 %38)
  call void @profiler_print_stats()
  call void @exit(i32 1) #7
  unreachable

; <label>:40                                      ; preds = %10
  br label %41

; <label>:41                                      ; preds = %40
  %42 = load i64, i64* %i, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %i, align 8
  br label %6

; <label>:44                                      ; preds = %6
  %45 = load %struct.grid*, %struct.grid** %1, align 8
  %46 = load %struct.vector*, %struct.vector** %2, align 8
  call void @grid_addPath(%struct.grid* %45, %struct.vector* %46)
  ret void
}

declare i32 @printf(i8*, ...) #2

declare i64 @list_getSize(%struct.list*) #2

declare void @list_iter_reset(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind readonly
declare i64 @list_iter_hasNext(%struct.list_node**, %struct.list*) #4

declare i8* @list_iter_next(%struct.list_node**, %struct.list*) #2

declare i64 @queue_push(%struct.queue*, i8*) #2

declare void @list_free(%struct.list*) #2

declare i64 @vector_getSize(%struct.vector*) #2

; Function Attrs: nounwind uwtable
define i64 @maze_checkPaths(%struct.maze* %mazePtr, %struct.list* %pathVectorListPtr, i64 %doPrintPaths) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.maze*, align 8
  %3 = alloca %struct.list*, align 8
  %4 = alloca i64, align 8
  %gridPtr = alloca %struct.grid*, align 8
  %width = alloca i64, align 8
  %height = alloca i64, align 8
  %depth = alloca i64, align 8
  %i = alloca i64, align 8
  %testGridPtr = alloca %struct.grid*, align 8
  %srcVectorPtr = alloca %struct.vector*, align 8
  %numSrc = alloca i64, align 8
  %srcPtr = alloca %struct.coordinate*, align 8
  %dstVectorPtr = alloca %struct.vector*, align 8
  %numDst = alloca i64, align 8
  %dstPtr = alloca %struct.coordinate*, align 8
  %id = alloca i64, align 8
  %it = alloca %struct.list_node*, align 8
  %pathVectorPtr = alloca %struct.vector*, align 8
  %numPath = alloca i64, align 8
  %i1 = alloca i64, align 8
  %pointVectorPtr = alloca %struct.vector*, align 8
  %prevGridPointPtr = alloca i64*, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %z = alloca i64, align 8
  %prevCoordinate = alloca %struct.coordinate, align 8
  %numPoint = alloca i64, align 8
  %j = alloca i64, align 8
  %currGridPointPtr = alloca i64*, align 8
  %currCoordinate = alloca %struct.coordinate, align 8
  %x2 = alloca i64, align 8
  %y3 = alloca i64, align 8
  %z4 = alloca i64, align 8
  %lastGridPointPtr = alloca i64*, align 8
  store %struct.maze* %mazePtr, %struct.maze** %2, align 8
  store %struct.list* %pathVectorListPtr, %struct.list** %3, align 8
  store i64 %doPrintPaths, i64* %4, align 8
  %5 = load %struct.maze*, %struct.maze** %2, align 8
  %6 = getelementptr inbounds %struct.maze, %struct.maze* %5, i32 0, i32 0
  %7 = load %struct.grid*, %struct.grid** %6, align 8
  store %struct.grid* %7, %struct.grid** %gridPtr, align 8
  %8 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %9 = getelementptr inbounds %struct.grid, %struct.grid* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %width, align 8
  %11 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %12 = getelementptr inbounds %struct.grid, %struct.grid* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %height, align 8
  %14 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %15 = getelementptr inbounds %struct.grid, %struct.grid* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %depth, align 8
  %17 = load i64, i64* %width, align 8
  %18 = load i64, i64* %height, align 8
  %19 = load i64, i64* %depth, align 8
  %20 = call %struct.grid* @grid_alloc(i64 %17, i64 %18, i64 %19)
  store %struct.grid* %20, %struct.grid** %testGridPtr, align 8
  %21 = load %struct.grid*, %struct.grid** %testGridPtr, align 8
  %22 = load %struct.maze*, %struct.maze** %2, align 8
  %23 = getelementptr inbounds %struct.maze, %struct.maze* %22, i32 0, i32 2
  %24 = load %struct.vector*, %struct.vector** %23, align 8
  call void @grid_addPath(%struct.grid* %21, %struct.vector* %24)
  %25 = load %struct.maze*, %struct.maze** %2, align 8
  %26 = getelementptr inbounds %struct.maze, %struct.maze* %25, i32 0, i32 3
  %27 = load %struct.vector*, %struct.vector** %26, align 8
  store %struct.vector* %27, %struct.vector** %srcVectorPtr, align 8
  %28 = load %struct.vector*, %struct.vector** %srcVectorPtr, align 8
  %29 = call i64 @vector_getSize(%struct.vector* %28)
  store i64 %29, i64* %numSrc, align 8
  store i64 0, i64* %i, align 8
  br label %30

; <label>:30                                      ; preds = %49, %0
  %31 = load i64, i64* %i, align 8
  %32 = load i64, i64* %numSrc, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %52

; <label>:34                                      ; preds = %30
  %35 = load %struct.vector*, %struct.vector** %srcVectorPtr, align 8
  %36 = load i64, i64* %i, align 8
  %37 = call i8* @vector_at(%struct.vector* %35, i64 %36)
  %38 = bitcast i8* %37 to %struct.coordinate*
  store %struct.coordinate* %38, %struct.coordinate** %srcPtr, align 8
  %39 = load %struct.grid*, %struct.grid** %testGridPtr, align 8
  %40 = load %struct.coordinate*, %struct.coordinate** %srcPtr, align 8
  %41 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.coordinate*, %struct.coordinate** %srcPtr, align 8
  %44 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.coordinate*, %struct.coordinate** %srcPtr, align 8
  %47 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  call void @grid_setPoint(%struct.grid* %39, i64 %42, i64 %45, i64 %48, i64 0)
  br label %49

; <label>:49                                      ; preds = %34
  %50 = load i64, i64* %i, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %i, align 8
  br label %30

; <label>:52                                      ; preds = %30
  %53 = load %struct.maze*, %struct.maze** %2, align 8
  %54 = getelementptr inbounds %struct.maze, %struct.maze* %53, i32 0, i32 4
  %55 = load %struct.vector*, %struct.vector** %54, align 8
  store %struct.vector* %55, %struct.vector** %dstVectorPtr, align 8
  %56 = load %struct.vector*, %struct.vector** %dstVectorPtr, align 8
  %57 = call i64 @vector_getSize(%struct.vector* %56)
  store i64 %57, i64* %numDst, align 8
  store i64 0, i64* %i, align 8
  br label %58

; <label>:58                                      ; preds = %77, %52
  %59 = load i64, i64* %i, align 8
  %60 = load i64, i64* %numDst, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %80

; <label>:62                                      ; preds = %58
  %63 = load %struct.vector*, %struct.vector** %dstVectorPtr, align 8
  %64 = load i64, i64* %i, align 8
  %65 = call i8* @vector_at(%struct.vector* %63, i64 %64)
  %66 = bitcast i8* %65 to %struct.coordinate*
  store %struct.coordinate* %66, %struct.coordinate** %dstPtr, align 8
  %67 = load %struct.grid*, %struct.grid** %testGridPtr, align 8
  %68 = load %struct.coordinate*, %struct.coordinate** %dstPtr, align 8
  %69 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.coordinate*, %struct.coordinate** %dstPtr, align 8
  %72 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.coordinate*, %struct.coordinate** %dstPtr, align 8
  %75 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  call void @grid_setPoint(%struct.grid* %67, i64 %70, i64 %73, i64 %76, i64 0)
  br label %77

; <label>:77                                      ; preds = %62
  %78 = load i64, i64* %i, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %i, align 8
  br label %58

; <label>:80                                      ; preds = %58
  store i64 0, i64* %id, align 8
  %81 = load %struct.list*, %struct.list** %3, align 8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %81)
  br label %82

; <label>:82                                      ; preds = %189, %80
  %83 = load %struct.list*, %struct.list** %3, align 8
  %84 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %83) #8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %190

; <label>:86                                      ; preds = %82
  %87 = load %struct.list*, %struct.list** %3, align 8
  %88 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %87)
  %89 = bitcast i8* %88 to %struct.vector*
  store %struct.vector* %89, %struct.vector** %pathVectorPtr, align 8
  %90 = load %struct.vector*, %struct.vector** %pathVectorPtr, align 8
  %91 = call i64 @vector_getSize(%struct.vector* %90)
  store i64 %91, i64* %numPath, align 8
  store i64 0, i64* %i1, align 8
  br label %92

; <label>:92                                      ; preds = %186, %86
  %93 = load i64, i64* %i1, align 8
  %94 = load i64, i64* %numPath, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %189

; <label>:96                                      ; preds = %92
  %97 = load i64, i64* %id, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %id, align 8
  %99 = load %struct.vector*, %struct.vector** %pathVectorPtr, align 8
  %100 = load i64, i64* %i1, align 8
  %101 = call i8* @vector_at(%struct.vector* %99, i64 %100)
  %102 = bitcast i8* %101 to %struct.vector*
  store %struct.vector* %102, %struct.vector** %pointVectorPtr, align 8
  %103 = load %struct.vector*, %struct.vector** %pointVectorPtr, align 8
  %104 = call i8* @vector_at(%struct.vector* %103, i64 0)
  %105 = bitcast i8* %104 to i64*
  store i64* %105, i64** %prevGridPointPtr, align 8
  %106 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %107 = load i64*, i64** %prevGridPointPtr, align 8
  call void @grid_getPointIndices(%struct.grid* %106, i64* %107, i64* %x, i64* %y, i64* %z)
  %108 = load %struct.grid*, %struct.grid** %testGridPtr, align 8
  %109 = load i64, i64* %x, align 8
  %110 = load i64, i64* %y, align 8
  %111 = load i64, i64* %z, align 8
  %112 = call i64 @grid_getPoint(%struct.grid* %108, i64 %109, i64 %110, i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

; <label>:114                                     ; preds = %96
  %115 = load %struct.grid*, %struct.grid** %testGridPtr, align 8
  call void @grid_free(%struct.grid* %115)
  store i64 0, i64* %1, align 8
  br label %198

; <label>:116                                     ; preds = %96
  %117 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %118 = load i64*, i64** %prevGridPointPtr, align 8
  %119 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %prevCoordinate, i32 0, i32 0
  %120 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %prevCoordinate, i32 0, i32 1
  %121 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %prevCoordinate, i32 0, i32 2
  call void @grid_getPointIndices(%struct.grid* %117, i64* %118, i64* %119, i64* %120, i64* %121)
  %122 = load %struct.vector*, %struct.vector** %pointVectorPtr, align 8
  %123 = call i64 @vector_getSize(%struct.vector* %122)
  store i64 %123, i64* %numPoint, align 8
  store i64 1, i64* %j, align 8
  br label %124

; <label>:124                                     ; preds = %167, %116
  %125 = load i64, i64* %j, align 8
  %126 = load i64, i64* %numPoint, align 8
  %127 = sub nsw i64 %126, 1
  %128 = icmp slt i64 %125, %127
  br i1 %128, label %129, label %170

; <label>:129                                     ; preds = %124
  %130 = load %struct.vector*, %struct.vector** %pointVectorPtr, align 8
  %131 = load i64, i64* %j, align 8
  %132 = call i8* @vector_at(%struct.vector* %130, i64 %131)
  %133 = bitcast i8* %132 to i64*
  store i64* %133, i64** %currGridPointPtr, align 8
  %134 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %135 = load i64*, i64** %currGridPointPtr, align 8
  %136 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %currCoordinate, i32 0, i32 0
  %137 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %currCoordinate, i32 0, i32 1
  %138 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %currCoordinate, i32 0, i32 2
  call void @grid_getPointIndices(%struct.grid* %134, i64* %135, i64* %136, i64* %137, i64* %138)
  %139 = call i64 @coordinate_areAdjacent(%struct.coordinate* %currCoordinate, %struct.coordinate* %prevCoordinate)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %143, label %141

; <label>:141                                     ; preds = %129
  %142 = load %struct.grid*, %struct.grid** %testGridPtr, align 8
  call void @grid_free(%struct.grid* %142)
  store i64 0, i64* %1, align 8
  br label %198

; <label>:143                                     ; preds = %129
  %144 = bitcast %struct.coordinate* %prevCoordinate to i8*
  %145 = bitcast %struct.coordinate* %currCoordinate to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %144, i8* %145, i64 24, i32 8, i1 false)
  %146 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %currCoordinate, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %x2, align 8
  %148 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %currCoordinate, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %y3, align 8
  %150 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %currCoordinate, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %z4, align 8
  %152 = load %struct.grid*, %struct.grid** %testGridPtr, align 8
  %153 = load i64, i64* %x2, align 8
  %154 = load i64, i64* %y3, align 8
  %155 = load i64, i64* %z4, align 8
  %156 = call i64 @grid_getPoint(%struct.grid* %152, i64 %153, i64 %154, i64 %155)
  %157 = icmp ne i64 %156, -1
  br i1 %157, label %158, label %160

; <label>:158                                     ; preds = %143
  %159 = load %struct.grid*, %struct.grid** %testGridPtr, align 8
  call void @grid_free(%struct.grid* %159)
  store i64 0, i64* %1, align 8
  br label %198

; <label>:160                                     ; preds = %143
  %161 = load %struct.grid*, %struct.grid** %testGridPtr, align 8
  %162 = load i64, i64* %x2, align 8
  %163 = load i64, i64* %y3, align 8
  %164 = load i64, i64* %z4, align 8
  %165 = load i64, i64* %id, align 8
  call void @grid_setPoint(%struct.grid* %161, i64 %162, i64 %163, i64 %164, i64 %165)
  br label %166

; <label>:166                                     ; preds = %160
  br label %167

; <label>:167                                     ; preds = %166
  %168 = load i64, i64* %j, align 8
  %169 = add nsw i64 %168, 1
  store i64 %169, i64* %j, align 8
  br label %124

; <label>:170                                     ; preds = %124
  %171 = load %struct.vector*, %struct.vector** %pointVectorPtr, align 8
  %172 = load i64, i64* %j, align 8
  %173 = call i8* @vector_at(%struct.vector* %171, i64 %172)
  %174 = bitcast i8* %173 to i64*
  store i64* %174, i64** %lastGridPointPtr, align 8
  %175 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %176 = load i64*, i64** %lastGridPointPtr, align 8
  call void @grid_getPointIndices(%struct.grid* %175, i64* %176, i64* %x, i64* %y, i64* %z)
  %177 = load %struct.grid*, %struct.grid** %testGridPtr, align 8
  %178 = load i64, i64* %x, align 8
  %179 = load i64, i64* %y, align 8
  %180 = load i64, i64* %z, align 8
  %181 = call i64 @grid_getPoint(%struct.grid* %177, i64 %178, i64 %179, i64 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

; <label>:183                                     ; preds = %170
  %184 = load %struct.grid*, %struct.grid** %testGridPtr, align 8
  call void @grid_free(%struct.grid* %184)
  store i64 0, i64* %1, align 8
  br label %198

; <label>:185                                     ; preds = %170
  br label %186

; <label>:186                                     ; preds = %185
  %187 = load i64, i64* %i1, align 8
  %188 = add nsw i64 %187, 1
  store i64 %188, i64* %i1, align 8
  br label %92

; <label>:189                                     ; preds = %92
  br label %82

; <label>:190                                     ; preds = %82
  %191 = load i64, i64* %4, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

; <label>:193                                     ; preds = %190
  %194 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0))
  %195 = load %struct.grid*, %struct.grid** %testGridPtr, align 8
  call void @grid_print(%struct.grid* %195)
  br label %196

; <label>:196                                     ; preds = %193, %190
  %197 = load %struct.grid*, %struct.grid** %testGridPtr, align 8
  call void @grid_free(%struct.grid* %197)
  store i64 1, i64* %1, align 8
  br label %198

; <label>:198                                     ; preds = %196, %183, %158, %141, %114
  %199 = load i64, i64* %1, align 8
  ret i64 %199
}

declare void @grid_addPath(%struct.grid*, %struct.vector*) #2

declare i8* @vector_at(%struct.vector*, i64) #2

declare void @grid_setPoint(%struct.grid*, i64, i64, i64, i64) #2

declare void @grid_getPointIndices(%struct.grid*, i64*, i64*, i64*, i64*) #2

declare i64 @grid_getPoint(%struct.grid*, i64, i64, i64) #2

declare i64 @coordinate_areAdjacent(%struct.coordinate*, %struct.coordinate*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i32 @puts(i8*) #2

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
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
