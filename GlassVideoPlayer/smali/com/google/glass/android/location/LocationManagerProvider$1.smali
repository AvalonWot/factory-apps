.class Lcom/google/glass/android/location/LocationManagerProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/av;


# instance fields
.field final synthetic this$0:Lcom/google/glass/android/location/LocationManagerProvider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/android/location/LocationManagerProvider;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/glass/android/location/LocationManagerProvider$1;->this$0:Lcom/google/glass/android/location/LocationManagerProvider;

    iput-object p2, p0, Lcom/google/glass/android/location/LocationManagerProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/location/LocationManager;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/android/location/LocationManagerProvider$1;->val$context:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/glass/android/location/LocationManagerProvider$1;->get()Landroid/location/LocationManager;

    move-result-object v0

    return-object v0
.end method
