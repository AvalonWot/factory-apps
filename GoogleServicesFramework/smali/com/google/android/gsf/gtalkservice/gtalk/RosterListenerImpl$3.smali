.class Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl$3;
.super Ljava/lang/Object;
.source "RosterListenerImpl.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable",
        "<",
        "Lcom/google/android/gtalkservice/IRosterListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl$3;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/google/android/gtalkservice/IRosterListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gtalkservice/IRosterListener;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl$3;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    invoke-static {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->access$200(Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;Lcom/google/android/gtalkservice/IRosterListener;)V

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 81
    check-cast p1, Lcom/google/android/gtalkservice/IRosterListener;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl$3;->call(Lcom/google/android/gtalkservice/IRosterListener;)Z

    move-result v0

    return v0
.end method
