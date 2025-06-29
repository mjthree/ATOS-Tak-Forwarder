.class public final Latak/core/G1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latak/core/G1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/Buffer$UnsafeCursor\n+ 2 -Util.kt\nokio/-Util\n*L\n1#1,2214:1\n72#2:2215\n*E\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/Buffer$UnsafeCursor\n*L\n2133#1:2215\n*E\n"
.end annotation


# instance fields
.field public O:Latak/core/G1;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public P:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private Q:Latak/core/Eh;

.field public R:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public S:[B
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public T:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public U:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Latak/core/G1$a;->R:J

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Latak/core/G1$a;->T:I

    .line 10
    .line 11
    iput v0, p0, Latak/core/G1$a;->U:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(I)J
    .locals 9

    .line 1
    if-lez p1, :cond_3

    .line 2
    .line 3
    const/16 v0, 0x2000

    .line 4
    .line 5
    if-gt p1, v0, :cond_2

    .line 6
    .line 7
    iget-object v1, p0, Latak/core/G1$a;->O:Latak/core/G1;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-boolean v2, p0, Latak/core/G1$a;->P:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Latak/core/G1;->size()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    invoke-virtual {v1, p1}, Latak/core/G1;->j(I)Latak/core/Eh;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget v4, p1, Latak/core/Eh;->c:I

    .line 24
    .line 25
    rsub-int v4, v4, 0x2000

    .line 26
    .line 27
    iput v0, p1, Latak/core/Eh;->c:I

    .line 28
    .line 29
    int-to-long v5, v4

    .line 30
    add-long v7, v2, v5

    .line 31
    .line 32
    invoke-virtual {v1, v7, v8}, Latak/core/G1;->i(J)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Latak/core/G1$a;->Q:Latak/core/Eh;

    .line 36
    .line 37
    iput-wide v2, p0, Latak/core/G1$a;->R:J

    .line 38
    .line 39
    iget-object p1, p1, Latak/core/Eh;->a:[B

    .line 40
    .line 41
    iput-object p1, p0, Latak/core/G1$a;->S:[B

    .line 42
    .line 43
    rsub-int p1, v4, 0x2000

    .line 44
    .line 45
    iput p1, p0, Latak/core/G1$a;->T:I

    .line 46
    .line 47
    iput v0, p0, Latak/core/G1$a;->U:I

    .line 48
    .line 49
    return-wide v5

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v0, "expandBuffer() only permitted for read/write buffers"

    .line 53
    .line 54
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string v0, "not attached to a buffer"

    .line 61
    .line 62
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v1, "minByteCount > Segment.SIZE: "

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v0

    .line 93
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v1, "minByteCount <= 0: "

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v0
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Latak/core/G1$a;->O:Latak/core/G1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Latak/core/G1$a;->O:Latak/core/G1;

    .line 7
    .line 8
    iput-object v0, p0, Latak/core/G1$a;->Q:Latak/core/Eh;

    .line 9
    .line 10
    const-wide/16 v1, -0x1

    .line 11
    .line 12
    iput-wide v1, p0, Latak/core/G1$a;->R:J

    .line 13
    .line 14
    iput-object v0, p0, Latak/core/G1$a;->S:[B

    .line 15
    .line 16
    const/4 v0, -0x1

    .line 17
    iput v0, p0, Latak/core/G1$a;->T:I

    .line 18
    .line 19
    iput v0, p0, Latak/core/G1$a;->U:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v1, "not attached to a buffer"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method public final w0()I
    .locals 4

    .line 1
    iget-wide v0, p0, Latak/core/G1$a;->R:J

    .line 2
    .line 3
    iget-object v2, p0, Latak/core/G1$a;->O:Latak/core/G1;

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {v2}, Latak/core/G1;->size()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    cmp-long v0, v0, v2

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-wide v0, p0, Latak/core/G1$a;->R:J

    .line 19
    .line 20
    const-wide/16 v2, -0x1

    .line 21
    .line 22
    cmp-long v2, v0, v2

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    const-wide/16 v0, 0x0

    .line 27
    .line 28
    :goto_0
    invoke-virtual {p0, v0, v1}, Latak/core/G1$a;->y0(J)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget v2, p0, Latak/core/G1$a;->U:I

    .line 34
    .line 35
    iget v3, p0, Latak/core/G1$a;->T:I

    .line 36
    .line 37
    sub-int/2addr v2, v3

    .line 38
    int-to-long v2, v2

    .line 39
    add-long/2addr v0, v2

    .line 40
    goto :goto_0

    .line 41
    :goto_1
    return v0

    .line 42
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v1, "no more bytes"

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method

.method public final x0(J)J
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-wide/from16 v1, p1

    .line 3
    .line 4
    iget-object v3, v0, Latak/core/G1$a;->O:Latak/core/G1;

    .line 5
    .line 6
    if-eqz v3, :cond_9

    .line 7
    .line 8
    iget-boolean v4, v0, Latak/core/G1$a;->P:Z

    .line 9
    .line 10
    if-eqz v4, :cond_8

    .line 11
    .line 12
    invoke-virtual {v3}, Latak/core/G1;->size()J

    .line 13
    .line 14
    .line 15
    move-result-wide v4

    .line 16
    cmp-long v6, v1, v4

    .line 17
    .line 18
    const-wide/16 v7, 0x0

    .line 19
    .line 20
    if-gtz v6, :cond_5

    .line 21
    .line 22
    cmp-long v6, v1, v7

    .line 23
    .line 24
    if-ltz v6, :cond_4

    .line 25
    .line 26
    sub-long v9, v4, v1

    .line 27
    .line 28
    :goto_0
    cmp-long v6, v9, v7

    .line 29
    .line 30
    if-lez v6, :cond_3

    .line 31
    .line 32
    iget-object v6, v3, Latak/core/G1;->O:Latak/core/Eh;

    .line 33
    .line 34
    if-nez v6, :cond_0

    .line 35
    .line 36
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v6, v6, Latak/core/Eh;->g:Latak/core/Eh;

    .line 40
    .line 41
    if-nez v6, :cond_1

    .line 42
    .line 43
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget v11, v6, Latak/core/Eh;->c:I

    .line 47
    .line 48
    iget v12, v6, Latak/core/Eh;->b:I

    .line 49
    .line 50
    sub-int v12, v11, v12

    .line 51
    .line 52
    int-to-long v12, v12

    .line 53
    cmp-long v14, v12, v9

    .line 54
    .line 55
    if-gtz v14, :cond_2

    .line 56
    .line 57
    invoke-virtual {v6}, Latak/core/Eh;->b()Latak/core/Eh;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    iput-object v11, v3, Latak/core/G1;->O:Latak/core/Eh;

    .line 62
    .line 63
    invoke-static {v6}, Latak/core/Fh;->d(Latak/core/Eh;)V

    .line 64
    .line 65
    .line 66
    sub-long/2addr v9, v12

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    long-to-int v7, v9

    .line 69
    sub-int/2addr v11, v7

    .line 70
    iput v11, v6, Latak/core/Eh;->c:I

    .line 71
    .line 72
    :cond_3
    const/4 v6, 0x0

    .line 73
    iput-object v6, v0, Latak/core/G1$a;->Q:Latak/core/Eh;

    .line 74
    .line 75
    iput-wide v1, v0, Latak/core/G1$a;->R:J

    .line 76
    .line 77
    iput-object v6, v0, Latak/core/G1$a;->S:[B

    .line 78
    .line 79
    const/4 v6, -0x1

    .line 80
    iput v6, v0, Latak/core/G1$a;->T:I

    .line 81
    .line 82
    iput v6, v0, Latak/core/G1$a;->U:I

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v4, "newSize < 0: "

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v2

    .line 112
    :cond_5
    if-lez v6, :cond_7

    .line 113
    .line 114
    sub-long v9, v1, v4

    .line 115
    .line 116
    const/4 v6, 0x1

    .line 117
    move v11, v6

    .line 118
    :goto_1
    cmp-long v12, v9, v7

    .line 119
    .line 120
    if-lez v12, :cond_7

    .line 121
    .line 122
    invoke-virtual {v3, v6}, Latak/core/G1;->j(I)Latak/core/Eh;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    iget v13, v12, Latak/core/Eh;->c:I

    .line 127
    .line 128
    rsub-int v13, v13, 0x2000

    .line 129
    .line 130
    int-to-long v13, v13

    .line 131
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->min(JJ)J

    .line 132
    .line 133
    .line 134
    move-result-wide v13

    .line 135
    long-to-int v13, v13

    .line 136
    iget v14, v12, Latak/core/Eh;->c:I

    .line 137
    .line 138
    add-int/2addr v14, v13

    .line 139
    iput v14, v12, Latak/core/Eh;->c:I

    .line 140
    .line 141
    int-to-long v6, v13

    .line 142
    sub-long/2addr v9, v6

    .line 143
    if-eqz v11, :cond_6

    .line 144
    .line 145
    iput-object v12, v0, Latak/core/G1$a;->Q:Latak/core/Eh;

    .line 146
    .line 147
    iput-wide v4, v0, Latak/core/G1$a;->R:J

    .line 148
    .line 149
    iget-object v6, v12, Latak/core/Eh;->a:[B

    .line 150
    .line 151
    iput-object v6, v0, Latak/core/G1$a;->S:[B

    .line 152
    .line 153
    sub-int v6, v14, v13

    .line 154
    .line 155
    iput v6, v0, Latak/core/G1$a;->T:I

    .line 156
    .line 157
    iput v14, v0, Latak/core/G1$a;->U:I

    .line 158
    .line 159
    const/4 v11, 0x0

    .line 160
    :cond_6
    const/4 v6, 0x1

    .line 161
    const-wide/16 v7, 0x0

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_7
    :goto_2
    invoke-virtual {v3, v1, v2}, Latak/core/G1;->i(J)V

    .line 165
    .line 166
    .line 167
    return-wide v4

    .line 168
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 169
    .line 170
    const-string v2, "resizeBuffer() only permitted for read/write buffers"

    .line 171
    .line 172
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw v1

    .line 176
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 177
    .line 178
    const-string v2, "not attached to a buffer"

    .line 179
    .line 180
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw v1
.end method

.method public final y0(J)I
    .locals 11

    .line 1
    iget-object v0, p0, Latak/core/G1$a;->O:Latak/core/G1;

    .line 2
    .line 3
    if-eqz v0, :cond_11

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    int-to-long v2, v1

    .line 7
    cmp-long v2, p1, v2

    .line 8
    .line 9
    if-ltz v2, :cond_10

    .line 10
    .line 11
    invoke-virtual {v0}, Latak/core/G1;->size()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    cmp-long v2, p1, v2

    .line 16
    .line 17
    if-gtz v2, :cond_10

    .line 18
    .line 19
    const-wide/16 v2, -0x1

    .line 20
    .line 21
    cmp-long v2, p1, v2

    .line 22
    .line 23
    if-eqz v2, :cond_f

    .line 24
    .line 25
    invoke-virtual {v0}, Latak/core/G1;->size()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    cmp-long v2, p1, v2

    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :cond_0
    invoke-virtual {v0}, Latak/core/G1;->size()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    iget-object v3, v0, Latak/core/G1;->O:Latak/core/Eh;

    .line 40
    .line 41
    iget-object v4, p0, Latak/core/G1$a;->Q:Latak/core/Eh;

    .line 42
    .line 43
    const-wide/16 v5, 0x0

    .line 44
    .line 45
    if-eqz v4, :cond_3

    .line 46
    .line 47
    iget-wide v7, p0, Latak/core/G1$a;->R:J

    .line 48
    .line 49
    iget v9, p0, Latak/core/G1$a;->T:I

    .line 50
    .line 51
    if-nez v4, :cond_1

    .line 52
    .line 53
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget v4, v4, Latak/core/Eh;->b:I

    .line 57
    .line 58
    sub-int/2addr v9, v4

    .line 59
    int-to-long v9, v9

    .line 60
    sub-long/2addr v7, v9

    .line 61
    cmp-long v4, v7, p1

    .line 62
    .line 63
    if-lez v4, :cond_2

    .line 64
    .line 65
    iget-object v1, p0, Latak/core/G1$a;->Q:Latak/core/Eh;

    .line 66
    .line 67
    move-object v4, v3

    .line 68
    move-object v3, v1

    .line 69
    move-wide v1, v7

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget-object v4, p0, Latak/core/G1$a;->Q:Latak/core/Eh;

    .line 72
    .line 73
    move-wide v5, v7

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    move-object v4, v3

    .line 76
    :goto_0
    sub-long v7, v1, p1

    .line 77
    .line 78
    sub-long v9, p1, v5

    .line 79
    .line 80
    cmp-long v7, v7, v9

    .line 81
    .line 82
    if-lez v7, :cond_5

    .line 83
    .line 84
    :goto_1
    if-nez v4, :cond_4

    .line 85
    .line 86
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 87
    .line 88
    .line 89
    :cond_4
    iget v1, v4, Latak/core/Eh;->c:I

    .line 90
    .line 91
    iget v2, v4, Latak/core/Eh;->b:I

    .line 92
    .line 93
    sub-int v3, v1, v2

    .line 94
    .line 95
    int-to-long v7, v3

    .line 96
    add-long/2addr v7, v5

    .line 97
    cmp-long v3, p1, v7

    .line 98
    .line 99
    if-ltz v3, :cond_9

    .line 100
    .line 101
    sub-int/2addr v1, v2

    .line 102
    int-to-long v1, v1

    .line 103
    add-long/2addr v5, v1

    .line 104
    iget-object v4, v4, Latak/core/Eh;->f:Latak/core/Eh;

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_5
    :goto_2
    cmp-long v4, v1, p1

    .line 108
    .line 109
    if-lez v4, :cond_8

    .line 110
    .line 111
    if-nez v3, :cond_6

    .line 112
    .line 113
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 114
    .line 115
    .line 116
    :cond_6
    iget-object v3, v3, Latak/core/Eh;->g:Latak/core/Eh;

    .line 117
    .line 118
    if-nez v3, :cond_7

    .line 119
    .line 120
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 121
    .line 122
    .line 123
    :cond_7
    iget v4, v3, Latak/core/Eh;->c:I

    .line 124
    .line 125
    iget v5, v3, Latak/core/Eh;->b:I

    .line 126
    .line 127
    sub-int/2addr v4, v5

    .line 128
    int-to-long v4, v4

    .line 129
    sub-long/2addr v1, v4

    .line 130
    goto :goto_2

    .line 131
    :cond_8
    move-wide v5, v1

    .line 132
    move-object v4, v3

    .line 133
    :cond_9
    iget-boolean v1, p0, Latak/core/G1$a;->P:Z

    .line 134
    .line 135
    if-eqz v1, :cond_d

    .line 136
    .line 137
    if-nez v4, :cond_a

    .line 138
    .line 139
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 140
    .line 141
    .line 142
    :cond_a
    iget-boolean v1, v4, Latak/core/Eh;->d:Z

    .line 143
    .line 144
    if-eqz v1, :cond_d

    .line 145
    .line 146
    invoke-virtual {v4}, Latak/core/Eh;->f()Latak/core/Eh;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    iget-object v2, v0, Latak/core/G1;->O:Latak/core/Eh;

    .line 151
    .line 152
    if-ne v2, v4, :cond_b

    .line 153
    .line 154
    iput-object v1, v0, Latak/core/G1;->O:Latak/core/Eh;

    .line 155
    .line 156
    :cond_b
    invoke-virtual {v4, v1}, Latak/core/Eh;->c(Latak/core/Eh;)Latak/core/Eh;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    iget-object v0, v4, Latak/core/Eh;->g:Latak/core/Eh;

    .line 161
    .line 162
    if-nez v0, :cond_c

    .line 163
    .line 164
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 165
    .line 166
    .line 167
    :cond_c
    invoke-virtual {v0}, Latak/core/Eh;->b()Latak/core/Eh;

    .line 168
    .line 169
    .line 170
    :cond_d
    iput-object v4, p0, Latak/core/G1$a;->Q:Latak/core/Eh;

    .line 171
    .line 172
    iput-wide p1, p0, Latak/core/G1$a;->R:J

    .line 173
    .line 174
    if-nez v4, :cond_e

    .line 175
    .line 176
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 177
    .line 178
    .line 179
    :cond_e
    iget-object v0, v4, Latak/core/Eh;->a:[B

    .line 180
    .line 181
    iput-object v0, p0, Latak/core/G1$a;->S:[B

    .line 182
    .line 183
    iget v0, v4, Latak/core/Eh;->b:I

    .line 184
    .line 185
    sub-long/2addr p1, v5

    .line 186
    long-to-int p1, p1

    .line 187
    add-int/2addr v0, p1

    .line 188
    iput v0, p0, Latak/core/G1$a;->T:I

    .line 189
    .line 190
    iget p1, v4, Latak/core/Eh;->c:I

    .line 191
    .line 192
    iput p1, p0, Latak/core/G1$a;->U:I

    .line 193
    .line 194
    sub-int/2addr p1, v0

    .line 195
    return p1

    .line 196
    :cond_f
    :goto_3
    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Latak/core/G1$a;->Q:Latak/core/Eh;

    .line 198
    .line 199
    iput-wide p1, p0, Latak/core/G1$a;->R:J

    .line 200
    .line 201
    iput-object v0, p0, Latak/core/G1$a;->S:[B

    .line 202
    .line 203
    iput v1, p0, Latak/core/G1$a;->T:I

    .line 204
    .line 205
    iput v1, p0, Latak/core/G1$a;->U:I

    .line 206
    .line 207
    return v1

    .line 208
    :cond_10
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 209
    .line 210
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 211
    .line 212
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {v0}, Latak/core/G1;->size()J

    .line 217
    .line 218
    .line 219
    move-result-wide v2

    .line 220
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    const/4 p2, 0x2

    .line 229
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    const-string p2, "offset=%s > size=%s"

    .line 234
    .line 235
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    const-string p2, "java.lang.String.format(format, *args)"

    .line 240
    .line 241
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw v1

    .line 248
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 249
    .line 250
    const-string p2, "not attached to a buffer"

    .line 251
    .line 252
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    throw p1
.end method
