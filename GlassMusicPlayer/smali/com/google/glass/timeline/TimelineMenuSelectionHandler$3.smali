.class Lcom/google/glass/timeline/TimelineMenuSelectionHandler$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/timeline/TimelineMenuSelectionHandler$OnConfirmedListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

.field final synthetic val$updatedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field final synthetic val$userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$3;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$3;->val$updatedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$3;->val$userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmed(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 3

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$3;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$3;->val$updatedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$3;->val$userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->notifyOnCustomMenuSelected(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V

    .line 634
    return-void
.end method

.method public onDismissed(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 0

    .prologue
    .line 637
    return-void
.end method
