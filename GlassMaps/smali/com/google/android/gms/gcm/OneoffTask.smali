.class public Lcom/google/android/gms/gcm/OneoffTask;
.super Lcom/google/android/gms/gcm/Task;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/gcm/c;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/gcm/OneoffTask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Lcom/google/android/gms/gcm/Task;-><init>()V

    iput-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask;->b:J

    iput-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask;->a:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/Task;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask;->a:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask;->b:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/gms/gcm/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/OneoffTask;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/gcm/Task;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
