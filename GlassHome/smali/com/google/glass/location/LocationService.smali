.class public Lcom/google/glass/location/LocationService;
.super Landroid/app/Service;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/location/LocationService$UpdateRunnable;,
        Lcom/google/glass/location/LocationService$RemoteLocationListener;,
        Lcom/google/glass/location/LocationService$LocalLocationListener;,
        Lcom/google/glass/location/LocationService$RequestState;
    }
.end annotation


# static fields
.field private static final GPS_STALENESS_THRESHOLD_MS:J = 0x4e20L

.field private static final NETWORK_STALENESS_THRESHOLD_MS:J = 0x1d4c0L

.field private static final NO_TIME:J = -0x4000000000000000L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static runningInstance:Lcom/google/glass/location/LocationService;


# instance fields
.field private final clientNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private combinedGpsRequest:Lcom/google/glass/location/LocationRequest;

.field private combinedNetworkRequest:Lcom/google/glass/location/LocationRequest;

.field private connectedToCompanion:Z

.field private final gpsUpdateRunnable:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;

.field private final incoming:Landroid/os/Messenger;

.field private final lastKnownLocations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final localGpsListener:Lcom/google/glass/location/LocationService$LocalLocationListener;

.field private final localGpsState:Lcom/google/glass/location/LocationService$RequestState;

.field private final localNetworkListener:Landroid/location/LocationListener;

.field private final localNetworkState:Lcom/google/glass/location/LocationService$RequestState;

.field private localProvider:Landroid/location/LocationManager;

.field private final networkUpdateRunnable:Ljava/lang/Runnable;

.field private final outgoing:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteGpsState:Lcom/google/glass/location/LocationService$RequestState;

.field private final remoteLocationListener:Landroid/location/LocationListener;

.field private final remoteNetworkState:Lcom/google/glass/location/LocationService$RequestState;

.field private remoteProvider:Lcom/google/glass/location/LocationProxy;

.field private final requests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/glass/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/location/LocationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->handler:Landroid/os/Handler;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    .line 142
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->lastKnownLocations:Ljava/util/Map;

    .line 145
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->outgoing:Ljava/util/Map;

    .line 148
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->clientNames:Ljava/util/Map;

    .line 151
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/glass/location/LocationService$1;

    invoke-direct {v1, p0}, Lcom/google/glass/location/LocationService$1;-><init>(Lcom/google/glass/location/LocationService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->incoming:Landroid/os/Messenger;

    .line 163
    new-instance v0, Lcom/google/glass/location/LocationService$RequestState;

    invoke-direct {v0, v2}, Lcom/google/glass/location/LocationService$RequestState;-><init>(Lcom/google/glass/location/LocationService$1;)V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->remoteGpsState:Lcom/google/glass/location/LocationService$RequestState;

    .line 164
    new-instance v0, Lcom/google/glass/location/LocationService$RequestState;

    invoke-direct {v0, v2}, Lcom/google/glass/location/LocationService$RequestState;-><init>(Lcom/google/glass/location/LocationService$1;)V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->remoteNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    .line 165
    new-instance v0, Lcom/google/glass/location/LocationService$RequestState;

    invoke-direct {v0, v2}, Lcom/google/glass/location/LocationService$RequestState;-><init>(Lcom/google/glass/location/LocationService$1;)V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->localGpsState:Lcom/google/glass/location/LocationService$RequestState;

    .line 166
    new-instance v0, Lcom/google/glass/location/LocationService$RequestState;

    invoke-direct {v0, v2}, Lcom/google/glass/location/LocationService$RequestState;-><init>(Lcom/google/glass/location/LocationService$1;)V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->localNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    .line 173
    new-instance v0, Lcom/google/glass/location/LocationService$LocalLocationListener;

    invoke-direct {v0, p0, v2}, Lcom/google/glass/location/LocationService$LocalLocationListener;-><init>(Lcom/google/glass/location/LocationService;Lcom/google/glass/location/LocationService$1;)V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->localGpsListener:Lcom/google/glass/location/LocationService$LocalLocationListener;

    .line 174
    new-instance v0, Lcom/google/glass/location/LocationService$LocalLocationListener;

    invoke-direct {v0, p0, v2}, Lcom/google/glass/location/LocationService$LocalLocationListener;-><init>(Lcom/google/glass/location/LocationService;Lcom/google/glass/location/LocationService$1;)V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->localNetworkListener:Landroid/location/LocationListener;

    .line 175
    new-instance v0, Lcom/google/glass/location/LocationService$RemoteLocationListener;

    invoke-direct {v0, p0, v2}, Lcom/google/glass/location/LocationService$RemoteLocationListener;-><init>(Lcom/google/glass/location/LocationService;Lcom/google/glass/location/LocationService$1;)V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->remoteLocationListener:Landroid/location/LocationListener;

    .line 180
    new-instance v0, Lcom/google/glass/location/LocationService$UpdateRunnable;

    invoke-direct {v0, p0, v2}, Lcom/google/glass/location/LocationService$UpdateRunnable;-><init>(Lcom/google/glass/location/LocationService;Lcom/google/glass/location/LocationService$1;)V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->gpsUpdateRunnable:Ljava/lang/Runnable;

    .line 181
    new-instance v0, Lcom/google/glass/location/LocationService$UpdateRunnable;

    invoke-direct {v0, p0, v2}, Lcom/google/glass/location/LocationService$UpdateRunnable;-><init>(Lcom/google/glass/location/LocationService;Lcom/google/glass/location/LocationService$1;)V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->networkUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/location/LocationService;Landroid/location/Location;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/location/LocationService;
    .param p1, "x1"    # Landroid/location/Location;
    .param p2, "x2"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/glass/location/LocationService;->handleLocationChanged(Landroid/location/Location;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/location/LocationService;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/location/LocationService;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localProvider:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/location/LocationService;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/location/LocationService;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/glass/location/LocationService;->onClientDisconnected(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/location/LocationService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/location/LocationService;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/glass/location/LocationService;->updateLocationRequests()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/location/LocationService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/location/LocationService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/glass/location/LocationService;->handleIncomingMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/location/LocationService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/location/LocationService;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/glass/location/LocationService;->handleCompanionConnected()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/location/LocationService;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/location/LocationService;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/glass/location/LocationService;->postOnClientDisconnected(Ljava/lang/Integer;)V

    return-void
.end method

.method private getClientName(I)Ljava/lang/String;
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 582
    iget-object v1, p0, Lcom/google/glass/location/LocationService;->clientNames:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 583
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 584
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 586
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getCombinedRequest(Ljava/lang/String;)Lcom/google/glass/location/LocationRequest;
    .locals 9
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 513
    const/4 v0, 0x0

    .line 514
    .local v0, "combinedRequest":Lcom/google/glass/location/LocationRequest;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 515
    iget-object v4, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/location/LocationRequest;

    .line 516
    .local v3, "request":Lcom/google/glass/location/LocationRequest;
    invoke-virtual {v3}, Lcom/google/glass/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 517
    if-nez v0, :cond_1

    .line 518
    new-instance v0, Lcom/google/glass/location/LocationRequest;

    .end local v0    # "combinedRequest":Lcom/google/glass/location/LocationRequest;
    invoke-direct {v0, v3}, Lcom/google/glass/location/LocationRequest;-><init>(Lcom/google/glass/location/LocationRequest;)V

    .line 514
    .restart local v0    # "combinedRequest":Lcom/google/glass/location/LocationRequest;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 519
    :cond_1
    invoke-virtual {v3}, Lcom/google/glass/location/LocationRequest;->getMinTime()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/google/glass/location/LocationRequest;->getMinTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    .line 520
    invoke-virtual {v3}, Lcom/google/glass/location/LocationRequest;->getMinDistance()F

    move-result v4

    invoke-virtual {v0}, Lcom/google/glass/location/LocationRequest;->getMinDistance()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 521
    :cond_2
    new-instance v1, Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v3}, Lcom/google/glass/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v4

    .line 522
    invoke-virtual {v3}, Lcom/google/glass/location/LocationRequest;->getMinTime()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/google/glass/location/LocationRequest;->getMinTime()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 523
    invoke-virtual {v3}, Lcom/google/glass/location/LocationRequest;->getMinDistance()F

    move-result v7

    invoke-virtual {v0}, Lcom/google/glass/location/LocationRequest;->getMinDistance()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/google/glass/location/LocationRequest;-><init>(Ljava/lang/String;JF)V

    .end local v0    # "combinedRequest":Lcom/google/glass/location/LocationRequest;
    .local v1, "combinedRequest":Lcom/google/glass/location/LocationRequest;
    move-object v0, v1

    .end local v1    # "combinedRequest":Lcom/google/glass/location/LocationRequest;
    .restart local v0    # "combinedRequest":Lcom/google/glass/location/LocationRequest;
    goto :goto_1

    .line 527
    .end local v3    # "request":Lcom/google/glass/location/LocationRequest;
    :cond_3
    return-object v0
.end method

.method private getProviderState(Ljava/lang/String;Z)Lcom/google/glass/location/LocationService$RequestState;
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "isLocal"    # Z

    .prologue
    .line 532
    if-eqz p2, :cond_1

    .line 533
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localGpsState:Lcom/google/glass/location/LocationService$RequestState;

    .line 545
    :goto_0
    return-object v0

    .line 535
    :cond_0
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 536
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    goto :goto_0

    .line 539
    :cond_1
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteGpsState:Lcom/google/glass/location/LocationService$RequestState;

    goto :goto_0

    .line 541
    :cond_2
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 542
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    goto :goto_0

    .line 545
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRunningInstance()Lcom/google/glass/location/LocationService;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 59
    sget-object v0, Lcom/google/glass/location/LocationService;->runningInstance:Lcom/google/glass/location/LocationService;

    return-object v0
.end method

.method private handleCompanionConnected()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 245
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 246
    sget-object v0, Lcom/google/glass/location/LocationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCompanionConnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/location/LocationService;->connectedToCompanion:Z

    .line 250
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteGpsState:Lcom/google/glass/location/LocationService$RequestState;

    iput-object v3, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    .line 251
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    iput-object v3, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    .line 253
    invoke-direct {p0}, Lcom/google/glass/location/LocationService;->updateLocationRequests()V

    .line 254
    return-void
.end method

.method private handleIncomingMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 266
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 267
    sget-object v0, Lcom/google/glass/location/LocationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Incoming message: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Lcom/google/glass/location/LocationConstants;->messageTypeToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 279
    :goto_0
    return-void

    .line 270
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/glass/location/LocationService;->handleRegisterClient(Landroid/os/Message;)V

    goto :goto_0

    .line 273
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/glass/location/LocationService;->handleRequestUpdates(Landroid/os/Message;)V

    goto :goto_0

    .line 276
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/glass/location/LocationService;->handleRemoveUpdates(Landroid/os/Message;)V

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleLocationChanged(Landroid/location/Location;Z)V
    .locals 11
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "isLocal"    # Z

    .prologue
    const/4 v10, 0x0

    const-wide/16 v7, 0x0

    .line 336
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 339
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "provider":Ljava/lang/String;
    sget-object v6, Lcom/google/glass/location/LocationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "LocationChanged %s %s"

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v1, v8, v10

    const/4 v9, 0x1

    if-eqz p2, :cond_4

    const-string v5, " local"

    :goto_1
    aput-object v5, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    iget-object v5, p0, Lcom/google/glass/location/LocationService;->lastKnownLocations:Ljava/util/Map;

    invoke-interface {v5, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 347
    .local v3, "uptime":J
    invoke-direct {p0, v1, p2}, Lcom/google/glass/location/LocationService;->getProviderState(Ljava/lang/String;Z)Lcom/google/glass/location/LocationService$RequestState;

    move-result-object v5

    iput-wide v3, v5, Lcom/google/glass/location/LocationService$RequestState;->lastLocationTime:J

    .line 349
    if-nez p2, :cond_2

    invoke-direct {p0, p1}, Lcom/google/glass/location/LocationService;->isStale(Landroid/location/Location;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 350
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v5, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 351
    iget-object v5, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/location/LocationRequest;

    .line 352
    .local v2, "request":Lcom/google/glass/location/LocationRequest;
    invoke-virtual {v2}, Lcom/google/glass/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 353
    invoke-direct {p0, v2, p1}, Lcom/google/glass/location/LocationService;->sendLocationMessage(Lcom/google/glass/location/LocationRequest;Landroid/location/Location;)V

    .line 350
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 344
    .end local v0    # "i":I
    .end local v2    # "request":Lcom/google/glass/location/LocationRequest;
    .end local v3    # "uptime":J
    :cond_4
    const-string v5, " remote"

    goto :goto_1

    .line 357
    .restart local v3    # "uptime":J
    :cond_5
    sget-object v5, Lcom/google/glass/location/LocationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Dropping stale remote location"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    :cond_6
    if-eqz p2, :cond_0

    .line 362
    invoke-direct {p0}, Lcom/google/glass/location/LocationService;->updateLocationRequests()V

    .line 365
    const-string v5, "gps"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 366
    iget-object v5, p0, Lcom/google/glass/location/LocationService;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/glass/location/LocationService;->gpsUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 367
    iget-object v5, p0, Lcom/google/glass/location/LocationService;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/glass/location/LocationService;->gpsUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v7, 0x4e20

    add-long/2addr v7, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 368
    :cond_7
    const-string v5, "network"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 369
    iget-object v5, p0, Lcom/google/glass/location/LocationService;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/glass/location/LocationService;->networkUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 370
    iget-object v5, p0, Lcom/google/glass/location/LocationService;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/glass/location/LocationService;->networkUpdateRunnable:Ljava/lang/Runnable;

    const-wide/32 v7, 0x1d4c0

    add-long/2addr v7, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private handleRegisterClient(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    .line 283
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 284
    .local v3, "pid":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/glass/location/LocationService;->outgoing:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v4, p0, Lcom/google/glass/location/LocationService;->clientNames:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0xc

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v4, Lcom/google/glass/location/LocationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Registered client %s (%s total)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/google/glass/location/LocationService;->getClientName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/google/glass/location/LocationService;->outgoing:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    :try_start_0
    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v4}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    new-instance v5, Lcom/google/glass/location/LocationService$4;

    invoke-direct {v5, p0, v3}, Lcom/google/glass/location/LocationService$4;-><init>(Lcom/google/glass/location/LocationService;I)V

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    iget-object v4, p0, Lcom/google/glass/location/LocationService;->lastKnownLocations:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 304
    .local v1, "location":Landroid/location/Location;
    const/4 v5, -0x1

    invoke-direct {p0, v3, v5, v1}, Lcom/google/glass/location/LocationService;->sendLocationMessage(IILandroid/location/Location;)V

    goto :goto_1

    .line 298
    .end local v1    # "location":Landroid/location/Location;
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/glass/location/LocationService;->onClientDisconnected(Ljava/lang/Integer;)V

    goto :goto_0

    .line 306
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private handleRemoveUpdates(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 320
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/location/LocationRequest;->fromBundle(Landroid/os/Bundle;)Lcom/google/glass/location/LocationRequest;

    move-result-object v1

    .line 321
    .local v1, "request":Lcom/google/glass/location/LocationRequest;
    if-nez v1, :cond_0

    .line 322
    sget-object v2, Lcom/google/glass/location/LocationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Malformed removeUpdates message!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    :goto_0
    return-void

    .line 326
    :cond_0
    sget-object v2, Lcom/google/glass/location/LocationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Removing listener: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    iget-object v2, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 328
    iget-object v2, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v2, v1}, Lcom/google/glass/location/LocationRequest;->matchesListener(Lcom/google/glass/location/LocationRequest;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    iget-object v2, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 327
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 332
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/location/LocationService;->onListenersChanged()V

    goto :goto_0
.end method

.method private handleRequestUpdates(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 309
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/location/LocationRequest;->fromBundle(Landroid/os/Bundle;)Lcom/google/glass/location/LocationRequest;

    move-result-object v0

    .line 310
    .local v0, "request":Lcom/google/glass/location/LocationRequest;
    if-nez v0, :cond_0

    .line 311
    sget-object v1, Lcom/google/glass/location/LocationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Malformed requestUpdates message!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    :goto_0
    return-void

    .line 314
    :cond_0
    sget-object v1, Lcom/google/glass/location/LocationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Adding listener: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    iget-object v1, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-direct {p0}, Lcom/google/glass/location/LocationService;->onListenersChanged()V

    goto :goto_0
.end method

.method private static hasSameRequestParameters(Lcom/google/glass/location/LocationRequest;Lcom/google/glass/location/LocationRequest;)Z
    .locals 6
    .param p0, "a"    # Lcom/google/glass/location/LocationRequest;
    .param p1, "b"    # Lcom/google/glass/location/LocationRequest;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 550
    if-ne p0, p1, :cond_1

    .line 558
    :cond_0
    :goto_0
    return v0

    .line 553
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v0, v1

    .line 554
    goto :goto_0

    .line 556
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/glass/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 557
    invoke-virtual {p0}, Lcom/google/glass/location/LocationRequest;->getMinDistance()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/glass/location/LocationRequest;->getMinDistance()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    .line 558
    invoke-virtual {p0}, Lcom/google/glass/location/LocationRequest;->getMinTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/glass/location/LocationRequest;->getMinTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private isLocalGpsLocationStale()Z
    .locals 6

    .prologue
    .line 562
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 563
    .local v0, "now":J
    iget-object v2, p0, Lcom/google/glass/location/LocationService;->localGpsState:Lcom/google/glass/location/LocationService$RequestState;

    iget-wide v2, v2, Lcom/google/glass/location/LocationService$RequestState;->lastLocationTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isLocalNetworkLocationStale()Z
    .locals 6

    .prologue
    .line 567
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 568
    .local v0, "now":J
    iget-object v2, p0, Lcom/google/glass/location/LocationService;->localNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    iget-wide v2, v2, Lcom/google/glass/location/LocationService$RequestState;->lastLocationTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isStale(Landroid/location/Location;)Z
    .locals 8
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 572
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 573
    .local v0, "now":J
    const-string v4, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 574
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x4e20

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 578
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 574
    goto :goto_0

    .line 575
    :cond_2
    const-string v4, "network"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 576
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/32 v6, 0x1d4c0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method private onClientDisconnected(Ljava/lang/Integer;)V
    .locals 7
    .param p1, "pid"    # Ljava/lang/Integer;

    .prologue
    .line 403
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 404
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/glass/location/LocationService;->getClientName(I)Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/location/LocationService;->outgoing:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v2, p0, Lcom/google/glass/location/LocationService;->clientNames:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v2, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 408
    iget-object v2, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v2}, Lcom/google/glass/location/LocationRequest;->getPid()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 409
    iget-object v2, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 407
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 412
    :cond_1
    sget-object v2, Lcom/google/glass/location/LocationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Disconnected from %s (%s remaining listeners)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/glass/location/LocationService;->outgoing:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    invoke-direct {p0}, Lcom/google/glass/location/LocationService;->onListenersChanged()V

    .line 414
    return-void
.end method

.method private onListenersChanged()V
    .locals 1

    .prologue
    .line 430
    const-string v0, "gps"

    invoke-direct {p0, v0}, Lcom/google/glass/location/LocationService;->getCombinedRequest(Ljava/lang/String;)Lcom/google/glass/location/LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->combinedGpsRequest:Lcom/google/glass/location/LocationRequest;

    .line 431
    const-string v0, "network"

    invoke-direct {p0, v0}, Lcom/google/glass/location/LocationService;->getCombinedRequest(Ljava/lang/String;)Lcom/google/glass/location/LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->combinedNetworkRequest:Lcom/google/glass/location/LocationRequest;

    .line 432
    invoke-direct {p0}, Lcom/google/glass/location/LocationService;->updateLocationRequests()V

    .line 433
    return-void
.end method

.method private postOnClientDisconnected(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "pid"    # Ljava/lang/Integer;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/location/LocationService$5;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/location/LocationService$5;-><init>(Lcom/google/glass/location/LocationService;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 423
    return-void
.end method

.method private sendLocationMessage(IILandroid/location/Location;)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "listenerId"    # I
    .param p3, "location"    # Landroid/location/Location;

    .prologue
    .line 380
    const/4 v1, 0x0

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 381
    .local v0, "message":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 382
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 383
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/glass/location/LocationService;->sendMessage(Ljava/lang/Integer;Landroid/os/Message;)V

    .line 384
    return-void
.end method

.method private sendLocationMessage(Lcom/google/glass/location/LocationRequest;Landroid/location/Location;)V
    .locals 2
    .param p1, "request"    # Lcom/google/glass/location/LocationRequest;
    .param p2, "location"    # Landroid/location/Location;

    .prologue
    .line 376
    invoke-virtual {p1}, Lcom/google/glass/location/LocationRequest;->getPid()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/glass/location/LocationRequest;->getListenerId()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/google/glass/location/LocationService;->sendLocationMessage(IILandroid/location/Location;)V

    .line 377
    return-void
.end method

.method private sendMessage(Ljava/lang/Integer;Landroid/os/Message;)V
    .locals 6
    .param p1, "targetPid"    # Ljava/lang/Integer;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 387
    iget-object v2, p0, Lcom/google/glass/location/LocationService;->outgoing:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 388
    .local v1, "messenger":Landroid/os/Messenger;
    if-nez v1, :cond_0

    .line 389
    sget-object v2, Lcom/google/glass/location/LocationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No messenger for pid: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    :goto_0
    return-void

    .line 394
    :cond_0
    :try_start_0
    invoke-virtual {v1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, p1}, Lcom/google/glass/location/LocationService;->onClientDisconnected(Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private updateLocationRequests()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 441
    const/4 v6, 0x0

    .line 444
    .local v6, "changed":Z
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->GPS_ENABLE_LOCAL:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localProvider:Landroid/location/LocationManager;

    const-string v1, "gps"

    .line 445
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/location/LocationService;->combinedGpsRequest:Lcom/google/glass/location/LocationRequest;

    iget-object v1, p0, Lcom/google/glass/location/LocationService;->localGpsState:Lcom/google/glass/location/LocationService$RequestState;

    iget-object v1, v1, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    .line 446
    invoke-static {v0, v1}, Lcom/google/glass/location/LocationService;->hasSameRequestParameters(Lcom/google/glass/location/LocationRequest;Lcom/google/glass/location/LocationRequest;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localProvider:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/glass/location/LocationService;->localGpsListener:Lcom/google/glass/location/LocationService$LocalLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 448
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localProvider:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/glass/location/LocationService;->localGpsListener:Lcom/google/glass/location/LocationService$LocalLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 449
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->combinedGpsRequest:Lcom/google/glass/location/LocationRequest;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localProvider:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v2, p0, Lcom/google/glass/location/LocationService;->combinedGpsRequest:Lcom/google/glass/location/LocationRequest;

    .line 451
    invoke-virtual {v2}, Lcom/google/glass/location/LocationRequest;->getMinTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/location/LocationService;->combinedGpsRequest:Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v4}, Lcom/google/glass/location/LocationRequest;->getMinDistance()F

    move-result v4

    iget-object v5, p0, Lcom/google/glass/location/LocationService;->localGpsListener:Lcom/google/glass/location/LocationService$LocalLocationListener;

    .line 450
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 453
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localProvider:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/glass/location/LocationService;->localGpsListener:Lcom/google/glass/location/LocationService$LocalLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localGpsState:Lcom/google/glass/location/LocationService$RequestState;

    iget-object v1, p0, Lcom/google/glass/location/LocationService;->combinedGpsRequest:Lcom/google/glass/location/LocationRequest;

    iput-object v1, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    .line 456
    const/4 v6, 0x1

    .line 460
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/location/LocationService;->isLocalGpsLocationStale()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v7, p0, Lcom/google/glass/location/LocationService;->combinedGpsRequest:Lcom/google/glass/location/LocationRequest;

    .line 461
    .local v7, "remoteGpsRequest":Lcom/google/glass/location/LocationRequest;
    :goto_0
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteProvider:Lcom/google/glass/location/LocationProxy;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteGpsState:Lcom/google/glass/location/LocationService$RequestState;

    iget-object v0, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    .line 462
    invoke-static {v7, v0}, Lcom/google/glass/location/LocationService;->hasSameRequestParameters(Lcom/google/glass/location/LocationRequest;Lcom/google/glass/location/LocationRequest;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 463
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteProvider:Lcom/google/glass/location/LocationProxy;

    const-string v1, "gps"

    invoke-interface {v0, v1}, Lcom/google/glass/location/LocationProxy;->removeLocationUpdates(Ljava/lang/String;)V

    .line 464
    if-eqz v7, :cond_2

    .line 465
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteProvider:Lcom/google/glass/location/LocationProxy;

    const-string v1, "gps"

    iget-object v2, p0, Lcom/google/glass/location/LocationService;->combinedGpsRequest:Lcom/google/glass/location/LocationRequest;

    .line 466
    invoke-virtual {v2}, Lcom/google/glass/location/LocationRequest;->getMinTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/location/LocationService;->combinedGpsRequest:Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v4}, Lcom/google/glass/location/LocationRequest;->getMinDistance()F

    move-result v4

    move v5, v10

    .line 465
    invoke-interface/range {v0 .. v5}, Lcom/google/glass/location/LocationProxy;->requestLocationUpdates(Ljava/lang/String;JFZ)V

    .line 468
    :cond_2
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteGpsState:Lcom/google/glass/location/LocationService$RequestState;

    iput-object v7, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    .line 469
    const/4 v6, 0x1

    .line 473
    :cond_3
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localProvider:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/glass/location/LocationService;->combinedNetworkRequest:Lcom/google/glass/location/LocationRequest;

    iget-object v1, p0, Lcom/google/glass/location/LocationService;->localNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    iget-object v1, v1, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    .line 474
    invoke-static {v0, v1}, Lcom/google/glass/location/LocationService;->hasSameRequestParameters(Lcom/google/glass/location/LocationRequest;Lcom/google/glass/location/LocationRequest;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 475
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localProvider:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/glass/location/LocationService;->localNetworkListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 476
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->combinedNetworkRequest:Lcom/google/glass/location/LocationRequest;

    if-eqz v0, :cond_4

    .line 477
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localProvider:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v2, p0, Lcom/google/glass/location/LocationService;->combinedNetworkRequest:Lcom/google/glass/location/LocationRequest;

    .line 478
    invoke-virtual {v2}, Lcom/google/glass/location/LocationRequest;->getMinTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/location/LocationService;->combinedNetworkRequest:Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v4}, Lcom/google/glass/location/LocationRequest;->getMinDistance()F

    move-result v4

    iget-object v5, p0, Lcom/google/glass/location/LocationService;->localNetworkListener:Landroid/location/LocationListener;

    .line 477
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 481
    :cond_4
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    iget-object v1, p0, Lcom/google/glass/location/LocationService;->combinedNetworkRequest:Lcom/google/glass/location/LocationRequest;

    iput-object v1, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    .line 482
    const/4 v6, 0x1

    .line 486
    :cond_5
    invoke-direct {p0}, Lcom/google/glass/location/LocationService;->isLocalNetworkLocationStale()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v8, p0, Lcom/google/glass/location/LocationService;->combinedNetworkRequest:Lcom/google/glass/location/LocationRequest;

    .line 488
    .local v8, "remoteNetworkRequest":Lcom/google/glass/location/LocationRequest;
    :goto_1
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteProvider:Lcom/google/glass/location/LocationProxy;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    iget-object v0, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    .line 489
    invoke-static {v8, v0}, Lcom/google/glass/location/LocationService;->hasSameRequestParameters(Lcom/google/glass/location/LocationRequest;Lcom/google/glass/location/LocationRequest;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 490
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteProvider:Lcom/google/glass/location/LocationProxy;

    const-string v1, "network"

    invoke-interface {v0, v1}, Lcom/google/glass/location/LocationProxy;->removeLocationUpdates(Ljava/lang/String;)V

    .line 491
    if-eqz v8, :cond_6

    .line 492
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteProvider:Lcom/google/glass/location/LocationProxy;

    const-string v1, "network"

    iget-object v2, p0, Lcom/google/glass/location/LocationService;->combinedNetworkRequest:Lcom/google/glass/location/LocationRequest;

    .line 493
    invoke-virtual {v2}, Lcom/google/glass/location/LocationRequest;->getMinTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/location/LocationService;->combinedNetworkRequest:Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v4}, Lcom/google/glass/location/LocationRequest;->getMinDistance()F

    move-result v4

    move v5, v10

    .line 492
    invoke-interface/range {v0 .. v5}, Lcom/google/glass/location/LocationProxy;->requestLocationUpdates(Ljava/lang/String;JFZ)V

    .line 495
    :cond_6
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    iput-object v8, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    .line 496
    const/4 v6, 0x1

    .line 499
    :cond_7
    if-eqz v6, :cond_8

    .line 500
    sget-object v1, Lcom/google/glass/location/LocationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Requests Updated:  localGps:%s remoteGps:%s localNetwork:%s remoteNetwork:%s"

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localGpsState:Lcom/google/glass/location/LocationService$RequestState;

    iget-object v0, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    if-nez v0, :cond_b

    const-string v0, "OFF"

    :goto_2
    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteGpsState:Lcom/google/glass/location/LocationService$RequestState;

    iget-object v0, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    if-nez v0, :cond_c

    const-string v0, "OFF"

    :goto_3
    aput-object v0, v3, v10

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    iget-object v0, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    if-nez v0, :cond_d

    const-string v0, "OFF"

    :goto_4
    aput-object v0, v3, v4

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    iget-object v0, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    if-nez v0, :cond_e

    const-string v0, "OFF"

    :goto_5
    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    :cond_8
    return-void

    .end local v7    # "remoteGpsRequest":Lcom/google/glass/location/LocationRequest;
    .end local v8    # "remoteNetworkRequest":Lcom/google/glass/location/LocationRequest;
    :cond_9
    move-object v7, v9

    .line 460
    goto/16 :goto_0

    .restart local v7    # "remoteGpsRequest":Lcom/google/glass/location/LocationRequest;
    :cond_a
    move-object v8, v9

    .line 486
    goto :goto_1

    .line 500
    .restart local v8    # "remoteNetworkRequest":Lcom/google/glass/location/LocationRequest;
    :cond_b
    const-string v0, "ON"

    goto :goto_2

    :cond_c
    const-string v0, "ON"

    goto :goto_3

    :cond_d
    const-string v0, "ON"

    goto :goto_4

    :cond_e
    const-string v0, "ON"

    goto :goto_5
.end method


# virtual methods
.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 591
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x23

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "\nCurrent Time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 592
    iget-boolean v3, p0, Lcom/google/glass/location/LocationService;->connectedToCompanion:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x11

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "\nConnected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 594
    const-string v3, "\nClient Processes:\n"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 595
    iget-object v3, p0, Lcom/google/glass/location/LocationService;->clientNames:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 596
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 591
    .end local v1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 599
    :cond_0
    :try_start_1
    const-string v3, "\nListeners:\n"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 600
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 601
    iget-object v3, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x10

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 600
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 604
    :cond_1
    const-string v3, "\nLast Known Locations:\n"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 605
    iget-object v3, p0, Lcom/google/glass/location/LocationService;->lastKnownLocations:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 606
    .local v2, "provider":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/location/LocationService;->lastKnownLocations:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_2

    .line 609
    .end local v2    # "provider":Ljava/lang/String;
    :cond_2
    const-string v3, "\nState:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 610
    const-string v3, "\n  Local GPS:      "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/location/LocationService;->localGpsState:Lcom/google/glass/location/LocationService$RequestState;

    invoke-virtual {v4}, Lcom/google/glass/location/LocationService$RequestState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 611
    const-string v3, "\n  Remote GPS:     "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/location/LocationService;->remoteGpsState:Lcom/google/glass/location/LocationService$RequestState;

    invoke-virtual {v4}, Lcom/google/glass/location/LocationService$RequestState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 612
    const-string v3, "\n  Local Network:  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/location/LocationService;->localNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    invoke-virtual {v4}, Lcom/google/glass/location/LocationService$RequestState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 613
    const-string v3, "\n  Remote Network: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/location/LocationService;->remoteNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    invoke-virtual {v4}, Lcom/google/glass/location/LocationService$RequestState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 614
    const-string v3, "\n"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    monitor-exit p0

    return-void
.end method

.method public handleCompanionDisconnected()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 257
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 258
    sget-object v0, Lcom/google/glass/location/LocationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCompanionDisconnected"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iput-boolean v3, p0, Lcom/google/glass/location/LocationService;->connectedToCompanion:Z

    .line 260
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteGpsState:Lcom/google/glass/location/LocationService$RequestState;

    iput-object v4, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    .line 261
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    iput-object v4, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    .line 262
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 185
    sget-object v0, Lcom/google/glass/location/LocationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onBind"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->incoming:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCompanionConnected()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/location/LocationService$2;

    invoke-direct {v1, p0}, Lcom/google/glass/location/LocationService$2;-><init>(Lcom/google/glass/location/LocationService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    return-void
.end method

.method public onCompanionDisconnected()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/location/LocationService$3;

    invoke-direct {v1, p0}, Lcom/google/glass/location/LocationService$3;-><init>(Lcom/google/glass/location/LocationService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 242
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 191
    sget-object v0, Lcom/google/glass/location/LocationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCreate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    sput-object p0, Lcom/google/glass/location/LocationService;->runningInstance:Lcom/google/glass/location/LocationService;

    .line 193
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 195
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/google/glass/location/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->localProvider:Landroid/location/LocationManager;

    .line 196
    invoke-direct {p0}, Lcom/google/glass/location/LocationService;->updateLocationRequests()V

    .line 197
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 201
    sget-object v0, Lcom/google/glass/location/LocationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    sput-object v3, Lcom/google/glass/location/LocationService;->runningInstance:Lcom/google/glass/location/LocationService;

    .line 205
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteProvider:Lcom/google/glass/location/LocationProxy;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteProvider:Lcom/google/glass/location/LocationProxy;

    const-string v1, "gps"

    invoke-interface {v0, v1}, Lcom/google/glass/location/LocationProxy;->removeLocationUpdates(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteProvider:Lcom/google/glass/location/LocationProxy;

    const-string v1, "network"

    invoke-interface {v0, v1}, Lcom/google/glass/location/LocationProxy;->removeLocationUpdates(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteProvider:Lcom/google/glass/location/LocationProxy;

    invoke-interface {v0, v3}, Lcom/google/glass/location/LocationProxy;->setLocationListener(Landroid/location/LocationListener;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localProvider:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/glass/location/LocationService;->localGpsListener:Lcom/google/glass/location/LocationService$LocalLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 211
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localProvider:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/glass/location/LocationService;->localGpsListener:Lcom/google/glass/location/LocationService$LocalLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 212
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localProvider:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/glass/location/LocationService;->localNetworkListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 214
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 215
    return-void
.end method

.method public setLocationProxy(Lcom/google/glass/location/LocationProxy;)V
    .locals 5
    .param p1, "proxy"    # Lcom/google/glass/location/LocationProxy;

    .prologue
    .line 219
    sget-object v0, Lcom/google/glass/location/LocationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "setLocationProxy: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iput-object p1, p0, Lcom/google/glass/location/LocationService;->remoteProvider:Lcom/google/glass/location/LocationProxy;

    .line 221
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteProvider:Lcom/google/glass/location/LocationProxy;

    iget-object v1, p0, Lcom/google/glass/location/LocationService;->remoteLocationListener:Landroid/location/LocationListener;

    invoke-interface {v0, v1}, Lcom/google/glass/location/LocationProxy;->setLocationListener(Landroid/location/LocationListener;)V

    .line 222
    return-void
.end method
