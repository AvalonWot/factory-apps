.class public Lcom/google/wireless/gdata2/data/batch/BatchStatus;
.super Ljava/lang/Object;
.source "BatchStatus.java"


# instance fields
.field private content:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/batch/BatchStatus;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/batch/BatchStatus;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/batch/BatchStatus;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/google/wireless/gdata2/data/batch/BatchStatus;->statusCode:I

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/batch/BatchStatus;->content:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/batch/BatchStatus;->contentType:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/batch/BatchStatus;->reason:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/google/wireless/gdata2/data/batch/BatchStatus;->statusCode:I

    .line 32
    return-void
.end method
