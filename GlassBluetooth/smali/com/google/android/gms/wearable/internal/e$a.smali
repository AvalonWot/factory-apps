.class public Lcom/google/android/gms/wearable/internal/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/wearable/ConnectionApi$GetConfigResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final VY:Lcom/google/android/gms/wearable/ConnectionConfiguration;

.field private final px:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/ConnectionConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/e$a;->px:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/e$a;->VY:Lcom/google/android/gms/wearable/ConnectionConfiguration;

    return-void
.end method


# virtual methods
.method public getConfig()Lcom/google/android/gms/wearable/ConnectionConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/e$a;->VY:Lcom/google/android/gms/wearable/ConnectionConfiguration;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/e$a;->px:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method