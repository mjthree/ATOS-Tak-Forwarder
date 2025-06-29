.class public final Lcom/toughstump/atos/record/route/TakRouteAttributes$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/toughstump/atos/record/route/TakRouteAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTakRoute.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TakRoute.kt\ncom/toughstump/atos/record/route/TakRouteAttributes$Companion\n+ 2 TakRoute.kt\ncom/toughstump/atos/record/route/TakRouteKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,224:1\n222#2,2:225\n222#2,2:229\n222#2,2:233\n222#2,2:237\n1275#3,2:227\n1275#3,2:231\n1275#3,2:235\n1275#3,2:239\n*S KotlinDebug\n*F\n+ 1 TakRoute.kt\ncom/toughstump/atos/record/route/TakRouteAttributes$Companion\n*L\n145#1:225,2\n149#1:229,2\n150#1:233,2\n151#1:237,2\n145#1:227,2\n149#1:231,2\n150#1:235,2\n151#1:239,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/record/route/TakRouteAttributes$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseTakRouteAttributes(Lkot/KotDetail;)Lcom/toughstump/atos/record/route/TakRouteAttributes;
    .locals 18
    .param p1    # Lkot/KotDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lkot/KotDetail;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "link_attr"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v8, 0x0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return-object v8

    .line 22
    :cond_0
    const/4 v5, 0x4

    .line 23
    const/4 v6, 0x0

    .line 24
    const-string v2, "color"

    .line 25
    .line 26
    const/4 v3, -0x1

    .line 27
    const/4 v4, 0x0

    .line 28
    move-object/from16 v1, p1

    .line 29
    .line 30
    invoke-static/range {v1 .. v6}, Lkot/utils/KotUtils;->intAttributeOrDefault$default(Lkot/KotDetail;Ljava/lang/String;IIILjava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    invoke-virtual/range {p1 .. p1}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "method"

    .line 39
    .line 40
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {}, Lcom/toughstump/atos/record/route/TakRouteMethod;->values()[Lcom/toughstump/atos/record/route/TakRouteMethod;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    array-length v2, v1

    .line 51
    const/4 v9, 0x0

    .line 52
    move v3, v9

    .line 53
    :goto_0
    const/4 v11, 0x1

    .line 54
    if-ge v3, v2, :cond_2

    .line 55
    .line 56
    aget-object v4, v1, v3

    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-static {v5, v0, v11}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    move-object v4, v8

    .line 73
    :goto_1
    if-nez v4, :cond_3

    .line 74
    .line 75
    move-object v0, v8

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    move-object v0, v4

    .line 78
    :goto_2
    if-nez v0, :cond_4

    .line 79
    .line 80
    return-object v8

    .line 81
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const-string v2, "prefix"

    .line 86
    .line 87
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    move-object v12, v1

    .line 92
    check-cast v12, Ljava/lang/String;

    .line 93
    .line 94
    if-nez v12, :cond_5

    .line 95
    .line 96
    return-object v8

    .line 97
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const-string v2, "type"

    .line 102
    .line 103
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    move-object/from16 v17, v1

    .line 108
    .line 109
    check-cast v17, Ljava/lang/String;

    .line 110
    .line 111
    if-nez v17, :cond_6

    .line 112
    .line 113
    return-object v8

    .line 114
    :cond_6
    const/4 v5, 0x4

    .line 115
    const/4 v6, 0x0

    .line 116
    const-string v2, "stroke"

    .line 117
    .line 118
    const/4 v3, 0x3

    .line 119
    const/4 v4, 0x0

    .line 120
    move-object/from16 v1, p1

    .line 121
    .line 122
    invoke-static/range {v1 .. v6}, Lkot/utils/KotUtils;->intAttributeOrDefault$default(Lkot/KotDetail;Ljava/lang/String;IIILjava/lang/Object;)I

    .line 123
    .line 124
    .line 125
    move-result v14

    .line 126
    invoke-virtual/range {p1 .. p1}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    const-string v2, "direction"

    .line 131
    .line 132
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {}, Lcom/toughstump/atos/record/route/TakRouteDirection;->values()[Lcom/toughstump/atos/record/route/TakRouteDirection;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    array-length v3, v2

    .line 143
    move v4, v9

    .line 144
    :goto_3
    if-ge v4, v3, :cond_8

    .line 145
    .line 146
    aget-object v5, v2, v4

    .line 147
    .line 148
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-static {v6, v1, v11}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    if-eqz v6, :cond_7

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_8
    move-object v5, v8

    .line 163
    :goto_4
    if-nez v5, :cond_9

    .line 164
    .line 165
    move-object v15, v8

    .line 166
    goto :goto_5

    .line 167
    :cond_9
    move-object v15, v5

    .line 168
    :goto_5
    if-nez v15, :cond_a

    .line 169
    .line 170
    return-object v8

    .line 171
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    const-string v2, "routetype"

    .line 176
    .line 177
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    check-cast v1, Ljava/lang/String;

    .line 182
    .line 183
    invoke-static {}, Lcom/toughstump/atos/record/route/TakRouteType;->values()[Lcom/toughstump/atos/record/route/TakRouteType;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    array-length v3, v2

    .line 188
    move v4, v9

    .line 189
    :goto_6
    if-ge v4, v3, :cond_c

    .line 190
    .line 191
    aget-object v5, v2, v4

    .line 192
    .line 193
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    invoke-static {v6, v1, v11}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    if-eqz v6, :cond_b

    .line 202
    .line 203
    goto :goto_7

    .line 204
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_c
    move-object v5, v8

    .line 208
    :goto_7
    if-nez v5, :cond_d

    .line 209
    .line 210
    move-object v13, v8

    .line 211
    goto :goto_8

    .line 212
    :cond_d
    move-object v13, v5

    .line 213
    :goto_8
    if-nez v13, :cond_e

    .line 214
    .line 215
    return-object v8

    .line 216
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    const-string v2, "order"

    .line 221
    .line 222
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    check-cast v1, Ljava/lang/String;

    .line 227
    .line 228
    invoke-static {}, Lcom/toughstump/atos/record/route/TakRouteOrder;->values()[Lcom/toughstump/atos/record/route/TakRouteOrder;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    array-length v3, v2

    .line 233
    :goto_9
    if-ge v9, v3, :cond_10

    .line 234
    .line 235
    aget-object v4, v2, v9

    .line 236
    .line 237
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    invoke-static {v5, v1, v11}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    if-eqz v5, :cond_f

    .line 246
    .line 247
    goto :goto_a

    .line 248
    :cond_f
    add-int/lit8 v9, v9, 0x1

    .line 249
    .line 250
    goto :goto_9

    .line 251
    :cond_10
    move-object v4, v8

    .line 252
    :goto_a
    if-nez v4, :cond_11

    .line 253
    .line 254
    move-object/from16 v16, v8

    .line 255
    .line 256
    goto :goto_b

    .line 257
    :cond_11
    move-object/from16 v16, v4

    .line 258
    .line 259
    :goto_b
    if-nez v16, :cond_12

    .line 260
    .line 261
    return-object v8

    .line 262
    :cond_12
    new-instance v1, Lcom/toughstump/atos/record/route/TakRouteAttributes;

    .line 263
    .line 264
    move-object v9, v1

    .line 265
    move-object v11, v0

    .line 266
    invoke-direct/range {v9 .. v17}, Lcom/toughstump/atos/record/route/TakRouteAttributes;-><init>(ILcom/toughstump/atos/record/route/TakRouteMethod;Ljava/lang/String;Lcom/toughstump/atos/record/route/TakRouteType;ILcom/toughstump/atos/record/route/TakRouteDirection;Lcom/toughstump/atos/record/route/TakRouteOrder;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    return-object v1
.end method

.method public final toKotDetail(Lcom/toughstump/atos/record/route/TakRouteAttributes;)Lkot/KotDetail;
    .locals 8
    .param p1    # Lcom/toughstump/atos/record/route/TakRouteAttributes;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/toughstump/atos/record/route/TakRouteAttributes;->getColorArgb()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "color"

    .line 20
    .line 21
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    const-string v0, "type"

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/toughstump/atos/record/route/TakRouteAttributes;->getTransportationType()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/toughstump/atos/record/route/TakRouteAttributes;->getRouteMethod()Lcom/toughstump/atos/record/route/TakRouteMethod;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "method"

    .line 42
    .line 43
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/toughstump/atos/record/route/TakRouteAttributes;->getDirection()Lcom/toughstump/atos/record/route/TakRouteDirection;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/toughstump/atos/record/route/TakRouteDirection;->getText()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "direction"

    .line 55
    .line 56
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/toughstump/atos/record/route/TakRouteAttributes;->getRouteType()Lcom/toughstump/atos/record/route/TakRouteType;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/toughstump/atos/record/route/TakRouteType;->getText()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "routetype"

    .line 68
    .line 69
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/toughstump/atos/record/route/TakRouteAttributes;->getRouteOrder()Lcom/toughstump/atos/record/route/TakRouteOrder;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v1, "order"

    .line 81
    .line 82
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/toughstump/atos/record/route/TakRouteAttributes;->getStroke()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string v0, "stroke"

    .line 94
    .line 95
    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    new-instance p1, Lkot/KotDetail;

    .line 99
    .line 100
    const/16 v6, 0xa

    .line 101
    .line 102
    const/4 v7, 0x0

    .line 103
    const-string v2, "link_attr"

    .line 104
    .line 105
    const/4 v3, 0x0

    .line 106
    const/4 v5, 0x0

    .line 107
    move-object v1, p1

    .line 108
    invoke-direct/range {v1 .. v7}, Lkot/KotDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Collection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 109
    .line 110
    .line 111
    return-object p1
.end method
