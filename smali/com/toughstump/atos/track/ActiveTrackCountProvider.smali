.class public final Lcom/toughstump/atos/track/ActiveTrackCountProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActiveTrackCountProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActiveTrackCountProvider.kt\ncom/toughstump/atos/track/ActiveTrackCountProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,55:1\n1863#2,2:56\n*S KotlinDebug\n*F\n+ 1 ActiveTrackCountProvider.kt\ncom/toughstump/atos/track/ActiveTrackCountProvider\n*L\n26#1:56,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nActiveTrackCountProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActiveTrackCountProvider.kt\ncom/toughstump/atos/track/ActiveTrackCountProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,55:1\n1863#2,2:56\n*S KotlinDebug\n*F\n+ 1 ActiveTrackCountProvider.kt\ncom/toughstump/atos/track/ActiveTrackCountProvider\n*L\n26#1:56,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/toughstump/atos/track/ActiveTrackCountProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AtosTrackCounter"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static activeTagCount:I

.field private static final tagCountUpdatedEvent:Lcom/toughstump/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/event/Event<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static timer:Ljava/util/Timer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/toughstump/atos/track/ActiveTrackCountProvider;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/toughstump/atos/track/ActiveTrackCountProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/toughstump/atos/track/ActiveTrackCountProvider;->INSTANCE:Lcom/toughstump/atos/track/ActiveTrackCountProvider;

    .line 7
    .line 8
    new-instance v0, Lcom/toughstump/event/Event;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/toughstump/event/Event;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/toughstump/atos/track/ActiveTrackCountProvider;->tagCountUpdatedEvent:Lcom/toughstump/event/Event;

    .line 14
    .line 15
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

.method public static final synthetic access$determineNumberOfActiveTags(Lcom/toughstump/atos/track/ActiveTrackCountProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/track/ActiveTrackCountProvider;->determineNumberOfActiveTags()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final determineNumberOfActiveTags()V
    .locals 6

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getOnlyCurrentManifestVisible()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    sget-object v2, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/toughstump/atos/state/AtosStateProvider;->getTrackMap()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getCurrentManifest()Lcom/toughstump/atos/manifest/AtosManifest;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/4 v3, 0x0

    .line 42
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_3

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Lcom/toughstump/atos/state/AtosTag;

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/toughstump/atos/state/AtosTag;->getAtosKotEvent()Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v5}, Lcom/toughstump/atos/kot/AtosKotEvent;->isStale()Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-nez v5, :cond_1

    .line 63
    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {v4}, Lcom/toughstump/atos/state/AtosTag;->getManifestUid()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_1

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    sget v0, Lcom/toughstump/atos/track/ActiveTrackCountProvider;->activeTagCount:I

    .line 81
    .line 82
    if-ne v0, v3, :cond_4

    .line 83
    .line 84
    return-void

    .line 85
    :cond_4
    sput v3, Lcom/toughstump/atos/track/ActiveTrackCountProvider;->activeTagCount:I

    .line 86
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v1, "active tag count is "

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const-string v1, "AtosTrackCounter"

    .line 105
    .line 106
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    sget-object v0, Lcom/toughstump/atos/track/ActiveTrackCountProvider;->tagCountUpdatedEvent:Lcom/toughstump/event/Event;

    .line 110
    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, p0, v1}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method


# virtual methods
.method public final getActiveTagCount()I
    .locals 1

    .line 1
    sget v0, Lcom/toughstump/atos/track/ActiveTrackCountProvider;->activeTagCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTagCountUpdatedEvent()Lcom/toughstump/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/event/Event<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/track/ActiveTrackCountProvider;->tagCountUpdatedEvent:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/track/ActiveTrackCountProvider;->timer:Ljava/util/Timer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setActiveTagCount(I)V
    .locals 0

    .line 1
    sput p1, Lcom/toughstump/atos/track/ActiveTrackCountProvider;->activeTagCount:I

    .line 2
    .line 3
    return-void
.end method

.method public final start()V
    .locals 8

    .line 1
    const-string v0, "AtosTrackCounter"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lkotlin/concurrent/TimersKt;->timer(Ljava/lang/String;Z)Ljava/util/Timer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v3, Lcom/toughstump/atos/track/ActiveTrackCountProvider$start$$inlined$fixedRateTimer$default$1;

    .line 9
    .line 10
    invoke-direct {v3}, Lcom/toughstump/atos/track/ActiveTrackCountProvider$start$$inlined$fixedRateTimer$default$1;-><init>()V

    .line 11
    .line 12
    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    const-wide/16 v6, 0x3e8

    .line 16
    .line 17
    move-object v2, v0

    .line 18
    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/toughstump/atos/track/ActiveTrackCountProvider;->timer:Ljava/util/Timer;

    .line 22
    .line 23
    return-void
.end method
