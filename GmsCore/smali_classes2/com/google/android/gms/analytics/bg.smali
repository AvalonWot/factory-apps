.class final Lcom/google/android/gms/analytics/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/analytics/g;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/android/gms/analytics/bh;

.field private volatile c:Lcom/google/android/gms/analytics/r;

.field private final d:Lcom/google/android/gms/analytics/h;

.field private final e:Landroid/content/Context;

.field private final f:Ljava/lang/String;

.field private g:Lcom/google/android/gms/analytics/bf;

.field private h:J

.field private final i:I

.field private j:Lcom/google/android/gms/common/util/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 61
    const-string v0, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' INTEGER);"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "hits2"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "hit_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "hit_time"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "hit_url"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "hit_string"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "hit_app_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/bg;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/analytics/h;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 104
    const-string v0, "google_analytics_v4.db"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/analytics/bg;-><init>(Lcom/google/android/gms/analytics/h;Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/analytics/h;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/bg;->e:Landroid/content/Context;

    .line 121
    iput-object p3, p0, Lcom/google/android/gms/analytics/bg;->f:Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lcom/google/android/gms/analytics/bg;->d:Lcom/google/android/gms/analytics/h;

    .line 123
    invoke-static {}, Lcom/google/android/gms/common/util/j;->c()Lcom/google/android/gms/common/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/bg;->j:Lcom/google/android/gms/common/util/i;

    .line 124
    new-instance v0, Lcom/google/android/gms/analytics/bh;

    iget-object v1, p0, Lcom/google/android/gms/analytics/bg;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/analytics/bg;->f:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/analytics/bh;-><init>(Lcom/google/android/gms/analytics/bg;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/bg;->b:Lcom/google/android/gms/analytics/bh;

    .line 125
    new-instance v0, Lcom/google/android/gms/analytics/bm;

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/analytics/bg;->e:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/analytics/bm;-><init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/bg;->c:Lcom/google/android/gms/analytics/r;

    .line 128
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/bg;->h:J

    .line 130
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/google/android/gms/analytics/bg;->i:I

    .line 131
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 601
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/bg;->b:Lcom/google/android/gms/analytics/bh;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/bh;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 608
    :goto_0
    return-object v0

    .line 605
    :catch_0
    move-exception v0

    invoke-static {p1}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    .line 606
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/bg;)Lcom/google/android/gms/common/util/i;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/analytics/bg;->j:Lcom/google/android/gms/common/util/i;

    return-object v0
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 279
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 280
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/analytics/bb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/analytics/bb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 286
    :cond_0
    const-string v0, "&"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I)Ljava/util/List;
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 297
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 298
    if-gtz p1, :cond_0

    .line 299
    const-string v0, "Invalid maxHits specified. Skipping"

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    move-object v0, v9

    .line 329
    :goto_0
    return-object v0

    .line 302
    :cond_0
    const-string v0, "Error opening database for peekHitIds."

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/bg;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 303
    if-nez v0, :cond_1

    move-object v0, v9

    .line 304
    goto :goto_0

    .line 309
    :cond_1
    :try_start_0
    const-string v1, "hits2"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "hit_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "%s ASC"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "hit_id"

    aput-object v12, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 317
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 319
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    .line 325
    :cond_3
    if-eqz v1, :cond_4

    .line 326
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move-object v0, v9

    .line 329
    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    move-object v1, v10

    .line 323
    :goto_2
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in peekHits fetching hitIds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 325
    if-eqz v1, :cond_4

    .line 326
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 325
    :catchall_0
    move-exception v0

    move-object v1, v10

    :goto_3
    if-eqz v1, :cond_5

    .line 326
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 325
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 322
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private a(Ljava/util/Collection;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 473
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    :cond_0
    const-string v0, "Empty/Null collection passed to deleteHits."

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    .line 483
    :goto_0
    return-void

    .line 477
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 478
    const/4 v0, 0x0

    .line 479
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/av;

    .line 480
    add-int/lit8 v2, v1, 0x1

    iget-wide v6, v0, Lcom/google/android/gms/analytics/av;->b:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    move v1, v2

    .line 481
    goto :goto_1

    .line 482
    :cond_2
    invoke-direct {p0, v3}, Lcom/google/android/gms/analytics/bg;->a([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/Map;Ljava/util/Collection;)V
    .locals 5

    .prologue
    .line 213
    const-string v0, "&_v"

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 214
    if-eqz p1, :cond_1

    .line 215
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/Command;

    .line 216
    const-string v3, "appendVersion"

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/Command;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/Command;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_1
    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 491
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_2

    .line 492
    :cond_0
    const-string v0, "Empty hitIds passed to deleteHits."

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    .line 507
    :cond_1
    :goto_0
    return-void

    .line 495
    :cond_2
    const-string v2, "Error opening database for deleteHits."

    invoke-direct {p0, v2}, Lcom/google/android/gms/analytics/bg;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 496
    if-eqz v2, :cond_1

    .line 499
    const-string v3, "HIT_ID in (%s)"

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, ","

    array-length v6, p1

    const-string v7, "?"

    invoke-static {v6, v7}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 502
    :try_start_0
    const-string v4, "hits2"

    invoke-virtual {v2, v4, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 503
    iget-object v2, p0, Lcom/google/android/gms/analytics/bg;->d:Lcom/google/android/gms/analytics/h;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/bg;->f()I

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-interface {v2, v0}, Lcom/google/android/gms/analytics/h;->a(Z)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 505
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error deleting hits "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 503
    goto :goto_1
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/bg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/analytics/bg;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/analytics/bg;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/analytics/bg;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/android/gms/analytics/bg;->a:Ljava/lang/String;

    return-object v0
.end method

.method private e()Ljava/util/List;
    .locals 17

    .prologue
    const/4 v14, 0x1

    const/4 v15, 0x0

    const/4 v12, 0x0

    .line 340
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 341
    const-string v2, "Error opening database for peekHits"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/analytics/bg;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 342
    if-nez v2, :cond_1

    move-object v2, v11

    .line 433
    :cond_0
    :goto_0
    return-object v2

    .line 354
    :cond_1
    :try_start_0
    const-string v3, "hits2"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "hit_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "hit_time"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "%s ASC"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v16, "hit_id"

    aput-object v16, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x28

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    .line 363
    :try_start_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 364
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 366
    :cond_2
    new-instance v3, Lcom/google/android/gms/analytics/av;

    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/analytics/av;-><init>(JJ)V

    .line 367
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v3

    if-nez v3, :cond_2

    .line 374
    :cond_3
    if-eqz v13, :cond_4

    .line 375
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 381
    :cond_4
    :try_start_3
    const-string v3, "hits2"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "hit_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "hit_string"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "hit_url"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "%s ASC"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v16, "hit_id"

    aput-object v16, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x28

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    .line 390
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    move v4, v15

    .line 392
    :goto_1
    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v2

    .line 396
    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v2

    if-lez v2, :cond_c

    .line 397
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/av;

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/gms/analytics/av;->a:Ljava/lang/String;

    .line 398
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/av;

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 404
    :cond_5
    :goto_2
    add-int/lit8 v2, v4, 0x1

    .line 405
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v4

    if-nez v4, :cond_f

    .line 432
    :cond_6
    if-eqz v3, :cond_7

    .line 433
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v2, v12

    goto/16 :goto_0

    .line 370
    :catch_0
    move-exception v2

    move-object v3, v2

    move-object v4, v12

    move-object v2, v11

    .line 371
    :goto_3
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error in peekHits fetching hitIds: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 374
    if-eqz v4, :cond_0

    .line 375
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 374
    :catchall_0
    move-exception v2

    :goto_4
    if-eqz v12, :cond_8

    .line 375
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    .line 398
    :cond_9
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "http:"

    iput-object v5, v2, Lcom/google/android/gms/analytics/av;->d:Ljava/lang/String;
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    .line 408
    :catch_1
    move-exception v2

    move-object v13, v3

    .line 409
    :goto_5
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error in peekHits fetching hitString: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    .line 418
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 420
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v15

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/av;

    .line 421
    iget-object v6, v2, Lcom/google/android/gms/analytics/av;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 422
    if-nez v4, :cond_d

    move v4, v14

    .line 428
    :cond_a
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_6

    .line 432
    :catchall_1
    move-exception v2

    :goto_7
    if-eqz v13, :cond_b

    .line 433
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v2

    .line 400
    :cond_c
    :try_start_8
    const-string v5, "HitString for hitId %d too large.  Hit will be deleted."

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/av;

    iget-wide v8, v2, Lcom/google/android/gms/analytics/av;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_2

    .line 432
    :catchall_2
    move-exception v2

    move-object v13, v3

    goto :goto_7

    :cond_d
    if-eqz v13, :cond_e

    .line 433
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_e
    move-object v2, v3

    goto/16 :goto_0

    .line 408
    :catch_2
    move-exception v2

    goto :goto_5

    .line 374
    :catchall_3
    move-exception v2

    move-object v12, v13

    goto/16 :goto_4

    :catchall_4
    move-exception v2

    move-object v12, v4

    goto/16 :goto_4

    .line 370
    :catch_3
    move-exception v2

    move-object v3, v2

    move-object v4, v13

    move-object v2, v11

    goto/16 :goto_3

    :catch_4
    move-exception v2

    move-object v3, v2

    move-object v4, v13

    move-object v2, v12

    goto/16 :goto_3

    :cond_f
    move v4, v2

    goto/16 :goto_1
.end method

.method private f()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 510
    .line 511
    const-string v2, "Error opening database for getNumStoredHits."

    invoke-direct {p0, v2}, Lcom/google/android/gms/analytics/bg;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 512
    if-nez v2, :cond_1

    .line 528
    :cond_0
    :goto_0
    return v0

    .line 517
    :cond_1
    :try_start_0
    const-string v3, "SELECT COUNT(*) from hits2"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 518
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 519
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    long-to-int v0, v2

    .line 524
    :cond_2
    if-eqz v1, :cond_0

    .line 525
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 522
    :catch_0
    move-exception v2

    :try_start_1
    const-string v2, "Error getting numStoredHits"

    invoke-static {v2}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    if-eqz v1, :cond_0

    .line 525
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 524
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 525
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 174
    const-string v2, "Error opening database for clearHits"

    invoke-direct {p0, v2}, Lcom/google/android/gms/analytics/bg;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 175
    if-eqz v2, :cond_0

    .line 176
    cmp-long v3, v4, v4

    if-nez v3, :cond_1

    .line 177
    const-string v3, "hits2"

    invoke-virtual {v2, v3, v6, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 183
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/analytics/bg;->d:Lcom/google/android/gms/analytics/h;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/bg;->f()I

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-interface {v2, v0}, Lcom/google/android/gms/analytics/h;->a(Z)V

    .line 185
    :cond_0
    return-void

    .line 179
    :cond_1
    new-array v3, v0, [Ljava/lang/String;

    .line 180
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 181
    const-string v4, "hits2"

    const-string v5, "hit_app_id = ?"

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 183
    goto :goto_1
.end method

.method public final a(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 203
    iget-object v2, p0, Lcom/google/android/gms/analytics/bg;->j:Lcom/google/android/gms/common/util/i;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/i;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/analytics/bg;->h:J

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    iput-wide v2, p0, Lcom/google/android/gms/analytics/bg;->h:J

    const-string v2, "Error opening database for deleteStaleHits."

    invoke-direct {p0, v2}, Lcom/google/android/gms/analytics/bg;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/analytics/bg;->j:Lcom/google/android/gms/common/util/i;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/i;->a()J

    move-result-wide v4

    const-wide v6, 0x9a7ec800L

    sub-long/2addr v4, v6

    const-string v3, "hits2"

    const-string v6, "HIT_TIME < ?"

    new-array v7, v0, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v1

    invoke-virtual {v2, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/google/android/gms/analytics/bg;->d:Lcom/google/android/gms/analytics/h;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/bg;->f()I

    move-result v3

    if-nez v3, :cond_4

    :goto_0
    invoke-interface {v2, v0}, Lcom/google/android/gms/analytics/h;->a(Z)V

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/bg;->f()I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/analytics/bg;->i:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/bg;->a(I)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Store full, deleting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hits to make room."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/bg;->a([Ljava/lang/String;)V

    .line 205
    :cond_1
    invoke-static {p1, p5}, Lcom/google/android/gms/analytics/bg;->a(Ljava/util/Map;Ljava/util/Collection;)V

    .line 206
    const-string v0, "Error opening database for putHit"

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/bg;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "hit_string"

    invoke-static {p1}, Lcom/google/android/gms/analytics/bg;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hit_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v2, 0x0

    const-string v0, "AppUID"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_0
    const-string v0, "AppUID"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_1
    const-string v2, "hit_app_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-nez p4, :cond_2

    const-string p4, "http://www.google-analytics.com/collect"

    :cond_2
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "Empty path: not sending hit"

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    .line 207
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v0, v1

    .line 203
    goto/16 :goto_0

    :catch_0
    move-exception v0

    :cond_5
    move-wide v0, v2

    goto :goto_1

    .line 206
    :cond_6
    const-string v0, "hit_url"

    invoke-virtual {v5, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    const-string v0, "hits2"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v0, p0, Lcom/google/android/gms/analytics/bg;->d:Lcom/google/android/gms/analytics/h;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/analytics/h;->a(Z)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v0, "Error storing hit"

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 534
    const-string v2, "Dispatch running..."

    invoke-static {v2}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 536
    iget-object v2, p0, Lcom/google/android/gms/analytics/bg;->c:Lcom/google/android/gms/analytics/r;

    invoke-interface {v2}, Lcom/google/android/gms/analytics/r;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 570
    :goto_0
    return-void

    .line 540
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/bg;->e()Ljava/util/List;

    move-result-object v2

    .line 541
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 542
    const-string v1, "...nothing to dispatch"

    invoke-static {v1}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 543
    iget-object v1, p0, Lcom/google/android/gms/analytics/bg;->d:Lcom/google/android/gms/analytics/h;

    invoke-interface {v1, v0}, Lcom/google/android/gms/analytics/h;->a(Z)V

    goto :goto_0

    .line 546
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/analytics/bg;->g:Lcom/google/android/gms/analytics/bf;

    if-nez v3, :cond_2

    .line 547
    new-instance v3, Lcom/google/android/gms/analytics/bf;

    const-string v4, "_t=dispatch&_v=ma4.0.3"

    invoke-direct {v3, v4}, Lcom/google/android/gms/analytics/bf;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/gms/analytics/bg;->g:Lcom/google/android/gms/analytics/bf;

    .line 550
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/analytics/bg;->f()I

    move-result v3

    .line 551
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gt v3, v4, :cond_3

    .line 553
    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/analytics/bg;->c:Lcom/google/android/gms/analytics/r;

    iget-object v4, p0, Lcom/google/android/gms/analytics/bg;->g:Lcom/google/android/gms/analytics/bf;

    invoke-interface {v3, v2, v4, v0}, Lcom/google/android/gms/analytics/r;->a(Ljava/util/List;Lcom/google/android/gms/analytics/bf;Z)I

    move-result v0

    .line 554
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sent "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hits"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 559
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/analytics/bg;->a(Ljava/util/Collection;)V

    .line 563
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/analytics/bg;->f()I

    move-result v0

    if-lez v0, :cond_4

    .line 564
    iget-object v0, p0, Lcom/google/android/gms/analytics/bg;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ap;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ap;->f()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 551
    goto :goto_1

    .line 568
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/bg;->g:Lcom/google/android/gms/analytics/bf;

    goto/16 :goto_0
.end method

.method public final c()Lcom/google/android/gms/analytics/r;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/android/gms/analytics/bg;->c:Lcom/google/android/gms/analytics/r;

    return-object v0
.end method
