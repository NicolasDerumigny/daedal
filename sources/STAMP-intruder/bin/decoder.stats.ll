; ModuleID = 'decoder.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoder = type { %struct.rbtree*, %struct.queue* }
%struct.rbtree = type opaque
%struct.queue = type opaque
%struct.packet = type { i64, i64, i64, i64, [0 x i8] }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.list_node = type { i8*, %struct.list_node* }
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
  %decoderPtr = alloca %struct.decoder*, align 8
  %1 = call noalias i8* @malloc(i64 16) #6
  %2 = bitcast i8* %1 to %struct.decoder*
  store %struct.decoder* %2, %struct.decoder** %decoderPtr, align 8
  %3 = load %struct.decoder*, %struct.decoder** %decoderPtr, align 8
  %4 = icmp ne %struct.decoder* %3, null
  br i1 %4, label %5, label %28

; <label>:5                                       ; preds = %0
  %6 = call %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)* null)
  %7 = load %struct.decoder*, %struct.decoder** %decoderPtr, align 8
  %8 = getelementptr inbounds %struct.decoder, %struct.decoder* %7, i32 0, i32 0
  store %struct.rbtree* %6, %struct.rbtree** %8, align 8
  %9 = load %struct.decoder*, %struct.decoder** %decoderPtr, align 8
  %10 = getelementptr inbounds %struct.decoder, %struct.decoder* %9, i32 0, i32 0
  %11 = load %struct.rbtree*, %struct.rbtree** %10, align 8
  %12 = icmp ne %struct.rbtree* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %5
  br label %16

; <label>:14                                      ; preds = %5
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.decoder_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = call %struct.queue* @queue_alloc(i64 1024)
  %18 = load %struct.decoder*, %struct.decoder** %decoderPtr, align 8
  %19 = getelementptr inbounds %struct.decoder, %struct.decoder* %18, i32 0, i32 1
  store %struct.queue* %17, %struct.queue** %19, align 8
  %20 = load %struct.decoder*, %struct.decoder** %decoderPtr, align 8
  %21 = getelementptr inbounds %struct.decoder, %struct.decoder* %20, i32 0, i32 1
  %22 = load %struct.queue*, %struct.queue** %21, align 8
  %23 = icmp ne %struct.queue* %22, null
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %16
  br label %27

; <label>:25                                      ; preds = %16
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 109, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.decoder_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %27

; <label>:27                                      ; preds = %26, %24
  br label %28

; <label>:28                                      ; preds = %27, %0
  %29 = load %struct.decoder*, %struct.decoder** %decoderPtr, align 8
  ret %struct.decoder* %29
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)*) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare %struct.queue* @queue_alloc(i64) #2

; Function Attrs: nounwind uwtable
define void @decoder_free(%struct.decoder* %decoderPtr) #0 {
  %1 = alloca %struct.decoder*, align 8
  store %struct.decoder* %decoderPtr, %struct.decoder** %1, align 8
  %2 = load %struct.decoder*, %struct.decoder** %1, align 8
  %3 = getelementptr inbounds %struct.decoder, %struct.decoder* %2, i32 0, i32 1
  %4 = load %struct.queue*, %struct.queue** %3, align 8
  call void @queue_free(%struct.queue* %4)
  %5 = load %struct.decoder*, %struct.decoder** %1, align 8
  %6 = getelementptr inbounds %struct.decoder, %struct.decoder* %5, i32 0, i32 0
  %7 = load %struct.rbtree*, %struct.rbtree** %6, align 8
  call void @rbtree_free(%struct.rbtree* %7)
  %8 = load %struct.decoder*, %struct.decoder** %1, align 8
  %9 = bitcast %struct.decoder* %8 to i8*
  call void @free(i8* %9) #6
  ret void
}

declare void @queue_free(%struct.queue*) #2

declare void @rbtree_free(%struct.rbtree*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @decoder_process(%struct.decoder* %decoderPtr, i8* %bytes, i64 %numByte) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.decoder*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %status = alloca i64, align 8
  %packetPtr = alloca %struct.packet*, align 8
  %flowId = alloca i64, align 8
  %fragmentId = alloca i64, align 8
  %numFragment = alloca i64, align 8
  %length = alloca i64, align 8
  %fragmentedMapPtr = alloca %struct.rbtree*, align 8
  %fragmentListPtr = alloca %struct.list*, align 8
  %it = alloca %struct.list_node*, align 8
  %firstFragmentPtr = alloca %struct.packet*, align 8
  %expectedNumFragment = alloca i64, align 8
  %numByte1 = alloca i64, align 8
  %i = alloca i64, align 8
  %fragmentPtr = alloca %struct.packet*, align 8
  %data = alloca i8*, align 8
  %dst = alloca i8*, align 8
  %fragmentPtr2 = alloca %struct.packet*, align 8
  %decodedPtr = alloca %struct.decoded*, align 8
  %decodedQueuePtr = alloca %struct.queue*, align 8
  %data3 = alloca i8*, align 8
  %decodedPtr4 = alloca %struct.decoded*, align 8
  %decodedQueuePtr5 = alloca %struct.queue*, align 8
  store %struct.decoder* %decoderPtr, %struct.decoder** %2, align 8
  store i8* %bytes, i8** %3, align 8
  store i64 %numByte, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ult i64 %5, 32
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store i32 1, i32* %1, align 4
  br label %304

; <label>:8                                       ; preds = %0
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.packet*
  store %struct.packet* %10, %struct.packet** %packetPtr, align 8
  %11 = load %struct.packet*, %struct.packet** %packetPtr, align 8
  %12 = getelementptr inbounds %struct.packet, %struct.packet* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %flowId, align 8
  %14 = load %struct.packet*, %struct.packet** %packetPtr, align 8
  %15 = getelementptr inbounds %struct.packet, %struct.packet* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %fragmentId, align 8
  %17 = load %struct.packet*, %struct.packet** %packetPtr, align 8
  %18 = getelementptr inbounds %struct.packet, %struct.packet* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %numFragment, align 8
  %20 = load %struct.packet*, %struct.packet** %packetPtr, align 8
  %21 = getelementptr inbounds %struct.packet, %struct.packet* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %length, align 8
  %23 = load i64, i64* %flowId, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %8
  store i32 2, i32* %1, align 4
  br label %304

; <label>:26                                      ; preds = %8
  %27 = load i64, i64* %fragmentId, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %33, label %29

; <label>:29                                      ; preds = %26
  %30 = load i64, i64* %fragmentId, align 8
  %31 = load i64, i64* %numFragment, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %29, %26
  store i32 3, i32* %1, align 4
  br label %304

; <label>:34                                      ; preds = %29
  %35 = load i64, i64* %length, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %34
  store i32 4, i32* %1, align 4
  br label %304

; <label>:38                                      ; preds = %34
  %39 = load i64, i64* %numFragment, align 8
  %40 = icmp sgt i64 %39, 1
  br i1 %40, label %41, label %254

; <label>:41                                      ; preds = %38
  %42 = load %struct.decoder*, %struct.decoder** %2, align 8
  %43 = getelementptr inbounds %struct.decoder, %struct.decoder* %42, i32 0, i32 0
  %44 = load %struct.rbtree*, %struct.rbtree** %43, align 8
  store %struct.rbtree* %44, %struct.rbtree** %fragmentedMapPtr, align 8
  %45 = load %struct.rbtree*, %struct.rbtree** %fragmentedMapPtr, align 8
  %46 = load i64, i64* %flowId, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = call i8* @rbtree_get(%struct.rbtree* %45, i8* %47)
  %49 = bitcast i8* %48 to %struct.list*
  store %struct.list* %49, %struct.list** %fragmentListPtr, align 8
  %50 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  %51 = icmp eq %struct.list* %50, null
  br i1 %51, label %52, label %82

; <label>:52                                      ; preds = %41
  %53 = call %struct.list* @list_alloc(i64 (i8*, i8*)* @packet_compareFragmentId)
  store %struct.list* %53, %struct.list** %fragmentListPtr, align 8
  %54 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  %55 = icmp ne %struct.list* %54, null
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %52
  br label %59

; <label>:57                                      ; preds = %52
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 186, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %59

; <label>:59                                      ; preds = %58, %56
  %60 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  %61 = load %struct.packet*, %struct.packet** %packetPtr, align 8
  %62 = bitcast %struct.packet* %61 to i8*
  %63 = call i64 @list_insert(%struct.list* %60, i8* %62)
  store i64 %63, i64* %status, align 8
  %64 = load i64, i64* %status, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

; <label>:66                                      ; preds = %59
  br label %69

; <label>:67                                      ; preds = %59
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 188, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %69

; <label>:69                                      ; preds = %68, %66
  %70 = load %struct.rbtree*, %struct.rbtree** %fragmentedMapPtr, align 8
  %71 = load i64, i64* %flowId, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  %74 = bitcast %struct.list* %73 to i8*
  %75 = call i64 @rbtree_insert(%struct.rbtree* %70, i8* %72, i8* %74)
  store i64 %75, i64* %status, align 8
  %76 = load i64, i64* %status, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

; <label>:78                                      ; preds = %69
  br label %81

; <label>:79                                      ; preds = %69
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 192, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %81

; <label>:81                                      ; preds = %80, %78
  br label %253

; <label>:82                                      ; preds = %41
  %83 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %83)
  %84 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  %85 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %84) #8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

; <label>:87                                      ; preds = %82
  br label %90

; <label>:88                                      ; preds = %82
  call void @__assert_fail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 198, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %90

; <label>:90                                      ; preds = %89, %87
  %91 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  %92 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %91)
  %93 = bitcast i8* %92 to %struct.packet*
  store %struct.packet* %93, %struct.packet** %firstFragmentPtr, align 8
  %94 = load %struct.packet*, %struct.packet** %firstFragmentPtr, align 8
  %95 = getelementptr inbounds %struct.packet, %struct.packet* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %expectedNumFragment, align 8
  %97 = load i64, i64* %numFragment, align 8
  %98 = load i64, i64* %expectedNumFragment, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %111

; <label>:100                                     ; preds = %90
  %101 = load %struct.rbtree*, %struct.rbtree** %fragmentedMapPtr, align 8
  %102 = load i64, i64* %flowId, align 8
  %103 = inttoptr i64 %102 to i8*
  %104 = call i64 @rbtree_delete(%struct.rbtree* %101, i8* %103)
  store i64 %104, i64* %status, align 8
  %105 = load i64, i64* %status, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

; <label>:107                                     ; preds = %100
  br label %110

; <label>:108                                     ; preds = %100
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 205, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %110

; <label>:110                                     ; preds = %109, %107
  store i32 5, i32* %1, align 4
  br label %304

; <label>:111                                     ; preds = %90
  %112 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  %113 = load %struct.packet*, %struct.packet** %packetPtr, align 8
  %114 = bitcast %struct.packet* %113 to i8*
  %115 = call i64 @list_insert(%struct.list* %112, i8* %114)
  store i64 %115, i64* %status, align 8
  %116 = load i64, i64* %status, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

; <label>:118                                     ; preds = %111
  br label %121

; <label>:119                                     ; preds = %111
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 210, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %121

; <label>:121                                     ; preds = %120, %118
  %122 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  %123 = call i64 @list_getSize(%struct.list* %122)
  %124 = load i64, i64* %numFragment, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %252

; <label>:126                                     ; preds = %121
  store i64 0, i64* %numByte1, align 8
  store i64 0, i64* %i, align 8
  %127 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %127)
  br label %128

; <label>:128                                     ; preds = %161, %126
  %129 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  %130 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %129) #8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %169

; <label>:132                                     ; preds = %128
  %133 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  %134 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %133)
  %135 = bitcast i8* %134 to %struct.packet*
  store %struct.packet* %135, %struct.packet** %fragmentPtr, align 8
  %136 = load %struct.packet*, %struct.packet** %fragmentPtr, align 8
  %137 = getelementptr inbounds %struct.packet, %struct.packet* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %flowId, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %142

; <label>:141                                     ; preds = %132
  br label %144

; <label>:142                                     ; preds = %132
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 224, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %144

; <label>:144                                     ; preds = %143, %141
  %145 = load %struct.packet*, %struct.packet** %fragmentPtr, align 8
  %146 = getelementptr inbounds %struct.packet, %struct.packet* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %i, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %161

; <label>:150                                     ; preds = %144
  %151 = load %struct.rbtree*, %struct.rbtree** %fragmentedMapPtr, align 8
  %152 = load i64, i64* %flowId, align 8
  %153 = inttoptr i64 %152 to i8*
  %154 = call i64 @rbtree_delete(%struct.rbtree* %151, i8* %153)
  store i64 %154, i64* %status, align 8
  %155 = load i64, i64* %status, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

; <label>:157                                     ; preds = %150
  br label %160

; <label>:158                                     ; preds = %150
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 227, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %160

; <label>:160                                     ; preds = %159, %157
  store i32 6, i32* %1, align 4
  br label %304

; <label>:161                                     ; preds = %144
  %162 = load %struct.packet*, %struct.packet** %fragmentPtr, align 8
  %163 = getelementptr inbounds %struct.packet, %struct.packet* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* %numByte1, align 8
  %166 = add nsw i64 %165, %164
  store i64 %166, i64* %numByte1, align 8
  %167 = load i64, i64* %i, align 8
  %168 = add nsw i64 %167, 1
  store i64 %168, i64* %i, align 8
  br label %128

; <label>:169                                     ; preds = %128
  %170 = load i64, i64* %numByte1, align 8
  %171 = add nsw i64 %170, 1
  %172 = call noalias i8* @malloc(i64 %171) #6
  store i8* %172, i8** %data, align 8
  %173 = load i8*, i8** %data, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %176

; <label>:175                                     ; preds = %169
  br label %178

; <label>:176                                     ; preds = %169
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 235, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %178

; <label>:178                                     ; preds = %177, %175
  %179 = load i64, i64* %numByte1, align 8
  %180 = load i8*, i8** %data, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 %179
  store i8 0, i8* %181, align 1
  %182 = load i8*, i8** %data, align 8
  store i8* %182, i8** %dst, align 8
  %183 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %183)
  br label %184

; <label>:184                                     ; preds = %188, %178
  %185 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  %186 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %185) #8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %204

; <label>:188                                     ; preds = %184
  %189 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  %190 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %189)
  %191 = bitcast i8* %190 to %struct.packet*
  store %struct.packet* %191, %struct.packet** %fragmentPtr2, align 8
  %192 = load i8*, i8** %dst, align 8
  %193 = load %struct.packet*, %struct.packet** %fragmentPtr2, align 8
  %194 = getelementptr inbounds %struct.packet, %struct.packet* %193, i32 0, i32 4
  %195 = getelementptr inbounds [0 x i8], [0 x i8]* %194, i32 0, i32 0
  %196 = load %struct.packet*, %struct.packet** %fragmentPtr2, align 8
  %197 = getelementptr inbounds %struct.packet, %struct.packet* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %192, i8* %195, i64 %198, i32 1, i1 false)
  %199 = load %struct.packet*, %struct.packet** %fragmentPtr2, align 8
  %200 = getelementptr inbounds %struct.packet, %struct.packet* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = load i8*, i8** %dst, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 %201
  store i8* %203, i8** %dst, align 8
  br label %184

; <label>:204                                     ; preds = %184
  %205 = load i8*, i8** %dst, align 8
  %206 = load i8*, i8** %data, align 8
  %207 = load i64, i64* %numByte1, align 8
  %208 = getelementptr inbounds i8, i8* %206, i64 %207
  %209 = icmp eq i8* %205, %208
  br i1 %209, label %210, label %211

; <label>:210                                     ; preds = %204
  br label %213

; <label>:211                                     ; preds = %204
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 245, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %213

; <label>:213                                     ; preds = %212, %210
  %214 = call noalias i8* @malloc(i64 16) #6
  %215 = bitcast i8* %214 to %struct.decoded*
  store %struct.decoded* %215, %struct.decoded** %decodedPtr, align 8
  %216 = load %struct.decoded*, %struct.decoded** %decodedPtr, align 8
  %217 = icmp ne %struct.decoded* %216, null
  br i1 %217, label %218, label %219

; <label>:218                                     ; preds = %213
  br label %221

; <label>:219                                     ; preds = %213
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 248, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %221

; <label>:221                                     ; preds = %220, %218
  %222 = load i64, i64* %flowId, align 8
  %223 = load %struct.decoded*, %struct.decoded** %decodedPtr, align 8
  %224 = getelementptr inbounds %struct.decoded, %struct.decoded* %223, i32 0, i32 0
  store i64 %222, i64* %224, align 8
  %225 = load i8*, i8** %data, align 8
  %226 = load %struct.decoded*, %struct.decoded** %decodedPtr, align 8
  %227 = getelementptr inbounds %struct.decoded, %struct.decoded* %226, i32 0, i32 1
  store i8* %225, i8** %227, align 8
  %228 = load %struct.decoder*, %struct.decoder** %2, align 8
  %229 = getelementptr inbounds %struct.decoder, %struct.decoder* %228, i32 0, i32 1
  %230 = load %struct.queue*, %struct.queue** %229, align 8
  store %struct.queue* %230, %struct.queue** %decodedQueuePtr, align 8
  %231 = load %struct.queue*, %struct.queue** %decodedQueuePtr, align 8
  %232 = load %struct.decoded*, %struct.decoded** %decodedPtr, align 8
  %233 = bitcast %struct.decoded* %232 to i8*
  %234 = call i64 @queue_push(%struct.queue* %231, i8* %233)
  store i64 %234, i64* %status, align 8
  %235 = load i64, i64* %status, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %238

; <label>:237                                     ; preds = %221
  br label %240

; <label>:238                                     ; preds = %221
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 254, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %240

; <label>:240                                     ; preds = %239, %237
  %241 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  call void @list_free(%struct.list* %241)
  %242 = load %struct.rbtree*, %struct.rbtree** %fragmentedMapPtr, align 8
  %243 = load i64, i64* %flowId, align 8
  %244 = inttoptr i64 %243 to i8*
  %245 = call i64 @rbtree_delete(%struct.rbtree* %242, i8* %244)
  store i64 %245, i64* %status, align 8
  %246 = load i64, i64* %status, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %249

; <label>:248                                     ; preds = %240
  br label %251

; <label>:249                                     ; preds = %240
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 258, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %251

; <label>:251                                     ; preds = %250, %248
  br label %252

; <label>:252                                     ; preds = %251, %121
  br label %253

; <label>:253                                     ; preds = %252, %81
  br label %303

; <label>:254                                     ; preds = %38
  %255 = load i64, i64* %fragmentId, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %258

; <label>:257                                     ; preds = %254
  store i32 3, i32* %1, align 4
  br label %304

; <label>:258                                     ; preds = %254
  %259 = load i64, i64* %length, align 8
  %260 = add nsw i64 %259, 1
  %261 = call noalias i8* @malloc(i64 %260) #6
  store i8* %261, i8** %data3, align 8
  %262 = load i8*, i8** %data3, align 8
  %263 = icmp ne i8* %262, null
  br i1 %263, label %264, label %265

; <label>:264                                     ; preds = %258
  br label %267

; <label>:265                                     ; preds = %258
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 274, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %267

; <label>:267                                     ; preds = %266, %264
  %268 = load i64, i64* %length, align 8
  %269 = load i8*, i8** %data3, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 %268
  store i8 0, i8* %270, align 1
  %271 = load i8*, i8** %data3, align 8
  %272 = load %struct.packet*, %struct.packet** %packetPtr, align 8
  %273 = getelementptr inbounds %struct.packet, %struct.packet* %272, i32 0, i32 4
  %274 = getelementptr inbounds [0 x i8], [0 x i8]* %273, i32 0, i32 0
  %275 = load i64, i64* %length, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %271, i8* %274, i64 %275, i32 1, i1 false)
  %276 = call noalias i8* @malloc(i64 16) #6
  %277 = bitcast i8* %276 to %struct.decoded*
  store %struct.decoded* %277, %struct.decoded** %decodedPtr4, align 8
  %278 = load %struct.decoded*, %struct.decoded** %decodedPtr4, align 8
  %279 = icmp ne %struct.decoded* %278, null
  br i1 %279, label %280, label %281

; <label>:280                                     ; preds = %267
  br label %283

; <label>:281                                     ; preds = %267
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 279, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %283

; <label>:283                                     ; preds = %282, %280
  %284 = load i64, i64* %flowId, align 8
  %285 = load %struct.decoded*, %struct.decoded** %decodedPtr4, align 8
  %286 = getelementptr inbounds %struct.decoded, %struct.decoded* %285, i32 0, i32 0
  store i64 %284, i64* %286, align 8
  %287 = load i8*, i8** %data3, align 8
  %288 = load %struct.decoded*, %struct.decoded** %decodedPtr4, align 8
  %289 = getelementptr inbounds %struct.decoded, %struct.decoded* %288, i32 0, i32 1
  store i8* %287, i8** %289, align 8
  %290 = load %struct.decoder*, %struct.decoder** %2, align 8
  %291 = getelementptr inbounds %struct.decoder, %struct.decoder* %290, i32 0, i32 1
  %292 = load %struct.queue*, %struct.queue** %291, align 8
  store %struct.queue* %292, %struct.queue** %decodedQueuePtr5, align 8
  %293 = load %struct.queue*, %struct.queue** %decodedQueuePtr5, align 8
  %294 = load %struct.decoded*, %struct.decoded** %decodedPtr4, align 8
  %295 = bitcast %struct.decoded* %294 to i8*
  %296 = call i64 @queue_push(%struct.queue* %293, i8* %295)
  store i64 %296, i64* %status, align 8
  %297 = load i64, i64* %status, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %300

; <label>:299                                     ; preds = %283
  br label %302

; <label>:300                                     ; preds = %283
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 285, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %302

; <label>:302                                     ; preds = %301, %299
  br label %303

; <label>:303                                     ; preds = %302, %253
  store i32 0, i32* %1, align 4
  br label %304

; <label>:304                                     ; preds = %303, %257, %160, %110, %37, %33, %25, %7
  %305 = load i32, i32* %1, align 4
  ret i32 %305
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
  %1 = alloca i32, align 4
  %2 = alloca %struct.decoder*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %status = alloca i64, align 8
  %packetPtr = alloca %struct.packet*, align 8
  %flowId = alloca i64, align 8
  %fragmentId = alloca i64, align 8
  %numFragment = alloca i64, align 8
  %length = alloca i64, align 8
  %fragmentedMapPtr = alloca %struct.rbtree*, align 8
  %fragmentListPtr = alloca %struct.list*, align 8
  %it = alloca %struct.list_node*, align 8
  %firstFragmentPtr = alloca %struct.packet*, align 8
  %expectedNumFragment = alloca i64, align 8
  %numByte1 = alloca i64, align 8
  %i = alloca i64, align 8
  %fragmentPtr = alloca %struct.packet*, align 8
  %data = alloca i8*, align 8
  %dst = alloca i8*, align 8
  %fragmentPtr2 = alloca %struct.packet*, align 8
  %decodedPtr = alloca %struct.decoded*, align 8
  %decodedQueuePtr = alloca %struct.queue*, align 8
  %data3 = alloca i8*, align 8
  %decodedPtr4 = alloca %struct.decoded*, align 8
  %decodedQueuePtr5 = alloca %struct.queue*, align 8
  store %struct.decoder* %decoderPtr, %struct.decoder** %2, align 8
  store i8* %bytes, i8** %3, align 8
  store i64 %numByte, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ult i64 %5, 32
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store i32 1, i32* %1, align 4
  br label %304

; <label>:8                                       ; preds = %0
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.packet*
  store %struct.packet* %10, %struct.packet** %packetPtr, align 8
  %11 = load %struct.packet*, %struct.packet** %packetPtr, align 8
  %12 = getelementptr inbounds %struct.packet, %struct.packet* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %flowId, align 8
  %14 = load %struct.packet*, %struct.packet** %packetPtr, align 8
  %15 = getelementptr inbounds %struct.packet, %struct.packet* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %fragmentId, align 8
  %17 = load %struct.packet*, %struct.packet** %packetPtr, align 8
  %18 = getelementptr inbounds %struct.packet, %struct.packet* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %numFragment, align 8
  %20 = load %struct.packet*, %struct.packet** %packetPtr, align 8
  %21 = getelementptr inbounds %struct.packet, %struct.packet* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %length, align 8
  %23 = load i64, i64* %flowId, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %8
  store i32 2, i32* %1, align 4
  br label %304

; <label>:26                                      ; preds = %8
  %27 = load i64, i64* %fragmentId, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %33, label %29

; <label>:29                                      ; preds = %26
  %30 = load i64, i64* %fragmentId, align 8
  %31 = load i64, i64* %numFragment, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %29, %26
  store i32 3, i32* %1, align 4
  br label %304

; <label>:34                                      ; preds = %29
  %35 = load i64, i64* %length, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %34
  store i32 4, i32* %1, align 4
  br label %304

; <label>:38                                      ; preds = %34
  %39 = load i64, i64* %numFragment, align 8
  %40 = icmp sgt i64 %39, 1
  br i1 %40, label %41, label %254

; <label>:41                                      ; preds = %38
  %42 = load %struct.decoder*, %struct.decoder** %2, align 8
  %43 = getelementptr inbounds %struct.decoder, %struct.decoder* %42, i32 0, i32 0
  %44 = load %struct.rbtree*, %struct.rbtree** %43, align 8
  store %struct.rbtree* %44, %struct.rbtree** %fragmentedMapPtr, align 8
  %45 = load %struct.rbtree*, %struct.rbtree** %fragmentedMapPtr, align 8
  %46 = load i64, i64* %flowId, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = call i8* @TMrbtree_get(%struct.rbtree* %45, i8* %47)
  %49 = bitcast i8* %48 to %struct.list*
  store %struct.list* %49, %struct.list** %fragmentListPtr, align 8
  %50 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  %51 = icmp eq %struct.list* %50, null
  br i1 %51, label %52, label %82

; <label>:52                                      ; preds = %41
  %53 = call %struct.list* @TMlist_alloc(i64 (i8*, i8*)* @packet_compareFragmentId)
  store %struct.list* %53, %struct.list** %fragmentListPtr, align 8
  %54 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  %55 = icmp ne %struct.list* %54, null
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %52
  br label %59

; <label>:57                                      ; preds = %52
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 350, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %59

; <label>:59                                      ; preds = %58, %56
  %60 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  %61 = load %struct.packet*, %struct.packet** %packetPtr, align 8
  %62 = bitcast %struct.packet* %61 to i8*
  %63 = call i64 @TMlist_insert(%struct.list* %60, i8* %62)
  store i64 %63, i64* %status, align 8
  %64 = load i64, i64* %status, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

; <label>:66                                      ; preds = %59
  br label %69

; <label>:67                                      ; preds = %59
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 352, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %69

; <label>:69                                      ; preds = %68, %66
  %70 = load %struct.rbtree*, %struct.rbtree** %fragmentedMapPtr, align 8
  %71 = load i64, i64* %flowId, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  %74 = bitcast %struct.list* %73 to i8*
  %75 = call i64 @TMrbtree_insert(%struct.rbtree* %70, i8* %72, i8* %74)
  store i64 %75, i64* %status, align 8
  %76 = load i64, i64* %status, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

; <label>:78                                      ; preds = %69
  br label %81

; <label>:79                                      ; preds = %69
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 356, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %81

; <label>:81                                      ; preds = %80, %78
  br label %253

; <label>:82                                      ; preds = %41
  %83 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %83)
  %84 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  %85 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %84) #8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

; <label>:87                                      ; preds = %82
  br label %90

; <label>:88                                      ; preds = %82
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 362, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %90

; <label>:90                                      ; preds = %89, %87
  %91 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  %92 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %91)
  %93 = bitcast i8* %92 to %struct.packet*
  store %struct.packet* %93, %struct.packet** %firstFragmentPtr, align 8
  %94 = load %struct.packet*, %struct.packet** %firstFragmentPtr, align 8
  %95 = getelementptr inbounds %struct.packet, %struct.packet* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %expectedNumFragment, align 8
  %97 = load i64, i64* %numFragment, align 8
  %98 = load i64, i64* %expectedNumFragment, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %111

; <label>:100                                     ; preds = %90
  %101 = load %struct.rbtree*, %struct.rbtree** %fragmentedMapPtr, align 8
  %102 = load i64, i64* %flowId, align 8
  %103 = inttoptr i64 %102 to i8*
  %104 = call i64 @TMrbtree_delete(%struct.rbtree* %101, i8* %103)
  store i64 %104, i64* %status, align 8
  %105 = load i64, i64* %status, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

; <label>:107                                     ; preds = %100
  br label %110

; <label>:108                                     ; preds = %100
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 369, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %110

; <label>:110                                     ; preds = %109, %107
  store i32 5, i32* %1, align 4
  br label %304

; <label>:111                                     ; preds = %90
  %112 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  %113 = load %struct.packet*, %struct.packet** %packetPtr, align 8
  %114 = bitcast %struct.packet* %113 to i8*
  %115 = call i64 @TMlist_insert(%struct.list* %112, i8* %114)
  store i64 %115, i64* %status, align 8
  %116 = load i64, i64* %status, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

; <label>:118                                     ; preds = %111
  br label %121

; <label>:119                                     ; preds = %111
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 374, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %121

; <label>:121                                     ; preds = %120, %118
  %122 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  %123 = call i64 @TMlist_getSize(%struct.list* %122)
  %124 = load i64, i64* %numFragment, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %252

; <label>:126                                     ; preds = %121
  store i64 0, i64* %numByte1, align 8
  store i64 0, i64* %i, align 8
  %127 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %127)
  br label %128

; <label>:128                                     ; preds = %161, %126
  %129 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  %130 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %129) #8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %169

; <label>:132                                     ; preds = %128
  %133 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  %134 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %133)
  %135 = bitcast i8* %134 to %struct.packet*
  store %struct.packet* %135, %struct.packet** %fragmentPtr, align 8
  %136 = load %struct.packet*, %struct.packet** %fragmentPtr, align 8
  %137 = getelementptr inbounds %struct.packet, %struct.packet* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %flowId, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %142

; <label>:141                                     ; preds = %132
  br label %144

; <label>:142                                     ; preds = %132
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 389, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %144

; <label>:144                                     ; preds = %143, %141
  %145 = load %struct.packet*, %struct.packet** %fragmentPtr, align 8
  %146 = getelementptr inbounds %struct.packet, %struct.packet* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %i, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %161

; <label>:150                                     ; preds = %144
  %151 = load %struct.rbtree*, %struct.rbtree** %fragmentedMapPtr, align 8
  %152 = load i64, i64* %flowId, align 8
  %153 = inttoptr i64 %152 to i8*
  %154 = call i64 @TMrbtree_delete(%struct.rbtree* %151, i8* %153)
  store i64 %154, i64* %status, align 8
  %155 = load i64, i64* %status, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

; <label>:157                                     ; preds = %150
  br label %160

; <label>:158                                     ; preds = %150
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 392, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %160

; <label>:160                                     ; preds = %159, %157
  store i32 6, i32* %1, align 4
  br label %304

; <label>:161                                     ; preds = %144
  %162 = load %struct.packet*, %struct.packet** %fragmentPtr, align 8
  %163 = getelementptr inbounds %struct.packet, %struct.packet* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* %numByte1, align 8
  %166 = add nsw i64 %165, %164
  store i64 %166, i64* %numByte1, align 8
  %167 = load i64, i64* %i, align 8
  %168 = add nsw i64 %167, 1
  store i64 %168, i64* %i, align 8
  br label %128, !llvm.loop !1

; <label>:169                                     ; preds = %128
  %170 = load i64, i64* %numByte1, align 8
  %171 = add nsw i64 %170, 1
  %172 = call noalias i8* @malloc(i64 %171) #6
  store i8* %172, i8** %data, align 8
  %173 = load i8*, i8** %data, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %176

; <label>:175                                     ; preds = %169
  br label %178

; <label>:176                                     ; preds = %169
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 400, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %178

; <label>:178                                     ; preds = %177, %175
  %179 = load i64, i64* %numByte1, align 8
  %180 = load i8*, i8** %data, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 %179
  store i8 0, i8* %181, align 1
  %182 = load i8*, i8** %data, align 8
  store i8* %182, i8** %dst, align 8
  %183 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %183)
  br label %184

; <label>:184                                     ; preds = %188, %178
  %185 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  %186 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %185) #8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %204

; <label>:188                                     ; preds = %184
  %189 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  %190 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %189)
  %191 = bitcast i8* %190 to %struct.packet*
  store %struct.packet* %191, %struct.packet** %fragmentPtr2, align 8
  %192 = load i8*, i8** %dst, align 8
  %193 = load %struct.packet*, %struct.packet** %fragmentPtr2, align 8
  %194 = getelementptr inbounds %struct.packet, %struct.packet* %193, i32 0, i32 4
  %195 = getelementptr inbounds [0 x i8], [0 x i8]* %194, i32 0, i32 0
  %196 = load %struct.packet*, %struct.packet** %fragmentPtr2, align 8
  %197 = getelementptr inbounds %struct.packet, %struct.packet* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %192, i8* %195, i64 %198, i32 1, i1 false)
  %199 = load %struct.packet*, %struct.packet** %fragmentPtr2, align 8
  %200 = getelementptr inbounds %struct.packet, %struct.packet* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = load i8*, i8** %dst, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 %201
  store i8* %203, i8** %dst, align 8
  br label %184, !llvm.loop !3

; <label>:204                                     ; preds = %184
  %205 = load i8*, i8** %dst, align 8
  %206 = load i8*, i8** %data, align 8
  %207 = load i64, i64* %numByte1, align 8
  %208 = getelementptr inbounds i8, i8* %206, i64 %207
  %209 = icmp eq i8* %205, %208
  br i1 %209, label %210, label %211

; <label>:210                                     ; preds = %204
  br label %213

; <label>:211                                     ; preds = %204
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 411, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %213

; <label>:213                                     ; preds = %212, %210
  %214 = call noalias i8* @malloc(i64 16) #6
  %215 = bitcast i8* %214 to %struct.decoded*
  store %struct.decoded* %215, %struct.decoded** %decodedPtr, align 8
  %216 = load %struct.decoded*, %struct.decoded** %decodedPtr, align 8
  %217 = icmp ne %struct.decoded* %216, null
  br i1 %217, label %218, label %219

; <label>:218                                     ; preds = %213
  br label %221

; <label>:219                                     ; preds = %213
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 414, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %221

; <label>:221                                     ; preds = %220, %218
  %222 = load i64, i64* %flowId, align 8
  %223 = load %struct.decoded*, %struct.decoded** %decodedPtr, align 8
  %224 = getelementptr inbounds %struct.decoded, %struct.decoded* %223, i32 0, i32 0
  store i64 %222, i64* %224, align 8
  %225 = load i8*, i8** %data, align 8
  %226 = load %struct.decoded*, %struct.decoded** %decodedPtr, align 8
  %227 = getelementptr inbounds %struct.decoded, %struct.decoded* %226, i32 0, i32 1
  store i8* %225, i8** %227, align 8
  %228 = load %struct.decoder*, %struct.decoder** %2, align 8
  %229 = getelementptr inbounds %struct.decoder, %struct.decoder* %228, i32 0, i32 1
  %230 = load %struct.queue*, %struct.queue** %229, align 8
  store %struct.queue* %230, %struct.queue** %decodedQueuePtr, align 8
  %231 = load %struct.queue*, %struct.queue** %decodedQueuePtr, align 8
  %232 = load %struct.decoded*, %struct.decoded** %decodedPtr, align 8
  %233 = bitcast %struct.decoded* %232 to i8*
  %234 = call i64 @TMqueue_push(%struct.queue* %231, i8* %233)
  store i64 %234, i64* %status, align 8
  %235 = load i64, i64* %status, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %238

; <label>:237                                     ; preds = %221
  br label %240

; <label>:238                                     ; preds = %221
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 420, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %240

; <label>:240                                     ; preds = %239, %237
  %241 = load %struct.list*, %struct.list** %fragmentListPtr, align 8
  call void @TMlist_free(%struct.list* %241)
  %242 = load %struct.rbtree*, %struct.rbtree** %fragmentedMapPtr, align 8
  %243 = load i64, i64* %flowId, align 8
  %244 = inttoptr i64 %243 to i8*
  %245 = call i64 @TMrbtree_delete(%struct.rbtree* %242, i8* %244)
  store i64 %245, i64* %status, align 8
  %246 = load i64, i64* %status, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %249

; <label>:248                                     ; preds = %240
  br label %251

; <label>:249                                     ; preds = %240
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 424, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %251

; <label>:251                                     ; preds = %250, %248
  br label %252

; <label>:252                                     ; preds = %251, %121
  br label %253

; <label>:253                                     ; preds = %252, %81
  br label %303

; <label>:254                                     ; preds = %38
  %255 = load i64, i64* %fragmentId, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %258

; <label>:257                                     ; preds = %254
  store i32 3, i32* %1, align 4
  br label %304

; <label>:258                                     ; preds = %254
  %259 = load i64, i64* %length, align 8
  %260 = add nsw i64 %259, 1
  %261 = call noalias i8* @malloc(i64 %260) #6
  store i8* %261, i8** %data3, align 8
  %262 = load i8*, i8** %data3, align 8
  %263 = icmp ne i8* %262, null
  br i1 %263, label %264, label %265

; <label>:264                                     ; preds = %258
  br label %267

; <label>:265                                     ; preds = %258
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 440, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %267

; <label>:267                                     ; preds = %266, %264
  %268 = load i64, i64* %length, align 8
  %269 = load i8*, i8** %data3, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 %268
  store i8 0, i8* %270, align 1
  %271 = load i8*, i8** %data3, align 8
  %272 = load %struct.packet*, %struct.packet** %packetPtr, align 8
  %273 = getelementptr inbounds %struct.packet, %struct.packet* %272, i32 0, i32 4
  %274 = getelementptr inbounds [0 x i8], [0 x i8]* %273, i32 0, i32 0
  %275 = load i64, i64* %length, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %271, i8* %274, i64 %275, i32 1, i1 false)
  %276 = call noalias i8* @malloc(i64 16) #6
  %277 = bitcast i8* %276 to %struct.decoded*
  store %struct.decoded* %277, %struct.decoded** %decodedPtr4, align 8
  %278 = load %struct.decoded*, %struct.decoded** %decodedPtr4, align 8
  %279 = icmp ne %struct.decoded* %278, null
  br i1 %279, label %280, label %281

; <label>:280                                     ; preds = %267
  br label %283

; <label>:281                                     ; preds = %267
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 445, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %283

; <label>:283                                     ; preds = %282, %280
  %284 = load i64, i64* %flowId, align 8
  %285 = load %struct.decoded*, %struct.decoded** %decodedPtr4, align 8
  %286 = getelementptr inbounds %struct.decoded, %struct.decoded* %285, i32 0, i32 0
  store i64 %284, i64* %286, align 8
  %287 = load i8*, i8** %data3, align 8
  %288 = load %struct.decoded*, %struct.decoded** %decodedPtr4, align 8
  %289 = getelementptr inbounds %struct.decoded, %struct.decoded* %288, i32 0, i32 1
  store i8* %287, i8** %289, align 8
  %290 = load %struct.decoder*, %struct.decoder** %2, align 8
  %291 = getelementptr inbounds %struct.decoder, %struct.decoder* %290, i32 0, i32 1
  %292 = load %struct.queue*, %struct.queue** %291, align 8
  store %struct.queue* %292, %struct.queue** %decodedQueuePtr5, align 8
  %293 = load %struct.queue*, %struct.queue** %decodedQueuePtr5, align 8
  %294 = load %struct.decoded*, %struct.decoded** %decodedPtr4, align 8
  %295 = bitcast %struct.decoded* %294 to i8*
  %296 = call i64 @TMqueue_push(%struct.queue* %293, i8* %295)
  store i64 %296, i64* %status, align 8
  %297 = load i64, i64* %status, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %300

; <label>:299                                     ; preds = %283
  br label %302

; <label>:300                                     ; preds = %283
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 451, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %302

; <label>:302                                     ; preds = %301, %299
  br label %303

; <label>:303                                     ; preds = %302, %253
  store i32 0, i32* %1, align 4
  br label %304

; <label>:304                                     ; preds = %303, %257, %160, %110, %37, %33, %25, %7
  %305 = load i32, i32* %1, align 4
  ret i32 %305
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
  %1 = alloca %struct.decoder*, align 8
  %2 = alloca i64*, align 8
  %data = alloca i8*, align 8
  %decodedPtr = alloca %struct.decoded*, align 8
  store %struct.decoder* %decoderPtr, %struct.decoder** %1, align 8
  store i64* %decodedFlowIdPtr, i64** %2, align 8
  %3 = load %struct.decoder*, %struct.decoder** %1, align 8
  %4 = getelementptr inbounds %struct.decoder, %struct.decoder* %3, i32 0, i32 1
  %5 = load %struct.queue*, %struct.queue** %4, align 8
  %6 = call i8* @queue_pop(%struct.queue* %5)
  %7 = bitcast i8* %6 to %struct.decoded*
  store %struct.decoded* %7, %struct.decoded** %decodedPtr, align 8
  %8 = load %struct.decoded*, %struct.decoded** %decodedPtr, align 8
  %9 = icmp ne %struct.decoded* %8, null
  br i1 %9, label %10, label %20

; <label>:10                                      ; preds = %0
  %11 = load %struct.decoded*, %struct.decoded** %decodedPtr, align 8
  %12 = getelementptr inbounds %struct.decoded, %struct.decoded* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64*, i64** %2, align 8
  store i64 %13, i64* %14, align 8
  %15 = load %struct.decoded*, %struct.decoded** %decodedPtr, align 8
  %16 = getelementptr inbounds %struct.decoded, %struct.decoded* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %data, align 8
  %18 = load %struct.decoded*, %struct.decoded** %decodedPtr, align 8
  %19 = bitcast %struct.decoded* %18 to i8*
  call void @free(i8* %19) #6
  br label %22

; <label>:20                                      ; preds = %0
  %21 = load i64*, i64** %2, align 8
  store i64 -1, i64* %21, align 8
  store i8* null, i8** %data, align 8
  br label %22

; <label>:22                                      ; preds = %20, %10
  %23 = load i8*, i8** %data, align 8
  ret i8* %23
}

declare i8* @queue_pop(%struct.queue*) #2

; Function Attrs: nounwind uwtable
define i8* @TMdecoder_getComplete(%struct.decoder* %decoderPtr, i64* %decodedFlowIdPtr) #0 {
  %1 = alloca %struct.decoder*, align 8
  %2 = alloca i64*, align 8
  %data = alloca i8*, align 8
  %decodedPtr = alloca %struct.decoded*, align 8
  store %struct.decoder* %decoderPtr, %struct.decoder** %1, align 8
  store i64* %decodedFlowIdPtr, i64** %2, align 8
  %3 = load %struct.decoder*, %struct.decoder** %1, align 8
  %4 = getelementptr inbounds %struct.decoder, %struct.decoder* %3, i32 0, i32 1
  %5 = load %struct.queue*, %struct.queue** %4, align 8
  %6 = call i8* @TMqueue_pop(%struct.queue* %5)
  %7 = bitcast i8* %6 to %struct.decoded*
  store %struct.decoded* %7, %struct.decoded** %decodedPtr, align 8
  %8 = load %struct.decoded*, %struct.decoded** %decodedPtr, align 8
  %9 = icmp ne %struct.decoded* %8, null
  br i1 %9, label %10, label %20

; <label>:10                                      ; preds = %0
  %11 = load %struct.decoded*, %struct.decoded** %decodedPtr, align 8
  %12 = getelementptr inbounds %struct.decoded, %struct.decoded* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64*, i64** %2, align 8
  store i64 %13, i64* %14, align 8
  %15 = load %struct.decoded*, %struct.decoded** %decodedPtr, align 8
  %16 = getelementptr inbounds %struct.decoded, %struct.decoded* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %data, align 8
  %18 = load %struct.decoded*, %struct.decoded** %decodedPtr, align 8
  %19 = bitcast %struct.decoded* %18 to i8*
  call void @free(i8* %19) #6
  br label %22

; <label>:20                                      ; preds = %0
  %21 = load i64*, i64** %2, align 8
  store i64 -1, i64* %21, align 8
  store i8* null, i8** %data, align 8
  br label %22

; <label>:22                                      ; preds = %20, %10
  %23 = load i8*, i8** %data, align 8
  ret i8* %23
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
