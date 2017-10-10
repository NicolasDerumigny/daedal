; ModuleID = '../bin/kmeans.marked.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [402 x i8] c"Usage: %s [switches] -i filename\0A       -i filename:     file containing data to be clustered\0A       -b               input file is in binary format\0A       -m max_clusters: maximum number of clusters allowed\0A       -n min_clusters: minimum number of clusters allowed\0A       -z             : don't zscore transform data\0A       -t threshold   : threshold value\0A       -p nproc       : number of threads\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"p:i:m:n:t:bz\00", align 1
@optarg = external global i8*, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Error: max_clusters must be >= min_clusters\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"0600\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Error: no such file (%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"kmeans.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"attributes\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"attributes[0]\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" ,\09\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"RTM is not present\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"__get_cpuid_max(0, NULL) >= 7 && \22RTM is not present\22\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"!!(b & CPUID_RTM) && \22RTM is not present\22\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"cluster_assign\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Time: %lg seconds\0A\00", align 1
@global_time = external global double, align 8
@.str.20 = private unnamed_addr constant [22 x i8] c"Work item count: %li\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @usage(i8* %argv0) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([402 x i8], [402 x i8]* @.str, i32 0, i32 0), i8* %argv0)
  call void @profiler_print_stats()
  call void @exit(i32 -1) #7
  unreachable
                                                  ; No predecessors!
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @profiler_print_stats()

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %cluster_centres = alloca float**, align 8
  %best_nclusters = alloca i32, align 4
  %numAttributes = alloca i32, align 4
  %numObjects = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store float** null, float*** %cluster_centres, align 8
  %1 = call noalias i8* @malloc(i64 1000000) #8
  %2 = getelementptr inbounds i8*, i8** %argv, i64 0
  %3 = getelementptr inbounds i8*, i8** %argv, i64 0
  br label %4

; <label>:4                                       ; preds = %29, %0
  %use_zscore_transform.0 = phi i32 [ 1, %0 ], [ %use_zscore_transform.1, %29 ]
  %filename.0 = phi i8* [ null, %0 ], [ %filename.1, %29 ]
  %min_nclusters.0 = phi i32 [ 4, %0 ], [ %min_nclusters.1, %29 ]
  %max_nclusters.0 = phi i32 [ 13, %0 ], [ %max_nclusters.1, %29 ]
  %isBinaryFile.0 = phi i32 [ 0, %0 ], [ %isBinaryFile.1, %29 ]
  %nthreads.0 = phi i32 [ 1, %0 ], [ %nthreads.1, %29 ]
  %threshold.0 = phi float [ 0x3F50624DE0000000, %0 ], [ %threshold.1, %29 ]
  %5 = call i32 @getopt(i32 %argc, i8** %argv, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #8
  %6 = icmp ne i32 %5, -1
  br i1 %6, label %7, label %30

; <label>:7                                       ; preds = %4
  switch i32 %5, label %27 [
    i32 105, label %8
    i32 98, label %10
    i32 116, label %11
    i32 109, label %15
    i32 110, label %18
    i32 122, label %21
    i32 112, label %22
    i32 63, label %25
  ]

; <label>:8                                       ; preds = %7
  %9 = load i8*, i8** @optarg, align 8
  br label %29

; <label>:10                                      ; preds = %7
  br label %29

; <label>:11                                      ; preds = %7
  %12 = load i8*, i8** @optarg, align 8
  %13 = call double @atof(i8* %12) #9
  %14 = fptrunc double %13 to float
  br label %29

; <label>:15                                      ; preds = %7
  %16 = load i8*, i8** @optarg, align 8
  %17 = call i32 @atoi(i8* %16) #9
  br label %29

; <label>:18                                      ; preds = %7
  %19 = load i8*, i8** @optarg, align 8
  %20 = call i32 @atoi(i8* %19) #9
  br label %29

; <label>:21                                      ; preds = %7
  br label %29

; <label>:22                                      ; preds = %7
  %23 = load i8*, i8** @optarg, align 8
  %24 = call i32 @atoi(i8* %23) #9
  br label %29

; <label>:25                                      ; preds = %7
  %26 = load i8*, i8** %3, align 8
  call void @usage(i8* %26)
  br label %29

; <label>:27                                      ; preds = %7
  %28 = load i8*, i8** %2, align 8
  call void @usage(i8* %28)
  br label %29

; <label>:29                                      ; preds = %27, %25, %22, %21, %18, %15, %11, %10, %8
  %use_zscore_transform.1 = phi i32 [ %use_zscore_transform.0, %27 ], [ %use_zscore_transform.0, %25 ], [ %use_zscore_transform.0, %22 ], [ 0, %21 ], [ %use_zscore_transform.0, %18 ], [ %use_zscore_transform.0, %15 ], [ %use_zscore_transform.0, %11 ], [ %use_zscore_transform.0, %10 ], [ %use_zscore_transform.0, %8 ]
  %filename.1 = phi i8* [ %filename.0, %27 ], [ %filename.0, %25 ], [ %filename.0, %22 ], [ %filename.0, %21 ], [ %filename.0, %18 ], [ %filename.0, %15 ], [ %filename.0, %11 ], [ %filename.0, %10 ], [ %9, %8 ]
  %min_nclusters.1 = phi i32 [ %min_nclusters.0, %27 ], [ %min_nclusters.0, %25 ], [ %min_nclusters.0, %22 ], [ %min_nclusters.0, %21 ], [ %20, %18 ], [ %min_nclusters.0, %15 ], [ %min_nclusters.0, %11 ], [ %min_nclusters.0, %10 ], [ %min_nclusters.0, %8 ]
  %max_nclusters.1 = phi i32 [ %max_nclusters.0, %27 ], [ %max_nclusters.0, %25 ], [ %max_nclusters.0, %22 ], [ %max_nclusters.0, %21 ], [ %max_nclusters.0, %18 ], [ %17, %15 ], [ %max_nclusters.0, %11 ], [ %max_nclusters.0, %10 ], [ %max_nclusters.0, %8 ]
  %isBinaryFile.1 = phi i32 [ %isBinaryFile.0, %27 ], [ %isBinaryFile.0, %25 ], [ %isBinaryFile.0, %22 ], [ %isBinaryFile.0, %21 ], [ %isBinaryFile.0, %18 ], [ %isBinaryFile.0, %15 ], [ %isBinaryFile.0, %11 ], [ 1, %10 ], [ %isBinaryFile.0, %8 ]
  %nthreads.1 = phi i32 [ %nthreads.0, %27 ], [ %nthreads.0, %25 ], [ %24, %22 ], [ %nthreads.0, %21 ], [ %nthreads.0, %18 ], [ %nthreads.0, %15 ], [ %nthreads.0, %11 ], [ %nthreads.0, %10 ], [ %nthreads.0, %8 ]
  %threshold.1 = phi float [ %threshold.0, %27 ], [ %threshold.0, %25 ], [ %threshold.0, %22 ], [ %threshold.0, %21 ], [ %threshold.0, %18 ], [ %threshold.0, %15 ], [ %14, %11 ], [ %threshold.0, %10 ], [ %threshold.0, %8 ]
  br label %4

; <label>:30                                      ; preds = %4
  %.lcssa = phi i32 [ %5, %4 ]
  %31 = icmp eq i8* %filename.0, null
  br i1 %31, label %32, label %._crit_edge

._crit_edge:                                      ; preds = %30
  br label %35

; <label>:32                                      ; preds = %30
  %33 = getelementptr inbounds i8*, i8** %argv, i64 0
  %34 = load i8*, i8** %33, align 8
  call void @usage(i8* %34)
  br label %35

; <label>:35                                      ; preds = %._crit_edge, %32
  %36 = icmp slt i32 %max_nclusters.0, %min_nclusters.0
  br i1 %36, label %37, label %._crit_edge1

._crit_edge1:                                     ; preds = %35
  br label %42

; <label>:37                                      ; preds = %35
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  %40 = getelementptr inbounds i8*, i8** %argv, i64 0
  %41 = load i8*, i8** %40, align 8
  call void @usage(i8* %41)
  br label %42

; <label>:42                                      ; preds = %._crit_edge1, %37
  store i32 0, i32* %numAttributes, align 4
  store i32 0, i32* %numObjects, align 4
  %43 = icmp ne i32 %isBinaryFile.0, 0
  br i1 %43, label %44, label %116

; <label>:44                                      ; preds = %42
  %45 = call i32 (i8*, i32, ...) @open(i8* %filename.0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %50

; <label>:47                                      ; preds = %44
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0), i8* %filename.0)
  call void @profiler_print_stats()
  call void @exit(i32 1) #7
  unreachable

; <label>:50                                      ; preds = %44
  %51 = bitcast i32* %numObjects to i8*
  %52 = call i64 @read(i32 %45, i8* %51, i64 4)
  %53 = bitcast i32* %numAttributes to i8*
  %54 = call i64 @read(i32 %45, i8* %53, i64 4)
  %55 = load i32, i32* %numObjects, align 4
  %56 = load i32, i32* %numAttributes, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = call noalias i8* @malloc(i64 %59) #8
  %61 = bitcast i8* %60 to float*
  %62 = icmp ne float* %61, null
  br i1 %62, label %63, label %64

; <label>:63                                      ; preds = %50
  br label %66

; <label>:64                                      ; preds = %50
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 221, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %66

; <label>:66                                      ; preds = %65, %63
  %67 = load i32, i32* %numObjects, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 8
  %70 = call noalias i8* @malloc(i64 %69) #8
  %71 = bitcast i8* %70 to float**
  %72 = icmp ne float** %71, null
  br i1 %72, label %73, label %74

; <label>:73                                      ; preds = %66
  br label %76

; <label>:74                                      ; preds = %66
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 223, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %76

; <label>:76                                      ; preds = %75, %73
  %77 = load i32, i32* %numObjects, align 4
  %78 = load i32, i32* %numAttributes, align 4
  %79 = mul nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 4
  %82 = call noalias i8* @malloc(i64 %81) #8
  %83 = bitcast i8* %82 to float*
  %84 = getelementptr inbounds float*, float** %71, i64 0
  store float* %83, float** %84, align 8
  %85 = getelementptr inbounds float*, float** %71, i64 0
  %86 = load float*, float** %85, align 8
  %87 = icmp ne float* %86, null
  br i1 %87, label %88, label %89

; <label>:88                                      ; preds = %76
  br label %91

; <label>:89                                      ; preds = %76
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 225, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %91

; <label>:91                                      ; preds = %90, %88
  %92 = load i32, i32* %numObjects, align 4
  %93 = load i32, i32* %numAttributes, align 4
  %94 = sext i32 %93 to i64
  br label %95

; <label>:95                                      ; preds = %105, %91
  %i.0 = phi i32 [ 1, %91 ], [ %106, %105 ]
  %96 = icmp slt i32 %i.0, %92
  br i1 %96, label %97, label %107

; <label>:97                                      ; preds = %95
  %98 = sub nsw i32 %i.0, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float*, float** %71, i64 %99
  %101 = load float*, float** %100, align 8
  %102 = getelementptr inbounds float, float* %101, i64 %94
  %103 = sext i32 %i.0 to i64
  %104 = getelementptr inbounds float*, float** %71, i64 %103
  store float* %102, float** %104, align 8
  br label %105

; <label>:105                                     ; preds = %97
  %106 = add nsw i32 %i.0, 1
  br label %95

; <label>:107                                     ; preds = %95
  %108 = bitcast float* %61 to i8*
  %109 = load i32, i32* %numObjects, align 4
  %110 = load i32, i32* %numAttributes, align 4
  %111 = mul nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = mul i64 %112, 4
  %114 = call i64 @read(i32 %45, i8* %108, i64 %113)
  %115 = call i32 @close(i32 %45)
  br label %226

; <label>:116                                     ; preds = %42
  %117 = call %struct._IO_FILE* @fopen(i8* %filename.0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  %118 = icmp eq %struct._IO_FILE* %117, null
  br i1 %118, label %119, label %122

; <label>:119                                     ; preds = %116
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %120, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0), i8* %filename.0)
  call void @profiler_print_stats()
  call void @exit(i32 1) #7
  unreachable

; <label>:122                                     ; preds = %116
  br label %123

; <label>:123                                     ; preds = %132, %122
  %124 = call i8* @fgets(i8* %1, i32 1000000, %struct._IO_FILE* %117)
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %133

; <label>:126                                     ; preds = %123
  %127 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)) #8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %._crit_edge2

._crit_edge2:                                     ; preds = %126
  br label %132

; <label>:129                                     ; preds = %126
  %130 = load i32, i32* %numObjects, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %numObjects, align 4
  br label %132

; <label>:132                                     ; preds = %._crit_edge2, %129
  br label %123

; <label>:133                                     ; preds = %123
  call void @rewind(%struct._IO_FILE* %117)
  br label %134

; <label>:134                                     ; preds = %148, %133
  %135 = call i8* @fgets(i8* %1, i32 1000000, %struct._IO_FILE* %117)
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %.loopexit

; <label>:137                                     ; preds = %134
  %138 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)) #8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %148

; <label>:140                                     ; preds = %137
  br label %141

; <label>:141                                     ; preds = %144, %140
  %142 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0)) #8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %147

; <label>:144                                     ; preds = %141
  %145 = load i32, i32* %numAttributes, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %numAttributes, align 4
  br label %141

; <label>:147                                     ; preds = %141
  br label %149

; <label>:148                                     ; preds = %137
  br label %134

.loopexit:                                        ; preds = %134
  br label %149

; <label>:149                                     ; preds = %.loopexit, %147
  %150 = load i32, i32* %numObjects, align 4
  %151 = load i32, i32* %numAttributes, align 4
  %152 = mul nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = mul i64 %153, 4
  %155 = call noalias i8* @malloc(i64 %154) #8
  %156 = bitcast i8* %155 to float*
  %157 = icmp ne float* %156, null
  br i1 %157, label %158, label %159

; <label>:158                                     ; preds = %149
  br label %161

; <label>:159                                     ; preds = %149
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 255, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %161

; <label>:161                                     ; preds = %160, %158
  %162 = load i32, i32* %numObjects, align 4
  %163 = sext i32 %162 to i64
  %164 = mul i64 %163, 8
  %165 = call noalias i8* @malloc(i64 %164) #8
  %166 = bitcast i8* %165 to float**
  %167 = icmp ne float** %166, null
  br i1 %167, label %168, label %169

; <label>:168                                     ; preds = %161
  br label %171

; <label>:169                                     ; preds = %161
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 257, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %171

; <label>:171                                     ; preds = %170, %168
  %172 = load i32, i32* %numObjects, align 4
  %173 = load i32, i32* %numAttributes, align 4
  %174 = mul nsw i32 %172, %173
  %175 = sext i32 %174 to i64
  %176 = mul i64 %175, 4
  %177 = call noalias i8* @malloc(i64 %176) #8
  %178 = bitcast i8* %177 to float*
  %179 = getelementptr inbounds float*, float** %166, i64 0
  store float* %178, float** %179, align 8
  %180 = getelementptr inbounds float*, float** %166, i64 0
  %181 = load float*, float** %180, align 8
  %182 = icmp ne float* %181, null
  br i1 %182, label %183, label %184

; <label>:183                                     ; preds = %171
  br label %186

; <label>:184                                     ; preds = %171
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 259, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %186

; <label>:186                                     ; preds = %185, %183
  %187 = load i32, i32* %numObjects, align 4
  %188 = load i32, i32* %numAttributes, align 4
  %189 = sext i32 %188 to i64
  br label %190

; <label>:190                                     ; preds = %200, %186
  %i.1 = phi i32 [ 1, %186 ], [ %201, %200 ]
  %191 = icmp slt i32 %i.1, %187
  br i1 %191, label %192, label %202

; <label>:192                                     ; preds = %190
  %193 = sub nsw i32 %i.1, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float*, float** %166, i64 %194
  %196 = load float*, float** %195, align 8
  %197 = getelementptr inbounds float, float* %196, i64 %189
  %198 = sext i32 %i.1 to i64
  %199 = getelementptr inbounds float*, float** %166, i64 %198
  store float* %197, float** %199, align 8
  br label %200

; <label>:200                                     ; preds = %192
  %201 = add nsw i32 %i.1, 1
  br label %190

; <label>:202                                     ; preds = %190
  call void @rewind(%struct._IO_FILE* %117)
  br label %203

; <label>:203                                     ; preds = %.backedge, %202
  %i.2 = phi i32 [ 0, %202 ], [ %i.3, %.backedge ]
  %204 = call i8* @fgets(i8* %1, i32 1000000, %struct._IO_FILE* %117)
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %224

; <label>:206                                     ; preds = %203
  %207 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)) #8
  %208 = icmp eq i8* %207, null
  br i1 %208, label %209, label %210

; <label>:209                                     ; preds = %206
  br label %.backedge

.backedge:                                        ; preds = %209, %223
  %i.3 = phi i32 [ %i.2, %209 ], [ %i.4, %223 ]
  br label %203

; <label>:210                                     ; preds = %206
  br label %211

; <label>:211                                     ; preds = %221, %210
  %j.0 = phi i32 [ 0, %210 ], [ %222, %221 ]
  %i.4 = phi i32 [ %i.2, %210 ], [ %220, %221 ]
  %212 = load i32, i32* %numAttributes, align 4
  %213 = icmp slt i32 %j.0, %212
  br i1 %213, label %214, label %223

; <label>:214                                     ; preds = %211
  %215 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0)) #8
  %216 = call double @atof(i8* %215) #9
  %217 = fptrunc double %216 to float
  %218 = sext i32 %i.4 to i64
  %219 = getelementptr inbounds float, float* %156, i64 %218
  store float %217, float* %219, align 4
  %220 = add nsw i32 %i.4, 1
  br label %221

; <label>:221                                     ; preds = %214
  %222 = add nsw i32 %j.0, 1
  br label %211

; <label>:223                                     ; preds = %211
  br label %.backedge

; <label>:224                                     ; preds = %203
  %225 = call i32 @fclose(%struct._IO_FILE* %117)
  br label %226

; <label>:226                                     ; preds = %224, %107
  %attributes.0 = phi float** [ %71, %107 ], [ %166, %224 ]
  %buf.0 = phi float* [ %61, %107 ], [ %156, %224 ]
  br label %227

; <label>:227                                     ; preds = %226
  %228 = call i32 @__get_cpuid_max(i32 0, i32* null)
  %229 = icmp sge i32 %228, 7
  br i1 %229, label %230, label %._crit_edge3

._crit_edge3:                                     ; preds = %227
  br label %232

; <label>:230                                     ; preds = %227
  br i1 true, label %231, label %._crit_edge4

._crit_edge4:                                     ; preds = %230
  br label %232

; <label>:231                                     ; preds = %230
  br label %234

; <label>:232                                     ; preds = %._crit_edge4, %._crit_edge3
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 277, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %234

; <label>:234                                     ; preds = %233, %231
  %235 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #10, !srcloc !1
  %236 = extractvalue { i32, i32, i32, i32 } %235, 0
  %237 = extractvalue { i32, i32, i32, i32 } %235, 1
  %238 = extractvalue { i32, i32, i32, i32 } %235, 2
  %239 = extractvalue { i32, i32, i32, i32 } %235, 3
  %240 = and i32 %237, 2048
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %._crit_edge5

._crit_edge5:                                     ; preds = %234
  br label %244

; <label>:242                                     ; preds = %234
  br i1 true, label %243, label %._crit_edge6

._crit_edge6:                                     ; preds = %242
  br label %244

; <label>:243                                     ; preds = %242
  br label %246

; <label>:244                                     ; preds = %._crit_edge6, %._crit_edge5
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 277, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %246

; <label>:246                                     ; preds = %245, %243
  call void (...) @RTM_spinlock_init()
  call void (i32, ...) bitcast (void (...)* @SimStartup to void (i32, ...)*)(i32 %nthreads.0)
  br label %247

; <label>:247                                     ; preds = %246
  %248 = sext i32 %nthreads.0 to i64
  call void @thread_startup(i64 %248)
  %249 = load i32, i32* %numObjects, align 4
  %250 = sext i32 %249 to i64
  %251 = mul i64 %250, 4
  %252 = call noalias i8* @malloc(i64 %251) #8
  %253 = bitcast i8* %252 to i32*
  %254 = icmp ne i32* %253, null
  br i1 %254, label %255, label %256

; <label>:255                                     ; preds = %247
  br label %258

; <label>:256                                     ; preds = %247
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 284, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %258

; <label>:258                                     ; preds = %257, %255
  %259 = sub nsw i32 %max_nclusters.0, %min_nclusters.0
  %260 = add nsw i32 %259, 1
  %261 = getelementptr inbounds float*, float** %attributes.0, i64 0
  %262 = bitcast float* %buf.0 to i8*
  br label %263

; <label>:263                                     ; preds = %276, %258
  %i.5 = phi i32 [ 0, %258 ], [ %277, %276 ]
  %264 = icmp slt i32 %i.5, 1
  br i1 %264, label %265, label %278

; <label>:265                                     ; preds = %263
  %266 = load float*, float** %261, align 8
  %267 = bitcast float* %266 to i8*
  %268 = load i32, i32* %numObjects, align 4
  %269 = load i32, i32* %numAttributes, align 4
  %270 = mul nsw i32 %268, %269
  %271 = sext i32 %270 to i64
  %272 = mul i64 %271, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %267, i8* %262, i64 %272, i32 4, i1 false)
  store float** null, float*** %cluster_centres, align 8
  %273 = load i32, i32* %numObjects, align 4
  %274 = load i32, i32* %numAttributes, align 4
  %275 = call i32 @cluster_exec(i32 %nthreads.0, i32 %273, i32 %274, float** %attributes.0, i32 %use_zscore_transform.0, i32 %min_nclusters.0, i32 %max_nclusters.0, float %threshold.0, i32* %best_nclusters, float*** %cluster_centres, i32* %253)
  br label %276

; <label>:276                                     ; preds = %265
  %277 = add nsw i32 %i.5, 1
  br label %263

; <label>:278                                     ; preds = %263
  br label %279

; <label>:279                                     ; preds = %301, %278
  %i.6 = phi i32 [ 0, %278 ], [ %302, %301 ]
  %280 = load i32, i32* %best_nclusters, align 4
  %281 = icmp slt i32 %i.6, %280
  br i1 %281, label %282, label %303

; <label>:282                                     ; preds = %279
  %283 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32 %i.6)
  br label %284

; <label>:284                                     ; preds = %297, %282
  %j.1 = phi i32 [ 0, %282 ], [ %298, %297 ]
  %285 = load i32, i32* %numAttributes, align 4
  %286 = icmp slt i32 %j.1, %285
  br i1 %286, label %287, label %299

; <label>:287                                     ; preds = %284
  %288 = sext i32 %j.1 to i64
  %289 = sext i32 %i.6 to i64
  %290 = load float**, float*** %cluster_centres, align 8
  %291 = getelementptr inbounds float*, float** %290, i64 %289
  %292 = load float*, float** %291, align 8
  %293 = getelementptr inbounds float, float* %292, i64 %288
  %294 = load float, float* %293, align 4
  %295 = fpext float %294 to double
  %296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), double %295)
  br label %297

; <label>:297                                     ; preds = %287
  %298 = add nsw i32 %j.1, 1
  br label %284

; <label>:299                                     ; preds = %284
  %300 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  br label %301

; <label>:301                                     ; preds = %299
  %302 = add nsw i32 %i.6, 1
  br label %279

; <label>:303                                     ; preds = %279
  %304 = load double, double* @global_time, align 8
  %305 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), double %304)
  %306 = bitcast i32* %253 to i8*
  call void @free(i8* %306) #8
  %307 = bitcast float** %attributes.0 to i8*
  call void @free(i8* %307) #8
  %308 = load float**, float*** %cluster_centres, align 8
  %309 = getelementptr inbounds float*, float** %308, i64 0
  %310 = load float*, float** %309, align 8
  %311 = bitcast float* %310 to i8*
  call void @free(i8* %311) #8
  %312 = load float**, float*** %cluster_centres, align 8
  %313 = bitcast float** %312 to i8*
  call void @free(i8* %313) #8
  %314 = bitcast float* %buf.0 to i8*
  call void @free(i8* %314) #8
  br label %315

; <label>:315                                     ; preds = %303
  %316 = call i64 (...) @getWorkItemCount()
  %317 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), i64 %316)
  %318 = call i32 @fflush(%struct._IO_FILE* null)
  br label %319

; <label>:319                                     ; preds = %315
  call void (...) @thread_shutdown()
  call void (...) @RTM_output_stats()
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #3

; Function Attrs: nounwind readonly
declare double @atof(i8*) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

declare i32 @open(i8*, i32, ...) #1

declare i64 @read(i32, i8*, i64) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

declare i32 @close(i32) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #3

declare void @rewind(%struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__get_cpuid_max(i32 %__level, i32* %__sig) #5 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %__level) #10, !srcloc !2
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

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

declare i32 @cluster_exec(i32, i32, i32, float**, i32, i32, i32, float, i32*, float***, i32*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i64 @getWorkItemCount(...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare void @thread_shutdown(...) #1

declare void @RTM_output_stats(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 -2145586231, i32 -2145586195, i32 -2145586171}
!2 = !{i32 -2145596277, i32 -2145596241, i32 -2145596217}
