.class public Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/auth/firstparty/dataservice/n;


# instance fields
.field final b:I

.field public final c:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/n;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/n;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/n;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/firstparty/shared/AppDescription;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;->b:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;->c:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/n;->a(Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;Landroid/os/Parcel;I)V

    return-void
.end method
