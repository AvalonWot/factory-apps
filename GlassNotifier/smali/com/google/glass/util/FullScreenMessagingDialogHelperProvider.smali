.class public Lcom/google/glass/util/FullScreenMessagingDialogHelperProvider;
.super Lcom/google/glass/inject/Provider;
.source "FullScreenMessagingDialogHelperProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/util/FullScreenMessagingDialogHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/util/FullScreenMessagingDialogHelperProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/glass/util/FullScreenMessagingDialogHelperProvider;

    invoke-direct {v0}, Lcom/google/glass/util/FullScreenMessagingDialogHelperProvider;-><init>()V

    sput-object v0, Lcom/google/glass/util/FullScreenMessagingDialogHelperProvider;->instance:Lcom/google/glass/util/FullScreenMessagingDialogHelperProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    .line 19
    return-void
.end method

.method public static getInstance()Lcom/google/glass/util/FullScreenMessagingDialogHelperProvider;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/glass/util/FullScreenMessagingDialogHelperProvider;->instance:Lcom/google/glass/util/FullScreenMessagingDialogHelperProvider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Lcom/google/glass/util/FullScreenMessagingDialogHelper;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    new-instance v0, Lcom/google/glass/util/FullScreenMessagingDialogHelperProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/util/FullScreenMessagingDialogHelperProvider$1;-><init>(Lcom/google/glass/util/FullScreenMessagingDialogHelperProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/util/FullScreenMessagingDialogHelperProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/FullScreenMessagingDialogHelper;

    return-object v0
.end method
