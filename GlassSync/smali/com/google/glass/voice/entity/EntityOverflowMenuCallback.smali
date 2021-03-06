.class public Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;
.super Ljava/lang/Object;
.source "EntityOverflowMenuCallback.java"

# interfaces
.implements Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$ShareTargetComparator;,
        Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;
    }
.end annotation


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field cursor:Landroid/database/Cursor;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private displayNameColumnIndex:I

.field private final entityCallback:Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;

.field private final glasswareIconBinder:Lcom/google/glass/widget/GlasswareIconBinder;

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final menuItemAction:I

.field private final prependEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation
.end field

.field private protoColumnIndex:I


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/view/LayoutInflater;Lcom/google/glass/widget/GlasswareIconBinder;ILjava/util/List;Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p3, "iconBinder"    # Lcom/google/glass/widget/GlasswareIconBinder;
    .param p4, "menuItemAction"    # I
    .param p6, "entityCallback"    # Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/view/LayoutInflater;",
            "Lcom/google/glass/widget/GlasswareIconBinder;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;",
            "Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p5, "prependEntities":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->contentResolver:Landroid/content/ContentResolver;

    .line 59
    iput-object p2, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->layoutInflater:Landroid/view/LayoutInflater;

    .line 60
    iput-object p3, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->glasswareIconBinder:Lcom/google/glass/widget/GlasswareIconBinder;

    .line 61
    iput p4, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->menuItemAction:I

    .line 62
    iput-object p5, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->prependEntities:Ljava/util/List;

    .line 63
    iput-object p6, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->entityCallback:Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->createCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->displayNameColumnIndex:I

    return p1
.end method

.method static synthetic access$202(Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->protoColumnIndex:I

    return p1
.end method

.method private bindView(ILcom/google/glass/entity/EntityItemView;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "itemView"    # Lcom/google/glass/entity/EntityItemView;

    .prologue
    const/4 v3, 0x0

    .line 150
    iget v2, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->menuItemAction:I

    sparse-switch v2, :sswitch_data_0

    .line 161
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Unexpected EntityCommand."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :sswitch_0
    invoke-virtual {p2, v3}, Lcom/google/glass/entity/EntityItemView;->setGlasswareIconBinder(Lcom/google/glass/widget/GlasswareIconBinder;)V

    .line 164
    :goto_0
    iget-object v2, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->prependEntities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->prependEntities:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 166
    .local v1, "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "displayName":Ljava/lang/String;
    sget v2, Lcom/google/glass/common/R$id;->tag_item_fast_scroll_label_text:I

    invoke-virtual {p2, v2, v3}, Lcom/google/glass/entity/EntityItemView;->setTag(ILjava/lang/Object;)V

    .line 168
    invoke-virtual {p2, v0, v1}, Lcom/google/glass/entity/EntityItemView;->bind(Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 177
    .end local v1    # "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :goto_1
    sget v2, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/google/glass/entity/EntityItemView;->setTag(ILjava/lang/Object;)V

    .line 178
    return-void

    .line 158
    .end local v0    # "displayName":Ljava/lang/String;
    :sswitch_1
    iget-object v2, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->glasswareIconBinder:Lcom/google/glass/widget/GlasswareIconBinder;

    invoke-virtual {p2, v2}, Lcom/google/glass/entity/EntityItemView;->setGlasswareIconBinder(Lcom/google/glass/widget/GlasswareIconBinder;)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->cursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->prependEntities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int v3, p1, v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 171
    iget-object v2, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->cursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->displayNameColumnIndex:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    .restart local v0    # "displayName":Ljava/lang/String;
    sget v2, Lcom/google/glass/common/R$id;->tag_item_fast_scroll_label_text:I

    .line 173
    invoke-static {v0}, Lcom/google/glass/entity/EntityListFragment;->getFastScrollLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-virtual {p2, v2, v3}, Lcom/google/glass/entity/EntityItemView;->setTag(ILjava/lang/Object;)V

    .line 174
    iget-object v2, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->cursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->protoColumnIndex:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/google/glass/entity/EntityItemView;->bind(Ljava/lang/String;[B)V

    goto :goto_1

    .line 150
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0xe -> :sswitch_0
        0x12 -> :sswitch_0
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method private createCursor()Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 125
    new-instance v6, Lcom/google/glass/util/SelectionBuilder;

    invoke-direct {v6}, Lcom/google/glass/util/SelectionBuilder;-><init>()V

    .line 126
    .local v6, "selection":Lcom/google/glass/util/SelectionBuilder;
    iget v0, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->menuItemAction:I

    sparse-switch v0, :sswitch_data_0

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/google/glass/entity/EntityProviderConstants;->getAllEntitiesUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "protobuf_blob"

    aput-object v4, v2, v3

    .line 145
    invoke-virtual {v6}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-virtual {v6}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "display_name"

    .line 144
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 129
    :sswitch_0
    invoke-static {v6}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->selectMessagingContacts(Lcom/google/glass/util/SelectionBuilder;)V

    goto :goto_0

    .line 132
    :sswitch_1
    invoke-static {v6}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->selectSendTargets(Lcom/google/glass/util/SelectionBuilder;)V

    goto :goto_0

    .line 135
    :sswitch_2
    invoke-static {v6}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->selectShareTargets(Lcom/google/glass/util/SelectionBuilder;)V

    goto :goto_0

    .line 138
    :sswitch_3
    invoke-static {v6}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->selectVideoCallTargets(Lcom/google/glass/util/SelectionBuilder;)V

    goto :goto_0

    .line 126
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x8 -> :sswitch_0
        0xe -> :sswitch_3
        0x12 -> :sswitch_0
        0x15 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getPrependEntities(Landroid/content/Context;ILjava/util/List;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menuItemAction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    .local p2, "entitySet":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    packed-switch p1, :pswitch_data_0

    .line 230
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    .line 223
    :pswitch_0
    invoke-static {p2}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 224
    .local v0, "copy":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    new-instance v1, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$ShareTargetComparator;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$ShareTargetComparator;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static selectMessagingContacts(Lcom/google/glass/util/SelectionBuilder;)V
    .locals 2
    .param p0, "selectionBuilder"    # Lcom/google/glass/util/SelectionBuilder;

    .prologue
    .line 214
    const-string v0, "source=?"

    sget-object v1, Lcom/google/glass/entity/EntityUtils;->FOCUS_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/util/SelectionBuilder;

    .line 216
    return-void
.end method

.method public static selectSendTargets(Lcom/google/glass/util/SelectionBuilder;)V
    .locals 2
    .param p0, "selectionBuilder"    # Lcom/google/glass/util/SelectionBuilder;

    .prologue
    .line 185
    const-string v0, "source=?"

    sget-object v1, Lcom/google/glass/entity/EntityUtils;->FOCUS_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/util/SelectionBuilder;

    .line 187
    const-string v0, "can_hangout=?"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/util/SelectionBuilder;

    .line 188
    return-void
.end method

.method public static selectShareTargets(Lcom/google/glass/util/SelectionBuilder;)V
    .locals 2
    .param p0, "selectionBuilder"    # Lcom/google/glass/util/SelectionBuilder;

    .prologue
    .line 206
    const-string v0, "0 = 1"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/util/SelectionBuilder;

    .line 207
    return-void
.end method

.method public static selectVideoCallTargets(Lcom/google/glass/util/SelectionBuilder;)V
    .locals 0
    .param p0, "selectionBuilder"    # Lcom/google/glass/util/SelectionBuilder;

    .prologue
    .line 196
    invoke-static {p0}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->selectSendTargets(Lcom/google/glass/util/SelectionBuilder;)V

    .line 197
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->prependEntities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v0, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 96
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 97
    check-cast v0, Lcom/google/glass/entity/EntityItemView;

    .line 98
    .local v0, "itemView":Lcom/google/glass/entity/EntityItemView;
    invoke-virtual {v0}, Lcom/google/glass/entity/EntityItemView;->recycle()V

    .line 103
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->bindView(ILcom/google/glass/entity/EntityItemView;)V

    .line 104
    return-object v0

    .line 100
    .end local v0    # "itemView":Lcom/google/glass/entity/EntityItemView;
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->layoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/google/glass/common/R$layout;->entity_item_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/entity/EntityItemView;

    .restart local v0    # "itemView":Lcom/google/glass/entity/EntityItemView;
    goto :goto_0
.end method

.method public onAttachedToMenu(Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenu;)V
    .locals 0
    .param p1, "overflowMenu"    # Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenu;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->queryEntities(Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenu;)V

    .line 69
    return-void
.end method

.method public onSelected(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->entityCallback:Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;

    check-cast p1, Lcom/google/glass/entity/EntityItemView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/google/glass/entity/EntityItemView;->getEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;->onEntitySelected(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 110
    return-void
.end method

.method public queryEntities(Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenu;)V
    .locals 3
    .param p1, "overflowMenu"    # Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenu;

    .prologue
    .line 76
    new-instance v1, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$1;-><init>(Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenu;)V

    .line 90
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 89
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    return-void
.end method
