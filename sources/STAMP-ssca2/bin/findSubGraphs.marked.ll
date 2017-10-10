; ModuleID = '../bin/findSubGraphs.stats.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph = type { i64, i64, i64, i64, i64, i64, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i8* }
%struct.V = type { i64, i64 }
%struct.edge = type { i64, i64, i64 }
%struct.findSubGraphs0_arg = type { %struct.graph*, %struct.V*, %struct.V*, %struct.edge*, i64, %struct.edge*, i64 }
%struct.l = type { i64, i16, %struct.l* }
%struct.findSubGraphs1_arg = type { %struct.graph*, %struct.l**, %struct.l**, %struct.edge*, i64, %struct.edge*, i64 }
%struct.Vd = type { i64, i64*, %struct.V** }
%struct.findSubGraphs2_arg = type { %struct.graph*, %struct.Vd*, %struct.Vd*, %struct.edge*, i64, %struct.edge*, i64 }

@.str = private unnamed_addr constant [8 x i8] c"visited\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"findSubGraphs.c\00", align 1
@__PRETTY_FUNCTION__.findSubGraphs0 = private unnamed_addr constant [28 x i8] c"void findSubGraphs0(void *)\00", align 1
@SUBGR_EDGE_LENGTH = external global i64, align 8
@__PRETTY_FUNCTION__.findSubGraphs1 = private unnamed_addr constant [28 x i8] c"void findSubGraphs1(void *)\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"intWtVLList[i]\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"currV->next\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"strWtVLList[t]\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"(strWtVLList[t])->next\00", align 1
@MAX_CLUSTER_SIZE = external global i64, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"intWtVDList[i].arraySize\00", align 1
@__PRETTY_FUNCTION__.findSubGraphs2 = private unnamed_addr constant [28 x i8] c"void findSubGraphs2(void *)\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"intWtVDList[i].vList\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"intWtVDList[i].vList[0]\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"strWtVDList[t].arraySize\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"strWtVDList[t].vList\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"strWtVDList[t].vList[0]\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"intWtVDList[i].vList[intWtVDList[i].numArrays-1]\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"strWtVDList[t].vList[strWtVDList[t].numArrays-1]\00", align 1

; Function Attrs: nounwind uwtable
define void @findSubGraphs0(i8* %argPtr) #0 {
  %1 = alloca i8*, align 8
  %GPtr = alloca %struct.graph*, align 8
  %intWtVList = alloca %struct.V*, align 8
  %strWtVList = alloca %struct.V*, align 8
  %maxIntWtList = alloca %struct.edge*, align 8
  %maxIntWtListSize = alloca i64, align 8
  %soughtStrWtList = alloca %struct.edge*, align 8
  %soughtStrWtListSize = alloca i64, align 8
  %myId = alloca i64, align 8
  %numThread = alloca i64, align 8
  %i = alloca i64, align 8
  %i_start = alloca i64, align 8
  %i_stop = alloca i64, align 8
  %j = alloca i64, align 8
  %t = alloca i64, align 8
  %j1 = alloca i64, align 8
  %visited = alloca i64*, align 8
  %k = alloca i64, align 8
  %depth = alloca i64, align 8
  %verticesVisited = alloca i64, align 8
  %currIndex = alloca i64, align 8
  %intWtListIndex = alloca i64, align 8
  %j2 = alloca i64, align 8
  %j_start = alloca i64, align 8
  %j_stop = alloca i64, align 8
  %t3 = alloca i64, align 8
  %depth4 = alloca i64, align 8
  %verticesVisited5 = alloca i64, align 8
  %currIndex6 = alloca i64, align 8
  %strWtVListIndex = alloca i64, align 8
  %j7 = alloca i64, align 8
  %j_start8 = alloca i64, align 8
  %j_stop9 = alloca i64, align 8
  store i8* %argPtr, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.findSubGraphs0_arg*
  %4 = getelementptr inbounds %struct.findSubGraphs0_arg, %struct.findSubGraphs0_arg* %3, i32 0, i32 0
  %5 = load %struct.graph*, %struct.graph** %4, align 8
  store %struct.graph* %5, %struct.graph** %GPtr, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = bitcast i8* %6 to %struct.findSubGraphs0_arg*
  %8 = getelementptr inbounds %struct.findSubGraphs0_arg, %struct.findSubGraphs0_arg* %7, i32 0, i32 1
  %9 = load %struct.V*, %struct.V** %8, align 8
  store %struct.V* %9, %struct.V** %intWtVList, align 8
  %10 = load i8*, i8** %1, align 8
  %11 = bitcast i8* %10 to %struct.findSubGraphs0_arg*
  %12 = getelementptr inbounds %struct.findSubGraphs0_arg, %struct.findSubGraphs0_arg* %11, i32 0, i32 2
  %13 = load %struct.V*, %struct.V** %12, align 8
  store %struct.V* %13, %struct.V** %strWtVList, align 8
  %14 = load i8*, i8** %1, align 8
  %15 = bitcast i8* %14 to %struct.findSubGraphs0_arg*
  %16 = getelementptr inbounds %struct.findSubGraphs0_arg, %struct.findSubGraphs0_arg* %15, i32 0, i32 3
  %17 = load %struct.edge*, %struct.edge** %16, align 8
  store %struct.edge* %17, %struct.edge** %maxIntWtList, align 8
  %18 = load i8*, i8** %1, align 8
  %19 = bitcast i8* %18 to %struct.findSubGraphs0_arg*
  %20 = getelementptr inbounds %struct.findSubGraphs0_arg, %struct.findSubGraphs0_arg* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %maxIntWtListSize, align 8
  %22 = load i8*, i8** %1, align 8
  %23 = bitcast i8* %22 to %struct.findSubGraphs0_arg*
  %24 = getelementptr inbounds %struct.findSubGraphs0_arg, %struct.findSubGraphs0_arg* %23, i32 0, i32 5
  %25 = load %struct.edge*, %struct.edge** %24, align 8
  store %struct.edge* %25, %struct.edge** %soughtStrWtList, align 8
  %26 = load i8*, i8** %1, align 8
  %27 = bitcast i8* %26 to %struct.findSubGraphs0_arg*
  %28 = getelementptr inbounds %struct.findSubGraphs0_arg, %struct.findSubGraphs0_arg* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %soughtStrWtListSize, align 8
  %30 = call i64 (...) @thread_getId()
  store i64 %30, i64* %myId, align 8
  %31 = call i64 (...) @thread_getNumThread()
  store i64 %31, i64* %numThread, align 8
  %32 = load i64, i64* %maxIntWtListSize, align 8
  %33 = load i64, i64* %soughtStrWtListSize, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i64, i64* %myId, align 8
  %36 = load i64, i64* %numThread, align 8
  call void @createPartition(i64 0, i64 %34, i64 %35, i64 %36, i64* %i_start, i64* %i_stop)
  %37 = load i64, i64* %i_start, align 8
  store i64 %37, i64* %i, align 8
  br label %38

; <label>:38                                      ; preds = %114, %0
  %39 = load i64, i64* %i, align 8
  %40 = load i64, i64* %i_stop, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %117

; <label>:42                                      ; preds = %38
  %43 = load i64, i64* %i, align 8
  %44 = load i64, i64* %maxIntWtListSize, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %78

; <label>:46                                      ; preds = %42
  store i64 0, i64* %j, align 8
  br label %47

; <label>:47                                      ; preds = %74, %46
  %48 = load i64, i64* %j, align 8
  %49 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %50 = getelementptr inbounds %struct.graph, %struct.graph* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %77

; <label>:53                                      ; preds = %47
  %54 = load i64, i64* %i, align 8
  %55 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %56 = getelementptr inbounds %struct.graph, %struct.graph* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = mul i64 %54, %57
  %59 = load i64, i64* %j, align 8
  %60 = add i64 %58, %59
  %61 = load %struct.V*, %struct.V** %intWtVList, align 8
  %62 = getelementptr inbounds %struct.V, %struct.V* %61, i64 %60
  %63 = getelementptr inbounds %struct.V, %struct.V* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load i64, i64* %i, align 8
  %65 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %66 = getelementptr inbounds %struct.graph, %struct.graph* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = mul i64 %64, %67
  %69 = load i64, i64* %j, align 8
  %70 = add i64 %68, %69
  %71 = load %struct.V*, %struct.V** %intWtVList, align 8
  %72 = getelementptr inbounds %struct.V, %struct.V* %71, i64 %70
  %73 = getelementptr inbounds %struct.V, %struct.V* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  br label %74

; <label>:74                                      ; preds = %53
  %75 = load i64, i64* %j, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %j, align 8
  br label %47

; <label>:77                                      ; preds = %47
  br label %113

; <label>:78                                      ; preds = %42
  %79 = load i64, i64* %i, align 8
  %80 = load i64, i64* %maxIntWtListSize, align 8
  %81 = sub nsw i64 %79, %80
  store i64 %81, i64* %t, align 8
  store i64 0, i64* %j1, align 8
  br label %82

; <label>:82                                      ; preds = %109, %78
  %83 = load i64, i64* %j1, align 8
  %84 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %85 = getelementptr inbounds %struct.graph, %struct.graph* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ult i64 %83, %86
  br i1 %87, label %88, label %112

; <label>:88                                      ; preds = %82
  %89 = load i64, i64* %t, align 8
  %90 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %91 = getelementptr inbounds %struct.graph, %struct.graph* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = mul i64 %89, %92
  %94 = load i64, i64* %j1, align 8
  %95 = add i64 %93, %94
  %96 = load %struct.V*, %struct.V** %strWtVList, align 8
  %97 = getelementptr inbounds %struct.V, %struct.V* %96, i64 %95
  %98 = getelementptr inbounds %struct.V, %struct.V* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  %99 = load i64, i64* %t, align 8
  %100 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %101 = getelementptr inbounds %struct.graph, %struct.graph* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = mul i64 %99, %102
  %104 = load i64, i64* %j1, align 8
  %105 = add i64 %103, %104
  %106 = load %struct.V*, %struct.V** %strWtVList, align 8
  %107 = getelementptr inbounds %struct.V, %struct.V* %106, i64 %105
  %108 = getelementptr inbounds %struct.V, %struct.V* %107, i32 0, i32 1
  store i64 0, i64* %108, align 8
  br label %109

; <label>:109                                     ; preds = %88
  %110 = load i64, i64* %j1, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %j1, align 8
  br label %82

; <label>:112                                     ; preds = %82
  br label %113

; <label>:113                                     ; preds = %112, %77
  br label %114

; <label>:114                                     ; preds = %113
  %115 = load i64, i64* %i, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %i, align 8
  br label %38

; <label>:117                                     ; preds = %38
  call void (...) @thread_barrier_wait()
  %118 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %119 = getelementptr inbounds %struct.graph, %struct.graph* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = mul i64 %120, 8
  %122 = call noalias i8* @malloc(i64 %121) #4
  %123 = bitcast i8* %122 to i64*
  store i64* %123, i64** %visited, align 8
  %124 = load i64*, i64** %visited, align 8
  %125 = icmp ne i64* %124, null
  br i1 %125, label %126, label %127

; <label>:126                                     ; preds = %117
  br label %129

; <label>:127                                     ; preds = %117
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs0, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %129

; <label>:129                                     ; preds = %128, %126
  %130 = load i64, i64* %i_start, align 8
  store i64 %130, i64* %i, align 8
  br label %131

; <label>:131                                     ; preds = %561, %129
  %132 = load i64, i64* %i, align 8
  %133 = load i64, i64* %i_stop, align 8
  %134 = icmp slt i64 %132, %133
  br i1 %134, label %135, label %564

; <label>:135                                     ; preds = %131
  store i64 0, i64* %k, align 8
  br label %136

; <label>:136                                     ; preds = %146, %135
  %137 = load i64, i64* %k, align 8
  %138 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %139 = getelementptr inbounds %struct.graph, %struct.graph* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ult i64 %137, %140
  br i1 %141, label %142, label %149

; <label>:142                                     ; preds = %136
  %143 = load i64, i64* %k, align 8
  %144 = load i64*, i64** %visited, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 %143
  store i64 0, i64* %145, align 8
  br label %146

; <label>:146                                     ; preds = %142
  %147 = load i64, i64* %k, align 8
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %k, align 8
  br label %136

; <label>:149                                     ; preds = %136
  %150 = load i64, i64* %i, align 8
  %151 = load i64, i64* %maxIntWtListSize, align 8
  %152 = icmp slt i64 %150, %151
  br i1 %152, label %153, label %358

; <label>:153                                     ; preds = %149
  %154 = load i64, i64* %i, align 8
  %155 = load %struct.edge*, %struct.edge** %maxIntWtList, align 8
  %156 = getelementptr inbounds %struct.edge, %struct.edge* %155, i64 %154
  %157 = getelementptr inbounds %struct.edge, %struct.edge* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %i, align 8
  %160 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %161 = getelementptr inbounds %struct.graph, %struct.graph* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = mul i64 %159, %162
  %164 = add i64 %163, 0
  %165 = load %struct.V*, %struct.V** %intWtVList, align 8
  %166 = getelementptr inbounds %struct.V, %struct.V* %165, i64 %164
  %167 = getelementptr inbounds %struct.V, %struct.V* %166, i32 0, i32 0
  store i64 %158, i64* %167, align 8
  %168 = load i64, i64* %i, align 8
  %169 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %170 = getelementptr inbounds %struct.graph, %struct.graph* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = mul i64 %168, %171
  %173 = add i64 %172, 0
  %174 = load %struct.V*, %struct.V** %intWtVList, align 8
  %175 = getelementptr inbounds %struct.V, %struct.V* %174, i64 %173
  %176 = getelementptr inbounds %struct.V, %struct.V* %175, i32 0, i32 1
  store i64 -1, i64* %176, align 8
  %177 = load i64, i64* %i, align 8
  %178 = load %struct.edge*, %struct.edge** %maxIntWtList, align 8
  %179 = getelementptr inbounds %struct.edge, %struct.edge* %178, i64 %177
  %180 = getelementptr inbounds %struct.edge, %struct.edge* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* %i, align 8
  %183 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %184 = getelementptr inbounds %struct.graph, %struct.graph* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = mul i64 %182, %185
  %187 = add i64 %186, 1
  %188 = load %struct.V*, %struct.V** %intWtVList, align 8
  %189 = getelementptr inbounds %struct.V, %struct.V* %188, i64 %187
  %190 = getelementptr inbounds %struct.V, %struct.V* %189, i32 0, i32 0
  store i64 %181, i64* %190, align 8
  %191 = load i64, i64* %i, align 8
  %192 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %193 = getelementptr inbounds %struct.graph, %struct.graph* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = mul i64 %191, %194
  %196 = add i64 %195, 1
  %197 = load %struct.V*, %struct.V** %intWtVList, align 8
  %198 = getelementptr inbounds %struct.V, %struct.V* %197, i64 %196
  %199 = getelementptr inbounds %struct.V, %struct.V* %198, i32 0, i32 1
  store i64 1, i64* %199, align 8
  %200 = load i64, i64* %i, align 8
  %201 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %202 = getelementptr inbounds %struct.graph, %struct.graph* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = mul i64 %200, %203
  %205 = add i64 %204, 0
  %206 = load %struct.V*, %struct.V** %intWtVList, align 8
  %207 = getelementptr inbounds %struct.V, %struct.V* %206, i64 %205
  %208 = getelementptr inbounds %struct.V, %struct.V* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64*, i64** %visited, align 8
  %211 = getelementptr inbounds i64, i64* %210, i64 %209
  store i64 1, i64* %211, align 8
  %212 = load i64, i64* %i, align 8
  %213 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %214 = getelementptr inbounds %struct.graph, %struct.graph* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = mul i64 %212, %215
  %217 = add i64 %216, 1
  %218 = load %struct.V*, %struct.V** %intWtVList, align 8
  %219 = getelementptr inbounds %struct.V, %struct.V* %218, i64 %217
  %220 = getelementptr inbounds %struct.V, %struct.V* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64*, i64** %visited, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 %221
  store i64 1, i64* %223, align 8
  store i64 1, i64* %depth, align 8
  store i64 2, i64* %verticesVisited, align 8
  store i64 1, i64* %currIndex, align 8
  br label %224

; <label>:224                                     ; preds = %356, %153
  %225 = load i64, i64* %depth, align 8
  %226 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %227 = icmp slt i64 %225, %226
  br i1 %227, label %234, label %228

; <label>:228                                     ; preds = %224
  %229 = load i64, i64* %verticesVisited, align 8
  %230 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %231 = getelementptr inbounds %struct.graph, %struct.graph* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp eq i64 %229, %232
  br label %234

; <label>:234                                     ; preds = %228, %224
  %235 = phi i1 [ true, %224 ], [ %233, %228 ]
  br i1 %235, label %236, label %357

; <label>:236                                     ; preds = %234
  %237 = load i64, i64* %i, align 8
  %238 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %239 = getelementptr inbounds %struct.graph, %struct.graph* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = mul i64 %237, %240
  %242 = load i64, i64* %currIndex, align 8
  %243 = add i64 %241, %242
  store i64 %243, i64* %intWtListIndex, align 8
  %244 = load i64, i64* %intWtListIndex, align 8
  %245 = load %struct.V*, %struct.V** %intWtVList, align 8
  %246 = getelementptr inbounds %struct.V, %struct.V* %245, i64 %244
  %247 = getelementptr inbounds %struct.V, %struct.V* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = add nsw i64 %248, 1
  store i64 %249, i64* %depth, align 8
  %250 = load i64, i64* %intWtListIndex, align 8
  %251 = load %struct.V*, %struct.V** %intWtVList, align 8
  %252 = getelementptr inbounds %struct.V, %struct.V* %251, i64 %250
  %253 = getelementptr inbounds %struct.V, %struct.V* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %256 = getelementptr inbounds %struct.graph, %struct.graph* %255, i32 0, i32 7
  %257 = load i64*, i64** %256, align 8
  %258 = getelementptr inbounds i64, i64* %257, i64 %254
  %259 = load i64, i64* %258, align 8
  store i64 %259, i64* %j_start, align 8
  %260 = load i64, i64* %j_start, align 8
  %261 = load i64, i64* %intWtListIndex, align 8
  %262 = load %struct.V*, %struct.V** %intWtVList, align 8
  %263 = getelementptr inbounds %struct.V, %struct.V* %262, i64 %261
  %264 = getelementptr inbounds %struct.V, %struct.V* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %267 = getelementptr inbounds %struct.graph, %struct.graph* %266, i32 0, i32 6
  %268 = load i64*, i64** %267, align 8
  %269 = getelementptr inbounds i64, i64* %268, i64 %265
  %270 = load i64, i64* %269, align 8
  %271 = add nsw i64 %260, %270
  store i64 %271, i64* %j_stop, align 8
  %272 = load i64, i64* %j_start, align 8
  store i64 %272, i64* %j2, align 8
  br label %273

; <label>:273                                     ; preds = %327, %236
  %274 = load i64, i64* %j2, align 8
  %275 = load i64, i64* %j_stop, align 8
  %276 = icmp slt i64 %274, %275
  br i1 %276, label %277, label %330

; <label>:277                                     ; preds = %273
  %278 = load i64, i64* %j2, align 8
  %279 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %280 = getelementptr inbounds %struct.graph, %struct.graph* %279, i32 0, i32 8
  %281 = load i64*, i64** %280, align 8
  %282 = getelementptr inbounds i64, i64* %281, i64 %278
  %283 = load i64, i64* %282, align 8
  %284 = load i64*, i64** %visited, align 8
  %285 = getelementptr inbounds i64, i64* %284, i64 %283
  %286 = load i64, i64* %285, align 8
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %288, label %326

; <label>:288                                     ; preds = %277
  %289 = load i64, i64* %j2, align 8
  %290 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %291 = getelementptr inbounds %struct.graph, %struct.graph* %290, i32 0, i32 8
  %292 = load i64*, i64** %291, align 8
  %293 = getelementptr inbounds i64, i64* %292, i64 %289
  %294 = load i64, i64* %293, align 8
  %295 = load i64*, i64** %visited, align 8
  %296 = getelementptr inbounds i64, i64* %295, i64 %294
  store i64 1, i64* %296, align 8
  %297 = load i64, i64* %j2, align 8
  %298 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %299 = getelementptr inbounds %struct.graph, %struct.graph* %298, i32 0, i32 8
  %300 = load i64*, i64** %299, align 8
  %301 = getelementptr inbounds i64, i64* %300, i64 %297
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* %i, align 8
  %304 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %305 = getelementptr inbounds %struct.graph, %struct.graph* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = mul i64 %303, %306
  %308 = load i64, i64* %verticesVisited, align 8
  %309 = add i64 %307, %308
  %310 = load %struct.V*, %struct.V** %intWtVList, align 8
  %311 = getelementptr inbounds %struct.V, %struct.V* %310, i64 %309
  %312 = getelementptr inbounds %struct.V, %struct.V* %311, i32 0, i32 0
  store i64 %302, i64* %312, align 8
  %313 = load i64, i64* %depth, align 8
  %314 = load i64, i64* %i, align 8
  %315 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %316 = getelementptr inbounds %struct.graph, %struct.graph* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = mul i64 %314, %317
  %319 = load i64, i64* %verticesVisited, align 8
  %320 = add i64 %318, %319
  %321 = load %struct.V*, %struct.V** %intWtVList, align 8
  %322 = getelementptr inbounds %struct.V, %struct.V* %321, i64 %320
  %323 = getelementptr inbounds %struct.V, %struct.V* %322, i32 0, i32 1
  store i64 %313, i64* %323, align 8
  %324 = load i64, i64* %verticesVisited, align 8
  %325 = add nsw i64 %324, 1
  store i64 %325, i64* %verticesVisited, align 8
  br label %326

; <label>:326                                     ; preds = %288, %277
  br label %327

; <label>:327                                     ; preds = %326
  %328 = load i64, i64* %j2, align 8
  %329 = add nsw i64 %328, 1
  store i64 %329, i64* %j2, align 8
  br label %273

; <label>:330                                     ; preds = %273
  %331 = load i64, i64* %currIndex, align 8
  %332 = load i64, i64* %verticesVisited, align 8
  %333 = sub nsw i64 %332, 1
  %334 = icmp slt i64 %331, %333
  br i1 %334, label %335, label %355

; <label>:335                                     ; preds = %330
  %336 = load i64, i64* %verticesVisited, align 8
  %337 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %338 = getelementptr inbounds %struct.graph, %struct.graph* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = icmp ult i64 %336, %339
  br i1 %340, label %341, label %355

; <label>:341                                     ; preds = %335
  %342 = load i64, i64* %currIndex, align 8
  %343 = add nsw i64 %342, 1
  store i64 %343, i64* %currIndex, align 8
  %344 = load i64, i64* %i, align 8
  %345 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %346 = getelementptr inbounds %struct.graph, %struct.graph* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = mul i64 %344, %347
  %349 = load i64, i64* %currIndex, align 8
  %350 = add i64 %348, %349
  %351 = load %struct.V*, %struct.V** %intWtVList, align 8
  %352 = getelementptr inbounds %struct.V, %struct.V* %351, i64 %350
  %353 = getelementptr inbounds %struct.V, %struct.V* %352, i32 0, i32 1
  %354 = load i64, i64* %353, align 8
  store i64 %354, i64* %depth, align 8
  br label %356

; <label>:355                                     ; preds = %335, %330
  br label %357

; <label>:356                                     ; preds = %341
  br label %224

; <label>:357                                     ; preds = %355, %234
  br label %560

; <label>:358                                     ; preds = %149
  %359 = load i64, i64* %i, align 8
  %360 = load i64, i64* %maxIntWtListSize, align 8
  %361 = sub nsw i64 %359, %360
  store i64 %361, i64* %t3, align 8
  %362 = load i64, i64* %t3, align 8
  %363 = load %struct.edge*, %struct.edge** %soughtStrWtList, align 8
  %364 = getelementptr inbounds %struct.edge, %struct.edge* %363, i64 %362
  %365 = getelementptr inbounds %struct.edge, %struct.edge* %364, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = load i64, i64* %t3, align 8
  %368 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %369 = getelementptr inbounds %struct.graph, %struct.graph* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = mul i64 %367, %370
  %372 = add i64 %371, 0
  %373 = load %struct.V*, %struct.V** %strWtVList, align 8
  %374 = getelementptr inbounds %struct.V, %struct.V* %373, i64 %372
  %375 = getelementptr inbounds %struct.V, %struct.V* %374, i32 0, i32 0
  store i64 %366, i64* %375, align 8
  %376 = load i64, i64* %t3, align 8
  %377 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %378 = getelementptr inbounds %struct.graph, %struct.graph* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = mul i64 %376, %379
  %381 = add i64 %380, 0
  %382 = load %struct.V*, %struct.V** %strWtVList, align 8
  %383 = getelementptr inbounds %struct.V, %struct.V* %382, i64 %381
  %384 = getelementptr inbounds %struct.V, %struct.V* %383, i32 0, i32 1
  store i64 -1, i64* %384, align 8
  %385 = load i64, i64* %t3, align 8
  %386 = load %struct.edge*, %struct.edge** %soughtStrWtList, align 8
  %387 = getelementptr inbounds %struct.edge, %struct.edge* %386, i64 %385
  %388 = getelementptr inbounds %struct.edge, %struct.edge* %387, i32 0, i32 1
  %389 = load i64, i64* %388, align 8
  %390 = load i64, i64* %t3, align 8
  %391 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %392 = getelementptr inbounds %struct.graph, %struct.graph* %391, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = mul i64 %390, %393
  %395 = add i64 %394, 1
  %396 = load %struct.V*, %struct.V** %strWtVList, align 8
  %397 = getelementptr inbounds %struct.V, %struct.V* %396, i64 %395
  %398 = getelementptr inbounds %struct.V, %struct.V* %397, i32 0, i32 0
  store i64 %389, i64* %398, align 8
  %399 = load i64, i64* %t3, align 8
  %400 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %401 = getelementptr inbounds %struct.graph, %struct.graph* %400, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = mul i64 %399, %402
  %404 = add i64 %403, 1
  %405 = load %struct.V*, %struct.V** %strWtVList, align 8
  %406 = getelementptr inbounds %struct.V, %struct.V* %405, i64 %404
  %407 = getelementptr inbounds %struct.V, %struct.V* %406, i32 0, i32 1
  store i64 1, i64* %407, align 8
  %408 = load i64, i64* %t3, align 8
  %409 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %410 = getelementptr inbounds %struct.graph, %struct.graph* %409, i32 0, i32 0
  %411 = load i64, i64* %410, align 8
  %412 = mul i64 %408, %411
  %413 = add i64 %412, 0
  %414 = load %struct.V*, %struct.V** %strWtVList, align 8
  %415 = getelementptr inbounds %struct.V, %struct.V* %414, i64 %413
  %416 = getelementptr inbounds %struct.V, %struct.V* %415, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = load i64*, i64** %visited, align 8
  %419 = getelementptr inbounds i64, i64* %418, i64 %417
  store i64 1, i64* %419, align 8
  %420 = load i64, i64* %t3, align 8
  %421 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %422 = getelementptr inbounds %struct.graph, %struct.graph* %421, i32 0, i32 0
  %423 = load i64, i64* %422, align 8
  %424 = mul i64 %420, %423
  %425 = add i64 %424, 1
  %426 = load %struct.V*, %struct.V** %strWtVList, align 8
  %427 = getelementptr inbounds %struct.V, %struct.V* %426, i64 %425
  %428 = getelementptr inbounds %struct.V, %struct.V* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = load i64*, i64** %visited, align 8
  %431 = getelementptr inbounds i64, i64* %430, i64 %429
  store i64 1, i64* %431, align 8
  store i64 1, i64* %depth4, align 8
  store i64 2, i64* %verticesVisited5, align 8
  store i64 1, i64* %currIndex6, align 8
  br label %432

; <label>:432                                     ; preds = %558, %358
  %433 = load i64, i64* %depth4, align 8
  %434 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %435 = icmp slt i64 %433, %434
  br i1 %435, label %442, label %436

; <label>:436                                     ; preds = %432
  %437 = load i64, i64* %verticesVisited5, align 8
  %438 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %439 = getelementptr inbounds %struct.graph, %struct.graph* %438, i32 0, i32 0
  %440 = load i64, i64* %439, align 8
  %441 = icmp eq i64 %437, %440
  br label %442

; <label>:442                                     ; preds = %436, %432
  %443 = phi i1 [ true, %432 ], [ %441, %436 ]
  br i1 %443, label %444, label %559

; <label>:444                                     ; preds = %442
  %445 = load i64, i64* %t3, align 8
  %446 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %447 = getelementptr inbounds %struct.graph, %struct.graph* %446, i32 0, i32 0
  %448 = load i64, i64* %447, align 8
  %449 = mul i64 %445, %448
  %450 = load i64, i64* %currIndex6, align 8
  %451 = add i64 %449, %450
  store i64 %451, i64* %strWtVListIndex, align 8
  %452 = load i64, i64* %strWtVListIndex, align 8
  %453 = load %struct.V*, %struct.V** %strWtVList, align 8
  %454 = getelementptr inbounds %struct.V, %struct.V* %453, i64 %452
  %455 = getelementptr inbounds %struct.V, %struct.V* %454, i32 0, i32 1
  %456 = load i64, i64* %455, align 8
  %457 = add nsw i64 %456, 1
  store i64 %457, i64* %depth4, align 8
  %458 = load i64, i64* %strWtVListIndex, align 8
  %459 = load %struct.V*, %struct.V** %strWtVList, align 8
  %460 = getelementptr inbounds %struct.V, %struct.V* %459, i64 %458
  %461 = getelementptr inbounds %struct.V, %struct.V* %460, i32 0, i32 0
  %462 = load i64, i64* %461, align 8
  %463 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %464 = getelementptr inbounds %struct.graph, %struct.graph* %463, i32 0, i32 7
  %465 = load i64*, i64** %464, align 8
  %466 = getelementptr inbounds i64, i64* %465, i64 %462
  %467 = load i64, i64* %466, align 8
  store i64 %467, i64* %j_start8, align 8
  %468 = load i64, i64* %j_start8, align 8
  %469 = load i64, i64* %strWtVListIndex, align 8
  %470 = load %struct.V*, %struct.V** %strWtVList, align 8
  %471 = getelementptr inbounds %struct.V, %struct.V* %470, i64 %469
  %472 = getelementptr inbounds %struct.V, %struct.V* %471, i32 0, i32 0
  %473 = load i64, i64* %472, align 8
  %474 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %475 = getelementptr inbounds %struct.graph, %struct.graph* %474, i32 0, i32 6
  %476 = load i64*, i64** %475, align 8
  %477 = getelementptr inbounds i64, i64* %476, i64 %473
  %478 = load i64, i64* %477, align 8
  %479 = add nsw i64 %468, %478
  store i64 %479, i64* %j_stop9, align 8
  %480 = load i64, i64* %j_start8, align 8
  store i64 %480, i64* %j7, align 8
  br label %481

; <label>:481                                     ; preds = %535, %444
  %482 = load i64, i64* %j7, align 8
  %483 = load i64, i64* %j_stop9, align 8
  %484 = icmp slt i64 %482, %483
  br i1 %484, label %485, label %538

; <label>:485                                     ; preds = %481
  %486 = load i64, i64* %j7, align 8
  %487 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %488 = getelementptr inbounds %struct.graph, %struct.graph* %487, i32 0, i32 8
  %489 = load i64*, i64** %488, align 8
  %490 = getelementptr inbounds i64, i64* %489, i64 %486
  %491 = load i64, i64* %490, align 8
  %492 = load i64*, i64** %visited, align 8
  %493 = getelementptr inbounds i64, i64* %492, i64 %491
  %494 = load i64, i64* %493, align 8
  %495 = icmp eq i64 %494, 0
  br i1 %495, label %496, label %534

; <label>:496                                     ; preds = %485
  %497 = load i64, i64* %j7, align 8
  %498 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %499 = getelementptr inbounds %struct.graph, %struct.graph* %498, i32 0, i32 8
  %500 = load i64*, i64** %499, align 8
  %501 = getelementptr inbounds i64, i64* %500, i64 %497
  %502 = load i64, i64* %501, align 8
  %503 = load i64*, i64** %visited, align 8
  %504 = getelementptr inbounds i64, i64* %503, i64 %502
  store i64 1, i64* %504, align 8
  %505 = load i64, i64* %j7, align 8
  %506 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %507 = getelementptr inbounds %struct.graph, %struct.graph* %506, i32 0, i32 8
  %508 = load i64*, i64** %507, align 8
  %509 = getelementptr inbounds i64, i64* %508, i64 %505
  %510 = load i64, i64* %509, align 8
  %511 = load i64, i64* %t3, align 8
  %512 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %513 = getelementptr inbounds %struct.graph, %struct.graph* %512, i32 0, i32 0
  %514 = load i64, i64* %513, align 8
  %515 = mul i64 %511, %514
  %516 = load i64, i64* %verticesVisited5, align 8
  %517 = add i64 %515, %516
  %518 = load %struct.V*, %struct.V** %strWtVList, align 8
  %519 = getelementptr inbounds %struct.V, %struct.V* %518, i64 %517
  %520 = getelementptr inbounds %struct.V, %struct.V* %519, i32 0, i32 0
  store i64 %510, i64* %520, align 8
  %521 = load i64, i64* %depth4, align 8
  %522 = load i64, i64* %t3, align 8
  %523 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %524 = getelementptr inbounds %struct.graph, %struct.graph* %523, i32 0, i32 0
  %525 = load i64, i64* %524, align 8
  %526 = mul i64 %522, %525
  %527 = load i64, i64* %verticesVisited5, align 8
  %528 = add i64 %526, %527
  %529 = load %struct.V*, %struct.V** %strWtVList, align 8
  %530 = getelementptr inbounds %struct.V, %struct.V* %529, i64 %528
  %531 = getelementptr inbounds %struct.V, %struct.V* %530, i32 0, i32 1
  store i64 %521, i64* %531, align 8
  %532 = load i64, i64* %verticesVisited5, align 8
  %533 = add nsw i64 %532, 1
  store i64 %533, i64* %verticesVisited5, align 8
  br label %534

; <label>:534                                     ; preds = %496, %485
  br label %535

; <label>:535                                     ; preds = %534
  %536 = load i64, i64* %j7, align 8
  %537 = add nsw i64 %536, 1
  store i64 %537, i64* %j7, align 8
  br label %481

; <label>:538                                     ; preds = %481
  %539 = load i64, i64* %currIndex6, align 8
  %540 = load i64, i64* %verticesVisited5, align 8
  %541 = sub nsw i64 %540, 1
  %542 = icmp slt i64 %539, %541
  br i1 %542, label %543, label %557

; <label>:543                                     ; preds = %538
  %544 = load i64, i64* %currIndex6, align 8
  %545 = add nsw i64 %544, 1
  store i64 %545, i64* %currIndex6, align 8
  %546 = load i64, i64* %t3, align 8
  %547 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %548 = getelementptr inbounds %struct.graph, %struct.graph* %547, i32 0, i32 0
  %549 = load i64, i64* %548, align 8
  %550 = mul i64 %546, %549
  %551 = load i64, i64* %currIndex6, align 8
  %552 = add i64 %550, %551
  %553 = load %struct.V*, %struct.V** %strWtVList, align 8
  %554 = getelementptr inbounds %struct.V, %struct.V* %553, i64 %552
  %555 = getelementptr inbounds %struct.V, %struct.V* %554, i32 0, i32 1
  %556 = load i64, i64* %555, align 8
  store i64 %556, i64* %depth4, align 8
  br label %558

; <label>:557                                     ; preds = %538
  br label %559

; <label>:558                                     ; preds = %543
  br label %432

; <label>:559                                     ; preds = %557, %442
  br label %560

; <label>:560                                     ; preds = %559, %357
  br label %561

; <label>:561                                     ; preds = %560
  %562 = load i64, i64* %i, align 8
  %563 = add nsw i64 %562, 1
  store i64 %563, i64* %i, align 8
  br label %131

; <label>:564                                     ; preds = %131
  %565 = load i64*, i64** %visited, align 8
  %566 = bitcast i64* %565 to i8*
  call void @free(i8* %566) #4
  ret void
}

declare i64 @thread_getId(...) #1

declare i64 @thread_getNumThread(...) #1

declare void @createPartition(i64, i64, i64, i64, i64*, i64*) #1

declare void @thread_barrier_wait(...) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @findSubGraphs1(i8* %argPtr) #0 {
  %1 = alloca i8*, align 8
  %GPtr = alloca %struct.graph*, align 8
  %intWtVLList = alloca %struct.l**, align 8
  %strWtVLList = alloca %struct.l**, align 8
  %maxIntWtList = alloca %struct.edge*, align 8
  %maxIntWtListSize = alloca i64, align 8
  %soughtStrWtList = alloca %struct.edge*, align 8
  %soughtStrWtListSize = alloca i64, align 8
  %myId = alloca i64, align 8
  %numThread = alloca i64, align 8
  %visited = alloca i8*, align 8
  %i = alloca i64, align 8
  %i_start = alloca i64, align 8
  %i_stop = alloca i64, align 8
  %k = alloca i64, align 8
  %currV = alloca %struct.l*, align 8
  %startV = alloca %struct.l*, align 8
  %depth = alloca i64, align 8
  %verticesVisited = alloca i64, align 8
  %currIndex = alloca i64, align 8
  %j = alloca i64, align 8
  %j_start = alloca i64, align 8
  %j_stop = alloca i64, align 8
  %t = alloca i64, align 8
  %currV1 = alloca %struct.l*, align 8
  %startV2 = alloca %struct.l*, align 8
  %depth3 = alloca i64, align 8
  %verticesVisited4 = alloca i64, align 8
  %currIndex5 = alloca i64, align 8
  %j6 = alloca i64, align 8
  %j_start7 = alloca i64, align 8
  %j_stop8 = alloca i64, align 8
  store i8* %argPtr, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.findSubGraphs1_arg*
  %4 = getelementptr inbounds %struct.findSubGraphs1_arg, %struct.findSubGraphs1_arg* %3, i32 0, i32 0
  %5 = load %struct.graph*, %struct.graph** %4, align 8
  store %struct.graph* %5, %struct.graph** %GPtr, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = bitcast i8* %6 to %struct.findSubGraphs1_arg*
  %8 = getelementptr inbounds %struct.findSubGraphs1_arg, %struct.findSubGraphs1_arg* %7, i32 0, i32 1
  %9 = load %struct.l**, %struct.l*** %8, align 8
  store %struct.l** %9, %struct.l*** %intWtVLList, align 8
  %10 = load i8*, i8** %1, align 8
  %11 = bitcast i8* %10 to %struct.findSubGraphs1_arg*
  %12 = getelementptr inbounds %struct.findSubGraphs1_arg, %struct.findSubGraphs1_arg* %11, i32 0, i32 2
  %13 = load %struct.l**, %struct.l*** %12, align 8
  store %struct.l** %13, %struct.l*** %strWtVLList, align 8
  %14 = load i8*, i8** %1, align 8
  %15 = bitcast i8* %14 to %struct.findSubGraphs1_arg*
  %16 = getelementptr inbounds %struct.findSubGraphs1_arg, %struct.findSubGraphs1_arg* %15, i32 0, i32 3
  %17 = load %struct.edge*, %struct.edge** %16, align 8
  store %struct.edge* %17, %struct.edge** %maxIntWtList, align 8
  %18 = load i8*, i8** %1, align 8
  %19 = bitcast i8* %18 to %struct.findSubGraphs1_arg*
  %20 = getelementptr inbounds %struct.findSubGraphs1_arg, %struct.findSubGraphs1_arg* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %maxIntWtListSize, align 8
  %22 = load i8*, i8** %1, align 8
  %23 = bitcast i8* %22 to %struct.findSubGraphs1_arg*
  %24 = getelementptr inbounds %struct.findSubGraphs1_arg, %struct.findSubGraphs1_arg* %23, i32 0, i32 5
  %25 = load %struct.edge*, %struct.edge** %24, align 8
  store %struct.edge* %25, %struct.edge** %soughtStrWtList, align 8
  %26 = load i8*, i8** %1, align 8
  %27 = bitcast i8* %26 to %struct.findSubGraphs1_arg*
  %28 = getelementptr inbounds %struct.findSubGraphs1_arg, %struct.findSubGraphs1_arg* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %soughtStrWtListSize, align 8
  %30 = call i64 (...) @thread_getId()
  store i64 %30, i64* %myId, align 8
  %31 = call i64 (...) @thread_getNumThread()
  store i64 %31, i64* %numThread, align 8
  %32 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %33 = getelementptr inbounds %struct.graph, %struct.graph* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = mul i64 %34, 1
  %36 = call noalias i8* @malloc(i64 %35) #4
  store i8* %36, i8** %visited, align 8
  %37 = load i8*, i8** %visited, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %0
  br label %42

; <label>:40                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 257, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %42

; <label>:42                                      ; preds = %41, %39
  %43 = load i64, i64* %maxIntWtListSize, align 8
  %44 = load i64, i64* %soughtStrWtListSize, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i64, i64* %myId, align 8
  %47 = load i64, i64* %numThread, align 8
  call void @createPartition(i64 0, i64 %45, i64 %46, i64 %47, i64* %i_start, i64* %i_stop)
  %48 = load i64, i64* %i_start, align 8
  store i64 %48, i64* %i, align 8
  br label %49

; <label>:49                                      ; preds = %515, %42
  %50 = load i64, i64* %i, align 8
  %51 = load i64, i64* %i_stop, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %518

; <label>:53                                      ; preds = %49
  store i64 0, i64* %k, align 8
  br label %54

; <label>:54                                      ; preds = %64, %53
  %55 = load i64, i64* %k, align 8
  %56 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %57 = getelementptr inbounds %struct.graph, %struct.graph* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %55, %58
  br i1 %59, label %60, label %67

; <label>:60                                      ; preds = %54
  %61 = load i64, i64* %k, align 8
  %62 = load i8*, i8** %visited, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 %61
  store i8 117, i8* %63, align 1
  br label %64

; <label>:64                                      ; preds = %60
  %65 = load i64, i64* %k, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %k, align 8
  br label %54

; <label>:67                                      ; preds = %54
  %68 = load i64, i64* %i, align 8
  %69 = load i64, i64* %maxIntWtListSize, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %289

; <label>:71                                      ; preds = %67
  %72 = call noalias i8* @malloc(i64 24) #4
  %73 = bitcast i8* %72 to %struct.l*
  %74 = load i64, i64* %i, align 8
  %75 = load %struct.l**, %struct.l*** %intWtVLList, align 8
  %76 = getelementptr inbounds %struct.l*, %struct.l** %75, i64 %74
  store %struct.l* %73, %struct.l** %76, align 8
  %77 = load i64, i64* %i, align 8
  %78 = load %struct.l**, %struct.l*** %intWtVLList, align 8
  %79 = getelementptr inbounds %struct.l*, %struct.l** %78, i64 %77
  %80 = load %struct.l*, %struct.l** %79, align 8
  %81 = icmp ne %struct.l* %80, null
  br i1 %81, label %82, label %83

; <label>:82                                      ; preds = %71
  br label %85

; <label>:83                                      ; preds = %71
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 279, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %85

; <label>:85                                      ; preds = %84, %82
  %86 = load i64, i64* %i, align 8
  %87 = load %struct.edge*, %struct.edge** %maxIntWtList, align 8
  %88 = getelementptr inbounds %struct.edge, %struct.edge* %87, i64 %86
  %89 = getelementptr inbounds %struct.edge, %struct.edge* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %i, align 8
  %92 = load %struct.l**, %struct.l*** %intWtVLList, align 8
  %93 = getelementptr inbounds %struct.l*, %struct.l** %92, i64 %91
  %94 = load %struct.l*, %struct.l** %93, align 8
  %95 = getelementptr inbounds %struct.l, %struct.l* %94, i32 0, i32 0
  store i64 %90, i64* %95, align 8
  %96 = load i64, i64* %i, align 8
  %97 = load %struct.l**, %struct.l*** %intWtVLList, align 8
  %98 = getelementptr inbounds %struct.l*, %struct.l** %97, i64 %96
  %99 = load %struct.l*, %struct.l** %98, align 8
  %100 = getelementptr inbounds %struct.l, %struct.l* %99, i32 0, i32 1
  store i16 0, i16* %100, align 8
  %101 = load i64, i64* %i, align 8
  %102 = load %struct.l**, %struct.l*** %intWtVLList, align 8
  %103 = getelementptr inbounds %struct.l*, %struct.l** %102, i64 %101
  %104 = load %struct.l*, %struct.l** %103, align 8
  %105 = getelementptr inbounds %struct.l, %struct.l* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i8*, i8** %visited, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 %106
  store i8 118, i8* %108, align 1
  %109 = call noalias i8* @malloc(i64 24) #4
  %110 = bitcast i8* %109 to %struct.l*
  %111 = load i64, i64* %i, align 8
  %112 = load %struct.l**, %struct.l*** %intWtVLList, align 8
  %113 = getelementptr inbounds %struct.l*, %struct.l** %112, i64 %111
  %114 = load %struct.l*, %struct.l** %113, align 8
  %115 = getelementptr inbounds %struct.l, %struct.l* %114, i32 0, i32 2
  store %struct.l* %110, %struct.l** %115, align 8
  %116 = load i64, i64* %i, align 8
  %117 = load %struct.l**, %struct.l*** %intWtVLList, align 8
  %118 = getelementptr inbounds %struct.l*, %struct.l** %117, i64 %116
  %119 = load %struct.l*, %struct.l** %118, align 8
  %120 = getelementptr inbounds %struct.l, %struct.l* %119, i32 0, i32 2
  %121 = load %struct.l*, %struct.l** %120, align 8
  %122 = bitcast %struct.l* %121 to i8*
  call void @free(i8* %122) #4
  %123 = load i64, i64* %i, align 8
  %124 = load %struct.edge*, %struct.edge** %maxIntWtList, align 8
  %125 = getelementptr inbounds %struct.edge, %struct.edge* %124, i64 %123
  %126 = getelementptr inbounds %struct.edge, %struct.edge* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %i, align 8
  %129 = load %struct.l**, %struct.l*** %intWtVLList, align 8
  %130 = getelementptr inbounds %struct.l*, %struct.l** %129, i64 %128
  %131 = load %struct.l*, %struct.l** %130, align 8
  %132 = getelementptr inbounds %struct.l, %struct.l* %131, i32 0, i32 2
  %133 = load %struct.l*, %struct.l** %132, align 8
  %134 = getelementptr inbounds %struct.l, %struct.l* %133, i32 0, i32 0
  store i64 %127, i64* %134, align 8
  %135 = load i64, i64* %i, align 8
  %136 = load %struct.l**, %struct.l*** %intWtVLList, align 8
  %137 = getelementptr inbounds %struct.l*, %struct.l** %136, i64 %135
  %138 = load %struct.l*, %struct.l** %137, align 8
  %139 = getelementptr inbounds %struct.l, %struct.l* %138, i32 0, i32 2
  %140 = load %struct.l*, %struct.l** %139, align 8
  %141 = getelementptr inbounds %struct.l, %struct.l* %140, i32 0, i32 1
  store i16 1, i16* %141, align 8
  %142 = load i64, i64* %i, align 8
  %143 = load %struct.l**, %struct.l*** %intWtVLList, align 8
  %144 = getelementptr inbounds %struct.l*, %struct.l** %143, i64 %142
  %145 = load %struct.l*, %struct.l** %144, align 8
  %146 = getelementptr inbounds %struct.l, %struct.l* %145, i32 0, i32 2
  %147 = load %struct.l*, %struct.l** %146, align 8
  %148 = getelementptr inbounds %struct.l, %struct.l* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i8*, i8** %visited, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 %149
  store i8 118, i8* %151, align 1
  %152 = load i64, i64* %i, align 8
  %153 = load %struct.l**, %struct.l*** %intWtVLList, align 8
  %154 = getelementptr inbounds %struct.l*, %struct.l** %153, i64 %152
  %155 = load %struct.l*, %struct.l** %154, align 8
  %156 = getelementptr inbounds %struct.l, %struct.l* %155, i32 0, i32 2
  %157 = load %struct.l*, %struct.l** %156, align 8
  store %struct.l* %157, %struct.l** %currV, align 8
  %158 = load i64, i64* %i, align 8
  %159 = load %struct.l**, %struct.l*** %intWtVLList, align 8
  %160 = getelementptr inbounds %struct.l*, %struct.l** %159, i64 %158
  %161 = load %struct.l*, %struct.l** %160, align 8
  %162 = getelementptr inbounds %struct.l, %struct.l* %161, i32 0, i32 2
  %163 = load %struct.l*, %struct.l** %162, align 8
  store %struct.l* %163, %struct.l** %startV, align 8
  store i64 1, i64* %depth, align 8
  store i64 2, i64* %verticesVisited, align 8
  store i64 1, i64* %currIndex, align 8
  br label %164

; <label>:164                                     ; preds = %285, %85
  %165 = load %struct.l*, %struct.l** %startV, align 8
  %166 = getelementptr inbounds %struct.l, %struct.l* %165, i32 0, i32 1
  %167 = load i16, i16* %166, align 8
  %168 = sext i16 %167 to i64
  %169 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %170 = icmp slt i64 %168, %169
  br i1 %170, label %177, label %171

; <label>:171                                     ; preds = %164
  %172 = load i64, i64* %verticesVisited, align 8
  %173 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %174 = getelementptr inbounds %struct.graph, %struct.graph* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %172, %175
  br label %177

; <label>:177                                     ; preds = %171, %164
  %178 = phi i1 [ true, %164 ], [ %176, %171 ]
  br i1 %178, label %179, label %286

; <label>:179                                     ; preds = %177
  %180 = load %struct.l*, %struct.l** %startV, align 8
  %181 = getelementptr inbounds %struct.l, %struct.l* %180, i32 0, i32 1
  %182 = load i16, i16* %181, align 8
  %183 = sext i16 %182 to i32
  %184 = add nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  store i64 %185, i64* %depth, align 8
  %186 = load %struct.l*, %struct.l** %startV, align 8
  %187 = getelementptr inbounds %struct.l, %struct.l* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %190 = getelementptr inbounds %struct.graph, %struct.graph* %189, i32 0, i32 7
  %191 = load i64*, i64** %190, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 %188
  %193 = load i64, i64* %192, align 8
  store i64 %193, i64* %j_start, align 8
  %194 = load i64, i64* %j_start, align 8
  %195 = load %struct.l*, %struct.l** %startV, align 8
  %196 = getelementptr inbounds %struct.l, %struct.l* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %199 = getelementptr inbounds %struct.graph, %struct.graph* %198, i32 0, i32 6
  %200 = load i64*, i64** %199, align 8
  %201 = getelementptr inbounds i64, i64* %200, i64 %197
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %194, %202
  store i64 %203, i64* %j_stop, align 8
  %204 = load i64, i64* %j_start, align 8
  store i64 %204, i64* %j, align 8
  br label %205

; <label>:205                                     ; preds = %264, %179
  %206 = load i64, i64* %j, align 8
  %207 = load i64, i64* %j_stop, align 8
  %208 = icmp slt i64 %206, %207
  br i1 %208, label %209, label %267

; <label>:209                                     ; preds = %205
  %210 = load i64, i64* %j, align 8
  %211 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %212 = getelementptr inbounds %struct.graph, %struct.graph* %211, i32 0, i32 8
  %213 = load i64*, i64** %212, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 %210
  %215 = load i64, i64* %214, align 8
  %216 = load i8*, i8** %visited, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 %215
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 117
  br i1 %220, label %221, label %263

; <label>:221                                     ; preds = %209
  %222 = load i64, i64* %j, align 8
  %223 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %224 = getelementptr inbounds %struct.graph, %struct.graph* %223, i32 0, i32 8
  %225 = load i64*, i64** %224, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 %222
  %227 = load i64, i64* %226, align 8
  %228 = load i8*, i8** %visited, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 %227
  store i8 118, i8* %229, align 1
  %230 = call noalias i8* @malloc(i64 24) #4
  %231 = bitcast i8* %230 to %struct.l*
  %232 = load %struct.l*, %struct.l** %currV, align 8
  %233 = getelementptr inbounds %struct.l, %struct.l* %232, i32 0, i32 2
  store %struct.l* %231, %struct.l** %233, align 8
  %234 = load %struct.l*, %struct.l** %currV, align 8
  %235 = getelementptr inbounds %struct.l, %struct.l* %234, i32 0, i32 2
  %236 = load %struct.l*, %struct.l** %235, align 8
  %237 = icmp ne %struct.l* %236, null
  br i1 %237, label %238, label %239

; <label>:238                                     ; preds = %221
  br label %241

; <label>:239                                     ; preds = %221
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 308, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %241

; <label>:241                                     ; preds = %240, %238
  %242 = load i64, i64* %j, align 8
  %243 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %244 = getelementptr inbounds %struct.graph, %struct.graph* %243, i32 0, i32 8
  %245 = load i64*, i64** %244, align 8
  %246 = getelementptr inbounds i64, i64* %245, i64 %242
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.l*, %struct.l** %currV, align 8
  %249 = getelementptr inbounds %struct.l, %struct.l* %248, i32 0, i32 2
  %250 = load %struct.l*, %struct.l** %249, align 8
  %251 = getelementptr inbounds %struct.l, %struct.l* %250, i32 0, i32 0
  store i64 %247, i64* %251, align 8
  %252 = load i64, i64* %depth, align 8
  %253 = trunc i64 %252 to i16
  %254 = load %struct.l*, %struct.l** %currV, align 8
  %255 = getelementptr inbounds %struct.l, %struct.l* %254, i32 0, i32 2
  %256 = load %struct.l*, %struct.l** %255, align 8
  %257 = getelementptr inbounds %struct.l, %struct.l* %256, i32 0, i32 1
  store i16 %253, i16* %257, align 8
  %258 = load i64, i64* %verticesVisited, align 8
  %259 = add nsw i64 %258, 1
  store i64 %259, i64* %verticesVisited, align 8
  %260 = load %struct.l*, %struct.l** %currV, align 8
  %261 = getelementptr inbounds %struct.l, %struct.l* %260, i32 0, i32 2
  %262 = load %struct.l*, %struct.l** %261, align 8
  store %struct.l* %262, %struct.l** %currV, align 8
  br label %263

; <label>:263                                     ; preds = %241, %209
  br label %264

; <label>:264                                     ; preds = %263
  %265 = load i64, i64* %j, align 8
  %266 = add nsw i64 %265, 1
  store i64 %266, i64* %j, align 8
  br label %205

; <label>:267                                     ; preds = %205
  %268 = load i64, i64* %currIndex, align 8
  %269 = load i64, i64* %verticesVisited, align 8
  %270 = sub nsw i64 %269, 1
  %271 = icmp slt i64 %268, %270
  br i1 %271, label %272, label %284

; <label>:272                                     ; preds = %267
  %273 = load i64, i64* %verticesVisited, align 8
  %274 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %275 = getelementptr inbounds %struct.graph, %struct.graph* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = icmp ult i64 %273, %276
  br i1 %277, label %278, label %284

; <label>:278                                     ; preds = %272
  %279 = load i64, i64* %currIndex, align 8
  %280 = add nsw i64 %279, 1
  store i64 %280, i64* %currIndex, align 8
  %281 = load %struct.l*, %struct.l** %startV, align 8
  %282 = getelementptr inbounds %struct.l, %struct.l* %281, i32 0, i32 2
  %283 = load %struct.l*, %struct.l** %282, align 8
  store %struct.l* %283, %struct.l** %startV, align 8
  br label %285

; <label>:284                                     ; preds = %272, %267
  br label %286

; <label>:285                                     ; preds = %278
  br label %164

; <label>:286                                     ; preds = %284, %177
  %287 = load %struct.l*, %struct.l** %currV, align 8
  %288 = getelementptr inbounds %struct.l, %struct.l* %287, i32 0, i32 2
  store %struct.l* null, %struct.l** %288, align 8
  br label %514

; <label>:289                                     ; preds = %67
  %290 = load i64, i64* %i, align 8
  %291 = load i64, i64* %maxIntWtListSize, align 8
  %292 = sub nsw i64 %290, %291
  store i64 %292, i64* %t, align 8
  %293 = call noalias i8* @malloc(i64 24) #4
  %294 = bitcast i8* %293 to %struct.l*
  %295 = load i64, i64* %t, align 8
  %296 = load %struct.l**, %struct.l*** %strWtVLList, align 8
  %297 = getelementptr inbounds %struct.l*, %struct.l** %296, i64 %295
  store %struct.l* %294, %struct.l** %297, align 8
  %298 = load i64, i64* %t, align 8
  %299 = load %struct.l**, %struct.l*** %strWtVLList, align 8
  %300 = getelementptr inbounds %struct.l*, %struct.l** %299, i64 %298
  %301 = load %struct.l*, %struct.l** %300, align 8
  %302 = icmp ne %struct.l* %301, null
  br i1 %302, label %303, label %304

; <label>:303                                     ; preds = %289
  br label %306

; <label>:304                                     ; preds = %289
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 330, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %306

; <label>:306                                     ; preds = %305, %303
  %307 = load i64, i64* %t, align 8
  %308 = load %struct.edge*, %struct.edge** %soughtStrWtList, align 8
  %309 = getelementptr inbounds %struct.edge, %struct.edge* %308, i64 %307
  %310 = getelementptr inbounds %struct.edge, %struct.edge* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* %t, align 8
  %313 = load %struct.l**, %struct.l*** %strWtVLList, align 8
  %314 = getelementptr inbounds %struct.l*, %struct.l** %313, i64 %312
  %315 = load %struct.l*, %struct.l** %314, align 8
  %316 = getelementptr inbounds %struct.l, %struct.l* %315, i32 0, i32 0
  store i64 %311, i64* %316, align 8
  %317 = load i64, i64* %t, align 8
  %318 = load %struct.l**, %struct.l*** %strWtVLList, align 8
  %319 = getelementptr inbounds %struct.l*, %struct.l** %318, i64 %317
  %320 = load %struct.l*, %struct.l** %319, align 8
  %321 = getelementptr inbounds %struct.l, %struct.l* %320, i32 0, i32 1
  store i16 0, i16* %321, align 8
  %322 = load i64, i64* %t, align 8
  %323 = load %struct.l**, %struct.l*** %strWtVLList, align 8
  %324 = getelementptr inbounds %struct.l*, %struct.l** %323, i64 %322
  %325 = load %struct.l*, %struct.l** %324, align 8
  %326 = getelementptr inbounds %struct.l, %struct.l* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = load i8*, i8** %visited, align 8
  %329 = getelementptr inbounds i8, i8* %328, i64 %327
  store i8 118, i8* %329, align 1
  %330 = call noalias i8* @malloc(i64 24) #4
  %331 = bitcast i8* %330 to %struct.l*
  %332 = load i64, i64* %t, align 8
  %333 = load %struct.l**, %struct.l*** %strWtVLList, align 8
  %334 = getelementptr inbounds %struct.l*, %struct.l** %333, i64 %332
  %335 = load %struct.l*, %struct.l** %334, align 8
  %336 = getelementptr inbounds %struct.l, %struct.l* %335, i32 0, i32 2
  store %struct.l* %331, %struct.l** %336, align 8
  %337 = load i64, i64* %t, align 8
  %338 = load %struct.l**, %struct.l*** %strWtVLList, align 8
  %339 = getelementptr inbounds %struct.l*, %struct.l** %338, i64 %337
  %340 = load %struct.l*, %struct.l** %339, align 8
  %341 = getelementptr inbounds %struct.l, %struct.l* %340, i32 0, i32 2
  %342 = load %struct.l*, %struct.l** %341, align 8
  %343 = icmp ne %struct.l* %342, null
  br i1 %343, label %344, label %345

; <label>:344                                     ; preds = %306
  br label %347

; <label>:345                                     ; preds = %306
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 336, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %347

; <label>:347                                     ; preds = %346, %344
  %348 = load i64, i64* %t, align 8
  %349 = load %struct.edge*, %struct.edge** %soughtStrWtList, align 8
  %350 = getelementptr inbounds %struct.edge, %struct.edge* %349, i64 %348
  %351 = getelementptr inbounds %struct.edge, %struct.edge* %350, i32 0, i32 1
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* %t, align 8
  %354 = load %struct.l**, %struct.l*** %strWtVLList, align 8
  %355 = getelementptr inbounds %struct.l*, %struct.l** %354, i64 %353
  %356 = load %struct.l*, %struct.l** %355, align 8
  %357 = getelementptr inbounds %struct.l, %struct.l* %356, i32 0, i32 2
  %358 = load %struct.l*, %struct.l** %357, align 8
  %359 = getelementptr inbounds %struct.l, %struct.l* %358, i32 0, i32 0
  store i64 %352, i64* %359, align 8
  %360 = load i64, i64* %t, align 8
  %361 = load %struct.l**, %struct.l*** %strWtVLList, align 8
  %362 = getelementptr inbounds %struct.l*, %struct.l** %361, i64 %360
  %363 = load %struct.l*, %struct.l** %362, align 8
  %364 = getelementptr inbounds %struct.l, %struct.l* %363, i32 0, i32 2
  %365 = load %struct.l*, %struct.l** %364, align 8
  %366 = getelementptr inbounds %struct.l, %struct.l* %365, i32 0, i32 1
  store i16 1, i16* %366, align 8
  %367 = load i64, i64* %t, align 8
  %368 = load %struct.l**, %struct.l*** %strWtVLList, align 8
  %369 = getelementptr inbounds %struct.l*, %struct.l** %368, i64 %367
  %370 = load %struct.l*, %struct.l** %369, align 8
  %371 = getelementptr inbounds %struct.l, %struct.l* %370, i32 0, i32 2
  %372 = load %struct.l*, %struct.l** %371, align 8
  %373 = getelementptr inbounds %struct.l, %struct.l* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = load i8*, i8** %visited, align 8
  %376 = getelementptr inbounds i8, i8* %375, i64 %374
  store i8 118, i8* %376, align 1
  %377 = load i64, i64* %t, align 8
  %378 = load %struct.l**, %struct.l*** %strWtVLList, align 8
  %379 = getelementptr inbounds %struct.l*, %struct.l** %378, i64 %377
  %380 = load %struct.l*, %struct.l** %379, align 8
  %381 = getelementptr inbounds %struct.l, %struct.l* %380, i32 0, i32 2
  %382 = load %struct.l*, %struct.l** %381, align 8
  store %struct.l* %382, %struct.l** %currV1, align 8
  %383 = load i64, i64* %t, align 8
  %384 = load %struct.l**, %struct.l*** %strWtVLList, align 8
  %385 = getelementptr inbounds %struct.l*, %struct.l** %384, i64 %383
  %386 = load %struct.l*, %struct.l** %385, align 8
  %387 = getelementptr inbounds %struct.l, %struct.l* %386, i32 0, i32 2
  %388 = load %struct.l*, %struct.l** %387, align 8
  store %struct.l* %388, %struct.l** %startV2, align 8
  store i64 1, i64* %depth3, align 8
  store i64 2, i64* %verticesVisited4, align 8
  store i64 1, i64* %currIndex5, align 8
  br label %389

; <label>:389                                     ; preds = %510, %347
  %390 = load %struct.l*, %struct.l** %startV2, align 8
  %391 = getelementptr inbounds %struct.l, %struct.l* %390, i32 0, i32 1
  %392 = load i16, i16* %391, align 8
  %393 = sext i16 %392 to i64
  %394 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %395 = icmp slt i64 %393, %394
  br i1 %395, label %402, label %396

; <label>:396                                     ; preds = %389
  %397 = load i64, i64* %verticesVisited4, align 8
  %398 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %399 = getelementptr inbounds %struct.graph, %struct.graph* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = icmp eq i64 %397, %400
  br label %402

; <label>:402                                     ; preds = %396, %389
  %403 = phi i1 [ true, %389 ], [ %401, %396 ]
  br i1 %403, label %404, label %511

; <label>:404                                     ; preds = %402
  %405 = load %struct.l*, %struct.l** %startV2, align 8
  %406 = getelementptr inbounds %struct.l, %struct.l* %405, i32 0, i32 1
  %407 = load i16, i16* %406, align 8
  %408 = sext i16 %407 to i32
  %409 = add nsw i32 %408, 1
  %410 = sext i32 %409 to i64
  store i64 %410, i64* %depth3, align 8
  %411 = load %struct.l*, %struct.l** %startV2, align 8
  %412 = getelementptr inbounds %struct.l, %struct.l* %411, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %415 = getelementptr inbounds %struct.graph, %struct.graph* %414, i32 0, i32 7
  %416 = load i64*, i64** %415, align 8
  %417 = getelementptr inbounds i64, i64* %416, i64 %413
  %418 = load i64, i64* %417, align 8
  store i64 %418, i64* %j_start7, align 8
  %419 = load i64, i64* %j_start7, align 8
  %420 = load %struct.l*, %struct.l** %startV2, align 8
  %421 = getelementptr inbounds %struct.l, %struct.l* %420, i32 0, i32 0
  %422 = load i64, i64* %421, align 8
  %423 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %424 = getelementptr inbounds %struct.graph, %struct.graph* %423, i32 0, i32 6
  %425 = load i64*, i64** %424, align 8
  %426 = getelementptr inbounds i64, i64* %425, i64 %422
  %427 = load i64, i64* %426, align 8
  %428 = add nsw i64 %419, %427
  store i64 %428, i64* %j_stop8, align 8
  %429 = load i64, i64* %j_start7, align 8
  store i64 %429, i64* %j6, align 8
  br label %430

; <label>:430                                     ; preds = %489, %404
  %431 = load i64, i64* %j6, align 8
  %432 = load i64, i64* %j_stop8, align 8
  %433 = icmp slt i64 %431, %432
  br i1 %433, label %434, label %492

; <label>:434                                     ; preds = %430
  %435 = load i64, i64* %j6, align 8
  %436 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %437 = getelementptr inbounds %struct.graph, %struct.graph* %436, i32 0, i32 8
  %438 = load i64*, i64** %437, align 8
  %439 = getelementptr inbounds i64, i64* %438, i64 %435
  %440 = load i64, i64* %439, align 8
  %441 = load i8*, i8** %visited, align 8
  %442 = getelementptr inbounds i8, i8* %441, i64 %440
  %443 = load i8, i8* %442, align 1
  %444 = sext i8 %443 to i32
  %445 = icmp eq i32 %444, 117
  br i1 %445, label %446, label %488

; <label>:446                                     ; preds = %434
  %447 = load i64, i64* %j6, align 8
  %448 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %449 = getelementptr inbounds %struct.graph, %struct.graph* %448, i32 0, i32 8
  %450 = load i64*, i64** %449, align 8
  %451 = getelementptr inbounds i64, i64* %450, i64 %447
  %452 = load i64, i64* %451, align 8
  %453 = load i8*, i8** %visited, align 8
  %454 = getelementptr inbounds i8, i8* %453, i64 %452
  store i8 118, i8* %454, align 1
  %455 = call noalias i8* @malloc(i64 24) #4
  %456 = bitcast i8* %455 to %struct.l*
  %457 = load %struct.l*, %struct.l** %currV1, align 8
  %458 = getelementptr inbounds %struct.l, %struct.l* %457, i32 0, i32 2
  store %struct.l* %456, %struct.l** %458, align 8
  %459 = load %struct.l*, %struct.l** %currV1, align 8
  %460 = getelementptr inbounds %struct.l, %struct.l* %459, i32 0, i32 2
  %461 = load %struct.l*, %struct.l** %460, align 8
  %462 = icmp ne %struct.l* %461, null
  br i1 %462, label %463, label %464

; <label>:463                                     ; preds = %446
  br label %466

; <label>:464                                     ; preds = %446
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 360, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %466

; <label>:466                                     ; preds = %465, %463
  %467 = load i64, i64* %j6, align 8
  %468 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %469 = getelementptr inbounds %struct.graph, %struct.graph* %468, i32 0, i32 8
  %470 = load i64*, i64** %469, align 8
  %471 = getelementptr inbounds i64, i64* %470, i64 %467
  %472 = load i64, i64* %471, align 8
  %473 = load %struct.l*, %struct.l** %currV1, align 8
  %474 = getelementptr inbounds %struct.l, %struct.l* %473, i32 0, i32 2
  %475 = load %struct.l*, %struct.l** %474, align 8
  %476 = getelementptr inbounds %struct.l, %struct.l* %475, i32 0, i32 0
  store i64 %472, i64* %476, align 8
  %477 = load i64, i64* %depth3, align 8
  %478 = trunc i64 %477 to i16
  %479 = load %struct.l*, %struct.l** %currV1, align 8
  %480 = getelementptr inbounds %struct.l, %struct.l* %479, i32 0, i32 2
  %481 = load %struct.l*, %struct.l** %480, align 8
  %482 = getelementptr inbounds %struct.l, %struct.l* %481, i32 0, i32 1
  store i16 %478, i16* %482, align 8
  %483 = load i64, i64* %verticesVisited4, align 8
  %484 = add nsw i64 %483, 1
  store i64 %484, i64* %verticesVisited4, align 8
  %485 = load %struct.l*, %struct.l** %currV1, align 8
  %486 = getelementptr inbounds %struct.l, %struct.l* %485, i32 0, i32 2
  %487 = load %struct.l*, %struct.l** %486, align 8
  store %struct.l* %487, %struct.l** %currV1, align 8
  br label %488

; <label>:488                                     ; preds = %466, %434
  br label %489

; <label>:489                                     ; preds = %488
  %490 = load i64, i64* %j6, align 8
  %491 = add nsw i64 %490, 1
  store i64 %491, i64* %j6, align 8
  br label %430

; <label>:492                                     ; preds = %430
  %493 = load i64, i64* %currIndex5, align 8
  %494 = load i64, i64* %verticesVisited4, align 8
  %495 = sub nsw i64 %494, 1
  %496 = icmp slt i64 %493, %495
  br i1 %496, label %497, label %509

; <label>:497                                     ; preds = %492
  %498 = load i64, i64* %verticesVisited4, align 8
  %499 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %500 = getelementptr inbounds %struct.graph, %struct.graph* %499, i32 0, i32 0
  %501 = load i64, i64* %500, align 8
  %502 = icmp ult i64 %498, %501
  br i1 %502, label %503, label %509

; <label>:503                                     ; preds = %497
  %504 = load i64, i64* %currIndex5, align 8
  %505 = add nsw i64 %504, 1
  store i64 %505, i64* %currIndex5, align 8
  %506 = load %struct.l*, %struct.l** %startV2, align 8
  %507 = getelementptr inbounds %struct.l, %struct.l* %506, i32 0, i32 2
  %508 = load %struct.l*, %struct.l** %507, align 8
  store %struct.l* %508, %struct.l** %startV2, align 8
  br label %510

; <label>:509                                     ; preds = %497, %492
  br label %511

; <label>:510                                     ; preds = %503
  br label %389

; <label>:511                                     ; preds = %509, %402
  %512 = load %struct.l*, %struct.l** %currV1, align 8
  %513 = getelementptr inbounds %struct.l, %struct.l* %512, i32 0, i32 2
  store %struct.l* null, %struct.l** %513, align 8
  br label %514

; <label>:514                                     ; preds = %511, %286
  br label %515

; <label>:515                                     ; preds = %514
  %516 = load i64, i64* %i, align 8
  %517 = add nsw i64 %516, 1
  store i64 %517, i64* %i, align 8
  br label %49

; <label>:518                                     ; preds = %49
  %519 = load i8*, i8** %visited, align 8
  call void @free(i8* %519) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @findSubGraphs2(i8* %argPtr) #0 {
  %1 = alloca i8*, align 8
  %GPtr = alloca %struct.graph*, align 8
  %intWtVDList = alloca %struct.Vd*, align 8
  %strWtVDList = alloca %struct.Vd*, align 8
  %maxIntWtList = alloca %struct.edge*, align 8
  %maxIntWtListSize = alloca i64, align 8
  %soughtStrWtList = alloca %struct.edge*, align 8
  %soughtStrWtListSize = alloca i64, align 8
  %myId = alloca i64, align 8
  %numThread = alloca i64, align 8
  %numSubArray = alloca i64, align 8
  %arraySize = alloca i64, align 8
  %i = alloca i64, align 8
  %i_start = alloca i64, align 8
  %i_stop = alloca i64, align 8
  %j = alloca i64, align 8
  %t = alloca i64, align 8
  %j1 = alloca i64, align 8
  %visited = alloca i8*, align 8
  %k = alloca i64, align 8
  %depth = alloca i64, align 8
  %verticesVisited = alloca i64, align 8
  %currIndex = alloca i64, align 8
  %currVListX = alloca i64, align 8
  %currVListY = alloca i64, align 8
  %currV = alloca %struct.V*, align 8
  %vNum = alloca i64, align 8
  %j2 = alloca i64, align 8
  %j_start = alloca i64, align 8
  %j_stop = alloca i64, align 8
  %vListX = alloca i64, align 8
  %vListY = alloca i64, align 8
  %v = alloca %struct.V*, align 8
  %vListX3 = alloca i64, align 8
  %vListY4 = alloca i64, align 8
  %t5 = alloca i64, align 8
  %depth6 = alloca i64, align 8
  %verticesVisited7 = alloca i64, align 8
  %currIndex8 = alloca i64, align 8
  %currVListX9 = alloca i64, align 8
  %currVListY10 = alloca i64, align 8
  %currV11 = alloca %struct.V*, align 8
  %vNum12 = alloca i64, align 8
  %j13 = alloca i64, align 8
  %j_start14 = alloca i64, align 8
  %j_stop15 = alloca i64, align 8
  %vListX16 = alloca i64, align 8
  %vListY17 = alloca i64, align 8
  %v18 = alloca %struct.V*, align 8
  %currVListX19 = alloca i64, align 8
  %currVListY20 = alloca i64, align 8
  store i8* %argPtr, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.findSubGraphs2_arg*
  %4 = getelementptr inbounds %struct.findSubGraphs2_arg, %struct.findSubGraphs2_arg* %3, i32 0, i32 0
  %5 = load %struct.graph*, %struct.graph** %4, align 8
  store %struct.graph* %5, %struct.graph** %GPtr, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = bitcast i8* %6 to %struct.findSubGraphs2_arg*
  %8 = getelementptr inbounds %struct.findSubGraphs2_arg, %struct.findSubGraphs2_arg* %7, i32 0, i32 1
  %9 = load %struct.Vd*, %struct.Vd** %8, align 8
  store %struct.Vd* %9, %struct.Vd** %intWtVDList, align 8
  %10 = load i8*, i8** %1, align 8
  %11 = bitcast i8* %10 to %struct.findSubGraphs2_arg*
  %12 = getelementptr inbounds %struct.findSubGraphs2_arg, %struct.findSubGraphs2_arg* %11, i32 0, i32 2
  %13 = load %struct.Vd*, %struct.Vd** %12, align 8
  store %struct.Vd* %13, %struct.Vd** %strWtVDList, align 8
  %14 = load i8*, i8** %1, align 8
  %15 = bitcast i8* %14 to %struct.findSubGraphs2_arg*
  %16 = getelementptr inbounds %struct.findSubGraphs2_arg, %struct.findSubGraphs2_arg* %15, i32 0, i32 3
  %17 = load %struct.edge*, %struct.edge** %16, align 8
  store %struct.edge* %17, %struct.edge** %maxIntWtList, align 8
  %18 = load i8*, i8** %1, align 8
  %19 = bitcast i8* %18 to %struct.findSubGraphs2_arg*
  %20 = getelementptr inbounds %struct.findSubGraphs2_arg, %struct.findSubGraphs2_arg* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %maxIntWtListSize, align 8
  %22 = load i8*, i8** %1, align 8
  %23 = bitcast i8* %22 to %struct.findSubGraphs2_arg*
  %24 = getelementptr inbounds %struct.findSubGraphs2_arg, %struct.findSubGraphs2_arg* %23, i32 0, i32 5
  %25 = load %struct.edge*, %struct.edge** %24, align 8
  store %struct.edge* %25, %struct.edge** %soughtStrWtList, align 8
  %26 = load i8*, i8** %1, align 8
  %27 = bitcast i8* %26 to %struct.findSubGraphs2_arg*
  %28 = getelementptr inbounds %struct.findSubGraphs2_arg, %struct.findSubGraphs2_arg* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %soughtStrWtListSize, align 8
  %30 = call i64 (...) @thread_getId()
  store i64 %30, i64* %myId, align 8
  %31 = call i64 (...) @thread_getNumThread()
  store i64 %31, i64* %numThread, align 8
  store i64 30, i64* %numSubArray, align 8
  %32 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %33 = mul nsw i64 5, %32
  store i64 %33, i64* %arraySize, align 8
  %34 = load i64, i64* %maxIntWtListSize, align 8
  %35 = load i64, i64* %soughtStrWtListSize, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i64, i64* %myId, align 8
  %38 = load i64, i64* %numThread, align 8
  call void @createPartition(i64 0, i64 %36, i64 %37, i64 %38, i64* %i_start, i64* %i_stop)
  %39 = load i64, i64* %i_start, align 8
  store i64 %39, i64* %i, align 8
  br label %40

; <label>:40                                      ; preds = %248, %0
  %41 = load i64, i64* %i, align 8
  %42 = load i64, i64* %i_stop, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %251

; <label>:44                                      ; preds = %40
  %45 = load i64, i64* %i, align 8
  %46 = load i64, i64* %maxIntWtListSize, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %146

; <label>:48                                      ; preds = %44
  %49 = load i64, i64* %i, align 8
  %50 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %51 = getelementptr inbounds %struct.Vd, %struct.Vd* %50, i64 %49
  %52 = getelementptr inbounds %struct.Vd, %struct.Vd* %51, i32 0, i32 0
  store i64 1, i64* %52, align 8
  %53 = load i64, i64* %numSubArray, align 8
  %54 = mul i64 %53, 8
  %55 = call noalias i8* @malloc(i64 %54) #4
  %56 = bitcast i8* %55 to i64*
  %57 = load i64, i64* %i, align 8
  %58 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %59 = getelementptr inbounds %struct.Vd, %struct.Vd* %58, i64 %57
  %60 = getelementptr inbounds %struct.Vd, %struct.Vd* %59, i32 0, i32 1
  store i64* %56, i64** %60, align 8
  %61 = load i64, i64* %i, align 8
  %62 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %63 = getelementptr inbounds %struct.Vd, %struct.Vd* %62, i64 %61
  %64 = getelementptr inbounds %struct.Vd, %struct.Vd* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = icmp ne i64* %65, null
  br i1 %66, label %67, label %68

; <label>:67                                      ; preds = %48
  br label %70

; <label>:68                                      ; preds = %48
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 426, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %70

; <label>:70                                      ; preds = %69, %67
  %71 = load i64, i64* %i, align 8
  %72 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %73 = getelementptr inbounds %struct.Vd, %struct.Vd* %72, i64 %71
  %74 = getelementptr inbounds %struct.Vd, %struct.Vd* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  store i64 0, i64* %76, align 8
  %77 = load i64, i64* %numSubArray, align 8
  %78 = mul i64 %77, 8
  %79 = call noalias i8* @malloc(i64 %78) #4
  %80 = bitcast i8* %79 to %struct.V**
  %81 = load i64, i64* %i, align 8
  %82 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %83 = getelementptr inbounds %struct.Vd, %struct.Vd* %82, i64 %81
  %84 = getelementptr inbounds %struct.Vd, %struct.Vd* %83, i32 0, i32 2
  store %struct.V** %80, %struct.V*** %84, align 8
  %85 = load i64, i64* %i, align 8
  %86 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %87 = getelementptr inbounds %struct.Vd, %struct.Vd* %86, i64 %85
  %88 = getelementptr inbounds %struct.Vd, %struct.Vd* %87, i32 0, i32 2
  %89 = load %struct.V**, %struct.V*** %88, align 8
  %90 = icmp ne %struct.V** %89, null
  br i1 %90, label %91, label %92

; <label>:91                                      ; preds = %70
  br label %94

; <label>:92                                      ; preds = %70
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 429, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %94

; <label>:94                                      ; preds = %93, %91
  %95 = load i64, i64* %arraySize, align 8
  %96 = mul i64 %95, 16
  %97 = call noalias i8* @malloc(i64 %96) #4
  %98 = bitcast i8* %97 to %struct.V*
  %99 = load i64, i64* %i, align 8
  %100 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %101 = getelementptr inbounds %struct.Vd, %struct.Vd* %100, i64 %99
  %102 = getelementptr inbounds %struct.Vd, %struct.Vd* %101, i32 0, i32 2
  %103 = load %struct.V**, %struct.V*** %102, align 8
  %104 = getelementptr inbounds %struct.V*, %struct.V** %103, i64 0
  store %struct.V* %98, %struct.V** %104, align 8
  %105 = load i64, i64* %i, align 8
  %106 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %107 = getelementptr inbounds %struct.Vd, %struct.Vd* %106, i64 %105
  %108 = getelementptr inbounds %struct.Vd, %struct.Vd* %107, i32 0, i32 2
  %109 = load %struct.V**, %struct.V*** %108, align 8
  %110 = getelementptr inbounds %struct.V*, %struct.V** %109, i64 0
  %111 = load %struct.V*, %struct.V** %110, align 8
  %112 = icmp ne %struct.V* %111, null
  br i1 %112, label %113, label %114

; <label>:113                                     ; preds = %94
  br label %116

; <label>:114                                     ; preds = %94
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 431, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %116

; <label>:116                                     ; preds = %115, %113
  store i64 0, i64* %j, align 8
  br label %117

; <label>:117                                     ; preds = %142, %116
  %118 = load i64, i64* %j, align 8
  %119 = load i64, i64* %arraySize, align 8
  %120 = icmp slt i64 %118, %119
  br i1 %120, label %121, label %145

; <label>:121                                     ; preds = %117
  %122 = load i64, i64* %j, align 8
  %123 = load i64, i64* %i, align 8
  %124 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %125 = getelementptr inbounds %struct.Vd, %struct.Vd* %124, i64 %123
  %126 = getelementptr inbounds %struct.Vd, %struct.Vd* %125, i32 0, i32 2
  %127 = load %struct.V**, %struct.V*** %126, align 8
  %128 = getelementptr inbounds %struct.V*, %struct.V** %127, i64 0
  %129 = load %struct.V*, %struct.V** %128, align 8
  %130 = getelementptr inbounds %struct.V, %struct.V* %129, i64 %122
  %131 = getelementptr inbounds %struct.V, %struct.V* %130, i32 0, i32 0
  store i64 0, i64* %131, align 8
  %132 = load i64, i64* %j, align 8
  %133 = load i64, i64* %i, align 8
  %134 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %135 = getelementptr inbounds %struct.Vd, %struct.Vd* %134, i64 %133
  %136 = getelementptr inbounds %struct.Vd, %struct.Vd* %135, i32 0, i32 2
  %137 = load %struct.V**, %struct.V*** %136, align 8
  %138 = getelementptr inbounds %struct.V*, %struct.V** %137, i64 0
  %139 = load %struct.V*, %struct.V** %138, align 8
  %140 = getelementptr inbounds %struct.V, %struct.V* %139, i64 %132
  %141 = getelementptr inbounds %struct.V, %struct.V* %140, i32 0, i32 1
  store i64 0, i64* %141, align 8
  br label %142

; <label>:142                                     ; preds = %121
  %143 = load i64, i64* %j, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* %j, align 8
  br label %117

; <label>:145                                     ; preds = %117
  br label %247

; <label>:146                                     ; preds = %44
  %147 = load i64, i64* %i, align 8
  %148 = load i64, i64* %maxIntWtListSize, align 8
  %149 = sub nsw i64 %147, %148
  store i64 %149, i64* %t, align 8
  %150 = load i64, i64* %t, align 8
  %151 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %152 = getelementptr inbounds %struct.Vd, %struct.Vd* %151, i64 %150
  %153 = getelementptr inbounds %struct.Vd, %struct.Vd* %152, i32 0, i32 0
  store i64 1, i64* %153, align 8
  %154 = load i64, i64* %numSubArray, align 8
  %155 = mul i64 %154, 8
  %156 = call noalias i8* @malloc(i64 %155) #4
  %157 = bitcast i8* %156 to i64*
  %158 = load i64, i64* %t, align 8
  %159 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %160 = getelementptr inbounds %struct.Vd, %struct.Vd* %159, i64 %158
  %161 = getelementptr inbounds %struct.Vd, %struct.Vd* %160, i32 0, i32 1
  store i64* %157, i64** %161, align 8
  %162 = load i64, i64* %t, align 8
  %163 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %164 = getelementptr inbounds %struct.Vd, %struct.Vd* %163, i64 %162
  %165 = getelementptr inbounds %struct.Vd, %struct.Vd* %164, i32 0, i32 1
  %166 = load i64*, i64** %165, align 8
  %167 = icmp ne i64* %166, null
  br i1 %167, label %168, label %169

; <label>:168                                     ; preds = %146
  br label %171

; <label>:169                                     ; preds = %146
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 442, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %171

; <label>:171                                     ; preds = %170, %168
  %172 = load i64, i64* %t, align 8
  %173 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %174 = getelementptr inbounds %struct.Vd, %struct.Vd* %173, i64 %172
  %175 = getelementptr inbounds %struct.Vd, %struct.Vd* %174, i32 0, i32 1
  %176 = load i64*, i64** %175, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 0
  store i64 0, i64* %177, align 8
  %178 = load i64, i64* %numSubArray, align 8
  %179 = mul i64 %178, 8
  %180 = call noalias i8* @malloc(i64 %179) #4
  %181 = bitcast i8* %180 to %struct.V**
  %182 = load i64, i64* %t, align 8
  %183 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %184 = getelementptr inbounds %struct.Vd, %struct.Vd* %183, i64 %182
  %185 = getelementptr inbounds %struct.Vd, %struct.Vd* %184, i32 0, i32 2
  store %struct.V** %181, %struct.V*** %185, align 8
  %186 = load i64, i64* %t, align 8
  %187 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %188 = getelementptr inbounds %struct.Vd, %struct.Vd* %187, i64 %186
  %189 = getelementptr inbounds %struct.Vd, %struct.Vd* %188, i32 0, i32 2
  %190 = load %struct.V**, %struct.V*** %189, align 8
  %191 = icmp ne %struct.V** %190, null
  br i1 %191, label %192, label %193

; <label>:192                                     ; preds = %171
  br label %195

; <label>:193                                     ; preds = %171
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 445, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %195

; <label>:195                                     ; preds = %194, %192
  %196 = load i64, i64* %arraySize, align 8
  %197 = mul i64 %196, 16
  %198 = call noalias i8* @malloc(i64 %197) #4
  %199 = bitcast i8* %198 to %struct.V*
  %200 = load i64, i64* %t, align 8
  %201 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %202 = getelementptr inbounds %struct.Vd, %struct.Vd* %201, i64 %200
  %203 = getelementptr inbounds %struct.Vd, %struct.Vd* %202, i32 0, i32 2
  %204 = load %struct.V**, %struct.V*** %203, align 8
  %205 = getelementptr inbounds %struct.V*, %struct.V** %204, i64 0
  store %struct.V* %199, %struct.V** %205, align 8
  %206 = load i64, i64* %t, align 8
  %207 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %208 = getelementptr inbounds %struct.Vd, %struct.Vd* %207, i64 %206
  %209 = getelementptr inbounds %struct.Vd, %struct.Vd* %208, i32 0, i32 2
  %210 = load %struct.V**, %struct.V*** %209, align 8
  %211 = getelementptr inbounds %struct.V*, %struct.V** %210, i64 0
  %212 = load %struct.V*, %struct.V** %211, align 8
  %213 = icmp ne %struct.V* %212, null
  br i1 %213, label %214, label %215

; <label>:214                                     ; preds = %195
  br label %217

; <label>:215                                     ; preds = %195
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 447, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %217

; <label>:217                                     ; preds = %216, %214
  store i64 0, i64* %j1, align 8
  br label %218

; <label>:218                                     ; preds = %243, %217
  %219 = load i64, i64* %j1, align 8
  %220 = load i64, i64* %arraySize, align 8
  %221 = icmp slt i64 %219, %220
  br i1 %221, label %222, label %246

; <label>:222                                     ; preds = %218
  %223 = load i64, i64* %j1, align 8
  %224 = load i64, i64* %t, align 8
  %225 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %226 = getelementptr inbounds %struct.Vd, %struct.Vd* %225, i64 %224
  %227 = getelementptr inbounds %struct.Vd, %struct.Vd* %226, i32 0, i32 2
  %228 = load %struct.V**, %struct.V*** %227, align 8
  %229 = getelementptr inbounds %struct.V*, %struct.V** %228, i64 0
  %230 = load %struct.V*, %struct.V** %229, align 8
  %231 = getelementptr inbounds %struct.V, %struct.V* %230, i64 %223
  %232 = getelementptr inbounds %struct.V, %struct.V* %231, i32 0, i32 0
  store i64 0, i64* %232, align 8
  %233 = load i64, i64* %j1, align 8
  %234 = load i64, i64* %t, align 8
  %235 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %236 = getelementptr inbounds %struct.Vd, %struct.Vd* %235, i64 %234
  %237 = getelementptr inbounds %struct.Vd, %struct.Vd* %236, i32 0, i32 2
  %238 = load %struct.V**, %struct.V*** %237, align 8
  %239 = getelementptr inbounds %struct.V*, %struct.V** %238, i64 0
  %240 = load %struct.V*, %struct.V** %239, align 8
  %241 = getelementptr inbounds %struct.V, %struct.V* %240, i64 %233
  %242 = getelementptr inbounds %struct.V, %struct.V* %241, i32 0, i32 1
  store i64 0, i64* %242, align 8
  br label %243

; <label>:243                                     ; preds = %222
  %244 = load i64, i64* %j1, align 8
  %245 = add nsw i64 %244, 1
  store i64 %245, i64* %j1, align 8
  br label %218

; <label>:246                                     ; preds = %218
  br label %247

; <label>:247                                     ; preds = %246, %145
  br label %248

; <label>:248                                     ; preds = %247
  %249 = load i64, i64* %i, align 8
  %250 = add nsw i64 %249, 1
  store i64 %250, i64* %i, align 8
  br label %40

; <label>:251                                     ; preds = %40
  call void (...) @thread_barrier_wait()
  %252 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %253 = getelementptr inbounds %struct.graph, %struct.graph* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = mul i64 %254, 1
  %256 = call noalias i8* @malloc(i64 %255) #4
  store i8* %256, i8** %visited, align 8
  %257 = load i8*, i8** %visited, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %259, label %260

; <label>:259                                     ; preds = %251
  br label %262

; <label>:260                                     ; preds = %251
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 459, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %262

; <label>:262                                     ; preds = %261, %259
  %263 = load i64, i64* %i_start, align 8
  store i64 %263, i64* %i, align 8
  br label %264

; <label>:264                                     ; preds = %896, %262
  %265 = load i64, i64* %i, align 8
  %266 = load i64, i64* %i_stop, align 8
  %267 = icmp slt i64 %265, %266
  br i1 %267, label %268, label %899

; <label>:268                                     ; preds = %264
  store i64 0, i64* %k, align 8
  br label %269

; <label>:269                                     ; preds = %279, %268
  %270 = load i64, i64* %k, align 8
  %271 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %272 = getelementptr inbounds %struct.graph, %struct.graph* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = icmp ult i64 %270, %273
  br i1 %274, label %275, label %282

; <label>:275                                     ; preds = %269
  %276 = load i64, i64* %k, align 8
  %277 = load i8*, i8** %visited, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 %276
  store i8 117, i8* %278, align 1
  br label %279

; <label>:279                                     ; preds = %275
  %280 = load i64, i64* %k, align 8
  %281 = add nsw i64 %280, 1
  store i64 %281, i64* %k, align 8
  br label %269

; <label>:282                                     ; preds = %269
  %283 = load i64, i64* %i, align 8
  %284 = load i64, i64* %maxIntWtListSize, align 8
  %285 = icmp slt i64 %283, %284
  br i1 %285, label %286, label %589

; <label>:286                                     ; preds = %282
  %287 = load i64, i64* %i, align 8
  %288 = load %struct.edge*, %struct.edge** %maxIntWtList, align 8
  %289 = getelementptr inbounds %struct.edge, %struct.edge* %288, i64 %287
  %290 = getelementptr inbounds %struct.edge, %struct.edge* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* %i, align 8
  %293 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %294 = getelementptr inbounds %struct.Vd, %struct.Vd* %293, i64 %292
  %295 = getelementptr inbounds %struct.Vd, %struct.Vd* %294, i32 0, i32 2
  %296 = load %struct.V**, %struct.V*** %295, align 8
  %297 = getelementptr inbounds %struct.V*, %struct.V** %296, i64 0
  %298 = load %struct.V*, %struct.V** %297, align 8
  %299 = getelementptr inbounds %struct.V, %struct.V* %298, i64 0
  %300 = getelementptr inbounds %struct.V, %struct.V* %299, i32 0, i32 0
  store i64 %291, i64* %300, align 8
  %301 = load i64, i64* %i, align 8
  %302 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %303 = getelementptr inbounds %struct.Vd, %struct.Vd* %302, i64 %301
  %304 = getelementptr inbounds %struct.Vd, %struct.Vd* %303, i32 0, i32 2
  %305 = load %struct.V**, %struct.V*** %304, align 8
  %306 = getelementptr inbounds %struct.V*, %struct.V** %305, i64 0
  %307 = load %struct.V*, %struct.V** %306, align 8
  %308 = getelementptr inbounds %struct.V, %struct.V* %307, i64 0
  %309 = getelementptr inbounds %struct.V, %struct.V* %308, i32 0, i32 1
  store i64 -1, i64* %309, align 8
  %310 = load i64, i64* %i, align 8
  %311 = load %struct.edge*, %struct.edge** %maxIntWtList, align 8
  %312 = getelementptr inbounds %struct.edge, %struct.edge* %311, i64 %310
  %313 = getelementptr inbounds %struct.edge, %struct.edge* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* %i, align 8
  %316 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %317 = getelementptr inbounds %struct.Vd, %struct.Vd* %316, i64 %315
  %318 = getelementptr inbounds %struct.Vd, %struct.Vd* %317, i32 0, i32 2
  %319 = load %struct.V**, %struct.V*** %318, align 8
  %320 = getelementptr inbounds %struct.V*, %struct.V** %319, i64 0
  %321 = load %struct.V*, %struct.V** %320, align 8
  %322 = getelementptr inbounds %struct.V, %struct.V* %321, i64 1
  %323 = getelementptr inbounds %struct.V, %struct.V* %322, i32 0, i32 0
  store i64 %314, i64* %323, align 8
  %324 = load i64, i64* %i, align 8
  %325 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %326 = getelementptr inbounds %struct.Vd, %struct.Vd* %325, i64 %324
  %327 = getelementptr inbounds %struct.Vd, %struct.Vd* %326, i32 0, i32 2
  %328 = load %struct.V**, %struct.V*** %327, align 8
  %329 = getelementptr inbounds %struct.V*, %struct.V** %328, i64 0
  %330 = load %struct.V*, %struct.V** %329, align 8
  %331 = getelementptr inbounds %struct.V, %struct.V* %330, i64 1
  %332 = getelementptr inbounds %struct.V, %struct.V* %331, i32 0, i32 1
  store i64 1, i64* %332, align 8
  %333 = load i64, i64* %i, align 8
  %334 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %335 = getelementptr inbounds %struct.Vd, %struct.Vd* %334, i64 %333
  %336 = getelementptr inbounds %struct.Vd, %struct.Vd* %335, i32 0, i32 1
  %337 = load i64*, i64** %336, align 8
  %338 = getelementptr inbounds i64, i64* %337, i64 0
  store i64 2, i64* %338, align 8
  %339 = load i64, i64* %i, align 8
  %340 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %341 = getelementptr inbounds %struct.Vd, %struct.Vd* %340, i64 %339
  %342 = getelementptr inbounds %struct.Vd, %struct.Vd* %341, i32 0, i32 2
  %343 = load %struct.V**, %struct.V*** %342, align 8
  %344 = getelementptr inbounds %struct.V*, %struct.V** %343, i64 0
  %345 = load %struct.V*, %struct.V** %344, align 8
  %346 = getelementptr inbounds %struct.V, %struct.V* %345, i64 0
  %347 = getelementptr inbounds %struct.V, %struct.V* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = load i8*, i8** %visited, align 8
  %350 = getelementptr inbounds i8, i8* %349, i64 %348
  store i8 118, i8* %350, align 1
  %351 = load i64, i64* %i, align 8
  %352 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %353 = getelementptr inbounds %struct.Vd, %struct.Vd* %352, i64 %351
  %354 = getelementptr inbounds %struct.Vd, %struct.Vd* %353, i32 0, i32 2
  %355 = load %struct.V**, %struct.V*** %354, align 8
  %356 = getelementptr inbounds %struct.V*, %struct.V** %355, i64 0
  %357 = load %struct.V*, %struct.V** %356, align 8
  %358 = getelementptr inbounds %struct.V, %struct.V* %357, i64 1
  %359 = getelementptr inbounds %struct.V, %struct.V* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = load i8*, i8** %visited, align 8
  %362 = getelementptr inbounds i8, i8* %361, i64 %360
  store i8 118, i8* %362, align 1
  store i64 1, i64* %depth, align 8
  store i64 2, i64* %verticesVisited, align 8
  store i64 1, i64* %currIndex, align 8
  br label %363

; <label>:363                                     ; preds = %587, %286
  %364 = load i64, i64* %depth, align 8
  %365 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %366 = icmp slt i64 %364, %365
  br i1 %366, label %373, label %367

; <label>:367                                     ; preds = %363
  %368 = load i64, i64* %verticesVisited, align 8
  %369 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %370 = getelementptr inbounds %struct.graph, %struct.graph* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = icmp eq i64 %368, %371
  br label %373

; <label>:373                                     ; preds = %367, %363
  %374 = phi i1 [ true, %363 ], [ %372, %367 ]
  br i1 %374, label %375, label %588

; <label>:375                                     ; preds = %373
  %376 = load i64, i64* %currIndex, align 8
  %377 = load i64, i64* %arraySize, align 8
  %378 = sdiv i64 %376, %377
  store i64 %378, i64* %currVListX, align 8
  %379 = load i64, i64* %currIndex, align 8
  %380 = load i64, i64* %arraySize, align 8
  %381 = srem i64 %379, %380
  store i64 %381, i64* %currVListY, align 8
  %382 = load i64, i64* %currVListY, align 8
  %383 = load i64, i64* %currVListX, align 8
  %384 = load i64, i64* %i, align 8
  %385 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %386 = getelementptr inbounds %struct.Vd, %struct.Vd* %385, i64 %384
  %387 = getelementptr inbounds %struct.Vd, %struct.Vd* %386, i32 0, i32 2
  %388 = load %struct.V**, %struct.V*** %387, align 8
  %389 = getelementptr inbounds %struct.V*, %struct.V** %388, i64 %383
  %390 = load %struct.V*, %struct.V** %389, align 8
  %391 = getelementptr inbounds %struct.V, %struct.V* %390, i64 %382
  store %struct.V* %391, %struct.V** %currV, align 8
  %392 = load %struct.V*, %struct.V** %currV, align 8
  %393 = getelementptr inbounds %struct.V, %struct.V* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  store i64 %394, i64* %vNum, align 8
  %395 = load %struct.V*, %struct.V** %currV, align 8
  %396 = getelementptr inbounds %struct.V, %struct.V* %395, i32 0, i32 1
  %397 = load i64, i64* %396, align 8
  %398 = add nsw i64 %397, 1
  store i64 %398, i64* %depth, align 8
  %399 = load i64, i64* %vNum, align 8
  %400 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %401 = getelementptr inbounds %struct.graph, %struct.graph* %400, i32 0, i32 7
  %402 = load i64*, i64** %401, align 8
  %403 = getelementptr inbounds i64, i64* %402, i64 %399
  %404 = load i64, i64* %403, align 8
  store i64 %404, i64* %j_start, align 8
  %405 = load i64, i64* %j_start, align 8
  %406 = load i64, i64* %vNum, align 8
  %407 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %408 = getelementptr inbounds %struct.graph, %struct.graph* %407, i32 0, i32 6
  %409 = load i64*, i64** %408, align 8
  %410 = getelementptr inbounds i64, i64* %409, i64 %406
  %411 = load i64, i64* %410, align 8
  %412 = add nsw i64 %405, %411
  store i64 %412, i64* %j_stop, align 8
  %413 = load i64, i64* %j_start, align 8
  store i64 %413, i64* %j2, align 8
  br label %414

; <label>:414                                     ; preds = %478, %375
  %415 = load i64, i64* %j2, align 8
  %416 = load i64, i64* %j_stop, align 8
  %417 = icmp slt i64 %415, %416
  br i1 %417, label %418, label %481

; <label>:418                                     ; preds = %414
  %419 = load i64, i64* %j2, align 8
  %420 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %421 = getelementptr inbounds %struct.graph, %struct.graph* %420, i32 0, i32 8
  %422 = load i64*, i64** %421, align 8
  %423 = getelementptr inbounds i64, i64* %422, i64 %419
  %424 = load i64, i64* %423, align 8
  %425 = load i8*, i8** %visited, align 8
  %426 = getelementptr inbounds i8, i8* %425, i64 %424
  %427 = load i8, i8* %426, align 1
  %428 = sext i8 %427 to i32
  %429 = icmp eq i32 %428, 117
  br i1 %429, label %430, label %477

; <label>:430                                     ; preds = %418
  %431 = load i64, i64* %j2, align 8
  %432 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %433 = getelementptr inbounds %struct.graph, %struct.graph* %432, i32 0, i32 8
  %434 = load i64*, i64** %433, align 8
  %435 = getelementptr inbounds i64, i64* %434, i64 %431
  %436 = load i64, i64* %435, align 8
  %437 = load i8*, i8** %visited, align 8
  %438 = getelementptr inbounds i8, i8* %437, i64 %436
  store i8 118, i8* %438, align 1
  %439 = load i64, i64* %verticesVisited, align 8
  %440 = load i64, i64* %arraySize, align 8
  %441 = sdiv i64 %439, %440
  store i64 %441, i64* %vListX, align 8
  %442 = load i64, i64* %verticesVisited, align 8
  %443 = load i64, i64* %arraySize, align 8
  %444 = srem i64 %442, %443
  store i64 %444, i64* %vListY, align 8
  %445 = load i64, i64* %vListY, align 8
  %446 = load i64, i64* %vListX, align 8
  %447 = load i64, i64* %i, align 8
  %448 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %449 = getelementptr inbounds %struct.Vd, %struct.Vd* %448, i64 %447
  %450 = getelementptr inbounds %struct.Vd, %struct.Vd* %449, i32 0, i32 2
  %451 = load %struct.V**, %struct.V*** %450, align 8
  %452 = getelementptr inbounds %struct.V*, %struct.V** %451, i64 %446
  %453 = load %struct.V*, %struct.V** %452, align 8
  %454 = getelementptr inbounds %struct.V, %struct.V* %453, i64 %445
  store %struct.V* %454, %struct.V** %v, align 8
  %455 = load i64, i64* %j2, align 8
  %456 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %457 = getelementptr inbounds %struct.graph, %struct.graph* %456, i32 0, i32 8
  %458 = load i64*, i64** %457, align 8
  %459 = getelementptr inbounds i64, i64* %458, i64 %455
  %460 = load i64, i64* %459, align 8
  %461 = load %struct.V*, %struct.V** %v, align 8
  %462 = getelementptr inbounds %struct.V, %struct.V* %461, i32 0, i32 0
  store i64 %460, i64* %462, align 8
  %463 = load i64, i64* %depth, align 8
  %464 = load %struct.V*, %struct.V** %v, align 8
  %465 = getelementptr inbounds %struct.V, %struct.V* %464, i32 0, i32 1
  store i64 %463, i64* %465, align 8
  %466 = load i64, i64* %vListX, align 8
  %467 = load i64, i64* %i, align 8
  %468 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %469 = getelementptr inbounds %struct.Vd, %struct.Vd* %468, i64 %467
  %470 = getelementptr inbounds %struct.Vd, %struct.Vd* %469, i32 0, i32 1
  %471 = load i64*, i64** %470, align 8
  %472 = getelementptr inbounds i64, i64* %471, i64 %466
  %473 = load i64, i64* %472, align 8
  %474 = add i64 %473, 1
  store i64 %474, i64* %472, align 8
  %475 = load i64, i64* %verticesVisited, align 8
  %476 = add nsw i64 %475, 1
  store i64 %476, i64* %verticesVisited, align 8
  br label %477

; <label>:477                                     ; preds = %430, %418
  br label %478

; <label>:478                                     ; preds = %477
  %479 = load i64, i64* %j2, align 8
  %480 = add nsw i64 %479, 1
  store i64 %480, i64* %j2, align 8
  br label %414

; <label>:481                                     ; preds = %414
  %482 = load i64, i64* %verticesVisited, align 8
  %483 = sitofp i64 %482 to float
  %484 = load i64, i64* %arraySize, align 8
  %485 = sitofp i64 %484 to float
  %486 = fdiv float %483, %485
  %487 = fpext float %486 to double
  %488 = fcmp ogt double %487, 5.000000e-01
  br i1 %488, label %489, label %554

; <label>:489                                     ; preds = %481
  %490 = load i64, i64* %i, align 8
  %491 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %492 = getelementptr inbounds %struct.Vd, %struct.Vd* %491, i64 %490
  %493 = getelementptr inbounds %struct.Vd, %struct.Vd* %492, i32 0, i32 0
  %494 = load i64, i64* %493, align 8
  %495 = load i64, i64* %verticesVisited, align 8
  %496 = load i64, i64* %arraySize, align 8
  %497 = sdiv i64 %495, %496
  %498 = add nsw i64 %497, 2
  %499 = icmp ne i64 %494, %498
  br i1 %499, label %500, label %553

; <label>:500                                     ; preds = %489
  %501 = load i64, i64* %i, align 8
  %502 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %503 = getelementptr inbounds %struct.Vd, %struct.Vd* %502, i64 %501
  %504 = getelementptr inbounds %struct.Vd, %struct.Vd* %503, i32 0, i32 0
  %505 = load i64, i64* %504, align 8
  %506 = add i64 %505, 1
  store i64 %506, i64* %504, align 8
  %507 = load i64, i64* %arraySize, align 8
  %508 = mul i64 %507, 16
  %509 = call noalias i8* @malloc(i64 %508) #4
  %510 = bitcast i8* %509 to %struct.V*
  %511 = load i64, i64* %i, align 8
  %512 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %513 = getelementptr inbounds %struct.Vd, %struct.Vd* %512, i64 %511
  %514 = getelementptr inbounds %struct.Vd, %struct.Vd* %513, i32 0, i32 0
  %515 = load i64, i64* %514, align 8
  %516 = sub i64 %515, 1
  %517 = load i64, i64* %i, align 8
  %518 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %519 = getelementptr inbounds %struct.Vd, %struct.Vd* %518, i64 %517
  %520 = getelementptr inbounds %struct.Vd, %struct.Vd* %519, i32 0, i32 2
  %521 = load %struct.V**, %struct.V*** %520, align 8
  %522 = getelementptr inbounds %struct.V*, %struct.V** %521, i64 %516
  store %struct.V* %510, %struct.V** %522, align 8
  %523 = load i64, i64* %i, align 8
  %524 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %525 = getelementptr inbounds %struct.Vd, %struct.Vd* %524, i64 %523
  %526 = getelementptr inbounds %struct.Vd, %struct.Vd* %525, i32 0, i32 0
  %527 = load i64, i64* %526, align 8
  %528 = sub i64 %527, 1
  %529 = load i64, i64* %i, align 8
  %530 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %531 = getelementptr inbounds %struct.Vd, %struct.Vd* %530, i64 %529
  %532 = getelementptr inbounds %struct.Vd, %struct.Vd* %531, i32 0, i32 2
  %533 = load %struct.V**, %struct.V*** %532, align 8
  %534 = getelementptr inbounds %struct.V*, %struct.V** %533, i64 %528
  %535 = load %struct.V*, %struct.V** %534, align 8
  %536 = icmp ne %struct.V* %535, null
  br i1 %536, label %537, label %538

; <label>:537                                     ; preds = %500
  br label %540

; <label>:538                                     ; preds = %500
  call void @__assert_fail(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 522, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %540

; <label>:540                                     ; preds = %539, %537
  %541 = load i64, i64* %i, align 8
  %542 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %543 = getelementptr inbounds %struct.Vd, %struct.Vd* %542, i64 %541
  %544 = getelementptr inbounds %struct.Vd, %struct.Vd* %543, i32 0, i32 0
  %545 = load i64, i64* %544, align 8
  %546 = sub i64 %545, 1
  %547 = load i64, i64* %i, align 8
  %548 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %549 = getelementptr inbounds %struct.Vd, %struct.Vd* %548, i64 %547
  %550 = getelementptr inbounds %struct.Vd, %struct.Vd* %549, i32 0, i32 1
  %551 = load i64*, i64** %550, align 8
  %552 = getelementptr inbounds i64, i64* %551, i64 %546
  store i64 0, i64* %552, align 8
  br label %553

; <label>:553                                     ; preds = %540, %489
  br label %554

; <label>:554                                     ; preds = %553, %481
  %555 = load i64, i64* %currIndex, align 8
  %556 = load i64, i64* %verticesVisited, align 8
  %557 = sub nsw i64 %556, 1
  %558 = icmp slt i64 %555, %557
  br i1 %558, label %559, label %586

; <label>:559                                     ; preds = %554
  %560 = load i64, i64* %verticesVisited, align 8
  %561 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %562 = getelementptr inbounds %struct.graph, %struct.graph* %561, i32 0, i32 0
  %563 = load i64, i64* %562, align 8
  %564 = icmp ult i64 %560, %563
  br i1 %564, label %565, label %586

; <label>:565                                     ; preds = %559
  %566 = load i64, i64* %currIndex, align 8
  %567 = add nsw i64 %566, 1
  store i64 %567, i64* %currIndex, align 8
  %568 = load i64, i64* %currIndex, align 8
  %569 = load i64, i64* %arraySize, align 8
  %570 = sdiv i64 %568, %569
  store i64 %570, i64* %vListX3, align 8
  %571 = load i64, i64* %currIndex, align 8
  %572 = load i64, i64* %arraySize, align 8
  %573 = srem i64 %571, %572
  store i64 %573, i64* %vListY4, align 8
  %574 = load i64, i64* %vListY4, align 8
  %575 = load i64, i64* %vListX3, align 8
  %576 = load i64, i64* %i, align 8
  %577 = load %struct.Vd*, %struct.Vd** %intWtVDList, align 8
  %578 = getelementptr inbounds %struct.Vd, %struct.Vd* %577, i64 %576
  %579 = getelementptr inbounds %struct.Vd, %struct.Vd* %578, i32 0, i32 2
  %580 = load %struct.V**, %struct.V*** %579, align 8
  %581 = getelementptr inbounds %struct.V*, %struct.V** %580, i64 %575
  %582 = load %struct.V*, %struct.V** %581, align 8
  %583 = getelementptr inbounds %struct.V, %struct.V* %582, i64 %574
  %584 = getelementptr inbounds %struct.V, %struct.V* %583, i32 0, i32 1
  %585 = load i64, i64* %584, align 8
  store i64 %585, i64* %depth, align 8
  br label %587

; <label>:586                                     ; preds = %559, %554
  br label %588

; <label>:587                                     ; preds = %565
  br label %363

; <label>:588                                     ; preds = %586, %373
  br label %895

; <label>:589                                     ; preds = %282
  %590 = load i64, i64* %i, align 8
  %591 = load i64, i64* %maxIntWtListSize, align 8
  %592 = sub nsw i64 %590, %591
  store i64 %592, i64* %t5, align 8
  %593 = load i64, i64* %t5, align 8
  %594 = load %struct.edge*, %struct.edge** %soughtStrWtList, align 8
  %595 = getelementptr inbounds %struct.edge, %struct.edge* %594, i64 %593
  %596 = getelementptr inbounds %struct.edge, %struct.edge* %595, i32 0, i32 0
  %597 = load i64, i64* %596, align 8
  %598 = load i64, i64* %t5, align 8
  %599 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %600 = getelementptr inbounds %struct.Vd, %struct.Vd* %599, i64 %598
  %601 = getelementptr inbounds %struct.Vd, %struct.Vd* %600, i32 0, i32 2
  %602 = load %struct.V**, %struct.V*** %601, align 8
  %603 = getelementptr inbounds %struct.V*, %struct.V** %602, i64 0
  %604 = load %struct.V*, %struct.V** %603, align 8
  %605 = getelementptr inbounds %struct.V, %struct.V* %604, i64 0
  %606 = getelementptr inbounds %struct.V, %struct.V* %605, i32 0, i32 0
  store i64 %597, i64* %606, align 8
  %607 = load i64, i64* %t5, align 8
  %608 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %609 = getelementptr inbounds %struct.Vd, %struct.Vd* %608, i64 %607
  %610 = getelementptr inbounds %struct.Vd, %struct.Vd* %609, i32 0, i32 2
  %611 = load %struct.V**, %struct.V*** %610, align 8
  %612 = getelementptr inbounds %struct.V*, %struct.V** %611, i64 0
  %613 = load %struct.V*, %struct.V** %612, align 8
  %614 = getelementptr inbounds %struct.V, %struct.V* %613, i64 0
  %615 = getelementptr inbounds %struct.V, %struct.V* %614, i32 0, i32 1
  store i64 -1, i64* %615, align 8
  %616 = load i64, i64* %t5, align 8
  %617 = load %struct.edge*, %struct.edge** %soughtStrWtList, align 8
  %618 = getelementptr inbounds %struct.edge, %struct.edge* %617, i64 %616
  %619 = getelementptr inbounds %struct.edge, %struct.edge* %618, i32 0, i32 1
  %620 = load i64, i64* %619, align 8
  %621 = load i64, i64* %t5, align 8
  %622 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %623 = getelementptr inbounds %struct.Vd, %struct.Vd* %622, i64 %621
  %624 = getelementptr inbounds %struct.Vd, %struct.Vd* %623, i32 0, i32 2
  %625 = load %struct.V**, %struct.V*** %624, align 8
  %626 = getelementptr inbounds %struct.V*, %struct.V** %625, i64 0
  %627 = load %struct.V*, %struct.V** %626, align 8
  %628 = getelementptr inbounds %struct.V, %struct.V* %627, i64 1
  %629 = getelementptr inbounds %struct.V, %struct.V* %628, i32 0, i32 0
  store i64 %620, i64* %629, align 8
  %630 = load i64, i64* %t5, align 8
  %631 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %632 = getelementptr inbounds %struct.Vd, %struct.Vd* %631, i64 %630
  %633 = getelementptr inbounds %struct.Vd, %struct.Vd* %632, i32 0, i32 2
  %634 = load %struct.V**, %struct.V*** %633, align 8
  %635 = getelementptr inbounds %struct.V*, %struct.V** %634, i64 0
  %636 = load %struct.V*, %struct.V** %635, align 8
  %637 = getelementptr inbounds %struct.V, %struct.V* %636, i64 1
  %638 = getelementptr inbounds %struct.V, %struct.V* %637, i32 0, i32 1
  store i64 1, i64* %638, align 8
  %639 = load i64, i64* %t5, align 8
  %640 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %641 = getelementptr inbounds %struct.Vd, %struct.Vd* %640, i64 %639
  %642 = getelementptr inbounds %struct.Vd, %struct.Vd* %641, i32 0, i32 1
  %643 = load i64*, i64** %642, align 8
  %644 = getelementptr inbounds i64, i64* %643, i64 0
  store i64 2, i64* %644, align 8
  %645 = load i64, i64* %t5, align 8
  %646 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %647 = getelementptr inbounds %struct.Vd, %struct.Vd* %646, i64 %645
  %648 = getelementptr inbounds %struct.Vd, %struct.Vd* %647, i32 0, i32 2
  %649 = load %struct.V**, %struct.V*** %648, align 8
  %650 = getelementptr inbounds %struct.V*, %struct.V** %649, i64 0
  %651 = load %struct.V*, %struct.V** %650, align 8
  %652 = getelementptr inbounds %struct.V, %struct.V* %651, i64 0
  %653 = getelementptr inbounds %struct.V, %struct.V* %652, i32 0, i32 0
  %654 = load i64, i64* %653, align 8
  %655 = load i8*, i8** %visited, align 8
  %656 = getelementptr inbounds i8, i8* %655, i64 %654
  store i8 118, i8* %656, align 1
  %657 = load i64, i64* %t5, align 8
  %658 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %659 = getelementptr inbounds %struct.Vd, %struct.Vd* %658, i64 %657
  %660 = getelementptr inbounds %struct.Vd, %struct.Vd* %659, i32 0, i32 2
  %661 = load %struct.V**, %struct.V*** %660, align 8
  %662 = getelementptr inbounds %struct.V*, %struct.V** %661, i64 0
  %663 = load %struct.V*, %struct.V** %662, align 8
  %664 = getelementptr inbounds %struct.V, %struct.V* %663, i64 1
  %665 = getelementptr inbounds %struct.V, %struct.V* %664, i32 0, i32 0
  %666 = load i64, i64* %665, align 8
  %667 = load i8*, i8** %visited, align 8
  %668 = getelementptr inbounds i8, i8* %667, i64 %666
  store i8 118, i8* %668, align 1
  store i64 1, i64* %depth6, align 8
  store i64 2, i64* %verticesVisited7, align 8
  store i64 1, i64* %currIndex8, align 8
  br label %669

; <label>:669                                     ; preds = %893, %589
  %670 = load i64, i64* %depth6, align 8
  %671 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %672 = icmp slt i64 %670, %671
  br i1 %672, label %679, label %673

; <label>:673                                     ; preds = %669
  %674 = load i64, i64* %verticesVisited7, align 8
  %675 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %676 = getelementptr inbounds %struct.graph, %struct.graph* %675, i32 0, i32 0
  %677 = load i64, i64* %676, align 8
  %678 = icmp eq i64 %674, %677
  br label %679

; <label>:679                                     ; preds = %673, %669
  %680 = phi i1 [ true, %669 ], [ %678, %673 ]
  br i1 %680, label %681, label %894

; <label>:681                                     ; preds = %679
  %682 = load i64, i64* %currIndex8, align 8
  %683 = load i64, i64* %arraySize, align 8
  %684 = sdiv i64 %682, %683
  store i64 %684, i64* %currVListX9, align 8
  %685 = load i64, i64* %currIndex8, align 8
  %686 = load i64, i64* %arraySize, align 8
  %687 = srem i64 %685, %686
  store i64 %687, i64* %currVListY10, align 8
  %688 = load i64, i64* %currVListY10, align 8
  %689 = load i64, i64* %currVListX9, align 8
  %690 = load i64, i64* %t5, align 8
  %691 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %692 = getelementptr inbounds %struct.Vd, %struct.Vd* %691, i64 %690
  %693 = getelementptr inbounds %struct.Vd, %struct.Vd* %692, i32 0, i32 2
  %694 = load %struct.V**, %struct.V*** %693, align 8
  %695 = getelementptr inbounds %struct.V*, %struct.V** %694, i64 %689
  %696 = load %struct.V*, %struct.V** %695, align 8
  %697 = getelementptr inbounds %struct.V, %struct.V* %696, i64 %688
  store %struct.V* %697, %struct.V** %currV11, align 8
  %698 = load %struct.V*, %struct.V** %currV11, align 8
  %699 = getelementptr inbounds %struct.V, %struct.V* %698, i32 0, i32 0
  %700 = load i64, i64* %699, align 8
  store i64 %700, i64* %vNum12, align 8
  %701 = load %struct.V*, %struct.V** %currV11, align 8
  %702 = getelementptr inbounds %struct.V, %struct.V* %701, i32 0, i32 1
  %703 = load i64, i64* %702, align 8
  %704 = add nsw i64 %703, 1
  store i64 %704, i64* %depth6, align 8
  %705 = load i64, i64* %vNum12, align 8
  %706 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %707 = getelementptr inbounds %struct.graph, %struct.graph* %706, i32 0, i32 7
  %708 = load i64*, i64** %707, align 8
  %709 = getelementptr inbounds i64, i64* %708, i64 %705
  %710 = load i64, i64* %709, align 8
  store i64 %710, i64* %j_start14, align 8
  %711 = load i64, i64* %j_start14, align 8
  %712 = load i64, i64* %vNum12, align 8
  %713 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %714 = getelementptr inbounds %struct.graph, %struct.graph* %713, i32 0, i32 6
  %715 = load i64*, i64** %714, align 8
  %716 = getelementptr inbounds i64, i64* %715, i64 %712
  %717 = load i64, i64* %716, align 8
  %718 = add nsw i64 %711, %717
  store i64 %718, i64* %j_stop15, align 8
  %719 = load i64, i64* %j_start14, align 8
  store i64 %719, i64* %j13, align 8
  br label %720

; <label>:720                                     ; preds = %784, %681
  %721 = load i64, i64* %j13, align 8
  %722 = load i64, i64* %j_stop15, align 8
  %723 = icmp slt i64 %721, %722
  br i1 %723, label %724, label %787

; <label>:724                                     ; preds = %720
  %725 = load i64, i64* %j13, align 8
  %726 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %727 = getelementptr inbounds %struct.graph, %struct.graph* %726, i32 0, i32 8
  %728 = load i64*, i64** %727, align 8
  %729 = getelementptr inbounds i64, i64* %728, i64 %725
  %730 = load i64, i64* %729, align 8
  %731 = load i8*, i8** %visited, align 8
  %732 = getelementptr inbounds i8, i8* %731, i64 %730
  %733 = load i8, i8* %732, align 1
  %734 = sext i8 %733 to i32
  %735 = icmp eq i32 %734, 117
  br i1 %735, label %736, label %783

; <label>:736                                     ; preds = %724
  %737 = load i64, i64* %j13, align 8
  %738 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %739 = getelementptr inbounds %struct.graph, %struct.graph* %738, i32 0, i32 8
  %740 = load i64*, i64** %739, align 8
  %741 = getelementptr inbounds i64, i64* %740, i64 %737
  %742 = load i64, i64* %741, align 8
  %743 = load i8*, i8** %visited, align 8
  %744 = getelementptr inbounds i8, i8* %743, i64 %742
  store i8 118, i8* %744, align 1
  %745 = load i64, i64* %verticesVisited7, align 8
  %746 = load i64, i64* %arraySize, align 8
  %747 = sdiv i64 %745, %746
  store i64 %747, i64* %vListX16, align 8
  %748 = load i64, i64* %verticesVisited7, align 8
  %749 = load i64, i64* %arraySize, align 8
  %750 = srem i64 %748, %749
  store i64 %750, i64* %vListY17, align 8
  %751 = load i64, i64* %vListY17, align 8
  %752 = load i64, i64* %vListX16, align 8
  %753 = load i64, i64* %t5, align 8
  %754 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %755 = getelementptr inbounds %struct.Vd, %struct.Vd* %754, i64 %753
  %756 = getelementptr inbounds %struct.Vd, %struct.Vd* %755, i32 0, i32 2
  %757 = load %struct.V**, %struct.V*** %756, align 8
  %758 = getelementptr inbounds %struct.V*, %struct.V** %757, i64 %752
  %759 = load %struct.V*, %struct.V** %758, align 8
  %760 = getelementptr inbounds %struct.V, %struct.V* %759, i64 %751
  store %struct.V* %760, %struct.V** %v18, align 8
  %761 = load i64, i64* %j13, align 8
  %762 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %763 = getelementptr inbounds %struct.graph, %struct.graph* %762, i32 0, i32 8
  %764 = load i64*, i64** %763, align 8
  %765 = getelementptr inbounds i64, i64* %764, i64 %761
  %766 = load i64, i64* %765, align 8
  %767 = load %struct.V*, %struct.V** %v18, align 8
  %768 = getelementptr inbounds %struct.V, %struct.V* %767, i32 0, i32 0
  store i64 %766, i64* %768, align 8
  %769 = load i64, i64* %depth6, align 8
  %770 = load %struct.V*, %struct.V** %v18, align 8
  %771 = getelementptr inbounds %struct.V, %struct.V* %770, i32 0, i32 1
  store i64 %769, i64* %771, align 8
  %772 = load i64, i64* %vListX16, align 8
  %773 = load i64, i64* %t5, align 8
  %774 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %775 = getelementptr inbounds %struct.Vd, %struct.Vd* %774, i64 %773
  %776 = getelementptr inbounds %struct.Vd, %struct.Vd* %775, i32 0, i32 1
  %777 = load i64*, i64** %776, align 8
  %778 = getelementptr inbounds i64, i64* %777, i64 %772
  %779 = load i64, i64* %778, align 8
  %780 = add i64 %779, 1
  store i64 %780, i64* %778, align 8
  %781 = load i64, i64* %verticesVisited7, align 8
  %782 = add nsw i64 %781, 1
  store i64 %782, i64* %verticesVisited7, align 8
  br label %783

; <label>:783                                     ; preds = %736, %724
  br label %784

; <label>:784                                     ; preds = %783
  %785 = load i64, i64* %j13, align 8
  %786 = add nsw i64 %785, 1
  store i64 %786, i64* %j13, align 8
  br label %720

; <label>:787                                     ; preds = %720
  %788 = load i64, i64* %verticesVisited7, align 8
  %789 = sitofp i64 %788 to float
  %790 = load i64, i64* %arraySize, align 8
  %791 = sitofp i64 %790 to float
  %792 = fdiv float %789, %791
  %793 = fpext float %792 to double
  %794 = fcmp ogt double %793, 5.000000e-01
  br i1 %794, label %795, label %860

; <label>:795                                     ; preds = %787
  %796 = load i64, i64* %t5, align 8
  %797 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %798 = getelementptr inbounds %struct.Vd, %struct.Vd* %797, i64 %796
  %799 = getelementptr inbounds %struct.Vd, %struct.Vd* %798, i32 0, i32 0
  %800 = load i64, i64* %799, align 8
  %801 = load i64, i64* %verticesVisited7, align 8
  %802 = load i64, i64* %arraySize, align 8
  %803 = sdiv i64 %801, %802
  %804 = add nsw i64 %803, 2
  %805 = icmp ne i64 %800, %804
  br i1 %805, label %806, label %859

; <label>:806                                     ; preds = %795
  %807 = load i64, i64* %t5, align 8
  %808 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %809 = getelementptr inbounds %struct.Vd, %struct.Vd* %808, i64 %807
  %810 = getelementptr inbounds %struct.Vd, %struct.Vd* %809, i32 0, i32 0
  %811 = load i64, i64* %810, align 8
  %812 = add i64 %811, 1
  store i64 %812, i64* %810, align 8
  %813 = load i64, i64* %arraySize, align 8
  %814 = mul i64 %813, 16
  %815 = call noalias i8* @malloc(i64 %814) #4
  %816 = bitcast i8* %815 to %struct.V*
  %817 = load i64, i64* %t5, align 8
  %818 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %819 = getelementptr inbounds %struct.Vd, %struct.Vd* %818, i64 %817
  %820 = getelementptr inbounds %struct.Vd, %struct.Vd* %819, i32 0, i32 0
  %821 = load i64, i64* %820, align 8
  %822 = sub i64 %821, 1
  %823 = load i64, i64* %t5, align 8
  %824 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %825 = getelementptr inbounds %struct.Vd, %struct.Vd* %824, i64 %823
  %826 = getelementptr inbounds %struct.Vd, %struct.Vd* %825, i32 0, i32 2
  %827 = load %struct.V**, %struct.V*** %826, align 8
  %828 = getelementptr inbounds %struct.V*, %struct.V** %827, i64 %822
  store %struct.V* %816, %struct.V** %828, align 8
  %829 = load i64, i64* %t5, align 8
  %830 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %831 = getelementptr inbounds %struct.Vd, %struct.Vd* %830, i64 %829
  %832 = getelementptr inbounds %struct.Vd, %struct.Vd* %831, i32 0, i32 0
  %833 = load i64, i64* %832, align 8
  %834 = sub i64 %833, 1
  %835 = load i64, i64* %t5, align 8
  %836 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %837 = getelementptr inbounds %struct.Vd, %struct.Vd* %836, i64 %835
  %838 = getelementptr inbounds %struct.Vd, %struct.Vd* %837, i32 0, i32 2
  %839 = load %struct.V**, %struct.V*** %838, align 8
  %840 = getelementptr inbounds %struct.V*, %struct.V** %839, i64 %834
  %841 = load %struct.V*, %struct.V** %840, align 8
  %842 = icmp ne %struct.V* %841, null
  br i1 %842, label %843, label %844

; <label>:843                                     ; preds = %806
  br label %846

; <label>:844                                     ; preds = %806
  call void @__assert_fail(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 591, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %846

; <label>:846                                     ; preds = %845, %843
  %847 = load i64, i64* %t5, align 8
  %848 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %849 = getelementptr inbounds %struct.Vd, %struct.Vd* %848, i64 %847
  %850 = getelementptr inbounds %struct.Vd, %struct.Vd* %849, i32 0, i32 0
  %851 = load i64, i64* %850, align 8
  %852 = sub i64 %851, 1
  %853 = load i64, i64* %t5, align 8
  %854 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %855 = getelementptr inbounds %struct.Vd, %struct.Vd* %854, i64 %853
  %856 = getelementptr inbounds %struct.Vd, %struct.Vd* %855, i32 0, i32 1
  %857 = load i64*, i64** %856, align 8
  %858 = getelementptr inbounds i64, i64* %857, i64 %852
  store i64 0, i64* %858, align 8
  br label %859

; <label>:859                                     ; preds = %846, %795
  br label %860

; <label>:860                                     ; preds = %859, %787
  %861 = load i64, i64* %currIndex8, align 8
  %862 = load i64, i64* %verticesVisited7, align 8
  %863 = sub nsw i64 %862, 1
  %864 = icmp slt i64 %861, %863
  br i1 %864, label %865, label %892

; <label>:865                                     ; preds = %860
  %866 = load i64, i64* %verticesVisited7, align 8
  %867 = load %struct.graph*, %struct.graph** %GPtr, align 8
  %868 = getelementptr inbounds %struct.graph, %struct.graph* %867, i32 0, i32 0
  %869 = load i64, i64* %868, align 8
  %870 = icmp ult i64 %866, %869
  br i1 %870, label %871, label %892

; <label>:871                                     ; preds = %865
  %872 = load i64, i64* %currIndex8, align 8
  %873 = add nsw i64 %872, 1
  store i64 %873, i64* %currIndex8, align 8
  %874 = load i64, i64* %currIndex8, align 8
  %875 = load i64, i64* %arraySize, align 8
  %876 = sdiv i64 %874, %875
  store i64 %876, i64* %currVListX19, align 8
  %877 = load i64, i64* %currIndex8, align 8
  %878 = load i64, i64* %arraySize, align 8
  %879 = srem i64 %877, %878
  store i64 %879, i64* %currVListY20, align 8
  %880 = load i64, i64* %currVListY20, align 8
  %881 = load i64, i64* %currVListX19, align 8
  %882 = load i64, i64* %t5, align 8
  %883 = load %struct.Vd*, %struct.Vd** %strWtVDList, align 8
  %884 = getelementptr inbounds %struct.Vd, %struct.Vd* %883, i64 %882
  %885 = getelementptr inbounds %struct.Vd, %struct.Vd* %884, i32 0, i32 2
  %886 = load %struct.V**, %struct.V*** %885, align 8
  %887 = getelementptr inbounds %struct.V*, %struct.V** %886, i64 %881
  %888 = load %struct.V*, %struct.V** %887, align 8
  %889 = getelementptr inbounds %struct.V, %struct.V* %888, i64 %880
  %890 = getelementptr inbounds %struct.V, %struct.V* %889, i32 0, i32 1
  %891 = load i64, i64* %890, align 8
  store i64 %891, i64* %depth6, align 8
  br label %893

; <label>:892                                     ; preds = %865, %860
  br label %894

; <label>:893                                     ; preds = %871
  br label %669

; <label>:894                                     ; preds = %892, %679
  br label %895

; <label>:895                                     ; preds = %894, %588
  br label %896

; <label>:896                                     ; preds = %895
  %897 = load i64, i64* %i, align 8
  %898 = add nsw i64 %897, 1
  store i64 %898, i64* %i, align 8
  br label %264

; <label>:899                                     ; preds = %264
  %900 = load i8*, i8** %visited, align 8
  call void @free(i8* %900) #4
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
