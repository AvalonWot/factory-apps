.class public final Lcom/google/android/location/m/a/bj;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile f:[Lcom/google/android/location/m/a/bj;


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/google/android/location/m/a/bj;->a:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/location/m/a/bj;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/bj;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/bj;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/bj;->e:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/bj;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/bj;->G:I

    .line 40
    return-void
.end method

.method public static b()[Lcom/google/android/location/m/a/bj;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/location/m/a/bj;->f:[Lcom/google/android/location/m/a/bj;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/android/location/m/a/bj;->f:[Lcom/google/android/location/m/a/bj;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/m/a/bj;

    sput-object v0, Lcom/google/android/location/m/a/bj;->f:[Lcom/google/android/location/m/a/bj;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/android/location/m/a/bj;->f:[Lcom/google/android/location/m/a/bj;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 4

    .prologue
    .line 140
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 141
    iget-object v1, p0, Lcom/google/android/location/m/a/bj;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 142
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/bj;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/a/bj;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 146
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/bj;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/bj;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 150
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/bj;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/bj;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 154
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/m/a/bj;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 157
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/bj;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 158
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/location/m/a/bj;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 161
    :cond_4
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 2

    .prologue
    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/bj;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bj;->a:Ljava/lang/Long;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bj;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bj;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bj;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bj;->e:Ljava/lang/Integer;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/location/m/a/bj;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/bj;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->a(IJ)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/bj;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 124
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/a/bj;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/bj;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 127
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/a/bj;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/bj;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 130
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/m/a/bj;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/bj;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 133
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/location/m/a/bj;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 135
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 136
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 55
    if-ne p1, p0, :cond_1

    .line 56
    const/4 v0, 0x1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/bj;

    if-eqz v1, :cond_0

    .line 61
    check-cast p1, Lcom/google/android/location/m/a/bj;

    .line 62
    iget-object v1, p0, Lcom/google/android/location/m/a/bj;->a:Ljava/lang/Long;

    if-nez v1, :cond_7

    .line 63
    iget-object v1, p1, Lcom/google/android/location/m/a/bj;->a:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/bj;->b:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 70
    iget-object v1, p1, Lcom/google/android/location/m/a/bj;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 76
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/bj;->c:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 77
    iget-object v1, p1, Lcom/google/android/location/m/a/bj;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 83
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/bj;->d:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 84
    iget-object v1, p1, Lcom/google/android/location/m/a/bj;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 90
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/bj;->e:Ljava/lang/Integer;

    if-nez v1, :cond_b

    .line 91
    iget-object v1, p1, Lcom/google/android/location/m/a/bj;->e:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 97
    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/bj;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 66
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/bj;->a:Ljava/lang/Long;

    iget-object v2, p1, Lcom/google/android/location/m/a/bj;->a:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 73
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/bj;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/bj;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 80
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/bj;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/bj;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 87
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/m/a/bj;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/bj;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 94
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/m/a/bj;->e:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/bj;->e:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/google/android/location/m/a/bj;->a:Ljava/lang/Long;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 105
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/bj;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 107
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/bj;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 109
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/bj;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 111
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/bj;->e:Ljava/lang/Integer;

    if-nez v2, :cond_4

    :goto_4
    add-int/2addr v0, v1

    .line 113
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/bj;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    return v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/bj;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/bj;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/bj;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/bj;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 111
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/bj;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_4
.end method
