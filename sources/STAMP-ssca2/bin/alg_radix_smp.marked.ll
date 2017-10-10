; ModuleID = '../bin/alg_radix_smp.stats.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"myHisto\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"alg_radix_smp.c\00", align 1
@__PRETTY_FUNCTION__.all_countsort_node = private unnamed_addr constant [82 x i8] c"void all_countsort_node(long, unsigned long *, unsigned long *, long, long, long)\00", align 1
@global_myHisto = internal global i64* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"psHisto\00", align 1
@global_psHisto = internal global i64* null, align 8
@__PRETTY_FUNCTION__.all_countsort_node_aux_seq = private unnamed_addr constant [124 x i8] c"void all_countsort_node_aux_seq(long, unsigned long *, unsigned long *, unsigned long *, unsigned long *, long, long, long)\00", align 1
@__PRETTY_FUNCTION__.all_countsort_node_aux = private unnamed_addr constant [120 x i8] c"void all_countsort_node_aux(long, unsigned long *, unsigned long *, unsigned long *, unsigned long *, long, long, long)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"lTemp\00", align 1
@__PRETTY_FUNCTION__.all_radixsort_node_s3 = private unnamed_addr constant [67 x i8] c"void all_radixsort_node_s3(long, unsigned long *, unsigned long *)\00", align 1
@global_lTemp = internal global i64* null, align 8
@__PRETTY_FUNCTION__.all_radixsort_node_s2 = private unnamed_addr constant [67 x i8] c"void all_radixsort_node_s2(long, unsigned long *, unsigned long *)\00", align 1
@__PRETTY_FUNCTION__.all_radixsort_node_aux_s3_seq = private unnamed_addr constant [109 x i8] c"void all_radixsort_node_aux_s3_seq(long, unsigned long *, unsigned long *, unsigned long *, unsigned long *)\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"lTemp2\00", align 1
@__PRETTY_FUNCTION__.all_radixsort_node_aux_s3 = private unnamed_addr constant [105 x i8] c"void all_radixsort_node_aux_s3(long, unsigned long *, unsigned long *, unsigned long *, unsigned long *)\00", align 1
@global_lTemp2 = internal global i64* null, align 8

; Function Attrs: nounwind uwtable
define void @all_countsort_node(i64 %q, i64* %lKey, i64* %lSorted, i64 %R, i64 %bitOff, i64 %m) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %myId = alloca i64, align 8
  %numThread = alloca i64, align 8
  %myHisto = alloca i64*, align 8
  %psHisto = alloca i64*, align 8
  %mhp = alloca i64*, align 8
  %k = alloca i64, align 8
  %k_start = alloca i64, align 8
  %k_stop = alloca i64, align 8
  %last = alloca i64, align 8
  %j = alloca i64, align 8
  %temp = alloca i64, align 8
  %allHisto = alloca i64*, align 8
  %offset = alloca i64, align 8
  %mps = alloca i64*, align 8
  store i64 %q, i64* %1, align 8
  store i64* %lKey, i64** %2, align 8
  store i64* %lSorted, i64** %3, align 8
  store i64 %R, i64* %4, align 8
  store i64 %bitOff, i64* %5, align 8
  store i64 %m, i64* %6, align 8
  %7 = call i64 (...) @thread_getId()
  store i64 %7, i64* %myId, align 8
  %8 = call i64 (...) @thread_getNumThread()
  store i64 %8, i64* %numThread, align 8
  store i64* null, i64** %myHisto, align 8
  store i64* null, i64** %psHisto, align 8
  %9 = load i64, i64* %myId, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %38

; <label>:11                                      ; preds = %0
  %12 = load i64, i64* %numThread, align 8
  %13 = load i64, i64* %4, align 8
  %14 = mul nsw i64 %12, %13
  %15 = mul i64 %14, 8
  %16 = call noalias i8* @malloc(i64 %15) #4
  %17 = bitcast i8* %16 to i64*
  store i64* %17, i64** %myHisto, align 8
  %18 = load i64*, i64** %myHisto, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %11
  br label %23

; <label>:21                                      ; preds = %11
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 107, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @__PRETTY_FUNCTION__.all_countsort_node, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %23

; <label>:23                                      ; preds = %22, %20
  %24 = load i64*, i64** %myHisto, align 8
  store i64* %24, i64** @global_myHisto, align 8
  %25 = load i64, i64* %numThread, align 8
  %26 = load i64, i64* %4, align 8
  %27 = mul nsw i64 %25, %26
  %28 = mul i64 %27, 8
  %29 = call noalias i8* @malloc(i64 %28) #4
  %30 = bitcast i8* %29 to i64*
  store i64* %30, i64** %psHisto, align 8
  %31 = load i64*, i64** %psHisto, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %23
  br label %36

; <label>:34                                      ; preds = %23
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 110, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @__PRETTY_FUNCTION__.all_countsort_node, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %36

; <label>:36                                      ; preds = %35, %33
  %37 = load i64*, i64** %psHisto, align 8
  store i64* %37, i64** @global_psHisto, align 8
  br label %38

; <label>:38                                      ; preds = %36, %0
  call void (...) @thread_barrier_wait()
  %39 = load i64*, i64** @global_myHisto, align 8
  store i64* %39, i64** %myHisto, align 8
  %40 = load i64*, i64** @global_psHisto, align 8
  store i64* %40, i64** %psHisto, align 8
  %41 = load i64*, i64** %myHisto, align 8
  %42 = load i64, i64* %myId, align 8
  %43 = load i64, i64* %4, align 8
  %44 = mul nsw i64 %42, %43
  %45 = getelementptr inbounds i64, i64* %41, i64 %44
  store i64* %45, i64** %mhp, align 8
  store i64 0, i64* %k, align 8
  br label %46

; <label>:46                                      ; preds = %54, %38
  %47 = load i64, i64* %k, align 8
  %48 = load i64, i64* %4, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %57

; <label>:50                                      ; preds = %46
  %51 = load i64, i64* %k, align 8
  %52 = load i64*, i64** %mhp, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 %51
  store i64 0, i64* %53, align 8
  br label %54

; <label>:54                                      ; preds = %50
  %55 = load i64, i64* %k, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %k, align 8
  br label %46

; <label>:57                                      ; preds = %46
  %58 = load i64, i64* %1, align 8
  %59 = load i64, i64* %myId, align 8
  %60 = load i64, i64* %numThread, align 8
  call void @createPartition(i64 0, i64 %58, i64 %59, i64 %60, i64* %k_start, i64* %k_stop)
  %61 = load i64, i64* %k_start, align 8
  store i64 %61, i64* %k, align 8
  br label %62

; <label>:62                                      ; preds = %83, %57
  %63 = load i64, i64* %k, align 8
  %64 = load i64, i64* %k_stop, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %86

; <label>:66                                      ; preds = %62
  %67 = load i64, i64* %k, align 8
  %68 = load i64*, i64** %2, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 %67
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %5, align 8
  %72 = lshr i64 %70, %71
  %73 = load i64, i64* %6, align 8
  %74 = trunc i64 %73 to i32
  %75 = shl i32 -1, %74
  %76 = xor i32 %75, -1
  %77 = sext i32 %76 to i64
  %78 = and i64 %72, %77
  %79 = load i64*, i64** %mhp, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 %78
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %80, align 8
  br label %83

; <label>:83                                      ; preds = %66
  %84 = load i64, i64* %k, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %k, align 8
  br label %62

; <label>:86                                      ; preds = %62
  call void (...) @thread_barrier_wait()
  %87 = load i64, i64* %4, align 8
  %88 = load i64, i64* %myId, align 8
  %89 = load i64, i64* %numThread, align 8
  call void @createPartition(i64 0, i64 %87, i64 %88, i64 %89, i64* %k_start, i64* %k_stop)
  %90 = load i64, i64* %k_start, align 8
  store i64 %90, i64* %k, align 8
  br label %91

; <label>:91                                      ; preds = %130, %86
  %92 = load i64, i64* %k, align 8
  %93 = load i64, i64* %k_stop, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %133

; <label>:95                                      ; preds = %91
  %96 = load i64, i64* %k, align 8
  %97 = load i64*, i64** %myHisto, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 %96
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %k, align 8
  %101 = load i64*, i64** %psHisto, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 %100
  store i64 %99, i64* %102, align 8
  store i64 %99, i64* %last, align 8
  store i64 1, i64* %j, align 8
  br label %103

; <label>:103                                     ; preds = %126, %95
  %104 = load i64, i64* %j, align 8
  %105 = load i64, i64* %numThread, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %129

; <label>:107                                     ; preds = %103
  %108 = load i64, i64* %last, align 8
  %109 = load i64, i64* %j, align 8
  %110 = load i64, i64* %4, align 8
  %111 = mul nsw i64 %109, %110
  %112 = load i64, i64* %k, align 8
  %113 = add nsw i64 %111, %112
  %114 = load i64*, i64** %myHisto, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 %113
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %108, %116
  %118 = load i64, i64* %j, align 8
  %119 = load i64, i64* %4, align 8
  %120 = mul nsw i64 %118, %119
  %121 = load i64, i64* %k, align 8
  %122 = add nsw i64 %120, %121
  %123 = load i64*, i64** %psHisto, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 %122
  store i64 %117, i64* %124, align 8
  store i64 %117, i64* %temp, align 8
  %125 = load i64, i64* %temp, align 8
  store i64 %125, i64* %last, align 8
  br label %126

; <label>:126                                     ; preds = %107
  %127 = load i64, i64* %j, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %j, align 8
  br label %103

; <label>:129                                     ; preds = %103
  br label %130

; <label>:130                                     ; preds = %129
  %131 = load i64, i64* %k, align 8
  %132 = add nsw i64 %131, 1
  store i64 %132, i64* %k, align 8
  br label %91

; <label>:133                                     ; preds = %91
  %134 = load i64*, i64** %psHisto, align 8
  %135 = load i64, i64* %numThread, align 8
  %136 = sub nsw i64 %135, 1
  %137 = load i64, i64* %4, align 8
  %138 = mul nsw i64 %136, %137
  %139 = getelementptr inbounds i64, i64* %134, i64 %138
  store i64* %139, i64** %allHisto, align 8
  call void (...) @thread_barrier_wait()
  store i64 0, i64* %offset, align 8
  %140 = load i64*, i64** %psHisto, align 8
  %141 = load i64, i64* %myId, align 8
  %142 = load i64, i64* %4, align 8
  %143 = mul nsw i64 %141, %142
  %144 = getelementptr inbounds i64, i64* %140, i64 %143
  store i64* %144, i64** %mps, align 8
  store i64 0, i64* %k, align 8
  br label %145

; <label>:145                                     ; preds = %170, %133
  %146 = load i64, i64* %k, align 8
  %147 = load i64, i64* %4, align 8
  %148 = icmp slt i64 %146, %147
  br i1 %148, label %149, label %173

; <label>:149                                     ; preds = %145
  %150 = load i64, i64* %k, align 8
  %151 = load i64*, i64** %mps, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 %150
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %k, align 8
  %155 = load i64*, i64** %mhp, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 %154
  %157 = load i64, i64* %156, align 8
  %158 = sub nsw i64 %153, %157
  %159 = load i64, i64* %offset, align 8
  %160 = add nsw i64 %158, %159
  %161 = load i64, i64* %k, align 8
  %162 = load i64*, i64** %mhp, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 %161
  store i64 %160, i64* %163, align 8
  %164 = load i64, i64* %k, align 8
  %165 = load i64*, i64** %allHisto, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 %164
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %offset, align 8
  %169 = add nsw i64 %168, %167
  store i64 %169, i64* %offset, align 8
  br label %170

; <label>:170                                     ; preds = %149
  %171 = load i64, i64* %k, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %k, align 8
  br label %145

; <label>:173                                     ; preds = %145
  call void (...) @thread_barrier_wait()
  %174 = load i64, i64* %1, align 8
  %175 = load i64, i64* %myId, align 8
  %176 = load i64, i64* %numThread, align 8
  call void @createPartition(i64 0, i64 %174, i64 %175, i64 %176, i64* %k_start, i64* %k_stop)
  %177 = load i64, i64* %k_start, align 8
  store i64 %177, i64* %k, align 8
  br label %178

; <label>:178                                     ; preds = %210, %173
  %179 = load i64, i64* %k, align 8
  %180 = load i64, i64* %k_stop, align 8
  %181 = icmp slt i64 %179, %180
  br i1 %181, label %182, label %213

; <label>:182                                     ; preds = %178
  %183 = load i64, i64* %k, align 8
  %184 = load i64*, i64** %2, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 %183
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* %5, align 8
  %188 = lshr i64 %186, %187
  %189 = load i64, i64* %6, align 8
  %190 = trunc i64 %189 to i32
  %191 = shl i32 -1, %190
  %192 = xor i32 %191, -1
  %193 = sext i32 %192 to i64
  %194 = and i64 %188, %193
  store i64 %194, i64* %j, align 8
  %195 = load i64, i64* %k, align 8
  %196 = load i64*, i64** %2, align 8
  %197 = getelementptr inbounds i64, i64* %196, i64 %195
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* %j, align 8
  %200 = load i64*, i64** %mhp, align 8
  %201 = getelementptr inbounds i64, i64* %200, i64 %199
  %202 = load i64, i64* %201, align 8
  %203 = load i64*, i64** %3, align 8
  %204 = getelementptr inbounds i64, i64* %203, i64 %202
  store i64 %198, i64* %204, align 8
  %205 = load i64, i64* %j, align 8
  %206 = load i64*, i64** %mhp, align 8
  %207 = getelementptr inbounds i64, i64* %206, i64 %205
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %208, 1
  store i64 %209, i64* %207, align 8
  br label %210

; <label>:210                                     ; preds = %182
  %211 = load i64, i64* %k, align 8
  %212 = add nsw i64 %211, 1
  store i64 %212, i64* %k, align 8
  br label %178

; <label>:213                                     ; preds = %178
  call void (...) @thread_barrier_wait()
  %214 = load i64, i64* %myId, align 8
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %221

; <label>:216                                     ; preds = %213
  %217 = load i64*, i64** %psHisto, align 8
  %218 = bitcast i64* %217 to i8*
  call void @free(i8* %218) #4
  %219 = load i64*, i64** %myHisto, align 8
  %220 = bitcast i64* %219 to i8*
  call void @free(i8* %220) #4
  br label %221

; <label>:221                                     ; preds = %216, %213
  ret void
}

declare i64 @thread_getId(...) #1

declare i64 @thread_getNumThread(...) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare void @thread_barrier_wait(...) #1

declare void @createPartition(i64, i64, i64, i64, i64*, i64*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @all_countsort_node_aux_seq(i64 %q, i64* %lKey, i64* %lSorted, i64* %auxKey, i64* %auxSorted, i64 %R, i64 %bitOff, i64 %m) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %myHisto = alloca i64*, align 8
  %psHisto = alloca i64*, align 8
  %mhp = alloca i64*, align 8
  %k = alloca i64, align 8
  %last = alloca i64, align 8
  %j = alloca i64, align 8
  %allHisto = alloca i64*, align 8
  %offset = alloca i64, align 8
  %mps = alloca i64*, align 8
  store i64 %q, i64* %1, align 8
  store i64* %lKey, i64** %2, align 8
  store i64* %lSorted, i64** %3, align 8
  store i64* %auxKey, i64** %4, align 8
  store i64* %auxSorted, i64** %5, align 8
  store i64 %R, i64* %6, align 8
  store i64 %bitOff, i64* %7, align 8
  store i64 %m, i64* %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = mul i64 %9, 8
  %11 = call noalias i8* @malloc(i64 %10) #4
  %12 = bitcast i8* %11 to i64*
  store i64* %12, i64** %myHisto, align 8
  %13 = load i64*, i64** %myHisto, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %0
  br label %18

; <label>:16                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 197, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @__PRETTY_FUNCTION__.all_countsort_node_aux_seq, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %18

; <label>:18                                      ; preds = %17, %15
  %19 = load i64, i64* %6, align 8
  %20 = mul i64 %19, 8
  %21 = call noalias i8* @malloc(i64 %20) #4
  %22 = bitcast i8* %21 to i64*
  store i64* %22, i64** %psHisto, align 8
  %23 = load i64*, i64** %psHisto, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %18
  br label %28

; <label>:26                                      ; preds = %18
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 199, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @__PRETTY_FUNCTION__.all_countsort_node_aux_seq, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %28

; <label>:28                                      ; preds = %27, %25
  %29 = load i64*, i64** %myHisto, align 8
  store i64* %29, i64** %mhp, align 8
  store i64 0, i64* %k, align 8
  br label %30

; <label>:30                                      ; preds = %38, %28
  %31 = load i64, i64* %k, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %41

; <label>:34                                      ; preds = %30
  %35 = load i64, i64* %k, align 8
  %36 = load i64*, i64** %mhp, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 %35
  store i64 0, i64* %37, align 8
  br label %38

; <label>:38                                      ; preds = %34
  %39 = load i64, i64* %k, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %k, align 8
  br label %30

; <label>:41                                      ; preds = %30
  store i64 0, i64* %k, align 8
  br label %42

; <label>:42                                      ; preds = %63, %41
  %43 = load i64, i64* %k, align 8
  %44 = load i64, i64* %1, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %66

; <label>:46                                      ; preds = %42
  %47 = load i64, i64* %k, align 8
  %48 = load i64*, i64** %2, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 %47
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = lshr i64 %50, %51
  %53 = load i64, i64* %8, align 8
  %54 = trunc i64 %53 to i32
  %55 = shl i32 -1, %54
  %56 = xor i32 %55, -1
  %57 = sext i32 %56 to i64
  %58 = and i64 %52, %57
  %59 = load i64*, i64** %mhp, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 %58
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %60, align 8
  br label %63

; <label>:63                                      ; preds = %46
  %64 = load i64, i64* %k, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %k, align 8
  br label %42

; <label>:66                                      ; preds = %42
  store i64 0, i64* %k, align 8
  br label %67

; <label>:67                                      ; preds = %79, %66
  %68 = load i64, i64* %k, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %82

; <label>:71                                      ; preds = %67
  %72 = load i64, i64* %k, align 8
  %73 = load i64*, i64** %myHisto, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 %72
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %k, align 8
  %77 = load i64*, i64** %psHisto, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 %76
  store i64 %75, i64* %78, align 8
  store i64 %75, i64* %last, align 8
  br label %79

; <label>:79                                      ; preds = %71
  %80 = load i64, i64* %k, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %k, align 8
  br label %67

; <label>:82                                      ; preds = %67
  %83 = load i64*, i64** %psHisto, align 8
  store i64* %83, i64** %allHisto, align 8
  store i64 0, i64* %offset, align 8
  %84 = load i64*, i64** %psHisto, align 8
  store i64* %84, i64** %mps, align 8
  store i64 0, i64* %k, align 8
  br label %85

; <label>:85                                      ; preds = %110, %82
  %86 = load i64, i64* %k, align 8
  %87 = load i64, i64* %6, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %113

; <label>:89                                      ; preds = %85
  %90 = load i64, i64* %k, align 8
  %91 = load i64*, i64** %mps, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 %90
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %k, align 8
  %95 = load i64*, i64** %mhp, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 %94
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %93, %97
  %99 = load i64, i64* %offset, align 8
  %100 = add nsw i64 %98, %99
  %101 = load i64, i64* %k, align 8
  %102 = load i64*, i64** %mhp, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 %101
  store i64 %100, i64* %103, align 8
  %104 = load i64, i64* %k, align 8
  %105 = load i64*, i64** %allHisto, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 %104
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %offset, align 8
  %109 = add nsw i64 %108, %107
  store i64 %109, i64* %offset, align 8
  br label %110

; <label>:110                                     ; preds = %89
  %111 = load i64, i64* %k, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %k, align 8
  br label %85

; <label>:113                                     ; preds = %85
  store i64 0, i64* %k, align 8
  br label %114

; <label>:114                                     ; preds = %156, %113
  %115 = load i64, i64* %k, align 8
  %116 = load i64, i64* %1, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %118, label %159

; <label>:118                                     ; preds = %114
  %119 = load i64, i64* %k, align 8
  %120 = load i64*, i64** %2, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 %119
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %7, align 8
  %124 = lshr i64 %122, %123
  %125 = load i64, i64* %8, align 8
  %126 = trunc i64 %125 to i32
  %127 = shl i32 -1, %126
  %128 = xor i32 %127, -1
  %129 = sext i32 %128 to i64
  %130 = and i64 %124, %129
  store i64 %130, i64* %j, align 8
  %131 = load i64, i64* %k, align 8
  %132 = load i64*, i64** %2, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 %131
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %j, align 8
  %136 = load i64*, i64** %mhp, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 %135
  %138 = load i64, i64* %137, align 8
  %139 = load i64*, i64** %3, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 %138
  store i64 %134, i64* %140, align 8
  %141 = load i64, i64* %k, align 8
  %142 = load i64*, i64** %4, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 %141
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %j, align 8
  %146 = load i64*, i64** %mhp, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 %145
  %148 = load i64, i64* %147, align 8
  %149 = load i64*, i64** %5, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 %148
  store i64 %144, i64* %150, align 8
  %151 = load i64, i64* %j, align 8
  %152 = load i64*, i64** %mhp, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 %151
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* %153, align 8
  br label %156

; <label>:156                                     ; preds = %118
  %157 = load i64, i64* %k, align 8
  %158 = add nsw i64 %157, 1
  store i64 %158, i64* %k, align 8
  br label %114

; <label>:159                                     ; preds = %114
  %160 = load i64*, i64** %psHisto, align 8
  %161 = bitcast i64* %160 to i8*
  call void @free(i8* %161) #4
  %162 = load i64*, i64** %myHisto, align 8
  %163 = bitcast i64* %162 to i8*
  call void @free(i8* %163) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @all_countsort_node_aux(i64 %q, i64* %lKey, i64* %lSorted, i64* %auxKey, i64* %auxSorted, i64 %R, i64 %bitOff, i64 %m) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %myId = alloca i64, align 8
  %numThread = alloca i64, align 8
  %myHisto = alloca i64*, align 8
  %psHisto = alloca i64*, align 8
  %mhp = alloca i64*, align 8
  %k = alloca i64, align 8
  %k_start = alloca i64, align 8
  %k_stop = alloca i64, align 8
  %last = alloca i64, align 8
  %j = alloca i64, align 8
  %temp = alloca i64, align 8
  %allHisto = alloca i64*, align 8
  %offset = alloca i64, align 8
  %mps = alloca i64*, align 8
  store i64 %q, i64* %1, align 8
  store i64* %lKey, i64** %2, align 8
  store i64* %lSorted, i64** %3, align 8
  store i64* %auxKey, i64** %4, align 8
  store i64* %auxSorted, i64** %5, align 8
  store i64 %R, i64* %6, align 8
  store i64 %bitOff, i64* %7, align 8
  store i64 %m, i64* %8, align 8
  %9 = call i64 (...) @thread_getId()
  store i64 %9, i64* %myId, align 8
  %10 = call i64 (...) @thread_getNumThread()
  store i64 %10, i64* %numThread, align 8
  store i64* null, i64** %myHisto, align 8
  store i64* null, i64** %psHisto, align 8
  %11 = load i64, i64* %myId, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %40

; <label>:13                                      ; preds = %0
  %14 = load i64, i64* %numThread, align 8
  %15 = load i64, i64* %6, align 8
  %16 = mul nsw i64 %14, %15
  %17 = mul i64 %16, 8
  %18 = call noalias i8* @malloc(i64 %17) #4
  %19 = bitcast i8* %18 to i64*
  store i64* %19, i64** %myHisto, align 8
  %20 = load i64*, i64** %myHisto, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %13
  br label %25

; <label>:23                                      ; preds = %13
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 265, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @__PRETTY_FUNCTION__.all_countsort_node_aux, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %25

; <label>:25                                      ; preds = %24, %22
  %26 = load i64*, i64** %myHisto, align 8
  store i64* %26, i64** @global_myHisto, align 8
  %27 = load i64, i64* %numThread, align 8
  %28 = load i64, i64* %6, align 8
  %29 = mul nsw i64 %27, %28
  %30 = mul i64 %29, 8
  %31 = call noalias i8* @malloc(i64 %30) #4
  %32 = bitcast i8* %31 to i64*
  store i64* %32, i64** %psHisto, align 8
  %33 = load i64*, i64** %psHisto, align 8
  %34 = icmp ne i64* %33, null
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %25
  br label %38

; <label>:36                                      ; preds = %25
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 268, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @__PRETTY_FUNCTION__.all_countsort_node_aux, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %38

; <label>:38                                      ; preds = %37, %35
  %39 = load i64*, i64** %psHisto, align 8
  store i64* %39, i64** @global_psHisto, align 8
  br label %40

; <label>:40                                      ; preds = %38, %0
  call void (...) @thread_barrier_wait()
  %41 = load i64*, i64** @global_myHisto, align 8
  store i64* %41, i64** %myHisto, align 8
  %42 = load i64*, i64** @global_psHisto, align 8
  store i64* %42, i64** %psHisto, align 8
  %43 = load i64*, i64** %myHisto, align 8
  %44 = load i64, i64* %myId, align 8
  %45 = load i64, i64* %6, align 8
  %46 = mul nsw i64 %44, %45
  %47 = getelementptr inbounds i64, i64* %43, i64 %46
  store i64* %47, i64** %mhp, align 8
  store i64 0, i64* %k, align 8
  br label %48

; <label>:48                                      ; preds = %56, %40
  %49 = load i64, i64* %k, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %59

; <label>:52                                      ; preds = %48
  %53 = load i64, i64* %k, align 8
  %54 = load i64*, i64** %mhp, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 %53
  store i64 0, i64* %55, align 8
  br label %56

; <label>:56                                      ; preds = %52
  %57 = load i64, i64* %k, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %k, align 8
  br label %48

; <label>:59                                      ; preds = %48
  %60 = load i64, i64* %1, align 8
  %61 = load i64, i64* %myId, align 8
  %62 = load i64, i64* %numThread, align 8
  call void @createPartition(i64 0, i64 %60, i64 %61, i64 %62, i64* %k_start, i64* %k_stop)
  %63 = load i64, i64* %k_start, align 8
  store i64 %63, i64* %k, align 8
  br label %64

; <label>:64                                      ; preds = %85, %59
  %65 = load i64, i64* %k, align 8
  %66 = load i64, i64* %k_stop, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %88

; <label>:68                                      ; preds = %64
  %69 = load i64, i64* %k, align 8
  %70 = load i64*, i64** %2, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 %69
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = lshr i64 %72, %73
  %75 = load i64, i64* %8, align 8
  %76 = trunc i64 %75 to i32
  %77 = shl i32 -1, %76
  %78 = xor i32 %77, -1
  %79 = sext i32 %78 to i64
  %80 = and i64 %74, %79
  %81 = load i64*, i64** %mhp, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 %80
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %82, align 8
  br label %85

; <label>:85                                      ; preds = %68
  %86 = load i64, i64* %k, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %k, align 8
  br label %64

; <label>:88                                      ; preds = %64
  call void (...) @thread_barrier_wait()
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %myId, align 8
  %91 = load i64, i64* %numThread, align 8
  call void @createPartition(i64 0, i64 %89, i64 %90, i64 %91, i64* %k_start, i64* %k_stop)
  %92 = load i64, i64* %k_start, align 8
  store i64 %92, i64* %k, align 8
  br label %93

; <label>:93                                      ; preds = %132, %88
  %94 = load i64, i64* %k, align 8
  %95 = load i64, i64* %k_stop, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %97, label %135

; <label>:97                                      ; preds = %93
  %98 = load i64, i64* %k, align 8
  %99 = load i64*, i64** %myHisto, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 %98
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %k, align 8
  %103 = load i64*, i64** %psHisto, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 %102
  store i64 %101, i64* %104, align 8
  store i64 %101, i64* %last, align 8
  store i64 1, i64* %j, align 8
  br label %105

; <label>:105                                     ; preds = %128, %97
  %106 = load i64, i64* %j, align 8
  %107 = load i64, i64* %numThread, align 8
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %109, label %131

; <label>:109                                     ; preds = %105
  %110 = load i64, i64* %last, align 8
  %111 = load i64, i64* %j, align 8
  %112 = load i64, i64* %6, align 8
  %113 = mul nsw i64 %111, %112
  %114 = load i64, i64* %k, align 8
  %115 = add nsw i64 %113, %114
  %116 = load i64*, i64** %myHisto, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 %115
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %110, %118
  %120 = load i64, i64* %j, align 8
  %121 = load i64, i64* %6, align 8
  %122 = mul nsw i64 %120, %121
  %123 = load i64, i64* %k, align 8
  %124 = add nsw i64 %122, %123
  %125 = load i64*, i64** %psHisto, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 %124
  store i64 %119, i64* %126, align 8
  store i64 %119, i64* %temp, align 8
  %127 = load i64, i64* %temp, align 8
  store i64 %127, i64* %last, align 8
  br label %128

; <label>:128                                     ; preds = %109
  %129 = load i64, i64* %j, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %j, align 8
  br label %105

; <label>:131                                     ; preds = %105
  br label %132

; <label>:132                                     ; preds = %131
  %133 = load i64, i64* %k, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %k, align 8
  br label %93

; <label>:135                                     ; preds = %93
  %136 = load i64*, i64** %psHisto, align 8
  %137 = load i64, i64* %numThread, align 8
  %138 = sub nsw i64 %137, 1
  %139 = load i64, i64* %6, align 8
  %140 = mul nsw i64 %138, %139
  %141 = getelementptr inbounds i64, i64* %136, i64 %140
  store i64* %141, i64** %allHisto, align 8
  call void (...) @thread_barrier_wait()
  store i64 0, i64* %offset, align 8
  %142 = load i64*, i64** %psHisto, align 8
  %143 = load i64, i64* %myId, align 8
  %144 = load i64, i64* %6, align 8
  %145 = mul nsw i64 %143, %144
  %146 = getelementptr inbounds i64, i64* %142, i64 %145
  store i64* %146, i64** %mps, align 8
  store i64 0, i64* %k, align 8
  br label %147

; <label>:147                                     ; preds = %172, %135
  %148 = load i64, i64* %k, align 8
  %149 = load i64, i64* %6, align 8
  %150 = icmp slt i64 %148, %149
  br i1 %150, label %151, label %175

; <label>:151                                     ; preds = %147
  %152 = load i64, i64* %k, align 8
  %153 = load i64*, i64** %mps, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 %152
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* %k, align 8
  %157 = load i64*, i64** %mhp, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 %156
  %159 = load i64, i64* %158, align 8
  %160 = sub nsw i64 %155, %159
  %161 = load i64, i64* %offset, align 8
  %162 = add nsw i64 %160, %161
  %163 = load i64, i64* %k, align 8
  %164 = load i64*, i64** %mhp, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 %163
  store i64 %162, i64* %165, align 8
  %166 = load i64, i64* %k, align 8
  %167 = load i64*, i64** %allHisto, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 %166
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* %offset, align 8
  %171 = add nsw i64 %170, %169
  store i64 %171, i64* %offset, align 8
  br label %172

; <label>:172                                     ; preds = %151
  %173 = load i64, i64* %k, align 8
  %174 = add nsw i64 %173, 1
  store i64 %174, i64* %k, align 8
  br label %147

; <label>:175                                     ; preds = %147
  call void (...) @thread_barrier_wait()
  %176 = load i64, i64* %1, align 8
  %177 = load i64, i64* %myId, align 8
  %178 = load i64, i64* %numThread, align 8
  call void @createPartition(i64 0, i64 %176, i64 %177, i64 %178, i64* %k_start, i64* %k_stop)
  %179 = load i64, i64* %k_start, align 8
  store i64 %179, i64* %k, align 8
  br label %180

; <label>:180                                     ; preds = %222, %175
  %181 = load i64, i64* %k, align 8
  %182 = load i64, i64* %k_stop, align 8
  %183 = icmp slt i64 %181, %182
  br i1 %183, label %184, label %225

; <label>:184                                     ; preds = %180
  %185 = load i64, i64* %k, align 8
  %186 = load i64*, i64** %2, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 %185
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* %7, align 8
  %190 = lshr i64 %188, %189
  %191 = load i64, i64* %8, align 8
  %192 = trunc i64 %191 to i32
  %193 = shl i32 -1, %192
  %194 = xor i32 %193, -1
  %195 = sext i32 %194 to i64
  %196 = and i64 %190, %195
  store i64 %196, i64* %j, align 8
  %197 = load i64, i64* %k, align 8
  %198 = load i64*, i64** %2, align 8
  %199 = getelementptr inbounds i64, i64* %198, i64 %197
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* %j, align 8
  %202 = load i64*, i64** %mhp, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 %201
  %204 = load i64, i64* %203, align 8
  %205 = load i64*, i64** %3, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 %204
  store i64 %200, i64* %206, align 8
  %207 = load i64, i64* %k, align 8
  %208 = load i64*, i64** %4, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 %207
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* %j, align 8
  %212 = load i64*, i64** %mhp, align 8
  %213 = getelementptr inbounds i64, i64* %212, i64 %211
  %214 = load i64, i64* %213, align 8
  %215 = load i64*, i64** %5, align 8
  %216 = getelementptr inbounds i64, i64* %215, i64 %214
  store i64 %210, i64* %216, align 8
  %217 = load i64, i64* %j, align 8
  %218 = load i64*, i64** %mhp, align 8
  %219 = getelementptr inbounds i64, i64* %218, i64 %217
  %220 = load i64, i64* %219, align 8
  %221 = add nsw i64 %220, 1
  store i64 %221, i64* %219, align 8
  br label %222

; <label>:222                                     ; preds = %184
  %223 = load i64, i64* %k, align 8
  %224 = add nsw i64 %223, 1
  store i64 %224, i64* %k, align 8
  br label %180

; <label>:225                                     ; preds = %180
  call void (...) @thread_barrier_wait()
  %226 = load i64, i64* %myId, align 8
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %233

; <label>:228                                     ; preds = %225
  %229 = load i64*, i64** %psHisto, align 8
  %230 = bitcast i64* %229 to i8*
  call void @free(i8* %230) #4
  %231 = load i64*, i64** %myHisto, align 8
  %232 = bitcast i64* %231 to i8*
  call void @free(i8* %232) #4
  br label %233

; <label>:233                                     ; preds = %228, %225
  ret void
}

; Function Attrs: nounwind uwtable
define void @all_radixsort_node_s3(i64 %q, i64* %lKeys, i64* %lSorted) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %myId = alloca i64, align 8
  %lTemp = alloca i64*, align 8
  store i64 %q, i64* %1, align 8
  store i64* %lKeys, i64** %2, align 8
  store i64* %lSorted, i64** %3, align 8
  %4 = call i64 (...) @thread_getId()
  store i64 %4, i64* %myId, align 8
  store i64* null, i64** %lTemp, align 8
  %5 = load i64, i64* %myId, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %19

; <label>:7                                       ; preds = %0
  %8 = load i64, i64* %1, align 8
  %9 = mul i64 %8, 8
  %10 = call noalias i8* @malloc(i64 %9) #4
  %11 = bitcast i8* %10 to i64*
  store i64* %11, i64** %lTemp, align 8
  %12 = load i64*, i64** %lTemp, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %7
  br label %17

; <label>:15                                      ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 355, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.all_radixsort_node_s3, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %17

; <label>:17                                      ; preds = %16, %14
  %18 = load i64*, i64** %lTemp, align 8
  store i64* %18, i64** @global_lTemp, align 8
  br label %19

; <label>:19                                      ; preds = %17, %0
  call void (...) @thread_barrier_wait()
  %20 = load i64*, i64** @global_lTemp, align 8
  store i64* %20, i64** %lTemp, align 8
  %21 = load i64, i64* %1, align 8
  %22 = load i64*, i64** %2, align 8
  %23 = load i64*, i64** %3, align 8
  call void @all_countsort_node(i64 %21, i64* %22, i64* %23, i64 2048, i64 0, i64 11)
  %24 = load i64, i64* %1, align 8
  %25 = load i64*, i64** %3, align 8
  %26 = load i64*, i64** %lTemp, align 8
  call void @all_countsort_node(i64 %24, i64* %25, i64* %26, i64 2048, i64 11, i64 11)
  %27 = load i64, i64* %1, align 8
  %28 = load i64*, i64** %lTemp, align 8
  %29 = load i64*, i64** %3, align 8
  call void @all_countsort_node(i64 %27, i64* %28, i64* %29, i64 1024, i64 22, i64 10)
  call void (...) @thread_barrier_wait()
  %30 = load i64, i64* %myId, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

; <label>:32                                      ; preds = %19
  %33 = load i64*, i64** %lTemp, align 8
  %34 = bitcast i64* %33 to i8*
  call void @free(i8* %34) #4
  br label %35

; <label>:35                                      ; preds = %32, %19
  ret void
}

; Function Attrs: nounwind uwtable
define void @all_radixsort_node_s2(i64 %q, i64* %lKeys, i64* %lSorted) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %myId = alloca i64, align 8
  %lTemp = alloca i64*, align 8
  store i64 %q, i64* %1, align 8
  store i64* %lKeys, i64** %2, align 8
  store i64* %lSorted, i64** %3, align 8
  %4 = call i64 (...) @thread_getId()
  store i64 %4, i64* %myId, align 8
  store i64* null, i64** %lTemp, align 8
  %5 = load i64, i64* %myId, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %19

; <label>:7                                       ; preds = %0
  %8 = load i64, i64* %1, align 8
  %9 = mul i64 %8, 8
  %10 = call noalias i8* @malloc(i64 %9) #4
  %11 = bitcast i8* %10 to i64*
  store i64* %11, i64** %lTemp, align 8
  %12 = load i64*, i64** %lTemp, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %7
  br label %17

; <label>:15                                      ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 392, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.all_radixsort_node_s2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %17

; <label>:17                                      ; preds = %16, %14
  %18 = load i64*, i64** %lTemp, align 8
  store i64* %18, i64** @global_lTemp, align 8
  br label %19

; <label>:19                                      ; preds = %17, %0
  call void (...) @thread_barrier_wait()
  %20 = load i64*, i64** @global_lTemp, align 8
  store i64* %20, i64** %lTemp, align 8
  %21 = load i64, i64* %1, align 8
  %22 = load i64*, i64** %2, align 8
  %23 = load i64*, i64** %lTemp, align 8
  call void @all_countsort_node(i64 %21, i64* %22, i64* %23, i64 65536, i64 0, i64 16)
  %24 = load i64, i64* %1, align 8
  %25 = load i64*, i64** %lTemp, align 8
  %26 = load i64*, i64** %3, align 8
  call void @all_countsort_node(i64 %24, i64* %25, i64* %26, i64 65536, i64 16, i64 16)
  call void (...) @thread_barrier_wait()
  %27 = load i64, i64* %myId, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

; <label>:29                                      ; preds = %19
  %30 = load i64*, i64** %lTemp, align 8
  %31 = bitcast i64* %30 to i8*
  call void @free(i8* %31) #4
  br label %32

; <label>:32                                      ; preds = %29, %19
  ret void
}

; Function Attrs: nounwind uwtable
define void @all_radixsort_node_aux_s3_seq(i64 %q, i64* %lKeys, i64* %lSorted, i64* %auxKey, i64* %auxSorted) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %lTemp = alloca i64*, align 8
  %lTemp2 = alloca i64*, align 8
  store i64 %q, i64* %1, align 8
  store i64* %lKeys, i64** %2, align 8
  store i64* %lSorted, i64** %3, align 8
  store i64* %auxKey, i64** %4, align 8
  store i64* %auxSorted, i64** %5, align 8
  store i64* null, i64** %lTemp, align 8
  store i64* null, i64** %lTemp2, align 8
  %6 = load i64, i64* %1, align 8
  %7 = mul i64 %6, 8
  %8 = call noalias i8* @malloc(i64 %7) #4
  %9 = bitcast i8* %8 to i64*
  store i64* %9, i64** %lTemp, align 8
  %10 = load i64*, i64** %lTemp, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %0
  br label %15

; <label>:13                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 428, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @__PRETTY_FUNCTION__.all_radixsort_node_aux_s3_seq, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = load i64, i64* %1, align 8
  %17 = mul i64 %16, 8
  %18 = call noalias i8* @malloc(i64 %17) #4
  %19 = bitcast i8* %18 to i64*
  store i64* %19, i64** %lTemp2, align 8
  %20 = load i64*, i64** %lTemp2, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %15
  br label %25

; <label>:23                                      ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 430, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @__PRETTY_FUNCTION__.all_radixsort_node_aux_s3_seq, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %25

; <label>:25                                      ; preds = %24, %22
  %26 = load i64, i64* %1, align 8
  %27 = load i64*, i64** %2, align 8
  %28 = load i64*, i64** %3, align 8
  %29 = load i64*, i64** %4, align 8
  %30 = load i64*, i64** %5, align 8
  call void @all_countsort_node_aux_seq(i64 %26, i64* %27, i64* %28, i64* %29, i64* %30, i64 2048, i64 0, i64 11)
  %31 = load i64, i64* %1, align 8
  %32 = load i64*, i64** %3, align 8
  %33 = load i64*, i64** %lTemp, align 8
  %34 = load i64*, i64** %5, align 8
  %35 = load i64*, i64** %lTemp2, align 8
  call void @all_countsort_node_aux_seq(i64 %31, i64* %32, i64* %33, i64* %34, i64* %35, i64 2048, i64 11, i64 11)
  %36 = load i64, i64* %1, align 8
  %37 = load i64*, i64** %lTemp, align 8
  %38 = load i64*, i64** %3, align 8
  %39 = load i64*, i64** %lTemp2, align 8
  %40 = load i64*, i64** %5, align 8
  call void @all_countsort_node_aux_seq(i64 %36, i64* %37, i64* %38, i64* %39, i64* %40, i64 1024, i64 22, i64 10)
  %41 = load i64*, i64** %lTemp, align 8
  %42 = bitcast i64* %41 to i8*
  call void @free(i8* %42) #4
  %43 = load i64*, i64** %lTemp2, align 8
  %44 = bitcast i64* %43 to i8*
  call void @free(i8* %44) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @all_radixsort_node_aux_s3(i64 %q, i64* %lKeys, i64* %lSorted, i64* %auxKey, i64* %auxSorted) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %myId = alloca i64, align 8
  %lTemp = alloca i64*, align 8
  %lTemp2 = alloca i64*, align 8
  store i64 %q, i64* %1, align 8
  store i64* %lKeys, i64** %2, align 8
  store i64* %lSorted, i64** %3, align 8
  store i64* %auxKey, i64** %4, align 8
  store i64* %auxSorted, i64** %5, align 8
  %6 = call i64 (...) @thread_getId()
  store i64 %6, i64* %myId, align 8
  store i64* null, i64** %lTemp, align 8
  store i64* null, i64** %lTemp2, align 8
  %7 = load i64, i64* %myId, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %32

; <label>:9                                       ; preds = %0
  %10 = load i64, i64* %1, align 8
  %11 = mul i64 %10, 8
  %12 = call noalias i8* @malloc(i64 %11) #4
  %13 = bitcast i8* %12 to i64*
  store i64* %13, i64** %lTemp, align 8
  %14 = load i64*, i64** %lTemp, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %9
  br label %19

; <label>:17                                      ; preds = %9
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 461, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @__PRETTY_FUNCTION__.all_radixsort_node_aux_s3, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %19

; <label>:19                                      ; preds = %18, %16
  %20 = load i64*, i64** %lTemp, align 8
  store i64* %20, i64** @global_lTemp, align 8
  %21 = load i64, i64* %1, align 8
  %22 = mul i64 %21, 8
  %23 = call noalias i8* @malloc(i64 %22) #4
  %24 = bitcast i8* %23 to i64*
  store i64* %24, i64** %lTemp2, align 8
  %25 = load i64*, i64** %lTemp2, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %19
  br label %30

; <label>:28                                      ; preds = %19
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 464, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @__PRETTY_FUNCTION__.all_radixsort_node_aux_s3, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %30

; <label>:30                                      ; preds = %29, %27
  %31 = load i64*, i64** %lTemp2, align 8
  store i64* %31, i64** @global_lTemp2, align 8
  br label %32

; <label>:32                                      ; preds = %30, %0
  call void (...) @thread_barrier_wait()
  %33 = load i64*, i64** @global_lTemp, align 8
  store i64* %33, i64** %lTemp, align 8
  %34 = load i64*, i64** @global_lTemp2, align 8
  store i64* %34, i64** %lTemp2, align 8
  %35 = load i64, i64* %1, align 8
  %36 = load i64*, i64** %2, align 8
  %37 = load i64*, i64** %3, align 8
  %38 = load i64*, i64** %4, align 8
  %39 = load i64*, i64** %5, align 8
  call void @all_countsort_node_aux(i64 %35, i64* %36, i64* %37, i64* %38, i64* %39, i64 2048, i64 0, i64 11)
  %40 = load i64, i64* %1, align 8
  %41 = load i64*, i64** %3, align 8
  %42 = load i64*, i64** %lTemp, align 8
  %43 = load i64*, i64** %5, align 8
  %44 = load i64*, i64** %lTemp2, align 8
  call void @all_countsort_node_aux(i64 %40, i64* %41, i64* %42, i64* %43, i64* %44, i64 2048, i64 11, i64 11)
  %45 = load i64, i64* %1, align 8
  %46 = load i64*, i64** %lTemp, align 8
  %47 = load i64*, i64** %3, align 8
  %48 = load i64*, i64** %lTemp2, align 8
  %49 = load i64*, i64** %5, align 8
  call void @all_countsort_node_aux(i64 %45, i64* %46, i64* %47, i64* %48, i64* %49, i64 1024, i64 22, i64 10)
  call void (...) @thread_barrier_wait()
  %50 = load i64, i64* %myId, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %57

; <label>:52                                      ; preds = %32
  %53 = load i64*, i64** %lTemp, align 8
  %54 = bitcast i64* %53 to i8*
  call void @free(i8* %54) #4
  %55 = load i64*, i64** %lTemp2, align 8
  %56 = bitcast i64* %55 to i8*
  call void @free(i8* %56) #4
  br label %57

; <label>:57                                      ; preds = %52, %32
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
