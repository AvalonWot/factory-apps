.class public Lcom/google/android/gms/fitness/request/SessionStopRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/google/android/gms/fitness/request/r;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/r;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/SessionStopRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/google/android/gms/fitness/request/SessionStopRequest;->a:I

    .line 51
    iput-object p2, p0, Lcom/google/android/gms/fitness/request/SessionStopRequest;->b:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/google/android/gms/fitness/request/SessionStopRequest;->c:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionStopRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionStopRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method final c()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/google/android/gms/fitness/request/SessionStopRequest;->a:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 111
    if-eq p1, p0, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/request/SessionStopRequest;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/request/SessionStopRequest;

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionStopRequest;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/SessionStopRequest;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionStopRequest;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/SessionStopRequest;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionStopRequest;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionStopRequest;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 126
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionStopRequest;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "identifier"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionStopRequest;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 143
    invoke-static {p0, p1}, Lcom/google/android/gms/fitness/request/r;->a(Lcom/google/android/gms/fitness/request/SessionStopRequest;Landroid/os/Parcel;)V

    .line 144
    return-void
.end method
