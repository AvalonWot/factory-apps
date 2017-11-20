.class public final Lcom/google/common/net/HostAndPort;
.super Ljava/lang/Object;
.source "HostAndPort.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field private static final NO_PORT:I = -0x1

.field private static final serialVersionUID:J


# instance fields
.field private final hasBracketlessColons:Z

.field private final host:Ljava/lang/String;

.field private final port:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "hasBracketlessColons"    # Z

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    .line 79
    iput p2, p0, Lcom/google/common/net/HostAndPort;->port:I

    .line 80
    iput-boolean p3, p0, Lcom/google/common/net/HostAndPort;->hasBracketlessColons:Z

    .line 81
    return-void
.end method

.method public static fromHost(Ljava/lang/String;)Lcom/google/common/net/HostAndPort;
    .locals 3
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-static {p0}, Lcom/google/common/net/HostAndPort;->fromString(Ljava/lang/String;)Lcom/google/common/net/HostAndPort;

    move-result-object v0

    .line 162
    .local v0, "parsedHost":Lcom/google/common/net/HostAndPort;
    invoke-virtual {v0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "Host has a port: %s"

    invoke-static {v1, v2, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 163
    return-object v0

    .line 162
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static fromParts(Ljava/lang/String;I)Lcom/google/common/net/HostAndPort;
    .locals 4
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .prologue
    .line 143
    invoke-static {p1}, Lcom/google/common/net/HostAndPort;->isValidPort(I)Z

    move-result v1

    const-string v2, "Port out of range: %s"

    invoke-static {v1, v2, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 144
    invoke-static {p0}, Lcom/google/common/net/HostAndPort;->fromString(Ljava/lang/String;)Lcom/google/common/net/HostAndPort;

    move-result-object v0

    .line 145
    .local v0, "parsedHost":Lcom/google/common/net/HostAndPort;
    invoke-virtual {v0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "Host has a port: %s"

    invoke-static {v1, v2, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 146
    new-instance v1, Lcom/google/common/net/HostAndPort;

    iget-object v2, v0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    iget-boolean v3, v0, Lcom/google/common/net/HostAndPort;->hasBracketlessColons:Z

    invoke-direct {v1, v2, p1, v3}, Lcom/google/common/net/HostAndPort;-><init>(Ljava/lang/String;IZ)V

    return-object v1

    .line 145
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/common/net/HostAndPort;
    .locals 11
    .param p0, "hostPortString"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x3a

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 177
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const/4 v6, 0x0

    .line 180
    .local v6, "portString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 182
    .local v2, "hasBracketlessColons":Z
    const-string v9, "["

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 183
    invoke-static {p0}, Lcom/google/common/net/HostAndPort;->getHostAndPortFromBracketedHost(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, "hostAndPort":[Ljava/lang/String;
    aget-object v3, v4, v8

    .line 185
    .local v3, "host":Ljava/lang/String;
    aget-object v6, v4, v7

    .line 199
    .end local v4    # "hostAndPort":[Ljava/lang/String;
    :goto_0
    const/4 v5, -0x1

    .line 200
    .local v5, "port":I
    invoke-static {v6}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 203
    const-string v9, "+"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    :goto_1
    const-string v8, "Unparseable port number: %s"

    invoke-static {v7, v8, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 205
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 209
    invoke-static {v5}, Lcom/google/common/net/HostAndPort;->isValidPort(I)Z

    move-result v7

    const-string v8, "Port number out of range: %s"

    invoke-static {v7, v8, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 212
    :cond_0
    new-instance v7, Lcom/google/common/net/HostAndPort;

    invoke-direct {v7, v3, v5, v2}, Lcom/google/common/net/HostAndPort;-><init>(Ljava/lang/String;IZ)V

    return-object v7

    .line 187
    .end local v3    # "host":Ljava/lang/String;
    .end local v5    # "port":I
    :cond_1
    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 188
    .local v0, "colonPos":I
    if-ltz v0, :cond_2

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {p0, v10, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 190
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 191
    .restart local v3    # "host":Ljava/lang/String;
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 194
    .end local v3    # "host":Ljava/lang/String;
    :cond_2
    move-object v3, p0

    .line 195
    .restart local v3    # "host":Ljava/lang/String;
    if-ltz v0, :cond_3

    move v2, v7

    :goto_2
    goto :goto_0

    :cond_3
    move v2, v8

    goto :goto_2

    .end local v0    # "colonPos":I
    .restart local v5    # "port":I
    :cond_4
    move v7, v8

    .line 203
    goto :goto_1

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Unparseable port number: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-direct {v8, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_5
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private static getHostAndPortFromBracketedHost(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p0, "hostPortString"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x3a

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, "colonIndex":I
    const/4 v0, 0x0

    .line 226
    .local v0, "closeBracketIndex":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x5b

    if-ne v4, v7, :cond_0

    move v4, v5

    :goto_0
    const-string v7, "Bracketed host-port string must start with a bracket: %s"

    .line 225
    invoke-static {v4, v7, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 229
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 230
    const/16 v4, 0x5d

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 231
    const/4 v4, -0x1

    if-le v1, v4, :cond_1

    if-le v0, v1, :cond_1

    move v4, v5

    :goto_1
    const-string v7, "Invalid bracketed host/port: %s"

    invoke-static {v4, v7, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 236
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "host":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v4, v7, :cond_2

    .line 238
    new-array v4, v8, [Ljava/lang/String;

    aput-object v2, v4, v6

    const-string v6, ""

    aput-object v6, v4, v5

    .line 250
    :goto_2
    return-object v4

    .end local v2    # "host":Ljava/lang/String;
    :cond_0
    move v4, v6

    .line 226
    goto :goto_0

    :cond_1
    move v4, v6

    .line 231
    goto :goto_1

    .line 240
    .restart local v2    # "host":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v0, 0x1

    .line 241
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_3

    move v4, v5

    :goto_3
    const-string v7, "Only a colon may follow a close bracket: %s"

    .line 240
    invoke-static {v4, v7, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 244
    add-int/lit8 v3, v0, 0x2

    .local v3, "i":I
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 246
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    const-string v7, "Port must be numeric: %s"

    .line 245
    invoke-static {v4, v7, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 244
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v3    # "i":I
    :cond_3
    move v4, v6

    .line 241
    goto :goto_3

    .line 250
    .restart local v3    # "i":I
    :cond_4
    new-array v4, v8, [Ljava/lang/String;

    aput-object v2, v4, v6

    add-int/lit8 v6, v0, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_2
.end method

.method private static isValidPort(I)Z
    .locals 1
    .param p0, "port"    # I

    .prologue
    .line 327
    if-ltz p0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 292
    if-ne p0, p1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v1

    .line 295
    :cond_1
    instance-of v3, p1, Lcom/google/common/net/HostAndPort;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 296
    check-cast v0, Lcom/google/common/net/HostAndPort;

    .line 297
    .local v0, "that":Lcom/google/common/net/HostAndPort;
    iget-object v3, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/google/common/net/HostAndPort;->port:I

    iget v4, v0, Lcom/google/common/net/HostAndPort;->port:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/google/common/net/HostAndPort;->hasBracketlessColons:Z

    iget-boolean v4, v0, Lcom/google/common/net/HostAndPort;->hasBracketlessColons:Z

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "that":Lcom/google/common/net/HostAndPort;
    :cond_3
    move v1, v2

    .line 301
    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getHostText()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 120
    iget v0, p0, Lcom/google/common/net/HostAndPort;->port:I

    return v0
.end method

.method public getPortOrDefault(I)I
    .locals 1
    .param p1, "defaultPort"    # I

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/google/common/net/HostAndPort;->port:I

    .end local p1    # "defaultPort":I
    :cond_0
    return p1
.end method

.method public hasPort()Z
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/google/common/net/HostAndPort;->port:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 306
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/net/HostAndPort;->port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/common/net/HostAndPort;->hasBracketlessColons:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public requireBracketsForIPv6()Lcom/google/common/net/HostAndPort;
    .locals 3

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/google/common/net/HostAndPort;->hasBracketlessColons:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Possible bracketless IPv6 literal: %s"

    iget-object v2, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 287
    return-object p0

    .line 286
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x3a

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 314
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 315
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/common/net/HostAndPort;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 317
    :cond_1
    iget-object v1, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public withDefaultPort(I)Lcom/google/common/net/HostAndPort;
    .locals 3
    .param p1, "defaultPort"    # I

    .prologue
    .line 264
    invoke-static {p1}, Lcom/google/common/net/HostAndPort;->isValidPort(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 265
    invoke-virtual {p0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/common/net/HostAndPort;->port:I

    if-ne v0, p1, :cond_1

    .line 268
    .end local p0    # "this":Lcom/google/common/net/HostAndPort;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/google/common/net/HostAndPort;
    :cond_1
    new-instance v0, Lcom/google/common/net/HostAndPort;

    iget-object v1, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/common/net/HostAndPort;->hasBracketlessColons:Z

    invoke-direct {v0, v1, p1, v2}, Lcom/google/common/net/HostAndPort;-><init>(Ljava/lang/String;IZ)V

    move-object p0, v0

    goto :goto_0
.end method
