.class final Lcom/google/android/gms/fitness/b/b/ac;
.super Lcom/google/c/c/b;
.source "SourceFile"


# instance fields
.field a:Lcom/google/android/gms/fitness/b/b/e;

.field final synthetic b:Lcom/google/android/gms/fitness/b/b/e;

.field final synthetic c:Lcom/google/c/c/da;

.field final synthetic d:Lcom/google/android/gms/fitness/b/b/aa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/b/b/aa;Lcom/google/android/gms/fitness/b/b/e;Lcom/google/c/c/da;)V
    .locals 1

    .prologue
    .line 534
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/b/ac;->d:Lcom/google/android/gms/fitness/b/b/aa;

    iput-object p2, p0, Lcom/google/android/gms/fitness/b/b/ac;->b:Lcom/google/android/gms/fitness/b/b/e;

    iput-object p3, p0, Lcom/google/android/gms/fitness/b/b/ac;->c:Lcom/google/c/c/da;

    invoke-direct {p0}, Lcom/google/c/c/b;-><init>()V

    .line 535
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ac;->b:Lcom/google/android/gms/fitness/b/b/e;

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/b/ac;->a:Lcom/google/android/gms/fitness/b/b/e;

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 534
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ac;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-static {}, Lcom/google/android/gms/fitness/b/b/e;->d()Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/ac;->b()Ljava/lang/Object;

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ac;->c:Lcom/google/c/c/da;

    invoke-interface {v0}, Lcom/google/c/c/da;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ac;->c:Lcom/google/c/c/da;

    invoke-interface {v0}, Lcom/google/c/c/da;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/u;

    iget-object v2, v0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    iget-object v3, p0, Lcom/google/android/gms/fitness/b/b/ac;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/b/b/u;->a(Lcom/google/android/gms/fitness/b/b/e;Lcom/google/android/gms/fitness/b/b/e;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/b/ac;->a:Lcom/google/android/gms/fitness/b/b/e;

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ac;->d:Lcom/google/android/gms/fitness/b/b/aa;

    invoke-static {v0}, Lcom/google/android/gms/fitness/b/b/aa;->a(Lcom/google/android/gms/fitness/b/b/aa;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    iget-object v3, v2, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/b/b/e;->a(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-static {v0, v2}, Lcom/google/c/c/cd;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ac;->d:Lcom/google/android/gms/fitness/b/b/aa;

    invoke-static {v0}, Lcom/google/android/gms/fitness/b/b/aa;->a(Lcom/google/android/gms/fitness/b/b/aa;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-static {}, Lcom/google/android/gms/fitness/b/b/e;->d()Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/b/b/e;->a(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/fitness/b/b/e;->d()Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/b/ac;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/b/b/u;->a(Lcom/google/android/gms/fitness/b/b/e;Lcom/google/android/gms/fitness/b/b/e;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/fitness/b/b/e;->d()Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/fitness/b/b/ac;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-static {}, Lcom/google/android/gms/fitness/b/b/e;->d()Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/c/c/cd;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/ac;->b()Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0
.end method
