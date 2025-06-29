.class public final Lcom/toughstump/atos/record/util/GeoPointUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeoPointUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoPointUtils.kt\ncom/toughstump/atos/record/util/GeoPointUtilsKt\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n107#2:69\n79#2,22:70\n107#2:92\n79#2,22:93\n107#2:115\n79#2,22:116\n107#2:138\n79#2,22:139\n107#2:161\n79#2,22:162\n107#2:184\n79#2,22:185\n1#3:207\n*S KotlinDebug\n*F\n+ 1 GeoPointUtils.kt\ncom/toughstump/atos/record/util/GeoPointUtilsKt\n*L\n39#1:69\n39#1:70,22\n40#1:92\n40#1:93,22\n51#1:115\n51#1:116,22\n52#1:138\n52#1:139,22\n53#1:161\n53#1:162,22\n54#1:184\n54#1:185,22\n*E\n"
.end annotation


# static fields
.field public static final UNKNOWN:D = NaN

.field private static final comma:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/toughstump/atos/record/util/GeoPointUtilsKt;->comma:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public static final center3D(Ljava/util/Collection;)Lkot/KotPoint;
    .locals 21
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkot/KotPoint;",
            ">;)",
            "Lkot/KotPoint;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    move-wide v4, v2

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-eqz v6, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    check-cast v6, Lkot/KotPoint;

    .line 26
    .line 27
    invoke-virtual {v6}, Lkot/KotPoint;->getLatitude()D

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    add-double/2addr v4, v6

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    int-to-double v6, v0

    .line 38
    div-double v9, v4, v6

    .line 39
    .line 40
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    move-wide v4, v2

    .line 45
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-eqz v6, :cond_1

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Lkot/KotPoint;

    .line 56
    .line 57
    invoke-virtual {v6}, Lkot/KotPoint;->getLongitude()D

    .line 58
    .line 59
    .line 60
    move-result-wide v6

    .line 61
    add-double/2addr v4, v6

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->size()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    int-to-double v6, v0

    .line 68
    div-double v11, v4, v6

    .line 69
    .line 70
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_2

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Lkot/KotPoint;

    .line 85
    .line 86
    invoke-virtual {v4}, Lkot/KotPoint;->getAltitude()D

    .line 87
    .line 88
    .line 89
    move-result-wide v4

    .line 90
    add-double/2addr v2, v4

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->size()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    int-to-double v0, v0

    .line 97
    div-double v13, v2, v0

    .line 98
    .line 99
    new-instance v0, Lkot/KotPoint;

    .line 100
    .line 101
    const/16 v19, 0x18

    .line 102
    .line 103
    const/16 v20, 0x0

    .line 104
    .line 105
    const-wide/16 v15, 0x0

    .line 106
    .line 107
    const-wide/16 v17, 0x0

    .line 108
    .line 109
    move-object v8, v0

    .line 110
    invoke-direct/range {v8 .. v20}, Lkot/KotPoint;-><init>(DDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 111
    .line 112
    .line 113
    return-object v0
.end method

.method public static final parseGeoPoint(Ljava/lang/String;)Lkot/KotPoint;
    .locals 21
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    sget-object v2, Lcom/toughstump/atos/record/util/GeoPointUtilsKt;->comma:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v2, v0, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v2, "comma.split(str, 0)"

    .line 15
    .line 16
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    array-length v2, v0

    .line 20
    const/4 v4, 0x2

    .line 21
    if-ge v2, v4, :cond_1

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_1
    aget-object v2, v0, v3

    .line 25
    .line 26
    const-string v5, ""

    .line 27
    .line 28
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_2b

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    aget-object v6, v0, v2

    .line 36
    .line 37
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    goto/16 :goto_1c

    .line 44
    .line 45
    :cond_2
    :try_start_0
    aget-object v5, v0, v3

    .line 46
    .line 47
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    sub-int/2addr v6, v2

    .line 52
    move v7, v3

    .line 53
    move v8, v7

    .line 54
    :goto_0
    const/16 v9, 0x20

    .line 55
    .line 56
    if-gt v7, v6, :cond_8

    .line 57
    .line 58
    if-nez v8, :cond_3

    .line 59
    .line 60
    move v10, v7

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    move v10, v6

    .line 63
    :goto_1
    invoke-interface {v5, v10}, Ljava/lang/CharSequence;->charAt(I)C

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    if-gtz v10, :cond_4

    .line 72
    .line 73
    move v10, v2

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    move v10, v3

    .line 76
    :goto_2
    if-nez v8, :cond_6

    .line 77
    .line 78
    if-nez v10, :cond_5

    .line 79
    .line 80
    move v8, v2

    .line 81
    goto :goto_0

    .line 82
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_6
    if-nez v10, :cond_7

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_7
    add-int/lit8 v6, v6, -0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_8
    :goto_3
    add-int/2addr v6, v2

    .line 92
    invoke-interface {v5, v7, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 101
    .line 102
    .line 103
    move-result-wide v11

    .line 104
    aget-object v5, v0, v2

    .line 105
    .line 106
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    sub-int/2addr v6, v2

    .line 111
    move v7, v3

    .line 112
    move v8, v7

    .line 113
    :goto_4
    if-gt v7, v6, :cond_e

    .line 114
    .line 115
    if-nez v8, :cond_9

    .line 116
    .line 117
    move v10, v7

    .line 118
    goto :goto_5

    .line 119
    :cond_9
    move v10, v6

    .line 120
    :goto_5
    invoke-interface {v5, v10}, Ljava/lang/CharSequence;->charAt(I)C

    .line 121
    .line 122
    .line 123
    move-result v10

    .line 124
    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    if-gtz v10, :cond_a

    .line 129
    .line 130
    move v10, v2

    .line 131
    goto :goto_6

    .line 132
    :cond_a
    move v10, v3

    .line 133
    :goto_6
    if-nez v8, :cond_c

    .line 134
    .line 135
    if-nez v10, :cond_b

    .line 136
    .line 137
    move v8, v2

    .line 138
    goto :goto_4

    .line 139
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_c
    if-nez v10, :cond_d

    .line 143
    .line 144
    goto :goto_7

    .line 145
    :cond_d
    add-int/lit8 v6, v6, -0x1

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_e
    :goto_7
    add-int/2addr v6, v2

    .line 149
    invoke-interface {v5, v7, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 158
    .line 159
    .line 160
    move-result-wide v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :try_start_1
    array-length v5, v0

    .line 162
    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    .line 163
    .line 164
    if-le v5, v4, :cond_15

    .line 165
    .line 166
    aget-object v4, v0, v4

    .line 167
    .line 168
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    sub-int/2addr v5, v2

    .line 173
    move v8, v3

    .line 174
    move v10, v8

    .line 175
    :goto_8
    if-gt v8, v5, :cond_14

    .line 176
    .line 177
    if-nez v10, :cond_f

    .line 178
    .line 179
    move v15, v8

    .line 180
    goto :goto_9

    .line 181
    :cond_f
    move v15, v5

    .line 182
    :goto_9
    invoke-interface {v4, v15}, Ljava/lang/CharSequence;->charAt(I)C

    .line 183
    .line 184
    .line 185
    move-result v15

    .line 186
    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 187
    .line 188
    .line 189
    move-result v15

    .line 190
    if-gtz v15, :cond_10

    .line 191
    .line 192
    move v15, v2

    .line 193
    goto :goto_a

    .line 194
    :cond_10
    move v15, v3

    .line 195
    :goto_a
    if-nez v10, :cond_12

    .line 196
    .line 197
    if-nez v15, :cond_11

    .line 198
    .line 199
    move v10, v2

    .line 200
    goto :goto_8

    .line 201
    :cond_11
    add-int/lit8 v8, v8, 0x1

    .line 202
    .line 203
    goto :goto_8

    .line 204
    :cond_12
    if-nez v15, :cond_13

    .line 205
    .line 206
    goto :goto_b

    .line 207
    :cond_13
    add-int/lit8 v5, v5, -0x1

    .line 208
    .line 209
    goto :goto_8

    .line 210
    :cond_14
    :goto_b
    add-int/2addr v5, v2

    .line 211
    invoke-interface {v4, v8, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 220
    .line 221
    .line 222
    move-result-wide v4

    .line 223
    move-wide v15, v4

    .line 224
    goto :goto_c

    .line 225
    :cond_15
    move-wide v15, v6

    .line 226
    :goto_c
    array-length v4, v0

    .line 227
    const/4 v5, 0x3

    .line 228
    if-le v4, v5, :cond_1c

    .line 229
    .line 230
    aget-object v4, v0, v5

    .line 231
    .line 232
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    sub-int/2addr v5, v2

    .line 237
    move v8, v3

    .line 238
    move v10, v8

    .line 239
    :goto_d
    if-gt v8, v5, :cond_1b

    .line 240
    .line 241
    if-nez v10, :cond_16

    .line 242
    .line 243
    move v3, v8

    .line 244
    goto :goto_e

    .line 245
    :cond_16
    move v3, v5

    .line 246
    :goto_e
    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-gtz v3, :cond_17

    .line 255
    .line 256
    move v3, v2

    .line 257
    goto :goto_f

    .line 258
    :cond_17
    const/4 v3, 0x0

    .line 259
    :goto_f
    if-nez v10, :cond_19

    .line 260
    .line 261
    if-nez v3, :cond_18

    .line 262
    .line 263
    move v10, v2

    .line 264
    :goto_10
    const/4 v3, 0x0

    .line 265
    goto :goto_d

    .line 266
    :cond_18
    add-int/lit8 v8, v8, 0x1

    .line 267
    .line 268
    goto :goto_10

    .line 269
    :cond_19
    if-nez v3, :cond_1a

    .line 270
    .line 271
    goto :goto_11

    .line 272
    :cond_1a
    add-int/lit8 v5, v5, -0x1

    .line 273
    .line 274
    goto :goto_10

    .line 275
    :cond_1b
    :goto_11
    add-int/2addr v5, v2

    .line 276
    invoke-interface {v4, v8, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    :cond_1c
    array-length v3, v0

    .line 284
    const/4 v4, 0x4

    .line 285
    if-le v3, v4, :cond_23

    .line 286
    .line 287
    aget-object v3, v0, v4

    .line 288
    .line 289
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    sub-int/2addr v4, v2

    .line 294
    const/4 v5, 0x0

    .line 295
    const/4 v8, 0x0

    .line 296
    :goto_12
    if-gt v5, v4, :cond_22

    .line 297
    .line 298
    if-nez v8, :cond_1d

    .line 299
    .line 300
    move v10, v5

    .line 301
    goto :goto_13

    .line 302
    :cond_1d
    move v10, v4

    .line 303
    :goto_13
    invoke-interface {v3, v10}, Ljava/lang/CharSequence;->charAt(I)C

    .line 304
    .line 305
    .line 306
    move-result v10

    .line 307
    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 308
    .line 309
    .line 310
    move-result v10

    .line 311
    if-gtz v10, :cond_1e

    .line 312
    .line 313
    move v10, v2

    .line 314
    goto :goto_14

    .line 315
    :cond_1e
    const/4 v10, 0x0

    .line 316
    :goto_14
    if-nez v8, :cond_20

    .line 317
    .line 318
    if-nez v10, :cond_1f

    .line 319
    .line 320
    move v8, v2

    .line 321
    goto :goto_12

    .line 322
    :cond_1f
    add-int/lit8 v5, v5, 0x1

    .line 323
    .line 324
    goto :goto_12

    .line 325
    :cond_20
    if-nez v10, :cond_21

    .line 326
    .line 327
    goto :goto_15

    .line 328
    :cond_21
    add-int/lit8 v4, v4, -0x1

    .line 329
    .line 330
    goto :goto_12

    .line 331
    :cond_22
    :goto_15
    add-int/2addr v4, v2

    .line 332
    invoke-interface {v3, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 341
    .line 342
    .line 343
    move-result-wide v3

    .line 344
    goto :goto_16

    .line 345
    :cond_23
    move-wide v3, v6

    .line 346
    :goto_16
    array-length v5, v0

    .line 347
    const/4 v8, 0x5

    .line 348
    if-le v5, v8, :cond_2a

    .line 349
    .line 350
    aget-object v0, v0, v8

    .line 351
    .line 352
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    sub-int/2addr v5, v2

    .line 357
    const/4 v6, 0x0

    .line 358
    const/4 v7, 0x0

    .line 359
    :goto_17
    if-gt v6, v5, :cond_29

    .line 360
    .line 361
    if-nez v7, :cond_24

    .line 362
    .line 363
    move v8, v6

    .line 364
    goto :goto_18

    .line 365
    :cond_24
    move v8, v5

    .line 366
    :goto_18
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 367
    .line 368
    .line 369
    move-result v8

    .line 370
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 371
    .line 372
    .line 373
    move-result v8

    .line 374
    if-gtz v8, :cond_25

    .line 375
    .line 376
    move v8, v2

    .line 377
    goto :goto_19

    .line 378
    :cond_25
    const/4 v8, 0x0

    .line 379
    :goto_19
    if-nez v7, :cond_27

    .line 380
    .line 381
    if-nez v8, :cond_26

    .line 382
    .line 383
    move v7, v2

    .line 384
    goto :goto_17

    .line 385
    :cond_26
    add-int/lit8 v6, v6, 0x1

    .line 386
    .line 387
    goto :goto_17

    .line 388
    :cond_27
    if-nez v8, :cond_28

    .line 389
    .line 390
    goto :goto_1a

    .line 391
    :cond_28
    add-int/lit8 v5, v5, -0x1

    .line 392
    .line 393
    goto :goto_17

    .line 394
    :cond_29
    :goto_1a
    add-int/2addr v5, v2

    .line 395
    invoke-interface {v0, v6, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 404
    .line 405
    .line 406
    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 407
    move-wide/from16 v19, v0

    .line 408
    .line 409
    goto :goto_1b

    .line 410
    :cond_2a
    move-wide/from16 v19, v6

    .line 411
    .line 412
    :goto_1b
    new-instance v0, Lkot/KotPoint;

    .line 413
    .line 414
    move-object v10, v0

    .line 415
    move-wide/from16 v17, v3

    .line 416
    .line 417
    invoke-direct/range {v10 .. v20}, Lkot/KotPoint;-><init>(DDDDD)V

    .line 418
    .line 419
    .line 420
    return-object v0

    .line 421
    :catch_0
    :cond_2b
    :goto_1c
    return-object v1
.end method
