.class Lcom/google/glass/sound/SoundManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/sound/SoundManager;

.field final synthetic val$listener:Lcom/google/glass/sound/SoundManager$SoundCompletionListener;

.field final synthetic val$soundId:Lcom/google/glass/sound/SoundManager$SoundId;


# direct methods
.method constructor <init>(Lcom/google/glass/sound/SoundManager;Lcom/google/glass/sound/SoundManager$SoundCompletionListener;Lcom/google/glass/sound/SoundManager$SoundId;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/glass/sound/SoundManager$2;->this$0:Lcom/google/glass/sound/SoundManager;

    iput-object p2, p0, Lcom/google/glass/sound/SoundManager$2;->val$listener:Lcom/google/glass/sound/SoundManager$SoundCompletionListener;

    iput-object p3, p0, Lcom/google/glass/sound/SoundManager$2;->val$soundId:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/glass/sound/SoundManager$2;->val$listener:Lcom/google/glass/sound/SoundManager$SoundCompletionListener;

    iget-object v1, p0, Lcom/google/glass/sound/SoundManager$2;->val$soundId:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-interface {v0, v1}, Lcom/google/glass/sound/SoundManager$SoundCompletionListener;->onSoundDone(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 294
    return-void
.end method