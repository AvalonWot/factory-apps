.class Lcom/google/android/gms/common/api/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/a;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xw:Lcom/google/android/gms/common/api/a;

.field final synthetic xx:Lcom/google/android/gms/common/api/Api$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/Api$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/a$4;->xw:Lcom/google/android/gms/common/api/a;

    iput-object p2, p0, Lcom/google/android/gms/common/api/a$4;->xx:Lcom/google/android/gms/common/api/Api$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$4;->xw:Lcom/google/android/gms/common/api/a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a;->a(Lcom/google/android/gms/common/api/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$4;->xw:Lcom/google/android/gms/common/api/a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a;->i(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$4;->xx:Lcom/google/android/gms/common/api/Api$b;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$b;->getPriority()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a$4;->xw:Lcom/google/android/gms/common/api/a;

    invoke-static {v1}, Lcom/google/android/gms/common/api/a;->j(Lcom/google/android/gms/common/api/a;)I

    move-result v1

    if-ge v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$4;->xw:Lcom/google/android/gms/common/api/a;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/a;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$4;->xw:Lcom/google/android/gms/common/api/a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/a$4;->xx:Lcom/google/android/gms/common/api/Api$b;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$b;->getPriority()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/a;->c(Lcom/google/android/gms/common/api/a;I)I

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$4;->xw:Lcom/google/android/gms/common/api/a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a;->d(Lcom/google/android/gms/common/api/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$4;->xw:Lcom/google/android/gms/common/api/a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a;->a(Lcom/google/android/gms/common/api/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a$4;->xw:Lcom/google/android/gms/common/api/a;

    invoke-static {v1}, Lcom/google/android/gms/common/api/a;->a(Lcom/google/android/gms/common/api/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method