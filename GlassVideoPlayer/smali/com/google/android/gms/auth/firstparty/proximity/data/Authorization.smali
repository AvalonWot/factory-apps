.class public Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/auth/firstparty/proximity/data/a;


# instance fields
.field final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/data/a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->a:Lcom/google/android/gms/auth/firstparty/proximity/data/a;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->b:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->c:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->d:Ljava/lang/String;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->e:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->e:[B

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->e:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v1, v1, 0x20f

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->e:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/proximity/data/a;->a(Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;Landroid/os/Parcel;I)V

    return-void
.end method
