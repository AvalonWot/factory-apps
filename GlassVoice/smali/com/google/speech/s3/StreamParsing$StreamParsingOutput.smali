.class public final Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "StreamParsing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/StreamParsing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamParsingOutput"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;


# instance fields
.field public peanut:Lcom/google/majel/proto/PeanutProtos$Peanut;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 165
    invoke-virtual {p0}, Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;->clear()Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;

    .line 166
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;
    .locals 2

    .prologue
    .line 150
    sget-object v0, Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;->_emptyArray:[Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;

    if-nez v0, :cond_1

    .line 151
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_0
    sget-object v0, Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;->_emptyArray:[Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;

    if-nez v0, :cond_0

    .line 154
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;

    sput-object v0, Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;->_emptyArray:[Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;

    .line 156
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :cond_1
    sget-object v0, Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;->_emptyArray:[Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;

    return-object v0

    .line 156
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;

    invoke-direct {v0}, Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;

    invoke-direct {v0}, Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;->peanut:Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 170
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;->cachedSize:I

    .line 171
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 184
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 185
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;->peanut:Lcom/google/majel/proto/PeanutProtos$Peanut;

    if-eqz v1, :cond_0

    .line 186
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;->peanut:Lcom/google/majel/proto/PeanutProtos$Peanut;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 189
    :cond_0
    iput v0, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;->cachedSize:I

    .line 190
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 199
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 203
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    :sswitch_0
    return-object p0

    .line 209
    :sswitch_1
    iget-object v1, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;->peanut:Lcom/google/majel/proto/PeanutProtos$Peanut;

    if-nez v1, :cond_1

    .line 210
    new-instance v1, Lcom/google/majel/proto/PeanutProtos$Peanut;

    invoke-direct {v1}, Lcom/google/majel/proto/PeanutProtos$Peanut;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;->peanut:Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;->peanut:Lcom/google/majel/proto/PeanutProtos$Peanut;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 199
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;->peanut:Lcom/google/majel/proto/PeanutProtos$Peanut;

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;->peanut:Lcom/google/majel/proto/PeanutProtos$Peanut;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 180
    :cond_0
    return-void
.end method
