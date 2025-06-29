.class public final Lcom/toughstump/atos/record/db/IAtosTrackRecordingDatabaseKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final toTrackRecord(Lcom/toughstump/atos/kot/AtosKotEvent;)Lcom/toughstump/atos/record/db/TrackRecord;
    .locals 21
    .param p0    # Lcom/toughstump/atos/kot/AtosKotEvent;
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
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTrackType()Lcom/toughstump/atos/AtosTrackType;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/toughstump/atos/AtosTrackType;->getCotType()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTime()Lkot/KotTime;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lkot/KotTime;->getMilliseconds()J

    .line 21
    .line 22
    .line 23
    move-result-wide v7

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getColor()Lcom/toughstump/atos/AtosColor;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTrack()Lkot/utils/model/Track;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0}, Lkot/utils/model/Track;->getCourse()D

    .line 41
    .line 42
    .line 43
    move-result-wide v9

    .line 44
    move-wide v11, v9

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move-wide v11, v2

    .line 47
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTrack()Lkot/utils/model/Track;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0}, Lkot/utils/model/Track;->getSpeed()D

    .line 54
    .line 55
    .line 56
    move-result-wide v9

    .line 57
    move-wide v13, v9

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move-wide v13, v2

    .line 60
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTrack()Lkot/utils/model/Track;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    invoke-virtual {v0}, Lkot/utils/model/Track;->getVerticalSpeed()Ljava/lang/Double;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 73
    .line 74
    .line 75
    move-result-wide v9

    .line 76
    move-wide v15, v9

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    move-wide v15, v2

    .line 79
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTempDegC()Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    int-to-double v2, v0

    .line 90
    :cond_3
    move-wide/from16 v17, v2

    .line 91
    .line 92
    new-instance v0, Lcom/toughstump/atos/record/db/TrackRecord;

    .line 93
    .line 94
    move-object v2, v0

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getUid()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getCallsign()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTagId()I

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getPoint()Lkot/KotPoint;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getManifestName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    move-object/from16 v20, v0

    .line 116
    .line 117
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 118
    .line 119
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    move-object/from16 v19, v0

    .line 124
    .line 125
    const-string v1, "this as java.lang.String).getBytes(charset)"

    .line 126
    .line 127
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-direct/range {v2 .. v19}, Lcom/toughstump/atos/record/db/TrackRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILkot/KotPoint;DDDD[B)V

    .line 131
    .line 132
    .line 133
    return-object v20
.end method
