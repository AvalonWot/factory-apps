.class Lcom/google/glass/logging/LoggingApplication$1;
.super Ljava/lang/Object;
.source "LoggingApplication.java"

# interfaces
.implements Lcom/google/android/glass/logging/EventLogObserver$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/LoggingApplication;->setupFrameworkEventAggregation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/LoggingApplication;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/LoggingApplication;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/logging/LoggingApplication;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/glass/logging/LoggingApplication$1;->this$0:Lcom/google/glass/logging/LoggingApplication;

    iput-object p2, p0, Lcom/google/glass/logging/LoggingApplication$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferFullEvent()V
    .locals 3

    .prologue
    .line 102
    invoke-static {}, Lcom/google/glass/logging/LoggingApplication;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Framework events log was full."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/google/glass/logging/LoggingApplication$1;->this$0:Lcom/google/glass/logging/LoggingApplication;

    iget-object v1, p0, Lcom/google/glass/logging/LoggingApplication$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/glass/logging/LoggingApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 104
    return-void
.end method
