.class public abstract Lcom/google/common/collect/FluentIterable;
.super Ljava/lang/Object;
.source "FluentIterable.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/FluentIterable$FromIterableFunction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final iterableDelegate:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Iterable",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 120
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterableDelegate:Lcom/google/common/base/Optional;

    .line 122
    return-void
.end method

.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    if-eq p0, p1, :cond_0

    .end local p1    # "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    :goto_0
    invoke-static {p1}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterableDelegate:Lcom/google/common/base/Optional;

    .line 127
    return-void

    .line 126
    .restart local p1    # "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static concat(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Iterable",
            "<+TT;>;>;)",
            "Lcom/google/common/collect/FluentIterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, "inputs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Iterable<+TT;>;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    new-instance v0, Lcom/google/common/collect/FluentIterable$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/FluentIterable$2;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Lcom/google/common/collect/FluentIterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->concat(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Lcom/google/common/collect/FluentIterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p2, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->concat(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Lcom/google/common/collect/FluentIterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p2, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p3, "d":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->concat(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs concat([Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Lcom/google/common/collect/FluentIterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "inputs":[Ljava/lang/Iterable;, "[Ljava/lang/Iterable<+TT;>;"
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->concat(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public static from(Lcom/google/common/collect/FluentIterable;)Lcom/google/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/FluentIterable",
            "<TE;>;)",
            "Lcom/google/common/collect/FluentIterable",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 176
    .local p0, "iterable":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/FluentIterable;

    return-object v0
.end method

.method public static from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Lcom/google/common/collect/FluentIterable",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    instance-of v0, p0, Lcom/google/common/collect/FluentIterable;

    if-eqz v0, :cond_0

    .line 142
    check-cast p0, Lcom/google/common/collect/FluentIterable;

    .line 141
    .end local p0    # "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    :goto_0
    return-object p0

    .line 143
    .restart local p0    # "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    :cond_0
    new-instance v0, Lcom/google/common/collect/FluentIterable$1;

    invoke-direct {v0, p0, p0}, Lcom/google/common/collect/FluentIterable$1;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static from([Ljava/lang/Object;)Lcom/google/common/collect/FluentIterable;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/FluentIterable",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method private getDelegate()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterableDelegate:Lcom/google/common/base/Optional;

    invoke-virtual {v0, p0}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public static of()Lcom/google/common/collect/FluentIterable;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/FluentIterable",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 293
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/FluentIterable;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;[TE;)",
            "Lcom/google/common/collect/FluentIterable",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "element":Ljava/lang/Object;, "TE;"
    .local p1, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Lists;->asList(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public static of([Ljava/lang/Object;)Lcom/google/common/collect/FluentIterable;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/FluentIterable",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 311
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final allMatch(Lcom/google/common/base/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<-TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 452
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->all(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public final anyMatch(Lcom/google/common/base/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<-TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->any(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public final append(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/FluentIterable",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "other":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/FluentIterable;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Lcom/google/common/collect/FluentIterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final varargs append([Ljava/lang/Object;)Lcom/google/common/collect/FluentIterable;
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/FluentIterable",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 405
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/FluentIterable;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Lcom/google/common/collect/FluentIterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 355
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final copyInto(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection",
            "<-TE;>;>(TC;)TC;"
        }
    .end annotation

    .prologue
    .line 795
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "TC;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v1

    .line 797
    .local v1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_1

    .line 798
    invoke-static {v1}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 804
    :cond_0
    return-object p1

    .line 800
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 801
    .local v0, "item":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final cycle()Lcom/google/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/FluentIterable",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->cycle(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Lcom/google/common/base/Predicate;)Lcom/google/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<-TE;>;)",
            "Lcom/google/common/collect/FluentIterable",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 415
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Ljava/lang/Class;)Lcom/google/common/collect/FluentIterable;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/common/collect/FluentIterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final first()Lcom/google/common/base/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 511
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 512
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    goto :goto_0
.end method

.method public final firstMatch(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<-TE;>;)",
            "Lcom/google/common/base/Optional",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 465
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->tryFind(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 836
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->get(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final index(Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function",
            "<-TE;TK;>;)",
            "Lcom/google/common/collect/ImmutableListMultimap",
            "<TK;TE;>;"
        }
    .end annotation

    .prologue
    .line 726
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "keyFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TE;TK;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Multimaps;->index(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 602
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final join(Lcom/google/common/base/Joiner;)Ljava/lang/String;
    .locals 1
    .param p1, "joiner"    # Lcom/google/common/base/Joiner;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 819
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-virtual {p1, p0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final last()Lcom/google/common/base/Optional;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 530
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v1

    .line 531
    .local v1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    instance-of v5, v1, Ljava/util/List;

    if-eqz v5, :cond_1

    move-object v3, v1

    .line 532
    check-cast v3, Ljava/util/List;

    .line 533
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 534
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v5

    .line 555
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :goto_0
    return-object v5

    .line 536
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v5

    goto :goto_0

    .line 538
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 539
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 540
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v5

    goto :goto_0

    .line 547
    :cond_2
    instance-of v5, v1, Ljava/util/SortedSet;

    if-eqz v5, :cond_3

    move-object v4, v1

    .line 548
    check-cast v4, Ljava/util/SortedSet;

    .line 549
    .local v4, "sortedSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-interface {v4}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v5

    goto :goto_0

    .line 553
    .end local v4    # "sortedSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 554
    .local v0, "current":Ljava/lang/Object;, "TE;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 555
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v5

    goto :goto_0
.end method

.method public final limit(I)Lcom/google/common/collect/FluentIterable;
    .locals 1
    .param p1, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/FluentIterable",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 593
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->limit(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 345
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->size(Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public final skip(I)Lcom/google/common/collect/FluentIterable;
    .locals 1
    .param p1, "numberToSkip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/FluentIterable",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 578
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->skip(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final toArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;)[TE;"
        }
    .end annotation

    .prologue
    .line 779
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->toArray(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toList()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 617
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final toMap(Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function",
            "<-TE;TV;>;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TE;TV;>;"
        }
    .end annotation

    .prologue
    .line 704
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "valueFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TE;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->toMap(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public final toMultiset()Lcom/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 682
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public final toSet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 650
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final toSortedList(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 635
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-static {p1}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final toSortedSet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 668
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final transform(Lcom/google/common/base/Function;)Lcom/google/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function",
            "<-TE;TT;>;)",
            "Lcom/google/common/collect/FluentIterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TE;TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->transform(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public transformAndConcat(Lcom/google/common/base/Function;)Lcom/google/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function",
            "<-TE;+",
            "Ljava/lang/Iterable",
            "<+TT;>;>;)",
            "Lcom/google/common/collect/FluentIterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 497
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TE;+Ljava/lang/Iterable<+TT;>;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/FluentIterable;->transform(Lcom/google/common/base/Function;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->concat(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Lcom/google/common/collect/FluentIterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final uniqueIndex(Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function",
            "<-TE;TK;>;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TE;>;"
        }
    .end annotation

    .prologue
    .line 762
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "keyFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TE;TK;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->uniqueIndex(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
