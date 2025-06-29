.class public final Lkotlin/time/DurationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1059:1\n1012#1,6:1061\n1015#1,3:1067\n1012#1,6:1070\n1012#1,6:1076\n1015#1,3:1085\n1#2:1060\n1734#3,3:1082\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n*L\n936#1:1061,6\n970#1:1067,3\n973#1:1070,6\n976#1:1076,6\n1012#1:1085,3\n1001#1:1082,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1059:1\n1012#1,6:1061\n1015#1,3:1067\n1012#1,6:1070\n1012#1,6:1076\n1015#1,3:1085\n1#2:1060\n1734#3,3:1082\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n*L\n936#1:1061,6\n970#1:1067,3\n973#1:1070,6\n976#1:1076,6\n1012#1:1085,3\n1001#1:1082,3\n*E\n"
    }
.end annotation


# static fields
.field public static final MAX_MILLIS:J = 0x3fffffffffffffffL

.field public static final MAX_NANOS:J = 0x3ffffffffffa14bfL

.field private static final MAX_NANOS_IN_MILLIS:J = 0x431bde82d7aL

.field public static final NANOS_IN_MILLIS:I = 0xf4240


# direct methods
.method public static final synthetic access$durationOf(JI)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/time/DurationKt;->durationOf(JI)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic access$durationOfMillis(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic access$durationOfMillisNormalized(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillisNormalized(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic access$durationOfNanos(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic access$durationOfNanosNormalized(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanosNormalized(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic access$millisToNanos(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->millisToNanos(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic access$nanosToMillis(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->nanosToMillis(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic access$parseDuration(Ljava/lang/String;Z)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->parseDuration(Ljava/lang/String;Z)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method private static final durationOf(JI)J
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-long/2addr p0, v0

    .line 3
    int-to-long v0, p2

    .line 4
    add-long/2addr p0, v0

    .line 5
    invoke-static {p0, p1}, Lkotlin/time/Duration;->constructor-impl(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method private static final durationOfMillis(J)J
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-long/2addr p0, v0

    .line 3
    const-wide/16 v0, 0x1

    .line 4
    .line 5
    add-long/2addr p0, v0

    .line 6
    invoke-static {p0, p1}, Lkotlin/time/Duration;->constructor-impl(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    return-wide p0
.end method

.method private static final durationOfMillisNormalized(J)J
    .locals 6

    .line 1
    const-wide v0, -0x431bde82d7aL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v0, v0, p0

    .line 7
    .line 8
    if-gtz v0, :cond_0

    .line 9
    .line 10
    const-wide v0, 0x431bde82d7bL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmp-long v0, p0, v0

    .line 16
    .line 17
    if-gez v0, :cond_0

    .line 18
    .line 19
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->millisToNanos(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide p0

    .line 23
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    .line 24
    .line 25
    .line 26
    move-result-wide p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-wide v2, -0x3fffffffffffffffL    # -2.0000000000000004

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    const-wide v4, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    move-wide v0, p0

    .line 39
    invoke-static/range {v0 .. v5}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    .line 40
    .line 41
    .line 42
    move-result-wide p0

    .line 43
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide p0

    .line 47
    :goto_0
    return-wide p0
.end method

.method private static final durationOfNanos(J)J
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-long/2addr p0, v0

    .line 3
    invoke-static {p0, p1}, Lkotlin/time/Duration;->constructor-impl(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method private static final durationOfNanosNormalized(J)J
    .locals 2

    .line 1
    const-wide v0, -0x3ffffffffffa14bfL    # -2.0000000001722644

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v0, v0, p0

    .line 7
    .line 8
    if-gtz v0, :cond_0

    .line 9
    .line 10
    const-wide v0, 0x3ffffffffffa14c0L    # 1.999999999913868

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmp-long v0, p0, v0

    .line 16
    .line 17
    if-gez v0, :cond_0

    .line 18
    .line 19
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->nanosToMillis(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide p0

    .line 28
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    .line 29
    .line 30
    .line 31
    move-result-wide p0

    .line 32
    :goto_0
    return-wide p0
.end method

.method private static final millisToNanos(J)J
    .locals 2

    const v0, 0xf4240

    int-to-long v0, v0

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method private static final nanosToMillis(J)J
    .locals 2

    .line 1
    const v0, 0xf4240

    .line 2
    .line 3
    .line 4
    int-to-long v0, v0

    .line 5
    div-long/2addr p0, v0

    .line 6
    return-wide p0
.end method

.method private static final parseDuration(Ljava/lang/String;Z)J
    .locals 27

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v7

    .line 7
    if-eqz v7, :cond_21

    .line 8
    .line 9
    sget-object v8, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 10
    .line 11
    invoke-virtual {v8}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    .line 12
    .line 13
    .line 14
    move-result-wide v9

    .line 15
    const/4 v11, 0x0

    .line 16
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v1, 0x2b

    .line 21
    .line 22
    const/16 v2, 0x2d

    .line 23
    .line 24
    const/4 v12, 0x1

    .line 25
    if-eq v0, v1, :cond_0

    .line 26
    .line 27
    if-eq v0, v2, :cond_0

    .line 28
    .line 29
    move v13, v11

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v13, v12

    .line 32
    :goto_0
    if-lez v13, :cond_1

    .line 33
    .line 34
    move v14, v12

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v14, v11

    .line 37
    :goto_1
    const/4 v0, 0x2

    .line 38
    const/4 v15, 0x0

    .line 39
    if-eqz v14, :cond_2

    .line 40
    .line 41
    invoke-static {v6, v2, v11, v0, v15}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    move/from16 v16, v12

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    move/from16 v16, v11

    .line 51
    .line 52
    :goto_2
    const-string v5, "No components"

    .line 53
    .line 54
    if-le v7, v13, :cond_20

    .line 55
    .line 56
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const/16 v2, 0x50

    .line 61
    .line 62
    const-string v4, "Unexpected order of duration components"

    .line 63
    .line 64
    const/16 v3, 0x3a

    .line 65
    .line 66
    move-object/from16 v17, v5

    .line 67
    .line 68
    const/16 v5, 0x30

    .line 69
    .line 70
    const-string v0, "substring(...)"

    .line 71
    .line 72
    const-string v11, "null cannot be cast to non-null type java.lang.String"

    .line 73
    .line 74
    if-ne v1, v2, :cond_e

    .line 75
    .line 76
    add-int/2addr v13, v12

    .line 77
    if-eq v13, v7, :cond_d

    .line 78
    .line 79
    move-object v2, v15

    .line 80
    const/4 v1, 0x0

    .line 81
    :goto_3
    if-ge v13, v7, :cond_1d

    .line 82
    .line 83
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    const/16 v14, 0x54

    .line 88
    .line 89
    if-ne v8, v14, :cond_4

    .line 90
    .line 91
    if-nez v1, :cond_3

    .line 92
    .line 93
    add-int/lit8 v13, v13, 0x1

    .line 94
    .line 95
    if-eq v13, v7, :cond_3

    .line 96
    .line 97
    move v1, v12

    .line 98
    goto :goto_3

    .line 99
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :cond_4
    move v8, v13

    .line 106
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result v14

    .line 110
    if-ge v8, v14, :cond_6

    .line 111
    .line 112
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    .line 113
    .line 114
    .line 115
    move-result v14

    .line 116
    if-gt v5, v14, :cond_5

    .line 117
    .line 118
    if-ge v14, v3, :cond_5

    .line 119
    .line 120
    const/4 v12, 0x2

    .line 121
    goto :goto_5

    .line 122
    :cond_5
    const-string v3, "+-."

    .line 123
    .line 124
    const/4 v5, 0x0

    .line 125
    const/4 v12, 0x2

    .line 126
    invoke-static {v3, v14, v5, v12, v15}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_7

    .line 131
    .line 132
    :goto_5
    add-int/lit8 v8, v8, 0x1

    .line 133
    .line 134
    const/16 v3, 0x3a

    .line 135
    .line 136
    const/16 v5, 0x30

    .line 137
    .line 138
    const/4 v12, 0x1

    .line 139
    goto :goto_4

    .line 140
    :cond_6
    const/4 v12, 0x2

    .line 141
    :cond_7
    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-eqz v5, :cond_c

    .line 156
    .line 157
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    add-int/2addr v13, v5

    .line 162
    if-ltz v13, :cond_b

    .line 163
    .line 164
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    if-ge v13, v5, :cond_b

    .line 169
    .line 170
    invoke-interface {v6, v13}, Ljava/lang/CharSequence;->charAt(I)C

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    add-int/lit8 v13, v13, 0x1

    .line 175
    .line 176
    invoke-static {v5, v1}, Lkotlin/time/DurationUnitKt__DurationUnitKt;->durationUnitByIsoChar(CZ)Lkotlin/time/DurationUnit;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    if-eqz v2, :cond_9

    .line 181
    .line 182
    invoke-virtual {v2, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-lez v2, :cond_8

    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 190
    .line 191
    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw v0

    .line 195
    :cond_9
    :goto_6
    const/16 v24, 0x6

    .line 196
    .line 197
    const/16 v25, 0x0

    .line 198
    .line 199
    const/16 v21, 0x2e

    .line 200
    .line 201
    const/16 v22, 0x0

    .line 202
    .line 203
    const/16 v23, 0x0

    .line 204
    .line 205
    move-object/from16 v20, v3

    .line 206
    .line 207
    invoke-static/range {v20 .. v25}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    sget-object v8, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 212
    .line 213
    if-ne v5, v8, :cond_a

    .line 214
    .line 215
    if-lez v2, :cond_a

    .line 216
    .line 217
    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    const/4 v8, 0x0

    .line 221
    invoke-virtual {v3, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v14

    .line 225
    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    move/from16 p1, v13

    .line 229
    .line 230
    invoke-static {v14}, Lkotlin/time/DurationKt;->parseOverLongIsoComponent(Ljava/lang/String;)J

    .line 231
    .line 232
    .line 233
    move-result-wide v12

    .line 234
    invoke-static {v12, v13, v5}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    .line 235
    .line 236
    .line 237
    move-result-wide v12

    .line 238
    invoke-static {v9, v10, v12, v13}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    .line 239
    .line 240
    .line 241
    move-result-wide v9

    .line 242
    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 253
    .line 254
    .line 255
    move-result-wide v2

    .line 256
    invoke-static {v2, v3, v5}, Lkotlin/time/DurationKt;->toDuration(DLkotlin/time/DurationUnit;)J

    .line 257
    .line 258
    .line 259
    move-result-wide v2

    .line 260
    invoke-static {v9, v10, v2, v3}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    .line 261
    .line 262
    .line 263
    move-result-wide v9

    .line 264
    :goto_7
    move/from16 v13, p1

    .line 265
    .line 266
    move-object v2, v5

    .line 267
    const/16 v3, 0x3a

    .line 268
    .line 269
    const/16 v5, 0x30

    .line 270
    .line 271
    const/4 v12, 0x1

    .line 272
    goto/16 :goto_3

    .line 273
    .line 274
    :cond_a
    move/from16 p1, v13

    .line 275
    .line 276
    invoke-static {v3}, Lkotlin/time/DurationKt;->parseOverLongIsoComponent(Ljava/lang/String;)J

    .line 277
    .line 278
    .line 279
    move-result-wide v2

    .line 280
    invoke-static {v2, v3, v5}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    .line 281
    .line 282
    .line 283
    move-result-wide v2

    .line 284
    invoke-static {v9, v10, v2, v3}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    .line 285
    .line 286
    .line 287
    move-result-wide v9

    .line 288
    goto :goto_7

    .line 289
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 290
    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .line 295
    .line 296
    const-string v2, "Missing unit for value "

    .line 297
    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    throw v0

    .line 312
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 313
    .line 314
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 315
    .line 316
    .line 317
    throw v0

    .line 318
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 319
    .line 320
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 321
    .line 322
    .line 323
    throw v0

    .line 324
    :cond_e
    if-nez p1, :cond_1f

    .line 325
    .line 326
    sub-int v1, v7, v13

    .line 327
    .line 328
    const/16 v2, 0x8

    .line 329
    .line 330
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    const/4 v12, 0x1

    .line 335
    const-string v2, "Infinity"

    .line 336
    .line 337
    const/4 v3, 0x0

    .line 338
    move-object v1, v0

    .line 339
    move-object/from16 v0, p0

    .line 340
    .line 341
    move-object v15, v1

    .line 342
    move v1, v13

    .line 343
    move-object/from16 v26, v4

    .line 344
    .line 345
    move v4, v5

    .line 346
    move-wide/from16 v21, v9

    .line 347
    .line 348
    move-object/from16 v9, v17

    .line 349
    .line 350
    const/16 v10, 0x30

    .line 351
    .line 352
    move v5, v12

    .line 353
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->regionMatches(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    if-eqz v0, :cond_f

    .line 358
    .line 359
    invoke-virtual {v8}, Lkotlin/time/Duration$Companion;->getINFINITE-UwyO8pc()J

    .line 360
    .line 361
    .line 362
    move-result-wide v9

    .line 363
    goto/16 :goto_10

    .line 364
    .line 365
    :cond_f
    xor-int/lit8 v0, v14, 0x1

    .line 366
    .line 367
    if-eqz v14, :cond_11

    .line 368
    .line 369
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    const/16 v2, 0x28

    .line 374
    .line 375
    if-ne v1, v2, :cond_11

    .line 376
    .line 377
    invoke-static/range {p0 .. p0}, Lkotlin/text/StringsKt;->last(Ljava/lang/CharSequence;)C

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    const/16 v2, 0x29

    .line 382
    .line 383
    if-ne v1, v2, :cond_11

    .line 384
    .line 385
    add-int/lit8 v13, v13, 0x1

    .line 386
    .line 387
    add-int/lit8 v7, v7, -0x1

    .line 388
    .line 389
    if-eq v13, v7, :cond_10

    .line 390
    .line 391
    move-wide/from16 v1, v21

    .line 392
    .line 393
    const/4 v0, 0x1

    .line 394
    :goto_8
    const/4 v3, 0x0

    .line 395
    const/4 v5, 0x0

    .line 396
    goto :goto_9

    .line 397
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 398
    .line 399
    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    throw v0

    .line 403
    :cond_11
    move-wide/from16 v1, v21

    .line 404
    .line 405
    goto :goto_8

    .line 406
    :goto_9
    if-ge v13, v7, :cond_1c

    .line 407
    .line 408
    if-eqz v5, :cond_12

    .line 409
    .line 410
    if-eqz v0, :cond_12

    .line 411
    .line 412
    :goto_a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 413
    .line 414
    .line 415
    move-result v4

    .line 416
    if-ge v13, v4, :cond_12

    .line 417
    .line 418
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    .line 419
    .line 420
    .line 421
    move-result v4

    .line 422
    const/16 v5, 0x20

    .line 423
    .line 424
    if-ne v4, v5, :cond_12

    .line 425
    .line 426
    add-int/lit8 v13, v13, 0x1

    .line 427
    .line 428
    goto :goto_a

    .line 429
    :cond_12
    move v4, v13

    .line 430
    :goto_b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 431
    .line 432
    .line 433
    move-result v5

    .line 434
    if-ge v4, v5, :cond_14

    .line 435
    .line 436
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    .line 437
    .line 438
    .line 439
    move-result v5

    .line 440
    const/16 v8, 0x3a

    .line 441
    .line 442
    if-gt v10, v5, :cond_13

    .line 443
    .line 444
    if-ge v5, v8, :cond_13

    .line 445
    .line 446
    goto :goto_c

    .line 447
    :cond_13
    const/16 v9, 0x2e

    .line 448
    .line 449
    if-ne v5, v9, :cond_15

    .line 450
    .line 451
    :goto_c
    add-int/lit8 v4, v4, 0x1

    .line 452
    .line 453
    goto :goto_b

    .line 454
    :cond_14
    const/16 v8, 0x3a

    .line 455
    .line 456
    :cond_15
    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v6, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v4

    .line 463
    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 467
    .line 468
    .line 469
    move-result v5

    .line 470
    if-eqz v5, :cond_1b

    .line 471
    .line 472
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 473
    .line 474
    .line 475
    move-result v5

    .line 476
    add-int/2addr v13, v5

    .line 477
    move v5, v13

    .line 478
    :goto_d
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 479
    .line 480
    .line 481
    move-result v9

    .line 482
    if-ge v5, v9, :cond_16

    .line 483
    .line 484
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    .line 485
    .line 486
    .line 487
    move-result v9

    .line 488
    const/16 v12, 0x61

    .line 489
    .line 490
    if-gt v12, v9, :cond_16

    .line 491
    .line 492
    const/16 v12, 0x7b

    .line 493
    .line 494
    if-ge v9, v12, :cond_16

    .line 495
    .line 496
    add-int/lit8 v5, v5, 0x1

    .line 497
    .line 498
    goto :goto_d

    .line 499
    :cond_16
    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v6, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v5

    .line 506
    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 510
    .line 511
    .line 512
    move-result v9

    .line 513
    add-int/2addr v13, v9

    .line 514
    invoke-static {v5}, Lkotlin/time/DurationUnitKt__DurationUnitKt;->durationUnitByShortName(Ljava/lang/String;)Lkotlin/time/DurationUnit;

    .line 515
    .line 516
    .line 517
    move-result-object v5

    .line 518
    if-eqz v3, :cond_17

    .line 519
    .line 520
    invoke-virtual {v3, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 521
    .line 522
    .line 523
    move-result v3

    .line 524
    if-lez v3, :cond_18

    .line 525
    .line 526
    :cond_17
    move-object/from16 v3, v26

    .line 527
    .line 528
    goto :goto_e

    .line 529
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 530
    .line 531
    move-object/from16 v3, v26

    .line 532
    .line 533
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    throw v0

    .line 537
    :goto_e
    const/16 v22, 0x6

    .line 538
    .line 539
    const/16 v23, 0x0

    .line 540
    .line 541
    const/16 v19, 0x2e

    .line 542
    .line 543
    const/16 v20, 0x0

    .line 544
    .line 545
    const/16 v21, 0x0

    .line 546
    .line 547
    move-object/from16 v18, v4

    .line 548
    .line 549
    invoke-static/range {v18 .. v23}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 550
    .line 551
    .line 552
    move-result v9

    .line 553
    if-lez v9, :cond_1a

    .line 554
    .line 555
    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    const/4 v12, 0x0

    .line 559
    invoke-virtual {v4, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v14

    .line 563
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    move/from16 p1, v13

    .line 567
    .line 568
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 569
    .line 570
    .line 571
    move-result-wide v12

    .line 572
    invoke-static {v12, v13, v5}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    .line 573
    .line 574
    .line 575
    move-result-wide v12

    .line 576
    invoke-static {v1, v2, v12, v13}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    .line 577
    .line 578
    .line 579
    move-result-wide v1

    .line 580
    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v4

    .line 587
    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 591
    .line 592
    .line 593
    move-result-wide v12

    .line 594
    invoke-static {v12, v13, v5}, Lkotlin/time/DurationKt;->toDuration(DLkotlin/time/DurationUnit;)J

    .line 595
    .line 596
    .line 597
    move-result-wide v12

    .line 598
    invoke-static {v1, v2, v12, v13}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    .line 599
    .line 600
    .line 601
    move-result-wide v1

    .line 602
    move/from16 v13, p1

    .line 603
    .line 604
    if-lt v13, v7, :cond_19

    .line 605
    .line 606
    :goto_f
    move-object/from16 v26, v3

    .line 607
    .line 608
    move-object v3, v5

    .line 609
    const/4 v5, 0x1

    .line 610
    goto/16 :goto_9

    .line 611
    .line 612
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 613
    .line 614
    const-string v1, "Fractional component must be last"

    .line 615
    .line 616
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    throw v0

    .line 620
    :cond_1a
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 621
    .line 622
    .line 623
    move-result-wide v8

    .line 624
    invoke-static {v8, v9, v5}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    .line 625
    .line 626
    .line 627
    move-result-wide v8

    .line 628
    invoke-static {v1, v2, v8, v9}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    .line 629
    .line 630
    .line 631
    move-result-wide v1

    .line 632
    goto :goto_f

    .line 633
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 634
    .line 635
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 636
    .line 637
    .line 638
    throw v0

    .line 639
    :cond_1c
    move-wide v9, v1

    .line 640
    :cond_1d
    :goto_10
    if-eqz v16, :cond_1e

    .line 641
    .line 642
    invoke-static {v9, v10}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    .line 643
    .line 644
    .line 645
    move-result-wide v9

    .line 646
    :cond_1e
    return-wide v9

    .line 647
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 648
    .line 649
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 650
    .line 651
    .line 652
    throw v0

    .line 653
    :cond_20
    move-object v9, v5

    .line 654
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 655
    .line 656
    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    throw v0

    .line 660
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 661
    .line 662
    const-string v1, "The string is empty"

    .line 663
    .line 664
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    throw v0
.end method

.method private static final parseOverLongIsoComponent(Ljava/lang/String;)J
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    const-string v5, "+-"

    .line 12
    .line 13
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    invoke-static {v5, v6, v4, v3, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    move v5, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v5, v4

    .line 26
    :goto_0
    sub-int/2addr v0, v5

    .line 27
    const/16 v6, 0x10

    .line 28
    .line 29
    if-le v0, v6, :cond_4

    .line 30
    .line 31
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 32
    .line 33
    invoke-static {p0}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    invoke-direct {v0, v5, v6}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 38
    .line 39
    .line 40
    instance-of v5, v0, Ljava/util/Collection;

    .line 41
    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    move-object v5, v0

    .line 45
    check-cast v5, Ljava/util/Collection;

    .line 46
    .line 47
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_2

    .line 63
    .line 64
    move-object v5, v0

    .line 65
    check-cast v5, Lkotlin/collections/IntIterator;

    .line 66
    .line 67
    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    const/16 v6, 0x30

    .line 76
    .line 77
    if-gt v6, v5, :cond_4

    .line 78
    .line 79
    const/16 v6, 0x3a

    .line 80
    .line 81
    if-ge v5, v6, :cond_4

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    :goto_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    const/16 v0, 0x2d

    .line 89
    .line 90
    if-ne p0, v0, :cond_3

    .line 91
    .line 92
    const-wide/high16 v0, -0x8000000000000000L

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_3
    const-wide v0, 0x7fffffffffffffffL

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    :goto_3
    return-wide v0

    .line 101
    :cond_4
    const-string v0, "+"

    .line 102
    .line 103
    invoke-static {p0, v0, v4, v3, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_5

    .line 108
    .line 109
    invoke-static {p0, v1}, Lkotlin/text/StringsKt;->drop(Ljava/lang/String;I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    :cond_5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 114
    .line 115
    .line 116
    move-result-wide v0

    .line 117
    return-wide v0
.end method

.method private static final skipWhile(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    add-int/lit8 p1, p1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return p1
.end method

.method private static final substringWhile(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    move v0, p1

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string p2, "null cannot be cast to non-null type java.lang.String"

    .line 32
    .line 33
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string p1, "substring(...)"

    .line 41
    .line 42
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object p0
.end method

.method private static final times-kIfJnKk(DJ)J
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.6"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/time/ExperimentalTime;
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    invoke-static {p2, p3, p0, p1}, Lkotlin/time/Duration;->times-UwyO8pc(JD)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method private static final times-mvk6XK0(IJ)J
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.6"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/time/ExperimentalTime;
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    invoke-static {p1, p2, p0}, Lkotlin/time/Duration;->times-UwyO8pc(JI)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final toDuration(DLkotlin/time/DurationUnit;)J
    .locals 4
    .param p2    # Lkotlin/time/DurationUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.6"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/time/ExperimentalTime;
        }
    .end annotation

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, p2, v0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnit(DLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)D

    move-result-wide v0

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-static {v0, v1}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide v0

    const-wide v2, -0x3ffffffffffa14bfL    # -2.0000000001722644

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    const-wide v2, 0x3ffffffffffa14c0L    # 1.999999999913868

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 11
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, p2, v0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnit(DLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)D

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide p0

    .line 13
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillisNormalized(J)J

    move-result-wide p0

    :goto_0
    return-wide p0

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Duration value cannot be NaN."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final toDuration(ILkotlin/time/DurationUnit;)J
    .locals 2
    .param p1    # Lkotlin/time/DurationUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.6"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/time/ExperimentalTime;
        }
    .end annotation

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    int-to-long v0, p0

    .line 2
    sget-object p0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, p1, p0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnitOverflow(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    int-to-long v0, p0

    .line 3
    invoke-static {v0, v1, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final toDuration(JLkotlin/time/DurationUnit;)J
    .locals 7
    .param p2    # Lkotlin/time/DurationUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.6"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/time/ExperimentalTime;
        }
    .end annotation

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    const-wide v1, 0x3ffffffffffa14bfL    # 1.9999999999138678

    invoke-static {v1, v2, v0, p2}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnitOverflow(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide v1

    neg-long v3, v1

    cmp-long v3, v3, p0

    if-gtz v3, :cond_0

    cmp-long v1, p0, v1

    if-gtz v1, :cond_0

    .line 5
    invoke-static {p0, p1, p2, v0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnitOverflow(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    return-wide p0

    .line 6
    :cond_0
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, p2, v0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnit(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide v1

    const-wide v3, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v5, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 7
    invoke-static/range {v1 .. v6}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide p0

    return-wide p0
.end method
