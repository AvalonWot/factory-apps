.class final Lcom/google/android/maps/driveabout/a/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/a/ab;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/a/u;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/a/u;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/v;->a:Lcom/google/android/maps/driveabout/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "CannedSpeechAlertGenerator"

    const-string v1, "Failed to load bundle"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/a/w;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/v;->a:Lcom/google/android/maps/driveabout/a/u;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/a/u;->a(Lcom/google/android/maps/driveabout/a/u;Lcom/google/android/maps/driveabout/a/w;)V

    .line 43
    return-void
.end method
