.class Lcom/google/glass/ongoing/OngoingActivityManager$2;
.super Ljava/lang/Object;
.source "OngoingActivityManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/ongoing/OngoingActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/ongoing/OngoingActivityManager;


# direct methods
.method constructor <init>(Lcom/google/glass/ongoing/OngoingActivityManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/ongoing/OngoingActivityManager;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/glass/ongoing/OngoingActivityManager$2;->this$0:Lcom/google/glass/ongoing/OngoingActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager$2;->this$0:Lcom/google/glass/ongoing/OngoingActivityManager;

    invoke-static {v0, p1, p2}, Lcom/google/glass/ongoing/OngoingActivityManager;->access$100(Lcom/google/glass/ongoing/OngoingActivityManager;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 112
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager$2;->this$0:Lcom/google/glass/ongoing/OngoingActivityManager;

    invoke-static {v0}, Lcom/google/glass/ongoing/OngoingActivityManager;->access$000(Lcom/google/glass/ongoing/OngoingActivityManager;)V

    .line 108
    return-void
.end method