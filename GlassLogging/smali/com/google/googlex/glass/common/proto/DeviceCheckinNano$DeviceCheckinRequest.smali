.class public final Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DeviceCheckinNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/DeviceCheckinNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceCheckinRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;


# instance fields
.field private bitField0_:I

.field private build_:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

.field private deviceId_:Ljava/lang/String;

.field private serialNumber_:Ljava/lang/String;

.field private sessionId_:Ljava/lang/String;

.field private wifiMacAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->deviceId_:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->serialNumber_:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->sessionId_:Ljava/lang/String;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->wifiMacAddress_:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;

    return-object v0
.end method


# virtual methods
.method public clearBuild()Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build_:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    .line 75
    return-object p0
.end method

.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;
    .locals 1

    .prologue
    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->deviceId_:Ljava/lang/String;

    .line 32
    iget v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    .line 33
    return-object p0
.end method

.method public clearSerialNumber()Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;
    .locals 1

    .prologue
    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->serialNumber_:Ljava/lang/String;

    .line 54
    iget v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    .line 55
    return-object p0
.end method

.method public clearSessionId()Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;
    .locals 1

    .prologue
    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->sessionId_:Ljava/lang/String;

    .line 95
    iget v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    .line 96
    return-object p0
.end method

.method public clearWifiMacAddress()Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;
    .locals 1

    .prologue
    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->wifiMacAddress_:Ljava/lang/String;

    .line 117
    iget v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    .line 118
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    if-ne p1, p0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v1

    .line 124
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 125
    check-cast v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;

    .line 126
    .local v0, "other":Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->deviceId_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->deviceId_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->serialNumber_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->serialNumber_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 127
    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build_:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build_:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    if-nez v3, :cond_3

    .line 128
    :goto_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->sessionId_:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->sessionId_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 129
    :goto_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->wifiMacAddress_:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->wifiMacAddress_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 130
    :goto_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 131
    goto :goto_0

    .line 126
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->deviceId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->serialNumber_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->serialNumber_:Ljava/lang/String;

    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build_:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build_:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    .line 128
    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->sessionId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->sessionId_:Ljava/lang/String;

    .line 129
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->wifiMacAddress_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->wifiMacAddress_:Ljava/lang/String;

    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->unknownFieldData:Ljava/util/List;

    .line 131
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getBuild()Lcom/google/googlex/glass/common/proto/BuildNano$Build;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build_:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->deviceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->serialNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 170
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->deviceId_:Ljava/lang/String;

    .line 171
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 173
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 174
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->serialNumber_:Ljava/lang/String;

    .line 175
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build_:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    if-eqz v1, :cond_2

    .line 178
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build_:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    .line 179
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 181
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 182
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->sessionId_:Ljava/lang/String;

    .line 183
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 185
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 186
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->wifiMacAddress_:Ljava/lang/String;

    .line 187
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 189
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 190
    iput v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->cachedSize:I

    .line 191
    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->sessionId_:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->wifiMacAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBuild()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build_:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSerialNumber()Z
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSessionId()Z
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWifiMacAddress()Z
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 135
    const/16 v0, 0x11

    .line 136
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->deviceId_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 137
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->serialNumber_:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 138
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build_:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 139
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->sessionId_:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v3, v1

    .line 140
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->wifiMacAddress_:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    :goto_4
    add-int v0, v3, v1

    .line 141
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    :goto_5
    add-int v0, v1, v2

    .line 142
    return v0

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->serialNumber_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build_:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->hashCode()I

    move-result v1

    goto :goto_2

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->sessionId_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    .line 140
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->wifiMacAddress_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    .line 141
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_5
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 200
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 204
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->unknownFieldData:Ljava/util/List;

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    :sswitch_0
    return-object p0

    .line 215
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->deviceId_:Ljava/lang/String;

    .line 216
    iget v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    goto :goto_0

    .line 220
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->serialNumber_:Ljava/lang/String;

    .line 221
    iget v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    goto :goto_0

    .line 225
    :sswitch_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build_:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    if-nez v1, :cond_2

    .line 226
    new-instance v1, Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/BuildNano$Build;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build_:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    .line 228
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build_:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 232
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->sessionId_:Ljava/lang/String;

    .line 233
    iget v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    goto :goto_0

    .line 237
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->wifiMacAddress_:Ljava/lang/String;

    .line 238
    iget v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    goto :goto_0

    .line 200
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;

    move-result-object v0

    return-object v0
.end method

.method public setBuild(Lcom/google/googlex/glass/common/proto/BuildNano$Build;)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;
    .locals 1
    .param p1, "value"    # Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build_:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    .line 68
    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 20
    if-nez p1, :cond_0

    .line 21
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->deviceId_:Ljava/lang/String;

    .line 24
    iget v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    .line 25
    return-object p0
.end method

.method public setSerialNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->serialNumber_:Ljava/lang/String;

    .line 46
    iget v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    .line 47
    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->sessionId_:Ljava/lang/String;

    .line 87
    iget v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    .line 88
    return-object p0
.end method

.method public setWifiMacAddress(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 108
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->wifiMacAddress_:Ljava/lang/String;

    .line 109
    iget v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    .line 110
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 150
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 151
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->serialNumber_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build_:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    if-eqz v0, :cond_2

    .line 154
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build_:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 156
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 157
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->sessionId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 159
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 160
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->wifiMacAddress_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 162
    :cond_4
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 164
    return-void
.end method
