.class final Lcom/google/common/collect/oc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/w;


# instance fields
.field final synthetic a:Lcom/google/common/collect/TreeBasedTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeBasedTable;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/google/common/collect/oc;->a:Lcom/google/common/collect/TreeBasedTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Map;)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 356
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 353
    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lcom/google/common/collect/oc;->a(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
