.class final Lcom/google/common/base/ae;
.super Lcom/google/common/base/AbstractIterator;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/base/ad;

.field private final b:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/base/ad;)V
    .locals 1

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/common/base/ae;->a:Lcom/google/common/base/ad;

    invoke-direct {p0}, Lcom/google/common/base/AbstractIterator;-><init>()V

    .line 225
    iget-object v0, p0, Lcom/google/common/base/ae;->a:Lcom/google/common/base/ad;

    iget-object v0, v0, Lcom/google/common/base/ad;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/base/ae;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 230
    :cond_0
    iget-object v0, p0, Lcom/google/common/base/ae;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/google/common/base/ae;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Optional;

    .line 232
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/base/ae;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
