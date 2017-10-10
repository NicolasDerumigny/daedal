; ModuleID = '../bin/cutClusters.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._tm_thread_context_t = type { i32, i32, %struct.simple_metadata*, i32, i32, [44 x i8] }
%struct.simple_metadata = type opaque
%struct.edge = type { i64, i64, i64 }

@thread_contexts = external global %struct._tm_thread_context_t*, align 8
@.str = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"cutClusters.c\00", align 1
@__PRETTY_FUNCTION__.cutClusters = private unnamed_addr constant [25 x i8] c"void cutClusters(void *)\00", align 1
@global_Index = internal unnamed_addr global i64* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"neighbourArray\00", align 1
@global_neighbourArray = internal unnamed_addr global i64* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"IndexSorted\00", align 1
@global_IndexSorted = internal unnamed_addr global i64* null, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"neighbourArraySorted\00", align 1
@global_neighbourArraySorted = internal unnamed_addr global i64* null, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"vStatus\00", align 1
@global_vStatus = internal unnamed_addr global i64* null, align 8
@SCALE = external global i64, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"pCutSet\00", align 1
@global_pCutSet = internal unnamed_addr global %struct.edge* null, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"startV\00", align 1
@global_startV = internal unnamed_addr global i64* null, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"clusterSize\00", align 1
@global_clusterSize = internal unnamed_addr global i64* null, align 8
@MAX_CLUSTER_SIZE = external global i64, align 8
@global_cliqueSize = internal unnamed_addr global i64 0, align 8
@global_iter = internal unnamed_addr global i64 0, align 8
@.str.9 = private unnamed_addr constant [17 x i8] c"edgeStartCounter\00", align 1
@global_edgeStartCounter = internal unnamed_addr global i64* null, align 8
@.str.10 = private unnamed_addr constant [15 x i8] c"edgeEndCounter\00", align 1
@global_edgeEndCounter = internal unnamed_addr global i64* null, align 8
@global_cutSetIndex = internal unnamed_addr global i64 0, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"cutSet\00", align 1
@global_cutSet = internal unnamed_addr global %struct.edge* null, align 8

; Function Attrs: nounwind uwtable
define void @cutClusters(i8* readonly %argPtr) #0 {
  %i_start = alloca i64, align 8
  %i_stop = alloca i64, align 8
  %1 = tail call i64 (...) @thread_getId() #4
  %2 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %3 = tail call i64 (...) @thread_getId() #4
  %4 = trunc i64 %3 to i32
  tail call void @SimRoiStart(i32 %4) #4
  %5 = tail call i64 (...) @thread_getId() #4
  %6 = tail call i64 (...) @thread_getNumThread() #4
  %7 = icmp eq i64 %5, 0
  %8 = bitcast i8* %argPtr to i64*
  br i1 %7, label %9, label %._crit_edge131

; <label>:9                                       ; preds = %0
  %10 = load i64, i64* %8, align 8
  %11 = shl i64 %10, 3
  %12 = tail call noalias i8* @malloc(i64 %11) #4
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %9
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 121, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #5
  unreachable

; <label>:15                                      ; preds = %9
  store i8* %12, i8** bitcast (i64** @global_Index to i8**), align 8
  %16 = tail call noalias i8* @malloc(i64 %11) #4
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %15
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 124, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #5
  unreachable

; <label>:19                                      ; preds = %15
  store i8* %16, i8** bitcast (i64** @global_neighbourArray to i8**), align 8
  %20 = tail call noalias i8* @malloc(i64 %11) #4
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %19
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 127, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #5
  unreachable

; <label>:23                                      ; preds = %19
  store i8* %20, i8** bitcast (i64** @global_IndexSorted to i8**), align 8
  %24 = tail call noalias i8* @malloc(i64 %11) #4
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %23
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 130, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #5
  unreachable

; <label>:27                                      ; preds = %23
  store i8* %24, i8** bitcast (i64** @global_neighbourArraySorted to i8**), align 8
  br label %._crit_edge131

._crit_edge131:                                   ; preds = %0, %27
  tail call void (...) @thread_barrier_wait() #4
  %28 = load i64*, i64** @global_Index, align 8
  %29 = load i64*, i64** @global_neighbourArray, align 8
  %30 = load i64*, i64** @global_IndexSorted, align 8
  %31 = load i64*, i64** @global_neighbourArraySorted, align 8
  %32 = load i64, i64* %8, align 8
  call void @createPartition(i64 0, i64 %32, i64 %5, i64 %6, i64* nonnull %i_start, i64* nonnull %i_stop) #4
  %33 = load i64, i64* %i_start, align 8
  %34 = load i64, i64* %i_stop, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %._crit_edge131
  %36 = getelementptr inbounds i8, i8* %argPtr, i64 80
  %37 = bitcast i8* %36 to i64**
  %38 = getelementptr inbounds i8, i8* %argPtr, i64 48
  %39 = bitcast i8* %38 to i64**
  br label %40

; <label>:40                                      ; preds = %.lr.ph103, %40
  %i.0101 = phi i64 [ %33, %.lr.ph103 ], [ %50, %40 ]
  %41 = load i64*, i64** %37, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 %i.0101
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %39, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 %i.0101
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, %43
  %48 = getelementptr inbounds i64, i64* %29, i64 %i.0101
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds i64, i64* %28, i64 %i.0101
  store i64 %i.0101, i64* %49, align 8
  %50 = add nsw i64 %i.0101, 1
  %51 = load i64, i64* %i_stop, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %40, label %._crit_edge104.loopexit

._crit_edge104.loopexit:                          ; preds = %40
  br label %._crit_edge104

._crit_edge104:                                   ; preds = %._crit_edge104.loopexit, %._crit_edge131
  call void (...) @thread_barrier_wait() #4
  %53 = load i64, i64* %8, align 8
  call void @all_radixsort_node_aux_s3(i64 %53, i64* %29, i64* %31, i64* %28, i64* %30) #4
  call void (...) @thread_barrier_wait() #4
  br i1 %7, label %54, label %93

; <label>:54                                      ; preds = %._crit_edge104
  %55 = bitcast i64* %28 to i8*
  call void @free(i8* %55) #4
  %56 = bitcast i64* %29 to i8*
  call void @free(i8* %56) #4
  %57 = load i64, i64* %8, align 8
  %58 = shl i64 %57, 3
  %59 = call noalias i8* @malloc(i64 %58) #4
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %62

; <label>:61                                      ; preds = %54
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 179, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #5
  unreachable

; <label>:62                                      ; preds = %54
  store i8* %59, i8** bitcast (i64** @global_vStatus to i8**), align 8
  %63 = load i64, i64* @SCALE, align 8
  %64 = icmp slt i64 %63, 12
  %65 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %66 = bitcast i8* %65 to i64*
  %67 = load i64, i64* %66, align 8
  br i1 %64, label %68, label %72

; <label>:68                                      ; preds = %62
  %69 = udiv i64 %67, %6
  %70 = mul i64 %69, 24
  %71 = call noalias i8* @malloc(i64 %70) #4
  br label %80

; <label>:72                                      ; preds = %62
  %73 = uitofp i64 %67 to double
  %74 = fmul double %73, 2.000000e-01
  %75 = sitofp i64 %6 to double
  %76 = fdiv double %74, %75
  %77 = fmul double %76, 2.400000e+01
  %78 = fptoui double %77 to i64
  %79 = call noalias i8* @malloc(i64 %78) #4
  br label %80

; <label>:80                                      ; preds = %72, %68
  %pCutSet.0.in = phi i8* [ %71, %68 ], [ %79, %72 ]
  %81 = icmp eq i8* %pCutSet.0.in, null
  br i1 %81, label %82, label %83

; <label>:82                                      ; preds = %80
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 194, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #5
  unreachable

; <label>:83                                      ; preds = %80
  store i8* %pCutSet.0.in, i8** bitcast (%struct.edge** @global_pCutSet to i8**), align 8
  %84 = shl i64 %6, 3
  %85 = call noalias i8* @malloc(i64 %84) #4
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %88

; <label>:87                                      ; preds = %83
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 201, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #5
  unreachable

; <label>:88                                      ; preds = %83
  store i8* %85, i8** bitcast (i64** @global_startV to i8**), align 8
  %89 = call noalias i8* @malloc(i64 %84) #4
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %92

; <label>:91                                      ; preds = %88
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 204, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #5
  unreachable

; <label>:92                                      ; preds = %88
  store i8* %89, i8** bitcast (i64** @global_clusterSize to i8**), align 8
  br label %93

; <label>:93                                      ; preds = %92, %._crit_edge104
  call void (...) @thread_barrier_wait() #4
  %94 = load i64*, i64** @global_vStatus, align 8
  %95 = load %struct.edge*, %struct.edge** @global_pCutSet, align 8
  %96 = load i64*, i64** @global_startV, align 8
  %97 = load i64*, i64** @global_clusterSize, align 8
  %98 = load i64, i64* %i_start, align 8
  %99 = load i64, i64* %i_stop, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %.lr.ph99.preheader, label %._crit_edge100

.lr.ph99.preheader:                               ; preds = %93
  br label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph99.preheader, %.lr.ph99
  %i.197 = phi i64 [ %102, %.lr.ph99 ], [ %98, %.lr.ph99.preheader ]
  %101 = getelementptr inbounds i64, i64* %94, i64 %i.197
  store i64 -1, i64* %101, align 8
  %102 = add nsw i64 %i.197, 1
  %103 = load i64, i64* %i_stop, align 8
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %.lr.ph99, label %._crit_edge100.loopexit

._crit_edge100.loopexit:                          ; preds = %.lr.ph99
  br label %._crit_edge100

._crit_edge100:                                   ; preds = %._crit_edge100.loopexit, %93
  call void (...) @thread_barrier_wait() #4
  %105 = getelementptr inbounds i64, i64* %96, i64 %5
  %106 = getelementptr inbounds i64, i64* %97, i64 %5
  %107 = getelementptr inbounds i8, i8* %argPtr, i64 80
  %108 = bitcast i8* %107 to i64**
  %109 = getelementptr inbounds i8, i8* %argPtr, i64 48
  %110 = bitcast i8* %109 to i64**
  %111 = getelementptr inbounds i8, i8* %argPtr, i64 88
  %112 = bitcast i8* %111 to i64**
  %113 = getelementptr inbounds i8, i8* %argPtr, i64 96
  %114 = bitcast i8* %113 to i64**
  %115 = getelementptr inbounds i8, i8* %argPtr, i64 56
  %116 = bitcast i8* %115 to i64**
  %117 = getelementptr inbounds i8, i8* %argPtr, i64 64
  %118 = bitcast i8* %117 to i64**
  %.pre = load i64, i64* %8, align 8
  %.not = xor i1 %7, true
  %.not105 = icmp slt i64 %6, 1
  %brmerge = or i1 %.not105, %.not
  br label %119

; <label>:119                                     ; preds = %522, %._crit_edge100
  %120 = phi i64 [ %.pre, %._crit_edge100 ], [ %527, %522 ]
  %cutSetIndex.0 = phi i64 [ 0, %._crit_edge100 ], [ %cutSetIndex.14, %522 ]
  %currIndex.0 = phi i64 [ 0, %._crit_edge100 ], [ %currIndex.4, %522 ]
  %iter.0 = phi i64 [ 0, %._crit_edge100 ], [ %523, %522 ]
  %verticesVisited.0 = phi i64 [ 0, %._crit_edge100 ], [ %525, %522 ]
  %121 = icmp ult i64 %verticesVisited.0, %120
  br i1 %121, label %122, label %533

; <label>:122                                     ; preds = %119
  store i64 -1, i64* %105, align 8
  store i64 0, i64* %106, align 8
  %123 = load i64, i64* %8, align 8
  %124 = icmp eq i64 %currIndex.0, %123
  %.currIndex.0 = select i1 %124, i64 0, i64 %currIndex.0
  call void (...) @thread_barrier_wait() #4
  br i1 %brmerge, label %.loopexit24, label %.preheader14.lr.ph

.preheader14.lr.ph:                               ; preds = %122
  %125 = mul nsw i64 %iter.0, %6
  br label %.preheader14

.preheader14:                                     ; preds = %.loopexit15, %.preheader14.lr.ph
  %currIndex.245 = phi i64 [ %.currIndex.0, %.preheader14.lr.ph ], [ %currIndex.3, %.loopexit15 ]
  %t.042 = phi i64 [ 0, %.preheader14.lr.ph ], [ %200, %.loopexit15 ]
  %126 = load i64, i64* %8, align 8
  %127 = icmp ugt i64 %126, %currIndex.245
  br i1 %127, label %.lr.ph35.preheader, label %.loopexit15

.lr.ph35.preheader:                               ; preds = %.preheader14
  br label %.lr.ph35

.lr.ph35:                                         ; preds = %.lr.ph35.preheader, %197
  %r.034 = phi i64 [ %198, %197 ], [ %currIndex.245, %.lr.ph35.preheader ]
  %128 = xor i64 %r.034, -1
  %129 = add i64 %126, %128
  %130 = getelementptr inbounds i64, i64* %30, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds i64, i64* %94, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %133, -1
  br i1 %134, label %135, label %197

; <label>:135                                     ; preds = %.lr.ph35
  %.lcssa162 = phi i64* [ %132, %.lr.ph35 ]
  %.lcssa = phi i64 [ %131, %.lr.ph35 ]
  %r.034.lcssa = phi i64 [ %r.034, %.lr.ph35 ]
  %136 = getelementptr inbounds i64, i64* %96, i64 %t.042
  store i64 %.lcssa, i64* %136, align 8
  %137 = add nsw i64 %t.042, %125
  store i64 %137, i64* %.lcssa162, align 8
  %138 = load i64, i64* %136, align 8
  %139 = load i64*, i64** %110, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 %138
  %141 = load i64, i64* %140, align 8
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %.lr.ph38, label %.preheader13

.lr.ph38:                                         ; preds = %135
  %143 = getelementptr inbounds i64, i64* %97, i64 %t.042
  br label %150

.preheader13.loopexit:                            ; preds = %166
  %.lcssa164 = phi i64 [ %168, %166 ]
  br label %.preheader13

.preheader13:                                     ; preds = %.preheader13.loopexit, %135
  %144 = phi i64 [ %138, %135 ], [ %.lcssa164, %.preheader13.loopexit ]
  %145 = load i64*, i64** %108, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 %144
  %147 = load i64, i64* %146, align 8
  %148 = icmp sgt i64 %147, 0
  br i1 %148, label %.lr.ph40, label %._crit_edge41

.lr.ph40:                                         ; preds = %.preheader13
  %149 = getelementptr inbounds i64, i64* %97, i64 %t.042
  br label %173

; <label>:150                                     ; preds = %.lr.ph38, %166
  %151 = phi i64* [ %139, %.lr.ph38 ], [ %167, %166 ]
  %152 = phi i64 [ %138, %.lr.ph38 ], [ %168, %166 ]
  %j.036 = phi i64 [ 0, %.lr.ph38 ], [ %169, %166 ]
  %153 = load i64*, i64** %116, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 %152
  %155 = load i64, i64* %154, align 8
  %156 = add i64 %155, %j.036
  %157 = load i64*, i64** %118, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 %156
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds i64, i64* %94, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %161, -1
  br i1 %162, label %163, label %166

; <label>:163                                     ; preds = %150
  store i64 %137, i64* %160, align 8
  %164 = load i64, i64* %143, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %143, align 8
  %.pre115 = load i64, i64* %136, align 8
  %.pre116 = load i64*, i64** %110, align 8
  br label %166

; <label>:166                                     ; preds = %150, %163
  %167 = phi i64* [ %151, %150 ], [ %.pre116, %163 ]
  %168 = phi i64 [ %152, %150 ], [ %.pre115, %163 ]
  %169 = add nuw nsw i64 %j.036, 1
  %170 = getelementptr inbounds i64, i64* %167, i64 %168
  %171 = load i64, i64* %170, align 8
  %172 = icmp slt i64 %169, %171
  br i1 %172, label %150, label %.preheader13.loopexit

; <label>:173                                     ; preds = %.lr.ph40, %189
  %174 = phi i64* [ %145, %.lr.ph40 ], [ %190, %189 ]
  %175 = phi i64 [ %144, %.lr.ph40 ], [ %191, %189 ]
  %j.139 = phi i64 [ 0, %.lr.ph40 ], [ %192, %189 ]
  %176 = load i64*, i64** %112, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 %175
  %178 = load i64, i64* %177, align 8
  %179 = add i64 %178, %j.139
  %180 = load i64*, i64** %114, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 %179
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds i64, i64* %94, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = icmp eq i64 %184, -1
  br i1 %185, label %186, label %189

; <label>:186                                     ; preds = %173
  store i64 %137, i64* %183, align 8
  %187 = load i64, i64* %149, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %149, align 8
  %.pre117 = load i64, i64* %136, align 8
  %.pre118 = load i64*, i64** %108, align 8
  br label %189

; <label>:189                                     ; preds = %173, %186
  %190 = phi i64* [ %174, %173 ], [ %.pre118, %186 ]
  %191 = phi i64 [ %175, %173 ], [ %.pre117, %186 ]
  %192 = add nuw nsw i64 %j.139, 1
  %193 = getelementptr inbounds i64, i64* %190, i64 %191
  %194 = load i64, i64* %193, align 8
  %195 = icmp slt i64 %192, %194
  br i1 %195, label %173, label %._crit_edge41.loopexit

._crit_edge41.loopexit:                           ; preds = %189
  br label %._crit_edge41

._crit_edge41:                                    ; preds = %._crit_edge41.loopexit, %.preheader13
  %196 = add nsw i64 %r.034.lcssa, 1
  br label %.loopexit15

; <label>:197                                     ; preds = %.lr.ph35
  %198 = add nsw i64 %r.034, 1
  %199 = icmp ugt i64 %126, %198
  br i1 %199, label %.lr.ph35, label %.loopexit15.loopexit

.loopexit15.loopexit:                             ; preds = %197
  br label %.loopexit15

.loopexit15:                                      ; preds = %.loopexit15.loopexit, %.preheader14, %._crit_edge41
  %currIndex.3 = phi i64 [ %196, %._crit_edge41 ], [ %currIndex.245, %.preheader14 ], [ %currIndex.245, %.loopexit15.loopexit ]
  %200 = add nuw nsw i64 %t.042, 1
  %exitcond113 = icmp eq i64 %200, %6
  br i1 %exitcond113, label %.loopexit24.loopexit, label %.preheader14

.loopexit24.loopexit:                             ; preds = %.loopexit15
  %currIndex.3.lcssa = phi i64 [ %currIndex.3, %.loopexit15 ]
  br label %.loopexit24

.loopexit24:                                      ; preds = %.loopexit24.loopexit, %122
  %currIndex.4 = phi i64 [ %.currIndex.0, %122 ], [ %currIndex.3.lcssa, %.loopexit24.loopexit ]
  call void (...) @thread_barrier_wait() #4
  %201 = load i64, i64* %105, align 8
  %202 = icmp eq i64 %201, -1
  br i1 %202, label %.loopexit19, label %203

; <label>:203                                     ; preds = %.loopexit24
  %204 = load i64, i64* %106, align 8
  %205 = uitofp i64 %204 to double
  %206 = load i64*, i64** %108, align 8
  %207 = getelementptr inbounds i64, i64* %206, i64 %201
  %208 = load i64, i64* %207, align 8
  %209 = load i64*, i64** %110, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 %201
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, %208
  %213 = sitofp i64 %212 to double
  %214 = fmul double %213, 6.000000e-01
  %215 = fcmp ult double %205, %214
  br i1 %215, label %216, label %.preheader22

; <label>:216                                     ; preds = %203
  %217 = load i64, i64* %8, align 8
  %218 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %219 = mul nsw i64 %218, %6
  %220 = udiv i64 %217, %219
  %221 = icmp ule i64 %iter.0, %220
  %222 = icmp eq i64 %204, 0
  %or.cond4 = or i1 %222, %221
  br i1 %or.cond4, label %.loopexit21, label %.preheader22

.preheader22:                                     ; preds = %216, %203
  %223 = icmp sgt i64 %211, 0
  br i1 %223, label %.lr.ph65, label %.preheader20

.lr.ph65:                                         ; preds = %.preheader22
  %224 = mul nsw i64 %iter.0, %6
  %225 = add nsw i64 %224, %5
  br label %231

.preheader20.loopexit:                            ; preds = %.loopexit11
  %cutSetIndex.6.lcssa = phi i64 [ %cutSetIndex.6, %.loopexit11 ]
  %cliqueSize.1.lcssa = phi i64 [ %cliqueSize.1, %.loopexit11 ]
  %.pre123 = load i64*, i64** %108, align 8
  %.phi.trans.insert = getelementptr inbounds i64, i64* %.pre123, i64 %201
  %.pre124 = load i64, i64* %.phi.trans.insert, align 8
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.loopexit, %.preheader22
  %226 = phi i64 [ %208, %.preheader22 ], [ %.pre124, %.preheader20.loopexit ]
  %227 = phi i64* [ %206, %.preheader22 ], [ %.pre123, %.preheader20.loopexit ]
  %cutSetIndex.1.lcssa = phi i64 [ %cutSetIndex.0, %.preheader22 ], [ %cutSetIndex.6.lcssa, %.preheader20.loopexit ]
  %cliqueSize.0.lcssa = phi i64 [ 1, %.preheader22 ], [ %cliqueSize.1.lcssa, %.preheader20.loopexit ]
  %228 = icmp sgt i64 %226, 0
  br i1 %228, label %.lr.ph87, label %.loopexit21

.lr.ph87:                                         ; preds = %.preheader20
  %229 = mul nsw i64 %iter.0, %6
  %230 = add nsw i64 %229, %5
  br label %330

; <label>:231                                     ; preds = %.lr.ph65, %.loopexit11
  %232 = phi i64* [ %209, %.lr.ph65 ], [ %326, %.loopexit11 ]
  %cutSetIndex.164 = phi i64 [ %cutSetIndex.0, %.lr.ph65 ], [ %cutSetIndex.6, %.loopexit11 ]
  %cliqueSize.062 = phi i64 [ 1, %.lr.ph65 ], [ %cliqueSize.1, %.loopexit11 ]
  %j2.061 = phi i64 [ 0, %.lr.ph65 ], [ %325, %.loopexit11 ]
  %233 = load i64*, i64** %116, align 8
  %234 = getelementptr inbounds i64, i64* %233, i64 %201
  %235 = load i64, i64* %234, align 8
  %236 = add i64 %235, %j2.061
  %237 = load i64*, i64** %118, align 8
  %238 = getelementptr inbounds i64, i64* %237, i64 %236
  %239 = load i64, i64* %238, align 8
  %240 = getelementptr inbounds i64, i64* %94, i64 %239
  %241 = load i64, i64* %240, align 8
  %242 = icmp eq i64 %241, %225
  br i1 %242, label %.preheader12, label %.loopexit11

.preheader12:                                     ; preds = %231
  %243 = getelementptr inbounds i64, i64* %232, i64 %239
  %244 = load i64, i64* %243, align 8
  %245 = icmp sgt i64 %244, 0
  br i1 %245, label %.lr.ph50.preheader, label %._crit_edge51.thread

.lr.ph50.preheader:                               ; preds = %.preheader12
  br label %.lr.ph50

.lr.ph50:                                         ; preds = %.lr.ph50.preheader, %..lr.ph50_crit_edge
  %246 = phi i64* [ %267, %..lr.ph50_crit_edge ], [ %232, %.lr.ph50.preheader ]
  %247 = phi i64* [ %.pre120, %..lr.ph50_crit_edge ], [ %237, %.lr.ph50.preheader ]
  %248 = phi i64* [ %.pre119, %..lr.ph50_crit_edge ], [ %233, %.lr.ph50.preheader ]
  %cutSetIndex.249 = phi i64 [ %cutSetIndex.3, %..lr.ph50_crit_edge ], [ %cutSetIndex.164, %.lr.ph50.preheader ]
  %clusterCounter.048 = phi i64 [ %clusterCounter.1, %..lr.ph50_crit_edge ], [ 0, %.lr.ph50.preheader ]
  %k.047 = phi i64 [ %268, %..lr.ph50_crit_edge ], [ 0, %.lr.ph50.preheader ]
  %cutSetCounter.046 = phi i64 [ %cutSetCounter.1, %..lr.ph50_crit_edge ], [ 0, %.lr.ph50.preheader ]
  %249 = getelementptr inbounds i64, i64* %248, i64 %239
  %250 = load i64, i64* %249, align 8
  %251 = add i64 %250, %k.047
  %252 = getelementptr inbounds i64, i64* %247, i64 %251
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds i64, i64* %94, i64 %253
  %255 = load i64, i64* %254, align 8
  %256 = icmp eq i64 %255, %225
  br i1 %256, label %257, label %259

; <label>:257                                     ; preds = %.lr.ph50
  %258 = add i64 %clusterCounter.048, 1
  br label %266

; <label>:259                                     ; preds = %.lr.ph50
  %260 = add i64 %cutSetCounter.046, 1
  %261 = icmp eq i64 %255, -1
  br i1 %261, label %262, label %266

; <label>:262                                     ; preds = %259
  %263 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %cutSetIndex.249, i32 0
  store i64 %239, i64* %263, align 8
  %264 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %cutSetIndex.249, i32 1
  store i64 %253, i64* %264, align 8
  %265 = add i64 %cutSetIndex.249, 1
  %.pre121 = load i64*, i64** %110, align 8
  br label %266

; <label>:266                                     ; preds = %257, %262, %259
  %267 = phi i64* [ %246, %257 ], [ %.pre121, %262 ], [ %246, %259 ]
  %cutSetCounter.1 = phi i64 [ %cutSetCounter.046, %257 ], [ %260, %262 ], [ %260, %259 ]
  %clusterCounter.1 = phi i64 [ %258, %257 ], [ %clusterCounter.048, %262 ], [ %clusterCounter.048, %259 ]
  %cutSetIndex.3 = phi i64 [ %cutSetIndex.249, %257 ], [ %265, %262 ], [ %cutSetIndex.249, %259 ]
  %268 = add nuw nsw i64 %k.047, 1
  %269 = getelementptr inbounds i64, i64* %267, i64 %239
  %270 = load i64, i64* %269, align 8
  %271 = icmp slt i64 %268, %270
  br i1 %271, label %..lr.ph50_crit_edge, label %._crit_edge51

..lr.ph50_crit_edge:                              ; preds = %266
  %.pre119 = load i64*, i64** %116, align 8
  %.pre120 = load i64*, i64** %118, align 8
  br label %.lr.ph50

._crit_edge51:                                    ; preds = %266
  %.lcssa165 = phi i64 [ %270, %266 ]
  %cutSetIndex.3.lcssa = phi i64 [ %cutSetIndex.3, %266 ]
  %clusterCounter.1.lcssa = phi i64 [ %clusterCounter.1, %266 ]
  %cutSetCounter.1.lcssa = phi i64 [ %cutSetCounter.1, %266 ]
  %272 = icmp ult i64 %cutSetCounter.1.lcssa, %clusterCounter.1.lcssa
  br i1 %272, label %273, label %._crit_edge51.thread

; <label>:273                                     ; preds = %._crit_edge51
  %274 = load i64, i64* @SCALE, align 8
  %275 = icmp slt i64 %274, 9
  %276 = icmp ult i64 %clusterCounter.1.lcssa, 3
  %or.cond = and i1 %276, %275
  br i1 %or.cond, label %277, label %thread-pre-split

; <label>:277                                     ; preds = %273
  %278 = load i64*, i64** %108, align 8
  %279 = getelementptr inbounds i64, i64* %278, i64 %239
  %280 = load i64, i64* %279, align 8
  %281 = add nsw i64 %280, %.lcssa165
  %282 = add i64 %clusterCounter.1.lcssa, %cutSetCounter.1.lcssa
  %283 = icmp ugt i64 %281, %282
  br i1 %283, label %284, label %thread-pre-split

; <label>:284                                     ; preds = %277
  %285 = load i64, i64* %106, align 8
  %286 = add i64 %clusterCounter.1.lcssa, 2
  %287 = icmp ugt i64 %285, %286
  br i1 %287, label %._crit_edge51.thread, label %thread-pre-split

thread-pre-split:                                 ; preds = %284, %277, %273
  %288 = icmp sgt i64 %274, 9
  br i1 %288, label %289, label %298

; <label>:289                                     ; preds = %thread-pre-split
  %290 = uitofp i64 %clusterCounter.1.lcssa to double
  %291 = load i64, i64* %106, align 8
  %292 = uitofp i64 %291 to double
  %293 = fmul double %292, 5.000000e-01
  %294 = fcmp olt double %290, %293
  br i1 %294, label %._crit_edge51.thread, label %298

._crit_edge51.thread:                             ; preds = %.preheader12, %._crit_edge51, %289, %284
  store i64 -1, i64* %240, align 8
  %295 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %cutSetIndex.164, i32 0
  store i64 %201, i64* %295, align 8
  %296 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %cutSetIndex.164, i32 1
  store i64 %239, i64* %296, align 8
  %297 = add i64 %cutSetIndex.164, 1
  br label %.loopexit11

; <label>:298                                     ; preds = %289, %thread-pre-split
  %299 = add i64 %cliqueSize.062, 1
  %300 = load i64*, i64** %108, align 8
  %301 = getelementptr inbounds i64, i64* %300, i64 %239
  %302 = load i64, i64* %301, align 8
  %303 = icmp sgt i64 %302, 0
  br i1 %303, label %.lr.ph59.preheader, label %.loopexit11

.lr.ph59.preheader:                               ; preds = %298
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %319
  %304 = phi i64* [ %320, %319 ], [ %300, %.lr.ph59.preheader ]
  %cutSetIndex.457 = phi i64 [ %cutSetIndex.5, %319 ], [ %cutSetIndex.3.lcssa, %.lr.ph59.preheader ]
  %k.156 = phi i64 [ %321, %319 ], [ 0, %.lr.ph59.preheader ]
  %305 = load i64*, i64** %112, align 8
  %306 = getelementptr inbounds i64, i64* %305, i64 %239
  %307 = load i64, i64* %306, align 8
  %308 = add i64 %307, %k.156
  %309 = load i64*, i64** %114, align 8
  %310 = getelementptr inbounds i64, i64* %309, i64 %308
  %311 = load i64, i64* %310, align 8
  %312 = getelementptr inbounds i64, i64* %94, i64 %311
  %313 = load i64, i64* %312, align 8
  %314 = icmp eq i64 %313, -1
  br i1 %314, label %315, label %319

; <label>:315                                     ; preds = %.lr.ph59
  %316 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %cutSetIndex.457, i32 0
  store i64 %239, i64* %316, align 8
  %317 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %cutSetIndex.457, i32 1
  store i64 %311, i64* %317, align 8
  %318 = add i64 %cutSetIndex.457, 1
  %.pre122 = load i64*, i64** %108, align 8
  br label %319

; <label>:319                                     ; preds = %.lr.ph59, %315
  %320 = phi i64* [ %.pre122, %315 ], [ %304, %.lr.ph59 ]
  %cutSetIndex.5 = phi i64 [ %318, %315 ], [ %cutSetIndex.457, %.lr.ph59 ]
  %321 = add nuw nsw i64 %k.156, 1
  %322 = getelementptr inbounds i64, i64* %320, i64 %239
  %323 = load i64, i64* %322, align 8
  %324 = icmp slt i64 %321, %323
  br i1 %324, label %.lr.ph59, label %.loopexit11.loopexit

.loopexit11.loopexit:                             ; preds = %319
  %cutSetIndex.5.lcssa = phi i64 [ %cutSetIndex.5, %319 ]
  br label %.loopexit11

.loopexit11:                                      ; preds = %.loopexit11.loopexit, %298, %231, %._crit_edge51.thread
  %cliqueSize.1 = phi i64 [ %cliqueSize.062, %._crit_edge51.thread ], [ %cliqueSize.062, %231 ], [ %299, %298 ], [ %299, %.loopexit11.loopexit ]
  %cutSetIndex.6 = phi i64 [ %297, %._crit_edge51.thread ], [ %cutSetIndex.164, %231 ], [ %cutSetIndex.3.lcssa, %298 ], [ %cutSetIndex.5.lcssa, %.loopexit11.loopexit ]
  %325 = add nuw nsw i64 %j2.061, 1
  %326 = load i64*, i64** %110, align 8
  %327 = getelementptr inbounds i64, i64* %326, i64 %201
  %328 = load i64, i64* %327, align 8
  %329 = icmp slt i64 %325, %328
  br i1 %329, label %231, label %.preheader20.loopexit

; <label>:330                                     ; preds = %.lr.ph87, %.loopexit
  %331 = phi i64* [ %227, %.lr.ph87 ], [ %425, %.loopexit ]
  %cutSetIndex.786 = phi i64 [ %cutSetIndex.1.lcssa, %.lr.ph87 ], [ %cutSetIndex.12, %.loopexit ]
  %cliqueSize.284 = phi i64 [ %cliqueSize.0.lcssa, %.lr.ph87 ], [ %cliqueSize.3, %.loopexit ]
  %j2.183 = phi i64 [ 0, %.lr.ph87 ], [ %426, %.loopexit ]
  %332 = load i64*, i64** %112, align 8
  %333 = getelementptr inbounds i64, i64* %332, i64 %201
  %334 = load i64, i64* %333, align 8
  %335 = add i64 %334, %j2.183
  %336 = load i64*, i64** %114, align 8
  %337 = getelementptr inbounds i64, i64* %336, i64 %335
  %338 = load i64, i64* %337, align 8
  %339 = getelementptr inbounds i64, i64* %94, i64 %338
  %340 = load i64, i64* %339, align 8
  %341 = icmp eq i64 %340, %230
  br i1 %341, label %.preheader10, label %.loopexit

.preheader10:                                     ; preds = %330
  %342 = load i64*, i64** %110, align 8
  %343 = getelementptr inbounds i64, i64* %342, i64 %338
  %344 = load i64, i64* %343, align 8
  %345 = icmp sgt i64 %344, 0
  br i1 %345, label %.lr.ph72.preheader, label %._crit_edge73.thread

.lr.ph72.preheader:                               ; preds = %.preheader10
  br label %.lr.ph72

.lr.ph72:                                         ; preds = %.lr.ph72.preheader, %366
  %346 = phi i64* [ %367, %366 ], [ %342, %.lr.ph72.preheader ]
  %cutSetIndex.871 = phi i64 [ %cutSetIndex.9, %366 ], [ %cutSetIndex.786, %.lr.ph72.preheader ]
  %k10.070 = phi i64 [ %368, %366 ], [ 0, %.lr.ph72.preheader ]
  %cutSetCounter8.069 = phi i64 [ %cutSetCounter8.1, %366 ], [ 0, %.lr.ph72.preheader ]
  %clusterCounter6.068 = phi i64 [ %clusterCounter6.1, %366 ], [ 0, %.lr.ph72.preheader ]
  %347 = load i64*, i64** %116, align 8
  %348 = getelementptr inbounds i64, i64* %347, i64 %338
  %349 = load i64, i64* %348, align 8
  %350 = add i64 %349, %k10.070
  %351 = load i64*, i64** %118, align 8
  %352 = getelementptr inbounds i64, i64* %351, i64 %350
  %353 = load i64, i64* %352, align 8
  %354 = getelementptr inbounds i64, i64* %94, i64 %353
  %355 = load i64, i64* %354, align 8
  %356 = icmp eq i64 %355, %230
  br i1 %356, label %357, label %359

; <label>:357                                     ; preds = %.lr.ph72
  %358 = add i64 %clusterCounter6.068, 1
  br label %366

; <label>:359                                     ; preds = %.lr.ph72
  %360 = add i64 %cutSetCounter8.069, 1
  %361 = icmp eq i64 %355, -1
  br i1 %361, label %362, label %366

; <label>:362                                     ; preds = %359
  %363 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %cutSetIndex.871, i32 0
  store i64 %338, i64* %363, align 8
  %364 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %cutSetIndex.871, i32 1
  store i64 %353, i64* %364, align 8
  %365 = add i64 %cutSetIndex.871, 1
  %.pre125 = load i64*, i64** %110, align 8
  br label %366

; <label>:366                                     ; preds = %357, %362, %359
  %367 = phi i64* [ %346, %357 ], [ %.pre125, %362 ], [ %346, %359 ]
  %clusterCounter6.1 = phi i64 [ %358, %357 ], [ %clusterCounter6.068, %362 ], [ %clusterCounter6.068, %359 ]
  %cutSetCounter8.1 = phi i64 [ %cutSetCounter8.069, %357 ], [ %360, %362 ], [ %360, %359 ]
  %cutSetIndex.9 = phi i64 [ %cutSetIndex.871, %357 ], [ %365, %362 ], [ %cutSetIndex.871, %359 ]
  %368 = add nuw nsw i64 %k10.070, 1
  %369 = getelementptr inbounds i64, i64* %367, i64 %338
  %370 = load i64, i64* %369, align 8
  %371 = icmp slt i64 %368, %370
  br i1 %371, label %.lr.ph72, label %._crit_edge73

._crit_edge73:                                    ; preds = %366
  %.lcssa166 = phi i64 [ %370, %366 ]
  %cutSetIndex.9.lcssa = phi i64 [ %cutSetIndex.9, %366 ]
  %cutSetCounter8.1.lcssa = phi i64 [ %cutSetCounter8.1, %366 ]
  %clusterCounter6.1.lcssa = phi i64 [ %clusterCounter6.1, %366 ]
  %372 = icmp ult i64 %cutSetCounter8.1.lcssa, %clusterCounter6.1.lcssa
  br i1 %372, label %373, label %._crit_edge73.thread

; <label>:373                                     ; preds = %._crit_edge73
  %374 = load i64, i64* @SCALE, align 8
  %375 = icmp slt i64 %374, 9
  %376 = icmp ult i64 %clusterCounter6.1.lcssa, 3
  %or.cond3 = and i1 %376, %375
  br i1 %or.cond3, label %377, label %thread-pre-split7

; <label>:377                                     ; preds = %373
  %378 = load i64*, i64** %108, align 8
  %379 = getelementptr inbounds i64, i64* %378, i64 %338
  %380 = load i64, i64* %379, align 8
  %381 = add nsw i64 %380, %.lcssa166
  %382 = add i64 %cutSetCounter8.1.lcssa, %clusterCounter6.1.lcssa
  %383 = icmp ugt i64 %381, %382
  br i1 %383, label %384, label %thread-pre-split7

; <label>:384                                     ; preds = %377
  %385 = load i64, i64* %106, align 8
  %386 = add i64 %clusterCounter6.1.lcssa, 2
  %387 = icmp ugt i64 %385, %386
  br i1 %387, label %._crit_edge73.thread, label %thread-pre-split7

thread-pre-split7:                                ; preds = %384, %377, %373
  %388 = icmp sgt i64 %374, 9
  br i1 %388, label %389, label %398

; <label>:389                                     ; preds = %thread-pre-split7
  %390 = uitofp i64 %clusterCounter6.1.lcssa to double
  %391 = load i64, i64* %106, align 8
  %392 = uitofp i64 %391 to double
  %393 = fmul double %392, 5.000000e-01
  %394 = fcmp olt double %390, %393
  br i1 %394, label %._crit_edge73.thread, label %398

._crit_edge73.thread:                             ; preds = %.preheader10, %._crit_edge73, %389, %384
  store i64 -1, i64* %339, align 8
  %395 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %cutSetIndex.786, i32 0
  store i64 %201, i64* %395, align 8
  %396 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %cutSetIndex.786, i32 1
  store i64 %338, i64* %396, align 8
  %397 = add i64 %cutSetIndex.786, 1
  %.pre127 = load i64*, i64** %108, align 8
  br label %.loopexit

; <label>:398                                     ; preds = %389, %thread-pre-split7
  %399 = add i64 %cliqueSize.284, 1
  %400 = load i64*, i64** %108, align 8
  %401 = getelementptr inbounds i64, i64* %400, i64 %338
  %402 = load i64, i64* %401, align 8
  %403 = icmp sgt i64 %402, 0
  br i1 %403, label %.lr.ph81.preheader, label %.loopexit

.lr.ph81.preheader:                               ; preds = %398
  br label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %419
  %404 = phi i64* [ %420, %419 ], [ %400, %.lr.ph81.preheader ]
  %cutSetIndex.1079 = phi i64 [ %cutSetIndex.11, %419 ], [ %cutSetIndex.9.lcssa, %.lr.ph81.preheader ]
  %k10.178 = phi i64 [ %421, %419 ], [ 0, %.lr.ph81.preheader ]
  %405 = load i64*, i64** %112, align 8
  %406 = getelementptr inbounds i64, i64* %405, i64 %338
  %407 = load i64, i64* %406, align 8
  %408 = add i64 %407, %k10.178
  %409 = load i64*, i64** %114, align 8
  %410 = getelementptr inbounds i64, i64* %409, i64 %408
  %411 = load i64, i64* %410, align 8
  %412 = getelementptr inbounds i64, i64* %94, i64 %411
  %413 = load i64, i64* %412, align 8
  %414 = icmp eq i64 %413, -1
  br i1 %414, label %415, label %419

; <label>:415                                     ; preds = %.lr.ph81
  %416 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %cutSetIndex.1079, i32 0
  store i64 %338, i64* %416, align 8
  %417 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %cutSetIndex.1079, i32 1
  store i64 %411, i64* %417, align 8
  %418 = add i64 %cutSetIndex.1079, 1
  %.pre126 = load i64*, i64** %108, align 8
  br label %419

; <label>:419                                     ; preds = %.lr.ph81, %415
  %420 = phi i64* [ %.pre126, %415 ], [ %404, %.lr.ph81 ]
  %cutSetIndex.11 = phi i64 [ %418, %415 ], [ %cutSetIndex.1079, %.lr.ph81 ]
  %421 = add nuw nsw i64 %k10.178, 1
  %422 = getelementptr inbounds i64, i64* %420, i64 %338
  %423 = load i64, i64* %422, align 8
  %424 = icmp slt i64 %421, %423
  br i1 %424, label %.lr.ph81, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %419
  %cutSetIndex.11.lcssa = phi i64 [ %cutSetIndex.11, %419 ]
  %.lcssa167 = phi i64* [ %420, %419 ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %398, %330, %._crit_edge73.thread
  %425 = phi i64* [ %.pre127, %._crit_edge73.thread ], [ %331, %330 ], [ %400, %398 ], [ %.lcssa167, %.loopexit.loopexit ]
  %cliqueSize.3 = phi i64 [ %cliqueSize.284, %._crit_edge73.thread ], [ %cliqueSize.284, %330 ], [ %399, %398 ], [ %399, %.loopexit.loopexit ]
  %cutSetIndex.12 = phi i64 [ %397, %._crit_edge73.thread ], [ %cutSetIndex.786, %330 ], [ %cutSetIndex.9.lcssa, %398 ], [ %cutSetIndex.11.lcssa, %.loopexit.loopexit ]
  %426 = add nuw nsw i64 %j2.183, 1
  %427 = getelementptr inbounds i64, i64* %425, i64 %201
  %428 = load i64, i64* %427, align 8
  %429 = icmp slt i64 %426, %428
  br i1 %429, label %330, label %.loopexit21.loopexit

.loopexit21.loopexit:                             ; preds = %.loopexit
  %.lcssa168 = phi i64 [ %428, %.loopexit ]
  %cutSetIndex.12.lcssa = phi i64 [ %cutSetIndex.12, %.loopexit ]
  %cliqueSize.3.lcssa = phi i64 [ %cliqueSize.3, %.loopexit ]
  br label %.loopexit21

.loopexit21:                                      ; preds = %.loopexit21.loopexit, %.preheader20, %216
  %430 = phi i64 [ %208, %216 ], [ %226, %.preheader20 ], [ %.lcssa168, %.loopexit21.loopexit ]
  %cliqueSize.4 = phi i64 [ 1, %216 ], [ %cliqueSize.0.lcssa, %.preheader20 ], [ %cliqueSize.3.lcssa, %.loopexit21.loopexit ]
  %cutSetIndex.13 = phi i64 [ %cutSetIndex.0, %216 ], [ %cutSetIndex.1.lcssa, %.preheader20 ], [ %cutSetIndex.12.lcssa, %.loopexit21.loopexit ]
  %431 = load i64, i64* %106, align 8
  %432 = icmp eq i64 %431, 0
  br i1 %432, label %.loopexit19, label %433

; <label>:433                                     ; preds = %.loopexit21
  %434 = uitofp i64 %431 to double
  %435 = load i64*, i64** %110, align 8
  %436 = getelementptr inbounds i64, i64* %435, i64 %201
  %437 = load i64, i64* %436, align 8
  %438 = add nsw i64 %437, %430
  %439 = sitofp i64 %438 to double
  %440 = fmul double %439, 6.000000e-01
  %441 = fcmp olt double %434, %440
  br i1 %441, label %442, label %.loopexit19

; <label>:442                                     ; preds = %433
  %443 = load i64, i64* %8, align 8
  %444 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %445 = mul nsw i64 %444, %6
  %446 = udiv i64 %443, %445
  %447 = icmp ugt i64 %iter.0, %446
  br i1 %447, label %.loopexit19, label %448

; <label>:448                                     ; preds = %442
  %449 = getelementptr inbounds i64, i64* %94, i64 %201
  store i64 -1, i64* %449, align 8
  %450 = load i64*, i64** %110, align 8
  %451 = getelementptr inbounds i64, i64* %450, i64 %201
  %452 = load i64, i64* %451, align 8
  %453 = icmp sgt i64 %452, 0
  br i1 %453, label %.lr.ph92, label %.preheader18

.lr.ph92:                                         ; preds = %448
  %454 = mul nsw i64 %iter.0, %6
  %455 = add nsw i64 %454, %5
  br label %462

.preheader18.loopexit:                            ; preds = %475
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.loopexit, %448
  %456 = load i64*, i64** %108, align 8
  %457 = getelementptr inbounds i64, i64* %456, i64 %201
  %458 = load i64, i64* %457, align 8
  %459 = icmp sgt i64 %458, 0
  br i1 %459, label %.lr.ph94, label %.loopexit19

.lr.ph94:                                         ; preds = %.preheader18
  %460 = mul nsw i64 %iter.0, %6
  %461 = add nsw i64 %460, %5
  br label %481

; <label>:462                                     ; preds = %.lr.ph92, %475
  %463 = phi i64* [ %450, %.lr.ph92 ], [ %476, %475 ]
  %j15.090 = phi i64 [ 0, %.lr.ph92 ], [ %477, %475 ]
  %464 = load i64*, i64** %116, align 8
  %465 = getelementptr inbounds i64, i64* %464, i64 %201
  %466 = load i64, i64* %465, align 8
  %467 = add i64 %466, %j15.090
  %468 = load i64*, i64** %118, align 8
  %469 = getelementptr inbounds i64, i64* %468, i64 %467
  %470 = load i64, i64* %469, align 8
  %471 = getelementptr inbounds i64, i64* %94, i64 %470
  %472 = load i64, i64* %471, align 8
  %473 = icmp eq i64 %472, %455
  br i1 %473, label %474, label %475

; <label>:474                                     ; preds = %462
  store i64 -1, i64* %471, align 8
  %.pre128 = load i64*, i64** %110, align 8
  br label %475

; <label>:475                                     ; preds = %462, %474
  %476 = phi i64* [ %463, %462 ], [ %.pre128, %474 ]
  %477 = add nuw nsw i64 %j15.090, 1
  %478 = getelementptr inbounds i64, i64* %476, i64 %201
  %479 = load i64, i64* %478, align 8
  %480 = icmp slt i64 %477, %479
  br i1 %480, label %462, label %.preheader18.loopexit

; <label>:481                                     ; preds = %.lr.ph94, %494
  %482 = phi i64* [ %456, %.lr.ph94 ], [ %495, %494 ]
  %j15.193 = phi i64 [ 0, %.lr.ph94 ], [ %496, %494 ]
  %483 = load i64*, i64** %112, align 8
  %484 = getelementptr inbounds i64, i64* %483, i64 %201
  %485 = load i64, i64* %484, align 8
  %486 = add i64 %485, %j15.193
  %487 = load i64*, i64** %114, align 8
  %488 = getelementptr inbounds i64, i64* %487, i64 %486
  %489 = load i64, i64* %488, align 8
  %490 = getelementptr inbounds i64, i64* %94, i64 %489
  %491 = load i64, i64* %490, align 8
  %492 = icmp eq i64 %491, %461
  br i1 %492, label %493, label %494

; <label>:493                                     ; preds = %481
  store i64 -1, i64* %490, align 8
  %.pre129 = load i64*, i64** %108, align 8
  br label %494

; <label>:494                                     ; preds = %481, %493
  %495 = phi i64* [ %482, %481 ], [ %.pre129, %493 ]
  %496 = add nuw nsw i64 %j15.193, 1
  %497 = getelementptr inbounds i64, i64* %495, i64 %201
  %498 = load i64, i64* %497, align 8
  %499 = icmp slt i64 %496, %498
  br i1 %499, label %481, label %.loopexit19.loopexit

.loopexit19.loopexit:                             ; preds = %494
  br label %.loopexit19

.loopexit19:                                      ; preds = %.loopexit19.loopexit, %.preheader18, %.loopexit21, %442, %.loopexit24, %433
  %cliqueSize.5 = phi i64 [ %cliqueSize.4, %442 ], [ %cliqueSize.4, %433 ], [ 0, %.loopexit24 ], [ 1, %.loopexit21 ], [ 0, %.preheader18 ], [ 0, %.loopexit19.loopexit ]
  %cutSetIndex.14 = phi i64 [ %cutSetIndex.13, %442 ], [ %cutSetIndex.13, %433 ], [ %cutSetIndex.0, %.loopexit24 ], [ %cutSetIndex.13, %.loopexit21 ], [ %cutSetIndex.13, %.preheader18 ], [ %cutSetIndex.13, %.loopexit19.loopexit ]
  br i1 %7, label %500, label %.critedge

; <label>:500                                     ; preds = %.loopexit19
  store i64 0, i64* @global_cliqueSize, align 8
  call void (...) @thread_barrier_wait() #4
  %501 = add nsw i64 %iter.0, 1
  store i64 %501, i64* @global_iter, align 8
  br label %.outer17.preheader

.critedge:                                        ; preds = %.loopexit19
  call void (...) @thread_barrier_wait() #4
  br label %.outer17.preheader

.outer17.preheader:                               ; preds = %.critedge, %500
  br label %.outer17

.outer17:                                         ; preds = %.outer17.preheader, %507
  %tries.0.ph = phi i32 [ %508, %507 ], [ 9, %.outer17.preheader ]
  %502 = call i64 (...) @RTM_fallback_isLocked() #4
  %503 = icmp eq i64 %502, 0
  br i1 %503, label %._crit_edge96, label %.lr.ph95.preheader

.lr.ph95.preheader:                               ; preds = %.outer17
  br label %.lr.ph95

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %.lr.ph95
  call void @llvm.x86.sse2.pause() #4
  %504 = call i64 (...) @RTM_fallback_isLocked() #4
  %505 = icmp eq i64 %504, 0
  br i1 %505, label %._crit_edge96.loopexit, label %.lr.ph95

._crit_edge96.loopexit:                           ; preds = %.lr.ph95
  br label %._crit_edge96

._crit_edge96:                                    ; preds = %._crit_edge96.loopexit, %.outer17
  %506 = icmp slt i32 %tries.0.ph, 2
  br i1 %506, label %519, label %507

; <label>:507                                     ; preds = %._crit_edge96
  %508 = add nsw i32 %tries.0.ph, -1
  %509 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 5, i64 0, i64 5, i64 4294967295) #4, !srcloc !1
  %510 = trunc i64 %509 to i32
  %511 = icmp eq i32 %510, -1
  br i1 %511, label %512, label %.outer17

; <label>:512                                     ; preds = %507
  %513 = call i64 (...) @RTM_fallback_isLocked() #4
  %514 = icmp eq i64 %513, 0
  br i1 %514, label %516, label %515

; <label>:515                                     ; preds = %512
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !2
  br label %516

; <label>:516                                     ; preds = %512, %515
  %517 = load i64, i64* @global_cliqueSize, align 8
  %518 = add i64 %517, %cliqueSize.5
  store i64 %518, i64* @global_cliqueSize, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 5) #4, !srcloc !3
  br label %522

; <label>:519                                     ; preds = %._crit_edge96
  call void (...) @RTM_fallback_lock() #4
  %520 = load i64, i64* @global_cliqueSize, align 8
  %521 = add i64 %520, %cliqueSize.5
  store i64 %521, i64* @global_cliqueSize, align 8
  call void (...) @RTM_fallback_unlock() #4
  br label %522

; <label>:522                                     ; preds = %519, %516
  call void (...) @thread_barrier_wait() #4
  %523 = load i64, i64* @global_iter, align 8
  %524 = load i64, i64* @global_cliqueSize, align 8
  %525 = add i64 %524, %verticesVisited.0
  %526 = uitofp i64 %525 to double
  %527 = load i64, i64* %8, align 8
  %528 = uitofp i64 %527 to double
  %529 = fmul double %528, 9.500000e-01
  %530 = fcmp oge double %526, %529
  %531 = lshr i64 %527, 1
  %532 = icmp ugt i64 %523, %531
  %or.cond6 = or i1 %532, %530
  br i1 %or.cond6, label %533, label %119

; <label>:533                                     ; preds = %522, %119
  %cutSetIndex.15 = phi i64 [ %cutSetIndex.14, %522 ], [ %cutSetIndex.0, %119 ]
  call void (...) @thread_barrier_wait() #4
  br i1 %7, label %534, label %544

; <label>:534                                     ; preds = %533
  %535 = shl i64 %6, 3
  %536 = call noalias i8* @malloc(i64 %535) #4
  %537 = icmp eq i8* %536, null
  br i1 %537, label %538, label %539

; <label>:538                                     ; preds = %534
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 579, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #5
  unreachable

; <label>:539                                     ; preds = %534
  store i8* %536, i8** bitcast (i64** @global_edgeStartCounter to i8**), align 8
  %540 = call noalias i8* @malloc(i64 %535) #4
  %541 = icmp eq i8* %540, null
  br i1 %541, label %542, label %543

; <label>:542                                     ; preds = %539
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 582, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #5
  unreachable

; <label>:543                                     ; preds = %539
  store i8* %540, i8** bitcast (i64** @global_edgeEndCounter to i8**), align 8
  br label %544

; <label>:544                                     ; preds = %543, %533
  call void (...) @thread_barrier_wait() #4
  %545 = load i64*, i64** @global_edgeStartCounter, align 8
  %546 = load i64*, i64** @global_edgeEndCounter, align 8
  %547 = getelementptr inbounds i64, i64* %546, i64 %5
  store i64 %cutSetIndex.15, i64* %547, align 8
  %548 = getelementptr inbounds i64, i64* %545, i64 %5
  store i64 0, i64* %548, align 8
  call void (...) @thread_barrier_wait() #4
  %549 = icmp sgt i64 %6, 1
  %or.cond106 = and i1 %7, %549
  br i1 %or.cond106, label %.lr.ph33.preheader, label %.outer.preheader

.lr.ph33.preheader:                               ; preds = %544
  %550 = and i64 %6, 1
  %lcmp.mod = icmp eq i64 %550, 0
  br i1 %lcmp.mod, label %.lr.ph33.prol, label %.lr.ph33.preheader.split

.lr.ph33.prol:                                    ; preds = %.lr.ph33.preheader
  %551 = load i64, i64* %546, align 8
  %552 = getelementptr inbounds i64, i64* %546, i64 1
  %553 = load i64, i64* %552, align 8
  %554 = add i64 %553, %551
  store i64 %554, i64* %552, align 8
  %555 = getelementptr inbounds i64, i64* %545, i64 1
  store i64 %551, i64* %555, align 8
  br label %.lr.ph33.preheader.split

.lr.ph33.preheader.split:                         ; preds = %.lr.ph33.prol, %.lr.ph33.preheader
  %t20.032.unr = phi i64 [ 1, %.lr.ph33.preheader ], [ 2, %.lr.ph33.prol ]
  %556 = icmp eq i64 %6, 2
  br i1 %556, label %.outer.preheader.loopexit, label %.lr.ph33.preheader.split.split

.lr.ph33.preheader.split.split:                   ; preds = %.lr.ph33.preheader.split
  br label %.lr.ph33

.lr.ph33:                                         ; preds = %.lr.ph33, %.lr.ph33.preheader.split.split
  %t20.032 = phi i64 [ %t20.032.unr, %.lr.ph33.preheader.split.split ], [ %571, %.lr.ph33 ]
  %557 = add nsw i64 %t20.032, -1
  %558 = getelementptr inbounds i64, i64* %546, i64 %557
  %559 = load i64, i64* %558, align 8
  %560 = getelementptr inbounds i64, i64* %546, i64 %t20.032
  %561 = load i64, i64* %560, align 8
  %562 = add i64 %561, %559
  store i64 %562, i64* %560, align 8
  %563 = getelementptr inbounds i64, i64* %545, i64 %t20.032
  store i64 %559, i64* %563, align 8
  %564 = add nuw nsw i64 %t20.032, 1
  %565 = getelementptr inbounds i64, i64* %546, i64 %t20.032
  %566 = load i64, i64* %565, align 8
  %567 = getelementptr inbounds i64, i64* %546, i64 %564
  %568 = load i64, i64* %567, align 8
  %569 = add i64 %568, %566
  store i64 %569, i64* %567, align 8
  %570 = getelementptr inbounds i64, i64* %545, i64 %564
  store i64 %566, i64* %570, align 8
  %571 = add nsw i64 %t20.032, 2
  %exitcond.1 = icmp eq i64 %571, %6
  br i1 %exitcond.1, label %.outer.preheader.loopexit.unr-lcssa, label %.lr.ph33

.outer.preheader.loopexit.unr-lcssa:              ; preds = %.lr.ph33
  br label %.outer.preheader.loopexit

.outer.preheader.loopexit:                        ; preds = %.lr.ph33.preheader.split, %.outer.preheader.loopexit.unr-lcssa
  br label %.outer.preheader

.outer.preheader:                                 ; preds = %.outer.preheader.loopexit, %544
  br label %.outer

.lr.ph30:                                         ; preds = %.lr.ph30.preheader, %.lr.ph30
  call void @llvm.x86.sse2.pause() #4
  %572 = call i64 (...) @RTM_fallback_isLocked() #4
  %573 = icmp eq i64 %572, 0
  br i1 %573, label %._crit_edge31.loopexit, label %.lr.ph30

._crit_edge31.loopexit:                           ; preds = %.lr.ph30
  br label %._crit_edge31

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %.outer
  %574 = icmp slt i32 %tries22.0.ph, 2
  br i1 %574, label %589, label %575

; <label>:575                                     ; preds = %._crit_edge31
  %576 = add nsw i32 %tries22.0.ph, -1
  %577 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 6, i64 0, i64 6, i64 4294967295) #4, !srcloc !1
  %578 = trunc i64 %577 to i32
  %579 = icmp eq i32 %578, -1
  br i1 %579, label %582, label %.outer

.outer:                                           ; preds = %.outer.preheader, %575
  %tries22.0.ph = phi i32 [ %576, %575 ], [ 9, %.outer.preheader ]
  %580 = call i64 (...) @RTM_fallback_isLocked() #4
  %581 = icmp eq i64 %580, 0
  br i1 %581, label %._crit_edge31, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %.outer
  br label %.lr.ph30

; <label>:582                                     ; preds = %575
  %583 = call i64 (...) @RTM_fallback_isLocked() #4
  %584 = icmp eq i64 %583, 0
  br i1 %584, label %586, label %585

; <label>:585                                     ; preds = %582
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !2
  br label %586

; <label>:586                                     ; preds = %582, %585
  %587 = load i64, i64* @global_cutSetIndex, align 8
  %588 = add i64 %587, %cutSetIndex.15
  store i64 %588, i64* @global_cutSetIndex, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 6) #4, !srcloc !3
  br label %592

; <label>:589                                     ; preds = %._crit_edge31
  call void (...) @RTM_fallback_lock() #4
  %590 = load i64, i64* @global_cutSetIndex, align 8
  %591 = add i64 %590, %cutSetIndex.15
  store i64 %591, i64* @global_cutSetIndex, align 8
  call void (...) @RTM_fallback_unlock() #4
  br label %592

; <label>:592                                     ; preds = %589, %586
  call void (...) @thread_barrier_wait() #4
  br i1 %7, label %593, label %600

; <label>:593                                     ; preds = %592
  %594 = load i64, i64* @global_cutSetIndex, align 8
  %595 = mul i64 %594, 24
  %596 = call noalias i8* @malloc(i64 %595) #4
  %597 = icmp eq i8* %596, null
  br i1 %597, label %598, label %599

; <label>:598                                     ; preds = %593
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 619, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #5
  unreachable

; <label>:599                                     ; preds = %593
  store i8* %596, i8** bitcast (%struct.edge** @global_cutSet to i8**), align 8
  br label %600

; <label>:600                                     ; preds = %599, %592
  call void (...) @thread_barrier_wait() #4
  %601 = load %struct.edge*, %struct.edge** @global_cutSet, align 8
  %602 = load i64, i64* %548, align 8
  %603 = load i64, i64* %547, align 8
  %604 = icmp ult i64 %602, %603
  br i1 %604, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %600
  %605 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 0, i32 0
  %606 = load i64, i64* %605, align 8
  %607 = getelementptr inbounds %struct.edge, %struct.edge* %601, i64 %602, i32 0
  store i64 %606, i64* %607, align 8
  %608 = load i64, i64* %548, align 8
  %609 = sub i64 %602, %608
  %610 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %609, i32 1
  %611 = load i64, i64* %610, align 8
  %612 = getelementptr inbounds %struct.edge, %struct.edge* %601, i64 %602, i32 1
  store i64 %611, i64* %612, align 8
  %613 = add nsw i64 %602, 1
  %614 = load i64, i64* %547, align 8
  %615 = icmp ult i64 %613, %614
  br i1 %615, label %.lr.ph..lr.ph_crit_edge.preheader, label %._crit_edge

.lr.ph..lr.ph_crit_edge.preheader:                ; preds = %.lr.ph.preheader
  br label %.lr.ph..lr.ph_crit_edge

.lr.ph..lr.ph_crit_edge:                          ; preds = %.lr.ph..lr.ph_crit_edge.preheader, %.lr.ph..lr.ph_crit_edge
  %616 = phi i64 [ %626, %.lr.ph..lr.ph_crit_edge ], [ %613, %.lr.ph..lr.ph_crit_edge.preheader ]
  %.pre130 = load i64, i64* %548, align 8
  %617 = sub i64 %616, %.pre130
  %618 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %617, i32 0
  %619 = load i64, i64* %618, align 8
  %620 = getelementptr inbounds %struct.edge, %struct.edge* %601, i64 %616, i32 0
  store i64 %619, i64* %620, align 8
  %621 = load i64, i64* %548, align 8
  %622 = sub i64 %616, %621
  %623 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %622, i32 1
  %624 = load i64, i64* %623, align 8
  %625 = getelementptr inbounds %struct.edge, %struct.edge* %601, i64 %616, i32 1
  store i64 %624, i64* %625, align 8
  %626 = add nsw i64 %616, 1
  %627 = load i64, i64* %547, align 8
  %628 = icmp ult i64 %626, %627
  br i1 %628, label %.lr.ph..lr.ph_crit_edge, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph..lr.ph_crit_edge
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph.preheader, %600
  call void (...) @thread_barrier_wait() #4
  br i1 %7, label %629, label %639

; <label>:629                                     ; preds = %._crit_edge
  %630 = bitcast i64* %545 to i8*
  call void @free(i8* %630) #4
  %631 = bitcast i64* %546 to i8*
  call void @free(i8* %631) #4
  %632 = bitcast %struct.edge* %95 to i8*
  call void @free(i8* %632) #4
  %633 = bitcast i64* %30 to i8*
  call void @free(i8* %633) #4
  %634 = bitcast i64* %31 to i8*
  call void @free(i8* %634) #4
  %635 = bitcast i64* %96 to i8*
  call void @free(i8* %635) #4
  %636 = bitcast i64* %97 to i8*
  call void @free(i8* %636) #4
  %637 = bitcast %struct.edge* %601 to i8*
  call void @free(i8* %637) #4
  %638 = bitcast i64* %94 to i8*
  call void @free(i8* %638) #4
  br label %639

; <label>:639                                     ; preds = %._crit_edge, %629
  %640 = call i64 (...) @thread_getId() #4
  %641 = trunc i64 %640 to i32
  %642 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  %643 = load i32, i32* %642, align 4
  call void @SimRoiEnd(i32 %641, i32 %643) #4
  ret void
}

declare i64 @thread_getId(...) #1

declare void @SimRoiStart(i32) #1

declare i64 @thread_getNumThread(...) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare void @thread_barrier_wait(...) #1

declare void @createPartition(i64, i64, i64, i64, i64*, i64*) #1

declare void @all_radixsort_node_aux_s3(i64, i64*, i64*, i64*, i64*) #1

; Function Attrs: nounwind
declare void @free(i8* nocapture) #2

declare i64 @RTM_fallback_isLocked(...) #1

declare void @RTM_fallback_lock(...) #1

declare void @RTM_fallback_unlock(...) #1

declare void @SimRoiEnd(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 1445680, i32 1445696, i32 1445732, i32 1445768, i32 1445804}
!2 = !{i32 1446281, i32 1446296, i32 1446330}
!3 = !{i32 1446052, i32 1446067, i32 1446095}
