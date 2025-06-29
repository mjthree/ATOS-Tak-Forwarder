.class public final Latakplugin/atos/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/JvmName;
    name = "-Base64"
.end annotation


# static fields
.field private static final a:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Latak/core/M1;->R:Latak/core/M1$a;

    .line 2
    .line 3
    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Latak/core/M1$a;->l(Ljava/lang/String;)Latak/core/M1;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Latak/core/M1;->c()[B

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sput-object v1, Latakplugin/atos/a;->a:[B

    .line 14
    .line 15
    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Latak/core/M1$a;->l(Ljava/lang/String;)Latak/core/M1;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Latak/core/M1;->c()[B

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Latakplugin/atos/a;->b:[B

    .line 26
    .line 27
    return-void
.end method

.method public static final a(Ljava/lang/String;)[B
    .locals 15
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "$receiver"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    :goto_0
    const/16 v1, 0x9

    .line 11
    .line 12
    const/16 v2, 0x20

    .line 13
    .line 14
    const/16 v3, 0xd

    .line 15
    .line 16
    const/16 v4, 0xa

    .line 17
    .line 18
    if-lez v0, :cond_1

    .line 19
    .line 20
    add-int/lit8 v5, v0, -0x1

    .line 21
    .line 22
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const/16 v6, 0x3d

    .line 27
    .line 28
    if-eq v5, v6, :cond_0

    .line 29
    .line 30
    if-eq v5, v4, :cond_0

    .line 31
    .line 32
    if-eq v5, v3, :cond_0

    .line 33
    .line 34
    if-eq v5, v2, :cond_0

    .line 35
    .line 36
    if-eq v5, v1, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    :goto_1
    int-to-long v5, v0

    .line 43
    const-wide/16 v7, 0x6

    .line 44
    .line 45
    mul-long/2addr v5, v7

    .line 46
    const-wide/16 v7, 0x8

    .line 47
    .line 48
    div-long/2addr v5, v7

    .line 49
    long-to-int v5, v5

    .line 50
    new-array v6, v5, [B

    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    move v8, v7

    .line 54
    move v9, v8

    .line 55
    move v10, v9

    .line 56
    move v11, v10

    .line 57
    :goto_2
    const/4 v12, 0x0

    .line 58
    if-ge v8, v0, :cond_e

    .line 59
    .line 60
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    .line 61
    .line 62
    .line 63
    move-result v13

    .line 64
    const/16 v14, 0x41

    .line 65
    .line 66
    if-le v14, v13, :cond_2

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_2
    const/16 v14, 0x5a

    .line 70
    .line 71
    if-lt v14, v13, :cond_3

    .line 72
    .line 73
    add-int/lit8 v13, v13, -0x41

    .line 74
    .line 75
    goto :goto_8

    .line 76
    :cond_3
    :goto_3
    const/16 v14, 0x61

    .line 77
    .line 78
    if-le v14, v13, :cond_4

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_4
    const/16 v14, 0x7a

    .line 82
    .line 83
    if-lt v14, v13, :cond_5

    .line 84
    .line 85
    add-int/lit8 v13, v13, -0x47

    .line 86
    .line 87
    goto :goto_8

    .line 88
    :cond_5
    :goto_4
    const/16 v14, 0x30

    .line 89
    .line 90
    if-le v14, v13, :cond_6

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_6
    const/16 v14, 0x39

    .line 94
    .line 95
    if-lt v14, v13, :cond_7

    .line 96
    .line 97
    add-int/lit8 v13, v13, 0x4

    .line 98
    .line 99
    goto :goto_8

    .line 100
    :cond_7
    :goto_5
    const/16 v14, 0x2b

    .line 101
    .line 102
    if-eq v13, v14, :cond_c

    .line 103
    .line 104
    const/16 v14, 0x2d

    .line 105
    .line 106
    if-ne v13, v14, :cond_8

    .line 107
    .line 108
    goto :goto_7

    .line 109
    :cond_8
    const/16 v14, 0x2f

    .line 110
    .line 111
    if-eq v13, v14, :cond_b

    .line 112
    .line 113
    const/16 v14, 0x5f

    .line 114
    .line 115
    if-ne v13, v14, :cond_9

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_9
    if-eq v13, v4, :cond_d

    .line 119
    .line 120
    if-eq v13, v3, :cond_d

    .line 121
    .line 122
    if-eq v13, v2, :cond_d

    .line 123
    .line 124
    if-ne v13, v1, :cond_a

    .line 125
    .line 126
    goto :goto_9

    .line 127
    :cond_a
    return-object v12

    .line 128
    :cond_b
    :goto_6
    const/16 v13, 0x3f

    .line 129
    .line 130
    goto :goto_8

    .line 131
    :cond_c
    :goto_7
    const/16 v13, 0x3e

    .line 132
    .line 133
    :goto_8
    shl-int/lit8 v10, v10, 0x6

    .line 134
    .line 135
    or-int/2addr v10, v13

    .line 136
    add-int/lit8 v9, v9, 0x1

    .line 137
    .line 138
    rem-int/lit8 v12, v9, 0x4

    .line 139
    .line 140
    if-nez v12, :cond_d

    .line 141
    .line 142
    add-int/lit8 v12, v11, 0x1

    .line 143
    .line 144
    shr-int/lit8 v13, v10, 0x10

    .line 145
    .line 146
    int-to-byte v13, v13

    .line 147
    aput-byte v13, v6, v11

    .line 148
    .line 149
    add-int/lit8 v13, v11, 0x2

    .line 150
    .line 151
    shr-int/lit8 v14, v10, 0x8

    .line 152
    .line 153
    int-to-byte v14, v14

    .line 154
    aput-byte v14, v6, v12

    .line 155
    .line 156
    add-int/lit8 v11, v11, 0x3

    .line 157
    .line 158
    int-to-byte v12, v10

    .line 159
    aput-byte v12, v6, v13

    .line 160
    .line 161
    :cond_d
    :goto_9
    add-int/lit8 v8, v8, 0x1

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_e
    rem-int/lit8 v9, v9, 0x4

    .line 165
    .line 166
    const/4 p0, 0x1

    .line 167
    if-eq v9, p0, :cond_12

    .line 168
    .line 169
    const/4 p0, 0x2

    .line 170
    if-eq v9, p0, :cond_10

    .line 171
    .line 172
    const/4 p0, 0x3

    .line 173
    if-eq v9, p0, :cond_f

    .line 174
    .line 175
    goto :goto_a

    .line 176
    :cond_f
    shl-int/lit8 p0, v10, 0x6

    .line 177
    .line 178
    add-int/lit8 v0, v11, 0x1

    .line 179
    .line 180
    shr-int/lit8 v1, p0, 0x10

    .line 181
    .line 182
    int-to-byte v1, v1

    .line 183
    aput-byte v1, v6, v11

    .line 184
    .line 185
    add-int/lit8 v11, v11, 0x2

    .line 186
    .line 187
    shr-int/lit8 p0, p0, 0x8

    .line 188
    .line 189
    int-to-byte p0, p0

    .line 190
    aput-byte p0, v6, v0

    .line 191
    .line 192
    goto :goto_a

    .line 193
    :cond_10
    shl-int/lit8 p0, v10, 0xc

    .line 194
    .line 195
    add-int/lit8 v0, v11, 0x1

    .line 196
    .line 197
    shr-int/lit8 p0, p0, 0x10

    .line 198
    .line 199
    int-to-byte p0, p0

    .line 200
    aput-byte p0, v6, v11

    .line 201
    .line 202
    move v11, v0

    .line 203
    :goto_a
    if-ne v11, v5, :cond_11

    .line 204
    .line 205
    return-object v6

    .line 206
    :cond_11
    new-array p0, v11, [B

    .line 207
    .line 208
    invoke-static {v6, v7, p0, v7, v11}, Latakplugin/atos/b;->a([BI[BII)V

    .line 209
    .line 210
    .line 211
    return-object p0

    .line 212
    :cond_12
    return-object v12
.end method

.method public static final b([B[B)Ljava/lang/String;
    .locals 11
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$receiver"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "map"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    array-length v0, p0

    .line 12
    const/4 v1, 0x2

    .line 13
    add-int/2addr v0, v1

    .line 14
    div-int/lit8 v0, v0, 0x3

    .line 15
    .line 16
    mul-int/lit8 v0, v0, 0x4

    .line 17
    .line 18
    new-array v0, v0, [B

    .line 19
    .line 20
    array-length v2, p0

    .line 21
    array-length v3, p0

    .line 22
    rem-int/lit8 v3, v3, 0x3

    .line 23
    .line 24
    sub-int/2addr v2, v3

    .line 25
    const/4 v3, 0x0

    .line 26
    move v4, v3

    .line 27
    :goto_0
    if-ge v3, v2, :cond_0

    .line 28
    .line 29
    add-int/lit8 v5, v3, 0x1

    .line 30
    .line 31
    aget-byte v6, p0, v3

    .line 32
    .line 33
    add-int/lit8 v7, v3, 0x2

    .line 34
    .line 35
    aget-byte v5, p0, v5

    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x3

    .line 38
    .line 39
    aget-byte v7, p0, v7

    .line 40
    .line 41
    add-int/lit8 v8, v4, 0x1

    .line 42
    .line 43
    and-int/lit16 v9, v6, 0xff

    .line 44
    .line 45
    shr-int/2addr v9, v1

    .line 46
    aget-byte v9, p1, v9

    .line 47
    .line 48
    aput-byte v9, v0, v4

    .line 49
    .line 50
    add-int/lit8 v9, v4, 0x2

    .line 51
    .line 52
    and-int/lit8 v6, v6, 0x3

    .line 53
    .line 54
    shl-int/lit8 v6, v6, 0x4

    .line 55
    .line 56
    and-int/lit16 v10, v5, 0xff

    .line 57
    .line 58
    shr-int/lit8 v10, v10, 0x4

    .line 59
    .line 60
    or-int/2addr v6, v10

    .line 61
    aget-byte v6, p1, v6

    .line 62
    .line 63
    aput-byte v6, v0, v8

    .line 64
    .line 65
    add-int/lit8 v6, v4, 0x3

    .line 66
    .line 67
    and-int/lit8 v5, v5, 0xf

    .line 68
    .line 69
    shl-int/2addr v5, v1

    .line 70
    and-int/lit16 v8, v7, 0xff

    .line 71
    .line 72
    shr-int/lit8 v8, v8, 0x6

    .line 73
    .line 74
    or-int/2addr v5, v8

    .line 75
    aget-byte v5, p1, v5

    .line 76
    .line 77
    aput-byte v5, v0, v9

    .line 78
    .line 79
    add-int/lit8 v4, v4, 0x4

    .line 80
    .line 81
    and-int/lit8 v5, v7, 0x3f

    .line 82
    .line 83
    aget-byte v5, p1, v5

    .line 84
    .line 85
    aput-byte v5, v0, v6

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    array-length v5, p0

    .line 89
    sub-int/2addr v5, v2

    .line 90
    const/16 v2, 0x3d

    .line 91
    .line 92
    const/4 v6, 0x1

    .line 93
    if-eq v5, v6, :cond_2

    .line 94
    .line 95
    if-eq v5, v1, :cond_1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_1
    add-int/lit8 v5, v3, 0x1

    .line 99
    .line 100
    aget-byte v3, p0, v3

    .line 101
    .line 102
    aget-byte p0, p0, v5

    .line 103
    .line 104
    add-int/lit8 v5, v4, 0x1

    .line 105
    .line 106
    and-int/lit16 v6, v3, 0xff

    .line 107
    .line 108
    shr-int/2addr v6, v1

    .line 109
    aget-byte v6, p1, v6

    .line 110
    .line 111
    aput-byte v6, v0, v4

    .line 112
    .line 113
    add-int/lit8 v6, v4, 0x2

    .line 114
    .line 115
    and-int/lit8 v3, v3, 0x3

    .line 116
    .line 117
    shl-int/lit8 v3, v3, 0x4

    .line 118
    .line 119
    and-int/lit16 v7, p0, 0xff

    .line 120
    .line 121
    shr-int/lit8 v7, v7, 0x4

    .line 122
    .line 123
    or-int/2addr v3, v7

    .line 124
    aget-byte v3, p1, v3

    .line 125
    .line 126
    aput-byte v3, v0, v5

    .line 127
    .line 128
    add-int/lit8 v4, v4, 0x3

    .line 129
    .line 130
    and-int/lit8 p0, p0, 0xf

    .line 131
    .line 132
    shl-int/2addr p0, v1

    .line 133
    aget-byte p0, p1, p0

    .line 134
    .line 135
    aput-byte p0, v0, v6

    .line 136
    .line 137
    int-to-byte p0, v2

    .line 138
    aput-byte p0, v0, v4

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_2
    aget-byte p0, p0, v3

    .line 142
    .line 143
    add-int/lit8 v3, v4, 0x1

    .line 144
    .line 145
    and-int/lit16 v5, p0, 0xff

    .line 146
    .line 147
    shr-int/lit8 v1, v5, 0x2

    .line 148
    .line 149
    aget-byte v1, p1, v1

    .line 150
    .line 151
    aput-byte v1, v0, v4

    .line 152
    .line 153
    add-int/lit8 v1, v4, 0x2

    .line 154
    .line 155
    and-int/lit8 p0, p0, 0x3

    .line 156
    .line 157
    shl-int/lit8 p0, p0, 0x4

    .line 158
    .line 159
    aget-byte p0, p1, p0

    .line 160
    .line 161
    aput-byte p0, v0, v3

    .line 162
    .line 163
    add-int/lit8 v4, v4, 0x3

    .line 164
    .line 165
    int-to-byte p0, v2

    .line 166
    aput-byte p0, v0, v1

    .line 167
    .line 168
    aput-byte p0, v0, v4

    .line 169
    .line 170
    :goto_1
    invoke-static {v0}, Latakplugin/atos/b;->c([B)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    return-object p0
.end method

.method public static bridge synthetic c([B[BILjava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    sget-object p1, Latakplugin/atos/a;->a:[B

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1}, Latakplugin/atos/a;->b([B[B)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final d()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Latakplugin/atos/a;->a:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public static final e()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Latakplugin/atos/a;->b:[B

    .line 2
    .line 3
    return-object v0
.end method
