.class public final Latak/core/j6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Latak/core/Pk;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGzipSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GzipSource.kt\nokio/GzipSource\n+ 2 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 3 GzipSource.kt\nokio/-GzipSourceExtensions\n+ 4 -Util.kt\nokio/-Util\n*L\n1#1,220:1\n32#2:221\n32#2:223\n32#2:225\n32#2:226\n32#2:227\n32#2:229\n32#2:231\n202#3:222\n202#3:224\n202#3:228\n202#3:230\n75#4:232\n*E\n*S KotlinDebug\n*F\n+ 1 GzipSource.kt\nokio/GzipSource\n*L\n105#1:221\n107#1:223\n119#1:225\n120#1:226\n122#1:227\n133#1:229\n144#1:231\n106#1:222\n117#1:224\n130#1:228\n141#1:230\n187#1:232\n*E\n"
.end annotation


# instance fields
.field private O:B

.field private final P:Latak/core/Ig;

.field private final Q:Ljava/util/zip/Inflater;

.field private final R:Latak/core/U6;

.field private final S:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Latak/core/Pk;)V
    .locals 2
    .param p1    # Latak/core/Pk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Latak/core/Ig;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Latak/core/Ig;-><init>(Latak/core/Pk;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Latak/core/j6;->P:Latak/core/Ig;

    .line 15
    .line 16
    new-instance p1, Ljava/util/zip/Inflater;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {p1, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Latak/core/j6;->Q:Ljava/util/zip/Inflater;

    .line 23
    .line 24
    new-instance v1, Latak/core/U6;

    .line 25
    .line 26
    invoke-direct {v1, v0, p1}, Latak/core/U6;-><init>(Latak/core/J1;Ljava/util/zip/Inflater;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Latak/core/j6;->R:Latak/core/U6;

    .line 30
    .line 31
    new-instance p1, Ljava/util/zip/CRC32;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Latak/core/j6;->S:Ljava/util/zip/CRC32;

    .line 37
    .line 38
    return-void
.end method

.method private final a(Ljava/lang/String;II)V
    .locals 1

    .line 1
    if-ne p3, p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 5
    .line 6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    filled-new-array {p1, p3, p2}, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 p2, 0x3

    .line 19
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p2, "%s: actual 0x%08x != expected 0x%08x"

    .line 24
    .line 25
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string p2, "java.lang.String.format(this, *args)"

    .line 30
    .line 31
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method private final s()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    iget-object v0, v6, Latak/core/j6;->P:Latak/core/Ig;

    .line 4
    .line 5
    const-wide/16 v1, 0xa

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Latak/core/Ig;->p0(J)V

    .line 8
    .line 9
    .line 10
    iget-object v0, v6, Latak/core/j6;->P:Latak/core/Ig;

    .line 11
    .line 12
    iget-object v0, v0, Latak/core/Ig;->P:Latak/core/G1;

    .line 13
    .line 14
    const-wide/16 v1, 0x3

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Latak/core/G1;->L0(J)B

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    shr-int/lit8 v0, v7, 0x1

    .line 21
    .line 22
    const/4 v8, 0x1

    .line 23
    and-int/2addr v0, v8

    .line 24
    const/4 v9, 0x0

    .line 25
    if-ne v0, v8, :cond_0

    .line 26
    .line 27
    move v10, v8

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v10, v9

    .line 30
    :goto_0
    if-eqz v10, :cond_1

    .line 31
    .line 32
    iget-object v0, v6, Latak/core/j6;->P:Latak/core/Ig;

    .line 33
    .line 34
    iget-object v1, v0, Latak/core/Ig;->P:Latak/core/G1;

    .line 35
    .line 36
    const-wide/16 v2, 0x0

    .line 37
    .line 38
    const-wide/16 v4, 0xa

    .line 39
    .line 40
    move-object/from16 v0, p0

    .line 41
    .line 42
    invoke-direct/range {v0 .. v5}, Latak/core/j6;->x0(Latak/core/G1;JJ)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v0, v6, Latak/core/j6;->P:Latak/core/Ig;

    .line 46
    .line 47
    invoke-virtual {v0}, Latak/core/Ig;->readShort()S

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const-string v1, "ID1ID2"

    .line 52
    .line 53
    const/16 v2, 0x1f8b

    .line 54
    .line 55
    invoke-direct {v6, v1, v2, v0}, Latak/core/j6;->a(Ljava/lang/String;II)V

    .line 56
    .line 57
    .line 58
    iget-object v0, v6, Latak/core/j6;->P:Latak/core/Ig;

    .line 59
    .line 60
    const-wide/16 v1, 0x8

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Latak/core/Ig;->skip(J)V

    .line 63
    .line 64
    .line 65
    shr-int/lit8 v0, v7, 0x2

    .line 66
    .line 67
    and-int/2addr v0, v8

    .line 68
    if-ne v0, v8, :cond_4

    .line 69
    .line 70
    iget-object v0, v6, Latak/core/j6;->P:Latak/core/Ig;

    .line 71
    .line 72
    const-wide/16 v1, 0x2

    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Latak/core/Ig;->p0(J)V

    .line 75
    .line 76
    .line 77
    if-eqz v10, :cond_2

    .line 78
    .line 79
    iget-object v0, v6, Latak/core/j6;->P:Latak/core/Ig;

    .line 80
    .line 81
    iget-object v1, v0, Latak/core/Ig;->P:Latak/core/G1;

    .line 82
    .line 83
    const-wide/16 v2, 0x0

    .line 84
    .line 85
    const-wide/16 v4, 0x2

    .line 86
    .line 87
    move-object/from16 v0, p0

    .line 88
    .line 89
    invoke-direct/range {v0 .. v5}, Latak/core/j6;->x0(Latak/core/G1;JJ)V

    .line 90
    .line 91
    .line 92
    :cond_2
    iget-object v0, v6, Latak/core/j6;->P:Latak/core/Ig;

    .line 93
    .line 94
    iget-object v0, v0, Latak/core/Ig;->P:Latak/core/G1;

    .line 95
    .line 96
    invoke-virtual {v0}, Latak/core/G1;->i0()S

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    int-to-long v11, v0

    .line 101
    iget-object v0, v6, Latak/core/j6;->P:Latak/core/Ig;

    .line 102
    .line 103
    invoke-virtual {v0, v11, v12}, Latak/core/Ig;->p0(J)V

    .line 104
    .line 105
    .line 106
    if-eqz v10, :cond_3

    .line 107
    .line 108
    iget-object v0, v6, Latak/core/j6;->P:Latak/core/Ig;

    .line 109
    .line 110
    iget-object v1, v0, Latak/core/Ig;->P:Latak/core/G1;

    .line 111
    .line 112
    const-wide/16 v2, 0x0

    .line 113
    .line 114
    move-object/from16 v0, p0

    .line 115
    .line 116
    move-wide v4, v11

    .line 117
    invoke-direct/range {v0 .. v5}, Latak/core/j6;->x0(Latak/core/G1;JJ)V

    .line 118
    .line 119
    .line 120
    :cond_3
    iget-object v0, v6, Latak/core/j6;->P:Latak/core/Ig;

    .line 121
    .line 122
    invoke-virtual {v0, v11, v12}, Latak/core/Ig;->skip(J)V

    .line 123
    .line 124
    .line 125
    :cond_4
    shr-int/lit8 v0, v7, 0x3

    .line 126
    .line 127
    and-int/2addr v0, v8

    .line 128
    const-wide/16 v11, -0x1

    .line 129
    .line 130
    const-wide/16 v13, 0x1

    .line 131
    .line 132
    if-ne v0, v8, :cond_7

    .line 133
    .line 134
    iget-object v0, v6, Latak/core/j6;->P:Latak/core/Ig;

    .line 135
    .line 136
    invoke-virtual {v0, v9}, Latak/core/Ig;->s0(B)J

    .line 137
    .line 138
    .line 139
    move-result-wide v15

    .line 140
    cmp-long v0, v15, v11

    .line 141
    .line 142
    if-eqz v0, :cond_6

    .line 143
    .line 144
    if-eqz v10, :cond_5

    .line 145
    .line 146
    iget-object v0, v6, Latak/core/j6;->P:Latak/core/Ig;

    .line 147
    .line 148
    iget-object v1, v0, Latak/core/Ig;->P:Latak/core/G1;

    .line 149
    .line 150
    const-wide/16 v2, 0x0

    .line 151
    .line 152
    add-long v4, v15, v13

    .line 153
    .line 154
    move-object/from16 v0, p0

    .line 155
    .line 156
    invoke-direct/range {v0 .. v5}, Latak/core/j6;->x0(Latak/core/G1;JJ)V

    .line 157
    .line 158
    .line 159
    :cond_5
    iget-object v0, v6, Latak/core/j6;->P:Latak/core/Ig;

    .line 160
    .line 161
    add-long v1, v15, v13

    .line 162
    .line 163
    invoke-virtual {v0, v1, v2}, Latak/core/Ig;->skip(J)V

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_6
    new-instance v0, Ljava/io/EOFException;

    .line 168
    .line 169
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 170
    .line 171
    .line 172
    throw v0

    .line 173
    :cond_7
    :goto_1
    shr-int/lit8 v0, v7, 0x4

    .line 174
    .line 175
    and-int/2addr v0, v8

    .line 176
    if-ne v0, v8, :cond_a

    .line 177
    .line 178
    iget-object v0, v6, Latak/core/j6;->P:Latak/core/Ig;

    .line 179
    .line 180
    invoke-virtual {v0, v9}, Latak/core/Ig;->s0(B)J

    .line 181
    .line 182
    .line 183
    move-result-wide v7

    .line 184
    cmp-long v0, v7, v11

    .line 185
    .line 186
    if-eqz v0, :cond_9

    .line 187
    .line 188
    if-eqz v10, :cond_8

    .line 189
    .line 190
    iget-object v0, v6, Latak/core/j6;->P:Latak/core/Ig;

    .line 191
    .line 192
    iget-object v1, v0, Latak/core/Ig;->P:Latak/core/G1;

    .line 193
    .line 194
    const-wide/16 v2, 0x0

    .line 195
    .line 196
    add-long v4, v7, v13

    .line 197
    .line 198
    move-object/from16 v0, p0

    .line 199
    .line 200
    invoke-direct/range {v0 .. v5}, Latak/core/j6;->x0(Latak/core/G1;JJ)V

    .line 201
    .line 202
    .line 203
    :cond_8
    iget-object v0, v6, Latak/core/j6;->P:Latak/core/Ig;

    .line 204
    .line 205
    add-long/2addr v7, v13

    .line 206
    invoke-virtual {v0, v7, v8}, Latak/core/Ig;->skip(J)V

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_9
    new-instance v0, Ljava/io/EOFException;

    .line 211
    .line 212
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 213
    .line 214
    .line 215
    throw v0

    .line 216
    :cond_a
    :goto_2
    if-eqz v10, :cond_b

    .line 217
    .line 218
    iget-object v0, v6, Latak/core/j6;->P:Latak/core/Ig;

    .line 219
    .line 220
    invoke-virtual {v0}, Latak/core/Ig;->i0()S

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    iget-object v1, v6, Latak/core/j6;->S:Ljava/util/zip/CRC32;

    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    .line 227
    .line 228
    .line 229
    move-result-wide v1

    .line 230
    long-to-int v1, v1

    .line 231
    int-to-short v1, v1

    .line 232
    const-string v2, "FHCRC"

    .line 233
    .line 234
    invoke-direct {v6, v2, v0, v1}, Latak/core/j6;->a(Ljava/lang/String;II)V

    .line 235
    .line 236
    .line 237
    iget-object v0, v6, Latak/core/j6;->S:Ljava/util/zip/CRC32;

    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 240
    .line 241
    .line 242
    :cond_b
    return-void
.end method

.method private final w0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Latak/core/j6;->P:Latak/core/Ig;

    .line 2
    .line 3
    invoke-virtual {v0}, Latak/core/Ig;->c0()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Latak/core/j6;->S:Ljava/util/zip/CRC32;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    long-to-int v1, v1

    .line 14
    const-string v2, "CRC"

    .line 15
    .line 16
    invoke-direct {p0, v2, v0, v1}, Latak/core/j6;->a(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Latak/core/j6;->P:Latak/core/Ig;

    .line 20
    .line 21
    invoke-virtual {v0}, Latak/core/Ig;->c0()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Latak/core/j6;->Q:Ljava/util/zip/Inflater;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    long-to-int v1, v1

    .line 32
    const-string v2, "ISIZE"

    .line 33
    .line 34
    invoke-direct {p0, v2, v0, v1}, Latak/core/j6;->a(Ljava/lang/String;II)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private final x0(Latak/core/G1;JJ)V
    .locals 4

    .line 1
    iget-object p1, p1, Latak/core/G1;->O:Latak/core/Eh;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 6
    .line 7
    .line 8
    :cond_0
    :goto_0
    iget v0, p1, Latak/core/Eh;->c:I

    .line 9
    .line 10
    iget v1, p1, Latak/core/Eh;->b:I

    .line 11
    .line 12
    sub-int v2, v0, v1

    .line 13
    .line 14
    int-to-long v2, v2

    .line 15
    cmp-long v2, p2, v2

    .line 16
    .line 17
    if-ltz v2, :cond_1

    .line 18
    .line 19
    sub-int/2addr v0, v1

    .line 20
    int-to-long v0, v0

    .line 21
    sub-long/2addr p2, v0

    .line 22
    iget-object p1, p1, Latak/core/Eh;->f:Latak/core/Eh;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    :goto_1
    const-wide/16 v0, 0x0

    .line 31
    .line 32
    cmp-long v2, p4, v0

    .line 33
    .line 34
    if-lez v2, :cond_3

    .line 35
    .line 36
    iget v2, p1, Latak/core/Eh;->b:I

    .line 37
    .line 38
    int-to-long v2, v2

    .line 39
    add-long/2addr v2, p2

    .line 40
    long-to-int p2, v2

    .line 41
    iget p3, p1, Latak/core/Eh;->c:I

    .line 42
    .line 43
    sub-int/2addr p3, p2

    .line 44
    int-to-long v2, p3

    .line 45
    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    long-to-int p3, v2

    .line 50
    iget-object v2, p0, Latak/core/j6;->S:Ljava/util/zip/CRC32;

    .line 51
    .line 52
    iget-object v3, p1, Latak/core/Eh;->a:[B

    .line 53
    .line 54
    invoke-virtual {v2, v3, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 55
    .line 56
    .line 57
    int-to-long p2, p3

    .line 58
    sub-long/2addr p4, p2

    .line 59
    iget-object p1, p1, Latak/core/Eh;->f:Latak/core/Eh;

    .line 60
    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 64
    .line 65
    .line 66
    :cond_2
    move-wide p2, v0

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Latak/core/j6;->R:Latak/core/U6;

    .line 2
    .line 3
    invoke-virtual {v0}, Latak/core/U6;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public read(Latak/core/G1;J)J
    .locals 11
    .param p1    # Latak/core/G1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p2, v0

    .line 9
    .line 10
    if-ltz v2, :cond_6

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    return-wide v0

    .line 15
    :cond_0
    iget-byte v0, p0, Latak/core/j6;->O:B

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-direct {p0}, Latak/core/j6;->s()V

    .line 21
    .line 22
    .line 23
    iput-byte v1, p0, Latak/core/j6;->O:B

    .line 24
    .line 25
    :cond_1
    iget-byte v0, p0, Latak/core/j6;->O:B

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    const-wide/16 v3, -0x1

    .line 29
    .line 30
    if-ne v0, v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {p1}, Latak/core/G1;->size()J

    .line 33
    .line 34
    .line 35
    move-result-wide v7

    .line 36
    iget-object v0, p0, Latak/core/j6;->R:Latak/core/U6;

    .line 37
    .line 38
    invoke-virtual {v0, p1, p2, p3}, Latak/core/U6;->read(Latak/core/G1;J)J

    .line 39
    .line 40
    .line 41
    move-result-wide p2

    .line 42
    cmp-long v0, p2, v3

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    move-object v5, p0

    .line 47
    move-object v6, p1

    .line 48
    move-wide v9, p2

    .line 49
    invoke-direct/range {v5 .. v10}, Latak/core/j6;->x0(Latak/core/G1;JJ)V

    .line 50
    .line 51
    .line 52
    return-wide p2

    .line 53
    :cond_2
    iput-byte v2, p0, Latak/core/j6;->O:B

    .line 54
    .line 55
    :cond_3
    iget-byte p1, p0, Latak/core/j6;->O:B

    .line 56
    .line 57
    if-ne p1, v2, :cond_5

    .line 58
    .line 59
    invoke-direct {p0}, Latak/core/j6;->w0()V

    .line 60
    .line 61
    .line 62
    const/4 p1, 0x3

    .line 63
    iput-byte p1, p0, Latak/core/j6;->O:B

    .line 64
    .line 65
    iget-object p1, p0, Latak/core/j6;->P:Latak/core/Ig;

    .line 66
    .line 67
    invoke-virtual {p1}, Latak/core/Ig;->C()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 75
    .line 76
    const-string p2, "gzip finished without exhausting source"

    .line 77
    .line 78
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :cond_5
    :goto_0
    return-wide v3

    .line 83
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v0, "byteCount < 0: "

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p2
.end method

.method public timeout()Latak/core/Fm;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Latak/core/j6;->P:Latak/core/Ig;

    .line 2
    .line 3
    invoke-virtual {v0}, Latak/core/Ig;->timeout()Latak/core/Fm;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
