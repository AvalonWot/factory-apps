.class abstract Lcom/google/common/collect/kt;
.super Lcom/google/common/collect/ma;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 915
    invoke-direct {p0}, Lcom/google/common/collect/ma;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/common/collect/kp;
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 920
    invoke-virtual {p0}, Lcom/google/common/collect/kt;->a()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kp;->clear()V

    .line 921
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/google/common/collect/kt;->a()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/kp;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 930
    invoke-virtual {p0}, Lcom/google/common/collect/kt;->a()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/kp;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 935
    invoke-virtual {p0}, Lcom/google/common/collect/kt;->a()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kp;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 940
    new-instance v0, Lcom/google/common/collect/ku;

    invoke-virtual {p0}, Lcom/google/common/collect/kt;->a()Lcom/google/common/collect/kp;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/kp;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ku;-><init>(Lcom/google/common/collect/kt;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 951
    invoke-virtual {p0}, Lcom/google/common/collect/kt;->a()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/kp;->count(Ljava/lang/Object;)I

    move-result v0

    .line 952
    if-lez v0, :cond_0

    .line 953
    invoke-virtual {p0}, Lcom/google/common/collect/kt;->a()Lcom/google/common/collect/kp;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/google/common/collect/kp;->remove(Ljava/lang/Object;I)I

    .line 954
    const/4 v0, 0x1

    .line 956
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 961
    invoke-virtual {p0}, Lcom/google/common/collect/kt;->a()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kp;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
