.class public Lcom/google/wireless/gdata2/client/ForbiddenException;
.super Lcom/google/wireless/gdata2/GDataException;
.source "ForbiddenException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/wireless/gdata2/GDataException;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/GDataException;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata2/GDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method
