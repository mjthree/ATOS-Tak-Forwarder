.class public final Latak/core/W9$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latak/core/W9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Options.kt\nokio/Options$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 -Util.kt\nokio/-Util\n*L\n1#1,234:1\n8226#2:235\n8543#2,3:236\n10272#2,3:241\n37#3,2:239\n63#4:244\n63#4:245\n*E\n*S KotlinDebug\n*F\n+ 1 Options.kt\nokio/Options$Companion\n*L\n44#1:235\n44#1,3:236\n45#1,3:241\n44#1,2:239\n152#1:244\n207#1:245\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Latak/core/W9$a;-><init>()V

    return-void
.end method

.method private final a(JLatak/core/G1;ILjava/util/List;IILjava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Latak/core/G1;",
            "I",
            "Ljava/util/List<",
            "+",
            "Latak/core/M1;",
            ">;II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v10, p3

    .line 4
    .line 5
    move/from16 v11, p4

    .line 6
    .line 7
    move-object/from16 v12, p5

    .line 8
    .line 9
    move/from16 v0, p6

    .line 10
    .line 11
    move/from16 v13, p7

    .line 12
    .line 13
    move-object/from16 v14, p8

    .line 14
    .line 15
    const-string v1, "Failed requirement."

    .line 16
    .line 17
    if-ge v0, v13, :cond_11

    .line 18
    .line 19
    move v2, v0

    .line 20
    :goto_0
    if-ge v2, v13, :cond_1

    .line 21
    .line 22
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Latak/core/M1;

    .line 27
    .line 28
    invoke-virtual {v3}, Latak/core/M1;->c0()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-lt v3, v11, :cond_0

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    invoke-interface/range {p5 .. p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Latak/core/M1;

    .line 48
    .line 49
    add-int/lit8 v2, v13, -0x1

    .line 50
    .line 51
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Latak/core/M1;

    .line 56
    .line 57
    invoke-virtual {v1}, Latak/core/M1;->c0()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const/4 v15, -0x1

    .line 62
    if-ne v11, v3, :cond_2

    .line 63
    .line 64
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Ljava/lang/Number;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Latak/core/M1;

    .line 81
    .line 82
    move v6, v0

    .line 83
    move v0, v1

    .line 84
    move-object v1, v3

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    move v6, v0

    .line 87
    move v0, v15

    .line 88
    :goto_1
    invoke-virtual {v1, v11}, Latak/core/M1;->s(I)B

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-virtual {v2, v11}, Latak/core/M1;->s(I)B

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    const/4 v5, 0x2

    .line 97
    if-eq v3, v4, :cond_c

    .line 98
    .line 99
    add-int/lit8 v1, v6, 0x1

    .line 100
    .line 101
    const/4 v2, 0x1

    .line 102
    :goto_2
    if-ge v1, v13, :cond_4

    .line 103
    .line 104
    add-int/lit8 v3, v1, -0x1

    .line 105
    .line 106
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Latak/core/M1;

    .line 111
    .line 112
    invoke-virtual {v3, v11}, Latak/core/M1;->s(I)B

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    check-cast v4, Latak/core/M1;

    .line 121
    .line 122
    invoke-virtual {v4, v11}, Latak/core/M1;->s(I)B

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-eq v3, v4, :cond_3

    .line 127
    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 129
    .line 130
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    invoke-direct {v9, v10}, Latak/core/W9$a;->c(Latak/core/G1;)J

    .line 134
    .line 135
    .line 136
    move-result-wide v3

    .line 137
    add-long v3, p1, v3

    .line 138
    .line 139
    int-to-long v7, v5

    .line 140
    add-long/2addr v3, v7

    .line 141
    mul-int/lit8 v1, v2, 0x2

    .line 142
    .line 143
    int-to-long v7, v1

    .line 144
    add-long v16, v3, v7

    .line 145
    .line 146
    invoke-virtual {v10, v2}, Latak/core/G1;->p1(I)Latak/core/G1;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v10, v0}, Latak/core/G1;->p1(I)Latak/core/G1;

    .line 150
    .line 151
    .line 152
    move v0, v6

    .line 153
    :goto_3
    if-ge v0, v13, :cond_7

    .line 154
    .line 155
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    check-cast v1, Latak/core/M1;

    .line 160
    .line 161
    invoke-virtual {v1, v11}, Latak/core/M1;->s(I)B

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eq v0, v6, :cond_5

    .line 166
    .line 167
    add-int/lit8 v2, v0, -0x1

    .line 168
    .line 169
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    check-cast v2, Latak/core/M1;

    .line 174
    .line 175
    invoke-virtual {v2, v11}, Latak/core/M1;->s(I)B

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-eq v1, v2, :cond_6

    .line 180
    .line 181
    :cond_5
    and-int/lit16 v1, v1, 0xff

    .line 182
    .line 183
    invoke-virtual {v10, v1}, Latak/core/G1;->p1(I)Latak/core/G1;

    .line 184
    .line 185
    .line 186
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_7
    new-instance v8, Latak/core/G1;

    .line 190
    .line 191
    invoke-direct {v8}, Latak/core/G1;-><init>()V

    .line 192
    .line 193
    .line 194
    :goto_4
    if-ge v6, v13, :cond_b

    .line 195
    .line 196
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Latak/core/M1;

    .line 201
    .line 202
    invoke-virtual {v0, v11}, Latak/core/M1;->s(I)B

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    add-int/lit8 v1, v6, 0x1

    .line 207
    .line 208
    move v2, v1

    .line 209
    :goto_5
    if-ge v2, v13, :cond_9

    .line 210
    .line 211
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    check-cast v3, Latak/core/M1;

    .line 216
    .line 217
    invoke-virtual {v3, v11}, Latak/core/M1;->s(I)B

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    if-eq v0, v3, :cond_8

    .line 222
    .line 223
    move v7, v2

    .line 224
    goto :goto_6

    .line 225
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_9
    move v7, v13

    .line 229
    :goto_6
    if-ne v1, v7, :cond_a

    .line 230
    .line 231
    add-int/lit8 v0, v11, 0x1

    .line 232
    .line 233
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    check-cast v1, Latak/core/M1;

    .line 238
    .line 239
    invoke-virtual {v1}, Latak/core/M1;->c0()I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-ne v0, v1, :cond_a

    .line 244
    .line 245
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    check-cast v0, Ljava/lang/Number;

    .line 250
    .line 251
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    invoke-virtual {v10, v0}, Latak/core/G1;->p1(I)Latak/core/G1;

    .line 256
    .line 257
    .line 258
    move/from16 v18, v7

    .line 259
    .line 260
    move-object v15, v8

    .line 261
    goto :goto_7

    .line 262
    :cond_a
    invoke-direct {v9, v8}, Latak/core/W9$a;->c(Latak/core/G1;)J

    .line 263
    .line 264
    .line 265
    move-result-wide v0

    .line 266
    add-long v0, v16, v0

    .line 267
    .line 268
    long-to-int v0, v0

    .line 269
    mul-int/2addr v0, v15

    .line 270
    invoke-virtual {v10, v0}, Latak/core/G1;->p1(I)Latak/core/G1;

    .line 271
    .line 272
    .line 273
    add-int/lit8 v4, v11, 0x1

    .line 274
    .line 275
    move-object/from16 v0, p0

    .line 276
    .line 277
    move-wide/from16 v1, v16

    .line 278
    .line 279
    move-object v3, v8

    .line 280
    move-object/from16 v5, p5

    .line 281
    .line 282
    move/from16 v18, v7

    .line 283
    .line 284
    move-object v15, v8

    .line 285
    move-object/from16 v8, p8

    .line 286
    .line 287
    invoke-direct/range {v0 .. v8}, Latak/core/W9$a;->a(JLatak/core/G1;ILjava/util/List;IILjava/util/List;)V

    .line 288
    .line 289
    .line 290
    :goto_7
    move-object v8, v15

    .line 291
    move/from16 v6, v18

    .line 292
    .line 293
    const/4 v15, -0x1

    .line 294
    goto :goto_4

    .line 295
    :cond_b
    move-object v15, v8

    .line 296
    invoke-virtual {v10, v15}, Latak/core/G1;->h0(Latak/core/Pk;)J

    .line 297
    .line 298
    .line 299
    goto/16 :goto_a

    .line 300
    .line 301
    :cond_c
    invoke-virtual {v1}, Latak/core/M1;->c0()I

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    invoke-virtual {v2}, Latak/core/M1;->c0()I

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    const/4 v4, 0x0

    .line 314
    move v7, v11

    .line 315
    :goto_8
    if-ge v7, v3, :cond_d

    .line 316
    .line 317
    invoke-virtual {v1, v7}, Latak/core/M1;->s(I)B

    .line 318
    .line 319
    .line 320
    move-result v8

    .line 321
    invoke-virtual {v2, v7}, Latak/core/M1;->s(I)B

    .line 322
    .line 323
    .line 324
    move-result v15

    .line 325
    if-ne v8, v15, :cond_d

    .line 326
    .line 327
    add-int/lit8 v4, v4, 0x1

    .line 328
    .line 329
    add-int/lit8 v7, v7, 0x1

    .line 330
    .line 331
    goto :goto_8

    .line 332
    :cond_d
    invoke-direct {v9, v10}, Latak/core/W9$a;->c(Latak/core/G1;)J

    .line 333
    .line 334
    .line 335
    move-result-wide v2

    .line 336
    add-long v2, p1, v2

    .line 337
    .line 338
    int-to-long v7, v5

    .line 339
    add-long/2addr v2, v7

    .line 340
    int-to-long v7, v4

    .line 341
    add-long/2addr v2, v7

    .line 342
    const-wide/16 v7, 0x1

    .line 343
    .line 344
    add-long/2addr v2, v7

    .line 345
    neg-int v5, v4

    .line 346
    invoke-virtual {v10, v5}, Latak/core/G1;->p1(I)Latak/core/G1;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v10, v0}, Latak/core/G1;->p1(I)Latak/core/G1;

    .line 350
    .line 351
    .line 352
    add-int/2addr v4, v11

    .line 353
    :goto_9
    if-ge v11, v4, :cond_e

    .line 354
    .line 355
    invoke-virtual {v1, v11}, Latak/core/M1;->s(I)B

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    and-int/lit16 v0, v0, 0xff

    .line 360
    .line 361
    invoke-virtual {v10, v0}, Latak/core/G1;->p1(I)Latak/core/G1;

    .line 362
    .line 363
    .line 364
    add-int/lit8 v11, v11, 0x1

    .line 365
    .line 366
    goto :goto_9

    .line 367
    :cond_e
    add-int/lit8 v0, v6, 0x1

    .line 368
    .line 369
    if-ne v0, v13, :cond_10

    .line 370
    .line 371
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    check-cast v0, Latak/core/M1;

    .line 376
    .line 377
    invoke-virtual {v0}, Latak/core/M1;->c0()I

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    if-ne v4, v0, :cond_f

    .line 382
    .line 383
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    check-cast v0, Ljava/lang/Number;

    .line 388
    .line 389
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    invoke-virtual {v10, v0}, Latak/core/G1;->p1(I)Latak/core/G1;

    .line 394
    .line 395
    .line 396
    goto :goto_a

    .line 397
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 398
    .line 399
    const-string v1, "Check failed."

    .line 400
    .line 401
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    throw v0

    .line 405
    :cond_10
    new-instance v11, Latak/core/G1;

    .line 406
    .line 407
    invoke-direct {v11}, Latak/core/G1;-><init>()V

    .line 408
    .line 409
    .line 410
    invoke-direct {v9, v11}, Latak/core/W9$a;->c(Latak/core/G1;)J

    .line 411
    .line 412
    .line 413
    move-result-wide v0

    .line 414
    add-long/2addr v0, v2

    .line 415
    long-to-int v0, v0

    .line 416
    const/4 v1, -0x1

    .line 417
    mul-int/2addr v0, v1

    .line 418
    invoke-virtual {v10, v0}, Latak/core/G1;->p1(I)Latak/core/G1;

    .line 419
    .line 420
    .line 421
    move-object/from16 v0, p0

    .line 422
    .line 423
    move-wide v1, v2

    .line 424
    move-object v3, v11

    .line 425
    move-object/from16 v5, p5

    .line 426
    .line 427
    move/from16 v7, p7

    .line 428
    .line 429
    move-object/from16 v8, p8

    .line 430
    .line 431
    invoke-direct/range {v0 .. v8}, Latak/core/W9$a;->a(JLatak/core/G1;ILjava/util/List;IILjava/util/List;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v10, v11}, Latak/core/G1;->h0(Latak/core/Pk;)J

    .line 435
    .line 436
    .line 437
    :goto_a
    return-void

    .line 438
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 439
    .line 440
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    throw v0
.end method

.method static bridge synthetic b(Latak/core/W9$a;JLatak/core/G1;ILjava/util/List;IILjava/util/List;ILjava/lang/Object;)V
    .locals 11

    .line 1
    and-int/lit8 v0, p9, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    move-wide v3, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-wide v3, p1

    .line 10
    :goto_0
    and-int/lit8 v0, p9, 0x4

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    move v6, v1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v6, p4

    .line 18
    :goto_1
    and-int/lit8 v0, p9, 0x10

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    move v8, v1

    .line 23
    goto :goto_2

    .line 24
    :cond_2
    move/from16 v8, p6

    .line 25
    .line 26
    :goto_2
    and-int/lit8 v0, p9, 0x20

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    move v9, v0

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    move/from16 v9, p7

    .line 37
    .line 38
    :goto_3
    move-object v2, p0

    .line 39
    move-object v5, p3

    .line 40
    move-object/from16 v7, p5

    .line 41
    .line 42
    move-object/from16 v10, p8

    .line 43
    .line 44
    invoke-direct/range {v2 .. v10}, Latak/core/W9$a;->a(JLatak/core/G1;ILjava/util/List;IILjava/util/List;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private final c(Latak/core/G1;)J
    .locals 4
    .param p1    # Latak/core/G1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Latak/core/G1;->size()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 p1, 0x4

    .line 6
    int-to-long v2, p1

    .line 7
    div-long/2addr v0, v2

    .line 8
    return-wide v0
.end method


# virtual methods
.method public final varargs d([Latak/core/M1;)Latak/core/W9;
    .locals 16
    .param p1    # [Latak/core/M1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "byteStrings"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, -0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v0, Latak/core/W9;

    .line 15
    .line 16
    new-array v1, v4, [Latak/core/M1;

    .line 17
    .line 18
    filled-new-array {v4, v3}, [I

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-direct {v0, v1, v3, v2}, Latak/core/W9;-><init>([Latak/core/M1;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    new-instance v5, Ljava/util/ArrayList;

    .line 34
    .line 35
    array-length v6, v0

    .line 36
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    .line 38
    .line 39
    array-length v6, v0

    .line 40
    move v7, v4

    .line 41
    :goto_0
    if-ge v7, v6, :cond_1

    .line 42
    .line 43
    aget-object v8, v0, v7

    .line 44
    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    add-int/lit8 v7, v7, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    new-array v3, v4, [Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-interface {v5, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-eqz v3, :cond_a

    .line 62
    .line 63
    check-cast v3, [Ljava/lang/Integer;

    .line 64
    .line 65
    array-length v5, v3

    .line 66
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, [Ljava/lang/Integer;

    .line 71
    .line 72
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v13

    .line 76
    array-length v3, v0

    .line 77
    move v11, v4

    .line 78
    move v12, v11

    .line 79
    :goto_1
    if-ge v11, v3, :cond_2

    .line 80
    .line 81
    aget-object v6, v0, v11

    .line 82
    .line 83
    add-int/lit8 v14, v12, 0x1

    .line 84
    .line 85
    const/4 v9, 0x6

    .line 86
    const/4 v10, 0x0

    .line 87
    const/4 v7, 0x0

    .line 88
    const/4 v8, 0x0

    .line 89
    move-object v5, v1

    .line 90
    invoke-static/range {v5 .. v10}, Lkotlin/collections/CollectionsKt;->binarySearch$default(Ljava/util/List;Ljava/lang/Comparable;IIILjava/lang/Object;)I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-interface {v13, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    add-int/lit8 v11, v11, 0x1

    .line 102
    .line 103
    move v12, v14

    .line 104
    goto :goto_1

    .line 105
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Latak/core/M1;

    .line 110
    .line 111
    invoke-virtual {v3}, Latak/core/M1;->c0()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-lez v3, :cond_9

    .line 116
    .line 117
    move v3, v4

    .line 118
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-ge v3, v5, :cond_7

    .line 123
    .line 124
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    check-cast v5, Latak/core/M1;

    .line 129
    .line 130
    add-int/lit8 v6, v3, 0x1

    .line 131
    .line 132
    move v7, v6

    .line 133
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    if-ge v7, v8, :cond_6

    .line 138
    .line 139
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    check-cast v8, Latak/core/M1;

    .line 144
    .line 145
    invoke-virtual {v8, v5}, Latak/core/M1;->d0(Latak/core/M1;)Z

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    if-nez v9, :cond_3

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_3
    invoke-virtual {v8}, Latak/core/M1;->c0()I

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    invoke-virtual {v5}, Latak/core/M1;->c0()I

    .line 157
    .line 158
    .line 159
    move-result v10

    .line 160
    if-eq v9, v10, :cond_5

    .line 161
    .line 162
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    check-cast v8, Ljava/lang/Number;

    .line 167
    .line 168
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    check-cast v9, Ljava/lang/Number;

    .line 177
    .line 178
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 179
    .line 180
    .line 181
    move-result v9

    .line 182
    if-le v8, v9, :cond_4

    .line 183
    .line 184
    invoke-interface {v1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    invoke-interface {v13, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    const-string v1, "duplicate option: "

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v1

    .line 221
    :cond_6
    :goto_4
    move v3, v6

    .line 222
    goto :goto_2

    .line 223
    :cond_7
    new-instance v3, Latak/core/G1;

    .line 224
    .line 225
    invoke-direct {v3}, Latak/core/G1;-><init>()V

    .line 226
    .line 227
    .line 228
    const/16 v14, 0x35

    .line 229
    .line 230
    const/4 v15, 0x0

    .line 231
    const-wide/16 v6, 0x0

    .line 232
    .line 233
    const/4 v9, 0x0

    .line 234
    const/4 v11, 0x0

    .line 235
    const/4 v12, 0x0

    .line 236
    move-object/from16 v5, p0

    .line 237
    .line 238
    move-object v8, v3

    .line 239
    move-object v10, v1

    .line 240
    invoke-static/range {v5 .. v15}, Latak/core/W9$a;->b(Latak/core/W9$a;JLatak/core/G1;ILjava/util/List;IILjava/util/List;ILjava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    move-object/from16 v1, p0

    .line 244
    .line 245
    invoke-direct {v1, v3}, Latak/core/W9$a;->c(Latak/core/G1;)J

    .line 246
    .line 247
    .line 248
    move-result-wide v5

    .line 249
    long-to-int v5, v5

    .line 250
    new-array v5, v5, [I

    .line 251
    .line 252
    :goto_5
    invoke-virtual {v3}, Latak/core/G1;->C()Z

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    if-nez v6, :cond_8

    .line 257
    .line 258
    add-int/lit8 v6, v4, 0x1

    .line 259
    .line 260
    invoke-virtual {v3}, Latak/core/G1;->readInt()I

    .line 261
    .line 262
    .line 263
    move-result v7

    .line 264
    aput v7, v5, v4

    .line 265
    .line 266
    move v4, v6

    .line 267
    goto :goto_5

    .line 268
    :cond_8
    new-instance v3, Latak/core/W9;

    .line 269
    .line 270
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    check-cast v0, [Latak/core/M1;

    .line 275
    .line 276
    invoke-direct {v3, v0, v5, v2}, Latak/core/W9;-><init>([Latak/core/M1;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 277
    .line 278
    .line 279
    return-object v3

    .line 280
    :cond_9
    move-object/from16 v1, p0

    .line 281
    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 283
    .line 284
    const-string v2, "the empty byte string is not a supported option"

    .line 285
    .line 286
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    throw v0

    .line 290
    :cond_a
    move-object/from16 v1, p0

    .line 291
    .line 292
    new-instance v0, Lkotlin/TypeCastException;

    .line 293
    .line 294
    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    .line 295
    .line 296
    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw v0
.end method
