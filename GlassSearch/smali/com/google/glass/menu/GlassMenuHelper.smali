.class public Lcom/google/glass/menu/GlassMenuHelper;
.super Ljava/lang/Object;
.source "GlassMenuHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setDescription(Landroid/view/MenuItem;I)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "description"    # I

    .prologue
    .line 36
    invoke-static {p1, p2}, Lcom/google/android/glass/view/MenuUtils;->setDescription(Landroid/view/MenuItem;I)V

    .line 37
    return-void
.end method

.method public setDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 23
    invoke-static {p1, p2}, Lcom/google/android/glass/view/MenuUtils;->setDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 24
    return-void
.end method

.method public setInitialMenuItem(Landroid/view/Menu;Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 51
    invoke-static {p1, p2}, Lcom/google/android/glass/view/MenuUtils;->setInitialMenuItem(Landroid/view/Menu;Landroid/view/MenuItem;)V

    .line 52
    return-void
.end method
