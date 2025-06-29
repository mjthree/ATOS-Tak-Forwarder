.class public final Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTakRouteKotEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TakRouteKotEvent.kt\ncom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes$Companion\n+ 2 TakRouteKotEvent.kt\ncom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEventKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,284:1\n209#2,2:285\n209#2,2:289\n209#2,2:293\n209#2,2:297\n1310#3,2:287\n1310#3,2:291\n1310#3,2:295\n1310#3,2:299\n*S KotlinDebug\n*F\n+ 1 TakRouteKotEvent.kt\ncom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes$Companion\n*L\n93#1:285,2\n98#1:289,2\n99#1:293,2\n100#1:297,2\n93#1:287,2\n98#1:291,2\n99#1:295,2\n100#1:299,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTakRouteKotEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TakRouteKotEvent.kt\ncom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes$Companion\n+ 2 TakRouteKotEvent.kt\ncom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEventKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,284:1\n209#2,2:285\n209#2,2:289\n209#2,2:293\n209#2,2:297\n1310#3,2:287\n1310#3,2:291\n1310#3,2:295\n1310#3,2:299\n*S KotlinDebug\n*F\n+ 1 TakRouteKotEvent.kt\ncom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes$Companion\n*L\n93#1:285,2\n98#1:289,2\n99#1:293,2\n100#1:297,2\n93#1:287,2\n98#1:291,2\n99#1:295,2\n100#1:299,2\n*E\n"
    }
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
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseTakRouteAttributes(Lkot/KotDetail;)Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;
    .locals 19
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
    invoke-static {}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;->values()[Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

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
    move-object v12, v8

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    move-object v12, v4

    .line 78
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v1, "planningmethod"

    .line 83
    .line 84
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual/range {p1 .. p1}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v2, "prefix"

    .line 95
    .line 96
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    move-object v13, v1

    .line 101
    check-cast v13, Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual/range {p1 .. p1}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const-string v2, "type"

    .line 108
    .line 109
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    move-object/from16 v18, v1

    .line 114
    .line 115
    check-cast v18, Ljava/lang/String;

    .line 116
    .line 117
    const/4 v5, 0x4

    .line 118
    const/4 v6, 0x0

    .line 119
    const-string v2, "stroke"

    .line 120
    .line 121
    const/4 v3, 0x3

    .line 122
    const/4 v4, 0x0

    .line 123
    move-object/from16 v1, p1

    .line 124
    .line 125
    invoke-static/range {v1 .. v6}, Lkot/utils/KotUtils;->intAttributeOrDefault$default(Lkot/KotDetail;Ljava/lang/String;IIILjava/lang/Object;)I

    .line 126
    .line 127
    .line 128
    move-result v15

    .line 129
    invoke-virtual/range {p1 .. p1}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const-string v2, "direction"

    .line 134
    .line 135
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteDirection;->values()[Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteDirection;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    array-length v3, v2

    .line 146
    move v4, v9

    .line 147
    :goto_3
    if-ge v4, v3, :cond_5

    .line 148
    .line 149
    aget-object v5, v2, v4

    .line 150
    .line 151
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-static {v6, v1, v11}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    if-eqz v6, :cond_4

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_5
    move-object v5, v8

    .line 166
    :goto_4
    if-nez v5, :cond_6

    .line 167
    .line 168
    move-object/from16 v16, v8

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_6
    move-object/from16 v16, v5

    .line 172
    .line 173
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    const-string v2, "routetype"

    .line 178
    .line 179
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    check-cast v1, Ljava/lang/String;

    .line 184
    .line 185
    invoke-static {}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;->values()[Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    array-length v3, v2

    .line 190
    move v4, v9

    .line 191
    :goto_6
    if-ge v4, v3, :cond_8

    .line 192
    .line 193
    aget-object v5, v2, v4

    .line 194
    .line 195
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    invoke-static {v6, v1, v11}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 200
    .line 201
    .line 202
    move-result v6

    .line 203
    if-eqz v6, :cond_7

    .line 204
    .line 205
    goto :goto_7

    .line 206
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_8
    move-object v5, v8

    .line 210
    :goto_7
    if-nez v5, :cond_9

    .line 211
    .line 212
    move-object v14, v8

    .line 213
    goto :goto_8

    .line 214
    :cond_9
    move-object v14, v5

    .line 215
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    const-string v2, "order"

    .line 220
    .line 221
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    check-cast v1, Ljava/lang/String;

    .line 226
    .line 227
    invoke-static {}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;->values()[Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    array-length v3, v2

    .line 232
    :goto_9
    if-ge v9, v3, :cond_b

    .line 233
    .line 234
    aget-object v4, v2, v9

    .line 235
    .line 236
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    invoke-static {v5, v1, v11}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    if-eqz v5, :cond_a

    .line 245
    .line 246
    goto :goto_a

    .line 247
    :cond_a
    add-int/lit8 v9, v9, 0x1

    .line 248
    .line 249
    goto :goto_9

    .line 250
    :cond_b
    move-object v4, v8

    .line 251
    :goto_a
    if-nez v4, :cond_c

    .line 252
    .line 253
    move-object/from16 v17, v8

    .line 254
    .line 255
    goto :goto_b

    .line 256
    :cond_c
    move-object/from16 v17, v4

    .line 257
    .line 258
    :goto_b
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;

    .line 259
    .line 260
    move-object v9, v1

    .line 261
    move-object v11, v0

    .line 262
    invoke-direct/range {v9 .. v18}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;-><init>(ILjava/lang/String;Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;Ljava/lang/String;Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;ILcom/toughstump/atos/activity/ui/frag/track/map/TakRouteDirection;Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    return-object v1
.end method
