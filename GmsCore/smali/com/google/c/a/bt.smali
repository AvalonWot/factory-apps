.class abstract Lcom/google/c/a/bt;
.super Lcom/google/c/a/bi;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/c/a/bi;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/c/a/bi;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method
