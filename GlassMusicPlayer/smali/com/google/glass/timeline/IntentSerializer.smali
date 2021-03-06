.class public Lcom/google/glass/timeline/IntentSerializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY_PLACE_HOLDER:Ljava/lang/String; = "!%e"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBytes([B)Landroid/content/Intent;
    .locals 5

    .prologue
    .line 45
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 46
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 48
    invoke-static {v1}, Lcom/google/glass/timeline/IntentSerializer;->readUtf(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-static {v1}, Lcom/google/glass/timeline/IntentSerializer;->readUtf(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 53
    :cond_0
    invoke-static {v1}, Lcom/google/glass/timeline/IntentSerializer;->readUtf(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    :cond_1
    invoke-static {v1}, Lcom/google/glass/timeline/IntentSerializer;->readUtf(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-static {v1}, Lcom/google/glass/timeline/IntentSerializer;->readUtf(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-static {v1}, Lcom/google/glass/timeline/IntentSerializer;->readUtf(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 61
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 63
    :cond_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    return-object v0
.end method

.method private static readUtf(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string v1, "!%e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 81
    :cond_0
    return-object v0
.end method

.method public static toBytes(Landroid/content/Intent;)[B
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 29
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 30
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 31
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/glass/timeline/IntentSerializer;->writeUtf(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/google/glass/timeline/IntentSerializer;->writeUtf(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/glass/timeline/IntentSerializer;->writeUtf(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/glass/timeline/IntentSerializer;->writeUtf(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/google/glass/timeline/IntentSerializer;->writeUtf(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_2
    invoke-static {v3, v1}, Lcom/google/glass/timeline/IntentSerializer;->writeUtf(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 38
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 36
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method private static writeUtf(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "!%e"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string v0, "!%e"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 72
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0
.end method
