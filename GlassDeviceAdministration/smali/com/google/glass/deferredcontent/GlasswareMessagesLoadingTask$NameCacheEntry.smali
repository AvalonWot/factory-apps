.class Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask$NameCacheEntry;
.super Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;
.source "GlasswareMessagesLoadingTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NameCacheEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry",
        "<",
        "Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;-><init>()V

    return-void
.end method


# virtual methods
.method decode([B)Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 51
    :try_start_0
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->parseFrom([B)Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 54
    :goto_0
    return-object v1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    invoke-static {}, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Failed to parse message proto"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    new-instance v1, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;-><init>()V

    goto :goto_0
.end method

.method bridge synthetic decode([B)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask$NameCacheEntry;->decode([B)Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;

    move-result-object v0

    return-object v0
.end method
