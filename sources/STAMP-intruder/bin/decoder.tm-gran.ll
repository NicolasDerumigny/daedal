; ModuleID = '../bin/decoder.marked.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoder = type { %struct.rbtree*, %struct.queue* }
%struct.rbtree = type opaque
%struct.queue = type opaque
%struct.list_node = type { i8*, %struct.list_node* }
%struct.packet = type { i64, i64, i64, i64, [0 x i8] }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.decoded = type { i64, i8* }

@.str = private unnamed_addr constant [29 x i8] c"decoderPtr->fragmentedMapPtr\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"decoder.c\00", align 1
@__PRETTY_FUNCTION__.decoder_alloc = private unnamed_addr constant [27 x i8] c"decoder_t *decoder_alloc()\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"decoderPtr->decodedQueuePtr\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fragmentListPtr\00", align 1
@__PRETTY_FUNCTION__.decoder_process = private unnamed_addr constant [51 x i8] c"error_t decoder_process(decoder_t *, char *, long)\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"list_iter_hasNext(&it, fragmentListPtr)\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"fragmentPtr->flowId == flowId\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"dst == data + numByte\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"decodedPtr\00", align 1
@__PRETTY_FUNCTION__.TMdecoder_process = private unnamed_addr constant [53 x i8] c"error_t TMdecoder_process(decoder_t *, char *, long)\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"TMLIST_ITER_HASNEXT(&it, fragmentListPtr)\00", align 1

; Function Attrs: nounwind uwtable
define %struct.decoder* @decoder_alloc() #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call noalias i8* @malloc(i64 16) #6
  %2 = bitcast i8* %1 to %struct.decoder*
  %3 = icmp ne %struct.decoder* %2, null
  br i1 %3, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %23

; <label>:4                                       ; preds = %0
  %5 = call %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)* null)
  %6 = getelementptr inbounds %struct.decoder, %struct.decoder* %2, i32 0, i32 0
  store %struct.rbtree* %5, %struct.rbtree** %6, align 8
  %7 = getelementptr inbounds %struct.decoder, %struct.decoder* %2, i32 0, i32 0
  %8 = load %struct.rbtree*, %struct.rbtree** %7, align 8
  %9 = icmp ne %struct.rbtree* %8, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %4
  br label %13

; <label>:11                                      ; preds = %4
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.decoder_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %12, %10
  %14 = call %struct.queue* @queue_alloc(i64 1024)
  %15 = getelementptr inbounds %struct.decoder, %struct.decoder* %2, i32 0, i32 1
  store %struct.queue* %14, %struct.queue** %15, align 8
  %16 = getelementptr inbounds %struct.decoder, %struct.decoder* %2, i32 0, i32 1
  %17 = load %struct.queue*, %struct.queue** %16, align 8
  %18 = icmp ne %struct.queue* %17, null
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %13
  br label %22

; <label>:20                                      ; preds = %13
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 109, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.decoder_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %22

; <label>:22                                      ; preds = %21, %19
  br label %23

; <label>:23                                      ; preds = %._crit_edge, %22
  ret %struct.decoder* %2
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)*) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare %struct.queue* @queue_alloc(i64) #2

; Function Attrs: nounwind uwtable
define void @decoder_free(%struct.decoder* %decoderPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i32 0, i32 1
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  call void @queue_free(%struct.queue* %2)
  %3 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i32 0, i32 0
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  call void @rbtree_free(%struct.rbtree* %4)
  %5 = bitcast %struct.decoder* %decoderPtr to i8*
  call void @free(i8* %5) #6
  ret void
}

declare void @queue_free(%struct.queue*) #2

declare void @rbtree_free(%struct.rbtree*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @decoder_process(%struct.decoder* %decoderPtr, i8* %bytes, i64 %numByte) #0 {
  %it = alloca %struct.list_node*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = icmp ult i64 %numByte, 32
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  br label %203

; <label>:3                                       ; preds = %0
  %4 = bitcast i8* %bytes to %struct.packet*
  %5 = getelementptr inbounds %struct.packet, %struct.packet* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %struct.packet, %struct.packet* %4, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.packet, %struct.packet* %4, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.packet, %struct.packet* %4, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %6, 0
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %3
  br label %203

; <label>:15                                      ; preds = %3
  %16 = icmp slt i64 %8, 0
  br i1 %16, label %._crit_edge, label %17

._crit_edge:                                      ; preds = %15
  br label %19

; <label>:17                                      ; preds = %15
  %18 = icmp sge i64 %8, %10
  br i1 %18, label %._crit_edge1, label %20

._crit_edge1:                                     ; preds = %17
  br label %19

; <label>:19                                      ; preds = %._crit_edge1, %._crit_edge
  br label %203

; <label>:20                                      ; preds = %17
  %21 = icmp slt i64 %12, 0
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %20
  br label %203

; <label>:23                                      ; preds = %20
  %24 = icmp sgt i64 %10, 1
  br i1 %24, label %25, label %170

; <label>:25                                      ; preds = %23
  %26 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i32 0, i32 0
  %27 = load %struct.rbtree*, %struct.rbtree** %26, align 8
  %28 = inttoptr i64 %6 to i8*
  %29 = call i8* @rbtree_get(%struct.rbtree* %27, i8* %28)
  %30 = bitcast i8* %29 to %struct.list*
  %31 = icmp eq %struct.list* %30, null
  br i1 %31, label %32, label %54

; <label>:32                                      ; preds = %25
  %33 = call %struct.list* @list_alloc(i64 (i8*, i8*)* @packet_compareFragmentId)
  %34 = icmp ne %struct.list* %33, null
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %32
  br label %38

; <label>:36                                      ; preds = %32
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 186, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %38

; <label>:38                                      ; preds = %37, %35
  %39 = bitcast %struct.packet* %4 to i8*
  %40 = call i64 @list_insert(%struct.list* %33, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %38
  br label %45

; <label>:43                                      ; preds = %38
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 188, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %45

; <label>:45                                      ; preds = %44, %42
  %46 = inttoptr i64 %6 to i8*
  %47 = bitcast %struct.list* %33 to i8*
  %48 = call i64 @rbtree_insert(%struct.rbtree* %27, i8* %46, i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %45
  br label %53

; <label>:51                                      ; preds = %45
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 192, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %53

; <label>:53                                      ; preds = %52, %50
  br label %169

; <label>:54                                      ; preds = %25
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %30)
  %55 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %30) #8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

; <label>:57                                      ; preds = %54
  br label %60

; <label>:58                                      ; preds = %54
  call void @__assert_fail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 198, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %60

; <label>:60                                      ; preds = %59, %57
  %61 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %30)
  %62 = bitcast i8* %61 to %struct.packet*
  %63 = getelementptr inbounds %struct.packet, %struct.packet* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %10, %64
  br i1 %65, label %66, label %74

; <label>:66                                      ; preds = %60
  %67 = inttoptr i64 %6 to i8*
  %68 = call i64 @rbtree_delete(%struct.rbtree* %27, i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

; <label>:70                                      ; preds = %66
  br label %73

; <label>:71                                      ; preds = %66
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 205, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %73

; <label>:73                                      ; preds = %72, %70
  br label %203

; <label>:74                                      ; preds = %60
  %75 = bitcast %struct.packet* %4 to i8*
  %76 = call i64 @list_insert(%struct.list* %30, i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

; <label>:78                                      ; preds = %74
  br label %81

; <label>:79                                      ; preds = %74
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 210, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %81

; <label>:81                                      ; preds = %80, %78
  %82 = call i64 @list_getSize(%struct.list* %30)
  %83 = icmp eq i64 %82, %10
  br i1 %83, label %84, label %._crit_edge2

._crit_edge2:                                     ; preds = %81
  br label %168

; <label>:84                                      ; preds = %81
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %30)
  br label %85

; <label>:85                                      ; preds = %109, %84
  %numByte1.0 = phi i64 [ 0, %84 ], [ %112, %109 ]
  %i.0 = phi i64 [ 0, %84 ], [ %113, %109 ]
  %86 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %30) #8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %114

; <label>:88                                      ; preds = %85
  %89 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %30)
  %90 = bitcast i8* %89 to %struct.packet*
  %91 = getelementptr inbounds %struct.packet, %struct.packet* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, %6
  br i1 %93, label %94, label %95

; <label>:94                                      ; preds = %88
  br label %97

; <label>:95                                      ; preds = %88
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 224, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:97                                      ; preds = %94
  %98 = getelementptr inbounds %struct.packet, %struct.packet* %90, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, %i.0
  br i1 %100, label %101, label %109

; <label>:101                                     ; preds = %97
  %102 = inttoptr i64 %6 to i8*
  %103 = call i64 @rbtree_delete(%struct.rbtree* %27, i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

; <label>:105                                     ; preds = %101
  br label %108

; <label>:106                                     ; preds = %101
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 227, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %108

; <label>:108                                     ; preds = %107, %105
  br label %203

; <label>:109                                     ; preds = %97
  %110 = getelementptr inbounds %struct.packet, %struct.packet* %90, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %numByte1.0, %111
  %113 = add nsw i64 %i.0, 1
  br label %85

; <label>:114                                     ; preds = %85
  %115 = add nsw i64 %numByte1.0, 1
  %116 = call noalias i8* @malloc(i64 %115) #6
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %119

; <label>:118                                     ; preds = %114
  br label %121

; <label>:119                                     ; preds = %114
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 235, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %121

; <label>:121                                     ; preds = %120, %118
  %122 = getelementptr inbounds i8, i8* %116, i64 %numByte1.0
  store i8 0, i8* %122, align 1
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %30)
  br label %123

; <label>:123                                     ; preds = %126, %121
  %dst.0 = phi i8* [ %116, %121 ], [ %135, %126 ]
  %124 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %30) #8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %136

; <label>:126                                     ; preds = %123
  %127 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %30)
  %128 = bitcast i8* %127 to %struct.packet*
  %129 = getelementptr inbounds %struct.packet, %struct.packet* %128, i32 0, i32 4
  %130 = getelementptr inbounds [0 x i8], [0 x i8]* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.packet, %struct.packet* %128, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %dst.0, i8* %130, i64 %132, i32 1, i1 false)
  %133 = getelementptr inbounds %struct.packet, %struct.packet* %128, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds i8, i8* %dst.0, i64 %134
  br label %123

; <label>:136                                     ; preds = %123
  %137 = getelementptr inbounds i8, i8* %116, i64 %numByte1.0
  %138 = icmp eq i8* %dst.0, %137
  br i1 %138, label %139, label %140

; <label>:139                                     ; preds = %136
  br label %142

; <label>:140                                     ; preds = %136
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 245, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %142

; <label>:142                                     ; preds = %141, %139
  %143 = call noalias i8* @malloc(i64 16) #6
  %144 = bitcast i8* %143 to %struct.decoded*
  %145 = icmp ne %struct.decoded* %144, null
  br i1 %145, label %146, label %147

; <label>:146                                     ; preds = %142
  br label %149

; <label>:147                                     ; preds = %142
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 248, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %149

; <label>:149                                     ; preds = %148, %146
  %150 = getelementptr inbounds %struct.decoded, %struct.decoded* %144, i32 0, i32 0
  store i64 %6, i64* %150, align 8
  %151 = getelementptr inbounds %struct.decoded, %struct.decoded* %144, i32 0, i32 1
  store i8* %116, i8** %151, align 8
  %152 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i32 0, i32 1
  %153 = load %struct.queue*, %struct.queue** %152, align 8
  %154 = bitcast %struct.decoded* %144 to i8*
  %155 = call i64 @queue_push(%struct.queue* %153, i8* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

; <label>:157                                     ; preds = %149
  br label %160

; <label>:158                                     ; preds = %149
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 254, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %160

; <label>:160                                     ; preds = %159, %157
  call void @list_free(%struct.list* %30)
  %161 = inttoptr i64 %6 to i8*
  %162 = call i64 @rbtree_delete(%struct.rbtree* %27, i8* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

; <label>:164                                     ; preds = %160
  br label %167

; <label>:165                                     ; preds = %160
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 258, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %167

; <label>:167                                     ; preds = %166, %164
  br label %168

; <label>:168                                     ; preds = %._crit_edge2, %167
  br label %169

; <label>:169                                     ; preds = %168, %53
  br label %202

; <label>:170                                     ; preds = %23
  %171 = icmp ne i64 %8, 0
  br i1 %171, label %172, label %173

; <label>:172                                     ; preds = %170
  br label %203

; <label>:173                                     ; preds = %170
  %174 = add nsw i64 %12, 1
  %175 = call noalias i8* @malloc(i64 %174) #6
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %178

; <label>:177                                     ; preds = %173
  br label %180

; <label>:178                                     ; preds = %173
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 274, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %180

; <label>:180                                     ; preds = %179, %177
  %181 = getelementptr inbounds i8, i8* %175, i64 %12
  store i8 0, i8* %181, align 1
  %182 = getelementptr inbounds %struct.packet, %struct.packet* %4, i32 0, i32 4
  %183 = getelementptr inbounds [0 x i8], [0 x i8]* %182, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %175, i8* %183, i64 %12, i32 1, i1 false)
  %184 = call noalias i8* @malloc(i64 16) #6
  %185 = bitcast i8* %184 to %struct.decoded*
  %186 = icmp ne %struct.decoded* %185, null
  br i1 %186, label %187, label %188

; <label>:187                                     ; preds = %180
  br label %190

; <label>:188                                     ; preds = %180
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 279, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %190

; <label>:190                                     ; preds = %189, %187
  %191 = getelementptr inbounds %struct.decoded, %struct.decoded* %185, i32 0, i32 0
  store i64 %6, i64* %191, align 8
  %192 = getelementptr inbounds %struct.decoded, %struct.decoded* %185, i32 0, i32 1
  store i8* %175, i8** %192, align 8
  %193 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i32 0, i32 1
  %194 = load %struct.queue*, %struct.queue** %193, align 8
  %195 = bitcast %struct.decoded* %185 to i8*
  %196 = call i64 @queue_push(%struct.queue* %194, i8* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %199

; <label>:198                                     ; preds = %190
  br label %201

; <label>:199                                     ; preds = %190
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 285, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %201

; <label>:201                                     ; preds = %200, %198
  br label %202

; <label>:202                                     ; preds = %201, %169
  br label %203

; <label>:203                                     ; preds = %202, %172, %108, %73, %22, %19, %14, %2
  %.0 = phi i32 [ 1, %2 ], [ 2, %14 ], [ 3, %19 ], [ 4, %22 ], [ 0, %202 ], [ 5, %73 ], [ 6, %108 ], [ 3, %172 ]
  ret i32 %.0
}

declare i8* @rbtree_get(%struct.rbtree*, i8*) #2

declare %struct.list* @list_alloc(i64 (i8*, i8*)*) #2

declare i64 @packet_compareFragmentId(i8*, i8*) #2

declare i64 @list_insert(%struct.list*, i8*) #2

declare i64 @rbtree_insert(%struct.rbtree*, i8*, i8*) #2

declare void @list_iter_reset(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind readonly
declare i64 @list_iter_hasNext(%struct.list_node**, %struct.list*) #4

declare i8* @list_iter_next(%struct.list_node**, %struct.list*) #2

declare i64 @rbtree_delete(%struct.rbtree*, i8*) #2

declare i64 @list_getSize(%struct.list*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i64 @queue_push(%struct.queue*, i8*) #2

declare void @list_free(%struct.list*) #2

; Function Attrs: nounwind uwtable
define i32 @TMdecoder_process(%struct.decoder* %decoderPtr, i8* %bytes, i64 %numByte) #0 {
  %it = alloca %struct.list_node*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = icmp ult i64 %numByte, 32
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  br label %201

; <label>:3                                       ; preds = %0
  %4 = bitcast i8* %bytes to %struct.packet*
  %5 = getelementptr inbounds %struct.packet, %struct.packet* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %struct.packet, %struct.packet* %4, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.packet, %struct.packet* %4, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.packet, %struct.packet* %4, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %6, 0
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %3
  br label %201

; <label>:15                                      ; preds = %3
  %16 = icmp slt i64 %8, 0
  br i1 %16, label %._crit_edge, label %17

._crit_edge:                                      ; preds = %15
  br label %19

; <label>:17                                      ; preds = %15
  %18 = icmp sge i64 %8, %10
  br i1 %18, label %._crit_edge1, label %20

._crit_edge1:                                     ; preds = %17
  br label %19

; <label>:19                                      ; preds = %._crit_edge1, %._crit_edge
  br label %201

; <label>:20                                      ; preds = %17
  %21 = icmp slt i64 %12, 0
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %20
  br label %201

; <label>:23                                      ; preds = %20
  %24 = icmp sgt i64 %10, 1
  br i1 %24, label %25, label %168

; <label>:25                                      ; preds = %23
  %26 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i32 0, i32 0
  %27 = load %struct.rbtree*, %struct.rbtree** %26, align 8
  %28 = inttoptr i64 %6 to i8*
  %29 = call i8* @TMrbtree_get(%struct.rbtree* %27, i8* %28)
  %30 = bitcast i8* %29 to %struct.list*
  %31 = icmp eq %struct.list* %30, null
  br i1 %31, label %32, label %54

; <label>:32                                      ; preds = %25
  %33 = call %struct.list* @TMlist_alloc(i64 (i8*, i8*)* @packet_compareFragmentId)
  %34 = icmp ne %struct.list* %33, null
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %32
  br label %38

; <label>:36                                      ; preds = %32
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 350, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %38

; <label>:38                                      ; preds = %37, %35
  %39 = bitcast %struct.packet* %4 to i8*
  %40 = call i64 @TMlist_insert(%struct.list* %33, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %38
  br label %45

; <label>:43                                      ; preds = %38
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 352, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %45

; <label>:45                                      ; preds = %44, %42
  %46 = inttoptr i64 %6 to i8*
  %47 = bitcast %struct.list* %33 to i8*
  %48 = call i64 @TMrbtree_insert(%struct.rbtree* %27, i8* %46, i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %45
  br label %53

; <label>:51                                      ; preds = %45
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 356, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %53

; <label>:53                                      ; preds = %52, %50
  br label %167

; <label>:54                                      ; preds = %25
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %30)
  %55 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %30) #8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

; <label>:57                                      ; preds = %54
  br label %60

; <label>:58                                      ; preds = %54
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 362, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %60

; <label>:60                                      ; preds = %59, %57
  %61 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %30)
  %62 = bitcast i8* %61 to %struct.packet*
  %63 = getelementptr inbounds %struct.packet, %struct.packet* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %10, %64
  br i1 %65, label %66, label %74

; <label>:66                                      ; preds = %60
  %67 = inttoptr i64 %6 to i8*
  %68 = call i64 @TMrbtree_delete(%struct.rbtree* %27, i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

; <label>:70                                      ; preds = %66
  br label %73

; <label>:71                                      ; preds = %66
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 369, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %73

; <label>:73                                      ; preds = %72, %70
  br label %201

; <label>:74                                      ; preds = %60
  %75 = bitcast %struct.packet* %4 to i8*
  %76 = call i64 @TMlist_insert(%struct.list* %30, i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

; <label>:78                                      ; preds = %74
  br label %81

; <label>:79                                      ; preds = %74
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 374, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %81

; <label>:81                                      ; preds = %80, %78
  %82 = call i64 @TMlist_getSize(%struct.list* %30)
  %83 = icmp eq i64 %82, %10
  br i1 %83, label %84, label %._crit_edge2

._crit_edge2:                                     ; preds = %81
  br label %166

; <label>:84                                      ; preds = %81
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %30)
  br label %__kernel__TMdecoder_process1

__kernel__TMdecoder_process1:                     ; preds = %108, %84
  %numByte1.0 = phi i64 [ 0, %84 ], [ %111, %108 ]
  %i.0 = phi i64 [ 0, %84 ], [ %112, %108 ]
  %85 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %30) #8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %113

; <label>:87                                      ; preds = %__kernel__TMdecoder_process1
  %88 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %30)
  %89 = bitcast i8* %88 to %struct.packet*
  %90 = getelementptr inbounds %struct.packet, %struct.packet* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, %6
  br i1 %92, label %93, label %94

; <label>:93                                      ; preds = %87
  br label %96

; <label>:94                                      ; preds = %87
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 389, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:96                                      ; preds = %93
  %97 = getelementptr inbounds %struct.packet, %struct.packet* %89, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, %i.0
  br i1 %99, label %100, label %108

; <label>:100                                     ; preds = %96
  %101 = inttoptr i64 %6 to i8*
  %102 = call i64 @TMrbtree_delete(%struct.rbtree* %27, i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

; <label>:104                                     ; preds = %100
  br label %107

; <label>:105                                     ; preds = %100
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 392, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %107

; <label>:107                                     ; preds = %106, %104
  br label %201

; <label>:108                                     ; preds = %96
  %109 = getelementptr inbounds %struct.packet, %struct.packet* %89, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %numByte1.0, %110
  %112 = add nsw i64 %i.0, 1
  br label %__kernel__TMdecoder_process1, !llvm.loop !1

; <label>:113                                     ; preds = %__kernel__TMdecoder_process1
  %114 = add nsw i64 %numByte1.0, 1
  %115 = call noalias i8* @malloc(i64 %114) #6
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %118

; <label>:117                                     ; preds = %113
  br label %120

; <label>:118                                     ; preds = %113
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 400, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %120

; <label>:120                                     ; preds = %119, %117
  %121 = getelementptr inbounds i8, i8* %115, i64 %numByte1.0
  store i8 0, i8* %121, align 1
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %30)
  br label %__kernel__TMdecoder_process0

__kernel__TMdecoder_process0:                     ; preds = %124, %120
  %dst.0 = phi i8* [ %115, %120 ], [ %133, %124 ]
  %122 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %30) #8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %134

; <label>:124                                     ; preds = %__kernel__TMdecoder_process0
  %125 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %30)
  %126 = bitcast i8* %125 to %struct.packet*
  %127 = getelementptr inbounds %struct.packet, %struct.packet* %126, i32 0, i32 4
  %128 = getelementptr inbounds [0 x i8], [0 x i8]* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.packet, %struct.packet* %126, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %dst.0, i8* %128, i64 %130, i32 1, i1 false)
  %131 = getelementptr inbounds %struct.packet, %struct.packet* %126, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i8, i8* %dst.0, i64 %132
  br label %__kernel__TMdecoder_process0, !llvm.loop !3

; <label>:134                                     ; preds = %__kernel__TMdecoder_process0
  %135 = getelementptr inbounds i8, i8* %115, i64 %numByte1.0
  %136 = icmp eq i8* %dst.0, %135
  br i1 %136, label %137, label %138

; <label>:137                                     ; preds = %134
  br label %140

; <label>:138                                     ; preds = %134
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 411, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %140

; <label>:140                                     ; preds = %139, %137
  %141 = call noalias i8* @malloc(i64 16) #6
  %142 = bitcast i8* %141 to %struct.decoded*
  %143 = icmp ne %struct.decoded* %142, null
  br i1 %143, label %144, label %145

; <label>:144                                     ; preds = %140
  br label %147

; <label>:145                                     ; preds = %140
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 414, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %147

; <label>:147                                     ; preds = %146, %144
  %148 = getelementptr inbounds %struct.decoded, %struct.decoded* %142, i32 0, i32 0
  store i64 %6, i64* %148, align 8
  %149 = getelementptr inbounds %struct.decoded, %struct.decoded* %142, i32 0, i32 1
  store i8* %115, i8** %149, align 8
  %150 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i32 0, i32 1
  %151 = load %struct.queue*, %struct.queue** %150, align 8
  %152 = bitcast %struct.decoded* %142 to i8*
  %153 = call i64 @TMqueue_push(%struct.queue* %151, i8* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

; <label>:155                                     ; preds = %147
  br label %158

; <label>:156                                     ; preds = %147
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 420, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %158

; <label>:158                                     ; preds = %157, %155
  call void @TMlist_free(%struct.list* %30)
  %159 = inttoptr i64 %6 to i8*
  %160 = call i64 @TMrbtree_delete(%struct.rbtree* %27, i8* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

; <label>:162                                     ; preds = %158
  br label %165

; <label>:163                                     ; preds = %158
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 424, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %165

; <label>:165                                     ; preds = %164, %162
  br label %166

; <label>:166                                     ; preds = %._crit_edge2, %165
  br label %167

; <label>:167                                     ; preds = %166, %53
  br label %200

; <label>:168                                     ; preds = %23
  %169 = icmp ne i64 %8, 0
  br i1 %169, label %170, label %171

; <label>:170                                     ; preds = %168
  br label %201

; <label>:171                                     ; preds = %168
  %172 = add nsw i64 %12, 1
  %173 = call noalias i8* @malloc(i64 %172) #6
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %176

; <label>:175                                     ; preds = %171
  br label %178

; <label>:176                                     ; preds = %171
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 440, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %178

; <label>:178                                     ; preds = %177, %175
  %179 = getelementptr inbounds i8, i8* %173, i64 %12
  store i8 0, i8* %179, align 1
  %180 = getelementptr inbounds %struct.packet, %struct.packet* %4, i32 0, i32 4
  %181 = getelementptr inbounds [0 x i8], [0 x i8]* %180, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %173, i8* %181, i64 %12, i32 1, i1 false)
  %182 = call noalias i8* @malloc(i64 16) #6
  %183 = bitcast i8* %182 to %struct.decoded*
  %184 = icmp ne %struct.decoded* %183, null
  br i1 %184, label %185, label %186

; <label>:185                                     ; preds = %178
  br label %188

; <label>:186                                     ; preds = %178
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 445, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %188

; <label>:188                                     ; preds = %187, %185
  %189 = getelementptr inbounds %struct.decoded, %struct.decoded* %183, i32 0, i32 0
  store i64 %6, i64* %189, align 8
  %190 = getelementptr inbounds %struct.decoded, %struct.decoded* %183, i32 0, i32 1
  store i8* %173, i8** %190, align 8
  %191 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i32 0, i32 1
  %192 = load %struct.queue*, %struct.queue** %191, align 8
  %193 = bitcast %struct.decoded* %183 to i8*
  %194 = call i64 @TMqueue_push(%struct.queue* %192, i8* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

; <label>:196                                     ; preds = %188
  br label %199

; <label>:197                                     ; preds = %188
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 451, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %199

; <label>:199                                     ; preds = %198, %196
  br label %200

; <label>:200                                     ; preds = %199, %167
  br label %201

; <label>:201                                     ; preds = %200, %170, %107, %73, %22, %19, %14, %2
  %.0 = phi i32 [ 1, %2 ], [ 2, %14 ], [ 3, %19 ], [ 4, %22 ], [ 0, %200 ], [ 5, %73 ], [ 6, %107 ], [ 3, %170 ]
  ret i32 %.0
}

declare i8* @TMrbtree_get(%struct.rbtree*, i8*) #2

declare %struct.list* @TMlist_alloc(i64 (i8*, i8*)*) #2

declare i64 @TMlist_insert(%struct.list*, i8*) #2

declare i64 @TMrbtree_insert(%struct.rbtree*, i8*, i8*) #2

declare void @TMlist_iter_reset(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind readonly
declare i64 @TMlist_iter_hasNext(%struct.list_node**, %struct.list*) #4

declare i8* @TMlist_iter_next(%struct.list_node**, %struct.list*) #2

declare i64 @TMrbtree_delete(%struct.rbtree*, i8*) #2

declare i64 @TMlist_getSize(%struct.list*) #2

declare i64 @TMqueue_push(%struct.queue*, i8*) #2

declare void @TMlist_free(%struct.list*) #2

; Function Attrs: nounwind uwtable
define i8* @decoder_getComplete(%struct.decoder* %decoderPtr, i64* %decodedFlowIdPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i32 0, i32 1
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  %3 = call i8* @queue_pop(%struct.queue* %2)
  %4 = bitcast i8* %3 to %struct.decoded*
  %5 = icmp ne %struct.decoded* %4, null
  br i1 %5, label %6, label %12

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct.decoded, %struct.decoded* %4, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %decodedFlowIdPtr, align 8
  %9 = getelementptr inbounds %struct.decoded, %struct.decoded* %4, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = bitcast %struct.decoded* %4 to i8*
  call void @free(i8* %11) #6
  br label %13

; <label>:12                                      ; preds = %0
  store i64 -1, i64* %decodedFlowIdPtr, align 8
  br label %13

; <label>:13                                      ; preds = %12, %6
  %data.0 = phi i8* [ %10, %6 ], [ null, %12 ]
  ret i8* %data.0
}

declare i8* @queue_pop(%struct.queue*) #2

; Function Attrs: nounwind uwtable
define i8* @TMdecoder_getComplete(%struct.decoder* %decoderPtr, i64* %decodedFlowIdPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i32 0, i32 1
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  %3 = call i8* @TMqueue_pop(%struct.queue* %2)
  %4 = bitcast i8* %3 to %struct.decoded*
  %5 = icmp ne %struct.decoded* %4, null
  br i1 %5, label %6, label %12

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct.decoded, %struct.decoded* %4, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %decodedFlowIdPtr, align 8
  %9 = getelementptr inbounds %struct.decoded, %struct.decoded* %4, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = bitcast %struct.decoded* %4 to i8*
  call void @free(i8* %11) #6
  br label %13

; <label>:12                                      ; preds = %0
  store i64 -1, i64* %decodedFlowIdPtr, align 8
  br label %13

; <label>:13                                      ; preds = %12, %6
  %data.0 = phi i8* [ %10, %6 ], [ null, %12 ]
  ret i8* %data.0
}

declare i8* @TMqueue_pop(%struct.queue*) #2

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
!1 = distinct !{!1, !2}
!2 = !{!"llvm.loop.vectorize.width", i32 1337}
!3 = distinct !{!3, !2}
