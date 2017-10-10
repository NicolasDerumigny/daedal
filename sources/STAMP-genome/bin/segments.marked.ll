; ModuleID = '../bin/segments.stats.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.segments = type { i64, i64, %struct.vector*, i8** }
%struct.vector = type { i64, i64, i8** }
%struct.gene = type { i64, i8*, %struct.bitmap* }
%struct.bitmap = type { i64, i64, i64* }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }

@.str = private unnamed_addr constant [20 x i8] c"segmentsPtr != NULL\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"segments.c\00", align 1
@__PRETTY_FUNCTION__.segments_create = private unnamed_addr constant [57 x i8] c"void segments_create(segments_t *, gene_t *, random_t *)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"genePtr != NULL\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"randomPtr != NULL\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"status\00", align 1

; Function Attrs: nounwind uwtable
define %struct.segments* @segments_alloc(i64 %length, i64 %minNum) #0 {
  %1 = alloca %struct.segments*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %segmentsPtr = alloca %struct.segments*, align 8
  %i = alloca i64, align 8
  %string = alloca i8*, align 8
  store i64 %length, i64* %2, align 8
  store i64 %minNum, i64* %3, align 8
  %4 = call noalias i8* @malloc(i64 32) #5
  %5 = bitcast i8* %4 to %struct.segments*
  store %struct.segments* %5, %struct.segments** %segmentsPtr, align 8
  %6 = load %struct.segments*, %struct.segments** %segmentsPtr, align 8
  %7 = icmp eq %struct.segments* %6, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  store %struct.segments* null, %struct.segments** %1, align 8
  br label %77

; <label>:9                                       ; preds = %0
  %10 = load i64, i64* %3, align 8
  %11 = mul i64 %10, 8
  %12 = call noalias i8* @malloc(i64 %11) #5
  %13 = bitcast i8* %12 to i8**
  %14 = load %struct.segments*, %struct.segments** %segmentsPtr, align 8
  %15 = getelementptr inbounds %struct.segments, %struct.segments* %14, i32 0, i32 3
  store i8** %13, i8*** %15, align 8
  %16 = load %struct.segments*, %struct.segments** %segmentsPtr, align 8
  %17 = getelementptr inbounds %struct.segments, %struct.segments* %16, i32 0, i32 3
  %18 = load i8**, i8*** %17, align 8
  %19 = icmp eq i8** %18, null
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %9
  store %struct.segments* null, %struct.segments** %1, align 8
  br label %77

; <label>:21                                      ; preds = %9
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* %2, align 8
  %24 = add nsw i64 %23, 1
  %25 = mul nsw i64 %22, %24
  %26 = mul i64 %25, 1
  %27 = call noalias i8* @malloc(i64 %26) #5
  store i8* %27, i8** %string, align 8
  %28 = load i8*, i8** %string, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

; <label>:30                                      ; preds = %21
  store %struct.segments* null, %struct.segments** %1, align 8
  br label %77

; <label>:31                                      ; preds = %21
  store i64 0, i64* %i, align 8
  br label %32

; <label>:32                                      ; preds = %56, %31
  %33 = load i64, i64* %i, align 8
  %34 = load i64, i64* %3, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %59

; <label>:36                                      ; preds = %32
  %37 = load i64, i64* %i, align 8
  %38 = load i64, i64* %2, align 8
  %39 = add nsw i64 %38, 1
  %40 = mul nsw i64 %37, %39
  %41 = load i8*, i8** %string, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 %40
  %43 = load i64, i64* %i, align 8
  %44 = load %struct.segments*, %struct.segments** %segmentsPtr, align 8
  %45 = getelementptr inbounds %struct.segments, %struct.segments* %44, i32 0, i32 3
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 %43
  store i8* %42, i8** %47, align 8
  %48 = load i64, i64* %2, align 8
  %49 = load i64, i64* %i, align 8
  %50 = load %struct.segments*, %struct.segments** %segmentsPtr, align 8
  %51 = getelementptr inbounds %struct.segments, %struct.segments* %50, i32 0, i32 3
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 %49
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 %48
  store i8 0, i8* %55, align 1
  br label %56

; <label>:56                                      ; preds = %36
  %57 = load i64, i64* %i, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %i, align 8
  br label %32

; <label>:59                                      ; preds = %32
  %60 = load i64, i64* %3, align 8
  %61 = load %struct.segments*, %struct.segments** %segmentsPtr, align 8
  %62 = getelementptr inbounds %struct.segments, %struct.segments* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* %2, align 8
  %64 = load %struct.segments*, %struct.segments** %segmentsPtr, align 8
  %65 = getelementptr inbounds %struct.segments, %struct.segments* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* %3, align 8
  %67 = call %struct.vector* @vector_alloc(i64 %66)
  %68 = load %struct.segments*, %struct.segments** %segmentsPtr, align 8
  %69 = getelementptr inbounds %struct.segments, %struct.segments* %68, i32 0, i32 2
  store %struct.vector* %67, %struct.vector** %69, align 8
  %70 = load %struct.segments*, %struct.segments** %segmentsPtr, align 8
  %71 = getelementptr inbounds %struct.segments, %struct.segments* %70, i32 0, i32 2
  %72 = load %struct.vector*, %struct.vector** %71, align 8
  %73 = icmp eq %struct.vector* %72, null
  br i1 %73, label %74, label %75

; <label>:74                                      ; preds = %59
  store %struct.segments* null, %struct.segments** %1, align 8
  br label %77

; <label>:75                                      ; preds = %59
  %76 = load %struct.segments*, %struct.segments** %segmentsPtr, align 8
  store %struct.segments* %76, %struct.segments** %1, align 8
  br label %77

; <label>:77                                      ; preds = %75, %74, %30, %20, %8
  %78 = load %struct.segments*, %struct.segments** %1, align 8
  ret %struct.segments* %78
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.vector* @vector_alloc(i64) #2

; Function Attrs: nounwind uwtable
define void @segments_create(%struct.segments* %segmentsPtr, %struct.gene* %genePtr, %struct.random* %randomPtr) #0 {
  %1 = alloca %struct.segments*, align 8
  %2 = alloca %struct.gene*, align 8
  %3 = alloca %struct.random*, align 8
  %segmentsContentsPtr = alloca %struct.vector*, align 8
  %strings = alloca i8**, align 8
  %segmentLength = alloca i64, align 8
  %minNumSegment = alloca i64, align 8
  %geneString = alloca i8*, align 8
  %geneLength = alloca i64, align 8
  %startBitmapPtr = alloca %struct.bitmap*, align 8
  %numStart = alloca i64, align 8
  %i = alloca i64, align 8
  %maxZeroRunLength = alloca i64, align 8
  %j = alloca i64, align 8
  %status = alloca i64, align 8
  %string = alloca i8*, align 8
  %status1 = alloca i64, align 8
  %i_stop = alloca i64, align 8
  %_a = alloca i64, align 8
  %_b = alloca i64, align 8
  %4 = alloca i64, align 8
  %string2 = alloca i8*, align 8
  %status3 = alloca i64, align 8
  store %struct.segments* %segmentsPtr, %struct.segments** %1, align 8
  store %struct.gene* %genePtr, %struct.gene** %2, align 8
  store %struct.random* %randomPtr, %struct.random** %3, align 8
  %5 = load %struct.segments*, %struct.segments** %1, align 8
  %6 = icmp ne %struct.segments* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %10

; <label>:8                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 148, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %10

; <label>:10                                      ; preds = %9, %7
  %11 = load %struct.gene*, %struct.gene** %2, align 8
  %12 = icmp ne %struct.gene* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %10
  br label %16

; <label>:14                                      ; preds = %10
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 149, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = load %struct.random*, %struct.random** %3, align 8
  %18 = icmp ne %struct.random* %17, null
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %16
  br label %22

; <label>:20                                      ; preds = %16
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 150, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %22

; <label>:22                                      ; preds = %21, %19
  %23 = load %struct.segments*, %struct.segments** %1, align 8
  %24 = getelementptr inbounds %struct.segments, %struct.segments* %23, i32 0, i32 2
  %25 = load %struct.vector*, %struct.vector** %24, align 8
  store %struct.vector* %25, %struct.vector** %segmentsContentsPtr, align 8
  %26 = load %struct.segments*, %struct.segments** %1, align 8
  %27 = getelementptr inbounds %struct.segments, %struct.segments* %26, i32 0, i32 3
  %28 = load i8**, i8*** %27, align 8
  store i8** %28, i8*** %strings, align 8
  %29 = load %struct.segments*, %struct.segments** %1, align 8
  %30 = getelementptr inbounds %struct.segments, %struct.segments* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %segmentLength, align 8
  %32 = load %struct.segments*, %struct.segments** %1, align 8
  %33 = getelementptr inbounds %struct.segments, %struct.segments* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %minNumSegment, align 8
  %35 = load %struct.gene*, %struct.gene** %2, align 8
  %36 = getelementptr inbounds %struct.gene, %struct.gene* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %geneString, align 8
  %38 = load %struct.gene*, %struct.gene** %2, align 8
  %39 = getelementptr inbounds %struct.gene, %struct.gene* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %geneLength, align 8
  %41 = load %struct.gene*, %struct.gene** %2, align 8
  %42 = getelementptr inbounds %struct.gene, %struct.gene* %41, i32 0, i32 2
  %43 = load %struct.bitmap*, %struct.bitmap** %42, align 8
  store %struct.bitmap* %43, %struct.bitmap** %startBitmapPtr, align 8
  %44 = load i64, i64* %geneLength, align 8
  %45 = load i64, i64* %segmentLength, align 8
  %46 = sub nsw i64 %44, %45
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %numStart, align 8
  store i64 0, i64* %i, align 8
  br label %48

; <label>:48                                      ; preds = %87, %22
  %49 = load i64, i64* %i, align 8
  %50 = load i64, i64* %minNumSegment, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %90

; <label>:52                                      ; preds = %48
  %53 = load %struct.random*, %struct.random** %3, align 8
  %54 = call i64 @random_generate(%struct.random* %53)
  %55 = load i64, i64* %numStart, align 8
  %56 = urem i64 %54, %55
  store i64 %56, i64* %j, align 8
  %57 = load %struct.bitmap*, %struct.bitmap** %startBitmapPtr, align 8
  %58 = load i64, i64* %j, align 8
  %59 = call i64 @bitmap_set(%struct.bitmap* %57, i64 %58)
  store i64 %59, i64* %status, align 8
  %60 = load i64, i64* %status, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

; <label>:62                                      ; preds = %52
  br label %65

; <label>:63                                      ; preds = %52
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 166, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %65

; <label>:65                                      ; preds = %64, %62
  %66 = load i64, i64* %i, align 8
  %67 = load i8**, i8*** %strings, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 %66
  %69 = load i8*, i8** %68, align 8
  %70 = load i64, i64* %j, align 8
  %71 = load i8*, i8** %geneString, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 %70
  %73 = load i64, i64* %segmentLength, align 8
  %74 = mul i64 %73, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %72, i64 %74, i32 1, i1 false)
  %75 = load %struct.vector*, %struct.vector** %segmentsContentsPtr, align 8
  %76 = load i64, i64* %i, align 8
  %77 = load i8**, i8*** %strings, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 %76
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @vector_pushBack(%struct.vector* %75, i8* %79)
  store i64 %80, i64* %status, align 8
  %81 = load i64, i64* %status, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

; <label>:83                                      ; preds = %65
  br label %86

; <label>:84                                      ; preds = %65
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 169, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %86

; <label>:86                                      ; preds = %85, %83
  br label %87

; <label>:87                                      ; preds = %86
  %88 = load i64, i64* %i, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %i, align 8
  br label %48

; <label>:90                                      ; preds = %48
  store i64 0, i64* %i, align 8
  %91 = load %struct.bitmap*, %struct.bitmap** %startBitmapPtr, align 8
  %92 = load i64, i64* %i, align 8
  %93 = call i64 @bitmap_isSet(%struct.bitmap* %91, i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %127, label %95

; <label>:95                                      ; preds = %90
  %96 = load i64, i64* %segmentLength, align 8
  %97 = add nsw i64 %96, 1
  %98 = mul i64 %97, 1
  %99 = call noalias i8* @malloc(i64 %98) #5
  store i8* %99, i8** %string, align 8
  %100 = load i64, i64* %segmentLength, align 8
  %101 = load i8*, i8** %string, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 %100
  store i8 0, i8* %102, align 1
  %103 = load i8*, i8** %string, align 8
  %104 = load i64, i64* %i, align 8
  %105 = load i8*, i8** %geneString, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 %104
  %107 = load i64, i64* %segmentLength, align 8
  %108 = mul i64 %107, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* %106, i64 %108, i32 1, i1 false)
  %109 = load %struct.vector*, %struct.vector** %segmentsContentsPtr, align 8
  %110 = load i8*, i8** %string, align 8
  %111 = call i64 @vector_pushBack(%struct.vector* %109, i8* %110)
  store i64 %111, i64* %status1, align 8
  %112 = load i64, i64* %status1, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

; <label>:114                                     ; preds = %95
  br label %117

; <label>:115                                     ; preds = %95
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 179, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %117

; <label>:117                                     ; preds = %116, %114
  %118 = load %struct.bitmap*, %struct.bitmap** %startBitmapPtr, align 8
  %119 = load i64, i64* %i, align 8
  %120 = call i64 @bitmap_set(%struct.bitmap* %118, i64 %119)
  store i64 %120, i64* %status1, align 8
  %121 = load i64, i64* %status1, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

; <label>:123                                     ; preds = %117
  br label %126

; <label>:124                                     ; preds = %117
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 181, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %126

; <label>:126                                     ; preds = %125, %123
  br label %127

; <label>:127                                     ; preds = %126, %90
  %128 = load i64, i64* %segmentLength, align 8
  %129 = sub nsw i64 %128, 1
  store i64 %129, i64* %maxZeroRunLength, align 8
  store i64 0, i64* %i, align 8
  br label %130

; <label>:130                                     ; preds = %202, %127
  %131 = load i64, i64* %i, align 8
  %132 = load i64, i64* %numStart, align 8
  %133 = icmp slt i64 %131, %132
  br i1 %133, label %134, label %205

; <label>:134                                     ; preds = %130
  %135 = load i64, i64* %i, align 8
  %136 = load i64, i64* %maxZeroRunLength, align 8
  %137 = add nsw i64 %135, %136
  store i64 %137, i64* %_a, align 8
  %138 = load i64, i64* %numStart, align 8
  store i64 %138, i64* %_b, align 8
  %139 = load i64, i64* %_a, align 8
  %140 = load i64, i64* %_b, align 8
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %142, label %144

; <label>:142                                     ; preds = %134
  %143 = load i64, i64* %_a, align 8
  br label %146

; <label>:144                                     ; preds = %134
  %145 = load i64, i64* %_b, align 8
  br label %146

; <label>:146                                     ; preds = %144, %142
  %147 = phi i64 [ %143, %142 ], [ %145, %144 ]
  store i64 %147, i64* %4, align 8
  %148 = load i64, i64* %4, align 8
  store i64 %148, i64* %i_stop, align 8
  br label %149

; <label>:149                                     ; preds = %160, %146
  %150 = load i64, i64* %i, align 8
  %151 = load i64, i64* %i_stop, align 8
  %152 = icmp slt i64 %150, %151
  br i1 %152, label %153, label %163

; <label>:153                                     ; preds = %149
  %154 = load %struct.bitmap*, %struct.bitmap** %startBitmapPtr, align 8
  %155 = load i64, i64* %i, align 8
  %156 = call i64 @bitmap_isSet(%struct.bitmap* %154, i64 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

; <label>:158                                     ; preds = %153
  br label %163

; <label>:159                                     ; preds = %153
  br label %160

; <label>:160                                     ; preds = %159
  %161 = load i64, i64* %i, align 8
  %162 = add nsw i64 %161, 1
  store i64 %162, i64* %i, align 8
  br label %149

; <label>:163                                     ; preds = %158, %149
  %164 = load i64, i64* %i, align 8
  %165 = load i64, i64* %i_stop, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %201

; <label>:167                                     ; preds = %163
  %168 = load i64, i64* %segmentLength, align 8
  %169 = add nsw i64 %168, 1
  %170 = mul i64 %169, 1
  %171 = call noalias i8* @malloc(i64 %170) #5
  store i8* %171, i8** %string2, align 8
  %172 = load i64, i64* %segmentLength, align 8
  %173 = load i8*, i8** %string2, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 %172
  store i8 0, i8* %174, align 1
  %175 = load i64, i64* %i, align 8
  %176 = sub nsw i64 %175, 1
  store i64 %176, i64* %i, align 8
  %177 = load i8*, i8** %string2, align 8
  %178 = load i64, i64* %i, align 8
  %179 = load i8*, i8** %geneString, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 %178
  %181 = load i64, i64* %segmentLength, align 8
  %182 = mul i64 %181, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %177, i8* %180, i64 %182, i32 1, i1 false)
  %183 = load %struct.vector*, %struct.vector** %segmentsContentsPtr, align 8
  %184 = load i8*, i8** %string2, align 8
  %185 = call i64 @vector_pushBack(%struct.vector* %183, i8* %184)
  store i64 %185, i64* %status3, align 8
  %186 = load i64, i64* %status3, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

; <label>:188                                     ; preds = %167
  br label %191

; <label>:189                                     ; preds = %167
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 200, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %191

; <label>:191                                     ; preds = %190, %188
  %192 = load %struct.bitmap*, %struct.bitmap** %startBitmapPtr, align 8
  %193 = load i64, i64* %i, align 8
  %194 = call i64 @bitmap_set(%struct.bitmap* %192, i64 %193)
  store i64 %194, i64* %status3, align 8
  %195 = load i64, i64* %status3, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

; <label>:197                                     ; preds = %191
  br label %200

; <label>:198                                     ; preds = %191
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 202, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %200

; <label>:200                                     ; preds = %199, %197
  br label %201

; <label>:201                                     ; preds = %200, %163
  br label %202

; <label>:202                                     ; preds = %201
  %203 = load i64, i64* %i, align 8
  %204 = add nsw i64 %203, 1
  store i64 %204, i64* %i, align 8
  br label %130

; <label>:205                                     ; preds = %130
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare i64 @random_generate(%struct.random*) #2

declare i64 @bitmap_set(%struct.bitmap*, i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i64 @vector_pushBack(%struct.vector*, i8*) #2

declare i64 @bitmap_isSet(%struct.bitmap*, i64) #2

; Function Attrs: nounwind uwtable
define void @segments_free(%struct.segments* %segmentsPtr) #0 {
  %1 = alloca %struct.segments*, align 8
  store %struct.segments* %segmentsPtr, %struct.segments** %1, align 8
  %2 = load %struct.segments*, %struct.segments** %1, align 8
  %3 = getelementptr inbounds %struct.segments, %struct.segments* %2, i32 0, i32 2
  %4 = load %struct.vector*, %struct.vector** %3, align 8
  %5 = call i8* @vector_at(%struct.vector* %4, i64 0)
  call void @free(i8* %5) #5
  %6 = load %struct.segments*, %struct.segments** %1, align 8
  %7 = getelementptr inbounds %struct.segments, %struct.segments* %6, i32 0, i32 2
  %8 = load %struct.vector*, %struct.vector** %7, align 8
  call void @vector_free(%struct.vector* %8)
  %9 = load %struct.segments*, %struct.segments** %1, align 8
  %10 = getelementptr inbounds %struct.segments, %struct.segments* %9, i32 0, i32 3
  %11 = load i8**, i8*** %10, align 8
  %12 = bitcast i8** %11 to i8*
  call void @free(i8* %12) #5
  %13 = load %struct.segments*, %struct.segments** %1, align 8
  %14 = bitcast %struct.segments* %13 to i8*
  call void @free(i8* %14) #5
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

declare i8* @vector_at(%struct.vector*, i64) #2

declare void @vector_free(%struct.vector*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
