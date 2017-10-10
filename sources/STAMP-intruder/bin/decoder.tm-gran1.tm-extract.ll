; ModuleID = '../bin/decoder.tm-gran.ll'
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
  %1 = call noalias i8* @malloc(i64 16) #7
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
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.decoder_alloc, i32 0, i32 0)) #8
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
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 109, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.decoder_alloc, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %22

; <label>:22                                      ; preds = %21, %19
  br label %23

; <label>:23                                      ; preds = %22, %._crit_edge
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
  call void @free(i8* %5) #7
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
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 186, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #8
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
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 188, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #8
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
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 192, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %53

; <label>:53                                      ; preds = %52, %50
  br label %169

; <label>:54                                      ; preds = %25
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %30)
  %55 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %30) #9
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

; <label>:57                                      ; preds = %54
  br label %60

; <label>:58                                      ; preds = %54
  call void @__assert_fail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 198, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #8
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
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 205, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #8
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
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 210, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #8
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
  %86 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %30) #9
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
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 224, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #8
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
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 227, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #8
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
  %116 = call noalias i8* @malloc(i64 %115) #7
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %119

; <label>:118                                     ; preds = %114
  br label %121

; <label>:119                                     ; preds = %114
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 235, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #8
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
  %124 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %30) #9
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
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 245, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %142

; <label>:142                                     ; preds = %141, %139
  %143 = call noalias i8* @malloc(i64 16) #7
  %144 = bitcast i8* %143 to %struct.decoded*
  %145 = icmp ne %struct.decoded* %144, null
  br i1 %145, label %146, label %147

; <label>:146                                     ; preds = %142
  br label %149

; <label>:147                                     ; preds = %142
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 248, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #8
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
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 254, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #8
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
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 258, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %167

; <label>:167                                     ; preds = %166, %164
  br label %168

; <label>:168                                     ; preds = %167, %._crit_edge2
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
  %175 = call noalias i8* @malloc(i64 %174) #7
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %178

; <label>:177                                     ; preds = %173
  br label %180

; <label>:178                                     ; preds = %173
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 274, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %180

; <label>:180                                     ; preds = %179, %177
  %181 = getelementptr inbounds i8, i8* %175, i64 %12
  store i8 0, i8* %181, align 1
  %182 = getelementptr inbounds %struct.packet, %struct.packet* %4, i32 0, i32 4
  %183 = getelementptr inbounds [0 x i8], [0 x i8]* %182, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %175, i8* %183, i64 %12, i32 1, i1 false)
  %184 = call noalias i8* @malloc(i64 16) #7
  %185 = bitcast i8* %184 to %struct.decoded*
  %186 = icmp ne %struct.decoded* %185, null
  br i1 %186, label %187, label %188

; <label>:187                                     ; preds = %180
  br label %190

; <label>:188                                     ; preds = %180
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 279, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #8
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
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 285, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #8
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
  %structArg3 = alloca { %struct.list_node**, %struct.list*, i64, i64 }
  %structArg = alloca { i8*, %struct.list_node**, %struct.list*, i8* }
  %it = alloca %struct.list_node*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = icmp ult i64 %numByte, 32
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  br label %171

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
  br label %171

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
  br label %171

; <label>:20                                      ; preds = %17
  %21 = icmp slt i64 %12, 0
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %20
  br label %171

; <label>:23                                      ; preds = %20
  %24 = icmp sgt i64 %10, 1
  br i1 %24, label %25, label %138

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
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 350, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #8
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
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 352, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #8
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
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 356, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %53

; <label>:53                                      ; preds = %52, %50
  br label %137

; <label>:54                                      ; preds = %25
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %30)
  %55 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %30) #9
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

; <label>:57                                      ; preds = %54
  br label %60

; <label>:58                                      ; preds = %54
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 362, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #8
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
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 369, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %73

; <label>:73                                      ; preds = %72, %70
  br label %171

; <label>:74                                      ; preds = %60
  %75 = bitcast %struct.packet* %4 to i8*
  %76 = call i64 @TMlist_insert(%struct.list* %30, i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

; <label>:78                                      ; preds = %74
  br label %81

; <label>:79                                      ; preds = %74
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 374, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %81

; <label>:81                                      ; preds = %80, %78
  %82 = call i64 @TMlist_getSize(%struct.list* %30)
  %83 = icmp eq i64 %82, %10
  br i1 %83, label %84, label %._crit_edge2

._crit_edge2:                                     ; preds = %81
  br label %136

; <label>:84                                      ; preds = %81
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %30)
  br label %codeRepl2

codeRepl2:                                        ; preds = %84
  %gep_it4 = getelementptr { %struct.list_node**, %struct.list*, i64, i64 }, { %struct.list_node**, %struct.list*, i64, i64 }* %structArg3, i32 0, i32 0
  store %struct.list_node** %it, %struct.list_node*** %gep_it4
  %gep_5 = getelementptr { %struct.list_node**, %struct.list*, i64, i64 }, { %struct.list_node**, %struct.list*, i64, i64 }* %structArg3, i32 0, i32 1
  store %struct.list* %30, %struct.list** %gep_5
  %gep_6 = getelementptr { %struct.list_node**, %struct.list*, i64, i64 }, { %struct.list_node**, %struct.list*, i64, i64 }* %structArg3, i32 0, i32 2
  store i64 %6, i64* %gep_6
  %targetBlock = call i16 @TMdecoder_process___kernel__TMdecoder_process1({ %struct.list_node**, %struct.list*, i64, i64 }* %structArg3)
  %gep_reload_numByte1.0 = getelementptr { %struct.list_node**, %struct.list*, i64, i64 }, { %struct.list_node**, %struct.list*, i64, i64 }* %structArg3, i32 0, i32 3
  %numByte1.0.reload = load i64, i64* %gep_reload_numByte1.0
  switch i16 %targetBlock, label %87 [
    i16 0, label %95
    i16 1, label %85
  ]

; <label>:85                                      ; preds = %codeRepl2
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 389, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:87                                      ; preds = %codeRepl2
  %88 = inttoptr i64 %6 to i8*
  %89 = call i64 @TMrbtree_delete(%struct.rbtree* %27, i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

; <label>:91                                      ; preds = %87
  br label %94

; <label>:92                                      ; preds = %87
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 392, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %94

; <label>:94                                      ; preds = %93, %91
  br label %171

; <label>:95                                      ; preds = %codeRepl2
  %96 = add nsw i64 %numByte1.0.reload, 1
  %97 = call noalias i8* @malloc(i64 %96) #7
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %100

; <label>:99                                      ; preds = %95
  br label %102

; <label>:100                                     ; preds = %95
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 400, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %102

; <label>:102                                     ; preds = %101, %99
  %103 = getelementptr inbounds i8, i8* %97, i64 %numByte1.0.reload
  store i8 0, i8* %103, align 1
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %30)
  br label %codeRepl

codeRepl:                                         ; preds = %102
  %gep_ = getelementptr { i8*, %struct.list_node**, %struct.list*, i8* }, { i8*, %struct.list_node**, %struct.list*, i8* }* %structArg, i32 0, i32 0
  store i8* %97, i8** %gep_
  %gep_it = getelementptr { i8*, %struct.list_node**, %struct.list*, i8* }, { i8*, %struct.list_node**, %struct.list*, i8* }* %structArg, i32 0, i32 1
  store %struct.list_node** %it, %struct.list_node*** %gep_it
  %gep_1 = getelementptr { i8*, %struct.list_node**, %struct.list*, i8* }, { i8*, %struct.list_node**, %struct.list*, i8* }* %structArg, i32 0, i32 2
  store %struct.list* %30, %struct.list** %gep_1
  call void @TMdecoder_process___kernel__TMdecoder_process0({ i8*, %struct.list_node**, %struct.list*, i8* }* %structArg)
  %gep_reload_dst.0 = getelementptr { i8*, %struct.list_node**, %struct.list*, i8* }, { i8*, %struct.list_node**, %struct.list*, i8* }* %structArg, i32 0, i32 3
  %dst.0.reload = load i8*, i8** %gep_reload_dst.0
  br label %104

; <label>:104                                     ; preds = %codeRepl
  %105 = getelementptr inbounds i8, i8* %97, i64 %numByte1.0.reload
  %106 = icmp eq i8* %dst.0.reload, %105
  br i1 %106, label %107, label %108

; <label>:107                                     ; preds = %104
  br label %110

; <label>:108                                     ; preds = %104
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 411, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %110

; <label>:110                                     ; preds = %109, %107
  %111 = call noalias i8* @malloc(i64 16) #7
  %112 = bitcast i8* %111 to %struct.decoded*
  %113 = icmp ne %struct.decoded* %112, null
  br i1 %113, label %114, label %115

; <label>:114                                     ; preds = %110
  br label %117

; <label>:115                                     ; preds = %110
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 414, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %117

; <label>:117                                     ; preds = %116, %114
  %118 = getelementptr inbounds %struct.decoded, %struct.decoded* %112, i32 0, i32 0
  store i64 %6, i64* %118, align 8
  %119 = getelementptr inbounds %struct.decoded, %struct.decoded* %112, i32 0, i32 1
  store i8* %97, i8** %119, align 8
  %120 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i32 0, i32 1
  %121 = load %struct.queue*, %struct.queue** %120, align 8
  %122 = bitcast %struct.decoded* %112 to i8*
  %123 = call i64 @TMqueue_push(%struct.queue* %121, i8* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

; <label>:125                                     ; preds = %117
  br label %128

; <label>:126                                     ; preds = %117
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 420, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %128

; <label>:128                                     ; preds = %127, %125
  call void @TMlist_free(%struct.list* %30)
  %129 = inttoptr i64 %6 to i8*
  %130 = call i64 @TMrbtree_delete(%struct.rbtree* %27, i8* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

; <label>:132                                     ; preds = %128
  br label %135

; <label>:133                                     ; preds = %128
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 424, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %135

; <label>:135                                     ; preds = %134, %132
  br label %136

; <label>:136                                     ; preds = %135, %._crit_edge2
  br label %137

; <label>:137                                     ; preds = %136, %53
  br label %170

; <label>:138                                     ; preds = %23
  %139 = icmp ne i64 %8, 0
  br i1 %139, label %140, label %141

; <label>:140                                     ; preds = %138
  br label %171

; <label>:141                                     ; preds = %138
  %142 = add nsw i64 %12, 1
  %143 = call noalias i8* @malloc(i64 %142) #7
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %146

; <label>:145                                     ; preds = %141
  br label %148

; <label>:146                                     ; preds = %141
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 440, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %148

; <label>:148                                     ; preds = %147, %145
  %149 = getelementptr inbounds i8, i8* %143, i64 %12
  store i8 0, i8* %149, align 1
  %150 = getelementptr inbounds %struct.packet, %struct.packet* %4, i32 0, i32 4
  %151 = getelementptr inbounds [0 x i8], [0 x i8]* %150, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %143, i8* %151, i64 %12, i32 1, i1 false)
  %152 = call noalias i8* @malloc(i64 16) #7
  %153 = bitcast i8* %152 to %struct.decoded*
  %154 = icmp ne %struct.decoded* %153, null
  br i1 %154, label %155, label %156

; <label>:155                                     ; preds = %148
  br label %158

; <label>:156                                     ; preds = %148
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 445, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %158

; <label>:158                                     ; preds = %157, %155
  %159 = getelementptr inbounds %struct.decoded, %struct.decoded* %153, i32 0, i32 0
  store i64 %6, i64* %159, align 8
  %160 = getelementptr inbounds %struct.decoded, %struct.decoded* %153, i32 0, i32 1
  store i8* %143, i8** %160, align 8
  %161 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i32 0, i32 1
  %162 = load %struct.queue*, %struct.queue** %161, align 8
  %163 = bitcast %struct.decoded* %153 to i8*
  %164 = call i64 @TMqueue_push(%struct.queue* %162, i8* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

; <label>:166                                     ; preds = %158
  br label %169

; <label>:167                                     ; preds = %158
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 451, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %169

; <label>:169                                     ; preds = %168, %166
  br label %170

; <label>:170                                     ; preds = %169, %137
  br label %171

; <label>:171                                     ; preds = %170, %140, %94, %73, %22, %19, %14, %2
  %.0 = phi i32 [ 1, %2 ], [ 2, %14 ], [ 3, %19 ], [ 4, %22 ], [ 0, %170 ], [ 5, %73 ], [ 6, %94 ], [ 3, %140 ]
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
  call void @free(i8* %11) #7
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
  call void @free(i8* %11) #7
  br label %13

; <label>:12                                      ; preds = %0
  store i64 -1, i64* %decodedFlowIdPtr, align 8
  br label %13

; <label>:13                                      ; preds = %12, %6
  %data.0 = phi i8* [ %10, %6 ], [ null, %12 ]
  ret i8* %data.0
}

declare i8* @TMqueue_pop(%struct.queue*) #2

; Function Attrs: alwaysinline nounwind
define internal void @TMdecoder_process___kernel__TMdecoder_process0({ i8*, %struct.list_node**, %struct.list*, i8* }*) #6 {
newFuncRoot:
  %gep_ = getelementptr { i8*, %struct.list_node**, %struct.list*, i8* }, { i8*, %struct.list_node**, %struct.list*, i8* }* %0, i32 0, i32 0
  %loadgep_ = load i8*, i8** %gep_
  %gep_it = getelementptr { i8*, %struct.list_node**, %struct.list*, i8* }, { i8*, %struct.list_node**, %struct.list*, i8* }* %0, i32 0, i32 1
  %loadgep_it = load %struct.list_node**, %struct.list_node*** %gep_it
  %gep_1 = getelementptr { i8*, %struct.list_node**, %struct.list*, i8* }, { i8*, %struct.list_node**, %struct.list*, i8* }* %0, i32 0, i32 2
  %loadgep_2 = load %struct.list*, %struct.list** %gep_1
  br label %__kernel__TMdecoder_process0

.exitStub:                                        ; preds = %__kernel__TMdecoder_process0
  %gep_dst.0 = getelementptr { i8*, %struct.list_node**, %struct.list*, i8* }, { i8*, %struct.list_node**, %struct.list*, i8* }* %0, i32 0, i32 3
  store i8* %dst.0, i8** %gep_dst.0
  ret void

__kernel__TMdecoder_process0:                     ; preds = %newFuncRoot, %3
  %dst.0 = phi i8* [ %loadgep_, %newFuncRoot ], [ %12, %3 ]
  %1 = call i64 @TMlist_iter_hasNext(%struct.list_node** %loadgep_it, %struct.list* %loadgep_2) #9
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %.exitStub

; <label>:3                                       ; preds = %__kernel__TMdecoder_process0
  %4 = call i8* @TMlist_iter_next(%struct.list_node** %loadgep_it, %struct.list* %loadgep_2)
  %5 = bitcast i8* %4 to %struct.packet*
  %6 = getelementptr inbounds %struct.packet, %struct.packet* %5, i32 0, i32 4
  %7 = getelementptr inbounds [0 x i8], [0 x i8]* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.packet, %struct.packet* %5, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %dst.0, i8* %7, i64 %9, i32 1, i1 false)
  %10 = getelementptr inbounds %struct.packet, %struct.packet* %5, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i8, i8* %dst.0, i64 %11
  br label %__kernel__TMdecoder_process0, !llvm.loop !1
}

; Function Attrs: alwaysinline nounwind
define internal i16 @TMdecoder_process___kernel__TMdecoder_process1({ %struct.list_node**, %struct.list*, i64, i64 }*) #6 {
newFuncRoot:
  %gep_it = getelementptr { %struct.list_node**, %struct.list*, i64, i64 }, { %struct.list_node**, %struct.list*, i64, i64 }* %0, i32 0, i32 0
  %loadgep_it = load %struct.list_node**, %struct.list_node*** %gep_it
  %gep_ = getelementptr { %struct.list_node**, %struct.list*, i64, i64 }, { %struct.list_node**, %struct.list*, i64, i64 }* %0, i32 0, i32 1
  %loadgep_ = load %struct.list*, %struct.list** %gep_
  %gep_1 = getelementptr { %struct.list_node**, %struct.list*, i64, i64 }, { %struct.list_node**, %struct.list*, i64, i64 }* %0, i32 0, i32 2
  %loadgep_2 = load i64, i64* %gep_1
  br label %__kernel__TMdecoder_process1

.exitStub:                                        ; preds = %__kernel__TMdecoder_process1
  %gep_numByte1.0 = getelementptr { %struct.list_node**, %struct.list*, i64, i64 }, { %struct.list_node**, %struct.list*, i64, i64 }* %0, i32 0, i32 3
  store i64 %numByte1.0, i64* %gep_numByte1.0
  ret i16 0

.exitStub3:                                       ; preds = %3
  %gep_numByte1.04 = getelementptr { %struct.list_node**, %struct.list*, i64, i64 }, { %struct.list_node**, %struct.list*, i64, i64 }* %0, i32 0, i32 3
  store i64 %numByte1.0, i64* %gep_numByte1.04
  ret i16 1

.exitStub5:                                       ; preds = %10
  %gep_numByte1.06 = getelementptr { %struct.list_node**, %struct.list*, i64, i64 }, { %struct.list_node**, %struct.list*, i64, i64 }* %0, i32 0, i32 3
  store i64 %numByte1.0, i64* %gep_numByte1.06
  ret i16 2

__kernel__TMdecoder_process1:                     ; preds = %newFuncRoot, %14
  %numByte1.0 = phi i64 [ 0, %newFuncRoot ], [ %17, %14 ]
  %i.0 = phi i64 [ 0, %newFuncRoot ], [ %18, %14 ]
  %1 = call i64 @TMlist_iter_hasNext(%struct.list_node** %loadgep_it, %struct.list* %loadgep_) #9
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %.exitStub

; <label>:3                                       ; preds = %__kernel__TMdecoder_process1
  %4 = call i8* @TMlist_iter_next(%struct.list_node** %loadgep_it, %struct.list* %loadgep_)
  %5 = bitcast i8* %4 to %struct.packet*
  %6 = getelementptr inbounds %struct.packet, %struct.packet* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, %loadgep_2
  br i1 %8, label %9, label %.exitStub3

; <label>:9                                       ; preds = %3
  br label %10

; <label>:10                                      ; preds = %9
  %11 = getelementptr inbounds %struct.packet, %struct.packet* %5, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, %i.0
  br i1 %13, label %.exitStub5, label %14

; <label>:14                                      ; preds = %10
  %15 = getelementptr inbounds %struct.packet, %struct.packet* %5, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %numByte1.0, %16
  %18 = add nsw i64 %i.0, 1
  br label %__kernel__TMdecoder_process1, !llvm.loop !3
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { alwaysinline nounwind }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = distinct !{!1, !2}
!2 = !{!"llvm.loop.vectorize.width", i32 1337}
!3 = distinct !{!3, !2}
