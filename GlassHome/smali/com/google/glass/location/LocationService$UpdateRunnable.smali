.class Lcom/google/glass/location/LocationService$UpdateRunnable;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/location/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/location/LocationService;


# direct methods
.method private constructor <init>(Lcom/google/glass/location/LocationService;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/glass/location/LocationService$UpdateRunnable;->this$0:Lcom/google/glass/location/LocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/location/LocationService;Lcom/google/glass/location/LocationService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/location/LocationService;
    .param p2, "x1"    # Lcom/google/glass/location/LocationService$1;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/google/glass/location/LocationService$UpdateRunnable;-><init>(Lcom/google/glass/location/LocationService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/glass/location/LocationService$UpdateRunnable;->this$0:Lcom/google/glass/location/LocationService;

    invoke-static {v0}, Lcom/google/glass/location/LocationService;->access$200(Lcom/google/glass/location/LocationService;)V

    .line 137
    return-void
.end method
