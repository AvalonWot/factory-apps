.class Lcom/google/glass/logging/UserFeedbackActivity$1$2;
.super Ljava/lang/Object;
.source "UserFeedbackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/UserFeedbackActivity$1;->onDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/logging/UserFeedbackActivity$1;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/UserFeedbackActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/logging/UserFeedbackActivity$1;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/google/glass/logging/UserFeedbackActivity$1$2;->this$1:Lcom/google/glass/logging/UserFeedbackActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity$1$2;->this$1:Lcom/google/glass/logging/UserFeedbackActivity$1;

    iget-object v0, v0, Lcom/google/glass/logging/UserFeedbackActivity$1;->this$0:Lcom/google/glass/logging/UserFeedbackActivity;

    invoke-static {v0}, Lcom/google/glass/logging/UserFeedbackActivity;->access$400(Lcom/google/glass/logging/UserFeedbackActivity;)V

    .line 357
    return-void
.end method
