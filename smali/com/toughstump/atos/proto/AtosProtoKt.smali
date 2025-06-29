.class public final Lcom/toughstump/atos/proto/AtosProtoKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtosProto.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosProto.kt\ncom/toughstump/atos/proto/AtosProtoKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,124:1\n1#2:125\n*E\n"
.end annotation


# direct methods
.method public static final toAtosKotEvent(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)Lcom/toughstump/atos/kot/AtosKotEvent;
    .locals 25
    .param p0    # Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->hasBatteryVoltage()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getBatteryVoltage()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    float-to-double v3, v0

    .line 20
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    move-object/from16 v20, v0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object/from16 v20, v2

    .line 28
    .line 29
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->hasTempDegC()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getTempDegC()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    :cond_1
    move-object/from16 v19, v2

    .line 44
    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getManifestUid()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    move-object v4, v0

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getManifestName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    move-object v5, v2

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getTagId()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getCallsign()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    move-object v7, v3

    .line 64
    invoke-static {}, Lcom/toughstump/atos/AtosColor;->values()[Lcom/toughstump/atos/AtosColor;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getAtosColor()I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    aget-object v8, v8, v9

    .line 73
    .line 74
    invoke-static {}, Lcom/toughstump/atos/AtosTrackType;->values()[Lcom/toughstump/atos/AtosTrackType;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getAtosType()I

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    aget-object v9, v9, v10

    .line 83
    .line 84
    sget-object v10, Lkot/KotTime;->Companion:Lkot/KotTime$Companion;

    .line 85
    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v11

    .line 90
    invoke-virtual {v10, v11, v12}, Lkot/KotTime$Companion;->of(J)Lkot/KotTime;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getStaleMillis()J

    .line 95
    .line 96
    .line 97
    move-result-wide v12

    .line 98
    invoke-virtual {v10, v12, v13}, Lkot/KotTime$Companion;->of(J)Lkot/KotTime;

    .line 99
    .line 100
    .line 101
    move-result-object v12

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getPoint()Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    const-string v13, "point"

    .line 107
    .line 108
    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v10}, Lcom/toughstump/atos/proto/AtosProtoKt;->toKotPoint(Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;)Lkot/KotPoint;

    .line 112
    .line 113
    .line 114
    move-result-object v13

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getAlarmActive()Z

    .line 116
    .line 117
    .line 118
    move-result v16

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getLink()Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    const-string v14, "link"

    .line 124
    .line 125
    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v10}, Lcom/toughstump/atos/proto/AtosProtoKt;->toKotLink(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;)Lkot/utils/model/Link;

    .line 129
    .line 130
    .line 131
    move-result-object v15

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getTrack()Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    const-string v14, "track"

    .line 137
    .line 138
    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-static {v10}, Lcom/toughstump/atos/proto/AtosProtoKt;->toKotTrack(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;)Lkot/utils/model/Track;

    .line 142
    .line 143
    .line 144
    move-result-object v14

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getTagAttributesMap()Ljava/util/Map;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    move-object v10, v1

    .line 150
    new-instance v23, Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 151
    .line 152
    move-object/from16 v24, v4

    .line 153
    .line 154
    move-object v4, v3

    .line 155
    move-object/from16 v3, v23

    .line 156
    .line 157
    move-object/from16 p0, v3

    .line 158
    .line 159
    const-string v3, "manifestUid"

    .line 160
    .line 161
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-string v0, "manifestName"

    .line 165
    .line 166
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const-string v0, "callsign"

    .line 170
    .line 171
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const-string v0, "tagAttributesMap"

    .line 175
    .line 176
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 180
    .line 181
    .line 182
    move-result-object v16

    .line 183
    const/16 v21, 0x6000

    .line 184
    .line 185
    const/16 v22, 0x0

    .line 186
    .line 187
    const/16 v17, 0x0

    .line 188
    .line 189
    const/16 v18, 0x0

    .line 190
    .line 191
    move-object/from16 v3, p0

    .line 192
    .line 193
    move-object/from16 v4, v24

    .line 194
    .line 195
    invoke-direct/range {v3 .. v22}, Lcom/toughstump/atos/kot/AtosKotEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/toughstump/atos/AtosColor;Lcom/toughstump/atos/AtosTrackType;Ljava/util/Map;Lkot/KotTime;Lkot/KotTime;Lkot/KotPoint;Lkot/utils/model/Track;Lkot/utils/model/Link;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 196
    .line 197
    .line 198
    return-object v23
.end method

.method private static final toKotLink(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;)Lkot/utils/model/Link;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->getRelation()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "relation"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->getUid()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "uid"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lkot/KotType;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->getType()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const-string p0, "type"

    .line 26
    .line 27
    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v7, 0x6

    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    move-object v3, v2

    .line 35
    invoke-direct/range {v3 .. v8}, Lkot/KotType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36
    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-static/range {v0 .. v5}, Lkot/utils/model/LinkUtils;->link(Ljava/lang/String;Ljava/lang/String;Lkot/KotType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkot/utils/model/Link;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method private static final toKotPoint(Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;)Lkot/KotPoint;
    .locals 12

    .line 1
    new-instance v11, Lkot/KotPoint;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;->getLat()D

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {p0}, Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;->getLon()D

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    invoke-virtual {p0}, Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;->getHae()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    float-to-double v5, v0

    .line 16
    invoke-virtual {p0}, Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;->getCe()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    float-to-double v7, v0

    .line 21
    invoke-virtual {p0}, Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;->getLe()F

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    float-to-double v9, p0

    .line 26
    move-object v0, v11

    .line 27
    invoke-direct/range {v0 .. v10}, Lkot/KotPoint;-><init>(DDDDD)V

    .line 28
    .line 29
    .line 30
    return-object v11
.end method

.method private static final toKotTrack(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;)Lkot/utils/model/Track;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->hasVerticalSpeedMps()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->getVerticalSpeedMps()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    float-to-double v0, v0

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    move-object v7, v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_0

    .line 20
    :goto_1
    invoke-virtual {p0}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->getCourse()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    float-to-double v1, v0

    .line 25
    invoke-virtual {p0}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->getSpeed()F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    float-to-double v3, v0

    .line 30
    invoke-virtual {p0}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->getSlope()F

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    float-to-double v5, p0

    .line 35
    invoke-static/range {v1 .. v7}, Lkot/utils/model/TrackUtils;->track(DDDLjava/lang/Double;)Lkot/utils/model/Track;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public static final toProto(Lcom/toughstump/atos/kot/AtosKotEvent;Z)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;
    .locals 3
    .param p0    # Lcom/toughstump/atos/kot/AtosKotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->newBuilder()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getManifestUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;->setManifestUid(Ljava/lang/String;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;

    .line 3
    invoke-virtual {p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getManifestName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;->setManifestName(Ljava/lang/String;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;

    .line 4
    invoke-virtual {p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTagId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;->setTagId(I)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;

    .line 5
    invoke-virtual {p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getCallsign()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;->setCallsign(Ljava/lang/String;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;

    .line 6
    invoke-virtual {p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getColor()Lcom/toughstump/atos/AtosColor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;->setAtosColor(I)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;

    .line 7
    invoke-virtual {p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTrackType()Lcom/toughstump/atos/AtosTrackType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;->setAtosType(I)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;

    .line 8
    invoke-virtual {p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTime()Lkot/KotTime;

    move-result-object v1

    invoke-virtual {v1}, Lkot/KotTime;->getMilliseconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;->setTimeMillis(J)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;

    .line 9
    invoke-virtual {p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getStale()Lkot/KotTime;

    move-result-object v1

    invoke-virtual {v1}, Lkot/KotTime;->getMilliseconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;->setStaleMillis(J)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;

    .line 10
    invoke-virtual {p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getPoint()Lkot/KotPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/toughstump/atos/proto/AtosProtoKt;->toProto(Lkot/KotPoint;)Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;->setPoint(Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;

    .line 11
    invoke-virtual {p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getAlarmEnabled()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;->setAlarmActive(Z)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;

    .line 12
    invoke-virtual {p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getLink()Lkot/utils/model/Link;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/toughstump/atos/proto/AtosProtoKt;->toProto(Lkot/utils/model/Link;)Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;->setLink(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTrack()Lkot/utils/model/Track;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/toughstump/atos/proto/AtosProtoKt;->toProto(Lkot/utils/model/Track;)Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;->setTrack(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;

    :cond_1
    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;->putAllTagAttributes(Ljava/util/Map;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getBatteryVoltage()Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    double-to-float p1, v1

    invoke-virtual {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;->setBatteryVoltage(F)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;

    .line 16
    :cond_3
    invoke-virtual {p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTempDegC()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;->setTempDegC(I)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;

    .line 17
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    return-object p0
.end method

.method private static final toProto(Lkot/utils/model/Link;)Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;
    .locals 2

    .line 24
    invoke-static {}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->newBuilder()Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lkot/utils/model/Link;->getRelation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;->setRelation(Ljava/lang/String;)Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;

    .line 26
    invoke-virtual {p0}, Lkot/utils/model/Link;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;->setUid(Ljava/lang/String;)Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;

    .line 27
    invoke-virtual {p0}, Lkot/utils/model/Link;->getType()Lkot/KotType;

    move-result-object p0

    invoke-virtual {p0}, Lkot/KotType;->getCot()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;->setType(Ljava/lang/String;)Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;

    .line 28
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    return-object p0
.end method

.method private static final toProto(Lkot/KotPoint;)Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;
    .locals 3

    .line 29
    invoke-static {}, Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;->newBuilder()Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lkot/KotPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto$Builder;->setLat(D)Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto$Builder;

    .line 31
    invoke-virtual {p0}, Lkot/KotPoint;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto$Builder;->setLon(D)Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto$Builder;

    .line 32
    invoke-virtual {p0}, Lkot/KotPoint;->getAltitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto$Builder;->setHae(F)Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto$Builder;

    .line 33
    invoke-virtual {p0}, Lkot/KotPoint;->getCircularError()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto$Builder;->setCe(F)Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto$Builder;

    .line 34
    invoke-virtual {p0}, Lkot/KotPoint;->getLinearError()D

    move-result-wide v1

    double-to-float p0, v1

    invoke-virtual {v0, p0}, Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto$Builder;->setLe(F)Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto$Builder;

    .line 35
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;

    return-object p0
.end method

.method private static final toProto(Lkot/utils/model/Track;)Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;
    .locals 3

    .line 18
    invoke-static {}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->newBuilder()Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;

    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lkot/utils/model/Track;->getCourse()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;->setCourse(F)Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;

    .line 20
    invoke-virtual {p0}, Lkot/utils/model/Track;->getSpeed()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;->setSpeed(F)Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;

    .line 21
    invoke-virtual {p0}, Lkot/utils/model/Track;->getSlope()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;->setSlope(F)Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;

    .line 22
    invoke-virtual {p0}, Lkot/utils/model/Track;->getVerticalSpeed()Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    double-to-float p0, v1

    invoke-virtual {v0, p0}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;->setVerticalSpeedMps(F)Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;

    .line 23
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    return-object p0
.end method

.method public static synthetic toProto$default(Lcom/toughstump/atos/kot/AtosKotEvent;ZILjava/lang/Object;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1}, Lcom/toughstump/atos/proto/AtosProtoKt;->toProto(Lcom/toughstump/atos/kot/AtosKotEvent;Z)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
