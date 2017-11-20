.class final Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DownloadProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/DownloadProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/DownloadProvider;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->this$0:Lcom/android/providers/downloads/DownloadProvider;

    .line 233
    const-string v0, "downloads.db"

    const/4 v1, 0x0

    const/16 v2, 0x6e

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 234
    return-void
.end method

.method private addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "dbTable"    # Ljava/lang/String;
    .param p3, "columnName"    # Ljava/lang/String;
    .param p4, "columnDefinition"    # Ljava/lang/String;

    .prologue
    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ADD COLUMN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method private createDownloadsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 395
    :try_start_0
    const-string v1, "DROP TABLE IF EXISTS downloads"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 396
    const-string v1, "CREATE TABLE downloads(_id INTEGER PRIMARY KEY AUTOINCREMENT,uri TEXT, method INTEGER, entity TEXT, no_integrity BOOLEAN, hint TEXT, otaupdate BOOLEAN, _data TEXT, mimetype TEXT, destination INTEGER, no_system BOOLEAN, visibility INTEGER, control INTEGER, status INTEGER, numfailed INTEGER, lastmod BIGINT, notificationpackage TEXT, notificationclass TEXT, notificationextras TEXT, cookiedata TEXT, useragent TEXT, referer TEXT, total_bytes INTEGER, current_bytes INTEGER, etag TEXT, uid INTEGER, otheruid INTEGER, title TEXT, description TEXT, scanned BOOLEAN);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    return-void

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "ex":Landroid/database/SQLException;
    const-string v1, "DownloadManager"

    const-string v2, "couldn\'t create table in downloads database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    throw v0
.end method

.method private createHeadersTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 434
    const-string v0, "DROP TABLE IF EXISTS request_headers"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 435
    const-string v0, "CREATE TABLE request_headers(id INTEGER PRIMARY KEY AUTOINCREMENT,download_id INTEGER NOT NULL,header TEXT NOT NULL,value TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method private fillNullValues(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 350
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 351
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "current_bytes"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    invoke-direct {p0, p1, v0}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->fillNullValuesForColumn(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 353
    const-string v1, "total_bytes"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 354
    invoke-direct {p0, p1, v0}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->fillNullValuesForColumn(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 355
    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-direct {p0, p1, v0}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->fillNullValuesForColumn(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 357
    const-string v1, "description"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-direct {p0, p1, v0}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->fillNullValuesForColumn(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 359
    return-void
.end method

.method private fillNullValuesForColumn(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 362
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 363
    .local v0, "column":Ljava/lang/String;
    const-string v1, "downloads"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 364
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 365
    return-void
.end method

.method private makeCacheDownloadsInvisible(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 371
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 372
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "is_visible_in_downloads_ui"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 373
    const-string v0, "destination != 0"

    .line 375
    .local v0, "cacheSelection":Ljava/lang/String;
    const-string v2, "downloads"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 376
    return-void
.end method

.method private upgradeTo(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "version"    # I

    .prologue
    .line 282
    packed-switch p2, :pswitch_data_0

    .line 341
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to upgrade to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->createDownloadsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 343
    :goto_0
    return-void

    .line 288
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->createHeadersTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 292
    :pswitch_2
    const-string v0, "downloads"

    const-string v1, "is_public_api"

    const-string v2, "INTEGER NOT NULL DEFAULT 0"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v0, "downloads"

    const-string v1, "allow_roaming"

    const-string v2, "INTEGER NOT NULL DEFAULT 0"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v0, "downloads"

    const-string v1, "allowed_network_types"

    const-string v2, "INTEGER NOT NULL DEFAULT 0"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :pswitch_3
    const-string v0, "downloads"

    const-string v1, "is_visible_in_downloads_ui"

    const-string v2, "INTEGER NOT NULL DEFAULT 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->makeCacheDownloadsInvisible(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 307
    :pswitch_4
    const-string v0, "downloads"

    const-string v1, "bypass_recommended_size_limit"

    const-string v2, "INTEGER NOT NULL DEFAULT 0"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->fillNullValues(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 316
    :pswitch_6
    const-string v0, "downloads"

    const-string v1, "mediaprovider_uri"

    const-string v2, "TEXT"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v0, "downloads"

    const-string v1, "deleted"

    const-string v2, "BOOLEAN NOT NULL DEFAULT 0"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :pswitch_7
    const-string v0, "downloads"

    const-string v1, "errorMsg"

    const-string v2, "TEXT"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :pswitch_8
    const-string v0, "downloads"

    const-string v1, "allow_metered"

    const-string v2, "INTEGER NOT NULL DEFAULT 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :pswitch_9
    const-string v0, "downloads"

    const-string v1, "allow_write"

    const-string v2, "BOOLEAN NOT NULL DEFAULT 0"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :pswitch_a
    const-string v0, "downloads"

    const-string v1, "allow_unplugged"

    const-string v2, "BOOLEAN NOT NULL DEFAULT 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 241
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "DownloadManager"

    const-string v1, "populating new database"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x6e

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 245
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldV"    # I
    .param p3, "newV"    # I

    .prologue
    .line 256
    const/16 v1, 0x1f

    if-ne p2, v1, :cond_1

    .line 259
    const/16 p2, 0x64

    .line 273
    :cond_0
    :goto_0
    add-int/lit8 v0, p2, 0x1

    .local v0, "version":I
    :goto_1
    if-gt v0, p3, :cond_3

    .line 274
    invoke-direct {p0, p1, v0}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->upgradeTo(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 260
    .end local v0    # "version":I
    :cond_1
    const/16 v1, 0x64

    if-ge p2, v1, :cond_2

    .line 262
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading downloads database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", which will destroy all old data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/16 p2, 0x63

    goto :goto_0

    .line 265
    :cond_2
    if-le p2, p3, :cond_0

    .line 268
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downgrading downloads database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (current version is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), destroying all old data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/16 p2, 0x63

    goto :goto_0

    .line 276
    .restart local v0    # "version":I
    :cond_3
    return-void
.end method
