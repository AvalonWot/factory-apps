.class final Lcom/google/android/youtube/core/model/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/google/android/youtube/core/model/VmapAdBreak;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/google/android/youtube/core/model/VmapAdBreak;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/model/VmapAdBreak;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/google/android/youtube/core/model/VmapAdBreak;
    .locals 1

    .prologue
    .line 104
    new-array v0, p0, [Lcom/google/android/youtube/core/model/VmapAdBreak;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-static {p1}, Lcom/google/android/youtube/core/model/s;->a(Landroid/os/Parcel;)Lcom/google/android/youtube/core/model/VmapAdBreak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-static {p1}, Lcom/google/android/youtube/core/model/s;->a(I)[Lcom/google/android/youtube/core/model/VmapAdBreak;

    move-result-object v0

    return-object v0
.end method
