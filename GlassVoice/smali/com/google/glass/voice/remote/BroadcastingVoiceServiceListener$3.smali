.class Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$3;
.super Ljava/lang/Object;
.source "BroadcastingVoiceServiceListener.java"

# interfaces
.implements Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$RemoteVoiceListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

.field final synthetic val$newConfig:Lcom/google/glass/voice/VoiceConfig;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;Lcom/google/glass/voice/VoiceConfig;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$3;->this$0:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    iput-object p2, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$3;->val$newConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doOperation(Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 48
    check-cast p1, Lcom/google/glass/voice/IVoiceServiceListener;

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$3;->doOperation(Lcom/google/glass/voice/IVoiceServiceListener;)V

    return-void
.end method

.method public doOperation(Lcom/google/glass/voice/IVoiceServiceListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/glass/voice/IVoiceServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$3;->val$newConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-interface {p1, v0}, Lcom/google/glass/voice/IVoiceServiceListener;->onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;)V

    .line 52
    return-void
.end method