.class Lcom/google/glass/widget/FastScrollOverlay$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/FastScrollOverlay;

.field final synthetic val$itemView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/FastScrollOverlay;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/glass/widget/FastScrollOverlay$1;->this$0:Lcom/google/glass/widget/FastScrollOverlay;

    iput-object p2, p0, Lcom/google/glass/widget/FastScrollOverlay$1;->val$itemView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/glass/widget/FastScrollOverlay$1;->this$0:Lcom/google/glass/widget/FastScrollOverlay;

    iget-object v1, p0, Lcom/google/glass/widget/FastScrollOverlay$1;->val$itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/glass/widget/FastScrollOverlay;->access$000(Lcom/google/glass/widget/FastScrollOverlay;Landroid/view/View;)V

    .line 244
    return-void
.end method