.class public final Lcom/toughstump/atos/state/AtosStateProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtosStateProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosStateProvider.kt\ncom/toughstump/atos/state/AtosStateProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,232:1\n1849#2,2:233\n1849#2,2:235\n1849#2,2:237\n764#2:239\n855#2,2:240\n*S KotlinDebug\n*F\n+ 1 AtosStateProvider.kt\ncom/toughstump/atos/state/AtosStateProvider\n*L\n106#1:233,2\n109#1:235,2\n166#1:237,2\n176#1:239\n176#1:240,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static coordinateCalculator:Lcom/toughstump/atos/calc/ICoordinateCalculator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static currentManifestUid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static deviceHostUid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static filter:Lcom/toughstump/atos/filter/AtosFilterCriteria;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static hideStaleTags:Z

.field private static selfOwnshipLocation:Lkot/KotPoint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static stateRepo:Lcom/toughstump/atos/state/db/AtosStateRepository;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final tagDeletedEvent:Lcom/toughstump/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/event/Event<",
            "Lcom/toughstump/atos/state/AtosTag;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final tagMutableMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/state/AtosTag;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final tagStateMutableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/state/model/AtosTagState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final tagStateUpdateEvent:Lcom/toughstump/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/event/Event<",
            "Lcom/toughstump/atos/state/AtosTag;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final tagTrackUpdateEvent:Lcom/toughstump/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/event/Event<",
            "Lcom/toughstump/atos/state/AtosTag;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/toughstump/atos/state/AtosStateProvider;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/toughstump/atos/state/AtosStateProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 7
    .line 8
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/toughstump/atos/state/AtosStateProvider;->tagMutableMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/toughstump/atos/state/AtosStateProvider;->tagStateMutableMap:Ljava/util/Map;

    .line 21
    .line 22
    new-instance v1, Lcom/toughstump/event/Event;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/toughstump/event/Event;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lcom/toughstump/atos/state/AtosStateProvider;->tagTrackUpdateEvent:Lcom/toughstump/event/Event;

    .line 28
    .line 29
    new-instance v1, Lcom/toughstump/event/Event;

    .line 30
    .line 31
    invoke-direct {v1}, Lcom/toughstump/event/Event;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v1, Lcom/toughstump/atos/state/AtosStateProvider;->tagStateUpdateEvent:Lcom/toughstump/event/Event;

    .line 35
    .line 36
    new-instance v1, Lcom/toughstump/event/Event;

    .line 37
    .line 38
    invoke-direct {v1}, Lcom/toughstump/event/Event;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v1, Lcom/toughstump/atos/state/AtosStateProvider;->tagDeletedEvent:Lcom/toughstump/event/Event;

    .line 42
    .line 43
    sget-object v1, Lcom/toughstump/atos/state/gps/OwnshipGpsProvider;->INSTANCE:Lcom/toughstump/atos/state/gps/OwnshipGpsProvider;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/toughstump/atos/state/gps/OwnshipGpsProvider;->getGpsOwnshipUpdated()Lcom/toughstump/event/Event;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-instance v2, Lcom/toughstump/atos/state/AtosStateProvider$1;

    .line 50
    .line 51
    invoke-direct {v2, v0}, Lcom/toughstump/atos/state/AtosStateProvider$1;-><init>(Lcom/toughstump/atos/state/AtosStateProvider;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 55
    .line 56
    .line 57
    sget-object v1, Lcom/toughstump/atos/track/AtosKotEventAggregator;->INSTANCE:Lcom/toughstump/atos/track/AtosKotEventAggregator;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/toughstump/atos/track/AtosKotEventAggregator;->getAtosKotUpdateEvent()Lcom/toughstump/event/Event;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    new-instance v3, Lcom/toughstump/atos/state/AtosStateProvider$2;

    .line 64
    .line 65
    invoke-direct {v3, v0}, Lcom/toughstump/atos/state/AtosStateProvider$2;-><init>(Lcom/toughstump/atos/state/AtosStateProvider;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v3}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/toughstump/atos/track/AtosKotEventAggregator;->start()V

    .line 72
    .line 73
    .line 74
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

.method public static final synthetic access$onOwnshipLocated(Lcom/toughstump/atos/state/AtosStateProvider;Ljava/lang/Object;Lkot/KotPoint;)Lkotlinx/coroutines/Job;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/state/AtosStateProvider;->onOwnshipLocated(Ljava/lang/Object;Lkot/KotPoint;)Lkotlinx/coroutines/Job;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$sendTagStateUpdateEvent(Lcom/toughstump/atos/state/AtosStateProvider;Lcom/toughstump/atos/state/AtosTag;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/state/AtosStateProvider;->sendTagStateUpdateEvent(Lcom/toughstump/atos/state/AtosTag;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setSelfOwnshipLocation$p(Lkot/KotPoint;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/toughstump/atos/state/AtosStateProvider;->selfOwnshipLocation:Lkot/KotPoint;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$updateOwnshipForTag(Lcom/toughstump/atos/state/AtosStateProvider;Lcom/toughstump/atos/state/AtosTag;)Lcom/toughstump/atos/state/AtosTag;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/state/AtosStateProvider;->updateOwnshipForTag(Lcom/toughstump/atos/state/AtosTag;)Lcom/toughstump/atos/state/AtosTag;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$updateOwnshipTags(Lcom/toughstump/atos/state/AtosStateProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/state/AtosStateProvider;->updateOwnshipTags()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$updateTracks(Lcom/toughstump/atos/state/AtosStateProvider;Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/state/AtosStateProvider;->updateTracks(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$updateVisibleForTag(Lcom/toughstump/atos/state/AtosStateProvider;Lcom/toughstump/atos/state/AtosTag;)Lcom/toughstump/atos/state/AtosTag;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/state/AtosStateProvider;->updateVisibleForTag(Lcom/toughstump/atos/state/AtosTag;)Lcom/toughstump/atos/state/AtosTag;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final deleteDuplicates(Lcom/toughstump/atos/state/AtosTag;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getAtosKotEvent()Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getLink()Lkot/utils/model/Link;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lkot/utils/model/Link;->getUid()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    :goto_0
    if-eqz v0, :cond_5

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/toughstump/atos/state/AtosStateProvider;->getTrackMap()Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_4

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    move-object v4, v3

    .line 48
    check-cast v4, Lcom/toughstump/atos/state/AtosTag;

    .line 49
    .line 50
    invoke-virtual {v4}, Lcom/toughstump/atos/state/AtosTag;->getUid()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getUid()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-nez v5, :cond_1

    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/toughstump/atos/state/AtosTag;->getTagId()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getTagId()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-ne v5, v6, :cond_1

    .line 73
    .line 74
    invoke-virtual {v4}, Lcom/toughstump/atos/state/AtosTag;->getAtosKotEvent()Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v4}, Lcom/toughstump/atos/kot/AtosKotEvent;->getLink()Lkot/utils/model/Link;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    if-eqz v4, :cond_2

    .line 83
    .line 84
    invoke-virtual {v4}, Lkot/utils/model/Link;->getUid()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    goto :goto_2

    .line 89
    :cond_2
    move-object v4, v1

    .line 90
    :goto_2
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getAtosKotEvent()Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v5}, Lcom/toughstump/atos/kot/AtosKotEvent;->getLink()Lkot/utils/model/Link;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    if-eqz v5, :cond_3

    .line 99
    .line 100
    invoke-virtual {v5}, Lkot/utils/model/Link;->getUid()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    goto :goto_3

    .line 105
    :cond_3
    move-object v5, v1

    .line 106
    :goto_3
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_1

    .line 111
    .line 112
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_5

    .line 125
    .line 126
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Lcom/toughstump/atos/state/AtosTag;

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosTag;->getUid()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {p0, v0}, Lcom/toughstump/atos/state/AtosStateProvider;->deleteTag(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_5
    return-void
.end method

.method private final getTagState(Lcom/toughstump/atos/kot/AtosKotEvent;)Lcom/toughstump/atos/state/model/AtosTagState;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getUid()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v7, Lcom/toughstump/atos/state/AtosStateProvider;->tagStateMutableMap:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/toughstump/atos/state/model/AtosTagState;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->stateRepo:Lcom/toughstump/atos/state/db/AtosStateRepository;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/toughstump/atos/state/db/AtosStateRepository;->getTagState(Ljava/lang/String;)Lcom/toughstump/atos/state/model/AtosTagState;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    if-nez v0, :cond_3

    .line 27
    .line 28
    new-instance v8, Lcom/toughstump/atos/state/model/AtosTagState;

    .line 29
    .line 30
    const/16 v5, 0xe

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x0

    .line 36
    move-object v0, v8

    .line 37
    move-object v1, p1

    .line 38
    invoke-direct/range {v0 .. v6}, Lcom/toughstump/atos/state/model/AtosTagState;-><init>(Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 39
    .line 40
    .line 41
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->stateRepo:Lcom/toughstump/atos/state/db/AtosStateRepository;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0, v8}, Lcom/toughstump/atos/state/db/AtosStateRepository;->updateTagState(Lcom/toughstump/atos/state/model/AtosTagState;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    move-object v0, v8

    .line 49
    :cond_3
    invoke-interface {v7, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    return-object v0
.end method

.method private final isMyTrack(Lcom/toughstump/atos/kot/AtosKotEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getLink()Lkot/utils/model/Link;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lkot/utils/model/Link;->getUid()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->deviceHostUid:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method private final onOwnshipLocated(Ljava/lang/Object;Lkot/KotPoint;)Lkotlinx/coroutines/Job;
    .locals 1

    .line 1
    new-instance p1, Lcom/toughstump/atos/state/AtosStateProvider$onOwnshipLocated$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p1, p2, v0}, Lcom/toughstump/atos/state/AtosStateProvider$onOwnshipLocated$1;-><init>(Lkot/KotPoint;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    const/4 p2, 0x1

    .line 8
    invoke-static {v0, p1, p2, v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lkotlinx/coroutines/Job;

    .line 13
    .line 14
    return-object p1
.end method

.method private final sendTagStateUpdateEvent(Lcom/toughstump/atos/state/AtosTag;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->tagMutableMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getUid()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->tagStateUpdateEvent:Lcom/toughstump/event/Event;

    .line 11
    .line 12
    const/16 v8, 0x3f

    .line 13
    .line 14
    const/4 v9, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    move-object v1, p1

    .line 22
    invoke-static/range {v1 .. v9}, Lcom/toughstump/atos/state/AtosTag;->copy$default(Lcom/toughstump/atos/state/AtosTag;Lcom/toughstump/atos/kot/AtosKotEvent;Lcom/toughstump/atos/state/model/AtosTagState;ZZLjava/lang/Double;Ljava/lang/Double;ILjava/lang/Object;)Lcom/toughstump/atos/state/AtosTag;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p0, p1}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private final updateOwnshipForTag(Lcom/toughstump/atos/state/AtosTag;)Lcom/toughstump/atos/state/AtosTag;
    .locals 12

    .line 1
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->coordinateCalculator:Lcom/toughstump/atos/calc/ICoordinateCalculator;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->selfOwnshipLocation:Lkot/KotPoint;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getAtosKotEvent()Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getPoint()Lkot/KotPoint;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v2, Lcom/toughstump/atos/state/AtosStateProvider;->coordinateCalculator:Lcom/toughstump/atos/calc/ICoordinateCalculator;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    sget-object v3, Lcom/toughstump/atos/state/AtosStateProvider;->selfOwnshipLocation:Lkot/KotPoint;

    .line 26
    .line 27
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v2, v3, v1}, Lcom/toughstump/atos/calc/ICoordinateCalculator;->rangeBetweenM(Lkot/KotPoint;Lkot/KotPoint;)D

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :goto_0
    move-object v8, v2

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v2, 0x0

    .line 41
    goto :goto_0

    .line 42
    :goto_1
    sget-object v2, Lcom/toughstump/atos/state/AtosStateProvider;->coordinateCalculator:Lcom/toughstump/atos/calc/ICoordinateCalculator;

    .line 43
    .line 44
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v2, v0, v1}, Lcom/toughstump/atos/calc/ICoordinateCalculator;->bearingBetweenDegTrue(Lkot/KotPoint;Lkot/KotPoint;)D

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    const/16 v10, 0xf

    .line 56
    .line 57
    const/4 v11, 0x0

    .line 58
    const/4 v4, 0x0

    .line 59
    const/4 v5, 0x0

    .line 60
    const/4 v6, 0x0

    .line 61
    const/4 v7, 0x0

    .line 62
    move-object v3, p1

    .line 63
    invoke-static/range {v3 .. v11}, Lcom/toughstump/atos/state/AtosTag;->copy$default(Lcom/toughstump/atos/state/AtosTag;Lcom/toughstump/atos/kot/AtosKotEvent;Lcom/toughstump/atos/state/model/AtosTagState;ZZLjava/lang/Double;Ljava/lang/Double;ILjava/lang/Object;)Lcom/toughstump/atos/state/AtosTag;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :cond_2
    :goto_2
    return-object p1
.end method

.method private final updateOwnshipTags()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/toughstump/atos/state/AtosStateProvider;->getTrackMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/toughstump/atos/state/AtosTag;

    .line 24
    .line 25
    sget-object v2, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 26
    .line 27
    invoke-direct {v2, v1}, Lcom/toughstump/atos/state/AtosStateProvider;->updateOwnshipForTag(Lcom/toughstump/atos/state/AtosTag;)Lcom/toughstump/atos/state/AtosTag;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {v2, v1}, Lcom/toughstump/atos/state/AtosStateProvider;->updateVisibleForTag(Lcom/toughstump/atos/state/AtosTag;)Lcom/toughstump/atos/state/AtosTag;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v2, v1}, Lcom/toughstump/atos/state/AtosStateProvider;->sendTagStateUpdateEvent(Lcom/toughstump/atos/state/AtosTag;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method private final updateTrack(Lcom/toughstump/atos/kot/AtosKotEvent;)V
    .locals 10

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/state/AtosStateProvider;->getTagState(Lcom/toughstump/atos/kot/AtosKotEvent;)Lcom/toughstump/atos/state/model/AtosTagState;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    invoke-direct {p0, p1}, Lcom/toughstump/atos/state/AtosStateProvider;->isMyTrack(Lcom/toughstump/atos/kot/AtosKotEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    new-instance v9, Lcom/toughstump/atos/state/AtosTag;

    .line 10
    .line 11
    const/16 v7, 0x30

    .line 12
    .line 13
    const/4 v8, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    move-object v0, v9

    .line 18
    move-object v1, p1

    .line 19
    invoke-direct/range {v0 .. v8}, Lcom/toughstump/atos/state/AtosTag;-><init>(Lcom/toughstump/atos/kot/AtosKotEvent;Lcom/toughstump/atos/state/model/AtosTagState;ZZLjava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v9}, Lcom/toughstump/atos/state/AtosStateProvider;->updateOwnshipForTag(Lcom/toughstump/atos/state/AtosTag;)Lcom/toughstump/atos/state/AtosTag;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Lcom/toughstump/atos/state/AtosStateProvider;->updateVisibleForTag(Lcom/toughstump/atos/state/AtosTag;)Lcom/toughstump/atos/state/AtosTag;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    sget-object v9, Lcom/toughstump/atos/state/AtosStateProvider;->tagTrackUpdateEvent:Lcom/toughstump/event/Event;

    .line 31
    .line 32
    const/16 v7, 0x3f

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    move-object v0, p1

    .line 39
    invoke-static/range {v0 .. v8}, Lcom/toughstump/atos/state/AtosTag;->copy$default(Lcom/toughstump/atos/state/AtosTag;Lcom/toughstump/atos/kot/AtosKotEvent;Lcom/toughstump/atos/state/model/AtosTagState;ZZLjava/lang/Double;Ljava/lang/Double;ILjava/lang/Object;)Lcom/toughstump/atos/state/AtosTag;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v9, p0, v0}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->tagMutableMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getUid()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_0

    .line 57
    .line 58
    invoke-direct {p0, p1}, Lcom/toughstump/atos/state/AtosStateProvider;->sendTagStateUpdateEvent(Lcom/toughstump/atos/state/AtosTag;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getUid()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, p1}, Lcom/toughstump/atos/state/AtosStateProvider;->deleteDuplicates(Lcom/toughstump/atos/state/AtosTag;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private final updateTracks(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/kot/AtosKotEvent;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    move-object v3, v2

    .line 21
    check-cast v3, Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 22
    .line 23
    const v21, 0x1ffff

    .line 24
    .line 25
    .line 26
    const/16 v22, 0x0

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    const/4 v9, 0x0

    .line 34
    const/4 v10, 0x0

    .line 35
    const/4 v11, 0x0

    .line 36
    const/4 v12, 0x0

    .line 37
    const/4 v13, 0x0

    .line 38
    const/4 v14, 0x0

    .line 39
    const/4 v15, 0x0

    .line 40
    const/16 v16, 0x0

    .line 41
    .line 42
    const/16 v17, 0x0

    .line 43
    .line 44
    const/16 v18, 0x0

    .line 45
    .line 46
    const/16 v19, 0x0

    .line 47
    .line 48
    const/16 v20, 0x0

    .line 49
    .line 50
    invoke-static/range {v3 .. v22}, Lcom/toughstump/atos/kot/AtosKotEvent;->copy$default(Lcom/toughstump/atos/kot/AtosKotEvent;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/toughstump/atos/AtosColor;Lcom/toughstump/atos/AtosTrackType;Ljava/util/Map;Lkot/KotTime;Lkot/KotTime;Lkot/KotPoint;Lkot/utils/model/Track;Lkot/utils/model/Link;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;ILjava/lang/Object;)Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 73
    .line 74
    sget-object v2, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 75
    .line 76
    invoke-direct {v2, v1}, Lcom/toughstump/atos/state/AtosStateProvider;->updateTrack(Lcom/toughstump/atos/kot/AtosKotEvent;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    return-void
.end method

.method private final updateVisibleForTag(Lcom/toughstump/atos/state/AtosTag;)Lcom/toughstump/atos/state/AtosTag;
    .locals 14

    .line 1
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->filter:Lcom/toughstump/atos/filter/AtosFilterCriteria;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/toughstump/atos/filter/AtosFilterCriteria;->isTagVisibleByFilterCriteria(Lcom/toughstump/atos/state/AtosTag;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v1

    .line 15
    :goto_0
    sget-boolean v2, Lcom/toughstump/atos/state/AtosStateProvider;->hideStaleTags:Z

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getAtosKotEvent()Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lcom/toughstump/atos/kot/AtosKotEvent;->isStale()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    move v2, v3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v2, v1

    .line 33
    :goto_1
    sget-object v4, Lcom/toughstump/atos/state/AtosStateProvider;->currentManifestUid:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getManifestUid()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    sget-object v5, Lcom/toughstump/atos/state/AtosStateProvider;->currentManifestUid:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_2

    .line 48
    .line 49
    move v4, v3

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move v4, v1

    .line 52
    :goto_2
    if-eqz v0, :cond_3

    .line 53
    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    if-eqz v4, :cond_3

    .line 57
    .line 58
    move v8, v1

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    move v8, v3

    .line 61
    :goto_3
    const/16 v12, 0x3b

    .line 62
    .line 63
    const/4 v13, 0x0

    .line 64
    const/4 v6, 0x0

    .line 65
    const/4 v7, 0x0

    .line 66
    const/4 v9, 0x0

    .line 67
    const/4 v10, 0x0

    .line 68
    const/4 v11, 0x0

    .line 69
    move-object v5, p1

    .line 70
    invoke-static/range {v5 .. v13}, Lcom/toughstump/atos/state/AtosTag;->copy$default(Lcom/toughstump/atos/state/AtosTag;Lcom/toughstump/atos/kot/AtosKotEvent;Lcom/toughstump/atos/state/model/AtosTagState;ZZLjava/lang/Double;Ljava/lang/Double;ILjava/lang/Object;)Lcom/toughstump/atos/state/AtosTag;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1
.end method


# virtual methods
.method public final deleteTag(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "uid"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->tagMutableMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/toughstump/atos/state/AtosTag;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->tagDeletedEvent:Lcom/toughstump/event/Event;

    .line 18
    .line 19
    invoke-virtual {v0, p0, p1}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final getCoordinateCalculator()Lcom/toughstump/atos/calc/ICoordinateCalculator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->coordinateCalculator:Lcom/toughstump/atos/calc/ICoordinateCalculator;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFilter()Lcom/toughstump/atos/filter/AtosFilterCriteria;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->filter:Lcom/toughstump/atos/filter/AtosFilterCriteria;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStateRepo()Lcom/toughstump/atos/state/db/AtosStateRepository;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->stateRepo:Lcom/toughstump/atos/state/db/AtosStateRepository;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTagDeletedEvent()Lcom/toughstump/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/event/Event<",
            "Lcom/toughstump/atos/state/AtosTag;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->tagDeletedEvent:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTagStateUpdateEvent()Lcom/toughstump/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/event/Event<",
            "Lcom/toughstump/atos/state/AtosTag;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->tagStateUpdateEvent:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTagTrackUpdateEvent()Lcom/toughstump/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/event/Event<",
            "Lcom/toughstump/atos/state/AtosTag;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->tagTrackUpdateEvent:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTrackMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/state/AtosTag;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->tagMutableMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    sget-object v0, Lcom/toughstump/atos/state/gps/OwnshipGpsProvider;->INSTANCE:Lcom/toughstump/atos/state/gps/OwnshipGpsProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/state/gps/OwnshipGpsProvider;->getGpsOwnshipUpdated()Lcom/toughstump/event/Event;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/toughstump/atos/state/AtosStateProvider$onDestroy$1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/toughstump/atos/state/AtosStateProvider$onDestroy$1;-><init>(Lcom/toughstump/atos/state/AtosStateProvider;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/toughstump/atos/track/AtosKotEventAggregator;->INSTANCE:Lcom/toughstump/atos/track/AtosKotEventAggregator;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/toughstump/atos/track/AtosKotEventAggregator;->getAtosKotUpdateEvent()Lcom/toughstump/event/Event;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lcom/toughstump/atos/state/AtosStateProvider$onDestroy$2;

    .line 22
    .line 23
    invoke-direct {v2, p0}, Lcom/toughstump/atos/state/AtosStateProvider$onDestroy$2;-><init>(Lcom/toughstump/atos/state/AtosStateProvider;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/toughstump/atos/track/AtosKotEventAggregator;->stop()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onFilterUpdated$atos_state(Ljava/lang/Object;Lcom/toughstump/atos/filter/AtosFilterCriteria;)Lkotlinx/coroutines/Job;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/toughstump/atos/filter/AtosFilterCriteria;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "any"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "filterCriteria"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/toughstump/atos/state/AtosStateProvider$onFilterUpdated$1;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p2, v0}, Lcom/toughstump/atos/state/AtosStateProvider$onFilterUpdated$1;-><init>(Lcom/toughstump/atos/filter/AtosFilterCriteria;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    invoke-static {v0, p1, p2, v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lkotlinx/coroutines/Job;

    .line 23
    .line 24
    return-object p1
.end method

.method public final setCoordinateCalculator(Lcom/toughstump/atos/calc/ICoordinateCalculator;)V
    .locals 0
    .param p1    # Lcom/toughstump/atos/calc/ICoordinateCalculator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lcom/toughstump/atos/state/AtosStateProvider;->coordinateCalculator:Lcom/toughstump/atos/calc/ICoordinateCalculator;

    .line 2
    .line 3
    return-void
.end method

.method public final setCurrentManifestUid(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->currentManifestUid:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sput-object p1, Lcom/toughstump/atos/state/AtosStateProvider;->currentManifestUid:Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/toughstump/atos/state/AtosStateProvider;->updateOwnshipTags()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setFilter(Lcom/toughstump/atos/filter/AtosFilterCriteria;)V
    .locals 0
    .param p1    # Lcom/toughstump/atos/filter/AtosFilterCriteria;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lcom/toughstump/atos/state/AtosStateProvider;->filter:Lcom/toughstump/atos/filter/AtosFilterCriteria;

    .line 2
    .line 3
    return-void
.end method

.method public final setHideStaleEnabled(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/toughstump/atos/state/AtosStateProvider;->hideStaleTags:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sput-boolean p1, Lcom/toughstump/atos/state/AtosStateProvider;->hideStaleTags:Z

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/toughstump/atos/state/AtosStateProvider;->updateOwnshipTags()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setStateRepo(Lcom/toughstump/atos/state/db/AtosStateRepository;)V
    .locals 2
    .param p1    # Lcom/toughstump/atos/state/db/AtosStateRepository;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sput-object p1, Lcom/toughstump/atos/state/AtosStateProvider;->stateRepo:Lcom/toughstump/atos/state/db/AtosStateRepository;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/toughstump/atos/state/db/AtosStateRepository;->getFilterUpdated()Lcom/toughstump/event/Event;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/toughstump/atos/state/AtosStateProvider$stateRepo$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/toughstump/atos/state/AtosStateProvider$stateRepo$1;-><init>(Lcom/toughstump/atos/state/AtosStateProvider;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/toughstump/atos/state/db/AtosStateRepository;->getCurrentFilter()Lcom/toughstump/atos/filter/AtosFilterCriteria;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sput-object p1, Lcom/toughstump/atos/state/AtosStateProvider;->filter:Lcom/toughstump/atos/filter/AtosFilterCriteria;

    .line 23
    .line 24
    return-void
.end method

.method public final start(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "deviceUid"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/toughstump/atos/state/AtosStateProvider;->deviceHostUid:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final updateTagState(Lcom/toughstump/atos/state/model/AtosTagState;)V
    .locals 10
    .param p1    # Lcom/toughstump/atos/state/model/AtosTagState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "atosTagState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->stateRepo:Lcom/toughstump/atos/state/db/AtosStateRepository;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/toughstump/atos/state/db/AtosStateRepository;->updateTagState(Lcom/toughstump/atos/state/model/AtosTagState;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->tagStateMutableMap:Ljava/util/Map;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/toughstump/atos/state/model/AtosTagState;->getUid()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->tagMutableMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/toughstump/atos/state/model/AtosTagState;->getUid()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    move-object v1, v0

    .line 33
    check-cast v1, Lcom/toughstump/atos/state/AtosTag;

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    const/16 v8, 0x3d

    .line 39
    .line 40
    const/4 v9, 0x0

    .line 41
    const/4 v2, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v7, 0x0

    .line 46
    move-object v3, p1

    .line 47
    invoke-static/range {v1 .. v9}, Lcom/toughstump/atos/state/AtosTag;->copy$default(Lcom/toughstump/atos/state/AtosTag;Lcom/toughstump/atos/kot/AtosKotEvent;Lcom/toughstump/atos/state/model/AtosTagState;ZZLjava/lang/Double;Ljava/lang/Double;ILjava/lang/Object;)Lcom/toughstump/atos/state/AtosTag;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p0, p1}, Lcom/toughstump/atos/state/AtosStateProvider;->sendTagStateUpdateEvent(Lcom/toughstump/atos/state/AtosTag;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
