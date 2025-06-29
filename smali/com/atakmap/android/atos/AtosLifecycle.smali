.class public final Lcom/atakmap/android/atos/AtosLifecycle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AtosLifecycle"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static activityContext:Landroid/content/Context;

.field public static commandLinkManager:Lcom/atakmap/android/atos/service/CommandLinkManager;

.field private static isStarted:Z

.field private static manifestDatabase:Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;

.field public static manifestRepo:Lcom/toughstump/atos/manifest/AtosManifestRepository;

.field public static pluginContext:Landroid/content/Context;

.field public static preferenceRepository:Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

.field private static tagStateDatabase:Lcom/toughstump/atos/state/db/AtosTagStateDatabase;

.field public static tagStateRepository:Lcom/toughstump/atos/state/db/AtosStateRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/atakmap/android/atos/AtosLifecycle;

    invoke-direct {v0}, Lcom/atakmap/android/atos/AtosLifecycle;-><init>()V

    sput-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

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

.method public static final synthetic access$onHideStaleChanged(Lcom/atakmap/android/atos/AtosLifecycle;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/atakmap/android/atos/AtosLifecycle;->onHideStaleChanged(Ljava/lang/Object;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onManifestVisibleChanged(Lcom/atakmap/android/atos/AtosLifecycle;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/atakmap/android/atos/AtosLifecycle;->onManifestVisibleChanged(Ljava/lang/Object;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final initManifestRepo()V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {}, Lcom/atakmap/android/atos/utilities/AtosFileUtils;->getPluginDir()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "atos_manifest.sqlite"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "here is the manifest database file"

    .line 13
    .line 14
    const-string v2, "AtosLifecycle"

    .line 15
    .line 16
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const-string v1, "org.sqlite.JDBC"

    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;-><init>(Ljava/io/File;)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lcom/atakmap/android/atos/AtosLifecycle;->manifestDatabase:Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;

    .line 30
    .line 31
    new-instance v0, Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 32
    .line 33
    invoke-direct {v0, v1}, Lcom/toughstump/atos/manifest/AtosManifestRepository;-><init>(Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/atakmap/android/atos/AtosLifecycle;->setManifestRepo(Lcom/toughstump/atos/manifest/AtosManifestRepository;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getCurrentManifest()Lcom/toughstump/atos/manifest/AtosManifest;

    .line 44
    .line 45
    .line 46
    const-string v0, "here is the manifest database"

    .line 47
    .line 48
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private final initTagStateRepo()V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {}, Lcom/atakmap/android/atos/utilities/AtosFileUtils;->getPluginDir()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "atos_tag_state.sqlite"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "here is the tag state database file"

    .line 13
    .line 14
    const-string v2, "AtosLifecycle"

    .line 15
    .line 16
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const-string v1, "org.sqlite.JDBC"

    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/toughstump/atos/state/db/AtosTagStateDatabase;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Lcom/toughstump/atos/state/db/AtosTagStateDatabase;-><init>(Ljava/io/File;)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lcom/atakmap/android/atos/AtosLifecycle;->tagStateDatabase:Lcom/toughstump/atos/state/db/AtosTagStateDatabase;

    .line 30
    .line 31
    new-instance v0, Lcom/toughstump/atos/state/db/AtosStateRepository;

    .line 32
    .line 33
    invoke-direct {v0, v1}, Lcom/toughstump/atos/state/db/AtosStateRepository;-><init>(Lcom/toughstump/atos/state/db/IAtosTagStateDatabase;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/atakmap/android/atos/AtosLifecycle;->setTagStateRepository(Lcom/toughstump/atos/state/db/AtosStateRepository;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/atakmap/android/atos/AtosLifecycle;->getTagStateRepository()Lcom/toughstump/atos/state/db/AtosStateRepository;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/toughstump/atos/state/db/AtosStateRepository;->getCurrentFilter()Lcom/toughstump/atos/filter/AtosFilterCriteria;

    .line 44
    .line 45
    .line 46
    const-string v0, "here is the tag state database"

    .line 47
    .line 48
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private final onHideStaleChanged(Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    sget-object p1, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/toughstump/atos/state/AtosStateProvider;->setHideStaleEnabled(Z)V

    .line 4
    .line 5
    .line 6
    const-string p1, "AtosLifecycle"

    .line 7
    .line 8
    const-string p2, "hide stale changed"

    .line 9
    .line 10
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final onManifestVisibleChanged(Ljava/lang/Object;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getCurrentManifest()Lcom/toughstump/atos/manifest/AtosManifest;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p1, v0

    .line 18
    :goto_0
    if-nez p2, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object v0, p1

    .line 22
    :goto_1
    sget-object p1, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/toughstump/atos/state/AtosStateProvider;->setCurrentManifestUid(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string p1, "AtosLifecycle"

    .line 28
    .line 29
    const-string p2, "manifest visible changed"

    .line 30
    .line 31
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final activityStart()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/atakmap/android/atos/AtosLifecycle;->initManifestRepo()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 5
    .line 6
    sget-object v1, Lcom/atakmap/android/atos/AtosLifecycle;->manifestDatabase:Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string v1, "manifestDatabase"

    .line 11
    .line 12
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :cond_0
    invoke-direct {v0, v1}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;-><init>(Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/atakmap/android/atos/AtosLifecycle;->setPreferenceRepository(Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getHideStaleEnabledEvent()Lcom/toughstump/event/Event;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lcom/atakmap/android/atos/AtosLifecycle$activityStart$1;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/atakmap/android/atos/AtosLifecycle$activityStart$1;-><init>(Lcom/atakmap/android/atos/AtosLifecycle;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getOnlyCurrentManifestEnabledEvent()Lcom/toughstump/event/Event;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Lcom/atakmap/android/atos/AtosLifecycle$activityStart$2;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/atakmap/android/atos/AtosLifecycle$activityStart$2;-><init>(Lcom/atakmap/android/atos/AtosLifecycle;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 52
    .line 53
    .line 54
    sget-object v0, Lcom/toughstump/atos/history/TrackRecordingManager;->INSTANCE:Lcom/toughstump/atos/history/TrackRecordingManager;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/toughstump/atos/history/TrackRecordingManager;->start()V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    sput-boolean v0, Lcom/atakmap/android/atos/AtosLifecycle;->isStarted:Z

    .line 61
    .line 62
    return-void
.end method

.method public final getActivityContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->activityContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "activityContext"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getCommandLinkManager()Lcom/atakmap/android/atos/service/CommandLinkManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->commandLinkManager:Lcom/atakmap/android/atos/service/CommandLinkManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "commandLinkManager"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->manifestRepo:Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "manifestRepo"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getPluginContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->pluginContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "pluginContext"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->preferenceRepository:Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "preferenceRepository"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getTagStateRepository()Lcom/toughstump/atos/state/db/AtosStateRepository;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->tagStateRepository:Lcom/toughstump/atos/state/db/AtosStateRepository;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "tagStateRepository"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final isStarted()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/atakmap/android/atos/AtosLifecycle;->isStarted:Z

    .line 2
    .line 3
    return v0
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/atakmap/android/atos/AtosLifecycle;->isStarted:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->onDestroy()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/atakmap/android/atos/AtosLifecycle;->getTagStateRepository()Lcom/toughstump/atos/state/db/AtosStateRepository;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/toughstump/atos/state/db/AtosStateRepository;->onDestroy()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/atakmap/android/atos/AtosLifecycle;->getCommandLinkManager()Lcom/atakmap/android/atos/service/CommandLinkManager;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/atakmap/android/atos/service/CommandLinkManager;->onDestroy()V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosStateProvider;->onDestroy()V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/toughstump/atos/AtosPacketAggregator;->INSTANCE:Lcom/toughstump/atos/AtosPacketAggregator;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/toughstump/atos/AtosPacketAggregator;->stop()V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;->INSTANCE:Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;->onDestroy()V

    .line 38
    .line 39
    .line 40
    sget-object v0, Lcom/toughstump/atos/net/AtosNetworkSwitchboard;->INSTANCE:Lcom/toughstump/atos/net/AtosNetworkSwitchboard;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/toughstump/atos/net/AtosNetworkSwitchboard;->onDestroy()V

    .line 43
    .line 44
    .line 45
    sget-object v0, Lcom/toughstump/atos/dev/AtosDevKotReceiver;->INSTANCE:Lcom/toughstump/atos/dev/AtosDevKotReceiver;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/toughstump/atos/dev/AtosDevKotReceiver;->stop()V

    .line 48
    .line 49
    .line 50
    sget-object v0, Lcom/toughstump/atos/history/TrackRecordingManager;->INSTANCE:Lcom/toughstump/atos/history/TrackRecordingManager;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/toughstump/atos/history/TrackRecordingManager;->stop()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getHideStaleEnabledEvent()Lcom/toughstump/event/Event;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v1, Lcom/atakmap/android/atos/AtosLifecycle$onDestroy$1;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcom/atakmap/android/atos/AtosLifecycle$onDestroy$1;-><init>(Lcom/atakmap/android/atos/AtosLifecycle;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getOnlyCurrentManifestEnabledEvent()Lcom/toughstump/event/Event;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v1, Lcom/atakmap/android/atos/AtosLifecycle$onDestroy$2;

    .line 80
    .line 81
    invoke-direct {v1, p0}, Lcom/atakmap/android/atos/AtosLifecycle$onDestroy$2;-><init>(Lcom/atakmap/android/atos/AtosLifecycle;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final onDestroyActivity()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/atakmap/android/atos/AtosLifecycle;->isStarted:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->onDestroy()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/toughstump/atos/history/TrackRecordingManager;->INSTANCE:Lcom/toughstump/atos/history/TrackRecordingManager;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/toughstump/atos/history/TrackRecordingManager;->stop()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getHideStaleEnabledEvent()Lcom/toughstump/event/Event;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lcom/atakmap/android/atos/AtosLifecycle$onDestroyActivity$1;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/atakmap/android/atos/AtosLifecycle$onDestroyActivity$1;-><init>(Lcom/atakmap/android/atos/AtosLifecycle;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getOnlyCurrentManifestEnabledEvent()Lcom/toughstump/event/Event;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Lcom/atakmap/android/atos/AtosLifecycle$onDestroyActivity$2;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/atakmap/android/atos/AtosLifecycle$onDestroyActivity$2;-><init>(Lcom/atakmap/android/atos/AtosLifecycle;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final onPause()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->onResume()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setActivityContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/atakmap/android/atos/AtosLifecycle;->activityContext:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method

.method public final setCommandLinkManager(Lcom/atakmap/android/atos/service/CommandLinkManager;)V
    .locals 1
    .param p1    # Lcom/atakmap/android/atos/service/CommandLinkManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/atakmap/android/atos/AtosLifecycle;->commandLinkManager:Lcom/atakmap/android/atos/service/CommandLinkManager;

    .line 7
    .line 8
    return-void
.end method

.method public final setManifestRepo(Lcom/toughstump/atos/manifest/AtosManifestRepository;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifestRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/atakmap/android/atos/AtosLifecycle;->manifestRepo:Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 7
    .line 8
    return-void
.end method

.method public final setPluginContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/atakmap/android/atos/AtosLifecycle;->pluginContext:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method

.method public final setPreferenceRepository(Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/atakmap/android/atos/AtosLifecycle;->preferenceRepository:Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 7
    .line 8
    return-void
.end method

.method public final setStarted(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/atakmap/android/atos/AtosLifecycle;->isStarted:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setTagStateRepository(Lcom/toughstump/atos/state/db/AtosStateRepository;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/state/db/AtosStateRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/atakmap/android/atos/AtosLifecycle;->tagStateRepository:Lcom/toughstump/atos/state/db/AtosStateRepository;

    .line 7
    .line 8
    return-void
.end method

.method public final start(Ljava/lang/String;Lkot/KotType;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkot/KotType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "hostUid"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "hostKotType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "hostCallsign"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/atakmap/android/atos/AtosLifecycle;->initTagStateRepo()V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/toughstump/atos/state/AtosStateProvider;->start(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/atakmap/android/atos/AtosLifecycle;->getTagStateRepository()Lcom/toughstump/atos/state/db/AtosStateRepository;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/toughstump/atos/state/AtosStateProvider;->setStateRepo(Lcom/toughstump/atos/state/db/AtosStateRepository;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/atakmap/android/atos/AtosLifecycle;->initManifestRepo()V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 35
    .line 36
    sget-object v1, Lcom/atakmap/android/atos/AtosLifecycle;->manifestDatabase:Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;

    .line 37
    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    const-string v1, "manifestDatabase"

    .line 41
    .line 42
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    :cond_0
    invoke-direct {v0, v1}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;-><init>(Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/atakmap/android/atos/AtosLifecycle;->setPreferenceRepository(Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getHideStaleEnabledEvent()Lcom/toughstump/event/Event;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    new-instance v1, Lcom/atakmap/android/atos/AtosLifecycle$start$1;

    .line 61
    .line 62
    invoke-direct {v1, p0}, Lcom/atakmap/android/atos/AtosLifecycle$start$1;-><init>(Lcom/atakmap/android/atos/AtosLifecycle;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getOnlyCurrentManifestEnabledEvent()Lcom/toughstump/event/Event;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    new-instance v1, Lcom/atakmap/android/atos/AtosLifecycle$start$2;

    .line 77
    .line 78
    invoke-direct {v1, p0}, Lcom/atakmap/android/atos/AtosLifecycle$start$2;-><init>(Lcom/atakmap/android/atos/AtosLifecycle;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 82
    .line 83
    .line 84
    new-instance v0, Lcom/atakmap/android/atos/service/CommandLinkManager;

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/atakmap/android/atos/AtosLifecycle;->getPluginContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p0}, Lcom/atakmap/android/atos/AtosLifecycle;->getActivityContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-direct {v0, v1, v2}, Lcom/atakmap/android/atos/service/CommandLinkManager;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v0}, Lcom/atakmap/android/atos/AtosLifecycle;->setCommandLinkManager(Lcom/atakmap/android/atos/service/CommandLinkManager;)V

    .line 98
    .line 99
    .line 100
    sget-object v0, Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;->INSTANCE:Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;->start()V

    .line 103
    .line 104
    .line 105
    sget-object v0, Lcom/toughstump/atos/AtosPacketAggregator;->INSTANCE:Lcom/toughstump/atos/AtosPacketAggregator;

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {}, Lcom/toughstump/atos/atak/geo/AtakElevationProviderKt;->getElevationProvider()Lcom/toughstump/atos/elev/IAtosElevationManager;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v0, v1, v2}, Lcom/toughstump/atos/AtosPacketAggregator;->start(Lcom/toughstump/atos/manifest/AtosManifestRepository;Lcom/toughstump/atos/elev/IAtosElevationManager;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p1, p2, p3}, Lcom/toughstump/atos/AtosPacketAggregator;->updateDeviceUid(Ljava/lang/String;Lkot/KotType;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sget-object p1, Lcom/toughstump/atos/net/AtosNetworkSwitchboard;->INSTANCE:Lcom/toughstump/atos/net/AtosNetworkSwitchboard;

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/toughstump/atos/net/AtosNetworkSwitchboard;->start()V

    .line 124
    .line 125
    .line 126
    sget-object p1, Lcom/toughstump/atos/dev/AtosDevKotReceiver;->INSTANCE:Lcom/toughstump/atos/dev/AtosDevKotReceiver;

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/toughstump/atos/dev/AtosDevKotReceiver;->start()V

    .line 129
    .line 130
    .line 131
    sget-object p1, Lcom/toughstump/atos/history/TrackRecordingManager;->INSTANCE:Lcom/toughstump/atos/history/TrackRecordingManager;

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/toughstump/atos/history/TrackRecordingManager;->start()V

    .line 134
    .line 135
    .line 136
    const/4 p1, 0x1

    .line 137
    sput-boolean p1, Lcom/atakmap/android/atos/AtosLifecycle;->isStarted:Z

    .line 138
    .line 139
    return-void
.end method
