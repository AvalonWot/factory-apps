.class Lcom/google/glass/widget/MessageDialog$Params;
.super Ljava/lang/Object;
.source "MessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/MessageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Params"
.end annotation


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private isDismissable:Z

.field private isExpanded:Z

.field private listener:Lcom/google/glass/widget/MessageDialog$Listener;

.field private message:Ljava/lang/CharSequence;

.field private messageDuration:J

.field private secondaryMessage:Ljava/lang/CharSequence;

.field private shouldAnimate:Z

.field private shouldAutoHide:Z

.field private shouldHandleConfirm:Z

.field private shouldKeepScreenOn:Z

.field private shouldShowProgress:Z

.field private shouldShowTemporaryContent:Z

.field private sound:Lcom/google/glass/sound/SoundManager$SoundId;

.field private soundManager:Lcom/google/glass/sound/SoundManager;

.field private temporaryIcon:Landroid/graphics/drawable/Drawable;

.field private temporaryMessage:Ljava/lang/CharSequence;

.field private temporaryMessageDuration:J

.field private temporarySecondaryMessage:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->messageDuration:J

    .line 147
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->temporaryMessageDuration:J

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->shouldShowTemporaryContent:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/widget/MessageDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/widget/MessageDialog$1;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$Params;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/widget/MessageDialog$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->listener:Lcom/google/glass/widget/MessageDialog$Listener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/widget/MessageDialog$Params;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->temporarySecondaryMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/glass/widget/MessageDialog$Params;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/glass/widget/MessageDialog$Params;->temporarySecondaryMessage:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$102(Lcom/google/glass/widget/MessageDialog$Params;Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Listener;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;
    .param p1, "x1"    # Lcom/google/glass/widget/MessageDialog$Listener;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/glass/widget/MessageDialog$Params;->listener:Lcom/google/glass/widget/MessageDialog$Listener;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/glass/widget/MessageDialog$Params;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->temporaryIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/glass/widget/MessageDialog$Params;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/glass/widget/MessageDialog$Params;->temporaryIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/glass/widget/MessageDialog$Params;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->temporaryMessageDuration:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/google/glass/widget/MessageDialog$Params;J)J
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;
    .param p1, "x1"    # J

    .prologue
    .line 139
    iput-wide p1, p0, Lcom/google/glass/widget/MessageDialog$Params;->temporaryMessageDuration:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/sound/SoundManager$SoundId;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->sound:Lcom/google/glass/sound/SoundManager$SoundId;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/glass/widget/MessageDialog$Params;Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/sound/SoundManager$SoundId;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;
    .param p1, "x1"    # Lcom/google/glass/sound/SoundManager$SoundId;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/glass/widget/MessageDialog$Params;->sound:Lcom/google/glass/sound/SoundManager$SoundId;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/sound/SoundManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->soundManager:Lcom/google/glass/sound/SoundManager;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/glass/widget/MessageDialog$Params;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/sound/SoundManager;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;
    .param p1, "x1"    # Lcom/google/glass/sound/SoundManager;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/glass/widget/MessageDialog$Params;->soundManager:Lcom/google/glass/sound/SoundManager;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/google/glass/widget/MessageDialog$Params;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->message:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/google/glass/widget/MessageDialog$Params;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/glass/widget/MessageDialog$Params;->message:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/google/glass/widget/MessageDialog$Params;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->secondaryMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/glass/widget/MessageDialog$Params;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/glass/widget/MessageDialog$Params;->secondaryMessage:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/google/glass/widget/MessageDialog$Params;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/glass/widget/MessageDialog$Params;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/glass/widget/MessageDialog$Params;->icon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/google/glass/widget/MessageDialog$Params;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->shouldShowProgress:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/google/glass/widget/MessageDialog$Params;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/google/glass/widget/MessageDialog$Params;->shouldShowProgress:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/google/glass/widget/MessageDialog$Params;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->shouldAutoHide:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/google/glass/widget/MessageDialog$Params;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/google/glass/widget/MessageDialog$Params;->shouldAutoHide:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/google/glass/widget/MessageDialog$Params;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->shouldHandleConfirm:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/google/glass/widget/MessageDialog$Params;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/google/glass/widget/MessageDialog$Params;->shouldHandleConfirm:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/google/glass/widget/MessageDialog$Params;J)J
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;
    .param p1, "x1"    # J

    .prologue
    .line 139
    iput-wide p1, p0, Lcom/google/glass/widget/MessageDialog$Params;->messageDuration:J

    return-wide p1
.end method

.method static synthetic access$2402(Lcom/google/glass/widget/MessageDialog$Params;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/google/glass/widget/MessageDialog$Params;->shouldShowTemporaryContent:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/glass/widget/MessageDialog$Params;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->shouldAnimate:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/glass/widget/MessageDialog$Params;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/google/glass/widget/MessageDialog$Params;->shouldAnimate:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/glass/widget/MessageDialog$Params;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->shouldKeepScreenOn:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/glass/widget/MessageDialog$Params;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/google/glass/widget/MessageDialog$Params;->shouldKeepScreenOn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/glass/widget/MessageDialog$Params;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->isDismissable:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/glass/widget/MessageDialog$Params;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/google/glass/widget/MessageDialog$Params;->isDismissable:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/glass/widget/MessageDialog$Params;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->background:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/glass/widget/MessageDialog$Params;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/glass/widget/MessageDialog$Params;->background:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/glass/widget/MessageDialog$Params;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->isExpanded:Z

    return v0
.end method

.method static synthetic access$802(Lcom/google/glass/widget/MessageDialog$Params;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/google/glass/widget/MessageDialog$Params;->isExpanded:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/glass/widget/MessageDialog$Params;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->temporaryMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/glass/widget/MessageDialog$Params;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog$Params;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/glass/widget/MessageDialog$Params;->temporaryMessage:Ljava/lang/CharSequence;

    return-object p1
.end method


# virtual methods
.method getMessageTimeoutDuration()J
    .locals 4

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->messageDuration:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 171
    iget-wide v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->messageDuration:J

    .line 178
    :goto_0
    return-wide v0

    .line 174
    :cond_0
    iget-boolean v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->isExpanded:Z

    if-eqz v0, :cond_1

    .line 175
    const-wide/16 v0, 0x7d0

    goto :goto_0

    .line 178
    :cond_1
    const-wide/16 v0, 0x3e8

    goto :goto_0
.end method

.method hasTemporaryContent()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->shouldShowTemporaryContent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->temporaryMessage:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->temporaryIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Params;->temporarySecondaryMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
