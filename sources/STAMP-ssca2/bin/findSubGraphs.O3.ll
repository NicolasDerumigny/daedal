; ModuleID = '../bin/findSubGraphs.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph = type { i64, i64, i64, i64, i64, i64, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i8* }
%struct.V = type { i64, i64 }
%struct.edge = type { i64, i64, i64 }
%struct.l = type { i64, i16, %struct.l* }
%struct.Vd = type { i64, i64*, %struct.V** }

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
define void @findSubGraphs0(i8* nocapture readonly %argPtr) #0 {
  %i_start = alloca i64, align 8
  %i_stop = alloca i64, align 8
  %1 = bitcast i8* %argPtr to %struct.graph**
  %2 = load %struct.graph*, %struct.graph** %1, align 8
  %3 = getelementptr inbounds i8, i8* %argPtr, i64 8
  %4 = bitcast i8* %3 to %struct.V**
  %5 = load %struct.V*, %struct.V** %4, align 8
  %6 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %7 = bitcast i8* %6 to %struct.V**
  %8 = load %struct.V*, %struct.V** %7, align 8
  %9 = getelementptr inbounds i8, i8* %argPtr, i64 24
  %10 = bitcast i8* %9 to %struct.edge**
  %11 = load %struct.edge*, %struct.edge** %10, align 8
  %12 = getelementptr inbounds i8, i8* %argPtr, i64 32
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i8, i8* %argPtr, i64 40
  %16 = bitcast i8* %15 to %struct.edge**
  %17 = load %struct.edge*, %struct.edge** %16, align 8
  %18 = getelementptr inbounds i8, i8* %argPtr, i64 48
  %19 = bitcast i8* %18 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = tail call i64 (...) @thread_getId() #5
  %22 = tail call i64 (...) @thread_getNumThread() #5
  %23 = add nsw i64 %20, %14
  call void @createPartition(i64 0, i64 %23, i64 %21, i64 %22, i64* nonnull %i_start, i64* nonnull %i_stop) #5
  %24 = load i64, i64* %i_start, align 8
  %25 = load i64, i64* %i_stop, align 8
  %26 = icmp slt i64 %24, %25
  %27 = getelementptr inbounds %struct.graph, %struct.graph* %2, i64 0, i32 0
  br i1 %26, label %.lr.ph30.preheader, label %._crit_edge31

.lr.ph30.preheader:                               ; preds = %0
  br label %.lr.ph30

.lr.ph30:                                         ; preds = %.lr.ph30.preheader, %.loopexit4
  %i.026 = phi i64 [ %57, %.loopexit4 ], [ %24, %.lr.ph30.preheader ]
  %28 = icmp slt i64 %i.026, %14
  br i1 %28, label %.preheader3, label %42

.preheader3:                                      ; preds = %.lr.ph30
  %29 = load i64, i64* %27, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %.loopexit4, label %.lr.ph25.preheader

.lr.ph25.preheader:                               ; preds = %.preheader3
  br label %.lr.ph25

.lr.ph25:                                         ; preds = %.lr.ph25.preheader, %.lr.ph25
  %31 = phi i64 [ %40, %.lr.ph25 ], [ %29, %.lr.ph25.preheader ]
  %j.024 = phi i64 [ %39, %.lr.ph25 ], [ 0, %.lr.ph25.preheader ]
  %32 = mul i64 %31, %i.026
  %33 = add i64 %32, %j.024
  %34 = getelementptr inbounds %struct.V, %struct.V* %5, i64 %33, i32 0
  store i64 0, i64* %34, align 8
  %35 = load i64, i64* %27, align 8
  %36 = mul i64 %35, %i.026
  %37 = add i64 %36, %j.024
  %38 = getelementptr inbounds %struct.V, %struct.V* %5, i64 %37, i32 1
  store i64 0, i64* %38, align 8
  %39 = add nuw nsw i64 %j.024, 1
  %40 = load i64, i64* %27, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %.lr.ph25, label %.loopexit4.loopexit

; <label>:42                                      ; preds = %.lr.ph30
  %43 = sub nsw i64 %i.026, %14
  %44 = load i64, i64* %27, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %.loopexit4, label %.lr.ph23.preheader

.lr.ph23.preheader:                               ; preds = %42
  br label %.lr.ph23

.lr.ph23:                                         ; preds = %.lr.ph23.preheader, %.lr.ph23
  %46 = phi i64 [ %55, %.lr.ph23 ], [ %44, %.lr.ph23.preheader ]
  %j1.021 = phi i64 [ %54, %.lr.ph23 ], [ 0, %.lr.ph23.preheader ]
  %47 = mul i64 %46, %43
  %48 = add i64 %47, %j1.021
  %49 = getelementptr inbounds %struct.V, %struct.V* %8, i64 %48, i32 0
  store i64 0, i64* %49, align 8
  %50 = load i64, i64* %27, align 8
  %51 = mul i64 %50, %43
  %52 = add i64 %51, %j1.021
  %53 = getelementptr inbounds %struct.V, %struct.V* %8, i64 %52, i32 1
  store i64 0, i64* %53, align 8
  %54 = add nuw nsw i64 %j1.021, 1
  %55 = load i64, i64* %27, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %.lr.ph23, label %.loopexit4.loopexit48

.loopexit4.loopexit:                              ; preds = %.lr.ph25
  br label %.loopexit4

.loopexit4.loopexit48:                            ; preds = %.lr.ph23
  br label %.loopexit4

.loopexit4:                                       ; preds = %.loopexit4.loopexit48, %.loopexit4.loopexit, %.preheader3, %42
  %57 = add nsw i64 %i.026, 1
  %58 = load i64, i64* %i_stop, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %.lr.ph30, label %._crit_edge31.loopexit

._crit_edge31.loopexit:                           ; preds = %.loopexit4
  br label %._crit_edge31

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %0
  call void (...) @thread_barrier_wait() #5
  %60 = load i64, i64* %27, align 8
  %61 = shl i64 %60, 3
  %62 = call noalias i8* @malloc(i64 %61) #5
  %63 = bitcast i8* %62 to i64*
  %64 = icmp eq i8* %62, null
  br i1 %64, label %65, label %66

; <label>:65                                      ; preds = %._crit_edge31
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 128, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs0, i64 0, i64 0)) #6
  unreachable

; <label>:66                                      ; preds = %._crit_edge31
  %67 = load i64, i64* %i_start, align 8
  %68 = load i64, i64* %i_stop, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %.preheader.lr.ph, label %._crit_edge20

.preheader.lr.ph:                                 ; preds = %66
  %70 = getelementptr inbounds %struct.graph, %struct.graph* %2, i64 0, i32 7
  %71 = getelementptr inbounds %struct.graph, %struct.graph* %2, i64 0, i32 6
  %72 = getelementptr inbounds %struct.graph, %struct.graph* %2, i64 0, i32 8
  br label %.preheader

.preheader:                                       ; preds = %.loopexit..preheader_crit_edge, %.preheader.lr.ph
  %73 = phi i64 [ %60, %.preheader.lr.ph ], [ %.pre, %.loopexit..preheader_crit_edge ]
  %i.117 = phi i64 [ %67, %.preheader.lr.ph ], [ %235, %.loopexit..preheader_crit_edge ]
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %75 = icmp ugt i64 %73, 1
  %umax = select i1 %75, i64 %73, i64 1
  %76 = shl i64 %umax, 3
  call void @llvm.memset.p0i8.i64(i8* nonnull %62, i8 0, i64 %76, i32 8, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.lcssa = phi i64 [ 0, %.preheader ], [ %73, %.lr.ph ]
  %77 = icmp slt i64 %i.117, %14
  br i1 %77, label %78, label %157

; <label>:78                                      ; preds = %._crit_edge
  %79 = getelementptr inbounds %struct.edge, %struct.edge* %11, i64 %i.117, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = mul i64 %.lcssa, %i.117
  %82 = getelementptr inbounds %struct.V, %struct.V* %5, i64 %81, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* %27, align 8
  %84 = mul i64 %83, %i.117
  %85 = getelementptr inbounds %struct.V, %struct.V* %5, i64 %84, i32 1
  store i64 -1, i64* %85, align 8
  %86 = getelementptr inbounds %struct.edge, %struct.edge* %11, i64 %i.117, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %27, align 8
  %89 = mul i64 %88, %i.117
  %90 = add i64 %89, 1
  %91 = getelementptr inbounds %struct.V, %struct.V* %5, i64 %90, i32 0
  store i64 %87, i64* %91, align 8
  %92 = load i64, i64* %27, align 8
  %93 = mul i64 %92, %i.117
  %94 = add i64 %93, 1
  %95 = getelementptr inbounds %struct.V, %struct.V* %5, i64 %94, i32 1
  store i64 1, i64* %95, align 8
  %96 = load i64, i64* %27, align 8
  %97 = mul i64 %96, %i.117
  %98 = getelementptr inbounds %struct.V, %struct.V* %5, i64 %97, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i64, i64* %63, i64 %99
  store i64 1, i64* %100, align 8
  %101 = add i64 %97, 1
  %102 = getelementptr inbounds %struct.V, %struct.V* %5, i64 %101, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i64, i64* %63, i64 %103
  store i64 1, i64* %104, align 8
  %105 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %106 = icmp sgt i64 %105, 1
  %107 = icmp eq i64 %96, 2
  %or.cond43 = or i1 %106, %107
  br i1 %or.cond43, label %.critedge.preheader, label %.loopexit

.critedge.preheader:                              ; preds = %78
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %148
  %verticesVisited.045 = phi i64 [ %verticesVisited.1.lcssa, %148 ], [ 2, %.critedge.preheader ]
  %currIndex.044 = phi i64 [ %149, %148 ], [ 1, %.critedge.preheader ]
  %108 = phi i64 [ %146, %148 ], [ %96, %.critedge.preheader ]
  %109 = mul i64 %108, %i.117
  %110 = add i64 %109, %currIndex.044
  %111 = getelementptr inbounds %struct.V, %struct.V* %5, i64 %110, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, 1
  %114 = getelementptr inbounds %struct.V, %struct.V* %5, i64 %110, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64*, i64** %70, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 %115
  %118 = load i64, i64* %117, align 8
  %119 = load i64*, i64** %71, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 %115
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, %118
  %123 = icmp sgt i64 %121, 0
  br i1 %123, label %.lr.ph14.preheader, label %._crit_edge15

.lr.ph14.preheader:                               ; preds = %.critedge
  br label %.lr.ph14

.lr.ph14:                                         ; preds = %.lr.ph14.preheader, %140
  %verticesVisited.113 = phi i64 [ %verticesVisited.2, %140 ], [ %verticesVisited.045, %.lr.ph14.preheader ]
  %j2.012 = phi i64 [ %141, %140 ], [ %118, %.lr.ph14.preheader ]
  %124 = load i64*, i64** %72, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 %j2.012
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds i64, i64* %63, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %140

; <label>:130                                     ; preds = %.lr.ph14
  store i64 1, i64* %127, align 8
  %131 = load i64, i64* %27, align 8
  %132 = mul i64 %131, %i.117
  %133 = add i64 %132, %verticesVisited.113
  %134 = getelementptr inbounds %struct.V, %struct.V* %5, i64 %133, i32 0
  store i64 %126, i64* %134, align 8
  %135 = load i64, i64* %27, align 8
  %136 = mul i64 %135, %i.117
  %137 = add i64 %136, %verticesVisited.113
  %138 = getelementptr inbounds %struct.V, %struct.V* %5, i64 %137, i32 1
  store i64 %113, i64* %138, align 8
  %139 = add nsw i64 %verticesVisited.113, 1
  br label %140

; <label>:140                                     ; preds = %.lr.ph14, %130
  %verticesVisited.2 = phi i64 [ %139, %130 ], [ %verticesVisited.113, %.lr.ph14 ]
  %141 = add nsw i64 %j2.012, 1
  %142 = icmp slt i64 %141, %122
  br i1 %142, label %.lr.ph14, label %._crit_edge15.loopexit

._crit_edge15.loopexit:                           ; preds = %140
  %verticesVisited.2.lcssa = phi i64 [ %verticesVisited.2, %140 ]
  br label %._crit_edge15

._crit_edge15:                                    ; preds = %._crit_edge15.loopexit, %.critedge
  %verticesVisited.1.lcssa = phi i64 [ %verticesVisited.045, %.critedge ], [ %verticesVisited.2.lcssa, %._crit_edge15.loopexit ]
  %143 = add nsw i64 %verticesVisited.1.lcssa, -1
  %144 = icmp slt i64 %currIndex.044, %143
  br i1 %144, label %145, label %.loopexit.loopexit

; <label>:145                                     ; preds = %._crit_edge15
  %146 = load i64, i64* %27, align 8
  %147 = icmp ult i64 %verticesVisited.1.lcssa, %146
  br i1 %147, label %148, label %.loopexit.loopexit

; <label>:148                                     ; preds = %145
  %149 = add nuw nsw i64 %currIndex.044, 1
  %150 = mul i64 %146, %i.117
  %151 = add i64 %150, %149
  %152 = getelementptr inbounds %struct.V, %struct.V* %5, i64 %151, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %155 = icmp slt i64 %153, %154
  %156 = icmp eq i64 %verticesVisited.1.lcssa, %146
  %or.cond = or i1 %155, %156
  br i1 %or.cond, label %.critedge, label %.loopexit.loopexit

; <label>:157                                     ; preds = %._crit_edge
  %158 = sub nsw i64 %i.117, %14
  %159 = getelementptr inbounds %struct.edge, %struct.edge* %17, i64 %158, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = mul i64 %.lcssa, %158
  %162 = getelementptr inbounds %struct.V, %struct.V* %8, i64 %161, i32 0
  store i64 %160, i64* %162, align 8
  %163 = load i64, i64* %27, align 8
  %164 = mul i64 %163, %158
  %165 = getelementptr inbounds %struct.V, %struct.V* %8, i64 %164, i32 1
  store i64 -1, i64* %165, align 8
  %166 = getelementptr inbounds %struct.edge, %struct.edge* %17, i64 %158, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %27, align 8
  %169 = mul i64 %168, %158
  %170 = add i64 %169, 1
  %171 = getelementptr inbounds %struct.V, %struct.V* %8, i64 %170, i32 0
  store i64 %167, i64* %171, align 8
  %172 = load i64, i64* %27, align 8
  %173 = mul i64 %172, %158
  %174 = add i64 %173, 1
  %175 = getelementptr inbounds %struct.V, %struct.V* %8, i64 %174, i32 1
  store i64 1, i64* %175, align 8
  %176 = load i64, i64* %27, align 8
  %177 = mul i64 %176, %158
  %178 = getelementptr inbounds %struct.V, %struct.V* %8, i64 %177, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds i64, i64* %63, i64 %179
  store i64 1, i64* %180, align 8
  %181 = add i64 %177, 1
  %182 = getelementptr inbounds %struct.V, %struct.V* %8, i64 %181, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds i64, i64* %63, i64 %183
  store i64 1, i64* %184, align 8
  %185 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %186 = icmp sgt i64 %185, 1
  %187 = icmp eq i64 %176, 2
  %or.cond3640 = or i1 %186, %187
  br i1 %or.cond3640, label %.critedge1.preheader, label %.loopexit

.critedge1.preheader:                             ; preds = %157
  br label %.critedge1

.critedge1:                                       ; preds = %.critedge1.preheader, %225
  %currIndex6.042 = phi i64 [ %226, %225 ], [ 1, %.critedge1.preheader ]
  %verticesVisited5.041 = phi i64 [ %verticesVisited5.1.lcssa, %225 ], [ 2, %.critedge1.preheader ]
  %188 = phi i64 [ %227, %225 ], [ %176, %.critedge1.preheader ]
  %189 = mul i64 %188, %158
  %190 = add i64 %189, %currIndex6.042
  %191 = getelementptr inbounds %struct.V, %struct.V* %8, i64 %190, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %192, 1
  %194 = getelementptr inbounds %struct.V, %struct.V* %8, i64 %190, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64*, i64** %70, align 8
  %197 = getelementptr inbounds i64, i64* %196, i64 %195
  %198 = load i64, i64* %197, align 8
  %199 = load i64*, i64** %71, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 %195
  %201 = load i64, i64* %200, align 8
  %202 = add nsw i64 %201, %198
  %203 = icmp sgt i64 %201, 0
  br i1 %203, label %.lr.ph9.preheader, label %._crit_edge10

.lr.ph9.preheader:                                ; preds = %.critedge1
  br label %.lr.ph9

.lr.ph9:                                          ; preds = %.lr.ph9.preheader, %220
  %j7.08 = phi i64 [ %221, %220 ], [ %198, %.lr.ph9.preheader ]
  %verticesVisited5.17 = phi i64 [ %verticesVisited5.2, %220 ], [ %verticesVisited5.041, %.lr.ph9.preheader ]
  %204 = load i64*, i64** %72, align 8
  %205 = getelementptr inbounds i64, i64* %204, i64 %j7.08
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds i64, i64* %63, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %220

; <label>:210                                     ; preds = %.lr.ph9
  store i64 1, i64* %207, align 8
  %211 = load i64, i64* %27, align 8
  %212 = mul i64 %211, %158
  %213 = add i64 %212, %verticesVisited5.17
  %214 = getelementptr inbounds %struct.V, %struct.V* %8, i64 %213, i32 0
  store i64 %206, i64* %214, align 8
  %215 = load i64, i64* %27, align 8
  %216 = mul i64 %215, %158
  %217 = add i64 %216, %verticesVisited5.17
  %218 = getelementptr inbounds %struct.V, %struct.V* %8, i64 %217, i32 1
  store i64 %193, i64* %218, align 8
  %219 = add nsw i64 %verticesVisited5.17, 1
  br label %220

; <label>:220                                     ; preds = %.lr.ph9, %210
  %verticesVisited5.2 = phi i64 [ %219, %210 ], [ %verticesVisited5.17, %.lr.ph9 ]
  %221 = add nsw i64 %j7.08, 1
  %222 = icmp slt i64 %221, %202
  br i1 %222, label %.lr.ph9, label %._crit_edge10.loopexit

._crit_edge10.loopexit:                           ; preds = %220
  %verticesVisited5.2.lcssa = phi i64 [ %verticesVisited5.2, %220 ]
  br label %._crit_edge10

._crit_edge10:                                    ; preds = %._crit_edge10.loopexit, %.critedge1
  %verticesVisited5.1.lcssa = phi i64 [ %verticesVisited5.041, %.critedge1 ], [ %verticesVisited5.2.lcssa, %._crit_edge10.loopexit ]
  %223 = add nsw i64 %verticesVisited5.1.lcssa, -1
  %224 = icmp slt i64 %currIndex6.042, %223
  br i1 %224, label %225, label %.loopexit.loopexit47

; <label>:225                                     ; preds = %._crit_edge10
  %226 = add nuw nsw i64 %currIndex6.042, 1
  %227 = load i64, i64* %27, align 8
  %228 = mul i64 %227, %158
  %229 = add i64 %228, %226
  %230 = getelementptr inbounds %struct.V, %struct.V* %8, i64 %229, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %233 = icmp slt i64 %231, %232
  %234 = icmp eq i64 %verticesVisited5.1.lcssa, %227
  %or.cond36 = or i1 %233, %234
  br i1 %or.cond36, label %.critedge1, label %.loopexit.loopexit47

.loopexit.loopexit:                               ; preds = %._crit_edge15, %145, %148
  br label %.loopexit

.loopexit.loopexit47:                             ; preds = %._crit_edge10, %225
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit47, %.loopexit.loopexit, %157, %78
  %235 = add nsw i64 %i.117, 1
  %236 = load i64, i64* %i_stop, align 8
  %237 = icmp slt i64 %235, %236
  br i1 %237, label %.loopexit..preheader_crit_edge, label %._crit_edge20.loopexit

.loopexit..preheader_crit_edge:                   ; preds = %.loopexit
  %.pre = load i64, i64* %27, align 8
  br label %.preheader

._crit_edge20.loopexit:                           ; preds = %.loopexit
  br label %._crit_edge20

._crit_edge20:                                    ; preds = %._crit_edge20.loopexit, %66
  call void @free(i8* %62) #5
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
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @findSubGraphs1(i8* nocapture readonly %argPtr) #0 {
  %i_start = alloca i64, align 8
  %i_stop = alloca i64, align 8
  %1 = bitcast i8* %argPtr to %struct.graph**
  %2 = load %struct.graph*, %struct.graph** %1, align 8
  %3 = getelementptr inbounds i8, i8* %argPtr, i64 8
  %4 = bitcast i8* %3 to %struct.l***
  %5 = load %struct.l**, %struct.l*** %4, align 8
  %6 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %7 = bitcast i8* %6 to %struct.l***
  %8 = load %struct.l**, %struct.l*** %7, align 8
  %9 = getelementptr inbounds i8, i8* %argPtr, i64 24
  %10 = bitcast i8* %9 to %struct.edge**
  %11 = load %struct.edge*, %struct.edge** %10, align 8
  %12 = getelementptr inbounds i8, i8* %argPtr, i64 32
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i8, i8* %argPtr, i64 40
  %16 = bitcast i8* %15 to %struct.edge**
  %17 = load %struct.edge*, %struct.edge** %16, align 8
  %18 = getelementptr inbounds i8, i8* %argPtr, i64 48
  %19 = bitcast i8* %18 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = tail call i64 (...) @thread_getId() #5
  %22 = tail call i64 (...) @thread_getNumThread() #5
  %23 = getelementptr inbounds %struct.graph, %struct.graph* %2, i64 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = tail call noalias i8* @malloc(i64 %24) #5
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 257, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs1, i64 0, i64 0)) #6
  unreachable

; <label>:28                                      ; preds = %0
  %29 = add nsw i64 %20, %14
  call void @createPartition(i64 0, i64 %29, i64 %21, i64 %22, i64* nonnull %i_start, i64* nonnull %i_stop) #5
  %30 = load i64, i64* %i_start, align 8
  %31 = load i64, i64* %i_stop, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %.preheader.lr.ph, label %._crit_edge21

.preheader.lr.ph:                                 ; preds = %28
  %33 = getelementptr inbounds %struct.graph, %struct.graph* %2, i64 0, i32 7
  %34 = getelementptr inbounds %struct.graph, %struct.graph* %2, i64 0, i32 6
  %35 = getelementptr inbounds %struct.graph, %struct.graph* %2, i64 0, i32 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %230
  %i.020 = phi i64 [ %30, %.preheader.lr.ph ], [ %231, %230 ]
  %36 = load i64, i64* %23, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %38 = icmp ugt i64 %36, 1
  %umax = select i1 %38, i64 %36, i64 1
  call void @llvm.memset.p0i8.i64(i8* nonnull %25, i8 117, i64 %umax, i32 1, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %39 = icmp slt i64 %i.020, %14
  br i1 %39, label %40, label %135

; <label>:40                                      ; preds = %._crit_edge
  %41 = call noalias i8* @malloc(i64 24) #5
  %42 = getelementptr inbounds %struct.l*, %struct.l** %5, i64 %i.020
  %43 = bitcast %struct.l** %42 to i8**
  store i8* %41, i8** %43, align 8
  %44 = icmp eq i8* %41, null
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %40
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 279, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs1, i64 0, i64 0)) #6
  unreachable

; <label>:46                                      ; preds = %40
  %47 = getelementptr inbounds %struct.edge, %struct.edge* %11, i64 %i.020, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = bitcast i8* %41 to i64*
  store i64 %48, i64* %49, align 8
  %50 = load %struct.l*, %struct.l** %42, align 8
  %51 = getelementptr inbounds %struct.l, %struct.l* %50, i64 0, i32 1
  store i16 0, i16* %51, align 8
  %52 = load %struct.l*, %struct.l** %42, align 8
  %53 = getelementptr inbounds %struct.l, %struct.l* %52, i64 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i8, i8* %25, i64 %54
  store i8 118, i8* %55, align 1
  %56 = call noalias i8* @malloc(i64 24) #5
  %57 = load %struct.l*, %struct.l** %42, align 8
  %58 = getelementptr inbounds %struct.l, %struct.l* %57, i64 0, i32 2
  %59 = bitcast %struct.l** %58 to i8**
  store i8* %56, i8** %59, align 8
  %60 = load %struct.l*, %struct.l** %42, align 8
  %61 = getelementptr inbounds %struct.l, %struct.l* %60, i64 0, i32 2
  %62 = bitcast %struct.l** %61 to i8**
  %63 = load i8*, i8** %62, align 8
  call void @free(i8* %63) #5
  %64 = getelementptr inbounds %struct.edge, %struct.edge* %11, i64 %i.020, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.l*, %struct.l** %42, align 8
  %67 = getelementptr inbounds %struct.l, %struct.l* %66, i64 0, i32 2
  %68 = load %struct.l*, %struct.l** %67, align 8
  %69 = getelementptr inbounds %struct.l, %struct.l* %68, i64 0, i32 0
  store i64 %65, i64* %69, align 8
  %70 = load %struct.l*, %struct.l** %42, align 8
  %71 = getelementptr inbounds %struct.l, %struct.l* %70, i64 0, i32 2
  %72 = load %struct.l*, %struct.l** %71, align 8
  %73 = getelementptr inbounds %struct.l, %struct.l* %72, i64 0, i32 1
  store i16 1, i16* %73, align 8
  %74 = load %struct.l*, %struct.l** %42, align 8
  %75 = getelementptr inbounds %struct.l, %struct.l* %74, i64 0, i32 2
  %76 = load %struct.l*, %struct.l** %75, align 8
  %77 = getelementptr inbounds %struct.l, %struct.l* %76, i64 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i8, i8* %25, i64 %78
  store i8 118, i8* %79, align 1
  br label %80

; <label>:80                                      ; preds = %129, %46
  %verticesVisited.0 = phi i64 [ 2, %46 ], [ %verticesVisited.1.lcssa, %129 ]
  %currIndex.0 = phi i64 [ 1, %46 ], [ %130, %129 ]
  %startV.0 = phi %struct.l* [ %76, %46 ], [ %132, %129 ]
  %currV.0 = phi %struct.l* [ %76, %46 ], [ %currV.1.lcssa, %129 ]
  %81 = getelementptr inbounds %struct.l, %struct.l* %startV.0, i64 0, i32 1
  %82 = load i16, i16* %81, align 8
  %83 = sext i16 %82 to i64
  %84 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %.critedge, label %86

; <label>:86                                      ; preds = %80
  %87 = load i64, i64* %23, align 8
  %88 = icmp eq i64 %verticesVisited.0, %87
  br i1 %88, label %.critedge, label %133

.critedge:                                        ; preds = %80, %86
  %89 = add i16 %82, 1
  %90 = getelementptr inbounds %struct.l, %struct.l* %startV.0, i64 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** %33, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 %91
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %34, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 %91
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, %94
  %99 = icmp sgt i64 %97, 0
  br i1 %99, label %.lr.ph16.preheader, label %._crit_edge17

.lr.ph16.preheader:                               ; preds = %.critedge
  br label %.lr.ph16

.lr.ph16:                                         ; preds = %.lr.ph16.preheader, %121
  %currV.115 = phi %struct.l* [ %currV.2, %121 ], [ %currV.0, %.lr.ph16.preheader ]
  %j.014 = phi i64 [ %122, %121 ], [ %94, %.lr.ph16.preheader ]
  %verticesVisited.113 = phi i64 [ %verticesVisited.2, %121 ], [ %verticesVisited.0, %.lr.ph16.preheader ]
  %100 = load i64*, i64** %35, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 %j.014
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i8, i8* %25, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = icmp eq i8 %104, 117
  br i1 %105, label %106, label %121

; <label>:106                                     ; preds = %.lr.ph16
  store i8 118, i8* %103, align 1
  %107 = call noalias i8* @malloc(i64 24) #5
  %108 = getelementptr inbounds %struct.l, %struct.l* %currV.115, i64 0, i32 2
  %109 = bitcast %struct.l** %108 to i8**
  store i8* %107, i8** %109, align 8
  %110 = icmp eq i8* %107, null
  br i1 %110, label %111, label %112

; <label>:111                                     ; preds = %106
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 308, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs1, i64 0, i64 0)) #6
  unreachable

; <label>:112                                     ; preds = %106
  %113 = load i64*, i64** %35, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 %j.014
  %115 = load i64, i64* %114, align 8
  %116 = bitcast i8* %107 to i64*
  store i64 %115, i64* %116, align 8
  %117 = load %struct.l*, %struct.l** %108, align 8
  %118 = getelementptr inbounds %struct.l, %struct.l* %117, i64 0, i32 1
  store i16 %89, i16* %118, align 8
  %119 = add nsw i64 %verticesVisited.113, 1
  %120 = load %struct.l*, %struct.l** %108, align 8
  br label %121

; <label>:121                                     ; preds = %.lr.ph16, %112
  %verticesVisited.2 = phi i64 [ %119, %112 ], [ %verticesVisited.113, %.lr.ph16 ]
  %currV.2 = phi %struct.l* [ %120, %112 ], [ %currV.115, %.lr.ph16 ]
  %122 = add nsw i64 %j.014, 1
  %123 = icmp slt i64 %122, %98
  br i1 %123, label %.lr.ph16, label %._crit_edge17.loopexit

._crit_edge17.loopexit:                           ; preds = %121
  %currV.2.lcssa = phi %struct.l* [ %currV.2, %121 ]
  %verticesVisited.2.lcssa = phi i64 [ %verticesVisited.2, %121 ]
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %._crit_edge17.loopexit, %.critedge
  %currV.1.lcssa = phi %struct.l* [ %currV.0, %.critedge ], [ %currV.2.lcssa, %._crit_edge17.loopexit ]
  %verticesVisited.1.lcssa = phi i64 [ %verticesVisited.0, %.critedge ], [ %verticesVisited.2.lcssa, %._crit_edge17.loopexit ]
  %124 = add nsw i64 %verticesVisited.1.lcssa, -1
  %125 = icmp slt i64 %currIndex.0, %124
  br i1 %125, label %126, label %133

; <label>:126                                     ; preds = %._crit_edge17
  %127 = load i64, i64* %23, align 8
  %128 = icmp ult i64 %verticesVisited.1.lcssa, %127
  br i1 %128, label %129, label %133

; <label>:129                                     ; preds = %126
  %130 = add nuw nsw i64 %currIndex.0, 1
  %131 = getelementptr inbounds %struct.l, %struct.l* %startV.0, i64 0, i32 2
  %132 = load %struct.l*, %struct.l** %131, align 8
  br label %80

; <label>:133                                     ; preds = %._crit_edge17, %126, %86
  %currV.3 = phi %struct.l* [ %currV.1.lcssa, %126 ], [ %currV.1.lcssa, %._crit_edge17 ], [ %currV.0, %86 ]
  %134 = getelementptr inbounds %struct.l, %struct.l* %currV.3, i64 0, i32 2
  store %struct.l* null, %struct.l** %134, align 8
  br label %230

; <label>:135                                     ; preds = %._crit_edge
  %136 = sub nsw i64 %i.020, %14
  %137 = call noalias i8* @malloc(i64 24) #5
  %138 = getelementptr inbounds %struct.l*, %struct.l** %8, i64 %136
  %139 = bitcast %struct.l** %138 to i8**
  store i8* %137, i8** %139, align 8
  %140 = icmp eq i8* %137, null
  br i1 %140, label %141, label %142

; <label>:141                                     ; preds = %135
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 330, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs1, i64 0, i64 0)) #6
  unreachable

; <label>:142                                     ; preds = %135
  %143 = getelementptr inbounds %struct.edge, %struct.edge* %17, i64 %136, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = bitcast i8* %137 to i64*
  store i64 %144, i64* %145, align 8
  %146 = load %struct.l*, %struct.l** %138, align 8
  %147 = getelementptr inbounds %struct.l, %struct.l* %146, i64 0, i32 1
  store i16 0, i16* %147, align 8
  %148 = load %struct.l*, %struct.l** %138, align 8
  %149 = getelementptr inbounds %struct.l, %struct.l* %148, i64 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds i8, i8* %25, i64 %150
  store i8 118, i8* %151, align 1
  %152 = call noalias i8* @malloc(i64 24) #5
  %153 = load %struct.l*, %struct.l** %138, align 8
  %154 = getelementptr inbounds %struct.l, %struct.l* %153, i64 0, i32 2
  %155 = bitcast %struct.l** %154 to i8**
  store i8* %152, i8** %155, align 8
  %156 = load %struct.l*, %struct.l** %138, align 8
  %157 = getelementptr inbounds %struct.l, %struct.l* %156, i64 0, i32 2
  %158 = load %struct.l*, %struct.l** %157, align 8
  %159 = icmp eq %struct.l* %158, null
  br i1 %159, label %160, label %161

; <label>:160                                     ; preds = %142
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 336, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs1, i64 0, i64 0)) #6
  unreachable

; <label>:161                                     ; preds = %142
  %162 = getelementptr inbounds %struct.edge, %struct.edge* %17, i64 %136, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.l, %struct.l* %158, i64 0, i32 0
  store i64 %163, i64* %164, align 8
  %165 = load %struct.l*, %struct.l** %138, align 8
  %166 = getelementptr inbounds %struct.l, %struct.l* %165, i64 0, i32 2
  %167 = load %struct.l*, %struct.l** %166, align 8
  %168 = getelementptr inbounds %struct.l, %struct.l* %167, i64 0, i32 1
  store i16 1, i16* %168, align 8
  %169 = load %struct.l*, %struct.l** %138, align 8
  %170 = getelementptr inbounds %struct.l, %struct.l* %169, i64 0, i32 2
  %171 = load %struct.l*, %struct.l** %170, align 8
  %172 = getelementptr inbounds %struct.l, %struct.l* %171, i64 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds i8, i8* %25, i64 %173
  store i8 118, i8* %174, align 1
  br label %175

; <label>:175                                     ; preds = %224, %161
  %currV1.0 = phi %struct.l* [ %171, %161 ], [ %currV1.1.lcssa, %224 ]
  %startV2.0 = phi %struct.l* [ %171, %161 ], [ %227, %224 ]
  %verticesVisited4.0 = phi i64 [ 2, %161 ], [ %verticesVisited4.1.lcssa, %224 ]
  %currIndex5.0 = phi i64 [ 1, %161 ], [ %225, %224 ]
  %176 = getelementptr inbounds %struct.l, %struct.l* %startV2.0, i64 0, i32 1
  %177 = load i16, i16* %176, align 8
  %178 = sext i16 %177 to i64
  %179 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %180 = icmp slt i64 %178, %179
  br i1 %180, label %.critedge1, label %181

; <label>:181                                     ; preds = %175
  %182 = load i64, i64* %23, align 8
  %183 = icmp eq i64 %verticesVisited4.0, %182
  br i1 %183, label %.critedge1, label %228

.critedge1:                                       ; preds = %175, %181
  %184 = add i16 %177, 1
  %185 = getelementptr inbounds %struct.l, %struct.l* %startV2.0, i64 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64*, i64** %33, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 %186
  %189 = load i64, i64* %188, align 8
  %190 = load i64*, i64** %34, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 %186
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %192, %189
  %194 = icmp sgt i64 %192, 0
  br i1 %194, label %.lr.ph10.preheader, label %._crit_edge11

.lr.ph10.preheader:                               ; preds = %.critedge1
  br label %.lr.ph10

.lr.ph10:                                         ; preds = %.lr.ph10.preheader, %216
  %j6.09 = phi i64 [ %217, %216 ], [ %189, %.lr.ph10.preheader ]
  %verticesVisited4.18 = phi i64 [ %verticesVisited4.2, %216 ], [ %verticesVisited4.0, %.lr.ph10.preheader ]
  %currV1.17 = phi %struct.l* [ %currV1.2, %216 ], [ %currV1.0, %.lr.ph10.preheader ]
  %195 = load i64*, i64** %35, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 %j6.09
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds i8, i8* %25, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = icmp eq i8 %199, 117
  br i1 %200, label %201, label %216

; <label>:201                                     ; preds = %.lr.ph10
  store i8 118, i8* %198, align 1
  %202 = call noalias i8* @malloc(i64 24) #5
  %203 = getelementptr inbounds %struct.l, %struct.l* %currV1.17, i64 0, i32 2
  %204 = bitcast %struct.l** %203 to i8**
  store i8* %202, i8** %204, align 8
  %205 = icmp eq i8* %202, null
  br i1 %205, label %206, label %207

; <label>:206                                     ; preds = %201
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 360, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs1, i64 0, i64 0)) #6
  unreachable

; <label>:207                                     ; preds = %201
  %208 = load i64*, i64** %35, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 %j6.09
  %210 = load i64, i64* %209, align 8
  %211 = bitcast i8* %202 to i64*
  store i64 %210, i64* %211, align 8
  %212 = load %struct.l*, %struct.l** %203, align 8
  %213 = getelementptr inbounds %struct.l, %struct.l* %212, i64 0, i32 1
  store i16 %184, i16* %213, align 8
  %214 = add nsw i64 %verticesVisited4.18, 1
  %215 = load %struct.l*, %struct.l** %203, align 8
  br label %216

; <label>:216                                     ; preds = %.lr.ph10, %207
  %currV1.2 = phi %struct.l* [ %215, %207 ], [ %currV1.17, %.lr.ph10 ]
  %verticesVisited4.2 = phi i64 [ %214, %207 ], [ %verticesVisited4.18, %.lr.ph10 ]
  %217 = add nsw i64 %j6.09, 1
  %218 = icmp slt i64 %217, %193
  br i1 %218, label %.lr.ph10, label %._crit_edge11.loopexit

._crit_edge11.loopexit:                           ; preds = %216
  %verticesVisited4.2.lcssa = phi i64 [ %verticesVisited4.2, %216 ]
  %currV1.2.lcssa = phi %struct.l* [ %currV1.2, %216 ]
  br label %._crit_edge11

._crit_edge11:                                    ; preds = %._crit_edge11.loopexit, %.critedge1
  %verticesVisited4.1.lcssa = phi i64 [ %verticesVisited4.0, %.critedge1 ], [ %verticesVisited4.2.lcssa, %._crit_edge11.loopexit ]
  %currV1.1.lcssa = phi %struct.l* [ %currV1.0, %.critedge1 ], [ %currV1.2.lcssa, %._crit_edge11.loopexit ]
  %219 = add nsw i64 %verticesVisited4.1.lcssa, -1
  %220 = icmp slt i64 %currIndex5.0, %219
  br i1 %220, label %221, label %228

; <label>:221                                     ; preds = %._crit_edge11
  %222 = load i64, i64* %23, align 8
  %223 = icmp ult i64 %verticesVisited4.1.lcssa, %222
  br i1 %223, label %224, label %228

; <label>:224                                     ; preds = %221
  %225 = add nuw nsw i64 %currIndex5.0, 1
  %226 = getelementptr inbounds %struct.l, %struct.l* %startV2.0, i64 0, i32 2
  %227 = load %struct.l*, %struct.l** %226, align 8
  br label %175

; <label>:228                                     ; preds = %._crit_edge11, %221, %181
  %currV1.3 = phi %struct.l* [ %currV1.1.lcssa, %221 ], [ %currV1.1.lcssa, %._crit_edge11 ], [ %currV1.0, %181 ]
  %229 = getelementptr inbounds %struct.l, %struct.l* %currV1.3, i64 0, i32 2
  store %struct.l* null, %struct.l** %229, align 8
  br label %230

; <label>:230                                     ; preds = %133, %228
  %231 = add nsw i64 %i.020, 1
  %232 = load i64, i64* %i_stop, align 8
  %233 = icmp slt i64 %231, %232
  br i1 %233, label %.preheader, label %._crit_edge21.loopexit

._crit_edge21.loopexit:                           ; preds = %230
  br label %._crit_edge21

._crit_edge21:                                    ; preds = %._crit_edge21.loopexit, %28
  call void @free(i8* %25) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @findSubGraphs2(i8* nocapture readonly %argPtr) #0 {
  %i_start = alloca i64, align 8
  %i_stop = alloca i64, align 8
  %1 = bitcast i8* %argPtr to %struct.graph**
  %2 = load %struct.graph*, %struct.graph** %1, align 8
  %3 = getelementptr inbounds i8, i8* %argPtr, i64 8
  %4 = bitcast i8* %3 to %struct.Vd**
  %5 = load %struct.Vd*, %struct.Vd** %4, align 8
  %6 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %7 = bitcast i8* %6 to %struct.Vd**
  %8 = load %struct.Vd*, %struct.Vd** %7, align 8
  %9 = getelementptr inbounds i8, i8* %argPtr, i64 24
  %10 = bitcast i8* %9 to %struct.edge**
  %11 = load %struct.edge*, %struct.edge** %10, align 8
  %12 = getelementptr inbounds i8, i8* %argPtr, i64 32
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i8, i8* %argPtr, i64 40
  %16 = bitcast i8* %15 to %struct.edge**
  %17 = load %struct.edge*, %struct.edge** %16, align 8
  %18 = getelementptr inbounds i8, i8* %argPtr, i64 48
  %19 = bitcast i8* %18 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = tail call i64 (...) @thread_getId() #5
  %22 = tail call i64 (...) @thread_getNumThread() #5
  %23 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %24 = mul nsw i64 %23, 5
  %25 = add nsw i64 %20, %14
  call void @createPartition(i64 0, i64 %25, i64 %21, i64 %22, i64* nonnull %i_start, i64* nonnull %i_stop) #5
  %26 = load i64, i64* %i_start, align 8
  %27 = load i64, i64* %i_stop, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %.lr.ph27, label %._crit_edge28

.lr.ph27:                                         ; preds = %0
  %29 = mul i64 %23, 80
  %30 = icmp sgt i64 %23, 0
  br i1 %30, label %.lr.ph27.split.us.preheader, label %.lr.ph27.split.preheader

.lr.ph27.split.preheader:                         ; preds = %.lr.ph27
  br label %.lr.ph27.split

.lr.ph27.split.us.preheader:                      ; preds = %.lr.ph27
  %31 = mul i64 %23, 5
  %32 = add i64 %31, -1
  %33 = add i64 %31, -2
  %34 = icmp sgt i64 %24, 1
  %xtraiter74 = and i64 %32, 1
  %lcmp.mod75 = icmp eq i64 %xtraiter74, 0
  %35 = icmp eq i64 %33, 0
  %36 = icmp sgt i64 %24, 1
  %xtraiter = and i64 %32, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  %37 = icmp eq i64 %33, 0
  br label %.lr.ph27.split.us

.lr.ph27.split.us:                                ; preds = %.lr.ph27.split.us.preheader, %.loopexit6.us
  %i.025.us = phi i64 [ %106, %.loopexit6.us ], [ %26, %.lr.ph27.split.us.preheader ]
  %38 = icmp slt i64 %i.025.us, %14
  br i1 %38, label %79, label %39

; <label>:39                                      ; preds = %.lr.ph27.split.us
  %40 = sub nsw i64 %i.025.us, %14
  %41 = getelementptr inbounds %struct.Vd, %struct.Vd* %8, i64 %40, i32 0
  store i64 1, i64* %41, align 8
  %42 = call noalias i8* @malloc(i64 240) #5
  %43 = getelementptr inbounds %struct.Vd, %struct.Vd* %8, i64 %40, i32 1
  %44 = bitcast i64** %43 to i8**
  store i8* %42, i8** %44, align 8
  %45 = icmp eq i8* %42, null
  br i1 %45, label %.us-lcssa.us.loopexit, label %46

; <label>:46                                      ; preds = %39
  %47 = bitcast i8* %42 to i64*
  store i64 0, i64* %47, align 8
  %48 = call noalias i8* @malloc(i64 240) #5
  %49 = getelementptr inbounds %struct.Vd, %struct.Vd* %8, i64 %40, i32 2
  %50 = bitcast %struct.V*** %49 to i8**
  store i8* %48, i8** %50, align 8
  %51 = icmp eq i8* %48, null
  br i1 %51, label %.us-lcssa29.us.loopexit, label %52

; <label>:52                                      ; preds = %46
  %53 = call noalias i8* @malloc(i64 %29) #5
  %54 = bitcast %struct.V*** %49 to i8***
  %55 = load i8**, i8*** %54, align 8
  store i8* %53, i8** %55, align 8
  %56 = load %struct.V**, %struct.V*** %49, align 8
  %57 = load %struct.V*, %struct.V** %56, align 8
  %58 = icmp eq %struct.V* %57, null
  br i1 %58, label %.us-lcssa30.us.loopexit, label %.lr.ph22.us.preheader

.lr.ph22.us.preheader:                            ; preds = %52
  %59 = getelementptr inbounds %struct.V, %struct.V* %57, i64 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.V**, %struct.V*** %49, align 8
  %61 = load %struct.V*, %struct.V** %60, align 8
  %62 = getelementptr inbounds %struct.V, %struct.V* %61, i64 0, i32 1
  store i64 0, i64* %62, align 8
  br i1 %36, label %.lr.ph22.us..lr.ph22.us_crit_edge.preheader, label %.loopexit6.us

.lr.ph22.us..lr.ph22.us_crit_edge.preheader:      ; preds = %.lr.ph22.us.preheader
  br i1 %lcmp.mod, label %.lr.ph22.us..lr.ph22.us_crit_edge.preheader.split, label %.lr.ph22.us..lr.ph22.us_crit_edge.prol

.lr.ph22.us..lr.ph22.us_crit_edge.prol:           ; preds = %.lr.ph22.us..lr.ph22.us_crit_edge.preheader
  %.pre.prol = load %struct.V**, %struct.V*** %49, align 8
  %.pre43.prol = load %struct.V*, %struct.V** %.pre.prol, align 8
  %63 = getelementptr inbounds %struct.V, %struct.V* %.pre43.prol, i64 1, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.V**, %struct.V*** %49, align 8
  %65 = load %struct.V*, %struct.V** %64, align 8
  %66 = getelementptr inbounds %struct.V, %struct.V* %65, i64 1, i32 1
  store i64 0, i64* %66, align 8
  br label %.lr.ph22.us..lr.ph22.us_crit_edge.preheader.split

.lr.ph22.us..lr.ph22.us_crit_edge.preheader.split: ; preds = %.lr.ph22.us..lr.ph22.us_crit_edge.preheader, %.lr.ph22.us..lr.ph22.us_crit_edge.prol
  %.unr = phi i64 [ 1, %.lr.ph22.us..lr.ph22.us_crit_edge.preheader ], [ 2, %.lr.ph22.us..lr.ph22.us_crit_edge.prol ]
  br i1 %37, label %.loopexit6.us.loopexit66, label %.lr.ph22.us..lr.ph22.us_crit_edge.preheader.split.split

.lr.ph22.us..lr.ph22.us_crit_edge.preheader.split.split: ; preds = %.lr.ph22.us..lr.ph22.us_crit_edge.preheader.split
  br label %.lr.ph22.us..lr.ph22.us_crit_edge

.lr.ph22.us..lr.ph22.us_crit_edge:                ; preds = %.lr.ph22.us..lr.ph22.us_crit_edge, %.lr.ph22.us..lr.ph22.us_crit_edge.preheader.split.split
  %67 = phi i64 [ %.unr, %.lr.ph22.us..lr.ph22.us_crit_edge.preheader.split.split ], [ %77, %.lr.ph22.us..lr.ph22.us_crit_edge ]
  %.pre = load %struct.V**, %struct.V*** %49, align 8
  %.pre43 = load %struct.V*, %struct.V** %.pre, align 8
  %68 = getelementptr inbounds %struct.V, %struct.V* %.pre43, i64 %67, i32 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.V**, %struct.V*** %49, align 8
  %70 = load %struct.V*, %struct.V** %69, align 8
  %71 = getelementptr inbounds %struct.V, %struct.V* %70, i64 %67, i32 1
  store i64 0, i64* %71, align 8
  %72 = add nuw nsw i64 %67, 1
  %.pre.1 = load %struct.V**, %struct.V*** %49, align 8
  %.pre43.1 = load %struct.V*, %struct.V** %.pre.1, align 8
  %73 = getelementptr inbounds %struct.V, %struct.V* %.pre43.1, i64 %72, i32 0
  store i64 0, i64* %73, align 8
  %74 = load %struct.V**, %struct.V*** %49, align 8
  %75 = load %struct.V*, %struct.V** %74, align 8
  %76 = getelementptr inbounds %struct.V, %struct.V* %75, i64 %72, i32 1
  store i64 0, i64* %76, align 8
  %77 = add nsw i64 %67, 2
  %78 = icmp slt i64 %77, %24
  br i1 %78, label %.lr.ph22.us..lr.ph22.us_crit_edge, label %.loopexit6.us.loopexit66.unr-lcssa

; <label>:79                                      ; preds = %.lr.ph27.split.us
  %80 = getelementptr inbounds %struct.Vd, %struct.Vd* %5, i64 %i.025.us, i32 0
  store i64 1, i64* %80, align 8
  %81 = call noalias i8* @malloc(i64 240) #5
  %82 = getelementptr inbounds %struct.Vd, %struct.Vd* %5, i64 %i.025.us, i32 1
  %83 = bitcast i64** %82 to i8**
  store i8* %81, i8** %83, align 8
  %84 = icmp eq i8* %81, null
  br i1 %84, label %.us-lcssa31.us.loopexit, label %85

; <label>:85                                      ; preds = %79
  %86 = bitcast i8* %81 to i64*
  store i64 0, i64* %86, align 8
  %87 = call noalias i8* @malloc(i64 240) #5
  %88 = getelementptr inbounds %struct.Vd, %struct.Vd* %5, i64 %i.025.us, i32 2
  %89 = bitcast %struct.V*** %88 to i8**
  store i8* %87, i8** %89, align 8
  %90 = icmp eq i8* %87, null
  br i1 %90, label %.us-lcssa32.us.loopexit, label %91

; <label>:91                                      ; preds = %85
  %92 = call noalias i8* @malloc(i64 %29) #5
  %93 = bitcast %struct.V*** %88 to i8***
  %94 = load i8**, i8*** %93, align 8
  store i8* %92, i8** %94, align 8
  %95 = load %struct.V**, %struct.V*** %88, align 8
  %96 = load %struct.V*, %struct.V** %95, align 8
  %97 = icmp eq %struct.V* %96, null
  br i1 %97, label %.us-lcssa33.us.loopexit, label %.lr.ph24.us.preheader

.lr.ph24.us.preheader:                            ; preds = %91
  %98 = getelementptr inbounds %struct.V, %struct.V* %96, i64 0, i32 0
  store i64 0, i64* %98, align 8
  %99 = load %struct.V**, %struct.V*** %88, align 8
  %100 = load %struct.V*, %struct.V** %99, align 8
  %101 = getelementptr inbounds %struct.V, %struct.V* %100, i64 0, i32 1
  store i64 0, i64* %101, align 8
  br i1 %34, label %.lr.ph24.us..lr.ph24.us_crit_edge.preheader, label %.loopexit6.us

.lr.ph24.us..lr.ph24.us_crit_edge.preheader:      ; preds = %.lr.ph24.us.preheader
  br i1 %lcmp.mod75, label %.lr.ph24.us..lr.ph24.us_crit_edge.preheader.split, label %.lr.ph24.us..lr.ph24.us_crit_edge.prol

.lr.ph24.us..lr.ph24.us_crit_edge.prol:           ; preds = %.lr.ph24.us..lr.ph24.us_crit_edge.preheader
  %.pre44.prol = load %struct.V**, %struct.V*** %88, align 8
  %.pre45.prol = load %struct.V*, %struct.V** %.pre44.prol, align 8
  %102 = getelementptr inbounds %struct.V, %struct.V* %.pre45.prol, i64 1, i32 0
  store i64 0, i64* %102, align 8
  %103 = load %struct.V**, %struct.V*** %88, align 8
  %104 = load %struct.V*, %struct.V** %103, align 8
  %105 = getelementptr inbounds %struct.V, %struct.V* %104, i64 1, i32 1
  store i64 0, i64* %105, align 8
  br label %.lr.ph24.us..lr.ph24.us_crit_edge.preheader.split

.lr.ph24.us..lr.ph24.us_crit_edge.preheader.split: ; preds = %.lr.ph24.us..lr.ph24.us_crit_edge.preheader, %.lr.ph24.us..lr.ph24.us_crit_edge.prol
  %.unr76 = phi i64 [ 1, %.lr.ph24.us..lr.ph24.us_crit_edge.preheader ], [ 2, %.lr.ph24.us..lr.ph24.us_crit_edge.prol ]
  br i1 %35, label %.loopexit6.us.loopexit, label %.lr.ph24.us..lr.ph24.us_crit_edge.preheader.split.split

.lr.ph24.us..lr.ph24.us_crit_edge.preheader.split.split: ; preds = %.lr.ph24.us..lr.ph24.us_crit_edge.preheader.split
  br label %.lr.ph24.us..lr.ph24.us_crit_edge

.loopexit6.us.loopexit.unr-lcssa:                 ; preds = %.lr.ph24.us..lr.ph24.us_crit_edge
  br label %.loopexit6.us.loopexit

.loopexit6.us.loopexit:                           ; preds = %.lr.ph24.us..lr.ph24.us_crit_edge.preheader.split, %.loopexit6.us.loopexit.unr-lcssa
  br label %.loopexit6.us

.loopexit6.us.loopexit66.unr-lcssa:               ; preds = %.lr.ph22.us..lr.ph22.us_crit_edge
  br label %.loopexit6.us.loopexit66

.loopexit6.us.loopexit66:                         ; preds = %.lr.ph22.us..lr.ph22.us_crit_edge.preheader.split, %.loopexit6.us.loopexit66.unr-lcssa
  br label %.loopexit6.us

.loopexit6.us:                                    ; preds = %.loopexit6.us.loopexit66, %.loopexit6.us.loopexit, %.lr.ph22.us.preheader, %.lr.ph24.us.preheader
  %106 = add nsw i64 %i.025.us, 1
  %107 = load i64, i64* %i_stop, align 8
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %.lr.ph27.split.us, label %._crit_edge28.loopexit

.lr.ph24.us..lr.ph24.us_crit_edge:                ; preds = %.lr.ph24.us..lr.ph24.us_crit_edge, %.lr.ph24.us..lr.ph24.us_crit_edge.preheader.split.split
  %109 = phi i64 [ %.unr76, %.lr.ph24.us..lr.ph24.us_crit_edge.preheader.split.split ], [ %119, %.lr.ph24.us..lr.ph24.us_crit_edge ]
  %.pre44 = load %struct.V**, %struct.V*** %88, align 8
  %.pre45 = load %struct.V*, %struct.V** %.pre44, align 8
  %110 = getelementptr inbounds %struct.V, %struct.V* %.pre45, i64 %109, i32 0
  store i64 0, i64* %110, align 8
  %111 = load %struct.V**, %struct.V*** %88, align 8
  %112 = load %struct.V*, %struct.V** %111, align 8
  %113 = getelementptr inbounds %struct.V, %struct.V* %112, i64 %109, i32 1
  store i64 0, i64* %113, align 8
  %114 = add nuw nsw i64 %109, 1
  %.pre44.1 = load %struct.V**, %struct.V*** %88, align 8
  %.pre45.1 = load %struct.V*, %struct.V** %.pre44.1, align 8
  %115 = getelementptr inbounds %struct.V, %struct.V* %.pre45.1, i64 %114, i32 0
  store i64 0, i64* %115, align 8
  %116 = load %struct.V**, %struct.V*** %88, align 8
  %117 = load %struct.V*, %struct.V** %116, align 8
  %118 = getelementptr inbounds %struct.V, %struct.V* %117, i64 %114, i32 1
  store i64 0, i64* %118, align 8
  %119 = add nsw i64 %109, 2
  %120 = icmp slt i64 %119, %24
  br i1 %120, label %.lr.ph24.us..lr.ph24.us_crit_edge, label %.loopexit6.us.loopexit.unr-lcssa

.lr.ph27.split:                                   ; preds = %.lr.ph27.split.preheader, %.loopexit4
  %i.025 = phi i64 [ %161, %.loopexit4 ], [ %26, %.lr.ph27.split.preheader ]
  %121 = icmp slt i64 %i.025, %14
  br i1 %121, label %122, label %141

; <label>:122                                     ; preds = %.lr.ph27.split
  %123 = getelementptr inbounds %struct.Vd, %struct.Vd* %5, i64 %i.025, i32 0
  store i64 1, i64* %123, align 8
  %124 = call noalias i8* @malloc(i64 240) #5
  %125 = getelementptr inbounds %struct.Vd, %struct.Vd* %5, i64 %i.025, i32 1
  %126 = bitcast i64** %125 to i8**
  store i8* %124, i8** %126, align 8
  %127 = icmp eq i8* %124, null
  br i1 %127, label %.us-lcssa31.us.loopexit70, label %128

.us-lcssa31.us.loopexit:                          ; preds = %79
  br label %.us-lcssa31.us

.us-lcssa31.us.loopexit70:                        ; preds = %122
  br label %.us-lcssa31.us

.us-lcssa31.us:                                   ; preds = %.us-lcssa31.us.loopexit70, %.us-lcssa31.us.loopexit
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 426, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i64 0, i64 0)) #6
  unreachable

; <label>:128                                     ; preds = %122
  %129 = bitcast i8* %124 to i64*
  store i64 0, i64* %129, align 8
  %130 = call noalias i8* @malloc(i64 240) #5
  %131 = getelementptr inbounds %struct.Vd, %struct.Vd* %5, i64 %i.025, i32 2
  %132 = bitcast %struct.V*** %131 to i8**
  store i8* %130, i8** %132, align 8
  %133 = icmp eq i8* %130, null
  br i1 %133, label %.us-lcssa32.us.loopexit71, label %134

.us-lcssa32.us.loopexit:                          ; preds = %85
  br label %.us-lcssa32.us

.us-lcssa32.us.loopexit71:                        ; preds = %128
  br label %.us-lcssa32.us

.us-lcssa32.us:                                   ; preds = %.us-lcssa32.us.loopexit71, %.us-lcssa32.us.loopexit
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 429, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i64 0, i64 0)) #6
  unreachable

; <label>:134                                     ; preds = %128
  %135 = call noalias i8* @malloc(i64 %29) #5
  %136 = bitcast %struct.V*** %131 to i8***
  %137 = load i8**, i8*** %136, align 8
  store i8* %135, i8** %137, align 8
  %138 = load %struct.V**, %struct.V*** %131, align 8
  %139 = load %struct.V*, %struct.V** %138, align 8
  %140 = icmp eq %struct.V* %139, null
  br i1 %140, label %.us-lcssa33.us.loopexit72, label %.loopexit4

.us-lcssa33.us.loopexit:                          ; preds = %91
  br label %.us-lcssa33.us

.us-lcssa33.us.loopexit72:                        ; preds = %134
  br label %.us-lcssa33.us

.us-lcssa33.us:                                   ; preds = %.us-lcssa33.us.loopexit72, %.us-lcssa33.us.loopexit
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 431, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i64 0, i64 0)) #6
  unreachable

; <label>:141                                     ; preds = %.lr.ph27.split
  %142 = sub nsw i64 %i.025, %14
  %143 = getelementptr inbounds %struct.Vd, %struct.Vd* %8, i64 %142, i32 0
  store i64 1, i64* %143, align 8
  %144 = call noalias i8* @malloc(i64 240) #5
  %145 = getelementptr inbounds %struct.Vd, %struct.Vd* %8, i64 %142, i32 1
  %146 = bitcast i64** %145 to i8**
  store i8* %144, i8** %146, align 8
  %147 = icmp eq i8* %144, null
  br i1 %147, label %.us-lcssa.us.loopexit67, label %148

.us-lcssa.us.loopexit:                            ; preds = %39
  br label %.us-lcssa.us

.us-lcssa.us.loopexit67:                          ; preds = %141
  br label %.us-lcssa.us

.us-lcssa.us:                                     ; preds = %.us-lcssa.us.loopexit67, %.us-lcssa.us.loopexit
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 442, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i64 0, i64 0)) #6
  unreachable

; <label>:148                                     ; preds = %141
  %149 = bitcast i8* %144 to i64*
  store i64 0, i64* %149, align 8
  %150 = call noalias i8* @malloc(i64 240) #5
  %151 = getelementptr inbounds %struct.Vd, %struct.Vd* %8, i64 %142, i32 2
  %152 = bitcast %struct.V*** %151 to i8**
  store i8* %150, i8** %152, align 8
  %153 = icmp eq i8* %150, null
  br i1 %153, label %.us-lcssa29.us.loopexit68, label %154

.us-lcssa29.us.loopexit:                          ; preds = %46
  br label %.us-lcssa29.us

.us-lcssa29.us.loopexit68:                        ; preds = %148
  br label %.us-lcssa29.us

.us-lcssa29.us:                                   ; preds = %.us-lcssa29.us.loopexit68, %.us-lcssa29.us.loopexit
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 445, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i64 0, i64 0)) #6
  unreachable

; <label>:154                                     ; preds = %148
  %155 = call noalias i8* @malloc(i64 %29) #5
  %156 = bitcast %struct.V*** %151 to i8***
  %157 = load i8**, i8*** %156, align 8
  store i8* %155, i8** %157, align 8
  %158 = load %struct.V**, %struct.V*** %151, align 8
  %159 = load %struct.V*, %struct.V** %158, align 8
  %160 = icmp eq %struct.V* %159, null
  br i1 %160, label %.us-lcssa30.us.loopexit69, label %.loopexit4

.us-lcssa30.us.loopexit:                          ; preds = %52
  br label %.us-lcssa30.us

.us-lcssa30.us.loopexit69:                        ; preds = %154
  br label %.us-lcssa30.us

.us-lcssa30.us:                                   ; preds = %.us-lcssa30.us.loopexit69, %.us-lcssa30.us.loopexit
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 447, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i64 0, i64 0)) #6
  unreachable

.loopexit4:                                       ; preds = %154, %134
  %161 = add nsw i64 %i.025, 1
  %162 = load i64, i64* %i_stop, align 8
  %163 = icmp slt i64 %161, %162
  br i1 %163, label %.lr.ph27.split, label %._crit_edge28.loopexit73

._crit_edge28.loopexit:                           ; preds = %.loopexit6.us
  br label %._crit_edge28

._crit_edge28.loopexit73:                         ; preds = %.loopexit4
  br label %._crit_edge28

._crit_edge28:                                    ; preds = %._crit_edge28.loopexit73, %._crit_edge28.loopexit, %0
  call void (...) @thread_barrier_wait() #5
  %164 = getelementptr inbounds %struct.graph, %struct.graph* %2, i64 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = call noalias i8* @malloc(i64 %165) #5
  %167 = icmp eq i8* %166, null
  br i1 %167, label %168, label %169

; <label>:168                                     ; preds = %._crit_edge28
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 459, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i64 0, i64 0)) #6
  unreachable

; <label>:169                                     ; preds = %._crit_edge28
  %170 = load i64, i64* %i_start, align 8
  %171 = load i64, i64* %i_stop, align 8
  %172 = icmp slt i64 %170, %171
  br i1 %172, label %.preheader.lr.ph, label %._crit_edge20

.preheader.lr.ph:                                 ; preds = %169
  %173 = getelementptr inbounds %struct.graph, %struct.graph* %2, i64 0, i32 7
  %174 = getelementptr inbounds %struct.graph, %struct.graph* %2, i64 0, i32 6
  %175 = sitofp i64 %24 to float
  %176 = mul i64 %23, 80
  %177 = getelementptr inbounds %struct.graph, %struct.graph* %2, i64 0, i32 8
  br label %.preheader

.preheader:                                       ; preds = %.loopexit..preheader_crit_edge, %.preheader.lr.ph
  %178 = phi i64 [ %165, %.preheader.lr.ph ], [ %.pre46, %.loopexit..preheader_crit_edge ]
  %i.117 = phi i64 [ %170, %.preheader.lr.ph ], [ %415, %.loopexit..preheader_crit_edge ]
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %180 = icmp ugt i64 %178, 1
  %umax = select i1 %180, i64 %178, i64 1
  call void @llvm.memset.p0i8.i64(i8* nonnull %166, i8 117, i64 %umax, i32 1, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %181 = icmp slt i64 %i.117, %14
  br i1 %181, label %182, label %298

; <label>:182                                     ; preds = %._crit_edge
  %183 = getelementptr inbounds %struct.edge, %struct.edge* %11, i64 %i.117, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.Vd, %struct.Vd* %5, i64 %i.117, i32 2
  %186 = load %struct.V**, %struct.V*** %185, align 8
  %187 = load %struct.V*, %struct.V** %186, align 8
  %188 = getelementptr inbounds %struct.V, %struct.V* %187, i64 0, i32 0
  store i64 %184, i64* %188, align 8
  %189 = load %struct.V**, %struct.V*** %185, align 8
  %190 = load %struct.V*, %struct.V** %189, align 8
  %191 = getelementptr inbounds %struct.V, %struct.V* %190, i64 0, i32 1
  store i64 -1, i64* %191, align 8
  %192 = getelementptr inbounds %struct.edge, %struct.edge* %11, i64 %i.117, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.V**, %struct.V*** %185, align 8
  %195 = load %struct.V*, %struct.V** %194, align 8
  %196 = getelementptr inbounds %struct.V, %struct.V* %195, i64 1, i32 0
  store i64 %193, i64* %196, align 8
  %197 = load %struct.V**, %struct.V*** %185, align 8
  %198 = load %struct.V*, %struct.V** %197, align 8
  %199 = getelementptr inbounds %struct.V, %struct.V* %198, i64 1, i32 1
  store i64 1, i64* %199, align 8
  %200 = getelementptr inbounds %struct.Vd, %struct.Vd* %5, i64 %i.117, i32 1
  %201 = load i64*, i64** %200, align 8
  store i64 2, i64* %201, align 8
  %202 = load %struct.V**, %struct.V*** %185, align 8
  %203 = load %struct.V*, %struct.V** %202, align 8
  %204 = getelementptr inbounds %struct.V, %struct.V* %203, i64 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds i8, i8* %166, i64 %205
  store i8 118, i8* %206, align 1
  %207 = getelementptr inbounds %struct.V, %struct.V* %203, i64 1, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds i8, i8* %166, i64 %208
  store i8 118, i8* %209, align 1
  %210 = getelementptr inbounds %struct.Vd, %struct.Vd* %5, i64 %i.117, i32 0
  br label %211

; <label>:211                                     ; preds = %289, %182
  %212 = phi %struct.V** [ %202, %182 ], [ %293, %289 ]
  %currIndex.0 = phi i64 [ 1, %182 ], [ %290, %289 ]
  %verticesVisited.0 = phi i64 [ 2, %182 ], [ %verticesVisited.1.lcssa, %289 ]
  %depth.0 = phi i64 [ 1, %182 ], [ %297, %289 ]
  %213 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %214 = icmp slt i64 %depth.0, %213
  br i1 %214, label %.critedge, label %215

; <label>:215                                     ; preds = %211
  %216 = load i64, i64* %164, align 8
  %217 = icmp eq i64 %verticesVisited.0, %216
  br i1 %217, label %.critedge, label %.loopexit.loopexit

.critedge:                                        ; preds = %211, %215
  %218 = sdiv i64 %currIndex.0, %24
  %219 = srem i64 %currIndex.0, %24
  %220 = getelementptr inbounds %struct.V*, %struct.V** %212, i64 %218
  %221 = load %struct.V*, %struct.V** %220, align 8
  %222 = getelementptr inbounds %struct.V, %struct.V* %221, i64 %219, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds %struct.V, %struct.V* %221, i64 %219, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = add nsw i64 %225, 1
  %227 = load i64*, i64** %173, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 %223
  %229 = load i64, i64* %228, align 8
  %230 = load i64*, i64** %174, align 8
  %231 = getelementptr inbounds i64, i64* %230, i64 %223
  %232 = load i64, i64* %231, align 8
  %233 = add nsw i64 %232, %229
  %234 = icmp sgt i64 %232, 0
  br i1 %234, label %.lr.ph14.preheader, label %._crit_edge15

.lr.ph14.preheader:                               ; preds = %.critedge
  br label %.lr.ph14

.lr.ph14:                                         ; preds = %.lr.ph14.preheader, %254
  %verticesVisited.113 = phi i64 [ %verticesVisited.2, %254 ], [ %verticesVisited.0, %.lr.ph14.preheader ]
  %j2.012 = phi i64 [ %255, %254 ], [ %229, %.lr.ph14.preheader ]
  %235 = load i64*, i64** %177, align 8
  %236 = getelementptr inbounds i64, i64* %235, i64 %j2.012
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds i8, i8* %166, i64 %237
  %239 = load i8, i8* %238, align 1
  %240 = icmp eq i8 %239, 117
  br i1 %240, label %241, label %254

; <label>:241                                     ; preds = %.lr.ph14
  store i8 118, i8* %238, align 1
  %242 = sdiv i64 %verticesVisited.113, %24
  %243 = srem i64 %verticesVisited.113, %24
  %244 = load %struct.V**, %struct.V*** %185, align 8
  %245 = getelementptr inbounds %struct.V*, %struct.V** %244, i64 %242
  %246 = load %struct.V*, %struct.V** %245, align 8
  %247 = getelementptr inbounds %struct.V, %struct.V* %246, i64 %243, i32 0
  store i64 %237, i64* %247, align 8
  %248 = getelementptr inbounds %struct.V, %struct.V* %246, i64 %243, i32 1
  store i64 %226, i64* %248, align 8
  %249 = load i64*, i64** %200, align 8
  %250 = getelementptr inbounds i64, i64* %249, i64 %242
  %251 = load i64, i64* %250, align 8
  %252 = add i64 %251, 1
  store i64 %252, i64* %250, align 8
  %253 = add nsw i64 %verticesVisited.113, 1
  br label %254

; <label>:254                                     ; preds = %.lr.ph14, %241
  %verticesVisited.2 = phi i64 [ %253, %241 ], [ %verticesVisited.113, %.lr.ph14 ]
  %255 = add nsw i64 %j2.012, 1
  %256 = icmp slt i64 %255, %233
  br i1 %256, label %.lr.ph14, label %._crit_edge15.loopexit

._crit_edge15.loopexit:                           ; preds = %254
  %verticesVisited.2.lcssa = phi i64 [ %verticesVisited.2, %254 ]
  br label %._crit_edge15

._crit_edge15:                                    ; preds = %._crit_edge15.loopexit, %.critedge
  %verticesVisited.1.lcssa = phi i64 [ %verticesVisited.0, %.critedge ], [ %verticesVisited.2.lcssa, %._crit_edge15.loopexit ]
  %257 = sitofp i64 %verticesVisited.1.lcssa to float
  %258 = fdiv float %257, %175
  %259 = fcmp ogt float %258, 5.000000e-01
  br i1 %259, label %260, label %283

; <label>:260                                     ; preds = %._crit_edge15
  %261 = load i64, i64* %210, align 8
  %262 = sdiv i64 %verticesVisited.1.lcssa, %24
  %263 = add nsw i64 %262, 2
  %264 = icmp eq i64 %261, %263
  br i1 %264, label %283, label %265

; <label>:265                                     ; preds = %260
  %266 = add i64 %261, 1
  store i64 %266, i64* %210, align 8
  %267 = call noalias i8* @malloc(i64 %176) #5
  %268 = load i64, i64* %210, align 8
  %269 = add i64 %268, -1
  %270 = load %struct.V**, %struct.V*** %185, align 8
  %271 = getelementptr inbounds %struct.V*, %struct.V** %270, i64 %269
  %272 = bitcast %struct.V** %271 to i8**
  store i8* %267, i8** %272, align 8
  %273 = load i64, i64* %210, align 8
  %274 = add i64 %273, -1
  %275 = load %struct.V**, %struct.V*** %185, align 8
  %276 = getelementptr inbounds %struct.V*, %struct.V** %275, i64 %274
  %277 = load %struct.V*, %struct.V** %276, align 8
  %278 = icmp eq %struct.V* %277, null
  br i1 %278, label %279, label %280

; <label>:279                                     ; preds = %265
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 522, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i64 0, i64 0)) #6
  unreachable

; <label>:280                                     ; preds = %265
  %281 = load i64*, i64** %200, align 8
  %282 = getelementptr inbounds i64, i64* %281, i64 %274
  store i64 0, i64* %282, align 8
  br label %283

; <label>:283                                     ; preds = %260, %280, %._crit_edge15
  %284 = add nsw i64 %verticesVisited.1.lcssa, -1
  %285 = icmp slt i64 %currIndex.0, %284
  br i1 %285, label %286, label %.loopexit.loopexit

; <label>:286                                     ; preds = %283
  %287 = load i64, i64* %164, align 8
  %288 = icmp ult i64 %verticesVisited.1.lcssa, %287
  br i1 %288, label %289, label %.loopexit.loopexit

; <label>:289                                     ; preds = %286
  %290 = add nuw nsw i64 %currIndex.0, 1
  %291 = sdiv i64 %290, %24
  %292 = srem i64 %290, %24
  %293 = load %struct.V**, %struct.V*** %185, align 8
  %294 = getelementptr inbounds %struct.V*, %struct.V** %293, i64 %291
  %295 = load %struct.V*, %struct.V** %294, align 8
  %296 = getelementptr inbounds %struct.V, %struct.V* %295, i64 %292, i32 1
  %297 = load i64, i64* %296, align 8
  br label %211

; <label>:298                                     ; preds = %._crit_edge
  %299 = sub nsw i64 %i.117, %14
  %300 = getelementptr inbounds %struct.edge, %struct.edge* %17, i64 %299, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = getelementptr inbounds %struct.Vd, %struct.Vd* %8, i64 %299, i32 2
  %303 = load %struct.V**, %struct.V*** %302, align 8
  %304 = load %struct.V*, %struct.V** %303, align 8
  %305 = getelementptr inbounds %struct.V, %struct.V* %304, i64 0, i32 0
  store i64 %301, i64* %305, align 8
  %306 = load %struct.V**, %struct.V*** %302, align 8
  %307 = load %struct.V*, %struct.V** %306, align 8
  %308 = getelementptr inbounds %struct.V, %struct.V* %307, i64 0, i32 1
  store i64 -1, i64* %308, align 8
  %309 = getelementptr inbounds %struct.edge, %struct.edge* %17, i64 %299, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.V**, %struct.V*** %302, align 8
  %312 = load %struct.V*, %struct.V** %311, align 8
  %313 = getelementptr inbounds %struct.V, %struct.V* %312, i64 1, i32 0
  store i64 %310, i64* %313, align 8
  %314 = load %struct.V**, %struct.V*** %302, align 8
  %315 = load %struct.V*, %struct.V** %314, align 8
  %316 = getelementptr inbounds %struct.V, %struct.V* %315, i64 1, i32 1
  store i64 1, i64* %316, align 8
  %317 = getelementptr inbounds %struct.Vd, %struct.Vd* %8, i64 %299, i32 1
  %318 = load i64*, i64** %317, align 8
  store i64 2, i64* %318, align 8
  %319 = load %struct.V**, %struct.V*** %302, align 8
  %320 = load %struct.V*, %struct.V** %319, align 8
  %321 = getelementptr inbounds %struct.V, %struct.V* %320, i64 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = getelementptr inbounds i8, i8* %166, i64 %322
  store i8 118, i8* %323, align 1
  %324 = getelementptr inbounds %struct.V, %struct.V* %320, i64 1, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = getelementptr inbounds i8, i8* %166, i64 %325
  store i8 118, i8* %326, align 1
  %327 = getelementptr inbounds %struct.Vd, %struct.Vd* %8, i64 %299, i32 0
  br label %328

; <label>:328                                     ; preds = %406, %298
  %329 = phi %struct.V** [ %319, %298 ], [ %410, %406 ]
  %currIndex8.0 = phi i64 [ 1, %298 ], [ %407, %406 ]
  %verticesVisited7.0 = phi i64 [ 2, %298 ], [ %verticesVisited7.1.lcssa, %406 ]
  %depth6.0 = phi i64 [ 1, %298 ], [ %414, %406 ]
  %330 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %331 = icmp slt i64 %depth6.0, %330
  br i1 %331, label %.critedge1, label %332

; <label>:332                                     ; preds = %328
  %333 = load i64, i64* %164, align 8
  %334 = icmp eq i64 %verticesVisited7.0, %333
  br i1 %334, label %.critedge1, label %.loopexit.loopexit65

.critedge1:                                       ; preds = %328, %332
  %335 = sdiv i64 %currIndex8.0, %24
  %336 = srem i64 %currIndex8.0, %24
  %337 = getelementptr inbounds %struct.V*, %struct.V** %329, i64 %335
  %338 = load %struct.V*, %struct.V** %337, align 8
  %339 = getelementptr inbounds %struct.V, %struct.V* %338, i64 %336, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = getelementptr inbounds %struct.V, %struct.V* %338, i64 %336, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = add nsw i64 %342, 1
  %344 = load i64*, i64** %173, align 8
  %345 = getelementptr inbounds i64, i64* %344, i64 %340
  %346 = load i64, i64* %345, align 8
  %347 = load i64*, i64** %174, align 8
  %348 = getelementptr inbounds i64, i64* %347, i64 %340
  %349 = load i64, i64* %348, align 8
  %350 = add nsw i64 %349, %346
  %351 = icmp sgt i64 %349, 0
  br i1 %351, label %.lr.ph10.preheader, label %._crit_edge11

.lr.ph10.preheader:                               ; preds = %.critedge1
  br label %.lr.ph10

.lr.ph10:                                         ; preds = %.lr.ph10.preheader, %371
  %j13.09 = phi i64 [ %372, %371 ], [ %346, %.lr.ph10.preheader ]
  %verticesVisited7.18 = phi i64 [ %verticesVisited7.2, %371 ], [ %verticesVisited7.0, %.lr.ph10.preheader ]
  %352 = load i64*, i64** %177, align 8
  %353 = getelementptr inbounds i64, i64* %352, i64 %j13.09
  %354 = load i64, i64* %353, align 8
  %355 = getelementptr inbounds i8, i8* %166, i64 %354
  %356 = load i8, i8* %355, align 1
  %357 = icmp eq i8 %356, 117
  br i1 %357, label %358, label %371

; <label>:358                                     ; preds = %.lr.ph10
  store i8 118, i8* %355, align 1
  %359 = sdiv i64 %verticesVisited7.18, %24
  %360 = srem i64 %verticesVisited7.18, %24
  %361 = load %struct.V**, %struct.V*** %302, align 8
  %362 = getelementptr inbounds %struct.V*, %struct.V** %361, i64 %359
  %363 = load %struct.V*, %struct.V** %362, align 8
  %364 = getelementptr inbounds %struct.V, %struct.V* %363, i64 %360, i32 0
  store i64 %354, i64* %364, align 8
  %365 = getelementptr inbounds %struct.V, %struct.V* %363, i64 %360, i32 1
  store i64 %343, i64* %365, align 8
  %366 = load i64*, i64** %317, align 8
  %367 = getelementptr inbounds i64, i64* %366, i64 %359
  %368 = load i64, i64* %367, align 8
  %369 = add i64 %368, 1
  store i64 %369, i64* %367, align 8
  %370 = add nsw i64 %verticesVisited7.18, 1
  br label %371

; <label>:371                                     ; preds = %.lr.ph10, %358
  %verticesVisited7.2 = phi i64 [ %370, %358 ], [ %verticesVisited7.18, %.lr.ph10 ]
  %372 = add nsw i64 %j13.09, 1
  %373 = icmp slt i64 %372, %350
  br i1 %373, label %.lr.ph10, label %._crit_edge11.loopexit

._crit_edge11.loopexit:                           ; preds = %371
  %verticesVisited7.2.lcssa = phi i64 [ %verticesVisited7.2, %371 ]
  br label %._crit_edge11

._crit_edge11:                                    ; preds = %._crit_edge11.loopexit, %.critedge1
  %verticesVisited7.1.lcssa = phi i64 [ %verticesVisited7.0, %.critedge1 ], [ %verticesVisited7.2.lcssa, %._crit_edge11.loopexit ]
  %374 = sitofp i64 %verticesVisited7.1.lcssa to float
  %375 = fdiv float %374, %175
  %376 = fcmp ogt float %375, 5.000000e-01
  br i1 %376, label %377, label %400

; <label>:377                                     ; preds = %._crit_edge11
  %378 = load i64, i64* %327, align 8
  %379 = sdiv i64 %verticesVisited7.1.lcssa, %24
  %380 = add nsw i64 %379, 2
  %381 = icmp eq i64 %378, %380
  br i1 %381, label %400, label %382

; <label>:382                                     ; preds = %377
  %383 = add i64 %378, 1
  store i64 %383, i64* %327, align 8
  %384 = call noalias i8* @malloc(i64 %176) #5
  %385 = load i64, i64* %327, align 8
  %386 = add i64 %385, -1
  %387 = load %struct.V**, %struct.V*** %302, align 8
  %388 = getelementptr inbounds %struct.V*, %struct.V** %387, i64 %386
  %389 = bitcast %struct.V** %388 to i8**
  store i8* %384, i8** %389, align 8
  %390 = load i64, i64* %327, align 8
  %391 = add i64 %390, -1
  %392 = load %struct.V**, %struct.V*** %302, align 8
  %393 = getelementptr inbounds %struct.V*, %struct.V** %392, i64 %391
  %394 = load %struct.V*, %struct.V** %393, align 8
  %395 = icmp eq %struct.V* %394, null
  br i1 %395, label %396, label %397

; <label>:396                                     ; preds = %382
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 591, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i64 0, i64 0)) #6
  unreachable

; <label>:397                                     ; preds = %382
  %398 = load i64*, i64** %317, align 8
  %399 = getelementptr inbounds i64, i64* %398, i64 %391
  store i64 0, i64* %399, align 8
  br label %400

; <label>:400                                     ; preds = %377, %397, %._crit_edge11
  %401 = add nsw i64 %verticesVisited7.1.lcssa, -1
  %402 = icmp slt i64 %currIndex8.0, %401
  br i1 %402, label %403, label %.loopexit.loopexit65

; <label>:403                                     ; preds = %400
  %404 = load i64, i64* %164, align 8
  %405 = icmp ult i64 %verticesVisited7.1.lcssa, %404
  br i1 %405, label %406, label %.loopexit.loopexit65

; <label>:406                                     ; preds = %403
  %407 = add nuw nsw i64 %currIndex8.0, 1
  %408 = sdiv i64 %407, %24
  %409 = srem i64 %407, %24
  %410 = load %struct.V**, %struct.V*** %302, align 8
  %411 = getelementptr inbounds %struct.V*, %struct.V** %410, i64 %408
  %412 = load %struct.V*, %struct.V** %411, align 8
  %413 = getelementptr inbounds %struct.V, %struct.V* %412, i64 %409, i32 1
  %414 = load i64, i64* %413, align 8
  br label %328

.loopexit.loopexit:                               ; preds = %215, %286, %283
  br label %.loopexit

.loopexit.loopexit65:                             ; preds = %332, %403, %400
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit65, %.loopexit.loopexit
  %415 = add nsw i64 %i.117, 1
  %416 = load i64, i64* %i_stop, align 8
  %417 = icmp slt i64 %415, %416
  br i1 %417, label %.loopexit..preheader_crit_edge, label %._crit_edge20.loopexit

.loopexit..preheader_crit_edge:                   ; preds = %.loopexit
  %.pre46 = load i64, i64* %164, align 8
  br label %.preheader

._crit_edge20.loopexit:                           ; preds = %.loopexit
  br label %._crit_edge20

._crit_edge20:                                    ; preds = %._crit_edge20.loopexit, %169
  call void @free(i8* %166) #5
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
