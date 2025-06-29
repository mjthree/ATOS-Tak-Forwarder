.class public final Lkot/xml/KotSAXContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKotSAXContentHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotSAXContentHandler.kt\nkot/xml/KotSAXContentHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Exceptions.kt\nkot/ExceptionsKt\n*L\n1#1,136:1\n1#2:137\n14#3:138\n14#3:139\n14#3:140\n14#3:141\n*S KotlinDebug\n*F\n+ 1 KotSAXContentHandler.kt\nkot/xml/KotSAXContentHandler\n*L\n41#1:138\n42#1:139\n101#1:140\n114#1:141\n*E\n"
.end annotation


# instance fields
.field private detail:Lkot/KotDetail;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final details:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lkot/KotDetail;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private event:Lkot/KotEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final eventAttributeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private innerText:Ljava/lang/StringBuilder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private point:Lkot/KotPoint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lkot/xml/KotSAXContentHandler;->eventAttributeMap:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/Stack;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lkot/xml/KotSAXContentHandler;->details:Ljava/util/Stack;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lkot/xml/KotSAXContentHandler;->innerText:Ljava/lang/StringBuilder;

    .line 24
    .line 25
    return-void
.end method

.method private final buildEvent(Ljava/util/Map;Lkot/KotDetail;Lkot/KotPoint;)Lkot/KotEvent;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkot/KotDetail;",
            "Lkot/KotPoint;",
            ")",
            "Lkot/KotEvent;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "uid"

    .line 6
    .line 7
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    move-object v7, v2

    .line 12
    check-cast v7, Ljava/lang/String;

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v7, :cond_e

    .line 17
    .line 18
    const-string v4, "how"

    .line 19
    .line 20
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    invoke-static {v4}, Lkot/HowKt;->how(Ljava/lang/String;)Lkot/How;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    move-object v8, v4

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    :goto_1
    invoke-static {}, Lkot/HowKt;->getGarbageInGarbageOut()Lkot/How;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    goto :goto_0

    .line 42
    :goto_2
    new-instance v4, Lkot/KotTime;

    .line 43
    .line 44
    invoke-direct {v4}, Lkot/KotTime;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v5, "time"

    .line 48
    .line 49
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v5, :cond_3

    .line 56
    .line 57
    invoke-direct {v0, v5}, Lkot/xml/KotSAXContentHandler;->tryToParseTime(Ljava/lang/String;)Lkot/KotTime;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    if-nez v5, :cond_2

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_2
    move-object v9, v5

    .line 65
    goto :goto_4

    .line 66
    :cond_3
    :goto_3
    move-object v9, v4

    .line 67
    :goto_4
    const-string v5, "start"

    .line 68
    .line 69
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Ljava/lang/String;

    .line 74
    .line 75
    if-eqz v5, :cond_5

    .line 76
    .line 77
    invoke-direct {v0, v5}, Lkot/xml/KotSAXContentHandler;->tryToParseTime(Ljava/lang/String;)Lkot/KotTime;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    if-nez v5, :cond_4

    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_4
    move-object v10, v5

    .line 85
    goto :goto_6

    .line 86
    :cond_5
    :goto_5
    move-object v10, v4

    .line 87
    :goto_6
    const-string v5, "stale"

    .line 88
    .line 89
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Ljava/lang/String;

    .line 94
    .line 95
    if-eqz v5, :cond_7

    .line 96
    .line 97
    invoke-direct {v0, v5}, Lkot/xml/KotSAXContentHandler;->tryToParseTime(Ljava/lang/String;)Lkot/KotTime;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    if-nez v5, :cond_6

    .line 102
    .line 103
    goto :goto_7

    .line 104
    :cond_6
    move-object v11, v5

    .line 105
    goto :goto_8

    .line 106
    :cond_7
    :goto_7
    move-object v11, v4

    .line 107
    :goto_8
    const-string v4, "access"

    .line 108
    .line 109
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    move-object v12, v4

    .line 114
    check-cast v12, Ljava/lang/String;

    .line 115
    .line 116
    const-string v4, "opex"

    .line 117
    .line 118
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Ljava/lang/String;

    .line 123
    .line 124
    if-eqz v4, :cond_9

    .line 125
    .line 126
    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-nez v5, :cond_8

    .line 131
    .line 132
    invoke-static {v4}, Lkot/OpexKt;->opex(Ljava/lang/String;)Lkot/Opex;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    goto :goto_9

    .line 137
    :cond_8
    move-object v4, v3

    .line 138
    :goto_9
    move-object v14, v4

    .line 139
    goto :goto_a

    .line 140
    :cond_9
    move-object v14, v3

    .line 141
    :goto_a
    const-string v4, "qos"

    .line 142
    .line 143
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    check-cast v4, Ljava/lang/String;

    .line 148
    .line 149
    if-eqz v4, :cond_b

    .line 150
    .line 151
    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-nez v5, :cond_a

    .line 156
    .line 157
    sget-object v5, Lkot/Qos;->Companion:Lkot/Qos$Companion;

    .line 158
    .line 159
    invoke-virtual {v5, v4}, Lkot/Qos$Companion;->fromString(Ljava/lang/String;)Lkot/Qos;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    goto :goto_b

    .line 164
    :cond_a
    move-object v4, v3

    .line 165
    :goto_b
    move-object v13, v4

    .line 166
    goto :goto_c

    .line 167
    :cond_b
    move-object v13, v3

    .line 168
    :goto_c
    const-string v4, "type"

    .line 169
    .line 170
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    move-object/from16 v16, v1

    .line 175
    .line 176
    check-cast v16, Ljava/lang/String;

    .line 177
    .line 178
    if-eqz v16, :cond_d

    .line 179
    .line 180
    invoke-static/range {v16 .. v16}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-nez v1, :cond_c

    .line 185
    .line 186
    new-instance v1, Lkot/KotType;

    .line 187
    .line 188
    const/16 v19, 0x6

    .line 189
    .line 190
    const/16 v20, 0x0

    .line 191
    .line 192
    const/16 v17, 0x0

    .line 193
    .line 194
    const/16 v18, 0x0

    .line 195
    .line 196
    move-object v15, v1

    .line 197
    invoke-direct/range {v15 .. v20}, Lkot/KotType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 198
    .line 199
    .line 200
    move-object v4, v1

    .line 201
    goto :goto_d

    .line 202
    :cond_c
    move-object v4, v3

    .line 203
    :goto_d
    if-eqz v4, :cond_d

    .line 204
    .line 205
    new-instance v1, Lkot/BasicKotEvent;

    .line 206
    .line 207
    move-object v3, v1

    .line 208
    move-object/from16 v5, p3

    .line 209
    .line 210
    move-object/from16 v6, p2

    .line 211
    .line 212
    invoke-direct/range {v3 .. v14}, Lkot/BasicKotEvent;-><init>(Lkot/KotType;Lkot/KotPoint;Lkot/KotDetail;Ljava/lang/String;Lkot/How;Lkot/KotTime;Lkot/KotTime;Lkot/KotTime;Ljava/lang/String;Lkot/Qos;Lkot/Opex;)V

    .line 213
    .line 214
    .line 215
    return-object v1

    .line 216
    :cond_d
    new-instance v1, Lkot/BadCot;

    .line 217
    .line 218
    const-string v4, "No event attribute named type"

    .line 219
    .line 220
    invoke-direct {v1, v4, v3, v2, v3}, Lkot/BadCot;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 221
    .line 222
    .line 223
    throw v1

    .line 224
    :cond_e
    new-instance v1, Lkot/BadCot;

    .line 225
    .line 226
    const-string v4, "No event attribute named uid"

    .line 227
    .line 228
    invoke-direct {v1, v4, v3, v2, v3}, Lkot/BadCot;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 229
    .line 230
    .line 231
    throw v1
.end method

.method private final parseDetail(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lkot/KotDetail;
    .locals 8

    .line 1
    new-instance v7, Lkot/KotDetail;

    .line 2
    .line 3
    invoke-static {p2}, Lkot/xml/ExtensionsKt;->toMap(Lorg/xml/sax/Attributes;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    const/16 v5, 0xa

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    move-object v0, v7

    .line 13
    move-object v1, p1

    .line 14
    invoke-direct/range {v0 .. v6}, Lkot/KotDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Collection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    .line 16
    .line 17
    return-object v7
.end method

.method private final parsePoint(Lorg/xml/sax/Attributes;)Lkot/KotPoint;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "lat"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkot/xml/ExtensionsKt;->double(Lorg/xml/sax/Attributes;Ljava/lang/String;)D

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    const-string v1, "lon"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkot/xml/ExtensionsKt;->double(Lorg/xml/sax/Attributes;Ljava/lang/String;)D

    .line 12
    .line 13
    .line 14
    move-result-wide v5

    .line 15
    const-string v1, "hae"

    .line 16
    .line 17
    const-wide v7, 0x416312cfe0000000L    # 9999999.0

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1, v7, v8}, Lkot/xml/ExtensionsKt;->doubleOrDefault(Lorg/xml/sax/Attributes;Ljava/lang/String;D)D

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    .line 31
    .line 32
    .line 33
    move-result-wide v9

    .line 34
    cmpg-double v2, v9, v7

    .line 35
    .line 36
    const/4 v9, 0x0

    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    move-object v1, v9

    .line 40
    :cond_0
    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    move-wide v12, v1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-wide v12, v10

    .line 51
    :goto_0
    const-string v1, "ce"

    .line 52
    .line 53
    invoke-static {v0, v1, v7, v8}, Lkot/xml/ExtensionsKt;->doubleOrDefault(Lorg/xml/sax/Attributes;Ljava/lang/String;D)D

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    .line 62
    .line 63
    .line 64
    move-result-wide v14

    .line 65
    cmpg-double v2, v14, v7

    .line 66
    .line 67
    if-nez v2, :cond_2

    .line 68
    .line 69
    move-object v1, v9

    .line 70
    :cond_2
    if-eqz v1, :cond_3

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 73
    .line 74
    .line 75
    move-result-wide v1

    .line 76
    move-wide v14, v1

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    move-wide v14, v10

    .line 79
    :goto_1
    const-string v1, "le"

    .line 80
    .line 81
    invoke-static {v0, v1, v7, v8}, Lkot/xml/ExtensionsKt;->doubleOrDefault(Lorg/xml/sax/Attributes;Ljava/lang/String;D)D

    .line 82
    .line 83
    .line 84
    move-result-wide v0

    .line 85
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 90
    .line 91
    .line 92
    move-result-wide v1

    .line 93
    cmpg-double v1, v1, v7

    .line 94
    .line 95
    if-nez v1, :cond_4

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    move-object v9, v0

    .line 99
    :goto_2
    if-eqz v9, :cond_5

    .line 100
    .line 101
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    .line 102
    .line 103
    .line 104
    move-result-wide v0

    .line 105
    goto :goto_3

    .line 106
    :cond_5
    move-wide v0, v10

    .line 107
    :goto_3
    new-instance v16, Lkot/KotPoint;

    .line 108
    .line 109
    move-object/from16 v2, v16

    .line 110
    .line 111
    move-wide v7, v12

    .line 112
    move-wide v9, v14

    .line 113
    move-wide v11, v0

    .line 114
    invoke-direct/range {v2 .. v12}, Lkot/KotPoint;-><init>(DDDDD)V

    .line 115
    .line 116
    .line 117
    return-object v16
.end method

.method private final tryToParseTime(Ljava/lang/String;)Lkot/KotTime;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lkot/KotTime;->Companion:Lkot/KotTime$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lkot/KotTime$Companion;->parse(Ljava/lang/String;)Lkot/KotTime;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return-object p1
.end method


# virtual methods
.method public characters([CII)V
    .locals 9
    .param p1    # [C
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    add-int/2addr p3, p2

    .line 4
    invoke-static {p2, p3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt;->sliceArray([CLkotlin/ranges/IntRange;)[C

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/16 v7, 0x3e

    .line 13
    .line 14
    const/4 v8, 0x0

    .line 15
    const-string v1, ""

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    invoke-static/range {v0 .. v8}, Lkotlin/collections/ArraysKt;->joinToString$default([CLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-nez p2, :cond_0

    .line 39
    .line 40
    iget-object p2, p0, Lkot/xml/KotSAXContentHandler;->details:Ljava/util/Stack;

    .line 41
    .line 42
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-nez p2, :cond_0

    .line 47
    .line 48
    iget-object p2, p0, Lkot/xml/KotSAXContentHandler;->innerText:Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string p2, "Parser encountered null character sequence"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p2, :cond_b

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const p3, -0x4f95e7af

    .line 8
    .line 9
    .line 10
    if-eq p1, p3, :cond_5

    .line 11
    .line 12
    const p3, 0x5c6729a

    .line 13
    .line 14
    .line 15
    if-eq p1, p3, :cond_1

    .line 16
    .line 17
    const p3, 0x65e5590

    .line 18
    .line 19
    .line 20
    if-eq p1, p3, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string p1, "point"

    .line 24
    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_9

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-string p1, "event"

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object p1, p0, Lkot/xml/KotSAXContentHandler;->detail:Lkot/KotDetail;

    .line 42
    .line 43
    const/4 p2, 0x2

    .line 44
    const/4 p3, 0x0

    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    iget-object v0, p0, Lkot/xml/KotSAXContentHandler;->point:Lkot/KotPoint;

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    iget-object p2, p0, Lkot/xml/KotSAXContentHandler;->eventAttributeMap:Ljava/util/Map;

    .line 52
    .line 53
    invoke-direct {p0, p2, p1, v0}, Lkot/xml/KotSAXContentHandler;->buildEvent(Ljava/util/Map;Lkot/KotDetail;Lkot/KotPoint;)Lkot/KotEvent;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lkot/xml/KotSAXContentHandler;->event:Lkot/KotEvent;

    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :cond_3
    new-instance p1, Lkot/BadCot;

    .line 62
    .line 63
    const-string v0, "Parser reached the end of the event without location information"

    .line 64
    .line 65
    invoke-direct {p1, v0, p3, p2, p3}, Lkot/BadCot;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_4
    new-instance p1, Lkot/BadCot;

    .line 70
    .line 71
    const-string v0, "Parser reached the end of the event without a detail node"

    .line 72
    .line 73
    invoke-direct {p1, v0, p3, p2, p3}, Lkot/BadCot;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_5
    const-string p1, "detail"

    .line 78
    .line 79
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_8

    .line 84
    .line 85
    :goto_0
    iget-object p1, p0, Lkot/xml/KotSAXContentHandler;->details:Ljava/util/Stack;

    .line 86
    .line 87
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_7

    .line 92
    .line 93
    iget-object p1, p0, Lkot/xml/KotSAXContentHandler;->details:Ljava/util/Stack;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const-string p2, "details.pop()"

    .line 100
    .line 101
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    check-cast p1, Lkot/KotDetail;

    .line 105
    .line 106
    iget-object p3, p0, Lkot/xml/KotSAXContentHandler;->innerText:Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    const-string v0, "innerText.toString()"

    .line 113
    .line 114
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p1, p3}, Lkot/KotDetailKt;->withText(Lkot/KotDetail;Ljava/lang/String;)Lkot/KotDetail;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object p3, p0, Lkot/xml/KotSAXContentHandler;->innerText:Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-static {p3}, Lkotlin/text/StringsKt;->clear(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-object p3, p0, Lkot/xml/KotSAXContentHandler;->details:Ljava/util/Stack;

    .line 127
    .line 128
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    move-result p3

    .line 132
    if-nez p3, :cond_6

    .line 133
    .line 134
    iget-object p3, p0, Lkot/xml/KotSAXContentHandler;->details:Ljava/util/Stack;

    .line 135
    .line 136
    invoke-virtual {p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    check-cast p3, Lkot/KotDetail;

    .line 144
    .line 145
    invoke-static {p3, p1}, Lkot/KotDetailKt;->plus(Lkot/KotDetail;Lkot/KotDetail;)Lkot/KotDetail;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iget-object p2, p0, Lkot/xml/KotSAXContentHandler;->details:Ljava/util/Stack;

    .line 150
    .line 151
    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 156
    .line 157
    const-string p2, "Parser attempting to add child detail node to its parent, but the stack has been drained"

    .line 158
    .line 159
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p1

    .line 163
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 164
    .line 165
    const-string p2, "Parser is at the end of a child detail node and the detail stack has been drained"

    .line 166
    .line 167
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p1

    .line 171
    :cond_8
    iget-object p1, p0, Lkot/xml/KotSAXContentHandler;->details:Ljava/util/Stack;

    .line 172
    .line 173
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-nez p1, :cond_a

    .line 178
    .line 179
    iget-object p1, p0, Lkot/xml/KotSAXContentHandler;->details:Ljava/util/Stack;

    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    check-cast p1, Lkot/KotDetail;

    .line 186
    .line 187
    iput-object p1, p0, Lkot/xml/KotSAXContentHandler;->detail:Lkot/KotDetail;

    .line 188
    .line 189
    :cond_9
    :goto_1
    return-void

    .line 190
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 191
    .line 192
    const-string p2, "Parser is at the end of the parent detail node, and the detail stack has been drained"

    .line 193
    .line 194
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw p1

    .line 198
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 199
    .line 200
    const-string p2, "Parser encountered null element name"

    .line 201
    .line 202
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw p1
.end method

.method public final getEvent()Lkot/KotEvent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkot/xml/KotSAXContentHandler;->event:Lkot/KotEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setEvent(Lkot/KotEvent;)V
    .locals 0
    .param p1    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lkot/xml/KotSAXContentHandler;->event:Lkot/KotEvent;

    .line 2
    .line 3
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lorg/xml/sax/Attributes;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p2, :cond_8

    .line 2
    .line 3
    if-eqz p4, :cond_7

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const p3, -0x4f95e7af

    .line 10
    .line 11
    .line 12
    if-eq p1, p3, :cond_4

    .line 13
    .line 14
    const p3, 0x5c6729a

    .line 15
    .line 16
    .line 17
    if-eq p1, p3, :cond_2

    .line 18
    .line 19
    const p3, 0x65e5590

    .line 20
    .line 21
    .line 22
    if-eq p1, p3, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p1, "point"

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-direct {p0, p4}, Lkot/xml/KotSAXContentHandler;->parsePoint(Lorg/xml/sax/Attributes;)Lkot/KotPoint;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lkot/xml/KotSAXContentHandler;->point:Lkot/KotPoint;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const-string p1, "event"

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    iget-object p1, p0, Lkot/xml/KotSAXContentHandler;->eventAttributeMap:Ljava/util/Map;

    .line 51
    .line 52
    invoke-static {p4}, Lkot/xml/ExtensionsKt;->toMap(Lorg/xml/sax/Attributes;)Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    const-string p1, "detail"

    .line 61
    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_5

    .line 67
    .line 68
    :goto_0
    iget-object p1, p0, Lkot/xml/KotSAXContentHandler;->details:Ljava/util/Stack;

    .line 69
    .line 70
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_6

    .line 75
    .line 76
    invoke-direct {p0, p2, p4}, Lkot/xml/KotSAXContentHandler;->parseDetail(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lkot/KotDetail;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object p2, p0, Lkot/xml/KotSAXContentHandler;->details:Ljava/util/Stack;

    .line 81
    .line 82
    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    iget-object p1, p0, Lkot/xml/KotSAXContentHandler;->details:Ljava/util/Stack;

    .line 87
    .line 88
    new-instance p2, Lkot/KotDetail;

    .line 89
    .line 90
    const/16 v5, 0xf

    .line 91
    .line 92
    const/4 v6, 0x0

    .line 93
    const/4 v1, 0x0

    .line 94
    const/4 v2, 0x0

    .line 95
    const/4 v3, 0x0

    .line 96
    const/4 v4, 0x0

    .line 97
    move-object v0, p2

    .line 98
    invoke-direct/range {v0 .. v6}, Lkot/KotDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Collection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    :cond_6
    :goto_1
    return-void

    .line 105
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string p3, "Parser encountered null Attributes for element "

    .line 111
    .line 112
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p2

    .line 132
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    const-string p2, "Parser encountered null element name"

    .line 135
    .line 136
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p1
.end method
