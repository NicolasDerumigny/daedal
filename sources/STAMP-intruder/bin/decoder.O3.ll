; ModuleID = '../bin/decoder.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoder = type { %struct.rbtree*, %struct.queue* }
%struct.rbtree = type opaque
%struct.queue = type opaque
%struct.list_node = type { i8*, %struct.list_node* }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }

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
define noalias %struct.decoder* @decoder_alloc() #0 {
  %1 = tail call noalias i8* @malloc(i64 16) #6
  %2 = bitcast i8* %1 to %struct.decoder*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %15, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)* null) #6
  %6 = bitcast i8* %1 to %struct.rbtree**
  store %struct.rbtree* %5, %struct.rbtree** %6, align 8
  %7 = icmp eq %struct.rbtree* %5, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 107, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.decoder_alloc, i64 0, i64 0)) #7
  unreachable

; <label>:9                                       ; preds = %4
  %10 = tail call %struct.queue* @queue_alloc(i64 1024) #6
  %11 = getelementptr inbounds i8, i8* %1, i64 8
  %12 = bitcast i8* %11 to %struct.queue**
  store %struct.queue* %10, %struct.queue** %12, align 8
  %13 = icmp eq %struct.queue* %10, null
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %9
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 109, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.decoder_alloc, i64 0, i64 0)) #7
  unreachable

; <label>:15                                      ; preds = %9, %0
  ret %struct.decoder* %2
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)*) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare %struct.queue* @queue_alloc(i64) #2

; Function Attrs: nounwind uwtable
define void @decoder_free(%struct.decoder* nocapture %decoderPtr) #0 {
  %1 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i64 0, i32 1
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  tail call void @queue_free(%struct.queue* %2) #6
  %3 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i64 0, i32 0
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  tail call void @rbtree_free(%struct.rbtree* %4) #6
  %5 = bitcast %struct.decoder* %decoderPtr to i8*
  tail call void @free(i8* %5) #6
  ret void
}

declare void @queue_free(%struct.queue*) #2

declare void @rbtree_free(%struct.rbtree*) #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @decoder_process(%struct.decoder* nocapture readonly %decoderPtr, i8* %bytes, i64 %numByte) #0 {
  %it = alloca %struct.list_node*, align 8
  %1 = icmp ult i64 %numByte, 32
  br i1 %1, label %146, label %2

; <label>:2                                       ; preds = %0
  %3 = bitcast i8* %bytes to i64*
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds i8, i8* %bytes, i64 8
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds i8, i8* %bytes, i64 16
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i8, i8* %bytes, i64 24
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %4, 0
  br i1 %14, label %146, label %15

; <label>:15                                      ; preds = %2
  %16 = icmp sgt i64 %7, -1
  %17 = icmp slt i64 %7, %10
  %or.cond = and i1 %16, %17
  br i1 %or.cond, label %18, label %146

; <label>:18                                      ; preds = %15
  %19 = icmp slt i64 %13, 0
  br i1 %19, label %146, label %20

; <label>:20                                      ; preds = %18
  %21 = icmp sgt i64 %10, 1
  br i1 %21, label %22, label %124

; <label>:22                                      ; preds = %20
  %23 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i64 0, i32 0
  %24 = load %struct.rbtree*, %struct.rbtree** %23, align 8
  %25 = inttoptr i64 %4 to i8*
  %26 = tail call i8* @rbtree_get(%struct.rbtree* %24, i8* %25) #6
  %27 = bitcast i8* %26 to %struct.list*
  %28 = icmp eq i8* %26, null
  br i1 %28, label %29, label %42

; <label>:29                                      ; preds = %22
  %30 = tail call %struct.list* @list_alloc(i64 (i8*, i8*)* nonnull @packet_compareFragmentId) #6
  %31 = icmp eq %struct.list* %30, null
  br i1 %31, label %32, label %33

; <label>:32                                      ; preds = %29
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 186, i8* nonnull getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:33                                      ; preds = %29
  %34 = tail call i64 @list_insert(%struct.list* nonnull %30, i8* nonnull %bytes) #6
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

; <label>:36                                      ; preds = %33
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 188, i8* nonnull getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:37                                      ; preds = %33
  %38 = bitcast %struct.list* %30 to i8*
  %39 = tail call i64 @rbtree_insert(%struct.rbtree* %24, i8* %25, i8* %38) #6
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %146

; <label>:41                                      ; preds = %37
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 192, i8* nonnull getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:42                                      ; preds = %22
  call void @list_iter_reset(%struct.list_node** nonnull %it, %struct.list* %27) #6
  %43 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %27) #8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %42
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 198, i8* nonnull getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:46                                      ; preds = %42
  %47 = call i8* @list_iter_next(%struct.list_node** nonnull %it, %struct.list* %27) #6
  %48 = getelementptr inbounds i8, i8* %47, i64 16
  %49 = bitcast i8* %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %10, %50
  br i1 %51, label %56, label %52

; <label>:52                                      ; preds = %46
  %53 = call i64 @rbtree_delete(%struct.rbtree* %24, i8* %25) #6
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %146

; <label>:55                                      ; preds = %52
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 205, i8* nonnull getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:56                                      ; preds = %46
  %57 = call i64 @list_insert(%struct.list* %27, i8* nonnull %bytes) #6
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

; <label>:59                                      ; preds = %56
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 210, i8* nonnull getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:60                                      ; preds = %56
  %61 = call i64 @list_getSize(%struct.list* %27) #6
  %62 = icmp eq i64 %61, %10
  br i1 %62, label %63, label %146

; <label>:63                                      ; preds = %60
  call void @list_iter_reset(%struct.list_node** nonnull %it, %struct.list* %27) #6
  %64 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %27) #8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %._crit_edge8, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %63
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.preheader, %80
  %numByte1.05 = phi i64 [ %84, %80 ], [ 0, %.lr.ph7.preheader ]
  %i.04 = phi i64 [ %85, %80 ], [ 0, %.lr.ph7.preheader ]
  %66 = call i8* @list_iter_next(%struct.list_node** nonnull %it, %struct.list* %27) #6
  %67 = bitcast i8* %66 to i64*
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, %4
  br i1 %69, label %71, label %70

; <label>:70                                      ; preds = %.lr.ph7
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 224, i8* nonnull getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:71                                      ; preds = %.lr.ph7
  %72 = getelementptr inbounds i8, i8* %66, i64 8
  %73 = bitcast i8* %72 to i64*
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, %i.04
  br i1 %75, label %80, label %76

; <label>:76                                      ; preds = %71
  %77 = call i64 @rbtree_delete(%struct.rbtree* %24, i8* %25) #6
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %146

; <label>:79                                      ; preds = %76
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 227, i8* nonnull getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:80                                      ; preds = %71
  %81 = getelementptr inbounds i8, i8* %66, i64 24
  %82 = bitcast i8* %81 to i64*
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %numByte1.05
  %85 = add nuw nsw i64 %i.04, 1
  %86 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %27) #8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %._crit_edge8.loopexit, label %.lr.ph7

._crit_edge8.loopexit:                            ; preds = %80
  %.lcssa14 = phi i64 [ %84, %80 ]
  br label %._crit_edge8

._crit_edge8:                                     ; preds = %._crit_edge8.loopexit, %63
  %numByte1.0.lcssa = phi i64 [ 0, %63 ], [ %.lcssa14, %._crit_edge8.loopexit ]
  %88 = add nsw i64 %numByte1.0.lcssa, 1
  %89 = call noalias i8* @malloc(i64 %88) #6
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %92

; <label>:91                                      ; preds = %._crit_edge8
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 235, i8* nonnull getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:92                                      ; preds = %._crit_edge8
  %93 = getelementptr inbounds i8, i8* %89, i64 %numByte1.0.lcssa
  store i8 0, i8* %93, align 1
  call void @list_iter_reset(%struct.list_node** nonnull %it, %struct.list* %27) #6
  %94 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %27) #8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %92
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %dst.03 = phi i8* [ %102, %.lr.ph ], [ %89, %.lr.ph.preheader ]
  %96 = call i8* @list_iter_next(%struct.list_node** nonnull %it, %struct.list* %27) #6
  %97 = getelementptr inbounds i8, i8* %96, i64 32
  %98 = getelementptr inbounds i8, i8* %96, i64 24
  %99 = bitcast i8* %98 to i64*
  %100 = load i64, i64* %99, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %dst.03, i8* %97, i64 %100, i32 1, i1 false)
  %101 = load i64, i64* %99, align 8
  %102 = getelementptr inbounds i8, i8* %dst.03, i64 %101
  %103 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %27) #8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.lcssa = phi i8* [ %102, %.lr.ph ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %92
  %dst.0.lcssa = phi i8* [ %89, %92 ], [ %.lcssa, %._crit_edge.loopexit ]
  %105 = icmp eq i8* %dst.0.lcssa, %93
  br i1 %105, label %107, label %106

; <label>:106                                     ; preds = %._crit_edge
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 245, i8* nonnull getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:107                                     ; preds = %._crit_edge
  %108 = call noalias i8* @malloc(i64 16) #6
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %111

; <label>:110                                     ; preds = %107
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 248, i8* nonnull getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:111                                     ; preds = %107
  %112 = bitcast i8* %108 to i64*
  store i64 %4, i64* %112, align 8
  %113 = getelementptr inbounds i8, i8* %108, i64 8
  %114 = bitcast i8* %113 to i8**
  store i8* %89, i8** %114, align 8
  %115 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i64 0, i32 1
  %116 = load %struct.queue*, %struct.queue** %115, align 8
  %117 = call i64 @queue_push(%struct.queue* %116, i8* nonnull %108) #6
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %120

; <label>:119                                     ; preds = %111
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 254, i8* nonnull getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:120                                     ; preds = %111
  call void @list_free(%struct.list* %27) #6
  %121 = call i64 @rbtree_delete(%struct.rbtree* %24, i8* %25) #6
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %146

; <label>:123                                     ; preds = %120
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 258, i8* nonnull getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:124                                     ; preds = %20
  %125 = icmp eq i64 %7, 0
  br i1 %125, label %126, label %146

; <label>:126                                     ; preds = %124
  %127 = add nsw i64 %13, 1
  %128 = tail call noalias i8* @malloc(i64 %127) #6
  %129 = icmp eq i8* %128, null
  br i1 %129, label %130, label %131

; <label>:130                                     ; preds = %126
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 274, i8* nonnull getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:131                                     ; preds = %126
  %132 = getelementptr inbounds i8, i8* %128, i64 %13
  store i8 0, i8* %132, align 1
  %133 = getelementptr inbounds i8, i8* %bytes, i64 32
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %128, i8* %133, i64 %13, i32 1, i1 false)
  %134 = tail call noalias i8* @malloc(i64 16) #6
  %135 = icmp eq i8* %134, null
  br i1 %135, label %136, label %137

; <label>:136                                     ; preds = %131
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 279, i8* nonnull getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:137                                     ; preds = %131
  %138 = bitcast i8* %134 to i64*
  store i64 %4, i64* %138, align 8
  %139 = getelementptr inbounds i8, i8* %134, i64 8
  %140 = bitcast i8* %139 to i8**
  store i8* %128, i8** %140, align 8
  %141 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i64 0, i32 1
  %142 = load %struct.queue*, %struct.queue** %141, align 8
  %143 = tail call i64 @queue_push(%struct.queue* %142, i8* nonnull %134) #6
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %146

; <label>:145                                     ; preds = %137
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 285, i8* nonnull getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:146                                     ; preds = %60, %137, %120, %37, %124, %76, %52, %18, %15, %2, %0
  %.0 = phi i32 [ 1, %0 ], [ 2, %2 ], [ 3, %15 ], [ 4, %18 ], [ 5, %52 ], [ 6, %76 ], [ 3, %124 ], [ 0, %37 ], [ 0, %120 ], [ 0, %137 ], [ 0, %60 ]
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
define i32 @TMdecoder_process(%struct.decoder* nocapture readonly %decoderPtr, i8* %bytes, i64 %numByte) #0 {
  %it = alloca %struct.list_node*, align 8
  %1 = icmp ult i64 %numByte, 32
  br i1 %1, label %146, label %2

; <label>:2                                       ; preds = %0
  %3 = bitcast i8* %bytes to i64*
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds i8, i8* %bytes, i64 8
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds i8, i8* %bytes, i64 16
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i8, i8* %bytes, i64 24
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %4, 0
  br i1 %14, label %146, label %15

; <label>:15                                      ; preds = %2
  %16 = icmp sgt i64 %7, -1
  %17 = icmp slt i64 %7, %10
  %or.cond = and i1 %16, %17
  br i1 %or.cond, label %18, label %146

; <label>:18                                      ; preds = %15
  %19 = icmp slt i64 %13, 0
  br i1 %19, label %146, label %20

; <label>:20                                      ; preds = %18
  %21 = icmp sgt i64 %10, 1
  br i1 %21, label %22, label %124

; <label>:22                                      ; preds = %20
  %23 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i64 0, i32 0
  %24 = load %struct.rbtree*, %struct.rbtree** %23, align 8
  %25 = inttoptr i64 %4 to i8*
  %26 = tail call i8* @TMrbtree_get(%struct.rbtree* %24, i8* %25) #6
  %27 = bitcast i8* %26 to %struct.list*
  %28 = icmp eq i8* %26, null
  br i1 %28, label %29, label %42

; <label>:29                                      ; preds = %22
  %30 = tail call %struct.list* @TMlist_alloc(i64 (i8*, i8*)* nonnull @packet_compareFragmentId) #6
  %31 = icmp eq %struct.list* %30, null
  br i1 %31, label %32, label %33

; <label>:32                                      ; preds = %29
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 350, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:33                                      ; preds = %29
  %34 = tail call i64 @TMlist_insert(%struct.list* nonnull %30, i8* nonnull %bytes) #6
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

; <label>:36                                      ; preds = %33
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 352, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:37                                      ; preds = %33
  %38 = bitcast %struct.list* %30 to i8*
  %39 = tail call i64 @TMrbtree_insert(%struct.rbtree* %24, i8* %25, i8* %38) #6
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %146

; <label>:41                                      ; preds = %37
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 356, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:42                                      ; preds = %22
  call void @TMlist_iter_reset(%struct.list_node** nonnull %it, %struct.list* %27) #6
  %43 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %27) #8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %42
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 362, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:46                                      ; preds = %42
  %47 = call i8* @TMlist_iter_next(%struct.list_node** nonnull %it, %struct.list* %27) #6
  %48 = getelementptr inbounds i8, i8* %47, i64 16
  %49 = bitcast i8* %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %10, %50
  br i1 %51, label %56, label %52

; <label>:52                                      ; preds = %46
  %53 = call i64 @TMrbtree_delete(%struct.rbtree* %24, i8* %25) #6
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %146

; <label>:55                                      ; preds = %52
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 369, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:56                                      ; preds = %46
  %57 = call i64 @TMlist_insert(%struct.list* %27, i8* nonnull %bytes) #6
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

; <label>:59                                      ; preds = %56
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 374, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:60                                      ; preds = %56
  %61 = call i64 @TMlist_getSize(%struct.list* %27) #6
  %62 = icmp eq i64 %61, %10
  br i1 %62, label %63, label %146

; <label>:63                                      ; preds = %60
  call void @TMlist_iter_reset(%struct.list_node** nonnull %it, %struct.list* %27) #6
  %64 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %27) #8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %._crit_edge8, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %63
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.preheader, %80
  %numByte1.05 = phi i64 [ %84, %80 ], [ 0, %.lr.ph7.preheader ]
  %i.04 = phi i64 [ %85, %80 ], [ 0, %.lr.ph7.preheader ]
  %66 = call i8* @TMlist_iter_next(%struct.list_node** nonnull %it, %struct.list* %27) #6
  %67 = bitcast i8* %66 to i64*
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, %4
  br i1 %69, label %71, label %70

; <label>:70                                      ; preds = %.lr.ph7
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 389, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:71                                      ; preds = %.lr.ph7
  %72 = getelementptr inbounds i8, i8* %66, i64 8
  %73 = bitcast i8* %72 to i64*
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, %i.04
  br i1 %75, label %80, label %76

; <label>:76                                      ; preds = %71
  %77 = call i64 @TMrbtree_delete(%struct.rbtree* %24, i8* %25) #6
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %146

; <label>:79                                      ; preds = %76
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 392, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:80                                      ; preds = %71
  %81 = getelementptr inbounds i8, i8* %66, i64 24
  %82 = bitcast i8* %81 to i64*
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %numByte1.05
  %85 = add nuw nsw i64 %i.04, 1
  %86 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %27) #8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %._crit_edge8.loopexit, label %.lr.ph7, !llvm.loop !1

._crit_edge8.loopexit:                            ; preds = %80
  %.lcssa14 = phi i64 [ %84, %80 ]
  br label %._crit_edge8

._crit_edge8:                                     ; preds = %._crit_edge8.loopexit, %63
  %numByte1.0.lcssa = phi i64 [ 0, %63 ], [ %.lcssa14, %._crit_edge8.loopexit ]
  %88 = add nsw i64 %numByte1.0.lcssa, 1
  %89 = call noalias i8* @malloc(i64 %88) #6
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %92

; <label>:91                                      ; preds = %._crit_edge8
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 400, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:92                                      ; preds = %._crit_edge8
  %93 = getelementptr inbounds i8, i8* %89, i64 %numByte1.0.lcssa
  store i8 0, i8* %93, align 1
  call void @TMlist_iter_reset(%struct.list_node** nonnull %it, %struct.list* %27) #6
  %94 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %27) #8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %92
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %dst.03 = phi i8* [ %102, %.lr.ph ], [ %89, %.lr.ph.preheader ]
  %96 = call i8* @TMlist_iter_next(%struct.list_node** nonnull %it, %struct.list* %27) #6
  %97 = getelementptr inbounds i8, i8* %96, i64 32
  %98 = getelementptr inbounds i8, i8* %96, i64 24
  %99 = bitcast i8* %98 to i64*
  %100 = load i64, i64* %99, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %dst.03, i8* %97, i64 %100, i32 1, i1 false)
  %101 = load i64, i64* %99, align 8
  %102 = getelementptr inbounds i8, i8* %dst.03, i64 %101
  %103 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %27) #8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !3

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.lcssa = phi i8* [ %102, %.lr.ph ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %92
  %dst.0.lcssa = phi i8* [ %89, %92 ], [ %.lcssa, %._crit_edge.loopexit ]
  %105 = icmp eq i8* %dst.0.lcssa, %93
  br i1 %105, label %107, label %106

; <label>:106                                     ; preds = %._crit_edge
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 411, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:107                                     ; preds = %._crit_edge
  %108 = call noalias i8* @malloc(i64 16) #6
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %111

; <label>:110                                     ; preds = %107
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 414, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:111                                     ; preds = %107
  %112 = bitcast i8* %108 to i64*
  store i64 %4, i64* %112, align 8
  %113 = getelementptr inbounds i8, i8* %108, i64 8
  %114 = bitcast i8* %113 to i8**
  store i8* %89, i8** %114, align 8
  %115 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i64 0, i32 1
  %116 = load %struct.queue*, %struct.queue** %115, align 8
  %117 = call i64 @TMqueue_push(%struct.queue* %116, i8* nonnull %108) #6
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %120

; <label>:119                                     ; preds = %111
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 420, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:120                                     ; preds = %111
  call void @TMlist_free(%struct.list* %27) #6
  %121 = call i64 @TMrbtree_delete(%struct.rbtree* %24, i8* %25) #6
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %146

; <label>:123                                     ; preds = %120
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 424, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:124                                     ; preds = %20
  %125 = icmp eq i64 %7, 0
  br i1 %125, label %126, label %146

; <label>:126                                     ; preds = %124
  %127 = add nsw i64 %13, 1
  %128 = tail call noalias i8* @malloc(i64 %127) #6
  %129 = icmp eq i8* %128, null
  br i1 %129, label %130, label %131

; <label>:130                                     ; preds = %126
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 440, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:131                                     ; preds = %126
  %132 = getelementptr inbounds i8, i8* %128, i64 %13
  store i8 0, i8* %132, align 1
  %133 = getelementptr inbounds i8, i8* %bytes, i64 32
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %128, i8* %133, i64 %13, i32 1, i1 false)
  %134 = tail call noalias i8* @malloc(i64 16) #6
  %135 = icmp eq i8* %134, null
  br i1 %135, label %136, label %137

; <label>:136                                     ; preds = %131
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 445, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:137                                     ; preds = %131
  %138 = bitcast i8* %134 to i64*
  store i64 %4, i64* %138, align 8
  %139 = getelementptr inbounds i8, i8* %134, i64 8
  %140 = bitcast i8* %139 to i8**
  store i8* %128, i8** %140, align 8
  %141 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i64 0, i32 1
  %142 = load %struct.queue*, %struct.queue** %141, align 8
  %143 = tail call i64 @TMqueue_push(%struct.queue* %142, i8* nonnull %134) #6
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %146

; <label>:145                                     ; preds = %137
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 451, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i64 0, i64 0)) #7
  unreachable

; <label>:146                                     ; preds = %60, %137, %120, %37, %124, %76, %52, %18, %15, %2, %0
  %.0 = phi i32 [ 1, %0 ], [ 2, %2 ], [ 3, %15 ], [ 4, %18 ], [ 5, %52 ], [ 6, %76 ], [ 3, %124 ], [ 0, %37 ], [ 0, %120 ], [ 0, %137 ], [ 0, %60 ]
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
define i8* @decoder_getComplete(%struct.decoder* nocapture readonly %decoderPtr, i64* nocapture %decodedFlowIdPtr) #0 {
  %1 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i64 0, i32 1
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  %3 = tail call i8* @queue_pop(%struct.queue* %2) #6
  %4 = icmp eq i8* %3, null
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = bitcast i8* %3 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %decodedFlowIdPtr, align 8
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i8**
  %10 = load i8*, i8** %9, align 8
  tail call void @free(i8* nonnull %3) #6
  br label %12

; <label>:11                                      ; preds = %0
  store i64 -1, i64* %decodedFlowIdPtr, align 8
  br label %12

; <label>:12                                      ; preds = %11, %5
  %data.0 = phi i8* [ %10, %5 ], [ null, %11 ]
  ret i8* %data.0
}

declare i8* @queue_pop(%struct.queue*) #2

; Function Attrs: nounwind uwtable
define i8* @TMdecoder_getComplete(%struct.decoder* nocapture readonly %decoderPtr, i64* nocapture %decodedFlowIdPtr) #0 {
  %1 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i64 0, i32 1
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  %3 = tail call i8* @TMqueue_pop(%struct.queue* %2) #6
  %4 = icmp eq i8* %3, null
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = bitcast i8* %3 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %decodedFlowIdPtr, align 8
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i8**
  %10 = load i8*, i8** %9, align 8
  tail call void @free(i8* nonnull %3) #6
  br label %12

; <label>:11                                      ; preds = %0
  store i64 -1, i64* %decodedFlowIdPtr, align 8
  br label %12

; <label>:12                                      ; preds = %11, %5
  %data.0 = phi i8* [ %10, %5 ], [ null, %11 ]
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
