.class Lcom/google/android/apps/lightcycle/HelpAndTipsActivity$2;
.super Ljava/lang/Object;
.source "HelpAndTipsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity$2;->this$0:Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity$2;->this$0:Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->access$100(Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;)V

    .line 65
    return-void
.end method