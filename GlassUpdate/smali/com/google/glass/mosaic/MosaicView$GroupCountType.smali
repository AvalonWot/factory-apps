.class public final enum Lcom/google/glass/mosaic/MosaicView$GroupCountType;
.super Ljava/lang/Enum;
.source "MosaicView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/mosaic/MosaicView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GroupCountType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/mosaic/MosaicView$GroupCountType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/mosaic/MosaicView$GroupCountType;

.field public static final enum ADD_CELL:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

.field public static final enum IN_LAST_CELL:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

.field public static final enum NONE:Lcom/google/glass/mosaic/MosaicView$GroupCountType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/mosaic/MosaicView$GroupCountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->NONE:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    .line 61
    new-instance v0, Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    const-string v1, "ADD_CELL"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/mosaic/MosaicView$GroupCountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->ADD_CELL:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    .line 64
    new-instance v0, Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    const-string v1, "IN_LAST_CELL"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/mosaic/MosaicView$GroupCountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->IN_LAST_CELL:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    sget-object v1, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->NONE:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->ADD_CELL:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->IN_LAST_CELL:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->$VALUES:[Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/mosaic/MosaicView$GroupCountType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/mosaic/MosaicView$GroupCountType;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->$VALUES:[Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    invoke-virtual {v0}, [Lcom/google/glass/mosaic/MosaicView$GroupCountType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    return-object v0
.end method