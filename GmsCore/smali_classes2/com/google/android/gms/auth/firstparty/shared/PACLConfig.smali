.class public Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/shared/h;


# instance fields
.field final a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/h;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/shared/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/h;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;->a:I

    .line 30
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;->b:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;->c:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;->a:I

    .line 36
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;->b:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;->c:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/firstparty/shared/h;->a(Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;Landroid/os/Parcel;)V

    .line 46
    return-void
.end method
