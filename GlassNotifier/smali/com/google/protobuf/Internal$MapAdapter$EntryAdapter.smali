.class Lcom/google/protobuf/Internal$MapAdapter$EntryAdapter;
.super Ljava/lang/Object;
.source "Internal.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Internal$MapAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final realEntry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TRealValue;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/protobuf/Internal$MapAdapter;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Internal$MapAdapter;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TRealValue;>;)V"
        }
    .end annotation

    .prologue
    .line 579
    .local p0, "this":Lcom/google/protobuf/Internal$MapAdapter$EntryAdapter;, "Lcom/google/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>.EntryAdapter;"
    .local p2, "realEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TRealValue;>;"
    iput-object p1, p0, Lcom/google/protobuf/Internal$MapAdapter$EntryAdapter;->this$0:Lcom/google/protobuf/Internal$MapAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    iput-object p2, p0, Lcom/google/protobuf/Internal$MapAdapter$EntryAdapter;->realEntry:Ljava/util/Map$Entry;

    .line 581
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 585
    .local p0, "this":Lcom/google/protobuf/Internal$MapAdapter$EntryAdapter;, "Lcom/google/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>.EntryAdapter;"
    iget-object v0, p0, Lcom/google/protobuf/Internal$MapAdapter$EntryAdapter;->realEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 590
    .local p0, "this":Lcom/google/protobuf/Internal$MapAdapter$EntryAdapter;, "Lcom/google/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>.EntryAdapter;"
    iget-object v0, p0, Lcom/google/protobuf/Internal$MapAdapter$EntryAdapter;->this$0:Lcom/google/protobuf/Internal$MapAdapter;

    invoke-static {v0}, Lcom/google/protobuf/Internal$MapAdapter;->access$000(Lcom/google/protobuf/Internal$MapAdapter;)Lcom/google/protobuf/Internal$MapAdapter$Converter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/Internal$MapAdapter$EntryAdapter;->realEntry:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$MapAdapter$Converter;->doForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 595
    .local p0, "this":Lcom/google/protobuf/Internal$MapAdapter$EntryAdapter;, "Lcom/google/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>.EntryAdapter;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/google/protobuf/Internal$MapAdapter$EntryAdapter;->realEntry:Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/google/protobuf/Internal$MapAdapter$EntryAdapter;->this$0:Lcom/google/protobuf/Internal$MapAdapter;

    .line 596
    invoke-static {v2}, Lcom/google/protobuf/Internal$MapAdapter;->access$000(Lcom/google/protobuf/Internal$MapAdapter;)Lcom/google/protobuf/Internal$MapAdapter$Converter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/google/protobuf/Internal$MapAdapter$Converter;->doBackward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 595
    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 597
    .local v0, "oldValue":Ljava/lang/Object;, "TRealValue;"
    if-nez v0, :cond_0

    .line 598
    const/4 v1, 0x0

    .line 600
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/Internal$MapAdapter$EntryAdapter;->this$0:Lcom/google/protobuf/Internal$MapAdapter;

    invoke-static {v1}, Lcom/google/protobuf/Internal$MapAdapter;->access$000(Lcom/google/protobuf/Internal$MapAdapter;)Lcom/google/protobuf/Internal$MapAdapter$Converter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$MapAdapter$Converter;->doForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method