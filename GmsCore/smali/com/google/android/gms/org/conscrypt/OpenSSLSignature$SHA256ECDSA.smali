.class public final Lcom/google/android/gms/org/conscrypt/OpenSSLSignature$SHA256ECDSA;
.super Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;
.source "SourceFile"


# static fields
.field private static final EVP_MD:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 282
    const-string v0, "SHA256"

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_get_digestbyname(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature$SHA256ECDSA;->EVP_MD:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 284
    sget-wide v0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature$SHA256ECDSA;->EVP_MD:J

    sget-object v2, Lcom/google/android/gms/org/conscrypt/q;->c:Lcom/google/android/gms/org/conscrypt/q;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;-><init>(JLcom/google/android/gms/org/conscrypt/q;Lcom/google/android/gms/org/conscrypt/p;)V

    .line 285
    return-void
.end method
