.class final enum Lcom/google/common/hash/Hashing$ChecksumType$1;
.super Lcom/google/common/hash/Hashing$ChecksumType;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/common/hash/Hashing$ChecksumType;-><init>(Ljava/lang/String;IILcom/google/common/hash/m;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/google/common/hash/Hashing$ChecksumType$1;->get()Ljava/util/zip/Checksum;

    move-result-object v0

    return-object v0
.end method

.method public final get()Ljava/util/zip/Checksum;
    .locals 1

    .prologue
    .line 227
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    return-object v0
.end method
