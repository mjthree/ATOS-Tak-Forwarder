.class public final Lcom/toughstump/atos/AtosPacketAggregator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtosPacketAggregator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosPacketAggregator.kt\ncom/toughstump/atos/AtosPacketAggregator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,238:1\n1849#2,2:239\n1849#2,2:241\n*S KotlinDebug\n*F\n+ 1 AtosPacketAggregator.kt\ncom/toughstump/atos/AtosPacketAggregator\n*L\n103#1:239,2\n111#1:241,2\n*E\n"
.end annotation


# static fields
.field private static final BATTERY_TAG_ID:I = -0x1

.field private static final DEFAULT_CE:D = 10.0

.field private static final DEFAULT_HOST_TYPE:Lkot/KotType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEFAULT_LE:D = 20.0

.field public static final INSTANCE:Lcom/toughstump/atos/AtosPacketAggregator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KMPH_TO_MPS:D = 0.2777777777777778

.field private static final PDOP_HORIZONTAL_M:D = 1.3

.field private static final PDOP_VERTICAL_M:D = 2.0

.field private static final RELATION:Ljava/lang/String; = "p-p"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final atosKotEventReceived:Lcom/toughstump/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/event/Event<",
            "Lcom/toughstump/atos/kot/AtosKotEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final commandLinkStatusReceived:Lcom/toughstump/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/event/Event<",
            "Lcom/toughstump/atos/CommandLinkStatus;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static currentManifest:Lcom/toughstump/atos/manifest/AtosManifest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static deviceHostType:Lkot/KotType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static deviceHostUid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static elevationManager:Lcom/toughstump/atos/elev/IAtosElevationManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final kotEventMutableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/toughstump/atos/kot/AtosKotEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static linkDetail:Lkot/utils/model/Link;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static manifestRepo:Lcom/toughstump/atos/manifest/AtosManifestRepository;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/toughstump/atos/AtosPacketAggregator;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/toughstump/atos/AtosPacketAggregator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/toughstump/atos/AtosPacketAggregator;->INSTANCE:Lcom/toughstump/atos/AtosPacketAggregator;

    .line 7
    .line 8
    new-instance v7, Lkot/KotType;

    .line 9
    .line 10
    const/4 v5, 0x6

    .line 11
    const/4 v6, 0x0

    .line 12
    const-string v2, "a-f-G-U-C"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    move-object v1, v7

    .line 17
    invoke-direct/range {v1 .. v6}, Lkot/KotType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    .line 19
    .line 20
    sput-object v7, Lcom/toughstump/atos/AtosPacketAggregator;->DEFAULT_HOST_TYPE:Lkot/KotType;

    .line 21
    .line 22
    new-instance v1, Lcom/toughstump/event/Event;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/toughstump/event/Event;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lcom/toughstump/atos/AtosPacketAggregator;->atosKotEventReceived:Lcom/toughstump/event/Event;

    .line 28
    .line 29
    new-instance v1, Lcom/toughstump/event/Event;

    .line 30
    .line 31
    invoke-direct {v1}, Lcom/toughstump/event/Event;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v1, Lcom/toughstump/atos/AtosPacketAggregator;->commandLinkStatusReceived:Lcom/toughstump/event/Event;

    .line 35
    .line 36
    const-string v2, ""

    .line 37
    .line 38
    sput-object v2, Lcom/toughstump/atos/AtosPacketAggregator;->deviceHostUid:Ljava/lang/String;

    .line 39
    .line 40
    sput-object v7, Lcom/toughstump/atos/AtosPacketAggregator;->deviceHostType:Lkot/KotType;

    .line 41
    .line 42
    const/16 v9, 0xf8

    .line 43
    .line 44
    const/4 v10, 0x0

    .line 45
    const-string v1, "p-p"

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v11, 0x0

    .line 50
    move-object v3, v7

    .line 51
    move-object v7, v8

    .line 52
    move-object v8, v11

    .line 53
    invoke-static/range {v1 .. v10}, Lkot/utils/model/LinkUtils;->link$default(Ljava/lang/String;Ljava/lang/String;Lkot/KotType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkot/KotTime;ILjava/lang/Object;)Lkot/utils/model/Link;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    sput-object v1, Lcom/toughstump/atos/AtosPacketAggregator;->linkDetail:Lkot/utils/model/Link;

    .line 58
    .line 59
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 62
    .line 63
    .line 64
    sput-object v1, Lcom/toughstump/atos/AtosPacketAggregator;->kotEventMutableMap:Ljava/util/Map;

    .line 65
    .line 66
    sget-object v1, Lcom/toughstump/atos/CommandLinkPacketHandler;->INSTANCE:Lcom/toughstump/atos/CommandLinkPacketHandler;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/toughstump/atos/CommandLinkPacketHandler;->getDataPacketReceivedEventHandler()Lcom/toughstump/event/Event;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-instance v2, Lcom/toughstump/atos/AtosPacketAggregator$1;

    .line 73
    .line 74
    invoke-direct {v2, v0}, Lcom/toughstump/atos/AtosPacketAggregator$1;-><init>(Lcom/toughstump/atos/AtosPacketAggregator;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onDataPacketReceived(Lcom/toughstump/atos/AtosPacketAggregator;Ljava/lang/Object;Lcom/marshallradio/gpstracking/DataPacketModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/AtosPacketAggregator;->onDataPacketReceived(Ljava/lang/Object;Lcom/marshallradio/gpstracking/DataPacketModel;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onManifestTagUpdated(Lcom/toughstump/atos/AtosPacketAggregator;Ljava/lang/Object;Lcom/toughstump/atos/manifest/AtosManifestRepository$ManifestUpdateArgs;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/AtosPacketAggregator;->onManifestTagUpdated(Ljava/lang/Object;Lcom/toughstump/atos/manifest/AtosManifestRepository$ManifestUpdateArgs;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onManifestUpdated(Lcom/toughstump/atos/AtosPacketAggregator;Ljava/lang/Object;Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/AtosPacketAggregator;->onManifestUpdated(Ljava/lang/Object;Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final ensureActiveTagsOnManifest(Lcom/toughstump/atos/manifest/AtosManifest;)Lcom/toughstump/atos/manifest/AtosManifest;
    .locals 9

    .line 1
    sget-object v0, Lcom/toughstump/atos/AtosPacketAggregator;->kotEventMutableMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    move-object v1, p1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Number;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifest;->getTags()Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_0

    .line 45
    .line 46
    sget-object v1, Lcom/toughstump/atos/AtosPacketAggregator;->manifestRepo:Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    sget-object v3, Lcom/toughstump/atos/manifest/AtosManifestTag;->Companion:Lcom/toughstump/atos/manifest/AtosManifestTag$Companion;

    .line 51
    .line 52
    const/4 v7, 0x6

    .line 53
    const/4 v8, 0x0

    .line 54
    const/4 v5, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    move v4, v2

    .line 57
    invoke-static/range {v3 .. v8}, Lcom/toughstump/atos/manifest/AtosManifestTag$Companion;->newDefaultManifestTag$default(Lcom/toughstump/atos/manifest/AtosManifestTag$Companion;ILcom/toughstump/atos/AtosTrackType;Lcom/toughstump/atos/AtosColor;ILjava/lang/Object;)Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const/4 v4, 0x2

    .line 62
    const/4 v6, 0x0

    .line 63
    invoke-static {v1, v3, v6, v4, v5}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->updateTag$default(Lcom/toughstump/atos/manifest/AtosManifestRepository;Lcom/toughstump/atos/manifest/AtosManifestTag;ZILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    sget-object v1, Lcom/toughstump/atos/manifest/AtosManifest;->Companion:Lcom/toughstump/atos/manifest/AtosManifest$Companion;

    .line 67
    .line 68
    sget-object v3, Lcom/toughstump/atos/manifest/AtosManifestTag;->Companion:Lcom/toughstump/atos/manifest/AtosManifestTag$Companion;

    .line 69
    .line 70
    const/4 v7, 0x6

    .line 71
    const/4 v8, 0x0

    .line 72
    const/4 v5, 0x0

    .line 73
    const/4 v6, 0x0

    .line 74
    move v4, v2

    .line 75
    invoke-static/range {v3 .. v8}, Lcom/toughstump/atos/manifest/AtosManifestTag$Companion;->newDefaultManifestTag$default(Lcom/toughstump/atos/manifest/AtosManifestTag$Companion;ILcom/toughstump/atos/AtosTrackType;Lcom/toughstump/atos/AtosColor;ILjava/lang/Object;)Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v1, p1, v2}, Lcom/toughstump/atos/manifest/AtosManifest$Companion;->updateTag(Lcom/toughstump/atos/manifest/AtosManifest;Lcom/toughstump/atos/manifest/AtosManifestTag;)Lcom/toughstump/atos/manifest/AtosManifest;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    return-object v1
.end method

.method private final getPoint(Lcom/marshallradio/gpstracking/DataPacketModel;)Lkot/KotPoint;
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-object v1, v0, Lcom/marshallradio/gpstracking/DataPacketModel;->coordinate:Lcom/marshallradio/gpstracking/Coordinate;

    .line 4
    .line 5
    iget-wide v9, v1, Lcom/marshallradio/gpstracking/Coordinate;->latitude:D

    .line 6
    .line 7
    iget-wide v11, v1, Lcom/marshallradio/gpstracking/Coordinate;->longitude:D

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/marshallradio/gpstracking/DataPacketModel;->getAltitudeMSL()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-double v13, v1

    .line 14
    iget-wide v0, v0, Lcom/marshallradio/gpstracking/DataPacketModel;->scaledPDOP:D

    .line 15
    .line 16
    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    mul-double v15, v0, v2

    .line 22
    .line 23
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 24
    .line 25
    mul-double/2addr v0, v2

    .line 26
    sget-object v2, Lcom/toughstump/atos/AtosPacketAggregator;->elevationManager:Lcom/toughstump/atos/elev/IAtosElevationManager;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    move-wide v3, v9

    .line 31
    move-wide v5, v11

    .line 32
    move-wide v7, v13

    .line 33
    invoke-interface/range {v2 .. v8}, Lcom/toughstump/atos/elev/IAtosElevationManager;->getElevationHaeM(DDD)Ljava/lang/Double;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 40
    .line 41
    .line 42
    move-result-wide v7

    .line 43
    new-instance v13, Lkot/KotPoint;

    .line 44
    .line 45
    move-object v2, v13

    .line 46
    move-wide v3, v9

    .line 47
    move-wide v5, v11

    .line 48
    move-wide v9, v15

    .line 49
    move-wide v11, v0

    .line 50
    invoke-direct/range {v2 .. v12}, Lkot/KotPoint;-><init>(DDDDD)V

    .line 51
    .line 52
    .line 53
    return-object v13

    .line 54
    :cond_0
    new-instance v17, Lkot/KotPoint;

    .line 55
    .line 56
    move-object/from16 v2, v17

    .line 57
    .line 58
    move-wide v3, v9

    .line 59
    move-wide v5, v11

    .line 60
    move-wide v7, v13

    .line 61
    move-wide v9, v15

    .line 62
    move-wide v11, v0

    .line 63
    invoke-direct/range {v2 .. v12}, Lkot/KotPoint;-><init>(DDDDD)V

    .line 64
    .line 65
    .line 66
    return-object v17
.end method

.method private final getTrack(Lcom/marshallradio/gpstracking/DataPacketModel;)Lkot/utils/model/Track;
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget v1, v0, Lcom/marshallradio/gpstracking/DataPacketModel;->velEast:I

    .line 4
    .line 5
    int-to-double v1, v1

    .line 6
    iget v3, v0, Lcom/marshallradio/gpstracking/DataPacketModel;->velNorth:I

    .line 7
    .line 8
    int-to-double v3, v3

    .line 9
    iget v0, v0, Lcom/marshallradio/gpstracking/DataPacketModel;->velDown:I

    .line 10
    .line 11
    int-to-double v5, v0

    .line 12
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    .line 13
    .line 14
    .line 15
    move-result-wide v7

    .line 16
    const-wide v9, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    mul-double/2addr v7, v9

    .line 22
    const-wide/16 v9, 0x0

    .line 23
    .line 24
    cmpg-double v0, v7, v9

    .line 25
    .line 26
    if-gez v0, :cond_0

    .line 27
    .line 28
    const-wide v9, 0x4076800000000000L    # 360.0

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    add-double/2addr v7, v9

    .line 34
    :cond_0
    move-wide v9, v7

    .line 35
    mul-double/2addr v1, v1

    .line 36
    mul-double/2addr v3, v3

    .line 37
    add-double/2addr v1, v3

    .line 38
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    const-wide v2, 0x3fd1c71c71c71c72L    # 0.2777777777777778

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    mul-double v11, v0, v2

    .line 48
    .line 49
    mul-double/2addr v5, v2

    .line 50
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 51
    .line 52
    .line 53
    move-result-object v15

    .line 54
    const/16 v16, 0x4

    .line 55
    .line 56
    const/16 v17, 0x0

    .line 57
    .line 58
    const-wide/16 v13, 0x0

    .line 59
    .line 60
    invoke-static/range {v9 .. v17}, Lkot/utils/model/TrackUtils;->track$default(DDDLjava/lang/Double;ILjava/lang/Object;)Lkot/utils/model/Track;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0
.end method

.method private final onDataPacketReceived(Ljava/lang/Object;Lcom/marshallradio/gpstracking/DataPacketModel;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/marshallradio/gpstracking/DataPacketModel;->getTagID()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p2}, Lcom/toughstump/atos/AtosPacketAggregator;->processBatteryUpdate(Lcom/marshallradio/gpstracking/DataPacketModel;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p2}, Lcom/toughstump/atos/AtosPacketAggregator;->processTagUpdate(Lcom/marshallradio/gpstracking/DataPacketModel;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method private final onManifestTagUpdated(Ljava/lang/Object;Lcom/toughstump/atos/manifest/AtosManifestRepository$ManifestUpdateArgs;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/toughstump/atos/manifest/AtosManifestRepository$ManifestUpdateArgs;->getManifest()Lcom/toughstump/atos/manifest/AtosManifest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sput-object p1, Lcom/toughstump/atos/AtosPacketAggregator;->currentManifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/toughstump/atos/manifest/AtosManifestRepository$ManifestUpdateArgs;->getTag()Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lcom/toughstump/atos/AtosPacketAggregator;->updateTagData(Lcom/toughstump/atos/manifest/AtosManifestTag;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final onManifestUpdated(Ljava/lang/Object;Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/toughstump/atos/AtosPacketAggregator;->ensureActiveTagsOnManifest(Lcom/toughstump/atos/manifest/AtosManifest;)Lcom/toughstump/atos/manifest/AtosManifest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sput-object p1, Lcom/toughstump/atos/AtosPacketAggregator;->currentManifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifest;->getTags()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 36
    .line 37
    sget-object v0, Lcom/toughstump/atos/AtosPacketAggregator;->INSTANCE:Lcom/toughstump/atos/AtosPacketAggregator;

    .line 38
    .line 39
    invoke-direct {v0, p2}, Lcom/toughstump/atos/AtosPacketAggregator;->updateTagData(Lcom/toughstump/atos/manifest/AtosManifestTag;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method private final processBatteryUpdate(Lcom/marshallradio/gpstracking/DataPacketModel;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/toughstump/atos/CommandLinkStatus;

    .line 2
    .line 3
    iget p1, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->plBatteryPercent:I

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/toughstump/atos/CommandLinkStatus;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lcom/toughstump/atos/AtosPacketAggregator;->commandLinkStatusReceived:Lcom/toughstump/event/Event;

    .line 9
    .line 10
    invoke-virtual {p1, p0, v0}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic updateDeviceUid$default(Lcom/toughstump/atos/AtosPacketAggregator;Ljava/lang/String;Lkot/KotType;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    sget-object p2, Lcom/toughstump/atos/AtosPacketAggregator;->DEFAULT_HOST_TYPE:Lkot/KotType;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    const/4 p3, 0x0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/toughstump/atos/AtosPacketAggregator;->updateDeviceUid(Ljava/lang/String;Lkot/KotType;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final updateTagData(Lcom/toughstump/atos/manifest/AtosManifestTag;)V
    .locals 22

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getTagId()I

    .line 2
    .line 3
    .line 4
    move-result v20

    .line 5
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v3, Lcom/toughstump/atos/AtosPacketAggregator;->kotEventMutableMap:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v1, v0

    .line 27
    check-cast v1, Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 28
    .line 29
    move-object v0, v1

    .line 30
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/AtosPacketAggregator;->getManifestUid()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/AtosPacketAggregator;->getManifestName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getCallsign()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getColor()Lcom/toughstump/atos/AtosColor;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getType()Lcom/toughstump/atos/AtosTrackType;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getAttributes()Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    const v18, 0x1ff80

    .line 58
    .line 59
    .line 60
    const/16 v19, 0x0

    .line 61
    .line 62
    const/4 v8, 0x0

    .line 63
    const/4 v9, 0x0

    .line 64
    const/4 v10, 0x0

    .line 65
    const/4 v11, 0x0

    .line 66
    const/4 v12, 0x0

    .line 67
    const/4 v13, 0x0

    .line 68
    const/4 v14, 0x0

    .line 69
    const/4 v15, 0x0

    .line 70
    const/16 v16, 0x0

    .line 71
    .line 72
    const/16 v17, 0x0

    .line 73
    .line 74
    move-object/from16 v21, v3

    .line 75
    .line 76
    move/from16 v3, v20

    .line 77
    .line 78
    invoke-static/range {v0 .. v19}, Lcom/toughstump/atos/kot/AtosKotEvent;->copy$default(Lcom/toughstump/atos/kot/AtosKotEvent;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/toughstump/atos/AtosColor;Lcom/toughstump/atos/AtosTrackType;Ljava/util/Map;Lkot/KotTime;Lkot/KotTime;Lkot/KotPoint;Lkot/utils/model/Track;Lkot/utils/model/Link;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;ILjava/lang/Object;)Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    move-object/from16 v2, v21

    .line 87
    .line 88
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    sget-object v1, Lcom/toughstump/atos/AtosPacketAggregator;->atosKotEventReceived:Lcom/toughstump/event/Event;

    .line 92
    .line 93
    move-object/from16 v2, p0

    .line 94
    .line 95
    invoke-virtual {v1, v2, v0}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method


# virtual methods
.method public final createAtosKotEvent(Lcom/toughstump/atos/manifest/AtosManifestTag;Lcom/marshallradio/gpstracking/DataPacketModel;)Lcom/toughstump/atos/kot/AtosKotEvent;
    .locals 24
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifestTag;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/marshallradio/gpstracking/DataPacketModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "tagManifestData"

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "dataPacketModel"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getTagId()I

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/AtosPacketAggregator;->getManifestUid()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/AtosPacketAggregator;->getManifestName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getCallsign()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getColor()Lcom/toughstump/atos/AtosColor;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getType()Lcom/toughstump/atos/AtosTrackType;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getAttributes()Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    move-result-object v10

    .line 45
    invoke-direct {v0, v1}, Lcom/toughstump/atos/AtosPacketAggregator;->getPoint(Lcom/marshallradio/gpstracking/DataPacketModel;)Lkot/KotPoint;

    .line 46
    .line 47
    .line 48
    move-result-object v11

    .line 49
    iget-object v2, v1, Lcom/marshallradio/gpstracking/DataPacketModel;->coordinate:Lcom/marshallradio/gpstracking/Coordinate;

    .line 50
    .line 51
    iget-boolean v2, v2, Lcom/marshallradio/gpstracking/Coordinate;->isFresh:Z

    .line 52
    .line 53
    if-nez v2, :cond_0

    .line 54
    .line 55
    const/16 v22, 0x7

    .line 56
    .line 57
    const/16 v23, 0x0

    .line 58
    .line 59
    const-wide/16 v12, 0x0

    .line 60
    .line 61
    const-wide/16 v14, 0x0

    .line 62
    .line 63
    const-wide/16 v16, 0x0

    .line 64
    .line 65
    const-wide v18, 0x416312cfe0000000L    # 9999999.0

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    const-wide v20, 0x416312cfe0000000L    # 9999999.0

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    invoke-static/range {v11 .. v23}, Lkot/KotPoint;->copy$default(Lkot/KotPoint;DDDDDILjava/lang/Object;)Lkot/KotPoint;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    move-object v13, v2

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    move-object v13, v11

    .line 82
    :goto_0
    invoke-direct {v0, v1}, Lcom/toughstump/atos/AtosPacketAggregator;->getTrack(Lcom/marshallradio/gpstracking/DataPacketModel;)Lkot/utils/model/Track;

    .line 83
    .line 84
    .line 85
    move-result-object v14

    .line 86
    iget v2, v1, Lcom/marshallradio/gpstracking/DataPacketModel;->temperature:I

    .line 87
    .line 88
    invoke-virtual/range {p2 .. p2}, Lcom/marshallradio/gpstracking/DataPacketModel;->getTagBatteryPercent()D

    .line 89
    .line 90
    .line 91
    move-result-wide v16

    .line 92
    new-instance v1, Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 93
    .line 94
    move-object v3, v1

    .line 95
    new-instance v12, Lkot/KotTime;

    .line 96
    .line 97
    move-object v11, v12

    .line 98
    invoke-direct {v12}, Lkot/KotTime;-><init>()V

    .line 99
    .line 100
    .line 101
    new-instance v12, Lkot/KotTime;

    .line 102
    .line 103
    invoke-direct {v12}, Lkot/KotTime;-><init>()V

    .line 104
    .line 105
    .line 106
    sget-object v15, Lcom/toughstump/atos/pref/AtosTagCreationPrefs;->INSTANCE:Lcom/toughstump/atos/pref/AtosTagCreationPrefs;

    .line 107
    .line 108
    invoke-virtual {v15}, Lcom/toughstump/atos/pref/AtosTagCreationPrefs;->getStaleTimeMinutes()I

    .line 109
    .line 110
    .line 111
    move-result v15

    .line 112
    move-object/from16 p1, v1

    .line 113
    .line 114
    int-to-long v0, v15

    .line 115
    invoke-virtual {v12, v0, v1}, Lkot/KotTime;->plusMinutes(J)Lkot/KotTime;

    .line 116
    .line 117
    .line 118
    move-result-object v12

    .line 119
    sget-object v15, Lcom/toughstump/atos/AtosPacketAggregator;->linkDetail:Lkot/utils/model/Link;

    .line 120
    .line 121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v19

    .line 125
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 126
    .line 127
    .line 128
    move-result-object v20

    .line 129
    const/16 v21, 0x7000

    .line 130
    .line 131
    const/16 v22, 0x0

    .line 132
    .line 133
    const/16 v16, 0x0

    .line 134
    .line 135
    const/16 v17, 0x0

    .line 136
    .line 137
    const/16 v18, 0x0

    .line 138
    .line 139
    invoke-direct/range {v3 .. v22}, Lcom/toughstump/atos/kot/AtosKotEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/toughstump/atos/AtosColor;Lcom/toughstump/atos/AtosTrackType;Ljava/util/Map;Lkot/KotTime;Lkot/KotTime;Lkot/KotPoint;Lkot/utils/model/Track;Lkot/utils/model/Link;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 140
    .line 141
    .line 142
    return-object p1
.end method

.method public final getAtosKotEventReceived()Lcom/toughstump/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/event/Event<",
            "Lcom/toughstump/atos/kot/AtosKotEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/AtosPacketAggregator;->atosKotEventReceived:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCommandLinkStatusReceived()Lcom/toughstump/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/event/Event<",
            "Lcom/toughstump/atos/CommandLinkStatus;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/AtosPacketAggregator;->commandLinkStatusReceived:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrentManifest()Lcom/toughstump/atos/manifest/AtosManifest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/AtosPacketAggregator;->currentManifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getManifestName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/AtosPacketAggregator;->currentManifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifest;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public final getManifestUid()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/AtosPacketAggregator;->currentManifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public final processTagUpdate(Lcom/marshallradio/gpstracking/DataPacketModel;)V
    .locals 6
    .param p1    # Lcom/marshallradio/gpstracking/DataPacketModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dataPacketModel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/marshallradio/gpstracking/DataPacketModel;->getTagID()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sget-object v1, Lcom/toughstump/atos/AtosPacketAggregator;->currentManifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/toughstump/atos/manifest/AtosManifest;->getTags()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v1, v2

    .line 21
    :goto_0
    if-nez v1, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    sget-object v1, Lcom/toughstump/atos/AtosPacketAggregator;->currentManifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/toughstump/atos/manifest/AtosManifest;->getTags()Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    move-object v1, v2

    .line 34
    :goto_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 46
    .line 47
    if-nez v1, :cond_3

    .line 48
    .line 49
    sget-object v1, Lcom/toughstump/atos/pref/AtosTagCreationPrefs;->INSTANCE:Lcom/toughstump/atos/pref/AtosTagCreationPrefs;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Lcom/toughstump/atos/pref/AtosTagCreationPrefs;->newDefaultTag(I)Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    sget-object v3, Lcom/toughstump/atos/AtosPacketAggregator;->manifestRepo:Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 56
    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    const/4 v5, 0x2

    .line 61
    invoke-static {v3, v1, v4, v5, v2}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->updateTag$default(Lcom/toughstump/atos/manifest/AtosManifestRepository;Lcom/toughstump/atos/manifest/AtosManifestTag;ZILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {p0, v1, p1}, Lcom/toughstump/atos/AtosPacketAggregator;->createAtosKotEvent(Lcom/toughstump/atos/manifest/AtosManifestTag;Lcom/marshallradio/gpstracking/DataPacketModel;)Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sget-object v1, Lcom/toughstump/atos/AtosPacketAggregator;->kotEventMutableMap:Ljava/util/Map;

    .line 73
    .line 74
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    sget-object v0, Lcom/toughstump/atos/AtosPacketAggregator;->atosKotEventReceived:Lcom/toughstump/event/Event;

    .line 78
    .line 79
    invoke-virtual {v0, p0, p1}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final setCurrentManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 0
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lcom/toughstump/atos/AtosPacketAggregator;->currentManifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 2
    .line 3
    return-void
.end method

.method public final start(Lcom/toughstump/atos/manifest/AtosManifestRepository;Lcom/toughstump/atos/elev/IAtosElevationManager;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifestRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/toughstump/atos/elev/IAtosElevationManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "manifestManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "elevationManager"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object p1, Lcom/toughstump/atos/AtosPacketAggregator;->manifestRepo:Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 12
    .line 13
    sput-object p2, Lcom/toughstump/atos/AtosPacketAggregator;->elevationManager:Lcom/toughstump/atos/elev/IAtosElevationManager;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getCurrentManifest()Lcom/toughstump/atos/manifest/AtosManifest;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    sput-object p1, Lcom/toughstump/atos/AtosPacketAggregator;->currentManifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 24
    .line 25
    sget-object p1, Lcom/toughstump/atos/AtosPacketAggregator;->manifestRepo:Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getManifestUpdated()Lcom/toughstump/event/Event;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance p2, Lcom/toughstump/atos/AtosPacketAggregator$start$1;

    .line 35
    .line 36
    invoke-direct {p2, p0}, Lcom/toughstump/atos/AtosPacketAggregator$start$1;-><init>(Lcom/toughstump/atos/AtosPacketAggregator;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 40
    .line 41
    .line 42
    sget-object p1, Lcom/toughstump/atos/AtosPacketAggregator;->manifestRepo:Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 43
    .line 44
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getManifestTagUpdated()Lcom/toughstump/event/Event;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance p2, Lcom/toughstump/atos/AtosPacketAggregator$start$2;

    .line 52
    .line 53
    invoke-direct {p2, p0}, Lcom/toughstump/atos/AtosPacketAggregator$start$2;-><init>(Lcom/toughstump/atos/AtosPacketAggregator;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 1
    sget-object v0, Lcom/toughstump/atos/AtosPacketAggregator;->manifestRepo:Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getManifestUpdated()Lcom/toughstump/event/Event;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/toughstump/atos/AtosPacketAggregator$stop$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/toughstump/atos/AtosPacketAggregator$stop$1;-><init>(Lcom/toughstump/atos/AtosPacketAggregator;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lcom/toughstump/atos/AtosPacketAggregator;->manifestRepo:Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getManifestTagUpdated()Lcom/toughstump/event/Event;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lcom/toughstump/atos/AtosPacketAggregator$stop$2;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/toughstump/atos/AtosPacketAggregator$stop$2;-><init>(Lcom/toughstump/atos/AtosPacketAggregator;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    sget-object v0, Lcom/toughstump/atos/CommandLinkPacketHandler;->INSTANCE:Lcom/toughstump/atos/CommandLinkPacketHandler;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/toughstump/atos/CommandLinkPacketHandler;->getDataPacketReceivedEventHandler()Lcom/toughstump/event/Event;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Lcom/toughstump/atos/AtosPacketAggregator$stop$3;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/toughstump/atos/AtosPacketAggregator$stop$3;-><init>(Lcom/toughstump/atos/AtosPacketAggregator;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final updateDeviceUid(Ljava/lang/String;Lkot/KotType;Ljava/lang/String;)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkot/KotType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "deviceUID"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "deviceType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object p1, Lcom/toughstump/atos/AtosPacketAggregator;->deviceHostUid:Ljava/lang/String;

    .line 12
    .line 13
    sput-object p2, Lcom/toughstump/atos/AtosPacketAggregator;->deviceHostType:Lkot/KotType;

    .line 14
    .line 15
    const/16 v9, 0xb8

    .line 16
    .line 17
    const/4 v10, 0x0

    .line 18
    const-string v1, "p-p"

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v8, 0x0

    .line 24
    move-object v2, p1

    .line 25
    move-object v3, p2

    .line 26
    move-object v7, p3

    .line 27
    invoke-static/range {v1 .. v10}, Lkot/utils/model/LinkUtils;->link$default(Ljava/lang/String;Ljava/lang/String;Lkot/KotType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkot/KotTime;ILjava/lang/Object;)Lkot/utils/model/Link;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sput-object p1, Lcom/toughstump/atos/AtosPacketAggregator;->linkDetail:Lkot/utils/model/Link;

    .line 32
    .line 33
    return-void
.end method
