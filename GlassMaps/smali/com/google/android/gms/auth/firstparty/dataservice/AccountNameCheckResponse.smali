.class public Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/auth/firstparty/dataservice/o;


# instance fields
.field final b:I

.field c:Ljava/lang/String;

.field d:Ljava/util/List;

.field e:Ljava/lang/String;

.field f:Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/o;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/o;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->a:Lcom/google/android/gms/auth/firstparty/dataservice/o;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->b:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->f:Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/o;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;Landroid/os/Parcel;I)V

    return-void
.end method
