.class public Lcom/squareup/okhttp/Response$Builder;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private body:Lcom/squareup/okhttp/Response$Body;

.field private final code:I

.field private final headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

.field private redirectedBy:Lcom/squareup/okhttp/Response;

.field private final request:Lcom/squareup/okhttp/Request;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Request;I)V
    .locals 2
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .param p2, "code"    # I

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    .line 177
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    if-gtz p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "code <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    iput-object p1, p0, Lcom/squareup/okhttp/Response$Builder;->request:Lcom/squareup/okhttp/Request;

    .line 180
    iput p2, p0, Lcom/squareup/okhttp/Response$Builder;->code:I

    .line 181
    return-void
.end method

.method static synthetic access$000(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Request;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Response$Builder;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->request:Lcom/squareup/okhttp/Request;

    return-object v0
.end method

.method static synthetic access$100(Lcom/squareup/okhttp/Response$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Response$Builder;

    .prologue
    .line 169
    iget v0, p0, Lcom/squareup/okhttp/Response$Builder;->code:I

    return v0
.end method

.method static synthetic access$200(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/internal/http/RawHeaders;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Response$Builder;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    return-object v0
.end method

.method static synthetic access$300(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Response$Body;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Response$Builder;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->body:Lcom/squareup/okhttp/Response$Body;

    return-object v0
.end method

.method static synthetic access$400(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Response;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Response$Builder;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->redirectedBy:Lcom/squareup/okhttp/Response;

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-object p0
.end method

.method public body(Lcom/squareup/okhttp/Response$Body;)Lcom/squareup/okhttp/Response$Builder;
    .locals 0
    .param p1, "body"    # Lcom/squareup/okhttp/Response$Body;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/squareup/okhttp/Response$Builder;->body:Lcom/squareup/okhttp/Response$Body;

    .line 203
    return-object p0
.end method

.method public build()Lcom/squareup/okhttp/Response;
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->request:Lcom/squareup/okhttp/Request;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Response has no request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    iget v0, p0, Lcom/squareup/okhttp/Response$Builder;->code:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Response has no code."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_1
    new-instance v0, Lcom/squareup/okhttp/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/Response;-><init>(Lcom/squareup/okhttp/Response$Builder;Lcom/squareup/okhttp/Response$1;)V

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-object p0
.end method

.method public redirectedBy(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;
    .locals 0
    .param p1, "redirectedBy"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/squareup/okhttp/Response$Builder;->redirectedBy:Lcom/squareup/okhttp/Response;

    .line 208
    return-object p0
.end method
