.class Lcom/google/android/gms/internal/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/n;


# instance fields
.field private kC:Lcom/google/android/gms/internal/gx;

.field private kD:[B

.field private final kE:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/p;->kE:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/p;->reset()V

    return-void
.end method


# virtual methods
.method public b(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/p;->kC:Lcom/google/android/gms/internal/gx;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/gx;->b(IJ)V

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/p;->kC:Lcom/google/android/gms/internal/gx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/gx;->b(ILjava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/p;->kE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/p;->kD:[B

    iget-object v0, p0, Lcom/google/android/gms/internal/p;->kD:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->q([B)Lcom/google/android/gms/internal/gx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/p;->kC:Lcom/google/android/gms/internal/gx;

    return-void
.end method

.method public y()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/p;->kC:Lcom/google/android/gms/internal/gx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gx;->iW()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/p;->kD:[B

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/p;->kD:[B

    array-length v1, v1

    sub-int v0, v1, v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/google/android/gms/internal/p;->kD:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
