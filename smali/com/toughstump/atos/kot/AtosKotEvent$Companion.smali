.class public final Lcom/toughstump/atos/kot/AtosKotEvent$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/toughstump/atos/kot/AtosKotEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtosKotEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosKotEvent.kt\ncom/toughstump/atos/kot/AtosKotEvent$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,187:1\n286#2,2:188\n286#2,2:190\n211#3,2:192\n211#3,2:195\n1#4:194\n*S KotlinDebug\n*F\n+ 1 AtosKotEvent.kt\ncom/toughstump/atos/kot/AtosKotEvent$Companion\n*L\n56#1:188,2\n100#1:190,2\n102#1:192,2\n140#1:195,2\n*E\n"
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
    invoke-direct {p0}, Lcom/toughstump/atos/kot/AtosKotEvent$Companion;-><init>()V

    return-void
.end method

.method private final getAtosChildren(Lcom/toughstump/atos/kot/AtosKotEvent;)Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/toughstump/atos/kot/AtosKotEvent;",
            ")",
            "Ljava/util/Collection<",
            "Lkot/KotDetail;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getAttributes()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    move-object v4, v1

    .line 35
    check-cast v4, Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/String;

    .line 42
    .line 43
    const/4 v8, 0x4

    .line 44
    const/4 v9, 0x0

    .line 45
    const-string v5, " "

    .line 46
    .line 47
    const-string v6, "_"

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance p1, Lkot/KotDetail;

    .line 59
    .line 60
    const/16 v5, 0xa

    .line 61
    .line 62
    const/4 v6, 0x0

    .line 63
    const-string v1, "attributes"

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    const/4 v4, 0x0

    .line 67
    move-object v0, p1

    .line 68
    invoke-direct/range {v0 .. v6}, Lkot/KotDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Collection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    return-object p1
.end method

.method private final getAttributesFromDetail(Lkot/KotDetail;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkot/KotDetail;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lkot/KotDetail;->getChildren()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    move-object v2, v0

    .line 21
    check-cast v2, Lkot/KotDetail;

    .line 22
    .line 23
    invoke-virtual {v2}, Lkot/KotDetail;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "attributes"

    .line 28
    .line 29
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-object v0, v1

    .line 37
    :goto_0
    check-cast v0, Lkot/KotDetail;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_2
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Ljava/util/Map$Entry;

    .line 70
    .line 71
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    move-object v3, v2

    .line 76
    check-cast v3, Ljava/lang/String;

    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Ljava/lang/String;

    .line 83
    .line 84
    const/4 v7, 0x4

    .line 85
    const/4 v8, 0x0

    .line 86
    const-string v4, "_"

    .line 87
    .line 88
    const-string v5, " "

    .line 89
    .line 90
    const/4 v6, 0x0

    .line 91
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    return-object p1
.end method

.method private final getDetail(Lcom/toughstump/atos/kot/AtosKotEvent;)Lkot/KotDetail;
    .locals 19

    .line 1
    new-instance v4, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTrack()Lkot/utils/model/Track;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v0}, Lkot/utils/model/TrackUtils;->toKotDetail(Lkot/utils/model/Track;)Lkot/KotDetail;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getLink()Lkot/utils/model/Link;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-static {v0}, Lkot/utils/model/LinkUtils;->toKotDetail(Lkot/utils/model/Link;)Lkot/KotDetail;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getCallsign()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const/16 v12, 0x7e

    .line 41
    .line 42
    const/4 v13, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v8, 0x0

    .line 46
    const/4 v9, 0x0

    .line 47
    const/4 v10, 0x0

    .line 48
    const/4 v11, 0x0

    .line 49
    invoke-static/range {v5 .. v13}, Lkot/utils/model/ContactUtils;->contact$default(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lkot/utils/model/Contact;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Lkot/utils/model/ContactUtils;->toKotDetail(Lkot/utils/model/Contact;)Lkot/KotDetail;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 61
    .line 62
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getColor()Lcom/toughstump/atos/AtosColor;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/toughstump/atos/AtosColor;->getFriendlyName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, "color"

    .line 74
    .line 75
    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTrackType()Lcom/toughstump/atos/AtosTrackType;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/toughstump/atos/AtosTrackType;->getType()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v1, "tag_type"

    .line 87
    .line 88
    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    const-string v0, "manifest"

    .line 92
    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getManifestName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getAlarmEnabled()Ljava/lang/Boolean;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-static {v0}, Lcom/toughstump/atos/kot/AtosKotEventKt;->toInt(Z)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const-string v1, "alarm"

    .line 119
    .line 120
    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getCommandLinkId()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_3

    .line 128
    .line 129
    const-string v1, "commandlink"

    .line 130
    .line 131
    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTempDegC()Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    if-eqz v0, :cond_4

    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    const-string v1, "temp_c"

    .line 145
    .line 146
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getBatteryVoltage()Ljava/lang/Double;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    if-eqz v0, :cond_5

    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 160
    .line 161
    .line 162
    move-result-wide v0

    .line 163
    const-string v2, "voltage"

    .line 164
    .line 165
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/toughstump/atos/kot/AtosKotEvent$Companion;->getAtosChildren(Lcom/toughstump/atos/kot/AtosKotEvent;)Ljava/util/Collection;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    new-instance v0, Lkot/KotDetail;

    .line 177
    .line 178
    const/4 v10, 0x2

    .line 179
    const/4 v11, 0x0

    .line 180
    const-string v6, "__atos"

    .line 181
    .line 182
    const/4 v7, 0x0

    .line 183
    move-object v5, v0

    .line 184
    invoke-direct/range {v5 .. v11}, Lkot/KotDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Collection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 185
    .line 186
    .line 187
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    new-instance v0, Lkot/KotDetail;

    .line 191
    .line 192
    const/16 v17, 0xe

    .line 193
    .line 194
    const/16 v18, 0x0

    .line 195
    .line 196
    const-string v13, "archive"

    .line 197
    .line 198
    const/4 v14, 0x0

    .line 199
    const/4 v15, 0x0

    .line 200
    const/16 v16, 0x0

    .line 201
    .line 202
    move-object v12, v0

    .line 203
    invoke-direct/range {v12 .. v18}, Lkot/KotDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Collection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 204
    .line 205
    .line 206
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    new-instance v7, Lkot/KotDetail;

    .line 210
    .line 211
    const/4 v5, 0x7

    .line 212
    const/4 v6, 0x0

    .line 213
    const/4 v1, 0x0

    .line 214
    const/4 v2, 0x0

    .line 215
    const/4 v3, 0x0

    .line 216
    move-object v0, v7

    .line 217
    invoke-direct/range {v0 .. v6}, Lkot/KotDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Collection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 218
    .line 219
    .line 220
    return-object v7
.end method


# virtual methods
.method public final fromKotEvent(Lkot/KotEvent;)Lcom/toughstump/atos/kot/AtosKotEvent;
    .locals 26
    .param p1    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static/range {p1 .. p1}, Lcom/toughstump/atos/kot/AtosKotEventKt;->isAtosTrackEvent(Lkot/KotEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-object v2

    .line 16
    :cond_0
    invoke-interface/range {p1 .. p1}, Lkot/KotEvent;->getDetail()Lkot/KotDetail;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lkot/KotDetail;->getChildren()Ljava/util/Collection;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    move-object v4, v3

    .line 39
    check-cast v4, Lkot/KotDetail;

    .line 40
    .line 41
    invoke-virtual {v4}, Lkot/KotDetail;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const-string v5, "__atos"

    .line 46
    .line 47
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move-object v3, v2

    .line 55
    :goto_0
    check-cast v3, Lkot/KotDetail;

    .line 56
    .line 57
    if-nez v3, :cond_3

    .line 58
    .line 59
    return-object v2

    .line 60
    :cond_3
    sget-object v0, Lcom/toughstump/atos/kot/AtosUid;->Companion:Lcom/toughstump/atos/kot/AtosUid$Companion;

    .line 61
    .line 62
    invoke-interface/range {p1 .. p1}, Lkot/KotEvent;->getUid()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v0, v4}, Lcom/toughstump/atos/kot/AtosUid$Companion;->fromUidString(Ljava/lang/String;)Lcom/toughstump/atos/kot/AtosUid;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-nez v0, :cond_4

    .line 71
    .line 72
    return-object v2

    .line 73
    :cond_4
    invoke-virtual {v3}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    const-string v5, "tag_type"

    .line 78
    .line 79
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Ljava/lang/String;

    .line 84
    .line 85
    if-nez v4, :cond_5

    .line 86
    .line 87
    return-object v2

    .line 88
    :cond_5
    sget-object v5, Lcom/toughstump/atos/AtosTrackType;->Companion:Lcom/toughstump/atos/AtosTrackType$Companion;

    .line 89
    .line 90
    invoke-virtual {v5, v4}, Lcom/toughstump/atos/AtosTrackType$Companion;->get(Ljava/lang/String;)Lcom/toughstump/atos/AtosTrackType;

    .line 91
    .line 92
    .line 93
    move-result-object v12

    .line 94
    invoke-virtual {v3}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    const-string v5, "color"

    .line 99
    .line 100
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Ljava/lang/String;

    .line 105
    .line 106
    if-nez v4, :cond_6

    .line 107
    .line 108
    return-object v2

    .line 109
    :cond_6
    sget-object v5, Lcom/toughstump/atos/AtosColor;->Companion:Lcom/toughstump/atos/AtosColor$Companion;

    .line 110
    .line 111
    invoke-virtual {v5, v4}, Lcom/toughstump/atos/AtosColor$Companion;->get(Ljava/lang/String;)Lcom/toughstump/atos/AtosColor;

    .line 112
    .line 113
    .line 114
    move-result-object v11

    .line 115
    invoke-static/range {p1 .. p1}, Lkot/utils/KotUtils;->callsign(Lkot/KotEvent;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    move-object/from16 v15, p0

    .line 120
    .line 121
    invoke-direct {v15, v3}, Lcom/toughstump/atos/kot/AtosKotEvent$Companion;->getAttributesFromDetail(Lkot/KotDetail;)Ljava/util/Map;

    .line 122
    .line 123
    .line 124
    move-result-object v13

    .line 125
    if-nez v13, :cond_7

    .line 126
    .line 127
    return-object v2

    .line 128
    :cond_7
    const/4 v8, 0x4

    .line 129
    const/4 v9, 0x0

    .line 130
    const-string v5, "alarm"

    .line 131
    .line 132
    const/4 v6, 0x0

    .line 133
    const/4 v7, 0x0

    .line 134
    move-object v4, v3

    .line 135
    invoke-static/range {v4 .. v9}, Lkot/utils/KotUtils;->intAttributeOrDefault$default(Lkot/KotDetail;Ljava/lang/String;IIILjava/lang/Object;)I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    const/4 v5, 0x0

    .line 140
    const/4 v6, 0x1

    .line 141
    if-ne v4, v6, :cond_8

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_8
    move v6, v5

    .line 145
    :goto_1
    invoke-virtual {v3}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    const-string v7, "commandlink"

    .line 150
    .line 151
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    move-object/from16 v20, v4

    .line 156
    .line 157
    check-cast v20, Ljava/lang/String;

    .line 158
    .line 159
    const-string v4, "manifest"

    .line 160
    .line 161
    invoke-static {v3, v4}, Lkot/KotDetailKt;->get(Lkot/KotDetail;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    if-nez v4, :cond_9

    .line 166
    .line 167
    const-string v4, "legacy"

    .line 168
    .line 169
    :cond_9
    move-object v8, v4

    .line 170
    const-string v4, "temp_c"

    .line 171
    .line 172
    const/4 v7, 0x2

    .line 173
    invoke-static {v3, v4, v5, v7, v2}, Lkot/utils/KotUtils;->intAttributeOrNull$default(Lkot/KotDetail;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v22

    .line 177
    const-string v4, "voltage"

    .line 178
    .line 179
    invoke-static {v3, v4}, Lkot/utils/KotUtils;->doubleAttributeOrNull(Lkot/KotDetail;Ljava/lang/String;)Ljava/lang/Double;

    .line 180
    .line 181
    .line 182
    move-result-object v23

    .line 183
    new-instance v3, Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/toughstump/atos/kot/AtosUid;->getManifestUid()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    invoke-virtual {v0}, Lcom/toughstump/atos/kot/AtosUid;->getTagId()I

    .line 190
    .line 191
    .line 192
    move-result v9

    .line 193
    invoke-interface/range {p1 .. p1}, Lkot/KotEvent;->getTime()Lkot/KotTime;

    .line 194
    .line 195
    .line 196
    move-result-object v14

    .line 197
    invoke-interface/range {p1 .. p1}, Lkot/KotEvent;->getStale()Lkot/KotTime;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-interface/range {p1 .. p1}, Lkot/KotEvent;->getPoint()Lkot/KotPoint;

    .line 202
    .line 203
    .line 204
    move-result-object v16

    .line 205
    invoke-static/range {p1 .. p1}, Lkot/utils/KotUtils;->trackOrNull(Lkot/KotEvent;)Lkot/KotDetail;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    if-eqz v4, :cond_a

    .line 210
    .line 211
    invoke-static {v4}, Lkot/utils/model/TrackUtils;->toTrackOrNull(Lkot/KotDetail;)Lkot/utils/model/Track;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    move-object/from16 v17, v4

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_a
    move-object/from16 v17, v2

    .line 219
    .line 220
    :goto_2
    invoke-static/range {p1 .. p1}, Lkot/utils/KotUtils;->linkOrNull(Lkot/KotEvent;)Lkot/KotDetail;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    if-eqz v1, :cond_b

    .line 225
    .line 226
    invoke-static {v1}, Lkot/utils/model/LinkUtils;->toLinkOrNull(Lkot/KotDetail;)Lkot/utils/model/Link;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    :cond_b
    move-object/from16 v18, v2

    .line 231
    .line 232
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 233
    .line 234
    .line 235
    move-result-object v19

    .line 236
    const/16 v24, 0x4000

    .line 237
    .line 238
    const/16 v25, 0x0

    .line 239
    .line 240
    const/16 v21, 0x0

    .line 241
    .line 242
    move-object v6, v3

    .line 243
    move-object v15, v0

    .line 244
    invoke-direct/range {v6 .. v25}, Lcom/toughstump/atos/kot/AtosKotEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/toughstump/atos/AtosColor;Lcom/toughstump/atos/AtosTrackType;Ljava/util/Map;Lkot/KotTime;Lkot/KotTime;Lkot/KotPoint;Lkot/utils/model/Track;Lkot/utils/model/Link;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 245
    .line 246
    .line 247
    return-object v3
.end method

.method public final toKot(Lcom/toughstump/atos/kot/AtosKotEvent;)Lkot/KotEvent;
    .locals 16
    .param p1    # Lcom/toughstump/atos/kot/AtosKotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lkot/KotType;

    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTrackType()Lcom/toughstump/atos/AtosTrackType;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/toughstump/atos/AtosTrackType;->getCotType()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/4 v6, 0x6

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    move-object v2, v0

    .line 23
    invoke-direct/range {v2 .. v7}, Lkot/KotType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    .line 25
    .line 26
    invoke-direct/range {p0 .. p1}, Lcom/toughstump/atos/kot/AtosKotEvent$Companion;->getDetail(Lcom/toughstump/atos/kot/AtosKotEvent;)Lkot/KotDetail;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    new-instance v15, Lkot/BasicKotEvent;

    .line 31
    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getPoint()Lkot/KotPoint;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getUid()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-static {}, Lkot/HowKt;->getGps()Lkot/How;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTime()Lkot/KotTime;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTime()Lkot/KotTime;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getStale()Lkot/KotTime;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    const/16 v13, 0x700

    .line 57
    .line 58
    const/4 v14, 0x0

    .line 59
    const/4 v10, 0x0

    .line 60
    const/4 v11, 0x0

    .line 61
    const/4 v12, 0x0

    .line 62
    move-object v1, v15

    .line 63
    invoke-direct/range {v1 .. v14}, Lkot/BasicKotEvent;-><init>(Lkot/KotType;Lkot/KotPoint;Lkot/KotDetail;Ljava/lang/String;Lkot/How;Lkot/KotTime;Lkot/KotTime;Lkot/KotTime;Ljava/lang/String;Lkot/Qos;Lkot/Opex;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 64
    .line 65
    .line 66
    return-object v15
.end method
