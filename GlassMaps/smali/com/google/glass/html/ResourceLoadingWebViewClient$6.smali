.class synthetic Lcom/google/glass/html/ResourceLoadingWebViewClient$6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $SwitchMap$com$google$glass$html$Thumbnailer$ThumbnailerResult:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 333
    invoke-static {}, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->values()[Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/glass/html/ResourceLoadingWebViewClient$6;->$SwitchMap$com$google$glass$html$Thumbnailer$ThumbnailerResult:[I

    :try_start_0
    sget-object v0, Lcom/google/glass/html/ResourceLoadingWebViewClient$6;->$SwitchMap$com$google$glass$html$Thumbnailer$ThumbnailerResult:[I

    sget-object v1, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_NOT_REQUIRED:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    invoke-virtual {v1}, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/glass/html/ResourceLoadingWebViewClient$6;->$SwitchMap$com$google$glass$html$Thumbnailer$ThumbnailerResult:[I

    sget-object v1, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_READY:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    invoke-virtual {v1}, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/glass/html/ResourceLoadingWebViewClient$6;->$SwitchMap$com$google$glass$html$Thumbnailer$ThumbnailerResult:[I

    sget-object v1, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->FAILURE:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    invoke-virtual {v1}, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/google/glass/html/ResourceLoadingWebViewClient$6;->$SwitchMap$com$google$glass$html$Thumbnailer$ThumbnailerResult:[I

    sget-object v1, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_SKIPPED:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    invoke-virtual {v1}, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
