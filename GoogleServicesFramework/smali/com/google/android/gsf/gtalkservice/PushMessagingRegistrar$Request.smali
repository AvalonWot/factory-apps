.class public abstract Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;
.super Ljava/lang/Object;
.source "PushMessagingRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Request"
.end annotation


# instance fields
.field mAppPackage:Ljava/lang/String;

.field mUid:I

.field mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "appPackage"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;->this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;->mUrl:Ljava/lang/String;

    .line 245
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;->mAppPackage:Ljava/lang/String;

    .line 246
    return-void
.end method
