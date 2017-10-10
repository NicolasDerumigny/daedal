; ModuleID = 'genScalData.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._tm_thread_context_t = type { i32, i32, %struct.simple_metadata*, i32, i32, [44 x i8] }
%struct.simple_metadata = type opaque
%struct.graphSDG = type { i64*, i64*, i64*, i8*, i64 }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }

@.str = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"genScalData.c\00", align 1
@__PRETTY_FUNCTION__.genScalData_seq = private unnamed_addr constant [33 x i8] c"void genScalData_seq(graphSDG *)\00", align 1
@TOT_VERTICES = external global i64, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"permV\00", align 1
@MAX_CLIQUE_SIZE = external global i64, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"cliqueSizes\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"lastVsInCliques\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"firstVsInCliques\00", align 1
@SCALE = external global i64, align 8
@MAX_PARAL_EDGES = external global i64, align 8
@PROB_UNIDIRECTIONAL = external global float, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"startV\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"endV\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"tmpEdgeCounter\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"tmpEdgeCounter[i]\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"startVertex\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"endVertex\00", align 1
@PROB_INTERCL_EDGES = external global float, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"Finished generating edges\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"No. of intra-clique edges - %lu\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"No. of inter-clique edges - %lu\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Total no. of edges        - %lu\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"SDGdataPtr->intWeight\00", align 1
@PERC_INT_WEIGHTS = external global float, align 4
@MAX_INT_WEIGHT = external global i64, align 8
@MAX_STRLEN = external global i64, align 8
@.str.17 = private unnamed_addr constant [22 x i8] c"SDGdataPtr->strWeight\00", align 1
@SOUGHT_STRING = external global i8*, align 8
@.str.18 = private unnamed_addr constant [14 x i8] c"SOUGHT_STRING\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"SDGdataPtr->startVertex\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"SDGdataPtr->endVertex\00", align 1
@thread_contexts = external global %struct._tm_thread_context_t*, align 8
@__PRETTY_FUNCTION__.genScalData = private unnamed_addr constant [25 x i8] c"void genScalData(void *)\00", align 1
@global_permV = internal global i64* null, align 8
@global_cliqueSizes = internal global i64* null, align 8
@global_lastVsInCliques = internal global i64* null, align 8
@global_firstVsInCliques = internal global i64* null, align 8
@global_totCliques = internal global i64 0, align 8
@.str.21 = private unnamed_addr constant [19 x i8] c"i_edgeStartCounter\00", align 1
@global_i_edgeStartCounter = internal global i64* null, align 8
@.str.22 = private unnamed_addr constant [17 x i8] c"i_edgeEndCounter\00", align 1
@global_i_edgeEndCounter = internal global i64* null, align 8
@global_edgeNum = internal global i64 0, align 8
@global_startVertex = internal global i64* null, align 8
@global_endVertex = internal global i64* null, align 8
@global_numStrWtEdges = internal global i64 0, align 8
@.str.23 = private unnamed_addr constant [10 x i8] c"tempIndex\00", align 1
@global_tempIndex = internal global i64* null, align 8

; Function Attrs: nounwind uwtable
define void @genScalData_seq(%struct.graphSDG* %SDGdataPtr) #0 {
  %1 = alloca %struct.graphSDG*, align 8
  %stream = alloca %struct.random*, align 8
  %permV = alloca i64*, align 8
  %i = alloca i64, align 8
  %t1 = alloca i64, align 8
  %t = alloca i64, align 8
  %t2 = alloca i64, align 8
  %cliqueSizes = alloca i64*, align 8
  %estTotCliques = alloca i64, align 8
  %totCliques = alloca i64, align 8
  %lastVsInCliques = alloca i64*, align 8
  %firstVsInCliques = alloca i64*, align 8
  %estTotEdges = alloca i64, align 8
  %i_edgePtr = alloca i64, align 8
  %p = alloca float, align 4
  %startV = alloca i64*, align 8
  %endV = alloca i64*, align 8
  %numByte = alloca i64, align 8
  %tmpEdgeCounter = alloca i64**, align 8
  %i_clique = alloca i64, align 8
  %i_cliqueSize = alloca i64, align 8
  %i_firstVsInClique = alloca i64, align 8
  %j = alloca i64, align 8
  %r = alloca float, align 4
  %randNumEdges = alloca i64, align 8
  %i_paralEdge = alloca i64, align 8
  %j1 = alloca i64, align 8
  %r2 = alloca float, align 4
  %i_edgeStartCounter = alloca i64, align 8
  %i_edgeEndCounter = alloca i64, align 8
  %edgeNum = alloca i64, align 8
  %startVertex = alloca i64*, align 8
  %endVertex = alloca i64*, align 8
  %numByte3 = alloca i64, align 8
  %numByte4 = alloca i64, align 8
  %numEdgesPlacedInCliques = alloca i64, align 8
  %tempVertex1 = alloca i64, align 8
  %h = alloca i64, align 8
  %l = alloca i64, align 8
  %t5 = alloca i64, align 8
  %m = alloca i64, align 8
  %m6 = alloca i64, align 8
  %t17 = alloca i64, align 8
  %d = alloca i64, align 8
  %r8 = alloca float, align 4
  %tempVertex2 = alloca i64, align 8
  %m9 = alloca i64, align 8
  %m10 = alloca i64, align 8
  %t211 = alloca i64, align 8
  %randNumEdges12 = alloca i64, align 8
  %j13 = alloca i64, align 8
  %r0 = alloca float, align 4
  %tempVertex214 = alloca i64, align 8
  %m15 = alloca i64, align 8
  %m16 = alloca i64, align 8
  %t217 = alloca i64, align 8
  %randNumEdges18 = alloca i64, align 8
  %j19 = alloca i64, align 8
  %numEdgesPlacedOutside = alloca i64, align 8
  %numEdgesPlaced = alloca i64, align 8
  %numStrWtEdges = alloca i64, align 8
  %r20 = alloca float, align 4
  %t21 = alloca i64, align 8
  %j22 = alloca i64, align 8
  %j23 = alloca i64, align 8
  %i0 = alloca i64, align 8
  %i1 = alloca i64, align 8
  %j24 = alloca i64, align 8
  %k = alloca i64, align 8
  %t25 = alloca i64, align 8
  %j26 = alloca i64, align 8
  %k27 = alloca i64, align 8
  %t28 = alloca i64, align 8
  %tempIndex = alloca i64*, align 8
  %i029 = alloca i64, align 8
  %j30 = alloca i64, align 8
  %j31 = alloca i64, align 8
  %k32 = alloca i64, align 8
  %t33 = alloca i64, align 8
  store %struct.graphSDG* %SDGdataPtr, %struct.graphSDG** %1, align 8
  %2 = call %struct.random* (...) @random_alloc()
  store %struct.random* %2, %struct.random** %stream, align 8
  %3 = load %struct.random*, %struct.random** %stream, align 8
  %4 = icmp ne %struct.random* %3, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  br label %8

; <label>:6                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 107, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %8

; <label>:8                                       ; preds = %7, %5
  %9 = load %struct.random*, %struct.random** %stream, align 8
  call void @random_seed(%struct.random* %9, i64 0)
  %10 = load i64, i64* @TOT_VERTICES, align 8
  %11 = mul i64 %10, 8
  %12 = call noalias i8* @malloc(i64 %11) #6
  %13 = bitcast i8* %12 to i64*
  store i64* %13, i64** %permV, align 8
  %14 = load i64*, i64** %permV, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %8
  br label %19

; <label>:17                                      ; preds = %8
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %19

; <label>:19                                      ; preds = %18, %16
  store i64 0, i64* %i, align 8
  br label %20

; <label>:20                                      ; preds = %29, %19
  %21 = load i64, i64* %i, align 8
  %22 = load i64, i64* @TOT_VERTICES, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %32

; <label>:24                                      ; preds = %20
  %25 = load i64, i64* %i, align 8
  %26 = load i64, i64* %i, align 8
  %27 = load i64*, i64** %permV, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 %26
  store i64 %25, i64* %28, align 8
  br label %29

; <label>:29                                      ; preds = %24
  %30 = load i64, i64* %i, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %i, align 8
  br label %20

; <label>:32                                      ; preds = %20
  store i64 0, i64* %i, align 8
  br label %33

; <label>:33                                      ; preds = %67, %32
  %34 = load i64, i64* %i, align 8
  %35 = load i64, i64* @TOT_VERTICES, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %70

; <label>:37                                      ; preds = %33
  %38 = load %struct.random*, %struct.random** %stream, align 8
  %39 = call i64 @random_generate(%struct.random* %38)
  store i64 %39, i64* %t1, align 8
  %40 = load i64, i64* %i, align 8
  %41 = load i64, i64* %t1, align 8
  %42 = load i64, i64* @TOT_VERTICES, align 8
  %43 = load i64, i64* %i, align 8
  %44 = sub i64 %42, %43
  %45 = urem i64 %41, %44
  %46 = add i64 %40, %45
  store i64 %46, i64* %t, align 8
  %47 = load i64, i64* %t, align 8
  %48 = load i64, i64* %i, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %66

; <label>:50                                      ; preds = %37
  %51 = load i64, i64* %t, align 8
  %52 = load i64*, i64** %permV, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 %51
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %t2, align 8
  %55 = load i64, i64* %i, align 8
  %56 = load i64*, i64** %permV, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 %55
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %t, align 8
  %60 = load i64*, i64** %permV, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 %59
  store i64 %58, i64* %61, align 8
  %62 = load i64, i64* %t2, align 8
  %63 = load i64, i64* %i, align 8
  %64 = load i64*, i64** %permV, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 %63
  store i64 %62, i64* %65, align 8
  br label %66

; <label>:66                                      ; preds = %50, %37
  br label %67

; <label>:67                                      ; preds = %66
  %68 = load i64, i64* %i, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %i, align 8
  br label %33

; <label>:70                                      ; preds = %33
  %71 = load i64, i64* @TOT_VERTICES, align 8
  %72 = uitofp i64 %71 to double
  %73 = fmul double 1.500000e+00, %72
  %74 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %75 = add nsw i64 1, %74
  %76 = sdiv i64 %75, 2
  %77 = sitofp i64 %76 to double
  %78 = fdiv double %73, %77
  %79 = call double @ceil(double %78) #8
  %80 = fptosi double %79 to i64
  store i64 %80, i64* %estTotCliques, align 8
  %81 = load i64, i64* %estTotCliques, align 8
  %82 = mul i64 %81, 8
  %83 = call noalias i8* @malloc(i64 %82) #6
  %84 = bitcast i8* %83 to i64*
  store i64* %84, i64** %cliqueSizes, align 8
  %85 = load i64*, i64** %cliqueSizes, align 8
  %86 = icmp ne i64* %85, null
  br i1 %86, label %87, label %88

; <label>:87                                      ; preds = %70
  br label %90

; <label>:88                                      ; preds = %70
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 144, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %90

; <label>:90                                      ; preds = %89, %87
  store i64 0, i64* %i, align 8
  br label %91

; <label>:91                                      ; preds = %104, %90
  %92 = load i64, i64* %i, align 8
  %93 = load i64, i64* %estTotCliques, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %107

; <label>:95                                      ; preds = %91
  %96 = load %struct.random*, %struct.random** %stream, align 8
  %97 = call i64 @random_generate(%struct.random* %96)
  %98 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %99 = urem i64 %97, %98
  %100 = add i64 1, %99
  %101 = load i64, i64* %i, align 8
  %102 = load i64*, i64** %cliqueSizes, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 %101
  store i64 %100, i64* %103, align 8
  br label %104

; <label>:104                                     ; preds = %95
  %105 = load i64, i64* %i, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %i, align 8
  br label %91

; <label>:107                                     ; preds = %91
  store i64 0, i64* %totCliques, align 8
  %108 = load i64, i64* %estTotCliques, align 8
  %109 = mul i64 %108, 8
  %110 = call noalias i8* @malloc(i64 %109) #6
  %111 = bitcast i8* %110 to i64*
  store i64* %111, i64** %lastVsInCliques, align 8
  %112 = load i64*, i64** %lastVsInCliques, align 8
  %113 = icmp ne i64* %112, null
  br i1 %113, label %114, label %115

; <label>:114                                     ; preds = %107
  br label %117

; <label>:115                                     ; preds = %107
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 162, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %117

; <label>:117                                     ; preds = %116, %114
  %118 = load i64, i64* %estTotCliques, align 8
  %119 = mul i64 %118, 8
  %120 = call noalias i8* @malloc(i64 %119) #6
  %121 = bitcast i8* %120 to i64*
  store i64* %121, i64** %firstVsInCliques, align 8
  %122 = load i64*, i64** %firstVsInCliques, align 8
  %123 = icmp ne i64* %122, null
  br i1 %123, label %124, label %125

; <label>:124                                     ; preds = %117
  br label %127

; <label>:125                                     ; preds = %117
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 164, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %127

; <label>:127                                     ; preds = %126, %124
  %128 = load i64*, i64** %cliqueSizes, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 0
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 %130, 1
  %132 = load i64*, i64** %lastVsInCliques, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 0
  store i64 %131, i64* %133, align 8
  store i64 1, i64* %i, align 8
  br label %134

; <label>:134                                     ; preds = %161, %127
  %135 = load i64, i64* %i, align 8
  %136 = load i64, i64* %estTotCliques, align 8
  %137 = icmp slt i64 %135, %136
  br i1 %137, label %138, label %164

; <label>:138                                     ; preds = %134
  %139 = load i64, i64* %i, align 8
  %140 = load i64*, i64** %cliqueSizes, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 %139
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %i, align 8
  %144 = sub nsw i64 %143, 1
  %145 = load i64*, i64** %lastVsInCliques, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 %144
  %147 = load i64, i64* %146, align 8
  %148 = add i64 %142, %147
  %149 = load i64, i64* %i, align 8
  %150 = load i64*, i64** %lastVsInCliques, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 %149
  store i64 %148, i64* %151, align 8
  %152 = load i64, i64* %i, align 8
  %153 = load i64*, i64** %lastVsInCliques, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 %152
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @TOT_VERTICES, align 8
  %157 = sub i64 %156, 1
  %158 = icmp uge i64 %155, %157
  br i1 %158, label %159, label %160

; <label>:159                                     ; preds = %138
  br label %164

; <label>:160                                     ; preds = %138
  br label %161

; <label>:161                                     ; preds = %160
  %162 = load i64, i64* %i, align 8
  %163 = add nsw i64 %162, 1
  store i64 %163, i64* %i, align 8
  br label %134

; <label>:164                                     ; preds = %159, %134
  %165 = load i64, i64* %i, align 8
  %166 = add nsw i64 %165, 1
  store i64 %166, i64* %totCliques, align 8
  %167 = load i64, i64* @TOT_VERTICES, align 8
  %168 = load i64, i64* %totCliques, align 8
  %169 = sub nsw i64 %168, 2
  %170 = load i64*, i64** %lastVsInCliques, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 %169
  %172 = load i64, i64* %171, align 8
  %173 = sub i64 %167, %172
  %174 = sub i64 %173, 1
  %175 = load i64, i64* %totCliques, align 8
  %176 = sub nsw i64 %175, 1
  %177 = load i64*, i64** %cliqueSizes, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 %176
  store i64 %174, i64* %178, align 8
  %179 = load i64, i64* @TOT_VERTICES, align 8
  %180 = sub i64 %179, 1
  %181 = load i64, i64* %totCliques, align 8
  %182 = sub nsw i64 %181, 1
  %183 = load i64*, i64** %lastVsInCliques, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 %182
  store i64 %180, i64* %184, align 8
  %185 = load i64*, i64** %firstVsInCliques, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 0
  store i64 0, i64* %186, align 8
  store i64 1, i64* %i, align 8
  br label %187

; <label>:187                                     ; preds = %201, %164
  %188 = load i64, i64* %i, align 8
  %189 = load i64, i64* %totCliques, align 8
  %190 = icmp slt i64 %188, %189
  br i1 %190, label %191, label %204

; <label>:191                                     ; preds = %187
  %192 = load i64, i64* %i, align 8
  %193 = sub nsw i64 %192, 1
  %194 = load i64*, i64** %lastVsInCliques, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 %193
  %196 = load i64, i64* %195, align 8
  %197 = add i64 %196, 1
  %198 = load i64, i64* %i, align 8
  %199 = load i64*, i64** %firstVsInCliques, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 %198
  store i64 %197, i64* %200, align 8
  br label %201

; <label>:201                                     ; preds = %191
  %202 = load i64, i64* %i, align 8
  %203 = add nsw i64 %202, 1
  store i64 %203, i64* %i, align 8
  br label %187

; <label>:204                                     ; preds = %187
  %205 = load i64, i64* @SCALE, align 8
  %206 = icmp sge i64 %205, 12
  br i1 %206, label %207, label %215

; <label>:207                                     ; preds = %204
  %208 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %209 = sub nsw i64 %208, 1
  %210 = load i64, i64* @TOT_VERTICES, align 8
  %211 = mul i64 %209, %210
  %212 = uitofp i64 %211 to double
  %213 = call double @ceil(double %212) #8
  %214 = fptosi double %213 to i64
  store i64 %214, i64* %estTotEdges, align 8
  br label %231

; <label>:215                                     ; preds = %204
  %216 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %217 = sub nsw i64 %216, 1
  %218 = load i64, i64* @TOT_VERTICES, align 8
  %219 = mul i64 %217, %218
  %220 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %221 = add nsw i64 1, %220
  %222 = sdiv i64 %221, 2
  %223 = mul i64 %219, %222
  %224 = load i64, i64* @TOT_VERTICES, align 8
  %225 = mul i64 %224, 2
  %226 = add i64 %223, %225
  %227 = uitofp i64 %226 to double
  %228 = fmul double 1.200000e+00, %227
  %229 = call double @ceil(double %228) #8
  %230 = fptosi double %229 to i64
  store i64 %230, i64* %estTotEdges, align 8
  br label %231

; <label>:231                                     ; preds = %215, %207
  store i64 0, i64* %i_edgePtr, align 8
  %232 = load float, float* @PROB_UNIDIRECTIONAL, align 4
  store float %232, float* %p, align 4
  %233 = load i64, i64* %estTotEdges, align 8
  %234 = mul i64 %233, 8
  store i64 %234, i64* %numByte, align 8
  %235 = load i64, i64* %numByte, align 8
  %236 = call noalias i8* @malloc(i64 %235) #6
  %237 = bitcast i8* %236 to i64*
  store i64* %237, i64** %startV, align 8
  %238 = load i64, i64* %numByte, align 8
  %239 = call noalias i8* @malloc(i64 %238) #6
  %240 = bitcast i8* %239 to i64*
  store i64* %240, i64** %endV, align 8
  %241 = load i64*, i64** %startV, align 8
  %242 = icmp ne i64* %241, null
  br i1 %242, label %243, label %244

; <label>:243                                     ; preds = %231
  br label %246

; <label>:244                                     ; preds = %231
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 241, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %246

; <label>:246                                     ; preds = %245, %243
  %247 = load i64*, i64** %endV, align 8
  %248 = icmp ne i64* %247, null
  br i1 %248, label %249, label %250

; <label>:249                                     ; preds = %246
  br label %252

; <label>:250                                     ; preds = %246
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 242, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %252

; <label>:252                                     ; preds = %251, %249
  %253 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %254 = mul i64 %253, 8
  %255 = call noalias i8* @malloc(i64 %254) #6
  %256 = bitcast i8* %255 to i64**
  store i64** %256, i64*** %tmpEdgeCounter, align 8
  %257 = load i64**, i64*** %tmpEdgeCounter, align 8
  %258 = icmp ne i64** %257, null
  br i1 %258, label %259, label %260

; <label>:259                                     ; preds = %252
  br label %262

; <label>:260                                     ; preds = %252
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 249, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %262

; <label>:262                                     ; preds = %261, %259
  store i64 0, i64* %i, align 8
  br label %263

; <label>:263                                     ; preds = %284, %262
  %264 = load i64, i64* %i, align 8
  %265 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %266 = icmp slt i64 %264, %265
  br i1 %266, label %267, label %287

; <label>:267                                     ; preds = %263
  %268 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %269 = mul i64 %268, 8
  %270 = call noalias i8* @malloc(i64 %269) #6
  %271 = bitcast i8* %270 to i64*
  %272 = load i64, i64* %i, align 8
  %273 = load i64**, i64*** %tmpEdgeCounter, align 8
  %274 = getelementptr inbounds i64*, i64** %273, i64 %272
  store i64* %271, i64** %274, align 8
  %275 = load i64, i64* %i, align 8
  %276 = load i64**, i64*** %tmpEdgeCounter, align 8
  %277 = getelementptr inbounds i64*, i64** %276, i64 %275
  %278 = load i64*, i64** %277, align 8
  %279 = icmp ne i64* %278, null
  br i1 %279, label %280, label %281

; <label>:280                                     ; preds = %267
  br label %283

; <label>:281                                     ; preds = %267
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 253, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %283

; <label>:283                                     ; preds = %282, %280
  br label %284

; <label>:284                                     ; preds = %283
  %285 = load i64, i64* %i, align 8
  %286 = add nsw i64 %285, 1
  store i64 %286, i64* %i, align 8
  br label %263

; <label>:287                                     ; preds = %263
  store i64 0, i64* %i_clique, align 8
  br label %288

; <label>:288                                     ; preds = %503, %287
  %289 = load i64, i64* %i_clique, align 8
  %290 = load i64, i64* %totCliques, align 8
  %291 = icmp slt i64 %289, %290
  br i1 %291, label %292, label %506

; <label>:292                                     ; preds = %288
  %293 = load i64, i64* %i_clique, align 8
  %294 = load i64*, i64** %cliqueSizes, align 8
  %295 = getelementptr inbounds i64, i64* %294, i64 %293
  %296 = load i64, i64* %295, align 8
  store i64 %296, i64* %i_cliqueSize, align 8
  %297 = load i64, i64* %i_clique, align 8
  %298 = load i64*, i64** %firstVsInCliques, align 8
  %299 = getelementptr inbounds i64, i64* %298, i64 %297
  %300 = load i64, i64* %299, align 8
  store i64 %300, i64* %i_firstVsInClique, align 8
  store i64 0, i64* %i, align 8
  br label %301

; <label>:301                                     ; preds = %424, %292
  %302 = load i64, i64* %i, align 8
  %303 = load i64, i64* %i_cliqueSize, align 8
  %304 = icmp slt i64 %302, %303
  br i1 %304, label %305, label %427

; <label>:305                                     ; preds = %301
  store i64 0, i64* %j, align 8
  br label %306

; <label>:306                                     ; preds = %420, %305
  %307 = load i64, i64* %j, align 8
  %308 = load i64, i64* %i, align 8
  %309 = icmp slt i64 %307, %308
  br i1 %309, label %310, label %423

; <label>:310                                     ; preds = %306
  %311 = load %struct.random*, %struct.random** %stream, align 8
  %312 = call i64 @random_generate(%struct.random* %311)
  %313 = urem i64 %312, 1000
  %314 = uitofp i64 %313 to float
  %315 = fdiv float %314, 1.000000e+03
  store float %315, float* %r, align 4
  %316 = load float, float* %r, align 4
  %317 = load float, float* %p, align 4
  %318 = fcmp oge float %316, %317
  br i1 %318, label %319, label %360

; <label>:319                                     ; preds = %310
  %320 = load i64, i64* %i, align 8
  %321 = load i64, i64* %i_firstVsInClique, align 8
  %322 = add nsw i64 %320, %321
  %323 = load i64, i64* %i_edgePtr, align 8
  %324 = load i64*, i64** %startV, align 8
  %325 = getelementptr inbounds i64, i64* %324, i64 %323
  store i64 %322, i64* %325, align 8
  %326 = load i64, i64* %j, align 8
  %327 = load i64, i64* %i_firstVsInClique, align 8
  %328 = add nsw i64 %326, %327
  %329 = load i64, i64* %i_edgePtr, align 8
  %330 = load i64*, i64** %endV, align 8
  %331 = getelementptr inbounds i64, i64* %330, i64 %329
  store i64 %328, i64* %331, align 8
  %332 = load i64, i64* %i_edgePtr, align 8
  %333 = add nsw i64 %332, 1
  store i64 %333, i64* %i_edgePtr, align 8
  %334 = load i64, i64* %j, align 8
  %335 = load i64, i64* %i, align 8
  %336 = load i64**, i64*** %tmpEdgeCounter, align 8
  %337 = getelementptr inbounds i64*, i64** %336, i64 %335
  %338 = load i64*, i64** %337, align 8
  %339 = getelementptr inbounds i64, i64* %338, i64 %334
  store i64 1, i64* %339, align 8
  %340 = load i64, i64* %j, align 8
  %341 = load i64, i64* %i_firstVsInClique, align 8
  %342 = add nsw i64 %340, %341
  %343 = load i64, i64* %i_edgePtr, align 8
  %344 = load i64*, i64** %startV, align 8
  %345 = getelementptr inbounds i64, i64* %344, i64 %343
  store i64 %342, i64* %345, align 8
  %346 = load i64, i64* %i, align 8
  %347 = load i64, i64* %i_firstVsInClique, align 8
  %348 = add nsw i64 %346, %347
  %349 = load i64, i64* %i_edgePtr, align 8
  %350 = load i64*, i64** %endV, align 8
  %351 = getelementptr inbounds i64, i64* %350, i64 %349
  store i64 %348, i64* %351, align 8
  %352 = load i64, i64* %i_edgePtr, align 8
  %353 = add nsw i64 %352, 1
  store i64 %353, i64* %i_edgePtr, align 8
  %354 = load i64, i64* %i, align 8
  %355 = load i64, i64* %j, align 8
  %356 = load i64**, i64*** %tmpEdgeCounter, align 8
  %357 = getelementptr inbounds i64*, i64** %356, i64 %355
  %358 = load i64*, i64** %357, align 8
  %359 = getelementptr inbounds i64, i64* %358, i64 %354
  store i64 1, i64* %359, align 8
  br label %419

; <label>:360                                     ; preds = %310
  %361 = load float, float* %r, align 4
  %362 = fpext float %361 to double
  %363 = fcmp oge double %362, 5.000000e-01
  br i1 %363, label %364, label %391

; <label>:364                                     ; preds = %360
  %365 = load i64, i64* %i, align 8
  %366 = load i64, i64* %i_firstVsInClique, align 8
  %367 = add nsw i64 %365, %366
  %368 = load i64, i64* %i_edgePtr, align 8
  %369 = load i64*, i64** %startV, align 8
  %370 = getelementptr inbounds i64, i64* %369, i64 %368
  store i64 %367, i64* %370, align 8
  %371 = load i64, i64* %j, align 8
  %372 = load i64, i64* %i_firstVsInClique, align 8
  %373 = add nsw i64 %371, %372
  %374 = load i64, i64* %i_edgePtr, align 8
  %375 = load i64*, i64** %endV, align 8
  %376 = getelementptr inbounds i64, i64* %375, i64 %374
  store i64 %373, i64* %376, align 8
  %377 = load i64, i64* %i_edgePtr, align 8
  %378 = add nsw i64 %377, 1
  store i64 %378, i64* %i_edgePtr, align 8
  %379 = load i64, i64* %j, align 8
  %380 = load i64, i64* %i, align 8
  %381 = load i64**, i64*** %tmpEdgeCounter, align 8
  %382 = getelementptr inbounds i64*, i64** %381, i64 %380
  %383 = load i64*, i64** %382, align 8
  %384 = getelementptr inbounds i64, i64* %383, i64 %379
  store i64 1, i64* %384, align 8
  %385 = load i64, i64* %i, align 8
  %386 = load i64, i64* %j, align 8
  %387 = load i64**, i64*** %tmpEdgeCounter, align 8
  %388 = getelementptr inbounds i64*, i64** %387, i64 %386
  %389 = load i64*, i64** %388, align 8
  %390 = getelementptr inbounds i64, i64* %389, i64 %385
  store i64 0, i64* %390, align 8
  br label %418

; <label>:391                                     ; preds = %360
  %392 = load i64, i64* %j, align 8
  %393 = load i64, i64* %i_firstVsInClique, align 8
  %394 = add nsw i64 %392, %393
  %395 = load i64, i64* %i_edgePtr, align 8
  %396 = load i64*, i64** %startV, align 8
  %397 = getelementptr inbounds i64, i64* %396, i64 %395
  store i64 %394, i64* %397, align 8
  %398 = load i64, i64* %i, align 8
  %399 = load i64, i64* %i_firstVsInClique, align 8
  %400 = add nsw i64 %398, %399
  %401 = load i64, i64* %i_edgePtr, align 8
  %402 = load i64*, i64** %endV, align 8
  %403 = getelementptr inbounds i64, i64* %402, i64 %401
  store i64 %400, i64* %403, align 8
  %404 = load i64, i64* %i_edgePtr, align 8
  %405 = add nsw i64 %404, 1
  store i64 %405, i64* %i_edgePtr, align 8
  %406 = load i64, i64* %i, align 8
  %407 = load i64, i64* %j, align 8
  %408 = load i64**, i64*** %tmpEdgeCounter, align 8
  %409 = getelementptr inbounds i64*, i64** %408, i64 %407
  %410 = load i64*, i64** %409, align 8
  %411 = getelementptr inbounds i64, i64* %410, i64 %406
  store i64 1, i64* %411, align 8
  %412 = load i64, i64* %j, align 8
  %413 = load i64, i64* %i, align 8
  %414 = load i64**, i64*** %tmpEdgeCounter, align 8
  %415 = getelementptr inbounds i64*, i64** %414, i64 %413
  %416 = load i64*, i64** %415, align 8
  %417 = getelementptr inbounds i64, i64* %416, i64 %412
  store i64 0, i64* %417, align 8
  br label %418

; <label>:418                                     ; preds = %391, %364
  br label %419

; <label>:419                                     ; preds = %418, %319
  br label %420

; <label>:420                                     ; preds = %419
  %421 = load i64, i64* %j, align 8
  %422 = add nsw i64 %421, 1
  store i64 %422, i64* %j, align 8
  br label %306

; <label>:423                                     ; preds = %306
  br label %424

; <label>:424                                     ; preds = %423
  %425 = load i64, i64* %i, align 8
  %426 = add nsw i64 %425, 1
  store i64 %426, i64* %i, align 8
  br label %301

; <label>:427                                     ; preds = %301
  %428 = load i64, i64* %i_cliqueSize, align 8
  %429 = icmp ne i64 %428, 1
  br i1 %429, label %430, label %502

; <label>:430                                     ; preds = %427
  %431 = load %struct.random*, %struct.random** %stream, align 8
  %432 = call i64 @random_generate(%struct.random* %431)
  %433 = load i64, i64* %i_cliqueSize, align 8
  %434 = mul nsw i64 2, %433
  %435 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %436 = mul nsw i64 %434, %435
  %437 = urem i64 %432, %436
  store i64 %437, i64* %randNumEdges, align 8
  store i64 0, i64* %i_paralEdge, align 8
  br label %438

; <label>:438                                     ; preds = %498, %430
  %439 = load i64, i64* %i_paralEdge, align 8
  %440 = load i64, i64* %randNumEdges, align 8
  %441 = icmp slt i64 %439, %440
  br i1 %441, label %442, label %501

; <label>:442                                     ; preds = %438
  %443 = load %struct.random*, %struct.random** %stream, align 8
  %444 = call i64 @random_generate(%struct.random* %443)
  %445 = load i64, i64* %i_cliqueSize, align 8
  %446 = urem i64 %444, %445
  store i64 %446, i64* %i, align 8
  %447 = load %struct.random*, %struct.random** %stream, align 8
  %448 = call i64 @random_generate(%struct.random* %447)
  %449 = load i64, i64* %i_cliqueSize, align 8
  %450 = urem i64 %448, %449
  store i64 %450, i64* %j1, align 8
  %451 = load i64, i64* %i, align 8
  %452 = load i64, i64* %j1, align 8
  %453 = icmp ne i64 %451, %452
  br i1 %453, label %454, label %497

; <label>:454                                     ; preds = %442
  %455 = load i64, i64* %j1, align 8
  %456 = load i64, i64* %i, align 8
  %457 = load i64**, i64*** %tmpEdgeCounter, align 8
  %458 = getelementptr inbounds i64*, i64** %457, i64 %456
  %459 = load i64*, i64** %458, align 8
  %460 = getelementptr inbounds i64, i64* %459, i64 %455
  %461 = load i64, i64* %460, align 8
  %462 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %463 = icmp ult i64 %461, %462
  br i1 %463, label %464, label %497

; <label>:464                                     ; preds = %454
  %465 = load %struct.random*, %struct.random** %stream, align 8
  %466 = call i64 @random_generate(%struct.random* %465)
  %467 = urem i64 %466, 1000
  %468 = uitofp i64 %467 to float
  %469 = fdiv float %468, 1.000000e+03
  store float %469, float* %r2, align 4
  %470 = load float, float* %r2, align 4
  %471 = load float, float* %p, align 4
  %472 = fcmp oge float %470, %471
  br i1 %472, label %473, label %496

; <label>:473                                     ; preds = %464
  %474 = load i64, i64* %i, align 8
  %475 = load i64, i64* %i_firstVsInClique, align 8
  %476 = add nsw i64 %474, %475
  %477 = load i64, i64* %i_edgePtr, align 8
  %478 = load i64*, i64** %startV, align 8
  %479 = getelementptr inbounds i64, i64* %478, i64 %477
  store i64 %476, i64* %479, align 8
  %480 = load i64, i64* %j1, align 8
  %481 = load i64, i64* %i_firstVsInClique, align 8
  %482 = add nsw i64 %480, %481
  %483 = load i64, i64* %i_edgePtr, align 8
  %484 = load i64*, i64** %endV, align 8
  %485 = getelementptr inbounds i64, i64* %484, i64 %483
  store i64 %482, i64* %485, align 8
  %486 = load i64, i64* %i_edgePtr, align 8
  %487 = add nsw i64 %486, 1
  store i64 %487, i64* %i_edgePtr, align 8
  %488 = load i64, i64* %j1, align 8
  %489 = load i64, i64* %i, align 8
  %490 = load i64**, i64*** %tmpEdgeCounter, align 8
  %491 = getelementptr inbounds i64*, i64** %490, i64 %489
  %492 = load i64*, i64** %491, align 8
  %493 = getelementptr inbounds i64, i64* %492, i64 %488
  %494 = load i64, i64* %493, align 8
  %495 = add i64 %494, 1
  store i64 %495, i64* %493, align 8
  br label %496

; <label>:496                                     ; preds = %473, %464
  br label %497

; <label>:497                                     ; preds = %496, %454, %442
  br label %498

; <label>:498                                     ; preds = %497
  %499 = load i64, i64* %i_paralEdge, align 8
  %500 = add nsw i64 %499, 1
  store i64 %500, i64* %i_paralEdge, align 8
  br label %438

; <label>:501                                     ; preds = %438
  br label %502

; <label>:502                                     ; preds = %501, %427
  br label %503

; <label>:503                                     ; preds = %502
  %504 = load i64, i64* %i_clique, align 8
  %505 = add nsw i64 %504, 1
  store i64 %505, i64* %i_clique, align 8
  br label %288

; <label>:506                                     ; preds = %288
  store i64 0, i64* %i, align 8
  br label %507

; <label>:507                                     ; preds = %517, %506
  %508 = load i64, i64* %i, align 8
  %509 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %510 = icmp slt i64 %508, %509
  br i1 %510, label %511, label %520

; <label>:511                                     ; preds = %507
  %512 = load i64, i64* %i, align 8
  %513 = load i64**, i64*** %tmpEdgeCounter, align 8
  %514 = getelementptr inbounds i64*, i64** %513, i64 %512
  %515 = load i64*, i64** %514, align 8
  %516 = bitcast i64* %515 to i8*
  call void @free(i8* %516) #6
  br label %517

; <label>:517                                     ; preds = %511
  %518 = load i64, i64* %i, align 8
  %519 = add nsw i64 %518, 1
  store i64 %519, i64* %i, align 8
  br label %507

; <label>:520                                     ; preds = %507
  %521 = load i64**, i64*** %tmpEdgeCounter, align 8
  %522 = bitcast i64** %521 to i8*
  call void @free(i8* %522) #6
  store i64 0, i64* %i_edgeStartCounter, align 8
  %523 = load i64, i64* %i_edgePtr, align 8
  store i64 %523, i64* %i_edgeEndCounter, align 8
  %524 = load i64, i64* %i_edgePtr, align 8
  store i64 %524, i64* %edgeNum, align 8
  %525 = load i64, i64* @SCALE, align 8
  %526 = icmp slt i64 %525, 10
  br i1 %526, label %527, label %537

; <label>:527                                     ; preds = %520
  %528 = load i64, i64* %edgeNum, align 8
  %529 = mul nsw i64 2, %528
  %530 = mul i64 %529, 8
  store i64 %530, i64* %numByte3, align 8
  %531 = load i64, i64* %numByte3, align 8
  %532 = call noalias i8* @malloc(i64 %531) #6
  %533 = bitcast i8* %532 to i64*
  store i64* %533, i64** %startVertex, align 8
  %534 = load i64, i64* %numByte3, align 8
  %535 = call noalias i8* @malloc(i64 %534) #6
  %536 = bitcast i8* %535 to i64*
  store i64* %536, i64** %endVertex, align 8
  br label %550

; <label>:537                                     ; preds = %520
  %538 = load i64, i64* %edgeNum, align 8
  %539 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %540 = load i64, i64* @TOT_VERTICES, align 8
  %541 = mul i64 %539, %540
  %542 = add i64 %538, %541
  %543 = mul i64 %542, 8
  store i64 %543, i64* %numByte4, align 8
  %544 = load i64, i64* %numByte4, align 8
  %545 = call noalias i8* @malloc(i64 %544) #6
  %546 = bitcast i8* %545 to i64*
  store i64* %546, i64** %startVertex, align 8
  %547 = load i64, i64* %numByte4, align 8
  %548 = call noalias i8* @malloc(i64 %547) #6
  %549 = bitcast i8* %548 to i64*
  store i64* %549, i64** %endVertex, align 8
  br label %550

; <label>:550                                     ; preds = %537, %527
  %551 = load i64*, i64** %startVertex, align 8
  %552 = icmp ne i64* %551, null
  br i1 %552, label %553, label %554

; <label>:553                                     ; preds = %550
  br label %556

; <label>:554                                     ; preds = %550
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 367, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %556

; <label>:556                                     ; preds = %555, %553
  %557 = load i64*, i64** %endVertex, align 8
  %558 = icmp ne i64* %557, null
  br i1 %558, label %559, label %560

; <label>:559                                     ; preds = %556
  br label %562

; <label>:560                                     ; preds = %556
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 368, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %562

; <label>:562                                     ; preds = %561, %559
  %563 = load i64, i64* %i_edgeStartCounter, align 8
  store i64 %563, i64* %i, align 8
  br label %564

; <label>:564                                     ; preds = %587, %562
  %565 = load i64, i64* %i, align 8
  %566 = load i64, i64* %i_edgeEndCounter, align 8
  %567 = icmp ult i64 %565, %566
  br i1 %567, label %568, label %590

; <label>:568                                     ; preds = %564
  %569 = load i64, i64* %i, align 8
  %570 = load i64, i64* %i_edgeStartCounter, align 8
  %571 = sub i64 %569, %570
  %572 = load i64*, i64** %startV, align 8
  %573 = getelementptr inbounds i64, i64* %572, i64 %571
  %574 = load i64, i64* %573, align 8
  %575 = load i64, i64* %i, align 8
  %576 = load i64*, i64** %startVertex, align 8
  %577 = getelementptr inbounds i64, i64* %576, i64 %575
  store i64 %574, i64* %577, align 8
  %578 = load i64, i64* %i, align 8
  %579 = load i64, i64* %i_edgeStartCounter, align 8
  %580 = sub i64 %578, %579
  %581 = load i64*, i64** %endV, align 8
  %582 = getelementptr inbounds i64, i64* %581, i64 %580
  %583 = load i64, i64* %582, align 8
  %584 = load i64, i64* %i, align 8
  %585 = load i64*, i64** %endVertex, align 8
  %586 = getelementptr inbounds i64, i64* %585, i64 %584
  store i64 %583, i64* %586, align 8
  br label %587

; <label>:587                                     ; preds = %568
  %588 = load i64, i64* %i, align 8
  %589 = add nsw i64 %588, 1
  store i64 %589, i64* %i, align 8
  br label %564

; <label>:590                                     ; preds = %564
  %591 = load i64, i64* %edgeNum, align 8
  store i64 %591, i64* %numEdgesPlacedInCliques, align 8
  store i64 0, i64* %i_edgePtr, align 8
  %592 = load float, float* @PROB_INTERCL_EDGES, align 4
  store float %592, float* %p, align 4
  store i64 0, i64* %i, align 8
  br label %593

; <label>:593                                     ; preds = %929, %590
  %594 = load i64, i64* %i, align 8
  %595 = load i64, i64* @TOT_VERTICES, align 8
  %596 = icmp ult i64 %594, %595
  br i1 %596, label %597, label %932

; <label>:597                                     ; preds = %593
  %598 = load i64, i64* %i, align 8
  store i64 %598, i64* %tempVertex1, align 8
  %599 = load i64, i64* %totCliques, align 8
  store i64 %599, i64* %h, align 8
  store i64 0, i64* %l, align 8
  store i64 -1, i64* %t5, align 8
  br label %600

; <label>:600                                     ; preds = %643, %597
  %601 = load i64, i64* %h, align 8
  %602 = load i64, i64* %l, align 8
  %603 = sub nsw i64 %601, %602
  %604 = icmp sgt i64 %603, 1
  br i1 %604, label %605, label %644

; <label>:605                                     ; preds = %600
  %606 = load i64, i64* %h, align 8
  %607 = load i64, i64* %l, align 8
  %608 = add nsw i64 %606, %607
  %609 = sdiv i64 %608, 2
  store i64 %609, i64* %m, align 8
  %610 = load i64, i64* %tempVertex1, align 8
  %611 = load i64, i64* %m, align 8
  %612 = load i64*, i64** %firstVsInCliques, align 8
  %613 = getelementptr inbounds i64, i64* %612, i64 %611
  %614 = load i64, i64* %613, align 8
  %615 = icmp uge i64 %610, %614
  br i1 %615, label %616, label %618

; <label>:616                                     ; preds = %605
  %617 = load i64, i64* %m, align 8
  store i64 %617, i64* %l, align 8
  br label %643

; <label>:618                                     ; preds = %605
  %619 = load i64, i64* %tempVertex1, align 8
  %620 = load i64, i64* %m, align 8
  %621 = load i64*, i64** %firstVsInCliques, align 8
  %622 = getelementptr inbounds i64, i64* %621, i64 %620
  %623 = load i64, i64* %622, align 8
  %624 = icmp ult i64 %619, %623
  br i1 %624, label %625, label %642

; <label>:625                                     ; preds = %618
  %626 = load i64, i64* %m, align 8
  %627 = icmp sgt i64 %626, 0
  br i1 %627, label %628, label %642

; <label>:628                                     ; preds = %625
  %629 = load i64, i64* %tempVertex1, align 8
  %630 = load i64, i64* %m, align 8
  %631 = sub nsw i64 %630, 1
  %632 = load i64*, i64** %firstVsInCliques, align 8
  %633 = getelementptr inbounds i64, i64* %632, i64 %631
  %634 = load i64, i64* %633, align 8
  %635 = icmp uge i64 %629, %634
  br i1 %635, label %636, label %639

; <label>:636                                     ; preds = %628
  %637 = load i64, i64* %m, align 8
  %638 = sub nsw i64 %637, 1
  store i64 %638, i64* %t5, align 8
  br label %644

; <label>:639                                     ; preds = %628
  %640 = load i64, i64* %m, align 8
  store i64 %640, i64* %h, align 8
  br label %641

; <label>:641                                     ; preds = %639
  br label %642

; <label>:642                                     ; preds = %641, %625, %618
  br label %643

; <label>:643                                     ; preds = %642, %616
  br label %600

; <label>:644                                     ; preds = %636, %600
  %645 = load i64, i64* %t5, align 8
  %646 = icmp eq i64 %645, -1
  br i1 %646, label %647, label %669

; <label>:647                                     ; preds = %644
  %648 = load i64, i64* %l, align 8
  %649 = add nsw i64 %648, 1
  store i64 %649, i64* %m6, align 8
  br label %650

; <label>:650                                     ; preds = %663, %647
  %651 = load i64, i64* %m6, align 8
  %652 = load i64, i64* %h, align 8
  %653 = icmp slt i64 %651, %652
  br i1 %653, label %654, label %666

; <label>:654                                     ; preds = %650
  %655 = load i64, i64* %tempVertex1, align 8
  %656 = load i64, i64* %m6, align 8
  %657 = load i64*, i64** %firstVsInCliques, align 8
  %658 = getelementptr inbounds i64, i64* %657, i64 %656
  %659 = load i64, i64* %658, align 8
  %660 = icmp ult i64 %655, %659
  br i1 %660, label %661, label %662

; <label>:661                                     ; preds = %654
  br label %666

; <label>:662                                     ; preds = %654
  br label %663

; <label>:663                                     ; preds = %662
  %664 = load i64, i64* %m6, align 8
  %665 = add nsw i64 %664, 1
  store i64 %665, i64* %m6, align 8
  br label %650

; <label>:666                                     ; preds = %661, %650
  %667 = load i64, i64* %m6, align 8
  %668 = sub nsw i64 %667, 1
  store i64 %668, i64* %t5, align 8
  br label %669

; <label>:669                                     ; preds = %666, %644
  %670 = load i64, i64* %t5, align 8
  %671 = load i64*, i64** %firstVsInCliques, align 8
  %672 = getelementptr inbounds i64, i64* %671, i64 %670
  %673 = load i64, i64* %672, align 8
  store i64 %673, i64* %t17, align 8
  store i64 1, i64* %d, align 8
  %674 = load float, float* @PROB_INTERCL_EDGES, align 4
  store float %674, float* %p, align 4
  br label %675

; <label>:675                                     ; preds = %923, %669
  %676 = load i64, i64* %d, align 8
  %677 = load i64, i64* @TOT_VERTICES, align 8
  %678 = icmp ult i64 %676, %677
  br i1 %678, label %679, label %928

; <label>:679                                     ; preds = %675
  %680 = load %struct.random*, %struct.random** %stream, align 8
  %681 = call i64 @random_generate(%struct.random* %680)
  %682 = urem i64 %681, 1000
  %683 = uitofp i64 %682 to float
  %684 = fdiv float %683, 1.000000e+03
  store float %684, float* %r8, align 4
  %685 = load float, float* %r8, align 4
  %686 = load float, float* %p, align 4
  %687 = fcmp ole float %685, %686
  br i1 %687, label %688, label %798

; <label>:688                                     ; preds = %679
  %689 = load i64, i64* %i, align 8
  %690 = load i64, i64* %d, align 8
  %691 = add i64 %689, %690
  %692 = load i64, i64* @TOT_VERTICES, align 8
  %693 = urem i64 %691, %692
  store i64 %693, i64* %tempVertex2, align 8
  %694 = load i64, i64* %totCliques, align 8
  store i64 %694, i64* %h, align 8
  store i64 0, i64* %l, align 8
  store i64 -1, i64* %t5, align 8
  br label %695

; <label>:695                                     ; preds = %738, %688
  %696 = load i64, i64* %h, align 8
  %697 = load i64, i64* %l, align 8
  %698 = sub nsw i64 %696, %697
  %699 = icmp sgt i64 %698, 1
  br i1 %699, label %700, label %739

; <label>:700                                     ; preds = %695
  %701 = load i64, i64* %h, align 8
  %702 = load i64, i64* %l, align 8
  %703 = add nsw i64 %701, %702
  %704 = sdiv i64 %703, 2
  store i64 %704, i64* %m9, align 8
  %705 = load i64, i64* %tempVertex2, align 8
  %706 = load i64, i64* %m9, align 8
  %707 = load i64*, i64** %firstVsInCliques, align 8
  %708 = getelementptr inbounds i64, i64* %707, i64 %706
  %709 = load i64, i64* %708, align 8
  %710 = icmp uge i64 %705, %709
  br i1 %710, label %711, label %713

; <label>:711                                     ; preds = %700
  %712 = load i64, i64* %m9, align 8
  store i64 %712, i64* %l, align 8
  br label %738

; <label>:713                                     ; preds = %700
  %714 = load i64, i64* %tempVertex2, align 8
  %715 = load i64, i64* %m9, align 8
  %716 = load i64*, i64** %firstVsInCliques, align 8
  %717 = getelementptr inbounds i64, i64* %716, i64 %715
  %718 = load i64, i64* %717, align 8
  %719 = icmp ult i64 %714, %718
  br i1 %719, label %720, label %737

; <label>:720                                     ; preds = %713
  %721 = load i64, i64* %m9, align 8
  %722 = icmp sgt i64 %721, 0
  br i1 %722, label %723, label %737

; <label>:723                                     ; preds = %720
  %724 = load i64, i64* %m9, align 8
  %725 = sub nsw i64 %724, 1
  %726 = load i64*, i64** %firstVsInCliques, align 8
  %727 = getelementptr inbounds i64, i64* %726, i64 %725
  %728 = load i64, i64* %727, align 8
  %729 = load i64, i64* %tempVertex2, align 8
  %730 = icmp ule i64 %728, %729
  br i1 %730, label %731, label %734

; <label>:731                                     ; preds = %723
  %732 = load i64, i64* %m9, align 8
  %733 = sub nsw i64 %732, 1
  store i64 %733, i64* %t5, align 8
  br label %739

; <label>:734                                     ; preds = %723
  %735 = load i64, i64* %m9, align 8
  store i64 %735, i64* %h, align 8
  br label %736

; <label>:736                                     ; preds = %734
  br label %737

; <label>:737                                     ; preds = %736, %720, %713
  br label %738

; <label>:738                                     ; preds = %737, %711
  br label %695

; <label>:739                                     ; preds = %731, %695
  %740 = load i64, i64* %t5, align 8
  %741 = icmp eq i64 %740, -1
  br i1 %741, label %742, label %764

; <label>:742                                     ; preds = %739
  %743 = load i64, i64* %l, align 8
  %744 = add nsw i64 %743, 1
  store i64 %744, i64* %m10, align 8
  br label %745

; <label>:745                                     ; preds = %758, %742
  %746 = load i64, i64* %m10, align 8
  %747 = load i64, i64* %h, align 8
  %748 = icmp slt i64 %746, %747
  br i1 %748, label %749, label %761

; <label>:749                                     ; preds = %745
  %750 = load i64, i64* %tempVertex2, align 8
  %751 = load i64, i64* %m10, align 8
  %752 = load i64*, i64** %firstVsInCliques, align 8
  %753 = getelementptr inbounds i64, i64* %752, i64 %751
  %754 = load i64, i64* %753, align 8
  %755 = icmp ult i64 %750, %754
  br i1 %755, label %756, label %757

; <label>:756                                     ; preds = %749
  br label %761

; <label>:757                                     ; preds = %749
  br label %758

; <label>:758                                     ; preds = %757
  %759 = load i64, i64* %m10, align 8
  %760 = add nsw i64 %759, 1
  store i64 %760, i64* %m10, align 8
  br label %745

; <label>:761                                     ; preds = %756, %745
  %762 = load i64, i64* %m10, align 8
  %763 = sub nsw i64 %762, 1
  store i64 %763, i64* %t5, align 8
  br label %764

; <label>:764                                     ; preds = %761, %739
  %765 = load i64, i64* %t5, align 8
  %766 = load i64*, i64** %firstVsInCliques, align 8
  %767 = getelementptr inbounds i64, i64* %766, i64 %765
  %768 = load i64, i64* %767, align 8
  store i64 %768, i64* %t211, align 8
  %769 = load i64, i64* %t17, align 8
  %770 = load i64, i64* %t211, align 8
  %771 = icmp ne i64 %769, %770
  br i1 %771, label %772, label %797

; <label>:772                                     ; preds = %764
  %773 = load %struct.random*, %struct.random** %stream, align 8
  %774 = call i64 @random_generate(%struct.random* %773)
  %775 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %776 = urem i64 %774, %775
  %777 = add i64 %776, 1
  store i64 %777, i64* %randNumEdges12, align 8
  store i64 0, i64* %j13, align 8
  br label %778

; <label>:778                                     ; preds = %793, %772
  %779 = load i64, i64* %j13, align 8
  %780 = load i64, i64* %randNumEdges12, align 8
  %781 = icmp slt i64 %779, %780
  br i1 %781, label %782, label %796

; <label>:782                                     ; preds = %778
  %783 = load i64, i64* %tempVertex1, align 8
  %784 = load i64, i64* %i_edgePtr, align 8
  %785 = load i64*, i64** %startV, align 8
  %786 = getelementptr inbounds i64, i64* %785, i64 %784
  store i64 %783, i64* %786, align 8
  %787 = load i64, i64* %tempVertex2, align 8
  %788 = load i64, i64* %i_edgePtr, align 8
  %789 = load i64*, i64** %endV, align 8
  %790 = getelementptr inbounds i64, i64* %789, i64 %788
  store i64 %787, i64* %790, align 8
  %791 = load i64, i64* %i_edgePtr, align 8
  %792 = add nsw i64 %791, 1
  store i64 %792, i64* %i_edgePtr, align 8
  br label %793

; <label>:793                                     ; preds = %782
  %794 = load i64, i64* %j13, align 8
  %795 = add nsw i64 %794, 1
  store i64 %795, i64* %j13, align 8
  br label %778

; <label>:796                                     ; preds = %778
  br label %797

; <label>:797                                     ; preds = %796, %764
  br label %798

; <label>:798                                     ; preds = %797, %679
  %799 = load %struct.random*, %struct.random** %stream, align 8
  %800 = call i64 @random_generate(%struct.random* %799)
  %801 = urem i64 %800, 1000
  %802 = uitofp i64 %801 to float
  %803 = fdiv float %802, 1.000000e+03
  store float %803, float* %r0, align 4
  %804 = load float, float* %r0, align 4
  %805 = load float, float* %p, align 4
  %806 = fcmp ole float %804, %805
  br i1 %806, label %807, label %922

; <label>:807                                     ; preds = %798
  %808 = load i64, i64* %i, align 8
  %809 = load i64, i64* %d, align 8
  %810 = sub i64 %808, %809
  %811 = icmp uge i64 %810, 0
  br i1 %811, label %812, label %922

; <label>:812                                     ; preds = %807
  %813 = load i64, i64* %i, align 8
  %814 = load i64, i64* %d, align 8
  %815 = sub i64 %813, %814
  %816 = load i64, i64* @TOT_VERTICES, align 8
  %817 = urem i64 %815, %816
  store i64 %817, i64* %tempVertex214, align 8
  %818 = load i64, i64* %totCliques, align 8
  store i64 %818, i64* %h, align 8
  store i64 0, i64* %l, align 8
  store i64 -1, i64* %t5, align 8
  br label %819

; <label>:819                                     ; preds = %862, %812
  %820 = load i64, i64* %h, align 8
  %821 = load i64, i64* %l, align 8
  %822 = sub nsw i64 %820, %821
  %823 = icmp sgt i64 %822, 1
  br i1 %823, label %824, label %863

; <label>:824                                     ; preds = %819
  %825 = load i64, i64* %h, align 8
  %826 = load i64, i64* %l, align 8
  %827 = add nsw i64 %825, %826
  %828 = sdiv i64 %827, 2
  store i64 %828, i64* %m15, align 8
  %829 = load i64, i64* %tempVertex214, align 8
  %830 = load i64, i64* %m15, align 8
  %831 = load i64*, i64** %firstVsInCliques, align 8
  %832 = getelementptr inbounds i64, i64* %831, i64 %830
  %833 = load i64, i64* %832, align 8
  %834 = icmp uge i64 %829, %833
  br i1 %834, label %835, label %837

; <label>:835                                     ; preds = %824
  %836 = load i64, i64* %m15, align 8
  store i64 %836, i64* %l, align 8
  br label %862

; <label>:837                                     ; preds = %824
  %838 = load i64, i64* %tempVertex214, align 8
  %839 = load i64, i64* %m15, align 8
  %840 = load i64*, i64** %firstVsInCliques, align 8
  %841 = getelementptr inbounds i64, i64* %840, i64 %839
  %842 = load i64, i64* %841, align 8
  %843 = icmp ult i64 %838, %842
  br i1 %843, label %844, label %861

; <label>:844                                     ; preds = %837
  %845 = load i64, i64* %m15, align 8
  %846 = icmp sgt i64 %845, 0
  br i1 %846, label %847, label %861

; <label>:847                                     ; preds = %844
  %848 = load i64, i64* %m15, align 8
  %849 = sub nsw i64 %848, 1
  %850 = load i64*, i64** %firstVsInCliques, align 8
  %851 = getelementptr inbounds i64, i64* %850, i64 %849
  %852 = load i64, i64* %851, align 8
  %853 = load i64, i64* %tempVertex214, align 8
  %854 = icmp ule i64 %852, %853
  br i1 %854, label %855, label %858

; <label>:855                                     ; preds = %847
  %856 = load i64, i64* %m15, align 8
  %857 = sub nsw i64 %856, 1
  store i64 %857, i64* %t5, align 8
  br label %863

; <label>:858                                     ; preds = %847
  %859 = load i64, i64* %m15, align 8
  store i64 %859, i64* %h, align 8
  br label %860

; <label>:860                                     ; preds = %858
  br label %861

; <label>:861                                     ; preds = %860, %844, %837
  br label %862

; <label>:862                                     ; preds = %861, %835
  br label %819

; <label>:863                                     ; preds = %855, %819
  %864 = load i64, i64* %t5, align 8
  %865 = icmp eq i64 %864, -1
  br i1 %865, label %866, label %888

; <label>:866                                     ; preds = %863
  %867 = load i64, i64* %l, align 8
  %868 = add nsw i64 %867, 1
  store i64 %868, i64* %m16, align 8
  br label %869

; <label>:869                                     ; preds = %882, %866
  %870 = load i64, i64* %m16, align 8
  %871 = load i64, i64* %h, align 8
  %872 = icmp slt i64 %870, %871
  br i1 %872, label %873, label %885

; <label>:873                                     ; preds = %869
  %874 = load i64, i64* %tempVertex214, align 8
  %875 = load i64, i64* %m16, align 8
  %876 = load i64*, i64** %firstVsInCliques, align 8
  %877 = getelementptr inbounds i64, i64* %876, i64 %875
  %878 = load i64, i64* %877, align 8
  %879 = icmp ult i64 %874, %878
  br i1 %879, label %880, label %881

; <label>:880                                     ; preds = %873
  br label %885

; <label>:881                                     ; preds = %873
  br label %882

; <label>:882                                     ; preds = %881
  %883 = load i64, i64* %m16, align 8
  %884 = add nsw i64 %883, 1
  store i64 %884, i64* %m16, align 8
  br label %869

; <label>:885                                     ; preds = %880, %869
  %886 = load i64, i64* %m16, align 8
  %887 = sub nsw i64 %886, 1
  store i64 %887, i64* %t5, align 8
  br label %888

; <label>:888                                     ; preds = %885, %863
  %889 = load i64, i64* %t5, align 8
  %890 = load i64*, i64** %firstVsInCliques, align 8
  %891 = getelementptr inbounds i64, i64* %890, i64 %889
  %892 = load i64, i64* %891, align 8
  store i64 %892, i64* %t217, align 8
  %893 = load i64, i64* %t17, align 8
  %894 = load i64, i64* %t217, align 8
  %895 = icmp ne i64 %893, %894
  br i1 %895, label %896, label %921

; <label>:896                                     ; preds = %888
  %897 = load %struct.random*, %struct.random** %stream, align 8
  %898 = call i64 @random_generate(%struct.random* %897)
  %899 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %900 = urem i64 %898, %899
  %901 = add i64 %900, 1
  store i64 %901, i64* %randNumEdges18, align 8
  store i64 0, i64* %j19, align 8
  br label %902

; <label>:902                                     ; preds = %917, %896
  %903 = load i64, i64* %j19, align 8
  %904 = load i64, i64* %randNumEdges18, align 8
  %905 = icmp slt i64 %903, %904
  br i1 %905, label %906, label %920

; <label>:906                                     ; preds = %902
  %907 = load i64, i64* %tempVertex1, align 8
  %908 = load i64, i64* %i_edgePtr, align 8
  %909 = load i64*, i64** %startV, align 8
  %910 = getelementptr inbounds i64, i64* %909, i64 %908
  store i64 %907, i64* %910, align 8
  %911 = load i64, i64* %tempVertex214, align 8
  %912 = load i64, i64* %i_edgePtr, align 8
  %913 = load i64*, i64** %endV, align 8
  %914 = getelementptr inbounds i64, i64* %913, i64 %912
  store i64 %911, i64* %914, align 8
  %915 = load i64, i64* %i_edgePtr, align 8
  %916 = add nsw i64 %915, 1
  store i64 %916, i64* %i_edgePtr, align 8
  br label %917

; <label>:917                                     ; preds = %906
  %918 = load i64, i64* %j19, align 8
  %919 = add nsw i64 %918, 1
  store i64 %919, i64* %j19, align 8
  br label %902

; <label>:920                                     ; preds = %902
  br label %921

; <label>:921                                     ; preds = %920, %888
  br label %922

; <label>:922                                     ; preds = %921, %807, %798
  br label %923

; <label>:923                                     ; preds = %922
  %924 = load i64, i64* %d, align 8
  %925 = mul i64 %924, 2
  store i64 %925, i64* %d, align 8
  %926 = load float, float* %p, align 4
  %927 = fdiv float %926, 2.000000e+00
  store float %927, float* %p, align 4
  br label %675

; <label>:928                                     ; preds = %675
  br label %929

; <label>:929                                     ; preds = %928
  %930 = load i64, i64* %i, align 8
  %931 = add nsw i64 %930, 1
  store i64 %931, i64* %i, align 8
  br label %593

; <label>:932                                     ; preds = %593
  %933 = load i64, i64* %i_edgePtr, align 8
  store i64 %933, i64* %i_edgeEndCounter, align 8
  store i64 0, i64* %i_edgeStartCounter, align 8
  %934 = load i64, i64* %i_edgePtr, align 8
  store i64 %934, i64* %edgeNum, align 8
  %935 = load i64, i64* %edgeNum, align 8
  store i64 %935, i64* %numEdgesPlacedOutside, align 8
  %936 = load i64, i64* %i_edgeStartCounter, align 8
  store i64 %936, i64* %i, align 8
  br label %937

; <label>:937                                     ; preds = %964, %932
  %938 = load i64, i64* %i, align 8
  %939 = load i64, i64* %i_edgeEndCounter, align 8
  %940 = icmp ult i64 %938, %939
  br i1 %940, label %941, label %967

; <label>:941                                     ; preds = %937
  %942 = load i64, i64* %i, align 8
  %943 = load i64, i64* %i_edgeStartCounter, align 8
  %944 = sub i64 %942, %943
  %945 = load i64*, i64** %startV, align 8
  %946 = getelementptr inbounds i64, i64* %945, i64 %944
  %947 = load i64, i64* %946, align 8
  %948 = load i64, i64* %i, align 8
  %949 = load i64, i64* %numEdgesPlacedInCliques, align 8
  %950 = add i64 %948, %949
  %951 = load i64*, i64** %startVertex, align 8
  %952 = getelementptr inbounds i64, i64* %951, i64 %950
  store i64 %947, i64* %952, align 8
  %953 = load i64, i64* %i, align 8
  %954 = load i64, i64* %i_edgeStartCounter, align 8
  %955 = sub i64 %953, %954
  %956 = load i64*, i64** %endV, align 8
  %957 = getelementptr inbounds i64, i64* %956, i64 %955
  %958 = load i64, i64* %957, align 8
  %959 = load i64, i64* %i, align 8
  %960 = load i64, i64* %numEdgesPlacedInCliques, align 8
  %961 = add i64 %959, %960
  %962 = load i64*, i64** %endVertex, align 8
  %963 = getelementptr inbounds i64, i64* %962, i64 %961
  store i64 %958, i64* %963, align 8
  br label %964

; <label>:964                                     ; preds = %941
  %965 = load i64, i64* %i, align 8
  %966 = add nsw i64 %965, 1
  store i64 %966, i64* %i, align 8
  br label %937

; <label>:967                                     ; preds = %937
  %968 = load i64, i64* %numEdgesPlacedInCliques, align 8
  %969 = load i64, i64* %numEdgesPlacedOutside, align 8
  %970 = add i64 %968, %969
  store i64 %970, i64* %numEdgesPlaced, align 8
  %971 = load i64, i64* %numEdgesPlaced, align 8
  %972 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %973 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %972, i32 0, i32 4
  store i64 %971, i64* %973, align 8
  %974 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0))
  %975 = load i64, i64* %numEdgesPlacedInCliques, align 8
  %976 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0), i64 %975)
  %977 = load i64, i64* %numEdgesPlacedOutside, align 8
  %978 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0), i64 %977)
  %979 = load i64, i64* %numEdgesPlaced, align 8
  %980 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0), i64 %979)
  %981 = load i64*, i64** %cliqueSizes, align 8
  %982 = bitcast i64* %981 to i8*
  call void @free(i8* %982) #6
  %983 = load i64*, i64** %firstVsInCliques, align 8
  %984 = bitcast i64* %983 to i8*
  call void @free(i8* %984) #6
  %985 = load i64*, i64** %lastVsInCliques, align 8
  %986 = bitcast i64* %985 to i8*
  call void @free(i8* %986) #6
  %987 = load i64*, i64** %startV, align 8
  %988 = bitcast i64* %987 to i8*
  call void @free(i8* %988) #6
  %989 = load i64*, i64** %endV, align 8
  %990 = bitcast i64* %989 to i8*
  call void @free(i8* %990) #6
  %991 = load i64, i64* %numEdgesPlaced, align 8
  %992 = mul i64 %991, 8
  %993 = call noalias i8* @malloc(i64 %992) #6
  %994 = bitcast i8* %993 to i64*
  %995 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %996 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %995, i32 0, i32 2
  store i64* %994, i64** %996, align 8
  %997 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %998 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %997, i32 0, i32 2
  %999 = load i64*, i64** %998, align 8
  %1000 = icmp ne i64* %999, null
  br i1 %1000, label %1001, label %1002

; <label>:1001                                    ; preds = %967
  br label %1004

; <label>:1002                                    ; preds = %967
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 563, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %1004

; <label>:1004                                    ; preds = %1003, %1001
  %1005 = load float, float* @PERC_INT_WEIGHTS, align 4
  store float %1005, float* %p, align 4
  store i64 0, i64* %numStrWtEdges, align 8
  store i64 0, i64* %i, align 8
  br label %1006

; <label>:1006                                    ; preds = %1040, %1004
  %1007 = load i64, i64* %i, align 8
  %1008 = load i64, i64* %numEdgesPlaced, align 8
  %1009 = icmp ult i64 %1007, %1008
  br i1 %1009, label %1010, label %1043

; <label>:1010                                    ; preds = %1006
  %1011 = load %struct.random*, %struct.random** %stream, align 8
  %1012 = call i64 @random_generate(%struct.random* %1011)
  %1013 = urem i64 %1012, 1000
  %1014 = uitofp i64 %1013 to float
  %1015 = fdiv float %1014, 1.000000e+03
  store float %1015, float* %r20, align 4
  %1016 = load float, float* %r20, align 4
  %1017 = load float, float* %p, align 4
  %1018 = fcmp ole float %1016, %1017
  br i1 %1018, label %1019, label %1031

; <label>:1019                                    ; preds = %1010
  %1020 = load %struct.random*, %struct.random** %stream, align 8
  %1021 = call i64 @random_generate(%struct.random* %1020)
  %1022 = load i64, i64* @MAX_INT_WEIGHT, align 8
  %1023 = sub i64 %1022, 1
  %1024 = urem i64 %1021, %1023
  %1025 = add i64 1, %1024
  %1026 = load i64, i64* %i, align 8
  %1027 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1028 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1027, i32 0, i32 2
  %1029 = load i64*, i64** %1028, align 8
  %1030 = getelementptr inbounds i64, i64* %1029, i64 %1026
  store i64 %1025, i64* %1030, align 8
  br label %1039

; <label>:1031                                    ; preds = %1010
  %1032 = load i64, i64* %i, align 8
  %1033 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1034 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1033, i32 0, i32 2
  %1035 = load i64*, i64** %1034, align 8
  %1036 = getelementptr inbounds i64, i64* %1035, i64 %1032
  store i64 -1, i64* %1036, align 8
  %1037 = load i64, i64* %numStrWtEdges, align 8
  %1038 = add i64 %1037, 1
  store i64 %1038, i64* %numStrWtEdges, align 8
  br label %1039

; <label>:1039                                    ; preds = %1031, %1019
  br label %1040

; <label>:1040                                    ; preds = %1039
  %1041 = load i64, i64* %i, align 8
  %1042 = add nsw i64 %1041, 1
  store i64 %1042, i64* %i, align 8
  br label %1006

; <label>:1043                                    ; preds = %1006
  store i64 0, i64* %t21, align 8
  store i64 0, i64* %i, align 8
  br label %1044

; <label>:1044                                    ; preds = %1067, %1043
  %1045 = load i64, i64* %i, align 8
  %1046 = load i64, i64* %numEdgesPlaced, align 8
  %1047 = icmp ult i64 %1045, %1046
  br i1 %1047, label %1048, label %1070

; <label>:1048                                    ; preds = %1044
  %1049 = load i64, i64* %i, align 8
  %1050 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1051 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1050, i32 0, i32 2
  %1052 = load i64*, i64** %1051, align 8
  %1053 = getelementptr inbounds i64, i64* %1052, i64 %1049
  %1054 = load i64, i64* %1053, align 8
  %1055 = icmp slt i64 %1054, 0
  br i1 %1055, label %1056, label %1066

; <label>:1056                                    ; preds = %1048
  %1057 = load i64, i64* %t21, align 8
  %1058 = sub nsw i64 0, %1057
  %1059 = load i64, i64* %i, align 8
  %1060 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1061 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1060, i32 0, i32 2
  %1062 = load i64*, i64** %1061, align 8
  %1063 = getelementptr inbounds i64, i64* %1062, i64 %1059
  store i64 %1058, i64* %1063, align 8
  %1064 = load i64, i64* %t21, align 8
  %1065 = add nsw i64 %1064, 1
  store i64 %1065, i64* %t21, align 8
  br label %1066

; <label>:1066                                    ; preds = %1056, %1048
  br label %1067

; <label>:1067                                    ; preds = %1066
  %1068 = load i64, i64* %i, align 8
  %1069 = add nsw i64 %1068, 1
  store i64 %1069, i64* %i, align 8
  br label %1044

; <label>:1070                                    ; preds = %1044
  %1071 = load i64, i64* %numStrWtEdges, align 8
  %1072 = load i64, i64* @MAX_STRLEN, align 8
  %1073 = mul i64 %1071, %1072
  %1074 = mul i64 %1073, 1
  %1075 = call noalias i8* @malloc(i64 %1074) #6
  %1076 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1077 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1076, i32 0, i32 3
  store i8* %1075, i8** %1077, align 8
  %1078 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1079 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1078, i32 0, i32 3
  %1080 = load i8*, i8** %1079, align 8
  %1081 = icmp ne i8* %1080, null
  br i1 %1081, label %1082, label %1083

; <label>:1082                                    ; preds = %1070
  br label %1085

; <label>:1083                                    ; preds = %1070
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 589, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %1085

; <label>:1085                                    ; preds = %1084, %1082
  store i64 0, i64* %i, align 8
  br label %1086

; <label>:1086                                    ; preds = %1129, %1085
  %1087 = load i64, i64* %i, align 8
  %1088 = load i64, i64* %numEdgesPlaced, align 8
  %1089 = icmp ult i64 %1087, %1088
  br i1 %1089, label %1090, label %1132

; <label>:1090                                    ; preds = %1086
  %1091 = load i64, i64* %i, align 8
  %1092 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1093 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1092, i32 0, i32 2
  %1094 = load i64*, i64** %1093, align 8
  %1095 = getelementptr inbounds i64, i64* %1094, i64 %1091
  %1096 = load i64, i64* %1095, align 8
  %1097 = icmp sle i64 %1096, 0
  br i1 %1097, label %1098, label %1128

; <label>:1098                                    ; preds = %1090
  store i64 0, i64* %j22, align 8
  br label %1099

; <label>:1099                                    ; preds = %1124, %1098
  %1100 = load i64, i64* %j22, align 8
  %1101 = load i64, i64* @MAX_STRLEN, align 8
  %1102 = icmp slt i64 %1100, %1101
  br i1 %1102, label %1103, label %1127

; <label>:1103                                    ; preds = %1099
  %1104 = load %struct.random*, %struct.random** %stream, align 8
  %1105 = call i64 @random_generate(%struct.random* %1104)
  %1106 = urem i64 %1105, 127
  %1107 = add i64 1, %1106
  %1108 = trunc i64 %1107 to i8
  %1109 = load i64, i64* %i, align 8
  %1110 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1111 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1110, i32 0, i32 2
  %1112 = load i64*, i64** %1111, align 8
  %1113 = getelementptr inbounds i64, i64* %1112, i64 %1109
  %1114 = load i64, i64* %1113, align 8
  %1115 = sub nsw i64 0, %1114
  %1116 = load i64, i64* @MAX_STRLEN, align 8
  %1117 = mul nsw i64 %1115, %1116
  %1118 = load i64, i64* %j22, align 8
  %1119 = add nsw i64 %1117, %1118
  %1120 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1121 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1120, i32 0, i32 3
  %1122 = load i8*, i8** %1121, align 8
  %1123 = getelementptr inbounds i8, i8* %1122, i64 %1119
  store i8 %1108, i8* %1123, align 1
  br label %1124

; <label>:1124                                    ; preds = %1103
  %1125 = load i64, i64* %j22, align 8
  %1126 = add nsw i64 %1125, 1
  store i64 %1126, i64* %j22, align 8
  br label %1099

; <label>:1127                                    ; preds = %1099
  br label %1128

; <label>:1128                                    ; preds = %1127, %1090
  br label %1129

; <label>:1129                                    ; preds = %1128
  %1130 = load i64, i64* %i, align 8
  %1131 = add nsw i64 %1130, 1
  store i64 %1131, i64* %i, align 8
  br label %1086

; <label>:1132                                    ; preds = %1086
  %1133 = load i8*, i8** @SOUGHT_STRING, align 8
  %1134 = call i64 @strlen(i8* %1133) #9
  %1135 = load i64, i64* @MAX_STRLEN, align 8
  %1136 = icmp ne i64 %1134, %1135
  br i1 %1136, label %1137, label %1147

; <label>:1137                                    ; preds = %1132
  %1138 = load i64, i64* @MAX_STRLEN, align 8
  %1139 = mul i64 %1138, 1
  %1140 = call noalias i8* @malloc(i64 %1139) #6
  store i8* %1140, i8** @SOUGHT_STRING, align 8
  %1141 = load i8*, i8** @SOUGHT_STRING, align 8
  %1142 = icmp ne i8* %1141, null
  br i1 %1142, label %1143, label %1144

; <label>:1143                                    ; preds = %1137
  br label %1146

; <label>:1144                                    ; preds = %1137
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 607, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %1146

; <label>:1146                                    ; preds = %1145, %1143
  br label %1147

; <label>:1147                                    ; preds = %1146, %1132
  %1148 = load %struct.random*, %struct.random** %stream, align 8
  %1149 = call i64 @random_generate(%struct.random* %1148)
  %1150 = load i64, i64* %numStrWtEdges, align 8
  %1151 = urem i64 %1149, %1150
  store i64 %1151, i64* %t21, align 8
  store i64 0, i64* %j23, align 8
  br label %1152

; <label>:1152                                    ; preds = %1172, %1147
  %1153 = load i64, i64* %j23, align 8
  %1154 = load i64, i64* @MAX_STRLEN, align 8
  %1155 = icmp slt i64 %1153, %1154
  br i1 %1155, label %1156, label %1175

; <label>:1156                                    ; preds = %1152
  %1157 = load i64, i64* %t21, align 8
  %1158 = load i64, i64* @MAX_STRLEN, align 8
  %1159 = mul nsw i64 %1157, %1158
  %1160 = load i64, i64* %j23, align 8
  %1161 = add nsw i64 %1159, %1160
  %1162 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1163 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1162, i32 0, i32 3
  %1164 = load i8*, i8** %1163, align 8
  %1165 = getelementptr inbounds i8, i8* %1164, i64 %1161
  %1166 = load i8, i8* %1165, align 1
  %1167 = sext i8 %1166 to i64
  %1168 = trunc i64 %1167 to i8
  %1169 = load i64, i64* %j23, align 8
  %1170 = load i8*, i8** @SOUGHT_STRING, align 8
  %1171 = getelementptr inbounds i8, i8* %1170, i64 %1169
  store i8 %1168, i8* %1171, align 1
  br label %1172

; <label>:1172                                    ; preds = %1156
  %1173 = load i64, i64* %j23, align 8
  %1174 = add nsw i64 %1173, 1
  store i64 %1174, i64* %j23, align 8
  br label %1152

; <label>:1175                                    ; preds = %1152
  store i64 0, i64* %i, align 8
  br label %1176

; <label>:1176                                    ; preds = %1201, %1175
  %1177 = load i64, i64* %i, align 8
  %1178 = load i64, i64* %numEdgesPlaced, align 8
  %1179 = icmp ult i64 %1177, %1178
  br i1 %1179, label %1180, label %1204

; <label>:1180                                    ; preds = %1176
  %1181 = load i64, i64* %i, align 8
  %1182 = load i64*, i64** %startVertex, align 8
  %1183 = getelementptr inbounds i64, i64* %1182, i64 %1181
  %1184 = load i64, i64* %1183, align 8
  %1185 = load i64*, i64** %permV, align 8
  %1186 = getelementptr inbounds i64, i64* %1185, i64 %1184
  %1187 = load i64, i64* %1186, align 8
  %1188 = load i64, i64* %i, align 8
  %1189 = load i64*, i64** %startVertex, align 8
  %1190 = getelementptr inbounds i64, i64* %1189, i64 %1188
  store i64 %1187, i64* %1190, align 8
  %1191 = load i64, i64* %i, align 8
  %1192 = load i64*, i64** %endVertex, align 8
  %1193 = getelementptr inbounds i64, i64* %1192, i64 %1191
  %1194 = load i64, i64* %1193, align 8
  %1195 = load i64*, i64** %permV, align 8
  %1196 = getelementptr inbounds i64, i64* %1195, i64 %1194
  %1197 = load i64, i64* %1196, align 8
  %1198 = load i64, i64* %i, align 8
  %1199 = load i64*, i64** %endVertex, align 8
  %1200 = getelementptr inbounds i64, i64* %1199, i64 %1198
  store i64 %1197, i64* %1200, align 8
  br label %1201

; <label>:1201                                    ; preds = %1180
  %1202 = load i64, i64* %i, align 8
  %1203 = add nsw i64 %1202, 1
  store i64 %1203, i64* %i, align 8
  br label %1176

; <label>:1204                                    ; preds = %1176
  %1205 = load i64, i64* %numEdgesPlaced, align 8
  %1206 = mul i64 %1205, 8
  store i64 %1206, i64* %numByte, align 8
  %1207 = load i64, i64* %numByte, align 8
  %1208 = call noalias i8* @malloc(i64 %1207) #6
  %1209 = bitcast i8* %1208 to i64*
  %1210 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1211 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1210, i32 0, i32 0
  store i64* %1209, i64** %1211, align 8
  %1212 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1213 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1212, i32 0, i32 0
  %1214 = load i64*, i64** %1213, align 8
  %1215 = icmp ne i64* %1214, null
  br i1 %1215, label %1216, label %1217

; <label>:1216                                    ; preds = %1204
  br label %1219

; <label>:1217                                    ; preds = %1204
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 636, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %1219

; <label>:1219                                    ; preds = %1218, %1216
  %1220 = load i64, i64* %numByte, align 8
  %1221 = call noalias i8* @malloc(i64 %1220) #6
  %1222 = bitcast i8* %1221 to i64*
  %1223 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1224 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1223, i32 0, i32 1
  store i64* %1222, i64** %1224, align 8
  %1225 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1226 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1225, i32 0, i32 1
  %1227 = load i64*, i64** %1226, align 8
  %1228 = icmp ne i64* %1227, null
  br i1 %1228, label %1229, label %1230

; <label>:1229                                    ; preds = %1219
  br label %1232

; <label>:1230                                    ; preds = %1219
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 638, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %1232

; <label>:1232                                    ; preds = %1231, %1229
  %1233 = load i64, i64* %numEdgesPlaced, align 8
  %1234 = load i64*, i64** %startVertex, align 8
  %1235 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1236 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1235, i32 0, i32 0
  %1237 = load i64*, i64** %1236, align 8
  %1238 = load i64*, i64** %endVertex, align 8
  %1239 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1240 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1239, i32 0, i32 1
  %1241 = load i64*, i64** %1240, align 8
  call void @all_radixsort_node_aux_s3_seq(i64 %1233, i64* %1234, i64* %1237, i64* %1238, i64* %1241)
  %1242 = load i64*, i64** %startVertex, align 8
  %1243 = bitcast i64* %1242 to i8*
  call void @free(i8* %1243) #6
  %1244 = load i64*, i64** %endVertex, align 8
  %1245 = bitcast i64* %1244 to i8*
  call void @free(i8* %1245) #6
  %1246 = load i64, i64* @SCALE, align 8
  %1247 = icmp slt i64 %1246, 12
  br i1 %1247, label %1248, label %1412

; <label>:1248                                    ; preds = %1232
  store i64 0, i64* %i0, align 8
  store i64 0, i64* %i1, align 8
  store i64 0, i64* %i, align 8
  br label %1249

; <label>:1249                                    ; preds = %1410, %1248
  %1250 = load i64, i64* %i, align 8
  %1251 = load i64, i64* %numEdgesPlaced, align 8
  %1252 = icmp ult i64 %1250, %1251
  br i1 %1252, label %1253, label %1411

; <label>:1253                                    ; preds = %1249
  %1254 = load i64, i64* %i0, align 8
  store i64 %1254, i64* %i, align 8
  br label %1255

; <label>:1255                                    ; preds = %1276, %1253
  %1256 = load i64, i64* %i, align 8
  %1257 = load i64, i64* %numEdgesPlaced, align 8
  %1258 = icmp ult i64 %1256, %1257
  br i1 %1258, label %1259, label %1279

; <label>:1259                                    ; preds = %1255
  %1260 = load i64, i64* %i, align 8
  %1261 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1262 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1261, i32 0, i32 0
  %1263 = load i64*, i64** %1262, align 8
  %1264 = getelementptr inbounds i64, i64* %1263, i64 %1260
  %1265 = load i64, i64* %1264, align 8
  %1266 = load i64, i64* %i1, align 8
  %1267 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1268 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1267, i32 0, i32 0
  %1269 = load i64*, i64** %1268, align 8
  %1270 = getelementptr inbounds i64, i64* %1269, i64 %1266
  %1271 = load i64, i64* %1270, align 8
  %1272 = icmp ne i64 %1265, %1271
  br i1 %1272, label %1273, label %1275

; <label>:1273                                    ; preds = %1259
  %1274 = load i64, i64* %i, align 8
  store i64 %1274, i64* %i1, align 8
  br label %1279

; <label>:1275                                    ; preds = %1259
  br label %1276

; <label>:1276                                    ; preds = %1275
  %1277 = load i64, i64* %i, align 8
  %1278 = add nsw i64 %1277, 1
  store i64 %1278, i64* %i, align 8
  br label %1255

; <label>:1279                                    ; preds = %1273, %1255
  %1280 = load i64, i64* %i0, align 8
  store i64 %1280, i64* %j24, align 8
  br label %1281

; <label>:1281                                    ; preds = %1335, %1279
  %1282 = load i64, i64* %j24, align 8
  %1283 = load i64, i64* %i1, align 8
  %1284 = icmp slt i64 %1282, %1283
  br i1 %1284, label %1285, label %1338

; <label>:1285                                    ; preds = %1281
  %1286 = load i64, i64* %j24, align 8
  %1287 = add nsw i64 %1286, 1
  store i64 %1287, i64* %k, align 8
  br label %1288

; <label>:1288                                    ; preds = %1331, %1285
  %1289 = load i64, i64* %k, align 8
  %1290 = load i64, i64* %i1, align 8
  %1291 = icmp slt i64 %1289, %1290
  br i1 %1291, label %1292, label %1334

; <label>:1292                                    ; preds = %1288
  %1293 = load i64, i64* %k, align 8
  %1294 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1295 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1294, i32 0, i32 1
  %1296 = load i64*, i64** %1295, align 8
  %1297 = getelementptr inbounds i64, i64* %1296, i64 %1293
  %1298 = load i64, i64* %1297, align 8
  %1299 = load i64, i64* %j24, align 8
  %1300 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1301 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1300, i32 0, i32 1
  %1302 = load i64*, i64** %1301, align 8
  %1303 = getelementptr inbounds i64, i64* %1302, i64 %1299
  %1304 = load i64, i64* %1303, align 8
  %1305 = icmp ult i64 %1298, %1304
  br i1 %1305, label %1306, label %1330

; <label>:1306                                    ; preds = %1292
  %1307 = load i64, i64* %j24, align 8
  %1308 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1309 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1308, i32 0, i32 1
  %1310 = load i64*, i64** %1309, align 8
  %1311 = getelementptr inbounds i64, i64* %1310, i64 %1307
  %1312 = load i64, i64* %1311, align 8
  store i64 %1312, i64* %t25, align 8
  %1313 = load i64, i64* %k, align 8
  %1314 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1315 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1314, i32 0, i32 1
  %1316 = load i64*, i64** %1315, align 8
  %1317 = getelementptr inbounds i64, i64* %1316, i64 %1313
  %1318 = load i64, i64* %1317, align 8
  %1319 = load i64, i64* %j24, align 8
  %1320 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1321 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1320, i32 0, i32 1
  %1322 = load i64*, i64** %1321, align 8
  %1323 = getelementptr inbounds i64, i64* %1322, i64 %1319
  store i64 %1318, i64* %1323, align 8
  %1324 = load i64, i64* %t25, align 8
  %1325 = load i64, i64* %k, align 8
  %1326 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1327 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1326, i32 0, i32 1
  %1328 = load i64*, i64** %1327, align 8
  %1329 = getelementptr inbounds i64, i64* %1328, i64 %1325
  store i64 %1324, i64* %1329, align 8
  br label %1330

; <label>:1330                                    ; preds = %1306, %1292
  br label %1331

; <label>:1331                                    ; preds = %1330
  %1332 = load i64, i64* %k, align 8
  %1333 = add nsw i64 %1332, 1
  store i64 %1333, i64* %k, align 8
  br label %1288

; <label>:1334                                    ; preds = %1288
  br label %1335

; <label>:1335                                    ; preds = %1334
  %1336 = load i64, i64* %j24, align 8
  %1337 = add nsw i64 %1336, 1
  store i64 %1337, i64* %j24, align 8
  br label %1281

; <label>:1338                                    ; preds = %1281
  %1339 = load i64, i64* %i0, align 8
  %1340 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1341 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1340, i32 0, i32 0
  %1342 = load i64*, i64** %1341, align 8
  %1343 = getelementptr inbounds i64, i64* %1342, i64 %1339
  %1344 = load i64, i64* %1343, align 8
  %1345 = load i64, i64* @TOT_VERTICES, align 8
  %1346 = sub i64 %1345, 1
  %1347 = icmp ne i64 %1344, %1346
  br i1 %1347, label %1348, label %1350

; <label>:1348                                    ; preds = %1338
  %1349 = load i64, i64* %i1, align 8
  store i64 %1349, i64* %i0, align 8
  br label %1410

; <label>:1350                                    ; preds = %1338
  %1351 = load i64, i64* %i0, align 8
  store i64 %1351, i64* %j26, align 8
  br label %1352

; <label>:1352                                    ; preds = %1406, %1350
  %1353 = load i64, i64* %j26, align 8
  %1354 = load i64, i64* %numEdgesPlaced, align 8
  %1355 = icmp ult i64 %1353, %1354
  br i1 %1355, label %1356, label %1409

; <label>:1356                                    ; preds = %1352
  %1357 = load i64, i64* %j26, align 8
  %1358 = add nsw i64 %1357, 1
  store i64 %1358, i64* %k27, align 8
  br label %1359

; <label>:1359                                    ; preds = %1402, %1356
  %1360 = load i64, i64* %k27, align 8
  %1361 = load i64, i64* %numEdgesPlaced, align 8
  %1362 = icmp ult i64 %1360, %1361
  br i1 %1362, label %1363, label %1405

; <label>:1363                                    ; preds = %1359
  %1364 = load i64, i64* %k27, align 8
  %1365 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1366 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1365, i32 0, i32 1
  %1367 = load i64*, i64** %1366, align 8
  %1368 = getelementptr inbounds i64, i64* %1367, i64 %1364
  %1369 = load i64, i64* %1368, align 8
  %1370 = load i64, i64* %j26, align 8
  %1371 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1372 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1371, i32 0, i32 1
  %1373 = load i64*, i64** %1372, align 8
  %1374 = getelementptr inbounds i64, i64* %1373, i64 %1370
  %1375 = load i64, i64* %1374, align 8
  %1376 = icmp ult i64 %1369, %1375
  br i1 %1376, label %1377, label %1401

; <label>:1377                                    ; preds = %1363
  %1378 = load i64, i64* %j26, align 8
  %1379 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1380 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1379, i32 0, i32 1
  %1381 = load i64*, i64** %1380, align 8
  %1382 = getelementptr inbounds i64, i64* %1381, i64 %1378
  %1383 = load i64, i64* %1382, align 8
  store i64 %1383, i64* %t28, align 8
  %1384 = load i64, i64* %k27, align 8
  %1385 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1386 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1385, i32 0, i32 1
  %1387 = load i64*, i64** %1386, align 8
  %1388 = getelementptr inbounds i64, i64* %1387, i64 %1384
  %1389 = load i64, i64* %1388, align 8
  %1390 = load i64, i64* %j26, align 8
  %1391 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1392 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1391, i32 0, i32 1
  %1393 = load i64*, i64** %1392, align 8
  %1394 = getelementptr inbounds i64, i64* %1393, i64 %1390
  store i64 %1389, i64* %1394, align 8
  %1395 = load i64, i64* %t28, align 8
  %1396 = load i64, i64* %k27, align 8
  %1397 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1398 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1397, i32 0, i32 1
  %1399 = load i64*, i64** %1398, align 8
  %1400 = getelementptr inbounds i64, i64* %1399, i64 %1396
  store i64 %1395, i64* %1400, align 8
  br label %1401

; <label>:1401                                    ; preds = %1377, %1363
  br label %1402

; <label>:1402                                    ; preds = %1401
  %1403 = load i64, i64* %k27, align 8
  %1404 = add nsw i64 %1403, 1
  store i64 %1404, i64* %k27, align 8
  br label %1359

; <label>:1405                                    ; preds = %1359
  br label %1406

; <label>:1406                                    ; preds = %1405
  %1407 = load i64, i64* %j26, align 8
  %1408 = add nsw i64 %1407, 1
  store i64 %1408, i64* %j26, align 8
  br label %1352

; <label>:1409                                    ; preds = %1352
  br label %1410

; <label>:1410                                    ; preds = %1409, %1348
  br label %1249

; <label>:1411                                    ; preds = %1249
  br label %1563

; <label>:1412                                    ; preds = %1232
  %1413 = load i64, i64* @TOT_VERTICES, align 8
  %1414 = add i64 %1413, 1
  %1415 = mul i64 %1414, 8
  %1416 = call noalias i8* @malloc(i64 %1415) #6
  %1417 = bitcast i8* %1416 to i64*
  store i64* %1417, i64** %tempIndex, align 8
  %1418 = load i64*, i64** %tempIndex, align 8
  %1419 = getelementptr inbounds i64, i64* %1418, i64 0
  store i64 0, i64* %1419, align 8
  %1420 = load i64, i64* %numEdgesPlaced, align 8
  %1421 = load i64, i64* @TOT_VERTICES, align 8
  %1422 = load i64*, i64** %tempIndex, align 8
  %1423 = getelementptr inbounds i64, i64* %1422, i64 %1421
  store i64 %1420, i64* %1423, align 8
  store i64 0, i64* %i029, align 8
  store i64 0, i64* %i, align 8
  br label %1424

; <label>:1424                                    ; preds = %1478, %1412
  %1425 = load i64, i64* %i, align 8
  %1426 = load i64, i64* @TOT_VERTICES, align 8
  %1427 = icmp ult i64 %1425, %1426
  br i1 %1427, label %1428, label %1481

; <label>:1428                                    ; preds = %1424
  %1429 = load i64, i64* %i, align 8
  %1430 = load i64*, i64** %tempIndex, align 8
  %1431 = getelementptr inbounds i64, i64* %1430, i64 %1429
  %1432 = load i64, i64* %1431, align 8
  %1433 = load i64, i64* %i, align 8
  %1434 = add nsw i64 %1433, 1
  %1435 = load i64*, i64** %tempIndex, align 8
  %1436 = getelementptr inbounds i64, i64* %1435, i64 %1434
  store i64 %1432, i64* %1436, align 8
  %1437 = load i64, i64* %i029, align 8
  store i64 %1437, i64* %j30, align 8
  br label %1438

; <label>:1438                                    ; preds = %1474, %1428
  %1439 = load i64, i64* %j30, align 8
  %1440 = load i64, i64* %numEdgesPlaced, align 8
  %1441 = icmp ult i64 %1439, %1440
  br i1 %1441, label %1442, label %1477

; <label>:1442                                    ; preds = %1438
  %1443 = load i64, i64* %j30, align 8
  %1444 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1445 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1444, i32 0, i32 0
  %1446 = load i64*, i64** %1445, align 8
  %1447 = getelementptr inbounds i64, i64* %1446, i64 %1443
  %1448 = load i64, i64* %1447, align 8
  %1449 = load i64, i64* %i029, align 8
  %1450 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1451 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1450, i32 0, i32 0
  %1452 = load i64*, i64** %1451, align 8
  %1453 = getelementptr inbounds i64, i64* %1452, i64 %1449
  %1454 = load i64, i64* %1453, align 8
  %1455 = icmp ne i64 %1448, %1454
  br i1 %1455, label %1456, label %1473

; <label>:1456                                    ; preds = %1442
  %1457 = load i64, i64* %i029, align 8
  %1458 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1459 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1458, i32 0, i32 0
  %1460 = load i64*, i64** %1459, align 8
  %1461 = getelementptr inbounds i64, i64* %1460, i64 %1457
  %1462 = load i64, i64* %1461, align 8
  %1463 = load i64, i64* %i, align 8
  %1464 = icmp eq i64 %1462, %1463
  br i1 %1464, label %1465, label %1472

; <label>:1465                                    ; preds = %1456
  %1466 = load i64, i64* %j30, align 8
  %1467 = load i64, i64* %i, align 8
  %1468 = add nsw i64 %1467, 1
  %1469 = load i64*, i64** %tempIndex, align 8
  %1470 = getelementptr inbounds i64, i64* %1469, i64 %1468
  store i64 %1466, i64* %1470, align 8
  %1471 = load i64, i64* %j30, align 8
  store i64 %1471, i64* %i029, align 8
  br label %1477

; <label>:1472                                    ; preds = %1456
  br label %1473

; <label>:1473                                    ; preds = %1472, %1442
  br label %1474

; <label>:1474                                    ; preds = %1473
  %1475 = load i64, i64* %j30, align 8
  %1476 = add nsw i64 %1475, 1
  store i64 %1476, i64* %j30, align 8
  br label %1438

; <label>:1477                                    ; preds = %1465, %1438
  br label %1478

; <label>:1478                                    ; preds = %1477
  %1479 = load i64, i64* %i, align 8
  %1480 = add nsw i64 %1479, 1
  store i64 %1480, i64* %i, align 8
  br label %1424

; <label>:1481                                    ; preds = %1424
  store i64 0, i64* %i, align 8
  br label %1482

; <label>:1482                                    ; preds = %1557, %1481
  %1483 = load i64, i64* %i, align 8
  %1484 = load i64, i64* @TOT_VERTICES, align 8
  %1485 = icmp ult i64 %1483, %1484
  br i1 %1485, label %1486, label %1560

; <label>:1486                                    ; preds = %1482
  %1487 = load i64, i64* %i, align 8
  %1488 = load i64*, i64** %tempIndex, align 8
  %1489 = getelementptr inbounds i64, i64* %1488, i64 %1487
  %1490 = load i64, i64* %1489, align 8
  store i64 %1490, i64* %j31, align 8
  br label %1491

; <label>:1491                                    ; preds = %1553, %1486
  %1492 = load i64, i64* %j31, align 8
  %1493 = load i64, i64* %i, align 8
  %1494 = add nsw i64 %1493, 1
  %1495 = load i64*, i64** %tempIndex, align 8
  %1496 = getelementptr inbounds i64, i64* %1495, i64 %1494
  %1497 = load i64, i64* %1496, align 8
  %1498 = icmp ult i64 %1492, %1497
  br i1 %1498, label %1499, label %1556

; <label>:1499                                    ; preds = %1491
  %1500 = load i64, i64* %j31, align 8
  %1501 = add nsw i64 %1500, 1
  store i64 %1501, i64* %k32, align 8
  br label %1502

; <label>:1502                                    ; preds = %1549, %1499
  %1503 = load i64, i64* %k32, align 8
  %1504 = load i64, i64* %i, align 8
  %1505 = add nsw i64 %1504, 1
  %1506 = load i64*, i64** %tempIndex, align 8
  %1507 = getelementptr inbounds i64, i64* %1506, i64 %1505
  %1508 = load i64, i64* %1507, align 8
  %1509 = icmp ult i64 %1503, %1508
  br i1 %1509, label %1510, label %1552

; <label>:1510                                    ; preds = %1502
  %1511 = load i64, i64* %k32, align 8
  %1512 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1513 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1512, i32 0, i32 1
  %1514 = load i64*, i64** %1513, align 8
  %1515 = getelementptr inbounds i64, i64* %1514, i64 %1511
  %1516 = load i64, i64* %1515, align 8
  %1517 = load i64, i64* %j31, align 8
  %1518 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1519 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1518, i32 0, i32 1
  %1520 = load i64*, i64** %1519, align 8
  %1521 = getelementptr inbounds i64, i64* %1520, i64 %1517
  %1522 = load i64, i64* %1521, align 8
  %1523 = icmp ult i64 %1516, %1522
  br i1 %1523, label %1524, label %1548

; <label>:1524                                    ; preds = %1510
  %1525 = load i64, i64* %j31, align 8
  %1526 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1527 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1526, i32 0, i32 1
  %1528 = load i64*, i64** %1527, align 8
  %1529 = getelementptr inbounds i64, i64* %1528, i64 %1525
  %1530 = load i64, i64* %1529, align 8
  store i64 %1530, i64* %t33, align 8
  %1531 = load i64, i64* %k32, align 8
  %1532 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1533 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1532, i32 0, i32 1
  %1534 = load i64*, i64** %1533, align 8
  %1535 = getelementptr inbounds i64, i64* %1534, i64 %1531
  %1536 = load i64, i64* %1535, align 8
  %1537 = load i64, i64* %j31, align 8
  %1538 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1539 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1538, i32 0, i32 1
  %1540 = load i64*, i64** %1539, align 8
  %1541 = getelementptr inbounds i64, i64* %1540, i64 %1537
  store i64 %1536, i64* %1541, align 8
  %1542 = load i64, i64* %t33, align 8
  %1543 = load i64, i64* %k32, align 8
  %1544 = load %struct.graphSDG*, %struct.graphSDG** %1, align 8
  %1545 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1544, i32 0, i32 1
  %1546 = load i64*, i64** %1545, align 8
  %1547 = getelementptr inbounds i64, i64* %1546, i64 %1543
  store i64 %1542, i64* %1547, align 8
  br label %1548

; <label>:1548                                    ; preds = %1524, %1510
  br label %1549

; <label>:1549                                    ; preds = %1548
  %1550 = load i64, i64* %k32, align 8
  %1551 = add nsw i64 %1550, 1
  store i64 %1551, i64* %k32, align 8
  br label %1502

; <label>:1552                                    ; preds = %1502
  br label %1553

; <label>:1553                                    ; preds = %1552
  %1554 = load i64, i64* %j31, align 8
  %1555 = add nsw i64 %1554, 1
  store i64 %1555, i64* %j31, align 8
  br label %1491

; <label>:1556                                    ; preds = %1491
  br label %1557

; <label>:1557                                    ; preds = %1556
  %1558 = load i64, i64* %i, align 8
  %1559 = add nsw i64 %1558, 1
  store i64 %1559, i64* %i, align 8
  br label %1482

; <label>:1560                                    ; preds = %1482
  %1561 = load i64*, i64** %tempIndex, align 8
  %1562 = bitcast i64* %1561 to i8*
  call void @free(i8* %1562) #6
  br label %1563

; <label>:1563                                    ; preds = %1560, %1411
  %1564 = load %struct.random*, %struct.random** %stream, align 8
  call void @random_free(%struct.random* %1564)
  %1565 = load i64*, i64** %permV, align 8
  %1566 = bitcast i64* %1565 to i8*
  call void @free(i8* %1566) #6
  ret void
}

declare %struct.random* @random_alloc(...) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

declare void @random_seed(%struct.random*, i64) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare i64 @random_generate(%struct.random*) #1

; Function Attrs: nounwind readnone
declare double @ceil(double) #4

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare void @all_radixsort_node_aux_s3_seq(i64, i64*, i64*, i64*, i64*) #1

declare void @random_free(%struct.random*) #1

; Function Attrs: nounwind uwtable
define void @genScalData(i8* %argPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %handler.i47 = alloca i64, align 8
  %ret.i48 = alloca i64, align 8
  %4 = alloca i64, align 8
  %handler.i45 = alloca i64, align 8
  %ret.i46 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %handler.i43 = alloca i64, align 8
  %ret.i44 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %handler.i = alloca i64, align 8
  %ret.i = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %_tm_thread_context = alloca %struct._tm_thread_context_t*, align 8
  %SDGdataPtr = alloca %struct.graphSDG*, align 8
  %myId = alloca i64, align 8
  %numThread = alloca i64, align 8
  %stream = alloca %struct.random*, align 8
  %permV = alloca i64*, align 8
  %i = alloca i64, align 8
  %i_start = alloca i64, align 8
  %i_stop = alloca i64, align 8
  %t1 = alloca i64, align 8
  %t = alloca i64, align 8
  %__status = alloca i32, align 4
  %tries = alloca i32, align 4
  %t2 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %cliqueSizes = alloca i64*, align 8
  %estTotCliques = alloca i64, align 8
  %totCliques = alloca i64, align 8
  %lastVsInCliques = alloca i64*, align 8
  %firstVsInCliques = alloca i64*, align 8
  %estTotEdges = alloca i64, align 8
  %i_edgePtr = alloca i64, align 8
  %p = alloca float, align 4
  %startV = alloca i64*, align 8
  %endV = alloca i64*, align 8
  %numByte = alloca i64, align 8
  %numByte1 = alloca i64, align 8
  %tmpEdgeCounter = alloca i64**, align 8
  %i_clique = alloca i64, align 8
  %i_cliqueSize = alloca i64, align 8
  %i_firstVsInClique = alloca i64, align 8
  %j = alloca i64, align 8
  %r = alloca float, align 4
  %randNumEdges = alloca i64, align 8
  %i_paralEdge = alloca i64, align 8
  %j2 = alloca i64, align 8
  %r3 = alloca float, align 4
  %i_edgeStartCounter = alloca i64*, align 8
  %i_edgeEndCounter = alloca i64*, align 8
  %__status4 = alloca i32, align 4
  %tries5 = alloca i32, align 4
  %16 = alloca i64, align 8
  %edgeNum = alloca i64, align 8
  %startVertex = alloca i64*, align 8
  %endVertex = alloca i64*, align 8
  %numByte6 = alloca i64, align 8
  %numByte7 = alloca i64, align 8
  %numEdgesPlacedInCliques = alloca i64, align 8
  %tempVertex1 = alloca i64, align 8
  %h = alloca i64, align 8
  %l = alloca i64, align 8
  %t8 = alloca i64, align 8
  %m = alloca i64, align 8
  %m9 = alloca i64, align 8
  %t110 = alloca i64, align 8
  %d = alloca i64, align 8
  %r11 = alloca float, align 4
  %tempVertex2 = alloca i64, align 8
  %m12 = alloca i64, align 8
  %m13 = alloca i64, align 8
  %t214 = alloca i64, align 8
  %randNumEdges15 = alloca i64, align 8
  %j16 = alloca i64, align 8
  %r0 = alloca float, align 4
  %tempVertex217 = alloca i64, align 8
  %m18 = alloca i64, align 8
  %m19 = alloca i64, align 8
  %t220 = alloca i64, align 8
  %randNumEdges21 = alloca i64, align 8
  %j22 = alloca i64, align 8
  %__status23 = alloca i32, align 4
  %tries24 = alloca i32, align 4
  %17 = alloca i64, align 8
  %numEdgesPlacedOutside = alloca i64, align 8
  %numEdgesPlaced = alloca i64, align 8
  %numStrWtEdges = alloca i64, align 8
  %r25 = alloca float, align 4
  %t26 = alloca i64, align 8
  %__status27 = alloca i32, align 4
  %tries28 = alloca i32, align 4
  %18 = alloca i64, align 8
  %j29 = alloca i64, align 8
  %t30 = alloca i64, align 8
  %j31 = alloca i64, align 8
  %numByte32 = alloca i64, align 8
  %i0 = alloca i64, align 8
  %i1 = alloca i64, align 8
  %j33 = alloca i64, align 8
  %k = alloca i64, align 8
  %t34 = alloca i64, align 8
  %j35 = alloca i64, align 8
  %k36 = alloca i64, align 8
  %t37 = alloca i64, align 8
  %tempIndex = alloca i64*, align 8
  %i038 = alloca i64, align 8
  %j39 = alloca i64, align 8
  %j40 = alloca i64, align 8
  %k41 = alloca i64, align 8
  %t42 = alloca i64, align 8
  store i8* %argPtr, i8** %13, align 8
  %19 = call i64 (...) @thread_getId()
  %20 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %21 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %20, i64 %19
  store %struct._tm_thread_context_t* %21, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  br label %22

; <label>:22                                      ; preds = %0
  %23 = call i64 (...) @thread_getId()
  %24 = trunc i64 %23 to i32
  call void @SimRoiStart(i32 %24)
  br label %25

; <label>:25                                      ; preds = %22
  %26 = load i8*, i8** %13, align 8
  %27 = bitcast i8* %26 to %struct.graphSDG*
  store %struct.graphSDG* %27, %struct.graphSDG** %SDGdataPtr, align 8
  %28 = call i64 (...) @thread_getId()
  store i64 %28, i64* %myId, align 8
  %29 = call i64 (...) @thread_getNumThread()
  store i64 %29, i64* %numThread, align 8
  %30 = call %struct.random* (...) @Prandom_alloc()
  store %struct.random* %30, %struct.random** %stream, align 8
  %31 = load %struct.random*, %struct.random** %stream, align 8
  %32 = icmp ne %struct.random* %31, null
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %25
  br label %36

; <label>:34                                      ; preds = %25
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 780, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %36

; <label>:36                                      ; preds = %35, %33
  %37 = load %struct.random*, %struct.random** %stream, align 8
  %38 = load i64, i64* %myId, align 8
  call void @random_seed(%struct.random* %37, i64 %38)
  %39 = load i64, i64* %myId, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %53

; <label>:41                                      ; preds = %36
  %42 = load i64, i64* @TOT_VERTICES, align 8
  %43 = mul i64 %42, 8
  %44 = call noalias i8* @malloc(i64 %43) #6
  %45 = bitcast i8* %44 to i64*
  store i64* %45, i64** %permV, align 8
  %46 = load i64*, i64** %permV, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %48, label %49

; <label>:48                                      ; preds = %41
  br label %51

; <label>:49                                      ; preds = %41
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 787, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %51

; <label>:51                                      ; preds = %50, %48
  %52 = load i64*, i64** %permV, align 8
  store i64* %52, i64** @global_permV, align 8
  br label %53

; <label>:53                                      ; preds = %51, %36
  call void (...) @thread_barrier_wait()
  %54 = load i64*, i64** @global_permV, align 8
  store i64* %54, i64** %permV, align 8
  %55 = load i64, i64* @TOT_VERTICES, align 8
  %56 = load i64, i64* %myId, align 8
  %57 = load i64, i64* %numThread, align 8
  call void @createPartition(i64 0, i64 %55, i64 %56, i64 %57, i64* %i_start, i64* %i_stop)
  %58 = load i64, i64* %i_start, align 8
  store i64 %58, i64* %i, align 8
  br label %59

; <label>:59                                      ; preds = %68, %53
  %60 = load i64, i64* %i, align 8
  %61 = load i64, i64* %i_stop, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %71

; <label>:63                                      ; preds = %59
  %64 = load i64, i64* %i, align 8
  %65 = load i64, i64* %i, align 8
  %66 = load i64*, i64** %permV, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 %65
  store i64 %64, i64* %67, align 8
  br label %68

; <label>:68                                      ; preds = %63
  %69 = load i64, i64* %i, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %i, align 8
  br label %59

; <label>:71                                      ; preds = %59
  call void (...) @thread_barrier_wait()
  %72 = load i64, i64* %i_start, align 8
  store i64 %72, i64* %i, align 8
  br label %73

; <label>:73                                      ; preds = %152, %71
  %74 = load i64, i64* %i, align 8
  %75 = load i64, i64* %i_stop, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %155

; <label>:77                                      ; preds = %73
  %78 = load %struct.random*, %struct.random** %stream, align 8
  %79 = call i64 @random_generate(%struct.random* %78)
  store i64 %79, i64* %t1, align 8
  %80 = load i64, i64* %i, align 8
  %81 = load i64, i64* %t1, align 8
  %82 = load i64, i64* @TOT_VERTICES, align 8
  %83 = load i64, i64* %i, align 8
  %84 = sub i64 %82, %83
  %85 = urem i64 %81, %84
  %86 = add i64 %80, %85
  store i64 %86, i64* %t, align 8
  %87 = load i64, i64* %t, align 8
  %88 = load i64, i64* %i, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %151

; <label>:90                                      ; preds = %77
  store i32 -1, i32* %__status, align 4
  store i32 9, i32* %tries, align 4
  br label %91

; <label>:91                                      ; preds = %112, %90
  br label %92

; <label>:92                                      ; preds = %95, %91
  %93 = call i64 (...) @RTM_fallback_isLocked()
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

; <label>:95                                      ; preds = %92
  call void @llvm.x86.sse2.pause() #6
  br label %92

; <label>:96                                      ; preds = %92
  %97 = load i32, i32* %tries, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %tries, align 4
  %99 = load i32, i32* %tries, align 4
  %100 = icmp sle i32 %99, 0
  br i1 %100, label %101, label %102

; <label>:101                                     ; preds = %96
  call void (...) @RTM_fallback_lock()
  br label %119

; <label>:102                                     ; preds = %96
  store i64 1, i64* %11, align 8
  store i64 0, i64* %handler.i, align 8
  store i64 4294967295, i64* %ret.i, align 8
  %103 = load i64, i64* %ret.i, align 8
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* %handler.i, align 8
  %106 = load i64, i64* %11, align 8
  %107 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %104, i64 %105, i64 %106, i64 %103) #6, !srcloc !1
  store i64 %107, i64* %ret.i, align 8
  %108 = load i64, i64* %ret.i, align 8
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %__status, align 4
  %110 = load i32, i32* %__status, align 4
  %111 = icmp ne i32 %110, -1
  br i1 %111, label %112, label %113

; <label>:112                                     ; preds = %102
  br label %91

; <label>:113                                     ; preds = %102
  %114 = call i64 (...) @RTM_fallback_isLocked()
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

; <label>:116                                     ; preds = %113
  store i64 255, i64* %10, align 8
  %117 = load i64, i64* %10, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %117) #6, !srcloc !2
  br label %118

; <label>:118                                     ; preds = %116, %113
  br label %119

; <label>:119                                     ; preds = %118, %101
  %120 = load i64, i64* %t, align 8
  %121 = load i64*, i64** %permV, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 %120
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %t2, align 8
  %124 = load i64, i64* %i, align 8
  %125 = load i64*, i64** %permV, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 %124
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %t, align 8
  %129 = load i64*, i64** %permV, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 %128
  store i64 %127, i64* %130, align 8
  %131 = load i64, i64* %t, align 8
  %132 = load i64*, i64** %permV, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 %131
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %14, align 8
  %135 = load i64, i64* %14, align 8
  %136 = load i64, i64* %t2, align 8
  %137 = load i64, i64* %i, align 8
  %138 = load i64*, i64** %permV, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 %137
  store i64 %136, i64* %139, align 8
  %140 = load i64, i64* %i, align 8
  %141 = load i64*, i64** %permV, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 %140
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %15, align 8
  %144 = load i64, i64* %15, align 8
  %145 = load i32, i32* %tries, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %149

; <label>:147                                     ; preds = %119
  store i64 1, i64* %9, align 8
  %148 = load i64, i64* %9, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %148) #6, !srcloc !3
  br label %150

; <label>:149                                     ; preds = %119
  call void (...) @RTM_fallback_unlock()
  br label %150

; <label>:150                                     ; preds = %149, %147
  br label %151

; <label>:151                                     ; preds = %150, %77
  br label %152

; <label>:152                                     ; preds = %151
  %153 = load i64, i64* %i, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %i, align 8
  br label %73

; <label>:155                                     ; preds = %73
  %156 = load i64, i64* @TOT_VERTICES, align 8
  %157 = uitofp i64 %156 to double
  %158 = fmul double 1.500000e+00, %157
  %159 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %160 = add nsw i64 1, %159
  %161 = sdiv i64 %160, 2
  %162 = sitofp i64 %161 to double
  %163 = fdiv double %158, %162
  %164 = call double @ceil(double %163) #8
  %165 = fptosi double %164 to i64
  store i64 %165, i64* %estTotCliques, align 8
  %166 = load i64, i64* %myId, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %180

; <label>:168                                     ; preds = %155
  %169 = load i64, i64* %estTotCliques, align 8
  %170 = mul i64 %169, 8
  %171 = call noalias i8* @malloc(i64 %170) #6
  %172 = bitcast i8* %171 to i64*
  store i64* %172, i64** %cliqueSizes, align 8
  %173 = load i64*, i64** %cliqueSizes, align 8
  %174 = icmp ne i64* %173, null
  br i1 %174, label %175, label %176

; <label>:175                                     ; preds = %168
  br label %178

; <label>:176                                     ; preds = %168
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 833, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %178

; <label>:178                                     ; preds = %177, %175
  %179 = load i64*, i64** %cliqueSizes, align 8
  store i64* %179, i64** @global_cliqueSizes, align 8
  br label %180

; <label>:180                                     ; preds = %178, %155
  call void (...) @thread_barrier_wait()
  %181 = load i64*, i64** @global_cliqueSizes, align 8
  store i64* %181, i64** %cliqueSizes, align 8
  %182 = load i64, i64* %estTotCliques, align 8
  %183 = load i64, i64* %myId, align 8
  %184 = load i64, i64* %numThread, align 8
  call void @createPartition(i64 0, i64 %182, i64 %183, i64 %184, i64* %i_start, i64* %i_stop)
  %185 = load i64, i64* %i_start, align 8
  store i64 %185, i64* %i, align 8
  br label %186

; <label>:186                                     ; preds = %199, %180
  %187 = load i64, i64* %i, align 8
  %188 = load i64, i64* %i_stop, align 8
  %189 = icmp slt i64 %187, %188
  br i1 %189, label %190, label %202

; <label>:190                                     ; preds = %186
  %191 = load %struct.random*, %struct.random** %stream, align 8
  %192 = call i64 @random_generate(%struct.random* %191)
  %193 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %194 = urem i64 %192, %193
  %195 = add i64 1, %194
  %196 = load i64, i64* %i, align 8
  %197 = load i64*, i64** %cliqueSizes, align 8
  %198 = getelementptr inbounds i64, i64* %197, i64 %196
  store i64 %195, i64* %198, align 8
  br label %199

; <label>:199                                     ; preds = %190
  %200 = load i64, i64* %i, align 8
  %201 = add nsw i64 %200, 1
  store i64 %201, i64* %i, align 8
  br label %186

; <label>:202                                     ; preds = %186
  call void (...) @thread_barrier_wait()
  store i64 0, i64* %totCliques, align 8
  %203 = load i64, i64* %myId, align 8
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %288

; <label>:205                                     ; preds = %202
  %206 = load i64, i64* %estTotCliques, align 8
  %207 = mul i64 %206, 8
  %208 = call noalias i8* @malloc(i64 %207) #6
  %209 = bitcast i8* %208 to i64*
  store i64* %209, i64** %lastVsInCliques, align 8
  %210 = load i64*, i64** %lastVsInCliques, align 8
  %211 = icmp ne i64* %210, null
  br i1 %211, label %212, label %213

; <label>:212                                     ; preds = %205
  br label %215

; <label>:213                                     ; preds = %205
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 862, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %215

; <label>:215                                     ; preds = %214, %212
  %216 = load i64*, i64** %lastVsInCliques, align 8
  store i64* %216, i64** @global_lastVsInCliques, align 8
  %217 = load i64, i64* %estTotCliques, align 8
  %218 = mul i64 %217, 8
  %219 = call noalias i8* @malloc(i64 %218) #6
  %220 = bitcast i8* %219 to i64*
  store i64* %220, i64** %firstVsInCliques, align 8
  %221 = load i64*, i64** %firstVsInCliques, align 8
  %222 = icmp ne i64* %221, null
  br i1 %222, label %223, label %224

; <label>:223                                     ; preds = %215
  br label %226

; <label>:224                                     ; preds = %215
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 865, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %226

; <label>:226                                     ; preds = %225, %223
  %227 = load i64*, i64** %firstVsInCliques, align 8
  store i64* %227, i64** @global_firstVsInCliques, align 8
  %228 = load i64*, i64** %cliqueSizes, align 8
  %229 = getelementptr inbounds i64, i64* %228, i64 0
  %230 = load i64, i64* %229, align 8
  %231 = sub nsw i64 %230, 1
  %232 = load i64*, i64** %lastVsInCliques, align 8
  %233 = getelementptr inbounds i64, i64* %232, i64 0
  store i64 %231, i64* %233, align 8
  store i64 1, i64* %i, align 8
  br label %234

; <label>:234                                     ; preds = %261, %226
  %235 = load i64, i64* %i, align 8
  %236 = load i64, i64* %estTotCliques, align 8
  %237 = icmp slt i64 %235, %236
  br i1 %237, label %238, label %264

; <label>:238                                     ; preds = %234
  %239 = load i64, i64* %i, align 8
  %240 = load i64*, i64** %cliqueSizes, align 8
  %241 = getelementptr inbounds i64, i64* %240, i64 %239
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* %i, align 8
  %244 = sub nsw i64 %243, 1
  %245 = load i64*, i64** %lastVsInCliques, align 8
  %246 = getelementptr inbounds i64, i64* %245, i64 %244
  %247 = load i64, i64* %246, align 8
  %248 = add i64 %242, %247
  %249 = load i64, i64* %i, align 8
  %250 = load i64*, i64** %lastVsInCliques, align 8
  %251 = getelementptr inbounds i64, i64* %250, i64 %249
  store i64 %248, i64* %251, align 8
  %252 = load i64, i64* %i, align 8
  %253 = load i64*, i64** %lastVsInCliques, align 8
  %254 = getelementptr inbounds i64, i64* %253, i64 %252
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @TOT_VERTICES, align 8
  %257 = sub i64 %256, 1
  %258 = icmp uge i64 %255, %257
  br i1 %258, label %259, label %260

; <label>:259                                     ; preds = %238
  br label %264

; <label>:260                                     ; preds = %238
  br label %261

; <label>:261                                     ; preds = %260
  %262 = load i64, i64* %i, align 8
  %263 = add nsw i64 %262, 1
  store i64 %263, i64* %i, align 8
  br label %234

; <label>:264                                     ; preds = %259, %234
  %265 = load i64, i64* %i, align 8
  %266 = add nsw i64 %265, 1
  store i64 %266, i64* %totCliques, align 8
  %267 = load i64, i64* %totCliques, align 8
  store i64 %267, i64* @global_totCliques, align 8
  %268 = load i64, i64* @TOT_VERTICES, align 8
  %269 = load i64, i64* %totCliques, align 8
  %270 = sub nsw i64 %269, 2
  %271 = load i64*, i64** %lastVsInCliques, align 8
  %272 = getelementptr inbounds i64, i64* %271, i64 %270
  %273 = load i64, i64* %272, align 8
  %274 = sub i64 %268, %273
  %275 = sub i64 %274, 1
  %276 = load i64, i64* %totCliques, align 8
  %277 = sub nsw i64 %276, 1
  %278 = load i64*, i64** %cliqueSizes, align 8
  %279 = getelementptr inbounds i64, i64* %278, i64 %277
  store i64 %275, i64* %279, align 8
  %280 = load i64, i64* @TOT_VERTICES, align 8
  %281 = sub i64 %280, 1
  %282 = load i64, i64* %totCliques, align 8
  %283 = sub nsw i64 %282, 1
  %284 = load i64*, i64** %lastVsInCliques, align 8
  %285 = getelementptr inbounds i64, i64* %284, i64 %283
  store i64 %281, i64* %285, align 8
  %286 = load i64*, i64** %firstVsInCliques, align 8
  %287 = getelementptr inbounds i64, i64* %286, i64 0
  store i64 0, i64* %287, align 8
  br label %288

; <label>:288                                     ; preds = %264, %202
  call void (...) @thread_barrier_wait()
  %289 = load i64*, i64** @global_lastVsInCliques, align 8
  store i64* %289, i64** %lastVsInCliques, align 8
  %290 = load i64*, i64** @global_firstVsInCliques, align 8
  store i64* %290, i64** %firstVsInCliques, align 8
  %291 = load i64, i64* @global_totCliques, align 8
  store i64 %291, i64* %totCliques, align 8
  %292 = load i64, i64* %totCliques, align 8
  %293 = load i64, i64* %myId, align 8
  %294 = load i64, i64* %numThread, align 8
  call void @createPartition(i64 1, i64 %292, i64 %293, i64 %294, i64* %i_start, i64* %i_stop)
  %295 = load i64, i64* %i_start, align 8
  store i64 %295, i64* %i, align 8
  br label %296

; <label>:296                                     ; preds = %310, %288
  %297 = load i64, i64* %i, align 8
  %298 = load i64, i64* %i_stop, align 8
  %299 = icmp slt i64 %297, %298
  br i1 %299, label %300, label %313

; <label>:300                                     ; preds = %296
  %301 = load i64, i64* %i, align 8
  %302 = sub nsw i64 %301, 1
  %303 = load i64*, i64** %lastVsInCliques, align 8
  %304 = getelementptr inbounds i64, i64* %303, i64 %302
  %305 = load i64, i64* %304, align 8
  %306 = add i64 %305, 1
  %307 = load i64, i64* %i, align 8
  %308 = load i64*, i64** %firstVsInCliques, align 8
  %309 = getelementptr inbounds i64, i64* %308, i64 %307
  store i64 %306, i64* %309, align 8
  br label %310

; <label>:310                                     ; preds = %300
  %311 = load i64, i64* %i, align 8
  %312 = add nsw i64 %311, 1
  store i64 %312, i64* %i, align 8
  br label %296

; <label>:313                                     ; preds = %296
  %314 = load i64, i64* @SCALE, align 8
  %315 = icmp sge i64 %314, 12
  br i1 %315, label %316, label %324

; <label>:316                                     ; preds = %313
  %317 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %318 = sub nsw i64 %317, 1
  %319 = load i64, i64* @TOT_VERTICES, align 8
  %320 = mul i64 %318, %319
  %321 = uitofp i64 %320 to double
  %322 = call double @ceil(double %321) #8
  %323 = fptosi double %322 to i64
  store i64 %323, i64* %estTotEdges, align 8
  br label %340

; <label>:324                                     ; preds = %313
  %325 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %326 = sub nsw i64 %325, 1
  %327 = load i64, i64* @TOT_VERTICES, align 8
  %328 = mul i64 %326, %327
  %329 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %330 = add nsw i64 1, %329
  %331 = sdiv i64 %330, 2
  %332 = mul i64 %328, %331
  %333 = load i64, i64* @TOT_VERTICES, align 8
  %334 = mul i64 %333, 2
  %335 = add i64 %332, %334
  %336 = uitofp i64 %335 to double
  %337 = fmul double 1.200000e+00, %336
  %338 = call double @ceil(double %337) #8
  %339 = fptosi double %338 to i64
  store i64 %339, i64* %estTotEdges, align 8
  br label %340

; <label>:340                                     ; preds = %324, %316
  store i64 0, i64* %i_edgePtr, align 8
  %341 = load float, float* @PROB_UNIDIRECTIONAL, align 4
  store float %341, float* %p, align 4
  %342 = load i64, i64* %numThread, align 8
  %343 = icmp sgt i64 %342, 3
  br i1 %343, label %344, label %358

; <label>:344                                     ; preds = %340
  %345 = load i64, i64* %estTotEdges, align 8
  %346 = load i64, i64* %numThread, align 8
  %347 = sdiv i64 %345, %346
  %348 = sitofp i64 %347 to double
  %349 = fmul double 1.500000e+00, %348
  %350 = fmul double %349, 8.000000e+00
  %351 = fptosi double %350 to i64
  store i64 %351, i64* %numByte, align 8
  %352 = load i64, i64* %numByte, align 8
  %353 = call noalias i8* @malloc(i64 %352) #6
  %354 = bitcast i8* %353 to i64*
  store i64* %354, i64** %startV, align 8
  %355 = load i64, i64* %numByte, align 8
  %356 = call noalias i8* @malloc(i64 %355) #6
  %357 = bitcast i8* %356 to i64*
  store i64* %357, i64** %endV, align 8
  br label %369

; <label>:358                                     ; preds = %340
  %359 = load i64, i64* %estTotEdges, align 8
  %360 = load i64, i64* %numThread, align 8
  %361 = sdiv i64 %359, %360
  %362 = mul i64 %361, 8
  store i64 %362, i64* %numByte1, align 8
  %363 = load i64, i64* %numByte1, align 8
  %364 = call noalias i8* @malloc(i64 %363) #6
  %365 = bitcast i8* %364 to i64*
  store i64* %365, i64** %startV, align 8
  %366 = load i64, i64* %numByte1, align 8
  %367 = call noalias i8* @malloc(i64 %366) #6
  %368 = bitcast i8* %367 to i64*
  store i64* %368, i64** %endV, align 8
  br label %369

; <label>:369                                     ; preds = %358, %344
  %370 = load i64*, i64** %startV, align 8
  %371 = icmp ne i64* %370, null
  br i1 %371, label %372, label %373

; <label>:372                                     ; preds = %369
  br label %375

; <label>:373                                     ; preds = %369
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 964, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %375

; <label>:375                                     ; preds = %374, %372
  %376 = load i64*, i64** %endV, align 8
  %377 = icmp ne i64* %376, null
  br i1 %377, label %378, label %379

; <label>:378                                     ; preds = %375
  br label %381

; <label>:379                                     ; preds = %375
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 965, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %381

; <label>:381                                     ; preds = %380, %378
  %382 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %383 = mul i64 %382, 8
  %384 = call noalias i8* @malloc(i64 %383) #6
  %385 = bitcast i8* %384 to i64**
  store i64** %385, i64*** %tmpEdgeCounter, align 8
  %386 = load i64**, i64*** %tmpEdgeCounter, align 8
  %387 = icmp ne i64** %386, null
  br i1 %387, label %388, label %389

; <label>:388                                     ; preds = %381
  br label %391

; <label>:389                                     ; preds = %381
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 972, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %391

; <label>:391                                     ; preds = %390, %388
  store i64 0, i64* %i, align 8
  br label %392

; <label>:392                                     ; preds = %413, %391
  %393 = load i64, i64* %i, align 8
  %394 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %395 = icmp slt i64 %393, %394
  br i1 %395, label %396, label %416

; <label>:396                                     ; preds = %392
  %397 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %398 = mul i64 %397, 8
  %399 = call noalias i8* @malloc(i64 %398) #6
  %400 = bitcast i8* %399 to i64*
  %401 = load i64, i64* %i, align 8
  %402 = load i64**, i64*** %tmpEdgeCounter, align 8
  %403 = getelementptr inbounds i64*, i64** %402, i64 %401
  store i64* %400, i64** %403, align 8
  %404 = load i64, i64* %i, align 8
  %405 = load i64**, i64*** %tmpEdgeCounter, align 8
  %406 = getelementptr inbounds i64*, i64** %405, i64 %404
  %407 = load i64*, i64** %406, align 8
  %408 = icmp ne i64* %407, null
  br i1 %408, label %409, label %410

; <label>:409                                     ; preds = %396
  br label %412

; <label>:410                                     ; preds = %396
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 976, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %412

; <label>:412                                     ; preds = %411, %409
  br label %413

; <label>:413                                     ; preds = %412
  %414 = load i64, i64* %i, align 8
  %415 = add nsw i64 %414, 1
  store i64 %415, i64* %i, align 8
  br label %392

; <label>:416                                     ; preds = %392
  %417 = load i64, i64* %totCliques, align 8
  %418 = load i64, i64* %myId, align 8
  %419 = load i64, i64* %numThread, align 8
  call void @createPartition(i64 0, i64 %417, i64 %418, i64 %419, i64* %i_start, i64* %i_stop)
  %420 = load i64, i64* %i_start, align 8
  store i64 %420, i64* %i_clique, align 8
  br label %421

; <label>:421                                     ; preds = %636, %416
  %422 = load i64, i64* %i_clique, align 8
  %423 = load i64, i64* %i_stop, align 8
  %424 = icmp slt i64 %422, %423
  br i1 %424, label %425, label %639

; <label>:425                                     ; preds = %421
  %426 = load i64, i64* %i_clique, align 8
  %427 = load i64*, i64** %cliqueSizes, align 8
  %428 = getelementptr inbounds i64, i64* %427, i64 %426
  %429 = load i64, i64* %428, align 8
  store i64 %429, i64* %i_cliqueSize, align 8
  %430 = load i64, i64* %i_clique, align 8
  %431 = load i64*, i64** %firstVsInCliques, align 8
  %432 = getelementptr inbounds i64, i64* %431, i64 %430
  %433 = load i64, i64* %432, align 8
  store i64 %433, i64* %i_firstVsInClique, align 8
  store i64 0, i64* %i, align 8
  br label %434

; <label>:434                                     ; preds = %557, %425
  %435 = load i64, i64* %i, align 8
  %436 = load i64, i64* %i_cliqueSize, align 8
  %437 = icmp slt i64 %435, %436
  br i1 %437, label %438, label %560

; <label>:438                                     ; preds = %434
  store i64 0, i64* %j, align 8
  br label %439

; <label>:439                                     ; preds = %553, %438
  %440 = load i64, i64* %j, align 8
  %441 = load i64, i64* %i, align 8
  %442 = icmp slt i64 %440, %441
  br i1 %442, label %443, label %556

; <label>:443                                     ; preds = %439
  %444 = load %struct.random*, %struct.random** %stream, align 8
  %445 = call i64 @random_generate(%struct.random* %444)
  %446 = urem i64 %445, 1000
  %447 = uitofp i64 %446 to float
  %448 = fdiv float %447, 1.000000e+03
  store float %448, float* %r, align 4
  %449 = load float, float* %r, align 4
  %450 = load float, float* %p, align 4
  %451 = fcmp oge float %449, %450
  br i1 %451, label %452, label %493

; <label>:452                                     ; preds = %443
  %453 = load i64, i64* %i, align 8
  %454 = load i64, i64* %i_firstVsInClique, align 8
  %455 = add nsw i64 %453, %454
  %456 = load i64, i64* %i_edgePtr, align 8
  %457 = load i64*, i64** %startV, align 8
  %458 = getelementptr inbounds i64, i64* %457, i64 %456
  store i64 %455, i64* %458, align 8
  %459 = load i64, i64* %j, align 8
  %460 = load i64, i64* %i_firstVsInClique, align 8
  %461 = add nsw i64 %459, %460
  %462 = load i64, i64* %i_edgePtr, align 8
  %463 = load i64*, i64** %endV, align 8
  %464 = getelementptr inbounds i64, i64* %463, i64 %462
  store i64 %461, i64* %464, align 8
  %465 = load i64, i64* %i_edgePtr, align 8
  %466 = add nsw i64 %465, 1
  store i64 %466, i64* %i_edgePtr, align 8
  %467 = load i64, i64* %j, align 8
  %468 = load i64, i64* %i, align 8
  %469 = load i64**, i64*** %tmpEdgeCounter, align 8
  %470 = getelementptr inbounds i64*, i64** %469, i64 %468
  %471 = load i64*, i64** %470, align 8
  %472 = getelementptr inbounds i64, i64* %471, i64 %467
  store i64 1, i64* %472, align 8
  %473 = load i64, i64* %j, align 8
  %474 = load i64, i64* %i_firstVsInClique, align 8
  %475 = add nsw i64 %473, %474
  %476 = load i64, i64* %i_edgePtr, align 8
  %477 = load i64*, i64** %startV, align 8
  %478 = getelementptr inbounds i64, i64* %477, i64 %476
  store i64 %475, i64* %478, align 8
  %479 = load i64, i64* %i, align 8
  %480 = load i64, i64* %i_firstVsInClique, align 8
  %481 = add nsw i64 %479, %480
  %482 = load i64, i64* %i_edgePtr, align 8
  %483 = load i64*, i64** %endV, align 8
  %484 = getelementptr inbounds i64, i64* %483, i64 %482
  store i64 %481, i64* %484, align 8
  %485 = load i64, i64* %i_edgePtr, align 8
  %486 = add nsw i64 %485, 1
  store i64 %486, i64* %i_edgePtr, align 8
  %487 = load i64, i64* %i, align 8
  %488 = load i64, i64* %j, align 8
  %489 = load i64**, i64*** %tmpEdgeCounter, align 8
  %490 = getelementptr inbounds i64*, i64** %489, i64 %488
  %491 = load i64*, i64** %490, align 8
  %492 = getelementptr inbounds i64, i64* %491, i64 %487
  store i64 1, i64* %492, align 8
  br label %552

; <label>:493                                     ; preds = %443
  %494 = load float, float* %r, align 4
  %495 = fpext float %494 to double
  %496 = fcmp oge double %495, 5.000000e-01
  br i1 %496, label %497, label %524

; <label>:497                                     ; preds = %493
  %498 = load i64, i64* %i, align 8
  %499 = load i64, i64* %i_firstVsInClique, align 8
  %500 = add nsw i64 %498, %499
  %501 = load i64, i64* %i_edgePtr, align 8
  %502 = load i64*, i64** %startV, align 8
  %503 = getelementptr inbounds i64, i64* %502, i64 %501
  store i64 %500, i64* %503, align 8
  %504 = load i64, i64* %j, align 8
  %505 = load i64, i64* %i_firstVsInClique, align 8
  %506 = add nsw i64 %504, %505
  %507 = load i64, i64* %i_edgePtr, align 8
  %508 = load i64*, i64** %endV, align 8
  %509 = getelementptr inbounds i64, i64* %508, i64 %507
  store i64 %506, i64* %509, align 8
  %510 = load i64, i64* %i_edgePtr, align 8
  %511 = add nsw i64 %510, 1
  store i64 %511, i64* %i_edgePtr, align 8
  %512 = load i64, i64* %j, align 8
  %513 = load i64, i64* %i, align 8
  %514 = load i64**, i64*** %tmpEdgeCounter, align 8
  %515 = getelementptr inbounds i64*, i64** %514, i64 %513
  %516 = load i64*, i64** %515, align 8
  %517 = getelementptr inbounds i64, i64* %516, i64 %512
  store i64 1, i64* %517, align 8
  %518 = load i64, i64* %i, align 8
  %519 = load i64, i64* %j, align 8
  %520 = load i64**, i64*** %tmpEdgeCounter, align 8
  %521 = getelementptr inbounds i64*, i64** %520, i64 %519
  %522 = load i64*, i64** %521, align 8
  %523 = getelementptr inbounds i64, i64* %522, i64 %518
  store i64 0, i64* %523, align 8
  br label %551

; <label>:524                                     ; preds = %493
  %525 = load i64, i64* %j, align 8
  %526 = load i64, i64* %i_firstVsInClique, align 8
  %527 = add nsw i64 %525, %526
  %528 = load i64, i64* %i_edgePtr, align 8
  %529 = load i64*, i64** %startV, align 8
  %530 = getelementptr inbounds i64, i64* %529, i64 %528
  store i64 %527, i64* %530, align 8
  %531 = load i64, i64* %i, align 8
  %532 = load i64, i64* %i_firstVsInClique, align 8
  %533 = add nsw i64 %531, %532
  %534 = load i64, i64* %i_edgePtr, align 8
  %535 = load i64*, i64** %endV, align 8
  %536 = getelementptr inbounds i64, i64* %535, i64 %534
  store i64 %533, i64* %536, align 8
  %537 = load i64, i64* %i_edgePtr, align 8
  %538 = add nsw i64 %537, 1
  store i64 %538, i64* %i_edgePtr, align 8
  %539 = load i64, i64* %i, align 8
  %540 = load i64, i64* %j, align 8
  %541 = load i64**, i64*** %tmpEdgeCounter, align 8
  %542 = getelementptr inbounds i64*, i64** %541, i64 %540
  %543 = load i64*, i64** %542, align 8
  %544 = getelementptr inbounds i64, i64* %543, i64 %539
  store i64 1, i64* %544, align 8
  %545 = load i64, i64* %j, align 8
  %546 = load i64, i64* %i, align 8
  %547 = load i64**, i64*** %tmpEdgeCounter, align 8
  %548 = getelementptr inbounds i64*, i64** %547, i64 %546
  %549 = load i64*, i64** %548, align 8
  %550 = getelementptr inbounds i64, i64* %549, i64 %545
  store i64 0, i64* %550, align 8
  br label %551

; <label>:551                                     ; preds = %524, %497
  br label %552

; <label>:552                                     ; preds = %551, %452
  br label %553

; <label>:553                                     ; preds = %552
  %554 = load i64, i64* %j, align 8
  %555 = add nsw i64 %554, 1
  store i64 %555, i64* %j, align 8
  br label %439

; <label>:556                                     ; preds = %439
  br label %557

; <label>:557                                     ; preds = %556
  %558 = load i64, i64* %i, align 8
  %559 = add nsw i64 %558, 1
  store i64 %559, i64* %i, align 8
  br label %434

; <label>:560                                     ; preds = %434
  %561 = load i64, i64* %i_cliqueSize, align 8
  %562 = icmp ne i64 %561, 1
  br i1 %562, label %563, label %635

; <label>:563                                     ; preds = %560
  %564 = load %struct.random*, %struct.random** %stream, align 8
  %565 = call i64 @random_generate(%struct.random* %564)
  %566 = load i64, i64* %i_cliqueSize, align 8
  %567 = mul nsw i64 2, %566
  %568 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %569 = mul nsw i64 %567, %568
  %570 = urem i64 %565, %569
  store i64 %570, i64* %randNumEdges, align 8
  store i64 0, i64* %i_paralEdge, align 8
  br label %571

; <label>:571                                     ; preds = %631, %563
  %572 = load i64, i64* %i_paralEdge, align 8
  %573 = load i64, i64* %randNumEdges, align 8
  %574 = icmp slt i64 %572, %573
  br i1 %574, label %575, label %634

; <label>:575                                     ; preds = %571
  %576 = load %struct.random*, %struct.random** %stream, align 8
  %577 = call i64 @random_generate(%struct.random* %576)
  %578 = load i64, i64* %i_cliqueSize, align 8
  %579 = urem i64 %577, %578
  store i64 %579, i64* %i, align 8
  %580 = load %struct.random*, %struct.random** %stream, align 8
  %581 = call i64 @random_generate(%struct.random* %580)
  %582 = load i64, i64* %i_cliqueSize, align 8
  %583 = urem i64 %581, %582
  store i64 %583, i64* %j2, align 8
  %584 = load i64, i64* %i, align 8
  %585 = load i64, i64* %j2, align 8
  %586 = icmp ne i64 %584, %585
  br i1 %586, label %587, label %630

; <label>:587                                     ; preds = %575
  %588 = load i64, i64* %j2, align 8
  %589 = load i64, i64* %i, align 8
  %590 = load i64**, i64*** %tmpEdgeCounter, align 8
  %591 = getelementptr inbounds i64*, i64** %590, i64 %589
  %592 = load i64*, i64** %591, align 8
  %593 = getelementptr inbounds i64, i64* %592, i64 %588
  %594 = load i64, i64* %593, align 8
  %595 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %596 = icmp ult i64 %594, %595
  br i1 %596, label %597, label %630

; <label>:597                                     ; preds = %587
  %598 = load %struct.random*, %struct.random** %stream, align 8
  %599 = call i64 @random_generate(%struct.random* %598)
  %600 = urem i64 %599, 1000
  %601 = uitofp i64 %600 to float
  %602 = fdiv float %601, 1.000000e+03
  store float %602, float* %r3, align 4
  %603 = load float, float* %r3, align 4
  %604 = load float, float* %p, align 4
  %605 = fcmp oge float %603, %604
  br i1 %605, label %606, label %629

; <label>:606                                     ; preds = %597
  %607 = load i64, i64* %i, align 8
  %608 = load i64, i64* %i_firstVsInClique, align 8
  %609 = add nsw i64 %607, %608
  %610 = load i64, i64* %i_edgePtr, align 8
  %611 = load i64*, i64** %startV, align 8
  %612 = getelementptr inbounds i64, i64* %611, i64 %610
  store i64 %609, i64* %612, align 8
  %613 = load i64, i64* %j2, align 8
  %614 = load i64, i64* %i_firstVsInClique, align 8
  %615 = add nsw i64 %613, %614
  %616 = load i64, i64* %i_edgePtr, align 8
  %617 = load i64*, i64** %endV, align 8
  %618 = getelementptr inbounds i64, i64* %617, i64 %616
  store i64 %615, i64* %618, align 8
  %619 = load i64, i64* %i_edgePtr, align 8
  %620 = add nsw i64 %619, 1
  store i64 %620, i64* %i_edgePtr, align 8
  %621 = load i64, i64* %j2, align 8
  %622 = load i64, i64* %i, align 8
  %623 = load i64**, i64*** %tmpEdgeCounter, align 8
  %624 = getelementptr inbounds i64*, i64** %623, i64 %622
  %625 = load i64*, i64** %624, align 8
  %626 = getelementptr inbounds i64, i64* %625, i64 %621
  %627 = load i64, i64* %626, align 8
  %628 = add i64 %627, 1
  store i64 %628, i64* %626, align 8
  br label %629

; <label>:629                                     ; preds = %606, %597
  br label %630

; <label>:630                                     ; preds = %629, %587, %575
  br label %631

; <label>:631                                     ; preds = %630
  %632 = load i64, i64* %i_paralEdge, align 8
  %633 = add nsw i64 %632, 1
  store i64 %633, i64* %i_paralEdge, align 8
  br label %571

; <label>:634                                     ; preds = %571
  br label %635

; <label>:635                                     ; preds = %634, %560
  br label %636

; <label>:636                                     ; preds = %635
  %637 = load i64, i64* %i_clique, align 8
  %638 = add nsw i64 %637, 1
  store i64 %638, i64* %i_clique, align 8
  br label %421

; <label>:639                                     ; preds = %421
  store i64 0, i64* %i, align 8
  br label %640

; <label>:640                                     ; preds = %650, %639
  %641 = load i64, i64* %i, align 8
  %642 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %643 = icmp slt i64 %641, %642
  br i1 %643, label %644, label %653

; <label>:644                                     ; preds = %640
  %645 = load i64, i64* %i, align 8
  %646 = load i64**, i64*** %tmpEdgeCounter, align 8
  %647 = getelementptr inbounds i64*, i64** %646, i64 %645
  %648 = load i64*, i64** %647, align 8
  %649 = bitcast i64* %648 to i8*
  call void @free(i8* %649) #6
  br label %650

; <label>:650                                     ; preds = %644
  %651 = load i64, i64* %i, align 8
  %652 = add nsw i64 %651, 1
  store i64 %652, i64* %i, align 8
  br label %640

; <label>:653                                     ; preds = %640
  %654 = load i64**, i64*** %tmpEdgeCounter, align 8
  %655 = bitcast i64** %654 to i8*
  call void @free(i8* %655) #6
  %656 = load i64, i64* %myId, align 8
  %657 = icmp eq i64 %656, 0
  br i1 %657, label %658, label %681

; <label>:658                                     ; preds = %653
  %659 = load i64, i64* %numThread, align 8
  %660 = mul i64 %659, 8
  %661 = call noalias i8* @malloc(i64 %660) #6
  %662 = bitcast i8* %661 to i64*
  store i64* %662, i64** %i_edgeStartCounter, align 8
  %663 = load i64*, i64** %i_edgeStartCounter, align 8
  %664 = icmp ne i64* %663, null
  br i1 %664, label %665, label %666

; <label>:665                                     ; preds = %658
  br label %668

; <label>:666                                     ; preds = %658
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1075, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %668

; <label>:668                                     ; preds = %667, %665
  %669 = load i64*, i64** %i_edgeStartCounter, align 8
  store i64* %669, i64** @global_i_edgeStartCounter, align 8
  %670 = load i64, i64* %numThread, align 8
  %671 = mul i64 %670, 8
  %672 = call noalias i8* @malloc(i64 %671) #6
  %673 = bitcast i8* %672 to i64*
  store i64* %673, i64** %i_edgeEndCounter, align 8
  %674 = load i64*, i64** %i_edgeEndCounter, align 8
  %675 = icmp ne i64* %674, null
  br i1 %675, label %676, label %677

; <label>:676                                     ; preds = %668
  br label %679

; <label>:677                                     ; preds = %668
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1078, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %679

; <label>:679                                     ; preds = %678, %676
  %680 = load i64*, i64** %i_edgeEndCounter, align 8
  store i64* %680, i64** @global_i_edgeEndCounter, align 8
  br label %681

; <label>:681                                     ; preds = %679, %653
  call void (...) @thread_barrier_wait()
  %682 = load i64*, i64** @global_i_edgeStartCounter, align 8
  store i64* %682, i64** %i_edgeStartCounter, align 8
  %683 = load i64*, i64** @global_i_edgeEndCounter, align 8
  store i64* %683, i64** %i_edgeEndCounter, align 8
  %684 = load i64, i64* %i_edgePtr, align 8
  %685 = load i64, i64* %myId, align 8
  %686 = load i64*, i64** %i_edgeEndCounter, align 8
  %687 = getelementptr inbounds i64, i64* %686, i64 %685
  store i64 %684, i64* %687, align 8
  %688 = load i64, i64* %myId, align 8
  %689 = load i64*, i64** %i_edgeStartCounter, align 8
  %690 = getelementptr inbounds i64, i64* %689, i64 %688
  store i64 0, i64* %690, align 8
  call void (...) @thread_barrier_wait()
  %691 = load i64, i64* %myId, align 8
  %692 = icmp eq i64 %691, 0
  br i1 %692, label %693, label %724

; <label>:693                                     ; preds = %681
  store i64 1, i64* %i, align 8
  br label %694

; <label>:694                                     ; preds = %720, %693
  %695 = load i64, i64* %i, align 8
  %696 = load i64, i64* %numThread, align 8
  %697 = icmp slt i64 %695, %696
  br i1 %697, label %698, label %723

; <label>:698                                     ; preds = %694
  %699 = load i64, i64* %i, align 8
  %700 = sub nsw i64 %699, 1
  %701 = load i64*, i64** %i_edgeEndCounter, align 8
  %702 = getelementptr inbounds i64, i64* %701, i64 %700
  %703 = load i64, i64* %702, align 8
  %704 = load i64, i64* %i, align 8
  %705 = load i64*, i64** %i_edgeEndCounter, align 8
  %706 = getelementptr inbounds i64, i64* %705, i64 %704
  %707 = load i64, i64* %706, align 8
  %708 = add i64 %703, %707
  %709 = load i64, i64* %i, align 8
  %710 = load i64*, i64** %i_edgeEndCounter, align 8
  %711 = getelementptr inbounds i64, i64* %710, i64 %709
  store i64 %708, i64* %711, align 8
  %712 = load i64, i64* %i, align 8
  %713 = sub nsw i64 %712, 1
  %714 = load i64*, i64** %i_edgeEndCounter, align 8
  %715 = getelementptr inbounds i64, i64* %714, i64 %713
  %716 = load i64, i64* %715, align 8
  %717 = load i64, i64* %i, align 8
  %718 = load i64*, i64** %i_edgeStartCounter, align 8
  %719 = getelementptr inbounds i64, i64* %718, i64 %717
  store i64 %716, i64* %719, align 8
  br label %720

; <label>:720                                     ; preds = %698
  %721 = load i64, i64* %i, align 8
  %722 = add nsw i64 %721, 1
  store i64 %722, i64* %i, align 8
  br label %694

; <label>:723                                     ; preds = %694
  br label %724

; <label>:724                                     ; preds = %723, %681
  store i32 -1, i32* %__status4, align 4
  store i32 9, i32* %tries5, align 4
  br label %725

; <label>:725                                     ; preds = %746, %724
  br label %726

; <label>:726                                     ; preds = %729, %725
  %727 = call i64 (...) @RTM_fallback_isLocked()
  %728 = icmp ne i64 %727, 0
  br i1 %728, label %729, label %730

; <label>:729                                     ; preds = %726
  call void @llvm.x86.sse2.pause() #6
  br label %726

; <label>:730                                     ; preds = %726
  %731 = load i32, i32* %tries5, align 4
  %732 = add nsw i32 %731, -1
  store i32 %732, i32* %tries5, align 4
  %733 = load i32, i32* %tries5, align 4
  %734 = icmp sle i32 %733, 0
  br i1 %734, label %735, label %736

; <label>:735                                     ; preds = %730
  call void (...) @RTM_fallback_lock()
  br label %753

; <label>:736                                     ; preds = %730
  store i64 2, i64* %7, align 8
  store i64 0, i64* %handler.i43, align 8
  store i64 4294967295, i64* %ret.i44, align 8
  %737 = load i64, i64* %ret.i44, align 8
  %738 = load i64, i64* %7, align 8
  %739 = load i64, i64* %handler.i43, align 8
  %740 = load i64, i64* %7, align 8
  %741 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %738, i64 %739, i64 %740, i64 %737) #6, !srcloc !1
  store i64 %741, i64* %ret.i44, align 8
  %742 = load i64, i64* %ret.i44, align 8
  %743 = trunc i64 %742 to i32
  store i32 %743, i32* %__status4, align 4
  %744 = load i32, i32* %__status4, align 4
  %745 = icmp ne i32 %744, -1
  br i1 %745, label %746, label %747

; <label>:746                                     ; preds = %736
  br label %725

; <label>:747                                     ; preds = %736
  %748 = call i64 (...) @RTM_fallback_isLocked()
  %749 = icmp ne i64 %748, 0
  br i1 %749, label %750, label %752

; <label>:750                                     ; preds = %747
  store i64 255, i64* %6, align 8
  %751 = load i64, i64* %6, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %751) #6, !srcloc !2
  br label %752

; <label>:752                                     ; preds = %750, %747
  br label %753

; <label>:753                                     ; preds = %752, %735
  %754 = load i64, i64* @global_edgeNum, align 8
  %755 = load i64, i64* %i_edgePtr, align 8
  %756 = add nsw i64 %754, %755
  store i64 %756, i64* @global_edgeNum, align 8
  %757 = load i64, i64* @global_edgeNum, align 8
  store i64 %757, i64* %16, align 8
  %758 = load i64, i64* %16, align 8
  %759 = load i32, i32* %tries5, align 4
  %760 = icmp sgt i32 %759, 0
  br i1 %760, label %761, label %763

; <label>:761                                     ; preds = %753
  store i64 2, i64* %5, align 8
  %762 = load i64, i64* %5, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %762) #6, !srcloc !3
  br label %764

; <label>:763                                     ; preds = %753
  call void (...) @RTM_fallback_unlock()
  br label %764

; <label>:764                                     ; preds = %763, %761
  call void (...) @thread_barrier_wait()
  %765 = load i64, i64* @global_edgeNum, align 8
  store i64 %765, i64* %edgeNum, align 8
  %766 = load i64, i64* %myId, align 8
  %767 = icmp eq i64 %766, 0
  br i1 %767, label %768, label %809

; <label>:768                                     ; preds = %764
  %769 = load i64, i64* @SCALE, align 8
  %770 = icmp slt i64 %769, 10
  br i1 %770, label %771, label %781

; <label>:771                                     ; preds = %768
  %772 = load i64, i64* %edgeNum, align 8
  %773 = mul nsw i64 2, %772
  %774 = mul i64 %773, 8
  store i64 %774, i64* %numByte6, align 8
  %775 = load i64, i64* %numByte6, align 8
  %776 = call noalias i8* @malloc(i64 %775) #6
  %777 = bitcast i8* %776 to i64*
  store i64* %777, i64** %startVertex, align 8
  %778 = load i64, i64* %numByte6, align 8
  %779 = call noalias i8* @malloc(i64 %778) #6
  %780 = bitcast i8* %779 to i64*
  store i64* %780, i64** %endVertex, align 8
  br label %794

; <label>:781                                     ; preds = %768
  %782 = load i64, i64* %edgeNum, align 8
  %783 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %784 = load i64, i64* @TOT_VERTICES, align 8
  %785 = mul i64 %783, %784
  %786 = add i64 %782, %785
  %787 = mul i64 %786, 8
  store i64 %787, i64* %numByte7, align 8
  %788 = load i64, i64* %numByte7, align 8
  %789 = call noalias i8* @malloc(i64 %788) #6
  %790 = bitcast i8* %789 to i64*
  store i64* %790, i64** %startVertex, align 8
  %791 = load i64, i64* %numByte7, align 8
  %792 = call noalias i8* @malloc(i64 %791) #6
  %793 = bitcast i8* %792 to i64*
  store i64* %793, i64** %endVertex, align 8
  br label %794

; <label>:794                                     ; preds = %781, %771
  %795 = load i64*, i64** %startVertex, align 8
  %796 = icmp ne i64* %795, null
  br i1 %796, label %797, label %798

; <label>:797                                     ; preds = %794
  br label %800

; <label>:798                                     ; preds = %794
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1126, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %800

; <label>:800                                     ; preds = %799, %797
  %801 = load i64*, i64** %endVertex, align 8
  %802 = icmp ne i64* %801, null
  br i1 %802, label %803, label %804

; <label>:803                                     ; preds = %800
  br label %806

; <label>:804                                     ; preds = %800
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1127, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %806

; <label>:806                                     ; preds = %805, %803
  %807 = load i64*, i64** %startVertex, align 8
  store i64* %807, i64** @global_startVertex, align 8
  %808 = load i64*, i64** %endVertex, align 8
  store i64* %808, i64** @global_endVertex, align 8
  br label %809

; <label>:809                                     ; preds = %806, %764
  call void (...) @thread_barrier_wait()
  %810 = load i64*, i64** @global_startVertex, align 8
  store i64* %810, i64** %startVertex, align 8
  %811 = load i64*, i64** @global_endVertex, align 8
  store i64* %811, i64** %endVertex, align 8
  %812 = load i64, i64* %myId, align 8
  %813 = load i64*, i64** %i_edgeStartCounter, align 8
  %814 = getelementptr inbounds i64, i64* %813, i64 %812
  %815 = load i64, i64* %814, align 8
  store i64 %815, i64* %i, align 8
  br label %816

; <label>:816                                     ; preds = %848, %809
  %817 = load i64, i64* %i, align 8
  %818 = load i64, i64* %myId, align 8
  %819 = load i64*, i64** %i_edgeEndCounter, align 8
  %820 = getelementptr inbounds i64, i64* %819, i64 %818
  %821 = load i64, i64* %820, align 8
  %822 = icmp ult i64 %817, %821
  br i1 %822, label %823, label %851

; <label>:823                                     ; preds = %816
  %824 = load i64, i64* %i, align 8
  %825 = load i64, i64* %myId, align 8
  %826 = load i64*, i64** %i_edgeStartCounter, align 8
  %827 = getelementptr inbounds i64, i64* %826, i64 %825
  %828 = load i64, i64* %827, align 8
  %829 = sub i64 %824, %828
  %830 = load i64*, i64** %startV, align 8
  %831 = getelementptr inbounds i64, i64* %830, i64 %829
  %832 = load i64, i64* %831, align 8
  %833 = load i64, i64* %i, align 8
  %834 = load i64*, i64** %startVertex, align 8
  %835 = getelementptr inbounds i64, i64* %834, i64 %833
  store i64 %832, i64* %835, align 8
  %836 = load i64, i64* %i, align 8
  %837 = load i64, i64* %myId, align 8
  %838 = load i64*, i64** %i_edgeStartCounter, align 8
  %839 = getelementptr inbounds i64, i64* %838, i64 %837
  %840 = load i64, i64* %839, align 8
  %841 = sub i64 %836, %840
  %842 = load i64*, i64** %endV, align 8
  %843 = getelementptr inbounds i64, i64* %842, i64 %841
  %844 = load i64, i64* %843, align 8
  %845 = load i64, i64* %i, align 8
  %846 = load i64*, i64** %endVertex, align 8
  %847 = getelementptr inbounds i64, i64* %846, i64 %845
  store i64 %844, i64* %847, align 8
  br label %848

; <label>:848                                     ; preds = %823
  %849 = load i64, i64* %i, align 8
  %850 = add nsw i64 %849, 1
  store i64 %850, i64* %i, align 8
  br label %816

; <label>:851                                     ; preds = %816
  %852 = load i64, i64* %edgeNum, align 8
  store i64 %852, i64* %numEdgesPlacedInCliques, align 8
  call void (...) @thread_barrier_wait()
  store i64 0, i64* %i_edgePtr, align 8
  %853 = load float, float* @PROB_INTERCL_EDGES, align 4
  store float %853, float* %p, align 4
  %854 = load i64, i64* @TOT_VERTICES, align 8
  %855 = load i64, i64* %myId, align 8
  %856 = load i64, i64* %numThread, align 8
  call void @createPartition(i64 0, i64 %854, i64 %855, i64 %856, i64* %i_start, i64* %i_stop)
  %857 = load i64, i64* %i_start, align 8
  store i64 %857, i64* %i, align 8
  br label %858

; <label>:858                                     ; preds = %1194, %851
  %859 = load i64, i64* %i, align 8
  %860 = load i64, i64* %i_stop, align 8
  %861 = icmp slt i64 %859, %860
  br i1 %861, label %862, label %1197

; <label>:862                                     ; preds = %858
  %863 = load i64, i64* %i, align 8
  store i64 %863, i64* %tempVertex1, align 8
  %864 = load i64, i64* %totCliques, align 8
  store i64 %864, i64* %h, align 8
  store i64 0, i64* %l, align 8
  store i64 -1, i64* %t8, align 8
  br label %865

; <label>:865                                     ; preds = %908, %862
  %866 = load i64, i64* %h, align 8
  %867 = load i64, i64* %l, align 8
  %868 = sub nsw i64 %866, %867
  %869 = icmp sgt i64 %868, 1
  br i1 %869, label %870, label %909

; <label>:870                                     ; preds = %865
  %871 = load i64, i64* %h, align 8
  %872 = load i64, i64* %l, align 8
  %873 = add nsw i64 %871, %872
  %874 = sdiv i64 %873, 2
  store i64 %874, i64* %m, align 8
  %875 = load i64, i64* %tempVertex1, align 8
  %876 = load i64, i64* %m, align 8
  %877 = load i64*, i64** %firstVsInCliques, align 8
  %878 = getelementptr inbounds i64, i64* %877, i64 %876
  %879 = load i64, i64* %878, align 8
  %880 = icmp uge i64 %875, %879
  br i1 %880, label %881, label %883

; <label>:881                                     ; preds = %870
  %882 = load i64, i64* %m, align 8
  store i64 %882, i64* %l, align 8
  br label %908

; <label>:883                                     ; preds = %870
  %884 = load i64, i64* %tempVertex1, align 8
  %885 = load i64, i64* %m, align 8
  %886 = load i64*, i64** %firstVsInCliques, align 8
  %887 = getelementptr inbounds i64, i64* %886, i64 %885
  %888 = load i64, i64* %887, align 8
  %889 = icmp ult i64 %884, %888
  br i1 %889, label %890, label %907

; <label>:890                                     ; preds = %883
  %891 = load i64, i64* %m, align 8
  %892 = icmp sgt i64 %891, 0
  br i1 %892, label %893, label %907

; <label>:893                                     ; preds = %890
  %894 = load i64, i64* %tempVertex1, align 8
  %895 = load i64, i64* %m, align 8
  %896 = sub nsw i64 %895, 1
  %897 = load i64*, i64** %firstVsInCliques, align 8
  %898 = getelementptr inbounds i64, i64* %897, i64 %896
  %899 = load i64, i64* %898, align 8
  %900 = icmp uge i64 %894, %899
  br i1 %900, label %901, label %904

; <label>:901                                     ; preds = %893
  %902 = load i64, i64* %m, align 8
  %903 = sub nsw i64 %902, 1
  store i64 %903, i64* %t8, align 8
  br label %909

; <label>:904                                     ; preds = %893
  %905 = load i64, i64* %m, align 8
  store i64 %905, i64* %h, align 8
  br label %906

; <label>:906                                     ; preds = %904
  br label %907

; <label>:907                                     ; preds = %906, %890, %883
  br label %908

; <label>:908                                     ; preds = %907, %881
  br label %865

; <label>:909                                     ; preds = %901, %865
  %910 = load i64, i64* %t8, align 8
  %911 = icmp eq i64 %910, -1
  br i1 %911, label %912, label %934

; <label>:912                                     ; preds = %909
  %913 = load i64, i64* %l, align 8
  %914 = add nsw i64 %913, 1
  store i64 %914, i64* %m9, align 8
  br label %915

; <label>:915                                     ; preds = %928, %912
  %916 = load i64, i64* %m9, align 8
  %917 = load i64, i64* %h, align 8
  %918 = icmp slt i64 %916, %917
  br i1 %918, label %919, label %931

; <label>:919                                     ; preds = %915
  %920 = load i64, i64* %tempVertex1, align 8
  %921 = load i64, i64* %m9, align 8
  %922 = load i64*, i64** %firstVsInCliques, align 8
  %923 = getelementptr inbounds i64, i64* %922, i64 %921
  %924 = load i64, i64* %923, align 8
  %925 = icmp ult i64 %920, %924
  br i1 %925, label %926, label %927

; <label>:926                                     ; preds = %919
  br label %931

; <label>:927                                     ; preds = %919
  br label %928

; <label>:928                                     ; preds = %927
  %929 = load i64, i64* %m9, align 8
  %930 = add nsw i64 %929, 1
  store i64 %930, i64* %m9, align 8
  br label %915

; <label>:931                                     ; preds = %926, %915
  %932 = load i64, i64* %m9, align 8
  %933 = sub nsw i64 %932, 1
  store i64 %933, i64* %t8, align 8
  br label %934

; <label>:934                                     ; preds = %931, %909
  %935 = load i64, i64* %t8, align 8
  %936 = load i64*, i64** %firstVsInCliques, align 8
  %937 = getelementptr inbounds i64, i64* %936, i64 %935
  %938 = load i64, i64* %937, align 8
  store i64 %938, i64* %t110, align 8
  store i64 1, i64* %d, align 8
  %939 = load float, float* @PROB_INTERCL_EDGES, align 4
  store float %939, float* %p, align 4
  br label %940

; <label>:940                                     ; preds = %1188, %934
  %941 = load i64, i64* %d, align 8
  %942 = load i64, i64* @TOT_VERTICES, align 8
  %943 = icmp ult i64 %941, %942
  br i1 %943, label %944, label %1193

; <label>:944                                     ; preds = %940
  %945 = load %struct.random*, %struct.random** %stream, align 8
  %946 = call i64 @random_generate(%struct.random* %945)
  %947 = urem i64 %946, 1000
  %948 = uitofp i64 %947 to float
  %949 = fdiv float %948, 1.000000e+03
  store float %949, float* %r11, align 4
  %950 = load float, float* %r11, align 4
  %951 = load float, float* %p, align 4
  %952 = fcmp ole float %950, %951
  br i1 %952, label %953, label %1063

; <label>:953                                     ; preds = %944
  %954 = load i64, i64* %i, align 8
  %955 = load i64, i64* %d, align 8
  %956 = add i64 %954, %955
  %957 = load i64, i64* @TOT_VERTICES, align 8
  %958 = urem i64 %956, %957
  store i64 %958, i64* %tempVertex2, align 8
  %959 = load i64, i64* %totCliques, align 8
  store i64 %959, i64* %h, align 8
  store i64 0, i64* %l, align 8
  store i64 -1, i64* %t8, align 8
  br label %960

; <label>:960                                     ; preds = %1003, %953
  %961 = load i64, i64* %h, align 8
  %962 = load i64, i64* %l, align 8
  %963 = sub nsw i64 %961, %962
  %964 = icmp sgt i64 %963, 1
  br i1 %964, label %965, label %1004

; <label>:965                                     ; preds = %960
  %966 = load i64, i64* %h, align 8
  %967 = load i64, i64* %l, align 8
  %968 = add nsw i64 %966, %967
  %969 = sdiv i64 %968, 2
  store i64 %969, i64* %m12, align 8
  %970 = load i64, i64* %tempVertex2, align 8
  %971 = load i64, i64* %m12, align 8
  %972 = load i64*, i64** %firstVsInCliques, align 8
  %973 = getelementptr inbounds i64, i64* %972, i64 %971
  %974 = load i64, i64* %973, align 8
  %975 = icmp uge i64 %970, %974
  br i1 %975, label %976, label %978

; <label>:976                                     ; preds = %965
  %977 = load i64, i64* %m12, align 8
  store i64 %977, i64* %l, align 8
  br label %1003

; <label>:978                                     ; preds = %965
  %979 = load i64, i64* %tempVertex2, align 8
  %980 = load i64, i64* %m12, align 8
  %981 = load i64*, i64** %firstVsInCliques, align 8
  %982 = getelementptr inbounds i64, i64* %981, i64 %980
  %983 = load i64, i64* %982, align 8
  %984 = icmp ult i64 %979, %983
  br i1 %984, label %985, label %1002

; <label>:985                                     ; preds = %978
  %986 = load i64, i64* %m12, align 8
  %987 = icmp sgt i64 %986, 0
  br i1 %987, label %988, label %1002

; <label>:988                                     ; preds = %985
  %989 = load i64, i64* %m12, align 8
  %990 = sub nsw i64 %989, 1
  %991 = load i64*, i64** %firstVsInCliques, align 8
  %992 = getelementptr inbounds i64, i64* %991, i64 %990
  %993 = load i64, i64* %992, align 8
  %994 = load i64, i64* %tempVertex2, align 8
  %995 = icmp ule i64 %993, %994
  br i1 %995, label %996, label %999

; <label>:996                                     ; preds = %988
  %997 = load i64, i64* %m12, align 8
  %998 = sub nsw i64 %997, 1
  store i64 %998, i64* %t8, align 8
  br label %1004

; <label>:999                                     ; preds = %988
  %1000 = load i64, i64* %m12, align 8
  store i64 %1000, i64* %h, align 8
  br label %1001

; <label>:1001                                    ; preds = %999
  br label %1002

; <label>:1002                                    ; preds = %1001, %985, %978
  br label %1003

; <label>:1003                                    ; preds = %1002, %976
  br label %960

; <label>:1004                                    ; preds = %996, %960
  %1005 = load i64, i64* %t8, align 8
  %1006 = icmp eq i64 %1005, -1
  br i1 %1006, label %1007, label %1029

; <label>:1007                                    ; preds = %1004
  %1008 = load i64, i64* %l, align 8
  %1009 = add nsw i64 %1008, 1
  store i64 %1009, i64* %m13, align 8
  br label %1010

; <label>:1010                                    ; preds = %1023, %1007
  %1011 = load i64, i64* %m13, align 8
  %1012 = load i64, i64* %h, align 8
  %1013 = icmp slt i64 %1011, %1012
  br i1 %1013, label %1014, label %1026

; <label>:1014                                    ; preds = %1010
  %1015 = load i64, i64* %tempVertex2, align 8
  %1016 = load i64, i64* %m13, align 8
  %1017 = load i64*, i64** %firstVsInCliques, align 8
  %1018 = getelementptr inbounds i64, i64* %1017, i64 %1016
  %1019 = load i64, i64* %1018, align 8
  %1020 = icmp ult i64 %1015, %1019
  br i1 %1020, label %1021, label %1022

; <label>:1021                                    ; preds = %1014
  br label %1026

; <label>:1022                                    ; preds = %1014
  br label %1023

; <label>:1023                                    ; preds = %1022
  %1024 = load i64, i64* %m13, align 8
  %1025 = add nsw i64 %1024, 1
  store i64 %1025, i64* %m13, align 8
  br label %1010

; <label>:1026                                    ; preds = %1021, %1010
  %1027 = load i64, i64* %m13, align 8
  %1028 = sub nsw i64 %1027, 1
  store i64 %1028, i64* %t8, align 8
  br label %1029

; <label>:1029                                    ; preds = %1026, %1004
  %1030 = load i64, i64* %t8, align 8
  %1031 = load i64*, i64** %firstVsInCliques, align 8
  %1032 = getelementptr inbounds i64, i64* %1031, i64 %1030
  %1033 = load i64, i64* %1032, align 8
  store i64 %1033, i64* %t214, align 8
  %1034 = load i64, i64* %t110, align 8
  %1035 = load i64, i64* %t214, align 8
  %1036 = icmp ne i64 %1034, %1035
  br i1 %1036, label %1037, label %1062

; <label>:1037                                    ; preds = %1029
  %1038 = load %struct.random*, %struct.random** %stream, align 8
  %1039 = call i64 @random_generate(%struct.random* %1038)
  %1040 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %1041 = urem i64 %1039, %1040
  %1042 = add i64 %1041, 1
  store i64 %1042, i64* %randNumEdges15, align 8
  store i64 0, i64* %j16, align 8
  br label %1043

; <label>:1043                                    ; preds = %1058, %1037
  %1044 = load i64, i64* %j16, align 8
  %1045 = load i64, i64* %randNumEdges15, align 8
  %1046 = icmp slt i64 %1044, %1045
  br i1 %1046, label %1047, label %1061

; <label>:1047                                    ; preds = %1043
  %1048 = load i64, i64* %tempVertex1, align 8
  %1049 = load i64, i64* %i_edgePtr, align 8
  %1050 = load i64*, i64** %startV, align 8
  %1051 = getelementptr inbounds i64, i64* %1050, i64 %1049
  store i64 %1048, i64* %1051, align 8
  %1052 = load i64, i64* %tempVertex2, align 8
  %1053 = load i64, i64* %i_edgePtr, align 8
  %1054 = load i64*, i64** %endV, align 8
  %1055 = getelementptr inbounds i64, i64* %1054, i64 %1053
  store i64 %1052, i64* %1055, align 8
  %1056 = load i64, i64* %i_edgePtr, align 8
  %1057 = add nsw i64 %1056, 1
  store i64 %1057, i64* %i_edgePtr, align 8
  br label %1058

; <label>:1058                                    ; preds = %1047
  %1059 = load i64, i64* %j16, align 8
  %1060 = add nsw i64 %1059, 1
  store i64 %1060, i64* %j16, align 8
  br label %1043

; <label>:1061                                    ; preds = %1043
  br label %1062

; <label>:1062                                    ; preds = %1061, %1029
  br label %1063

; <label>:1063                                    ; preds = %1062, %944
  %1064 = load %struct.random*, %struct.random** %stream, align 8
  %1065 = call i64 @random_generate(%struct.random* %1064)
  %1066 = urem i64 %1065, 1000
  %1067 = uitofp i64 %1066 to float
  %1068 = fdiv float %1067, 1.000000e+03
  store float %1068, float* %r0, align 4
  %1069 = load float, float* %r0, align 4
  %1070 = load float, float* %p, align 4
  %1071 = fcmp ole float %1069, %1070
  br i1 %1071, label %1072, label %1187

; <label>:1072                                    ; preds = %1063
  %1073 = load i64, i64* %i, align 8
  %1074 = load i64, i64* %d, align 8
  %1075 = sub i64 %1073, %1074
  %1076 = icmp uge i64 %1075, 0
  br i1 %1076, label %1077, label %1187

; <label>:1077                                    ; preds = %1072
  %1078 = load i64, i64* %i, align 8
  %1079 = load i64, i64* %d, align 8
  %1080 = sub i64 %1078, %1079
  %1081 = load i64, i64* @TOT_VERTICES, align 8
  %1082 = urem i64 %1080, %1081
  store i64 %1082, i64* %tempVertex217, align 8
  %1083 = load i64, i64* %totCliques, align 8
  store i64 %1083, i64* %h, align 8
  store i64 0, i64* %l, align 8
  store i64 -1, i64* %t8, align 8
  br label %1084

; <label>:1084                                    ; preds = %1127, %1077
  %1085 = load i64, i64* %h, align 8
  %1086 = load i64, i64* %l, align 8
  %1087 = sub nsw i64 %1085, %1086
  %1088 = icmp sgt i64 %1087, 1
  br i1 %1088, label %1089, label %1128

; <label>:1089                                    ; preds = %1084
  %1090 = load i64, i64* %h, align 8
  %1091 = load i64, i64* %l, align 8
  %1092 = add nsw i64 %1090, %1091
  %1093 = sdiv i64 %1092, 2
  store i64 %1093, i64* %m18, align 8
  %1094 = load i64, i64* %tempVertex217, align 8
  %1095 = load i64, i64* %m18, align 8
  %1096 = load i64*, i64** %firstVsInCliques, align 8
  %1097 = getelementptr inbounds i64, i64* %1096, i64 %1095
  %1098 = load i64, i64* %1097, align 8
  %1099 = icmp uge i64 %1094, %1098
  br i1 %1099, label %1100, label %1102

; <label>:1100                                    ; preds = %1089
  %1101 = load i64, i64* %m18, align 8
  store i64 %1101, i64* %l, align 8
  br label %1127

; <label>:1102                                    ; preds = %1089
  %1103 = load i64, i64* %tempVertex217, align 8
  %1104 = load i64, i64* %m18, align 8
  %1105 = load i64*, i64** %firstVsInCliques, align 8
  %1106 = getelementptr inbounds i64, i64* %1105, i64 %1104
  %1107 = load i64, i64* %1106, align 8
  %1108 = icmp ult i64 %1103, %1107
  br i1 %1108, label %1109, label %1126

; <label>:1109                                    ; preds = %1102
  %1110 = load i64, i64* %m18, align 8
  %1111 = icmp sgt i64 %1110, 0
  br i1 %1111, label %1112, label %1126

; <label>:1112                                    ; preds = %1109
  %1113 = load i64, i64* %m18, align 8
  %1114 = sub nsw i64 %1113, 1
  %1115 = load i64*, i64** %firstVsInCliques, align 8
  %1116 = getelementptr inbounds i64, i64* %1115, i64 %1114
  %1117 = load i64, i64* %1116, align 8
  %1118 = load i64, i64* %tempVertex217, align 8
  %1119 = icmp ule i64 %1117, %1118
  br i1 %1119, label %1120, label %1123

; <label>:1120                                    ; preds = %1112
  %1121 = load i64, i64* %m18, align 8
  %1122 = sub nsw i64 %1121, 1
  store i64 %1122, i64* %t8, align 8
  br label %1128

; <label>:1123                                    ; preds = %1112
  %1124 = load i64, i64* %m18, align 8
  store i64 %1124, i64* %h, align 8
  br label %1125

; <label>:1125                                    ; preds = %1123
  br label %1126

; <label>:1126                                    ; preds = %1125, %1109, %1102
  br label %1127

; <label>:1127                                    ; preds = %1126, %1100
  br label %1084

; <label>:1128                                    ; preds = %1120, %1084
  %1129 = load i64, i64* %t8, align 8
  %1130 = icmp eq i64 %1129, -1
  br i1 %1130, label %1131, label %1153

; <label>:1131                                    ; preds = %1128
  %1132 = load i64, i64* %l, align 8
  %1133 = add nsw i64 %1132, 1
  store i64 %1133, i64* %m19, align 8
  br label %1134

; <label>:1134                                    ; preds = %1147, %1131
  %1135 = load i64, i64* %m19, align 8
  %1136 = load i64, i64* %h, align 8
  %1137 = icmp slt i64 %1135, %1136
  br i1 %1137, label %1138, label %1150

; <label>:1138                                    ; preds = %1134
  %1139 = load i64, i64* %tempVertex217, align 8
  %1140 = load i64, i64* %m19, align 8
  %1141 = load i64*, i64** %firstVsInCliques, align 8
  %1142 = getelementptr inbounds i64, i64* %1141, i64 %1140
  %1143 = load i64, i64* %1142, align 8
  %1144 = icmp ult i64 %1139, %1143
  br i1 %1144, label %1145, label %1146

; <label>:1145                                    ; preds = %1138
  br label %1150

; <label>:1146                                    ; preds = %1138
  br label %1147

; <label>:1147                                    ; preds = %1146
  %1148 = load i64, i64* %m19, align 8
  %1149 = add nsw i64 %1148, 1
  store i64 %1149, i64* %m19, align 8
  br label %1134

; <label>:1150                                    ; preds = %1145, %1134
  %1151 = load i64, i64* %m19, align 8
  %1152 = sub nsw i64 %1151, 1
  store i64 %1152, i64* %t8, align 8
  br label %1153

; <label>:1153                                    ; preds = %1150, %1128
  %1154 = load i64, i64* %t8, align 8
  %1155 = load i64*, i64** %firstVsInCliques, align 8
  %1156 = getelementptr inbounds i64, i64* %1155, i64 %1154
  %1157 = load i64, i64* %1156, align 8
  store i64 %1157, i64* %t220, align 8
  %1158 = load i64, i64* %t110, align 8
  %1159 = load i64, i64* %t220, align 8
  %1160 = icmp ne i64 %1158, %1159
  br i1 %1160, label %1161, label %1186

; <label>:1161                                    ; preds = %1153
  %1162 = load %struct.random*, %struct.random** %stream, align 8
  %1163 = call i64 @random_generate(%struct.random* %1162)
  %1164 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %1165 = urem i64 %1163, %1164
  %1166 = add i64 %1165, 1
  store i64 %1166, i64* %randNumEdges21, align 8
  store i64 0, i64* %j22, align 8
  br label %1167

; <label>:1167                                    ; preds = %1182, %1161
  %1168 = load i64, i64* %j22, align 8
  %1169 = load i64, i64* %randNumEdges21, align 8
  %1170 = icmp slt i64 %1168, %1169
  br i1 %1170, label %1171, label %1185

; <label>:1171                                    ; preds = %1167
  %1172 = load i64, i64* %tempVertex1, align 8
  %1173 = load i64, i64* %i_edgePtr, align 8
  %1174 = load i64*, i64** %startV, align 8
  %1175 = getelementptr inbounds i64, i64* %1174, i64 %1173
  store i64 %1172, i64* %1175, align 8
  %1176 = load i64, i64* %tempVertex217, align 8
  %1177 = load i64, i64* %i_edgePtr, align 8
  %1178 = load i64*, i64** %endV, align 8
  %1179 = getelementptr inbounds i64, i64* %1178, i64 %1177
  store i64 %1176, i64* %1179, align 8
  %1180 = load i64, i64* %i_edgePtr, align 8
  %1181 = add nsw i64 %1180, 1
  store i64 %1181, i64* %i_edgePtr, align 8
  br label %1182

; <label>:1182                                    ; preds = %1171
  %1183 = load i64, i64* %j22, align 8
  %1184 = add nsw i64 %1183, 1
  store i64 %1184, i64* %j22, align 8
  br label %1167

; <label>:1185                                    ; preds = %1167
  br label %1186

; <label>:1186                                    ; preds = %1185, %1153
  br label %1187

; <label>:1187                                    ; preds = %1186, %1072, %1063
  br label %1188

; <label>:1188                                    ; preds = %1187
  %1189 = load i64, i64* %d, align 8
  %1190 = mul i64 %1189, 2
  store i64 %1190, i64* %d, align 8
  %1191 = load float, float* %p, align 4
  %1192 = fdiv float %1191, 2.000000e+00
  store float %1192, float* %p, align 4
  br label %940

; <label>:1193                                    ; preds = %940
  br label %1194

; <label>:1194                                    ; preds = %1193
  %1195 = load i64, i64* %i, align 8
  %1196 = add nsw i64 %1195, 1
  store i64 %1196, i64* %i, align 8
  br label %858

; <label>:1197                                    ; preds = %858
  %1198 = load i64, i64* %i_edgePtr, align 8
  %1199 = load i64, i64* %myId, align 8
  %1200 = load i64*, i64** %i_edgeEndCounter, align 8
  %1201 = getelementptr inbounds i64, i64* %1200, i64 %1199
  store i64 %1198, i64* %1201, align 8
  %1202 = load i64, i64* %myId, align 8
  %1203 = load i64*, i64** %i_edgeStartCounter, align 8
  %1204 = getelementptr inbounds i64, i64* %1203, i64 %1202
  store i64 0, i64* %1204, align 8
  %1205 = load i64, i64* %myId, align 8
  %1206 = icmp eq i64 %1205, 0
  br i1 %1206, label %1207, label %1208

; <label>:1207                                    ; preds = %1197
  store i64 0, i64* @global_edgeNum, align 8
  br label %1208

; <label>:1208                                    ; preds = %1207, %1197
  call void (...) @thread_barrier_wait()
  %1209 = load i64, i64* %myId, align 8
  %1210 = icmp eq i64 %1209, 0
  br i1 %1210, label %1211, label %1242

; <label>:1211                                    ; preds = %1208
  store i64 1, i64* %i, align 8
  br label %1212

; <label>:1212                                    ; preds = %1238, %1211
  %1213 = load i64, i64* %i, align 8
  %1214 = load i64, i64* %numThread, align 8
  %1215 = icmp slt i64 %1213, %1214
  br i1 %1215, label %1216, label %1241

; <label>:1216                                    ; preds = %1212
  %1217 = load i64, i64* %i, align 8
  %1218 = sub nsw i64 %1217, 1
  %1219 = load i64*, i64** %i_edgeEndCounter, align 8
  %1220 = getelementptr inbounds i64, i64* %1219, i64 %1218
  %1221 = load i64, i64* %1220, align 8
  %1222 = load i64, i64* %i, align 8
  %1223 = load i64*, i64** %i_edgeEndCounter, align 8
  %1224 = getelementptr inbounds i64, i64* %1223, i64 %1222
  %1225 = load i64, i64* %1224, align 8
  %1226 = add i64 %1221, %1225
  %1227 = load i64, i64* %i, align 8
  %1228 = load i64*, i64** %i_edgeEndCounter, align 8
  %1229 = getelementptr inbounds i64, i64* %1228, i64 %1227
  store i64 %1226, i64* %1229, align 8
  %1230 = load i64, i64* %i, align 8
  %1231 = sub nsw i64 %1230, 1
  %1232 = load i64*, i64** %i_edgeEndCounter, align 8
  %1233 = getelementptr inbounds i64, i64* %1232, i64 %1231
  %1234 = load i64, i64* %1233, align 8
  %1235 = load i64, i64* %i, align 8
  %1236 = load i64*, i64** %i_edgeStartCounter, align 8
  %1237 = getelementptr inbounds i64, i64* %1236, i64 %1235
  store i64 %1234, i64* %1237, align 8
  br label %1238

; <label>:1238                                    ; preds = %1216
  %1239 = load i64, i64* %i, align 8
  %1240 = add nsw i64 %1239, 1
  store i64 %1240, i64* %i, align 8
  br label %1212

; <label>:1241                                    ; preds = %1212
  br label %1242

; <label>:1242                                    ; preds = %1241, %1208
  store i32 -1, i32* %__status23, align 4
  store i32 9, i32* %tries24, align 4
  br label %1243

; <label>:1243                                    ; preds = %1264, %1242
  br label %1244

; <label>:1244                                    ; preds = %1247, %1243
  %1245 = call i64 (...) @RTM_fallback_isLocked()
  %1246 = icmp ne i64 %1245, 0
  br i1 %1246, label %1247, label %1248

; <label>:1247                                    ; preds = %1244
  call void @llvm.x86.sse2.pause() #6
  br label %1244

; <label>:1248                                    ; preds = %1244
  %1249 = load i32, i32* %tries24, align 4
  %1250 = add nsw i32 %1249, -1
  store i32 %1250, i32* %tries24, align 4
  %1251 = load i32, i32* %tries24, align 4
  %1252 = icmp sle i32 %1251, 0
  br i1 %1252, label %1253, label %1254

; <label>:1253                                    ; preds = %1248
  call void (...) @RTM_fallback_lock()
  br label %1271

; <label>:1254                                    ; preds = %1248
  store i64 3, i64* %3, align 8
  store i64 0, i64* %handler.i47, align 8
  store i64 4294967295, i64* %ret.i48, align 8
  %1255 = load i64, i64* %ret.i48, align 8
  %1256 = load i64, i64* %3, align 8
  %1257 = load i64, i64* %handler.i47, align 8
  %1258 = load i64, i64* %3, align 8
  %1259 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %1256, i64 %1257, i64 %1258, i64 %1255) #6, !srcloc !1
  store i64 %1259, i64* %ret.i48, align 8
  %1260 = load i64, i64* %ret.i48, align 8
  %1261 = trunc i64 %1260 to i32
  store i32 %1261, i32* %__status23, align 4
  %1262 = load i32, i32* %__status23, align 4
  %1263 = icmp ne i32 %1262, -1
  br i1 %1263, label %1264, label %1265

; <label>:1264                                    ; preds = %1254
  br label %1243

; <label>:1265                                    ; preds = %1254
  %1266 = call i64 (...) @RTM_fallback_isLocked()
  %1267 = icmp ne i64 %1266, 0
  br i1 %1267, label %1268, label %1270

; <label>:1268                                    ; preds = %1265
  store i64 255, i64* %2, align 8
  %1269 = load i64, i64* %2, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %1269) #6, !srcloc !2
  br label %1270

; <label>:1270                                    ; preds = %1268, %1265
  br label %1271

; <label>:1271                                    ; preds = %1270, %1253
  %1272 = load i64, i64* @global_edgeNum, align 8
  %1273 = load i64, i64* %i_edgePtr, align 8
  %1274 = add nsw i64 %1272, %1273
  store i64 %1274, i64* @global_edgeNum, align 8
  %1275 = load i64, i64* @global_edgeNum, align 8
  store i64 %1275, i64* %17, align 8
  %1276 = load i64, i64* %17, align 8
  %1277 = load i32, i32* %tries24, align 4
  %1278 = icmp sgt i32 %1277, 0
  br i1 %1278, label %1279, label %1281

; <label>:1279                                    ; preds = %1271
  store i64 3, i64* %1, align 8
  %1280 = load i64, i64* %1, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %1280) #6, !srcloc !3
  br label %1282

; <label>:1281                                    ; preds = %1271
  call void (...) @RTM_fallback_unlock()
  br label %1282

; <label>:1282                                    ; preds = %1281, %1279
  call void (...) @thread_barrier_wait()
  %1283 = load i64, i64* @global_edgeNum, align 8
  store i64 %1283, i64* %edgeNum, align 8
  %1284 = load i64, i64* @global_edgeNum, align 8
  store i64 %1284, i64* %numEdgesPlacedOutside, align 8
  %1285 = load i64, i64* %myId, align 8
  %1286 = load i64*, i64** %i_edgeStartCounter, align 8
  %1287 = getelementptr inbounds i64, i64* %1286, i64 %1285
  %1288 = load i64, i64* %1287, align 8
  store i64 %1288, i64* %i, align 8
  br label %1289

; <label>:1289                                    ; preds = %1325, %1282
  %1290 = load i64, i64* %i, align 8
  %1291 = load i64, i64* %myId, align 8
  %1292 = load i64*, i64** %i_edgeEndCounter, align 8
  %1293 = getelementptr inbounds i64, i64* %1292, i64 %1291
  %1294 = load i64, i64* %1293, align 8
  %1295 = icmp ult i64 %1290, %1294
  br i1 %1295, label %1296, label %1328

; <label>:1296                                    ; preds = %1289
  %1297 = load i64, i64* %i, align 8
  %1298 = load i64, i64* %myId, align 8
  %1299 = load i64*, i64** %i_edgeStartCounter, align 8
  %1300 = getelementptr inbounds i64, i64* %1299, i64 %1298
  %1301 = load i64, i64* %1300, align 8
  %1302 = sub i64 %1297, %1301
  %1303 = load i64*, i64** %startV, align 8
  %1304 = getelementptr inbounds i64, i64* %1303, i64 %1302
  %1305 = load i64, i64* %1304, align 8
  %1306 = load i64, i64* %i, align 8
  %1307 = load i64, i64* %numEdgesPlacedInCliques, align 8
  %1308 = add i64 %1306, %1307
  %1309 = load i64*, i64** %startVertex, align 8
  %1310 = getelementptr inbounds i64, i64* %1309, i64 %1308
  store i64 %1305, i64* %1310, align 8
  %1311 = load i64, i64* %i, align 8
  %1312 = load i64, i64* %myId, align 8
  %1313 = load i64*, i64** %i_edgeStartCounter, align 8
  %1314 = getelementptr inbounds i64, i64* %1313, i64 %1312
  %1315 = load i64, i64* %1314, align 8
  %1316 = sub i64 %1311, %1315
  %1317 = load i64*, i64** %endV, align 8
  %1318 = getelementptr inbounds i64, i64* %1317, i64 %1316
  %1319 = load i64, i64* %1318, align 8
  %1320 = load i64, i64* %i, align 8
  %1321 = load i64, i64* %numEdgesPlacedInCliques, align 8
  %1322 = add i64 %1320, %1321
  %1323 = load i64*, i64** %endVertex, align 8
  %1324 = getelementptr inbounds i64, i64* %1323, i64 %1322
  store i64 %1319, i64* %1324, align 8
  br label %1325

; <label>:1325                                    ; preds = %1296
  %1326 = load i64, i64* %i, align 8
  %1327 = add nsw i64 %1326, 1
  store i64 %1327, i64* %i, align 8
  br label %1289

; <label>:1328                                    ; preds = %1289
  call void (...) @thread_barrier_wait()
  %1329 = load i64, i64* %numEdgesPlacedInCliques, align 8
  %1330 = load i64, i64* %numEdgesPlacedOutside, align 8
  %1331 = add i64 %1329, %1330
  store i64 %1331, i64* %numEdgesPlaced, align 8
  %1332 = load i64, i64* %myId, align 8
  %1333 = icmp eq i64 %1332, 0
  br i1 %1333, label %1334, label %1355

; <label>:1334                                    ; preds = %1328
  %1335 = load i64, i64* %numEdgesPlaced, align 8
  %1336 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1337 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1336, i32 0, i32 4
  store i64 %1335, i64* %1337, align 8
  %1338 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0))
  %1339 = load i64, i64* %numEdgesPlacedInCliques, align 8
  %1340 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0), i64 %1339)
  %1341 = load i64, i64* %numEdgesPlacedOutside, align 8
  %1342 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0), i64 %1341)
  %1343 = load i64, i64* %numEdgesPlaced, align 8
  %1344 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0), i64 %1343)
  %1345 = load i64*, i64** %i_edgeStartCounter, align 8
  %1346 = bitcast i64* %1345 to i8*
  call void @free(i8* %1346) #6
  %1347 = load i64*, i64** %i_edgeEndCounter, align 8
  %1348 = bitcast i64* %1347 to i8*
  call void @free(i8* %1348) #6
  %1349 = load i64*, i64** %cliqueSizes, align 8
  %1350 = bitcast i64* %1349 to i8*
  call void @free(i8* %1350) #6
  %1351 = load i64*, i64** %firstVsInCliques, align 8
  %1352 = bitcast i64* %1351 to i8*
  call void @free(i8* %1352) #6
  %1353 = load i64*, i64** %lastVsInCliques, align 8
  %1354 = bitcast i64* %1353 to i8*
  call void @free(i8* %1354) #6
  br label %1355

; <label>:1355                                    ; preds = %1334, %1328
  call void (...) @thread_barrier_wait()
  %1356 = load i64*, i64** %startV, align 8
  %1357 = bitcast i64* %1356 to i8*
  call void @free(i8* %1357) #6
  %1358 = load i64*, i64** %endV, align 8
  %1359 = bitcast i64* %1358 to i8*
  call void @free(i8* %1359) #6
  %1360 = load i64, i64* %myId, align 8
  %1361 = icmp eq i64 %1360, 0
  br i1 %1361, label %1362, label %1377

; <label>:1362                                    ; preds = %1355
  %1363 = load i64, i64* %numEdgesPlaced, align 8
  %1364 = mul i64 %1363, 8
  %1365 = call noalias i8* @malloc(i64 %1364) #6
  %1366 = bitcast i8* %1365 to i64*
  %1367 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1368 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1367, i32 0, i32 2
  store i64* %1366, i64** %1368, align 8
  %1369 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1370 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1369, i32 0, i32 2
  %1371 = load i64*, i64** %1370, align 8
  %1372 = icmp ne i64* %1371, null
  br i1 %1372, label %1373, label %1374

; <label>:1373                                    ; preds = %1362
  br label %1376

; <label>:1374                                    ; preds = %1362
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1366, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %1376

; <label>:1376                                    ; preds = %1375, %1373
  br label %1377

; <label>:1377                                    ; preds = %1376, %1355
  call void (...) @thread_barrier_wait()
  %1378 = load float, float* @PERC_INT_WEIGHTS, align 4
  store float %1378, float* %p, align 4
  store i64 0, i64* %numStrWtEdges, align 8
  %1379 = load i64, i64* %numEdgesPlaced, align 8
  %1380 = load i64, i64* %myId, align 8
  %1381 = load i64, i64* %numThread, align 8
  call void @createPartition(i64 0, i64 %1379, i64 %1380, i64 %1381, i64* %i_start, i64* %i_stop)
  %1382 = load i64, i64* %i_start, align 8
  store i64 %1382, i64* %i, align 8
  br label %1383

; <label>:1383                                    ; preds = %1417, %1377
  %1384 = load i64, i64* %i, align 8
  %1385 = load i64, i64* %i_stop, align 8
  %1386 = icmp slt i64 %1384, %1385
  br i1 %1386, label %1387, label %1420

; <label>:1387                                    ; preds = %1383
  %1388 = load %struct.random*, %struct.random** %stream, align 8
  %1389 = call i64 @random_generate(%struct.random* %1388)
  %1390 = urem i64 %1389, 1000
  %1391 = uitofp i64 %1390 to float
  %1392 = fdiv float %1391, 1.000000e+03
  store float %1392, float* %r25, align 4
  %1393 = load float, float* %r25, align 4
  %1394 = load float, float* %p, align 4
  %1395 = fcmp ole float %1393, %1394
  br i1 %1395, label %1396, label %1408

; <label>:1396                                    ; preds = %1387
  %1397 = load %struct.random*, %struct.random** %stream, align 8
  %1398 = call i64 @random_generate(%struct.random* %1397)
  %1399 = load i64, i64* @MAX_INT_WEIGHT, align 8
  %1400 = sub i64 %1399, 1
  %1401 = urem i64 %1398, %1400
  %1402 = add i64 1, %1401
  %1403 = load i64, i64* %i, align 8
  %1404 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1405 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1404, i32 0, i32 2
  %1406 = load i64*, i64** %1405, align 8
  %1407 = getelementptr inbounds i64, i64* %1406, i64 %1403
  store i64 %1402, i64* %1407, align 8
  br label %1416

; <label>:1408                                    ; preds = %1387
  %1409 = load i64, i64* %i, align 8
  %1410 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1411 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1410, i32 0, i32 2
  %1412 = load i64*, i64** %1411, align 8
  %1413 = getelementptr inbounds i64, i64* %1412, i64 %1409
  store i64 -1, i64* %1413, align 8
  %1414 = load i64, i64* %numStrWtEdges, align 8
  %1415 = add i64 %1414, 1
  store i64 %1415, i64* %numStrWtEdges, align 8
  br label %1416

; <label>:1416                                    ; preds = %1408, %1396
  br label %1417

; <label>:1417                                    ; preds = %1416
  %1418 = load i64, i64* %i, align 8
  %1419 = add nsw i64 %1418, 1
  store i64 %1419, i64* %i, align 8
  br label %1383

; <label>:1420                                    ; preds = %1383
  call void (...) @thread_barrier_wait()
  %1421 = load i64, i64* %myId, align 8
  %1422 = icmp eq i64 %1421, 0
  br i1 %1422, label %1423, label %1451

; <label>:1423                                    ; preds = %1420
  store i64 0, i64* %t26, align 8
  store i64 0, i64* %i, align 8
  br label %1424

; <label>:1424                                    ; preds = %1447, %1423
  %1425 = load i64, i64* %i, align 8
  %1426 = load i64, i64* %numEdgesPlaced, align 8
  %1427 = icmp ult i64 %1425, %1426
  br i1 %1427, label %1428, label %1450

; <label>:1428                                    ; preds = %1424
  %1429 = load i64, i64* %i, align 8
  %1430 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1431 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1430, i32 0, i32 2
  %1432 = load i64*, i64** %1431, align 8
  %1433 = getelementptr inbounds i64, i64* %1432, i64 %1429
  %1434 = load i64, i64* %1433, align 8
  %1435 = icmp slt i64 %1434, 0
  br i1 %1435, label %1436, label %1446

; <label>:1436                                    ; preds = %1428
  %1437 = load i64, i64* %t26, align 8
  %1438 = sub nsw i64 0, %1437
  %1439 = load i64, i64* %i, align 8
  %1440 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1441 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1440, i32 0, i32 2
  %1442 = load i64*, i64** %1441, align 8
  %1443 = getelementptr inbounds i64, i64* %1442, i64 %1439
  store i64 %1438, i64* %1443, align 8
  %1444 = load i64, i64* %t26, align 8
  %1445 = add nsw i64 %1444, 1
  store i64 %1445, i64* %t26, align 8
  br label %1446

; <label>:1446                                    ; preds = %1436, %1428
  br label %1447

; <label>:1447                                    ; preds = %1446
  %1448 = load i64, i64* %i, align 8
  %1449 = add nsw i64 %1448, 1
  store i64 %1449, i64* %i, align 8
  br label %1424

; <label>:1450                                    ; preds = %1424
  br label %1451

; <label>:1451                                    ; preds = %1450, %1420
  store i32 -1, i32* %__status27, align 4
  store i32 9, i32* %tries28, align 4
  br label %1452

; <label>:1452                                    ; preds = %1473, %1451
  br label %1453

; <label>:1453                                    ; preds = %1456, %1452
  %1454 = call i64 (...) @RTM_fallback_isLocked()
  %1455 = icmp ne i64 %1454, 0
  br i1 %1455, label %1456, label %1457

; <label>:1456                                    ; preds = %1453
  call void @llvm.x86.sse2.pause() #6
  br label %1453

; <label>:1457                                    ; preds = %1453
  %1458 = load i32, i32* %tries28, align 4
  %1459 = add nsw i32 %1458, -1
  store i32 %1459, i32* %tries28, align 4
  %1460 = load i32, i32* %tries28, align 4
  %1461 = icmp sle i32 %1460, 0
  br i1 %1461, label %1462, label %1463

; <label>:1462                                    ; preds = %1457
  call void (...) @RTM_fallback_lock()
  br label %1480

; <label>:1463                                    ; preds = %1457
  store i64 4, i64* %4, align 8
  store i64 0, i64* %handler.i45, align 8
  store i64 4294967295, i64* %ret.i46, align 8
  %1464 = load i64, i64* %ret.i46, align 8
  %1465 = load i64, i64* %4, align 8
  %1466 = load i64, i64* %handler.i45, align 8
  %1467 = load i64, i64* %4, align 8
  %1468 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %1465, i64 %1466, i64 %1467, i64 %1464) #6, !srcloc !1
  store i64 %1468, i64* %ret.i46, align 8
  %1469 = load i64, i64* %ret.i46, align 8
  %1470 = trunc i64 %1469 to i32
  store i32 %1470, i32* %__status27, align 4
  %1471 = load i32, i32* %__status27, align 4
  %1472 = icmp ne i32 %1471, -1
  br i1 %1472, label %1473, label %1474

; <label>:1473                                    ; preds = %1463
  br label %1452

; <label>:1474                                    ; preds = %1463
  %1475 = call i64 (...) @RTM_fallback_isLocked()
  %1476 = icmp ne i64 %1475, 0
  br i1 %1476, label %1477, label %1479

; <label>:1477                                    ; preds = %1474
  store i64 255, i64* %8, align 8
  %1478 = load i64, i64* %8, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %1478) #6, !srcloc !2
  br label %1479

; <label>:1479                                    ; preds = %1477, %1474
  br label %1480

; <label>:1480                                    ; preds = %1479, %1462
  %1481 = load i64, i64* @global_numStrWtEdges, align 8
  %1482 = load i64, i64* %numStrWtEdges, align 8
  %1483 = add i64 %1481, %1482
  store i64 %1483, i64* @global_numStrWtEdges, align 8
  %1484 = load i64, i64* @global_numStrWtEdges, align 8
  store i64 %1484, i64* %18, align 8
  %1485 = load i64, i64* %18, align 8
  %1486 = load i32, i32* %tries28, align 4
  %1487 = icmp sgt i32 %1486, 0
  br i1 %1487, label %1488, label %1490

; <label>:1488                                    ; preds = %1480
  store i64 4, i64* %12, align 8
  %1489 = load i64, i64* %12, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %1489) #6, !srcloc !3
  br label %1491

; <label>:1490                                    ; preds = %1480
  call void (...) @RTM_fallback_unlock()
  br label %1491

; <label>:1491                                    ; preds = %1490, %1488
  call void (...) @thread_barrier_wait()
  %1492 = load i64, i64* @global_numStrWtEdges, align 8
  store i64 %1492, i64* %numStrWtEdges, align 8
  %1493 = load i64, i64* %myId, align 8
  %1494 = icmp eq i64 %1493, 0
  br i1 %1494, label %1495, label %1511

; <label>:1495                                    ; preds = %1491
  %1496 = load i64, i64* %numStrWtEdges, align 8
  %1497 = load i64, i64* @MAX_STRLEN, align 8
  %1498 = mul i64 %1496, %1497
  %1499 = mul i64 %1498, 1
  %1500 = call noalias i8* @malloc(i64 %1499) #6
  %1501 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1502 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1501, i32 0, i32 3
  store i8* %1500, i8** %1502, align 8
  %1503 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1504 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1503, i32 0, i32 3
  %1505 = load i8*, i8** %1504, align 8
  %1506 = icmp ne i8* %1505, null
  br i1 %1506, label %1507, label %1508

; <label>:1507                                    ; preds = %1495
  br label %1510

; <label>:1508                                    ; preds = %1495
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1411, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %1510

; <label>:1510                                    ; preds = %1509, %1507
  br label %1511

; <label>:1511                                    ; preds = %1510, %1491
  call void (...) @thread_barrier_wait()
  %1512 = load i64, i64* %numEdgesPlaced, align 8
  %1513 = load i64, i64* %myId, align 8
  %1514 = load i64, i64* %numThread, align 8
  call void @createPartition(i64 0, i64 %1512, i64 %1513, i64 %1514, i64* %i_start, i64* %i_stop)
  %1515 = load i64, i64* %i_start, align 8
  store i64 %1515, i64* %i, align 8
  br label %1516

; <label>:1516                                    ; preds = %1559, %1511
  %1517 = load i64, i64* %i, align 8
  %1518 = load i64, i64* %i_stop, align 8
  %1519 = icmp slt i64 %1517, %1518
  br i1 %1519, label %1520, label %1562

; <label>:1520                                    ; preds = %1516
  %1521 = load i64, i64* %i, align 8
  %1522 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1523 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1522, i32 0, i32 2
  %1524 = load i64*, i64** %1523, align 8
  %1525 = getelementptr inbounds i64, i64* %1524, i64 %1521
  %1526 = load i64, i64* %1525, align 8
  %1527 = icmp sle i64 %1526, 0
  br i1 %1527, label %1528, label %1558

; <label>:1528                                    ; preds = %1520
  store i64 0, i64* %j29, align 8
  br label %1529

; <label>:1529                                    ; preds = %1554, %1528
  %1530 = load i64, i64* %j29, align 8
  %1531 = load i64, i64* @MAX_STRLEN, align 8
  %1532 = icmp slt i64 %1530, %1531
  br i1 %1532, label %1533, label %1557

; <label>:1533                                    ; preds = %1529
  %1534 = load %struct.random*, %struct.random** %stream, align 8
  %1535 = call i64 @random_generate(%struct.random* %1534)
  %1536 = urem i64 %1535, 127
  %1537 = add i64 1, %1536
  %1538 = trunc i64 %1537 to i8
  %1539 = load i64, i64* %i, align 8
  %1540 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1541 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1540, i32 0, i32 2
  %1542 = load i64*, i64** %1541, align 8
  %1543 = getelementptr inbounds i64, i64* %1542, i64 %1539
  %1544 = load i64, i64* %1543, align 8
  %1545 = sub nsw i64 0, %1544
  %1546 = load i64, i64* @MAX_STRLEN, align 8
  %1547 = mul nsw i64 %1545, %1546
  %1548 = load i64, i64* %j29, align 8
  %1549 = add nsw i64 %1547, %1548
  %1550 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1551 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1550, i32 0, i32 3
  %1552 = load i8*, i8** %1551, align 8
  %1553 = getelementptr inbounds i8, i8* %1552, i64 %1549
  store i8 %1538, i8* %1553, align 1
  br label %1554

; <label>:1554                                    ; preds = %1533
  %1555 = load i64, i64* %j29, align 8
  %1556 = add nsw i64 %1555, 1
  store i64 %1556, i64* %j29, align 8
  br label %1529

; <label>:1557                                    ; preds = %1529
  br label %1558

; <label>:1558                                    ; preds = %1557, %1520
  br label %1559

; <label>:1559                                    ; preds = %1558
  %1560 = load i64, i64* %i, align 8
  %1561 = add nsw i64 %1560, 1
  store i64 %1561, i64* %i, align 8
  br label %1516

; <label>:1562                                    ; preds = %1516
  %1563 = load i64, i64* %myId, align 8
  %1564 = icmp eq i64 %1563, 0
  br i1 %1564, label %1565, label %1609

; <label>:1565                                    ; preds = %1562
  %1566 = load i8*, i8** @SOUGHT_STRING, align 8
  %1567 = call i64 @strlen(i8* %1566) #9
  %1568 = load i64, i64* @MAX_STRLEN, align 8
  %1569 = icmp ne i64 %1567, %1568
  br i1 %1569, label %1570, label %1580

; <label>:1570                                    ; preds = %1565
  %1571 = load i64, i64* @MAX_STRLEN, align 8
  %1572 = mul i64 %1571, 1
  %1573 = call noalias i8* @malloc(i64 %1572) #6
  store i8* %1573, i8** @SOUGHT_STRING, align 8
  %1574 = load i8*, i8** @SOUGHT_STRING, align 8
  %1575 = icmp ne i8* %1574, null
  br i1 %1575, label %1576, label %1577

; <label>:1576                                    ; preds = %1570
  br label %1579

; <label>:1577                                    ; preds = %1570
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1436, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %1579

; <label>:1579                                    ; preds = %1578, %1576
  br label %1580

; <label>:1580                                    ; preds = %1579, %1565
  %1581 = load %struct.random*, %struct.random** %stream, align 8
  %1582 = call i64 @random_generate(%struct.random* %1581)
  %1583 = load i64, i64* %numStrWtEdges, align 8
  %1584 = urem i64 %1582, %1583
  store i64 %1584, i64* %t30, align 8
  store i64 0, i64* %j31, align 8
  br label %1585

; <label>:1585                                    ; preds = %1605, %1580
  %1586 = load i64, i64* %j31, align 8
  %1587 = load i64, i64* @MAX_STRLEN, align 8
  %1588 = icmp slt i64 %1586, %1587
  br i1 %1588, label %1589, label %1608

; <label>:1589                                    ; preds = %1585
  %1590 = load i64, i64* %t30, align 8
  %1591 = load i64, i64* @MAX_STRLEN, align 8
  %1592 = mul nsw i64 %1590, %1591
  %1593 = load i64, i64* %j31, align 8
  %1594 = add nsw i64 %1592, %1593
  %1595 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1596 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1595, i32 0, i32 3
  %1597 = load i8*, i8** %1596, align 8
  %1598 = getelementptr inbounds i8, i8* %1597, i64 %1594
  %1599 = load i8, i8* %1598, align 1
  %1600 = sext i8 %1599 to i64
  %1601 = trunc i64 %1600 to i8
  %1602 = load i64, i64* %j31, align 8
  %1603 = load i8*, i8** @SOUGHT_STRING, align 8
  %1604 = getelementptr inbounds i8, i8* %1603, i64 %1602
  store i8 %1601, i8* %1604, align 1
  br label %1605

; <label>:1605                                    ; preds = %1589
  %1606 = load i64, i64* %j31, align 8
  %1607 = add nsw i64 %1606, 1
  store i64 %1607, i64* %j31, align 8
  br label %1585

; <label>:1608                                    ; preds = %1585
  br label %1609

; <label>:1609                                    ; preds = %1608, %1562
  call void (...) @thread_barrier_wait()
  %1610 = load i64, i64* %i_start, align 8
  store i64 %1610, i64* %i, align 8
  br label %1611

; <label>:1611                                    ; preds = %1636, %1609
  %1612 = load i64, i64* %i, align 8
  %1613 = load i64, i64* %i_stop, align 8
  %1614 = icmp slt i64 %1612, %1613
  br i1 %1614, label %1615, label %1639

; <label>:1615                                    ; preds = %1611
  %1616 = load i64, i64* %i, align 8
  %1617 = load i64*, i64** %startVertex, align 8
  %1618 = getelementptr inbounds i64, i64* %1617, i64 %1616
  %1619 = load i64, i64* %1618, align 8
  %1620 = load i64*, i64** %permV, align 8
  %1621 = getelementptr inbounds i64, i64* %1620, i64 %1619
  %1622 = load i64, i64* %1621, align 8
  %1623 = load i64, i64* %i, align 8
  %1624 = load i64*, i64** %startVertex, align 8
  %1625 = getelementptr inbounds i64, i64* %1624, i64 %1623
  store i64 %1622, i64* %1625, align 8
  %1626 = load i64, i64* %i, align 8
  %1627 = load i64*, i64** %endVertex, align 8
  %1628 = getelementptr inbounds i64, i64* %1627, i64 %1626
  %1629 = load i64, i64* %1628, align 8
  %1630 = load i64*, i64** %permV, align 8
  %1631 = getelementptr inbounds i64, i64* %1630, i64 %1629
  %1632 = load i64, i64* %1631, align 8
  %1633 = load i64, i64* %i, align 8
  %1634 = load i64*, i64** %endVertex, align 8
  %1635 = getelementptr inbounds i64, i64* %1634, i64 %1633
  store i64 %1632, i64* %1635, align 8
  br label %1636

; <label>:1636                                    ; preds = %1615
  %1637 = load i64, i64* %i, align 8
  %1638 = add nsw i64 %1637, 1
  store i64 %1638, i64* %i, align 8
  br label %1611

; <label>:1639                                    ; preds = %1611
  call void (...) @thread_barrier_wait()
  %1640 = load i64, i64* %myId, align 8
  %1641 = icmp eq i64 %1640, 0
  br i1 %1641, label %1642, label %1671

; <label>:1642                                    ; preds = %1639
  %1643 = load i64, i64* %numEdgesPlaced, align 8
  %1644 = mul i64 %1643, 8
  store i64 %1644, i64* %numByte32, align 8
  %1645 = load i64, i64* %numByte32, align 8
  %1646 = call noalias i8* @malloc(i64 %1645) #6
  %1647 = bitcast i8* %1646 to i64*
  %1648 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1649 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1648, i32 0, i32 0
  store i64* %1647, i64** %1649, align 8
  %1650 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1651 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1650, i32 0, i32 0
  %1652 = load i64*, i64** %1651, align 8
  %1653 = icmp ne i64* %1652, null
  br i1 %1653, label %1654, label %1655

; <label>:1654                                    ; preds = %1642
  br label %1657

; <label>:1655                                    ; preds = %1642
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1472, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %1657

; <label>:1657                                    ; preds = %1656, %1654
  %1658 = load i64, i64* %numByte32, align 8
  %1659 = call noalias i8* @malloc(i64 %1658) #6
  %1660 = bitcast i8* %1659 to i64*
  %1661 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1662 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1661, i32 0, i32 1
  store i64* %1660, i64** %1662, align 8
  %1663 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1664 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1663, i32 0, i32 1
  %1665 = load i64*, i64** %1664, align 8
  %1666 = icmp ne i64* %1665, null
  br i1 %1666, label %1667, label %1668

; <label>:1667                                    ; preds = %1657
  br label %1670

; <label>:1668                                    ; preds = %1657
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1474, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %1670

; <label>:1670                                    ; preds = %1669, %1667
  br label %1671

; <label>:1671                                    ; preds = %1670, %1639
  call void (...) @thread_barrier_wait()
  %1672 = load i64, i64* %numEdgesPlaced, align 8
  %1673 = load i64*, i64** %startVertex, align 8
  %1674 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1675 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1674, i32 0, i32 0
  %1676 = load i64*, i64** %1675, align 8
  %1677 = load i64*, i64** %endVertex, align 8
  %1678 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1679 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1678, i32 0, i32 1
  %1680 = load i64*, i64** %1679, align 8
  call void @all_radixsort_node_aux_s3(i64 %1672, i64* %1673, i64* %1676, i64* %1677, i64* %1680)
  call void (...) @thread_barrier_wait()
  %1681 = load i64, i64* %myId, align 8
  %1682 = icmp eq i64 %1681, 0
  br i1 %1682, label %1683, label %1688

; <label>:1683                                    ; preds = %1671
  %1684 = load i64*, i64** %startVertex, align 8
  %1685 = bitcast i64* %1684 to i8*
  call void @free(i8* %1685) #6
  %1686 = load i64*, i64** %endVertex, align 8
  %1687 = bitcast i64* %1686 to i8*
  call void @free(i8* %1687) #6
  br label %1688

; <label>:1688                                    ; preds = %1683, %1671
  call void (...) @thread_barrier_wait()
  %1689 = load i64, i64* @SCALE, align 8
  %1690 = icmp slt i64 %1689, 12
  br i1 %1690, label %1691, label %1859

; <label>:1691                                    ; preds = %1688
  %1692 = load i64, i64* %myId, align 8
  %1693 = icmp eq i64 %1692, 0
  br i1 %1693, label %1694, label %1858

; <label>:1694                                    ; preds = %1691
  store i64 0, i64* %i0, align 8
  store i64 0, i64* %i1, align 8
  store i64 0, i64* %i, align 8
  br label %1695

; <label>:1695                                    ; preds = %1856, %1694
  %1696 = load i64, i64* %i, align 8
  %1697 = load i64, i64* %numEdgesPlaced, align 8
  %1698 = icmp ult i64 %1696, %1697
  br i1 %1698, label %1699, label %1857

; <label>:1699                                    ; preds = %1695
  %1700 = load i64, i64* %i0, align 8
  store i64 %1700, i64* %i, align 8
  br label %1701

; <label>:1701                                    ; preds = %1722, %1699
  %1702 = load i64, i64* %i, align 8
  %1703 = load i64, i64* %numEdgesPlaced, align 8
  %1704 = icmp ult i64 %1702, %1703
  br i1 %1704, label %1705, label %1725

; <label>:1705                                    ; preds = %1701
  %1706 = load i64, i64* %i, align 8
  %1707 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1708 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1707, i32 0, i32 0
  %1709 = load i64*, i64** %1708, align 8
  %1710 = getelementptr inbounds i64, i64* %1709, i64 %1706
  %1711 = load i64, i64* %1710, align 8
  %1712 = load i64, i64* %i1, align 8
  %1713 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1714 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1713, i32 0, i32 0
  %1715 = load i64*, i64** %1714, align 8
  %1716 = getelementptr inbounds i64, i64* %1715, i64 %1712
  %1717 = load i64, i64* %1716, align 8
  %1718 = icmp ne i64 %1711, %1717
  br i1 %1718, label %1719, label %1721

; <label>:1719                                    ; preds = %1705
  %1720 = load i64, i64* %i, align 8
  store i64 %1720, i64* %i1, align 8
  br label %1725

; <label>:1721                                    ; preds = %1705
  br label %1722

; <label>:1722                                    ; preds = %1721
  %1723 = load i64, i64* %i, align 8
  %1724 = add nsw i64 %1723, 1
  store i64 %1724, i64* %i, align 8
  br label %1701

; <label>:1725                                    ; preds = %1719, %1701
  %1726 = load i64, i64* %i0, align 8
  store i64 %1726, i64* %j33, align 8
  br label %1727

; <label>:1727                                    ; preds = %1781, %1725
  %1728 = load i64, i64* %j33, align 8
  %1729 = load i64, i64* %i1, align 8
  %1730 = icmp slt i64 %1728, %1729
  br i1 %1730, label %1731, label %1784

; <label>:1731                                    ; preds = %1727
  %1732 = load i64, i64* %j33, align 8
  %1733 = add nsw i64 %1732, 1
  store i64 %1733, i64* %k, align 8
  br label %1734

; <label>:1734                                    ; preds = %1777, %1731
  %1735 = load i64, i64* %k, align 8
  %1736 = load i64, i64* %i1, align 8
  %1737 = icmp slt i64 %1735, %1736
  br i1 %1737, label %1738, label %1780

; <label>:1738                                    ; preds = %1734
  %1739 = load i64, i64* %k, align 8
  %1740 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1741 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1740, i32 0, i32 1
  %1742 = load i64*, i64** %1741, align 8
  %1743 = getelementptr inbounds i64, i64* %1742, i64 %1739
  %1744 = load i64, i64* %1743, align 8
  %1745 = load i64, i64* %j33, align 8
  %1746 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1747 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1746, i32 0, i32 1
  %1748 = load i64*, i64** %1747, align 8
  %1749 = getelementptr inbounds i64, i64* %1748, i64 %1745
  %1750 = load i64, i64* %1749, align 8
  %1751 = icmp ult i64 %1744, %1750
  br i1 %1751, label %1752, label %1776

; <label>:1752                                    ; preds = %1738
  %1753 = load i64, i64* %j33, align 8
  %1754 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1755 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1754, i32 0, i32 1
  %1756 = load i64*, i64** %1755, align 8
  %1757 = getelementptr inbounds i64, i64* %1756, i64 %1753
  %1758 = load i64, i64* %1757, align 8
  store i64 %1758, i64* %t34, align 8
  %1759 = load i64, i64* %k, align 8
  %1760 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1761 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1760, i32 0, i32 1
  %1762 = load i64*, i64** %1761, align 8
  %1763 = getelementptr inbounds i64, i64* %1762, i64 %1759
  %1764 = load i64, i64* %1763, align 8
  %1765 = load i64, i64* %j33, align 8
  %1766 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1767 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1766, i32 0, i32 1
  %1768 = load i64*, i64** %1767, align 8
  %1769 = getelementptr inbounds i64, i64* %1768, i64 %1765
  store i64 %1764, i64* %1769, align 8
  %1770 = load i64, i64* %t34, align 8
  %1771 = load i64, i64* %k, align 8
  %1772 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1773 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1772, i32 0, i32 1
  %1774 = load i64*, i64** %1773, align 8
  %1775 = getelementptr inbounds i64, i64* %1774, i64 %1771
  store i64 %1770, i64* %1775, align 8
  br label %1776

; <label>:1776                                    ; preds = %1752, %1738
  br label %1777

; <label>:1777                                    ; preds = %1776
  %1778 = load i64, i64* %k, align 8
  %1779 = add nsw i64 %1778, 1
  store i64 %1779, i64* %k, align 8
  br label %1734

; <label>:1780                                    ; preds = %1734
  br label %1781

; <label>:1781                                    ; preds = %1780
  %1782 = load i64, i64* %j33, align 8
  %1783 = add nsw i64 %1782, 1
  store i64 %1783, i64* %j33, align 8
  br label %1727

; <label>:1784                                    ; preds = %1727
  %1785 = load i64, i64* %i0, align 8
  %1786 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1787 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1786, i32 0, i32 0
  %1788 = load i64*, i64** %1787, align 8
  %1789 = getelementptr inbounds i64, i64* %1788, i64 %1785
  %1790 = load i64, i64* %1789, align 8
  %1791 = load i64, i64* @TOT_VERTICES, align 8
  %1792 = sub i64 %1791, 1
  %1793 = icmp ne i64 %1790, %1792
  br i1 %1793, label %1794, label %1796

; <label>:1794                                    ; preds = %1784
  %1795 = load i64, i64* %i1, align 8
  store i64 %1795, i64* %i0, align 8
  br label %1856

; <label>:1796                                    ; preds = %1784
  %1797 = load i64, i64* %i0, align 8
  store i64 %1797, i64* %j35, align 8
  br label %1798

; <label>:1798                                    ; preds = %1852, %1796
  %1799 = load i64, i64* %j35, align 8
  %1800 = load i64, i64* %numEdgesPlaced, align 8
  %1801 = icmp ult i64 %1799, %1800
  br i1 %1801, label %1802, label %1855

; <label>:1802                                    ; preds = %1798
  %1803 = load i64, i64* %j35, align 8
  %1804 = add nsw i64 %1803, 1
  store i64 %1804, i64* %k36, align 8
  br label %1805

; <label>:1805                                    ; preds = %1848, %1802
  %1806 = load i64, i64* %k36, align 8
  %1807 = load i64, i64* %numEdgesPlaced, align 8
  %1808 = icmp ult i64 %1806, %1807
  br i1 %1808, label %1809, label %1851

; <label>:1809                                    ; preds = %1805
  %1810 = load i64, i64* %k36, align 8
  %1811 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1812 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1811, i32 0, i32 1
  %1813 = load i64*, i64** %1812, align 8
  %1814 = getelementptr inbounds i64, i64* %1813, i64 %1810
  %1815 = load i64, i64* %1814, align 8
  %1816 = load i64, i64* %j35, align 8
  %1817 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1818 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1817, i32 0, i32 1
  %1819 = load i64*, i64** %1818, align 8
  %1820 = getelementptr inbounds i64, i64* %1819, i64 %1816
  %1821 = load i64, i64* %1820, align 8
  %1822 = icmp ult i64 %1815, %1821
  br i1 %1822, label %1823, label %1847

; <label>:1823                                    ; preds = %1809
  %1824 = load i64, i64* %j35, align 8
  %1825 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1826 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1825, i32 0, i32 1
  %1827 = load i64*, i64** %1826, align 8
  %1828 = getelementptr inbounds i64, i64* %1827, i64 %1824
  %1829 = load i64, i64* %1828, align 8
  store i64 %1829, i64* %t37, align 8
  %1830 = load i64, i64* %k36, align 8
  %1831 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1832 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1831, i32 0, i32 1
  %1833 = load i64*, i64** %1832, align 8
  %1834 = getelementptr inbounds i64, i64* %1833, i64 %1830
  %1835 = load i64, i64* %1834, align 8
  %1836 = load i64, i64* %j35, align 8
  %1837 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1838 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1837, i32 0, i32 1
  %1839 = load i64*, i64** %1838, align 8
  %1840 = getelementptr inbounds i64, i64* %1839, i64 %1836
  store i64 %1835, i64* %1840, align 8
  %1841 = load i64, i64* %t37, align 8
  %1842 = load i64, i64* %k36, align 8
  %1843 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1844 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1843, i32 0, i32 1
  %1845 = load i64*, i64** %1844, align 8
  %1846 = getelementptr inbounds i64, i64* %1845, i64 %1842
  store i64 %1841, i64* %1846, align 8
  br label %1847

; <label>:1847                                    ; preds = %1823, %1809
  br label %1848

; <label>:1848                                    ; preds = %1847
  %1849 = load i64, i64* %k36, align 8
  %1850 = add nsw i64 %1849, 1
  store i64 %1850, i64* %k36, align 8
  br label %1805

; <label>:1851                                    ; preds = %1805
  br label %1852

; <label>:1852                                    ; preds = %1851
  %1853 = load i64, i64* %j35, align 8
  %1854 = add nsw i64 %1853, 1
  store i64 %1854, i64* %j35, align 8
  br label %1798

; <label>:1855                                    ; preds = %1798
  br label %1856

; <label>:1856                                    ; preds = %1855, %1794
  br label %1695

; <label>:1857                                    ; preds = %1695
  br label %1858

; <label>:1858                                    ; preds = %1857, %1691
  br label %2030

; <label>:1859                                    ; preds = %1688
  %1860 = load i64, i64* %myId, align 8
  %1861 = icmp eq i64 %1860, 0
  br i1 %1861, label %1862, label %1939

; <label>:1862                                    ; preds = %1859
  %1863 = load i64, i64* @TOT_VERTICES, align 8
  %1864 = add i64 %1863, 1
  %1865 = mul i64 %1864, 8
  %1866 = call noalias i8* @malloc(i64 %1865) #6
  %1867 = bitcast i8* %1866 to i64*
  store i64* %1867, i64** %tempIndex, align 8
  %1868 = load i64*, i64** %tempIndex, align 8
  %1869 = icmp ne i64* %1868, null
  br i1 %1869, label %1870, label %1871

; <label>:1870                                    ; preds = %1862
  br label %1873

; <label>:1871                                    ; preds = %1862
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1561, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %1873

; <label>:1873                                    ; preds = %1872, %1870
  %1874 = load i64*, i64** %tempIndex, align 8
  store i64* %1874, i64** @global_tempIndex, align 8
  %1875 = load i64*, i64** %tempIndex, align 8
  %1876 = getelementptr inbounds i64, i64* %1875, i64 0
  store i64 0, i64* %1876, align 8
  %1877 = load i64, i64* %numEdgesPlaced, align 8
  %1878 = load i64, i64* @TOT_VERTICES, align 8
  %1879 = load i64*, i64** %tempIndex, align 8
  %1880 = getelementptr inbounds i64, i64* %1879, i64 %1878
  store i64 %1877, i64* %1880, align 8
  store i64 0, i64* %i038, align 8
  store i64 0, i64* %i, align 8
  br label %1881

; <label>:1881                                    ; preds = %1935, %1873
  %1882 = load i64, i64* %i, align 8
  %1883 = load i64, i64* @TOT_VERTICES, align 8
  %1884 = icmp ult i64 %1882, %1883
  br i1 %1884, label %1885, label %1938

; <label>:1885                                    ; preds = %1881
  %1886 = load i64, i64* %i, align 8
  %1887 = load i64*, i64** %tempIndex, align 8
  %1888 = getelementptr inbounds i64, i64* %1887, i64 %1886
  %1889 = load i64, i64* %1888, align 8
  %1890 = load i64, i64* %i, align 8
  %1891 = add nsw i64 %1890, 1
  %1892 = load i64*, i64** %tempIndex, align 8
  %1893 = getelementptr inbounds i64, i64* %1892, i64 %1891
  store i64 %1889, i64* %1893, align 8
  %1894 = load i64, i64* %i038, align 8
  store i64 %1894, i64* %j39, align 8
  br label %1895

; <label>:1895                                    ; preds = %1931, %1885
  %1896 = load i64, i64* %j39, align 8
  %1897 = load i64, i64* %numEdgesPlaced, align 8
  %1898 = icmp ult i64 %1896, %1897
  br i1 %1898, label %1899, label %1934

; <label>:1899                                    ; preds = %1895
  %1900 = load i64, i64* %j39, align 8
  %1901 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1902 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1901, i32 0, i32 0
  %1903 = load i64*, i64** %1902, align 8
  %1904 = getelementptr inbounds i64, i64* %1903, i64 %1900
  %1905 = load i64, i64* %1904, align 8
  %1906 = load i64, i64* %i038, align 8
  %1907 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1908 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1907, i32 0, i32 0
  %1909 = load i64*, i64** %1908, align 8
  %1910 = getelementptr inbounds i64, i64* %1909, i64 %1906
  %1911 = load i64, i64* %1910, align 8
  %1912 = icmp ne i64 %1905, %1911
  br i1 %1912, label %1913, label %1930

; <label>:1913                                    ; preds = %1899
  %1914 = load i64, i64* %i038, align 8
  %1915 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1916 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1915, i32 0, i32 0
  %1917 = load i64*, i64** %1916, align 8
  %1918 = getelementptr inbounds i64, i64* %1917, i64 %1914
  %1919 = load i64, i64* %1918, align 8
  %1920 = load i64, i64* %i, align 8
  %1921 = icmp eq i64 %1919, %1920
  br i1 %1921, label %1922, label %1929

; <label>:1922                                    ; preds = %1913
  %1923 = load i64, i64* %j39, align 8
  %1924 = load i64, i64* %i, align 8
  %1925 = add nsw i64 %1924, 1
  %1926 = load i64*, i64** %tempIndex, align 8
  %1927 = getelementptr inbounds i64, i64* %1926, i64 %1925
  store i64 %1923, i64* %1927, align 8
  %1928 = load i64, i64* %j39, align 8
  store i64 %1928, i64* %i038, align 8
  br label %1934

; <label>:1929                                    ; preds = %1913
  br label %1930

; <label>:1930                                    ; preds = %1929, %1899
  br label %1931

; <label>:1931                                    ; preds = %1930
  %1932 = load i64, i64* %j39, align 8
  %1933 = add nsw i64 %1932, 1
  store i64 %1933, i64* %j39, align 8
  br label %1895

; <label>:1934                                    ; preds = %1922, %1895
  br label %1935

; <label>:1935                                    ; preds = %1934
  %1936 = load i64, i64* %i, align 8
  %1937 = add nsw i64 %1936, 1
  store i64 %1937, i64* %i, align 8
  br label %1881

; <label>:1938                                    ; preds = %1881
  br label %1939

; <label>:1939                                    ; preds = %1938, %1859
  call void (...) @thread_barrier_wait()
  %1940 = load i64*, i64** @global_tempIndex, align 8
  store i64* %1940, i64** %tempIndex, align 8
  %1941 = load i64, i64* %myId, align 8
  %1942 = icmp eq i64 %1941, 0
  br i1 %1942, label %1943, label %2023

; <label>:1943                                    ; preds = %1939
  store i64 0, i64* %i, align 8
  br label %1944

; <label>:1944                                    ; preds = %2019, %1943
  %1945 = load i64, i64* %i, align 8
  %1946 = load i64, i64* @TOT_VERTICES, align 8
  %1947 = icmp ult i64 %1945, %1946
  br i1 %1947, label %1948, label %2022

; <label>:1948                                    ; preds = %1944
  %1949 = load i64, i64* %i, align 8
  %1950 = load i64*, i64** %tempIndex, align 8
  %1951 = getelementptr inbounds i64, i64* %1950, i64 %1949
  %1952 = load i64, i64* %1951, align 8
  store i64 %1952, i64* %j40, align 8
  br label %1953

; <label>:1953                                    ; preds = %2015, %1948
  %1954 = load i64, i64* %j40, align 8
  %1955 = load i64, i64* %i, align 8
  %1956 = add nsw i64 %1955, 1
  %1957 = load i64*, i64** %tempIndex, align 8
  %1958 = getelementptr inbounds i64, i64* %1957, i64 %1956
  %1959 = load i64, i64* %1958, align 8
  %1960 = icmp ult i64 %1954, %1959
  br i1 %1960, label %1961, label %2018

; <label>:1961                                    ; preds = %1953
  %1962 = load i64, i64* %j40, align 8
  %1963 = add nsw i64 %1962, 1
  store i64 %1963, i64* %k41, align 8
  br label %1964

; <label>:1964                                    ; preds = %2011, %1961
  %1965 = load i64, i64* %k41, align 8
  %1966 = load i64, i64* %i, align 8
  %1967 = add nsw i64 %1966, 1
  %1968 = load i64*, i64** %tempIndex, align 8
  %1969 = getelementptr inbounds i64, i64* %1968, i64 %1967
  %1970 = load i64, i64* %1969, align 8
  %1971 = icmp ult i64 %1965, %1970
  br i1 %1971, label %1972, label %2014

; <label>:1972                                    ; preds = %1964
  %1973 = load i64, i64* %k41, align 8
  %1974 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1975 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1974, i32 0, i32 1
  %1976 = load i64*, i64** %1975, align 8
  %1977 = getelementptr inbounds i64, i64* %1976, i64 %1973
  %1978 = load i64, i64* %1977, align 8
  %1979 = load i64, i64* %j40, align 8
  %1980 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1981 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1980, i32 0, i32 1
  %1982 = load i64*, i64** %1981, align 8
  %1983 = getelementptr inbounds i64, i64* %1982, i64 %1979
  %1984 = load i64, i64* %1983, align 8
  %1985 = icmp ult i64 %1978, %1984
  br i1 %1985, label %1986, label %2010

; <label>:1986                                    ; preds = %1972
  %1987 = load i64, i64* %j40, align 8
  %1988 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1989 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1988, i32 0, i32 1
  %1990 = load i64*, i64** %1989, align 8
  %1991 = getelementptr inbounds i64, i64* %1990, i64 %1987
  %1992 = load i64, i64* %1991, align 8
  store i64 %1992, i64* %t42, align 8
  %1993 = load i64, i64* %k41, align 8
  %1994 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %1995 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %1994, i32 0, i32 1
  %1996 = load i64*, i64** %1995, align 8
  %1997 = getelementptr inbounds i64, i64* %1996, i64 %1993
  %1998 = load i64, i64* %1997, align 8
  %1999 = load i64, i64* %j40, align 8
  %2000 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %2001 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %2000, i32 0, i32 1
  %2002 = load i64*, i64** %2001, align 8
  %2003 = getelementptr inbounds i64, i64* %2002, i64 %1999
  store i64 %1998, i64* %2003, align 8
  %2004 = load i64, i64* %t42, align 8
  %2005 = load i64, i64* %k41, align 8
  %2006 = load %struct.graphSDG*, %struct.graphSDG** %SDGdataPtr, align 8
  %2007 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %2006, i32 0, i32 1
  %2008 = load i64*, i64** %2007, align 8
  %2009 = getelementptr inbounds i64, i64* %2008, i64 %2005
  store i64 %2004, i64* %2009, align 8
  br label %2010

; <label>:2010                                    ; preds = %1986, %1972
  br label %2011

; <label>:2011                                    ; preds = %2010
  %2012 = load i64, i64* %k41, align 8
  %2013 = add nsw i64 %2012, 1
  store i64 %2013, i64* %k41, align 8
  br label %1964

; <label>:2014                                    ; preds = %1964
  br label %2015

; <label>:2015                                    ; preds = %2014
  %2016 = load i64, i64* %j40, align 8
  %2017 = add nsw i64 %2016, 1
  store i64 %2017, i64* %j40, align 8
  br label %1953

; <label>:2018                                    ; preds = %1953
  br label %2019

; <label>:2019                                    ; preds = %2018
  %2020 = load i64, i64* %i, align 8
  %2021 = add nsw i64 %2020, 1
  store i64 %2021, i64* %i, align 8
  br label %1944

; <label>:2022                                    ; preds = %1944
  br label %2023

; <label>:2023                                    ; preds = %2022, %1939
  %2024 = load i64, i64* %myId, align 8
  %2025 = icmp eq i64 %2024, 0
  br i1 %2025, label %2026, label %2029

; <label>:2026                                    ; preds = %2023
  %2027 = load i64*, i64** %tempIndex, align 8
  %2028 = bitcast i64* %2027 to i8*
  call void @free(i8* %2028) #6
  br label %2029

; <label>:2029                                    ; preds = %2026, %2023
  br label %2030

; <label>:2030                                    ; preds = %2029, %1858
  %2031 = load %struct.random*, %struct.random** %stream, align 8
  call void @Prandom_free(%struct.random* %2031)
  %2032 = load i64, i64* %myId, align 8
  %2033 = icmp eq i64 %2032, 0
  br i1 %2033, label %2034, label %2037

; <label>:2034                                    ; preds = %2030
  %2035 = load i64*, i64** %permV, align 8
  %2036 = bitcast i64* %2035 to i8*
  call void @free(i8* %2036) #6
  br label %2037

; <label>:2037                                    ; preds = %2034, %2030
  br label %2038

; <label>:2038                                    ; preds = %2037
  %2039 = call i64 (...) @thread_getId()
  %2040 = trunc i64 %2039 to i32
  %2041 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %2042 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2041, i32 0, i32 4
  %2043 = load i32, i32* %2042, align 4
  call void @SimRoiEnd(i32 %2040, i32 %2043)
  br label %2044

; <label>:2044                                    ; preds = %2038
  ret void
}

declare i64 @thread_getId(...) #1

declare void @SimRoiStart(i32) #1

declare i64 @thread_getNumThread(...) #1

declare %struct.random* @Prandom_alloc(...) #1

declare void @thread_barrier_wait(...) #1

declare void @createPartition(i64, i64, i64, i64, i64*, i64*) #1

declare i64 @RTM_fallback_isLocked(...) #1

declare void @RTM_fallback_lock(...) #1

declare void @RTM_fallback_unlock(...) #1

declare void @all_radixsort_node_aux_s3(i64, i64*, i64*, i64*, i64*) #1

declare void @Prandom_free(%struct.random*) #1

declare void @SimRoiEnd(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 1724256, i32 1724272, i32 1724308, i32 1724344, i32 1724380}
!2 = !{i32 1724857, i32 1724872, i32 1724906}
!3 = !{i32 1724628, i32 1724643, i32 1724671}
