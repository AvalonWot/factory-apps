.class public final Lcom/google/android/gtalkservice/ConnectionError;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lcom/google/android/gtalkservice/a;

    invoke-direct {v0}, Lcom/google/android/gtalkservice/a;-><init>()V

    sput-object v0, Lcom/google/android/gtalkservice/ConnectionError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gtalkservice/ConnectionError;->a:I

    .line 73
    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    packed-switch p0, :pswitch_data_0

    .line 144
    :pswitch_0
    const-string v0, "NO ERROR"

    :goto_0
    return-object v0

    .line 117
    :pswitch_1
    const-string v0, "NO NETWORK"

    goto :goto_0

    .line 120
    :pswitch_2
    const-string v0, "CONNECTION FAILED"

    goto :goto_0

    .line 123
    :pswitch_3
    const-string v0, "UNKNOWN HOST"

    goto :goto_0

    .line 126
    :pswitch_4
    const-string v0, "AUTH FAILED"

    goto :goto_0

    .line 129
    :pswitch_5
    const-string v0, "AUTH EXPIRED"

    goto :goto_0

    .line 132
    :pswitch_6
    const-string v0, "HEARTBEAT TIMEOUT"

    goto :goto_0

    .line 135
    :pswitch_7
    const-string v0, "SERVER FAILED"

    goto :goto_0

    .line 138
    :pswitch_8
    const-string v0, "SERVER REJECT - RATE LIMIT"

    goto :goto_0

    .line 141
    :pswitch_9
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionError;->a:I

    invoke-static {v0}, Lcom/google/android/gtalkservice/ConnectionError;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionError;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    return-void
.end method
