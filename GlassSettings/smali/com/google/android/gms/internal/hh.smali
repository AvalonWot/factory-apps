.class public final Lcom/google/android/gms/internal/hh;
.super Ljava/lang/Object;


# static fields
.field public static final XP:[I

.field public static final XQ:[J

.field public static final XR:[F

.field public static final XS:[D

.field public static final XT:[Z

.field public static final XU:[Ljava/lang/String;

.field public static final XV:[[B

.field public static final XW:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/hh;->XP:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/hh;->XQ:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/hh;->XR:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/hh;->XS:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/hh;->XT:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/hh;->XU:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/hh;->XV:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/hh;->XW:[B

    return-void
.end method

.method public static final b(Lcom/google/android/gms/internal/gw;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gw;->getPosition()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gw;->ex(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gw;->iI()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gw;->ex(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gw;->eB(I)V

    return v0
.end method

.method static eR(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static eS(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method static m(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method
