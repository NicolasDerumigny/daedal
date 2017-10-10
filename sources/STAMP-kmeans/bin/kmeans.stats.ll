; ModuleID = 'kmeans.c'
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
  %1 = alloca i8*, align 8
  %help = alloca i8*, align 8
  store i8* %argv0, i8** %1, align 8
  store i8* getelementptr inbounds ([402 x i8], [402 x i8]* @.str, i32 0, i32 0), i8** %help, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** %help, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3, i8* %4)
  call void @profiler_print_stats()
  call void @exit(i32 -1) #7
  unreachable
                                                  ; No predecessors!
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @profiler_print_stats()
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %max_nclusters = alloca i32, align 4
  %min_nclusters = alloca i32, align 4
  %filename = alloca i8*, align 8
  %buf = alloca float*, align 8
  %attributes = alloca float**, align 8
  %cluster_centres = alloca float**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %best_nclusters = alloca i32, align 4
  %cluster_assign = alloca i32*, align 8
  %numAttributes = alloca i32, align 4
  %numObjects = alloca i32, align 4
  %use_zscore_transform = alloca i32, align 4
  %line = alloca i8*, align 8
  %isBinaryFile = alloca i32, align 4
  %nloops = alloca i32, align 4
  %len = alloca i32, align 4
  %nthreads = alloca i32, align 4
  %threshold = alloca float, align 4
  %opt = alloca i32, align 4
  %infile = alloca i32, align 4
  %infile1 = alloca %struct._IO_FILE*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %count = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  store i32 13, i32* %max_nclusters, align 4
  store i32 4, i32* %min_nclusters, align 4
  store i8* null, i8** %filename, align 8
  store float** null, float*** %cluster_centres, align 8
  store i32 1, i32* %use_zscore_transform, align 4
  store i32 0, i32* %isBinaryFile, align 4
  store float 0x3F50624DE0000000, float* %threshold, align 4
  %4 = call noalias i8* @malloc(i64 1000000) #8
  store i8* %4, i8** %line, align 8
  store i32 1, i32* %nthreads, align 4
  br label %5

; <label>:5                                       ; preds = %37, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i8**, i8*** %3, align 8
  %8 = call i32 @getopt(i32 %6, i8** %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #8
  store i32 %8, i32* %opt, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %38

; <label>:10                                      ; preds = %5
  %11 = load i32, i32* %opt, align 4
  switch i32 %11, label %33 [
    i32 105, label %12
    i32 98, label %14
    i32 116, label %15
    i32 109, label %19
    i32 110, label %22
    i32 122, label %25
    i32 112, label %26
    i32 63, label %29
  ]

; <label>:12                                      ; preds = %10
  %13 = load i8*, i8** @optarg, align 8
  store i8* %13, i8** %filename, align 8
  br label %37

; <label>:14                                      ; preds = %10
  store i32 1, i32* %isBinaryFile, align 4
  br label %37

; <label>:15                                      ; preds = %10
  %16 = load i8*, i8** @optarg, align 8
  %17 = call double @atof(i8* %16) #9
  %18 = fptrunc double %17 to float
  store float %18, float* %threshold, align 4
  br label %37

; <label>:19                                      ; preds = %10
  %20 = load i8*, i8** @optarg, align 8
  %21 = call i32 @atoi(i8* %20) #9
  store i32 %21, i32* %max_nclusters, align 4
  br label %37

; <label>:22                                      ; preds = %10
  %23 = load i8*, i8** @optarg, align 8
  %24 = call i32 @atoi(i8* %23) #9
  store i32 %24, i32* %min_nclusters, align 4
  br label %37

; <label>:25                                      ; preds = %10
  store i32 0, i32* %use_zscore_transform, align 4
  br label %37

; <label>:26                                      ; preds = %10
  %27 = load i8*, i8** @optarg, align 8
  %28 = call i32 @atoi(i8* %27) #9
  store i32 %28, i32* %nthreads, align 4
  br label %37

; <label>:29                                      ; preds = %10
  %30 = load i8**, i8*** %3, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  call void @usage(i8* %32)
  br label %37

; <label>:33                                      ; preds = %10
  %34 = load i8**, i8*** %3, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  call void @usage(i8* %36)
  br label %37

; <label>:37                                      ; preds = %33, %29, %26, %25, %22, %19, %15, %14, %12
  br label %5

; <label>:38                                      ; preds = %5
  %39 = load i8*, i8** %filename, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %45

; <label>:41                                      ; preds = %38
  %42 = load i8**, i8*** %3, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  call void @usage(i8* %44)
  br label %45

; <label>:45                                      ; preds = %41, %38
  %46 = load i32, i32* %max_nclusters, align 4
  %47 = load i32, i32* %min_nclusters, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %55

; <label>:49                                      ; preds = %45
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  %52 = load i8**, i8*** %3, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  %54 = load i8*, i8** %53, align 8
  call void @usage(i8* %54)
  br label %55

; <label>:55                                      ; preds = %49, %45
  store i32 0, i32* %numAttributes, align 4
  store i32 0, i32* %numObjects, align 4
  %56 = load i32, i32* %isBinaryFile, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %147

; <label>:58                                      ; preds = %55
  %59 = load i8*, i8** %filename, align 8
  %60 = call i32 (i8*, i32, ...) @open(i8* %59, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  store i32 %60, i32* %infile, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %66

; <label>:62                                      ; preds = %58
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %64 = load i8*, i8** %filename, align 8
  %65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0), i8* %64)
  call void @profiler_print_stats()
  call void @exit(i32 1) #7
  unreachable

; <label>:66                                      ; preds = %58
  %67 = load i32, i32* %infile, align 4
  %68 = bitcast i32* %numObjects to i8*
  %69 = call i64 @read(i32 %67, i8* %68, i64 4)
  %70 = load i32, i32* %infile, align 4
  %71 = bitcast i32* %numAttributes to i8*
  %72 = call i64 @read(i32 %70, i8* %71, i64 4)
  %73 = load i32, i32* %numObjects, align 4
  %74 = load i32, i32* %numAttributes, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = call noalias i8* @malloc(i64 %77) #8
  %79 = bitcast i8* %78 to float*
  store float* %79, float** %buf, align 8
  %80 = load float*, float** %buf, align 8
  %81 = icmp ne float* %80, null
  br i1 %81, label %82, label %83

; <label>:82                                      ; preds = %66
  br label %85

; <label>:83                                      ; preds = %66
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 221, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %85

; <label>:85                                      ; preds = %84, %82
  %86 = load i32, i32* %numObjects, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 8
  %89 = call noalias i8* @malloc(i64 %88) #8
  %90 = bitcast i8* %89 to float**
  store float** %90, float*** %attributes, align 8
  %91 = load float**, float*** %attributes, align 8
  %92 = icmp ne float** %91, null
  br i1 %92, label %93, label %94

; <label>:93                                      ; preds = %85
  br label %96

; <label>:94                                      ; preds = %85
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 223, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %96

; <label>:96                                      ; preds = %95, %93
  %97 = load i32, i32* %numObjects, align 4
  %98 = load i32, i32* %numAttributes, align 4
  %99 = mul nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 4
  %102 = call noalias i8* @malloc(i64 %101) #8
  %103 = bitcast i8* %102 to float*
  %104 = load float**, float*** %attributes, align 8
  %105 = getelementptr inbounds float*, float** %104, i64 0
  store float* %103, float** %105, align 8
  %106 = load float**, float*** %attributes, align 8
  %107 = getelementptr inbounds float*, float** %106, i64 0
  %108 = load float*, float** %107, align 8
  %109 = icmp ne float* %108, null
  br i1 %109, label %110, label %111

; <label>:110                                     ; preds = %96
  br label %113

; <label>:111                                     ; preds = %96
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 225, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %113

; <label>:113                                     ; preds = %112, %110
  store i32 1, i32* %i, align 4
  br label %114

; <label>:114                                     ; preds = %132, %113
  %115 = load i32, i32* %i, align 4
  %116 = load i32, i32* %numObjects, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %135

; <label>:118                                     ; preds = %114
  %119 = load i32, i32* %i, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = load float**, float*** %attributes, align 8
  %123 = getelementptr inbounds float*, float** %122, i64 %121
  %124 = load float*, float** %123, align 8
  %125 = load i32, i32* %numAttributes, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %124, i64 %126
  %128 = load i32, i32* %i, align 4
  %129 = sext i32 %128 to i64
  %130 = load float**, float*** %attributes, align 8
  %131 = getelementptr inbounds float*, float** %130, i64 %129
  store float* %127, float** %131, align 8
  br label %132

; <label>:132                                     ; preds = %118
  %133 = load i32, i32* %i, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %i, align 4
  br label %114

; <label>:135                                     ; preds = %114
  %136 = load i32, i32* %infile, align 4
  %137 = load float*, float** %buf, align 8
  %138 = bitcast float* %137 to i8*
  %139 = load i32, i32* %numObjects, align 4
  %140 = load i32, i32* %numAttributes, align 4
  %141 = mul nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = mul i64 %142, 4
  %144 = call i64 @read(i32 %136, i8* %138, i64 %143)
  %145 = load i32, i32* %infile, align 4
  %146 = call i32 @close(i32 %145)
  br label %286

; <label>:147                                     ; preds = %55
  %148 = load i8*, i8** %filename, align 8
  %149 = call %struct._IO_FILE* @fopen(i8* %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  store %struct._IO_FILE* %149, %struct._IO_FILE** %infile1, align 8
  %150 = icmp eq %struct._IO_FILE* %149, null
  br i1 %150, label %151, label %155

; <label>:151                                     ; preds = %147
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %153 = load i8*, i8** %filename, align 8
  %154 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %152, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0), i8* %153)
  call void @profiler_print_stats()
  call void @exit(i32 1) #7
  unreachable

; <label>:155                                     ; preds = %147
  br label %156

; <label>:156                                     ; preds = %168, %155
  %157 = load i8*, i8** %line, align 8
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** %infile1, align 8
  %159 = call i8* @fgets(i8* %157, i32 1000000, %struct._IO_FILE* %158)
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %169

; <label>:161                                     ; preds = %156
  %162 = load i8*, i8** %line, align 8
  %163 = call i8* @strtok(i8* %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)) #8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %168

; <label>:165                                     ; preds = %161
  %166 = load i32, i32* %numObjects, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %numObjects, align 4
  br label %168

; <label>:168                                     ; preds = %165, %161
  br label %156

; <label>:169                                     ; preds = %156
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** %infile1, align 8
  call void @rewind(%struct._IO_FILE* %170)
  br label %171

; <label>:171                                     ; preds = %188, %169
  %172 = load i8*, i8** %line, align 8
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** %infile1, align 8
  %174 = call i8* @fgets(i8* %172, i32 1000000, %struct._IO_FILE* %173)
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %189

; <label>:176                                     ; preds = %171
  %177 = load i8*, i8** %line, align 8
  %178 = call i8* @strtok(i8* %177, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)) #8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %188

; <label>:180                                     ; preds = %176
  br label %181

; <label>:181                                     ; preds = %184, %180
  %182 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0)) #8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %187

; <label>:184                                     ; preds = %181
  %185 = load i32, i32* %numAttributes, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %numAttributes, align 4
  br label %181

; <label>:187                                     ; preds = %181
  br label %189

; <label>:188                                     ; preds = %176
  br label %171

; <label>:189                                     ; preds = %187, %171
  %190 = load i32, i32* %numObjects, align 4
  %191 = load i32, i32* %numAttributes, align 4
  %192 = mul nsw i32 %190, %191
  %193 = sext i32 %192 to i64
  %194 = mul i64 %193, 4
  %195 = call noalias i8* @malloc(i64 %194) #8
  %196 = bitcast i8* %195 to float*
  store float* %196, float** %buf, align 8
  %197 = load float*, float** %buf, align 8
  %198 = icmp ne float* %197, null
  br i1 %198, label %199, label %200

; <label>:199                                     ; preds = %189
  br label %202

; <label>:200                                     ; preds = %189
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 255, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %202

; <label>:202                                     ; preds = %201, %199
  %203 = load i32, i32* %numObjects, align 4
  %204 = sext i32 %203 to i64
  %205 = mul i64 %204, 8
  %206 = call noalias i8* @malloc(i64 %205) #8
  %207 = bitcast i8* %206 to float**
  store float** %207, float*** %attributes, align 8
  %208 = load float**, float*** %attributes, align 8
  %209 = icmp ne float** %208, null
  br i1 %209, label %210, label %211

; <label>:210                                     ; preds = %202
  br label %213

; <label>:211                                     ; preds = %202
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 257, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %213

; <label>:213                                     ; preds = %212, %210
  %214 = load i32, i32* %numObjects, align 4
  %215 = load i32, i32* %numAttributes, align 4
  %216 = mul nsw i32 %214, %215
  %217 = sext i32 %216 to i64
  %218 = mul i64 %217, 4
  %219 = call noalias i8* @malloc(i64 %218) #8
  %220 = bitcast i8* %219 to float*
  %221 = load float**, float*** %attributes, align 8
  %222 = getelementptr inbounds float*, float** %221, i64 0
  store float* %220, float** %222, align 8
  %223 = load float**, float*** %attributes, align 8
  %224 = getelementptr inbounds float*, float** %223, i64 0
  %225 = load float*, float** %224, align 8
  %226 = icmp ne float* %225, null
  br i1 %226, label %227, label %228

; <label>:227                                     ; preds = %213
  br label %230

; <label>:228                                     ; preds = %213
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 259, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %230

; <label>:230                                     ; preds = %229, %227
  store i32 1, i32* %i, align 4
  br label %231

; <label>:231                                     ; preds = %249, %230
  %232 = load i32, i32* %i, align 4
  %233 = load i32, i32* %numObjects, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %252

; <label>:235                                     ; preds = %231
  %236 = load i32, i32* %i, align 4
  %237 = sub nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = load float**, float*** %attributes, align 8
  %240 = getelementptr inbounds float*, float** %239, i64 %238
  %241 = load float*, float** %240, align 8
  %242 = load i32, i32* %numAttributes, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds float, float* %241, i64 %243
  %245 = load i32, i32* %i, align 4
  %246 = sext i32 %245 to i64
  %247 = load float**, float*** %attributes, align 8
  %248 = getelementptr inbounds float*, float** %247, i64 %246
  store float* %244, float** %248, align 8
  br label %249

; <label>:249                                     ; preds = %235
  %250 = load i32, i32* %i, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %i, align 4
  br label %231

; <label>:252                                     ; preds = %231
  %253 = load %struct._IO_FILE*, %struct._IO_FILE** %infile1, align 8
  call void @rewind(%struct._IO_FILE* %253)
  store i32 0, i32* %i, align 4
  br label %254

; <label>:254                                     ; preds = %282, %263, %252
  %255 = load i8*, i8** %line, align 8
  %256 = load %struct._IO_FILE*, %struct._IO_FILE** %infile1, align 8
  %257 = call i8* @fgets(i8* %255, i32 1000000, %struct._IO_FILE* %256)
  %258 = icmp ne i8* %257, null
  br i1 %258, label %259, label %283

; <label>:259                                     ; preds = %254
  %260 = load i8*, i8** %line, align 8
  %261 = call i8* @strtok(i8* %260, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)) #8
  %262 = icmp eq i8* %261, null
  br i1 %262, label %263, label %264

; <label>:263                                     ; preds = %259
  br label %254

; <label>:264                                     ; preds = %259
  store i32 0, i32* %j, align 4
  br label %265

; <label>:265                                     ; preds = %279, %264
  %266 = load i32, i32* %j, align 4
  %267 = load i32, i32* %numAttributes, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %269, label %282

; <label>:269                                     ; preds = %265
  %270 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0)) #8
  %271 = call double @atof(i8* %270) #9
  %272 = fptrunc double %271 to float
  %273 = load i32, i32* %i, align 4
  %274 = sext i32 %273 to i64
  %275 = load float*, float** %buf, align 8
  %276 = getelementptr inbounds float, float* %275, i64 %274
  store float %272, float* %276, align 4
  %277 = load i32, i32* %i, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %i, align 4
  br label %279

; <label>:279                                     ; preds = %269
  %280 = load i32, i32* %j, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %j, align 4
  br label %265

; <label>:282                                     ; preds = %265
  br label %254

; <label>:283                                     ; preds = %254
  %284 = load %struct._IO_FILE*, %struct._IO_FILE** %infile1, align 8
  %285 = call i32 @fclose(%struct._IO_FILE* %284)
  br label %286

; <label>:286                                     ; preds = %283, %135
  br label %287

; <label>:287                                     ; preds = %286
  %288 = call i32 @__get_cpuid_max(i32 0, i32* null)
  %289 = icmp sge i32 %288, 7
  br i1 %289, label %290, label %292

; <label>:290                                     ; preds = %287
  br i1 true, label %291, label %292

; <label>:291                                     ; preds = %290
  br label %294

; <label>:292                                     ; preds = %290, %287
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 277, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %294

; <label>:294                                     ; preds = %293, %291
  %295 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #10, !srcloc !1
  %296 = extractvalue { i32, i32, i32, i32 } %295, 0
  %297 = extractvalue { i32, i32, i32, i32 } %295, 1
  %298 = extractvalue { i32, i32, i32, i32 } %295, 2
  %299 = extractvalue { i32, i32, i32, i32 } %295, 3
  store i32 %296, i32* %a, align 4
  store i32 %297, i32* %b, align 4
  store i32 %298, i32* %c, align 4
  store i32 %299, i32* %d, align 4
  %300 = load i32, i32* %b, align 4
  %301 = and i32 %300, 2048
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %305

; <label>:303                                     ; preds = %294
  br i1 true, label %304, label %305

; <label>:304                                     ; preds = %303
  br label %307

; <label>:305                                     ; preds = %303, %294
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 277, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %307

; <label>:307                                     ; preds = %306, %304
  call void (...) @RTM_spinlock_init()
  %308 = load i32, i32* %nthreads, align 4
  call void (i32, ...) bitcast (void (...)* @SimStartup to void (i32, ...)*)(i32 %308)
  br label %309

; <label>:309                                     ; preds = %307
  %310 = load i32, i32* %nthreads, align 4
  %311 = sext i32 %310 to i64
  call void @thread_startup(i64 %311)
  %312 = load i32, i32* %numObjects, align 4
  %313 = sext i32 %312 to i64
  %314 = mul i64 %313, 4
  %315 = call noalias i8* @malloc(i64 %314) #8
  %316 = bitcast i8* %315 to i32*
  store i32* %316, i32** %cluster_assign, align 8
  %317 = load i32*, i32** %cluster_assign, align 8
  %318 = icmp ne i32* %317, null
  br i1 %318, label %319, label %320

; <label>:319                                     ; preds = %309
  br label %322

; <label>:320                                     ; preds = %309
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 284, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %322

; <label>:322                                     ; preds = %321, %319
  store i32 1, i32* %nloops, align 4
  %323 = load i32, i32* %max_nclusters, align 4
  %324 = load i32, i32* %min_nclusters, align 4
  %325 = sub nsw i32 %323, %324
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %327

; <label>:327                                     ; preds = %353, %322
  %328 = load i32, i32* %i, align 4
  %329 = load i32, i32* %nloops, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %331, label %356

; <label>:331                                     ; preds = %327
  %332 = load float**, float*** %attributes, align 8
  %333 = getelementptr inbounds float*, float** %332, i64 0
  %334 = load float*, float** %333, align 8
  %335 = bitcast float* %334 to i8*
  %336 = load float*, float** %buf, align 8
  %337 = bitcast float* %336 to i8*
  %338 = load i32, i32* %numObjects, align 4
  %339 = load i32, i32* %numAttributes, align 4
  %340 = mul nsw i32 %338, %339
  %341 = sext i32 %340 to i64
  %342 = mul i64 %341, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %335, i8* %337, i64 %342, i32 4, i1 false)
  store float** null, float*** %cluster_centres, align 8
  %343 = load i32, i32* %nthreads, align 4
  %344 = load i32, i32* %numObjects, align 4
  %345 = load i32, i32* %numAttributes, align 4
  %346 = load float**, float*** %attributes, align 8
  %347 = load i32, i32* %use_zscore_transform, align 4
  %348 = load i32, i32* %min_nclusters, align 4
  %349 = load i32, i32* %max_nclusters, align 4
  %350 = load float, float* %threshold, align 4
  %351 = load i32*, i32** %cluster_assign, align 8
  %352 = call i32 @cluster_exec(i32 %343, i32 %344, i32 %345, float** %346, i32 %347, i32 %348, i32 %349, float %350, i32* %best_nclusters, float*** %cluster_centres, i32* %351)
  br label %353

; <label>:353                                     ; preds = %331
  %354 = load i32, i32* %i, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %i, align 4
  br label %327

; <label>:356                                     ; preds = %327
  store i32 0, i32* %i, align 4
  br label %357

; <label>:357                                     ; preds = %385, %356
  %358 = load i32, i32* %i, align 4
  %359 = load i32, i32* %best_nclusters, align 4
  %360 = icmp slt i32 %358, %359
  br i1 %360, label %361, label %388

; <label>:361                                     ; preds = %357
  %362 = load i32, i32* %i, align 4
  %363 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32 %362)
  store i32 0, i32* %j, align 4
  br label %364

; <label>:364                                     ; preds = %380, %361
  %365 = load i32, i32* %j, align 4
  %366 = load i32, i32* %numAttributes, align 4
  %367 = icmp slt i32 %365, %366
  br i1 %367, label %368, label %383

; <label>:368                                     ; preds = %364
  %369 = load i32, i32* %j, align 4
  %370 = sext i32 %369 to i64
  %371 = load i32, i32* %i, align 4
  %372 = sext i32 %371 to i64
  %373 = load float**, float*** %cluster_centres, align 8
  %374 = getelementptr inbounds float*, float** %373, i64 %372
  %375 = load float*, float** %374, align 8
  %376 = getelementptr inbounds float, float* %375, i64 %370
  %377 = load float, float* %376, align 4
  %378 = fpext float %377 to double
  %379 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), double %378)
  br label %380

; <label>:380                                     ; preds = %368
  %381 = load i32, i32* %j, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %j, align 4
  br label %364

; <label>:383                                     ; preds = %364
  %384 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  br label %385

; <label>:385                                     ; preds = %383
  %386 = load i32, i32* %i, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %i, align 4
  br label %357

; <label>:388                                     ; preds = %357
  %389 = load double, double* @global_time, align 8
  %390 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), double %389)
  %391 = load i32*, i32** %cluster_assign, align 8
  %392 = bitcast i32* %391 to i8*
  call void @free(i8* %392) #8
  %393 = load float**, float*** %attributes, align 8
  %394 = bitcast float** %393 to i8*
  call void @free(i8* %394) #8
  %395 = load float**, float*** %cluster_centres, align 8
  %396 = getelementptr inbounds float*, float** %395, i64 0
  %397 = load float*, float** %396, align 8
  %398 = bitcast float* %397 to i8*
  call void @free(i8* %398) #8
  %399 = load float**, float*** %cluster_centres, align 8
  %400 = bitcast float** %399 to i8*
  call void @free(i8* %400) #8
  %401 = load float*, float** %buf, align 8
  %402 = bitcast float* %401 to i8*
  call void @free(i8* %402) #8
  br label %403

; <label>:403                                     ; preds = %388
  %404 = call i64 (...) @getWorkItemCount()
  store i64 %404, i64* %count, align 8
  %405 = load i64, i64* %count, align 8
  %406 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), i64 %405)
  %407 = call i32 @fflush(%struct._IO_FILE* null)
  br label %408

; <label>:408                                     ; preds = %403
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
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %__eax = alloca i32, align 4
  %__ebx = alloca i32, align 4
  %__ecx = alloca i32, align 4
  %__edx = alloca i32, align 4
  store i32 %__level, i32* %1, align 4
  store i32* %__sig, i32** %2, align 8
  %3 = load i32, i32* %1, align 4
  %4 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %3) #10, !srcloc !2
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
