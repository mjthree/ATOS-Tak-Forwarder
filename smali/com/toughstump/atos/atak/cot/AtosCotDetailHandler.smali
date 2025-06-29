.class public final Lcom/toughstump/atos/atak/cot/AtosCotDetailHandler;
.super Latak/core/an;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/atak/cot/AtosCotDetailHandler$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/atak/cot/AtosCotDetailHandler$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "AtosCotDetailHandler"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/atak/cot/AtosCotDetailHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/atak/cot/AtosCotDetailHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/atak/cot/AtosCotDetailHandler;->Companion:Lcom/toughstump/atos/atak/cot/AtosCotDetailHandler$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "__atos"

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Latak/core/an;-><init>(Ljava/util/Set;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/atakmap/android/maps/am;Lcom/atakmap/coremap/cot/event/CotEvent;Lcom/atakmap/coremap/cot/event/CotDetail;)Z
    .locals 3
    .param p1    # Lcom/atakmap/android/maps/am;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/atakmap/coremap/cot/event/CotEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/atakmap/coremap/cot/event/CotDetail;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p3, "AtosCotDetailHandler"

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "__atos"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/atakmap/android/maps/am;->hasMetaValue(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    const-string v1, ""

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/atakmap/android/maps/am;->getMetaString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :try_start_0
    invoke-static {p1}, Lcom/atakmap/coremap/cot/event/CotEvent;->parse(Ljava/lang/String;)Lcom/atakmap/coremap/cot/event/CotEvent;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, v0}, Lcom/atakmap/coremap/cot/event/CotEvent;->findDetail(Ljava/lang/String;)Lcom/atakmap/coremap/cot/event/CotDetail;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v0, "Couldn\'t get Atos detail from xml "

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return v2

    .line 53
    :cond_1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/atakmap/coremap/cot/event/CotEvent;->getDetail()Lcom/atakmap/coremap/cot/event/CotDetail;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1, v0}, Lcom/atakmap/coremap/cot/event/CotDetail;->addChild(Lcom/atakmap/coremap/cot/event/CotDetail;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/atakmap/coremap/cot/event/CotEvent;->getTime()Lcom/atakmap/coremap/maps/time/CoordinatedTime;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const/4 p3, 0x5

    .line 68
    invoke-virtual {p1, p3}, Lcom/atakmap/coremap/maps/time/CoordinatedTime;->addMinutes(I)Lcom/atakmap/coremap/maps/time/CoordinatedTime;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p2, p1}, Lcom/atakmap/coremap/cot/event/CotEvent;->setStale(Lcom/atakmap/coremap/maps/time/CoordinatedTime;)V

    .line 73
    .line 74
    .line 75
    const/4 p1, 0x1

    .line 76
    return p1

    .line 77
    :catch_0
    move-exception p1

    .line 78
    invoke-static {p1}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    return v2
.end method

.method public b(Lcom/atakmap/android/maps/am;Lcom/atakmap/coremap/cot/event/CotEvent;Lcom/atakmap/coremap/cot/event/CotDetail;)Lcom/atakmap/comms/CommsMapComponent$d;
    .locals 23
    .param p1    # Lcom/atakmap/android/maps/am;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/atakmap/coremap/cot/event/CotEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/atakmap/coremap/cot/event/CotDetail;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-virtual/range {p3 .. p3}, Lcom/atakmap/coremap/cot/event/CotDetail;->getElementName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-eqz v1, :cond_4

    .line 12
    .line 13
    const-string v2, "__atos"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_4

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v2, v1}, Lcom/atakmap/android/maps/am;->setMetaString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v1, Lkot/KotEvent;->Companion:Lkot/KotEvent$Companion;

    .line 32
    .line 33
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v1, v2}, Lkot/xml/KotXml;->parse(Lkot/KotEvent$Companion;Ljava/lang/String;)Lkot/KotEvent;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sget-object v2, Lcom/toughstump/atos/kot/AtosKotEvent;->Companion:Lcom/toughstump/atos/kot/AtosKotEvent$Companion;

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Lcom/toughstump/atos/kot/AtosKotEvent$Companion;->fromKotEvent(Lkot/KotEvent;)Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    sget-object v0, Lcom/atakmap/comms/CommsMapComponent$d;->c:Lcom/atakmap/comms/CommsMapComponent$d;

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_2
    const v21, 0x1bfff

    .line 53
    .line 54
    .line 55
    const/16 v22, 0x0

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    const/4 v8, 0x0

    .line 62
    const/4 v9, 0x0

    .line 63
    const/4 v10, 0x0

    .line 64
    const/4 v11, 0x0

    .line 65
    const/4 v12, 0x0

    .line 66
    const/4 v13, 0x0

    .line 67
    const/4 v14, 0x0

    .line 68
    const/4 v15, 0x0

    .line 69
    const/16 v16, 0x0

    .line 70
    .line 71
    const/16 v17, 0x0

    .line 72
    .line 73
    const-string v18, "atak"

    .line 74
    .line 75
    const/16 v19, 0x0

    .line 76
    .line 77
    const/16 v20, 0x0

    .line 78
    .line 79
    invoke-static/range {v3 .. v22}, Lcom/toughstump/atos/kot/AtosKotEvent;->copy$default(Lcom/toughstump/atos/kot/AtosKotEvent;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/toughstump/atos/AtosColor;Lcom/toughstump/atos/AtosTrackType;Ljava/util/Map;Lkot/KotTime;Lkot/KotTime;Lkot/KotPoint;Lkot/utils/model/Track;Lkot/utils/model/Link;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;ILjava/lang/Object;)Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v3, "ATOS EVENT "

    .line 89
    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTagId()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const/16 v3, 0x20

    .line 101
    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getUid()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    const-string v3, "AtosCotDetailHandler"

    .line 117
    .line 118
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    sget-object v2, Lcom/toughstump/atos/track/AtosKotEventAggregator;->INSTANCE:Lcom/toughstump/atos/track/AtosKotEventAggregator;

    .line 122
    .line 123
    invoke-virtual {v2, v1}, Lcom/toughstump/atos/track/AtosKotEventAggregator;->updateKotEvent(Lcom/toughstump/atos/kot/AtosKotEvent;)V

    .line 124
    .line 125
    .line 126
    instance-of v1, v0, Lcom/atakmap/android/maps/ar;

    .line 127
    .line 128
    if-eqz v1, :cond_3

    .line 129
    .line 130
    sget-object v1, Lcom/toughstump/atos/atak/map/MapItemTailor;->INSTANCE:Lcom/toughstump/atos/atak/map/MapItemTailor;

    .line 131
    .line 132
    check-cast v0, Lcom/atakmap/android/maps/ar;

    .line 133
    .line 134
    invoke-virtual {v1, v0}, Lcom/toughstump/atos/atak/map/MapItemTailor;->addMarker(Lcom/atakmap/android/maps/ar;)V

    .line 135
    .line 136
    .line 137
    :cond_3
    sget-object v0, Lcom/atakmap/comms/CommsMapComponent$d;->a:Lcom/atakmap/comms/CommsMapComponent$d;

    .line 138
    .line 139
    return-object v0

    .line 140
    :cond_4
    :goto_1
    sget-object v0, Lcom/atakmap/comms/CommsMapComponent$d;->c:Lcom/atakmap/comms/CommsMapComponent$d;

    .line 141
    .line 142
    return-object v0
.end method
