.class Lcom/google/glass/userevent/UserEventPreferences$Provider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aw;


# instance fields
.field final synthetic this$0:Lcom/google/glass/userevent/UserEventPreferences$Provider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/userevent/UserEventPreferences$Provider;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/glass/userevent/UserEventPreferences$Provider$1;->this$0:Lcom/google/glass/userevent/UserEventPreferences$Provider;

    iput-object p2, p0, Lcom/google/glass/userevent/UserEventPreferences$Provider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/userevent/UserEventPreferences;
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventPreferences$Provider$1;->val$context:Landroid/content/Context;

    const-string v1, "UserEventPrefs"

    const/4 v2, 0x0

    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 145
    new-instance v1, Lcom/google/glass/userevent/UserEventPreferences;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/glass/userevent/UserEventPreferences;-><init>(Landroid/content/SharedPreferences;Lcom/google/glass/userevent/UserEventPreferences$1;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/glass/userevent/UserEventPreferences$Provider$1;->get()Lcom/google/glass/userevent/UserEventPreferences;

    move-result-object v0

    return-object v0
.end method