.class public final Lcom/toughstump/atos/history/TrackRecordingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrackRecordingManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrackRecordingManager.kt\ncom/toughstump/atos/history/TrackRecordingManager\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,167:1\n37#2:168\n36#2,3:169\n1863#3,2:172\n*S KotlinDebug\n*F\n+ 1 TrackRecordingManager.kt\ncom/toughstump/atos/history/TrackRecordingManager\n*L\n127#1:168\n127#1:169,3\n159#1:172,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTrackRecordingManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrackRecordingManager.kt\ncom/toughstump/atos/history/TrackRecordingManager\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,167:1\n37#2:168\n36#2,3:169\n1863#3,2:172\n*S KotlinDebug\n*F\n+ 1 TrackRecordingManager.kt\ncom/toughstump/atos/history/TrackRecordingManager\n*L\n127#1:168\n127#1:169,3\n159#1:172,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/toughstump/atos/history/TrackRecordingManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TrackRecordingManager"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final archiveDeleted:Lcom/toughstump/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/event/Event<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static archiveMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private static currentManifestUid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static trackRecordingDatabase:Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final trackRecordingDatabaseUpdated:Lcom/toughstump/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/event/Event<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/toughstump/atos/history/TrackRecordingManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/toughstump/atos/history/TrackRecordingManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/toughstump/atos/history/TrackRecordingManager;->INSTANCE:Lcom/toughstump/atos/history/TrackRecordingManager;

    .line 7
    .line 8
    new-instance v0, Lcom/toughstump/event/Event;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/toughstump/event/Event;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/toughstump/atos/history/TrackRecordingManager;->trackRecordingDatabaseUpdated:Lcom/toughstump/event/Event;

    .line 14
    .line 15
    new-instance v0, Lcom/toughstump/event/Event;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/toughstump/event/Event;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/toughstump/atos/history/TrackRecordingManager;->archiveDeleted:Lcom/toughstump/event/Event;

    .line 21
    .line 22
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

.method public static synthetic a(Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/toughstump/atos/history/TrackRecordingManager;->getSortedArchiveList$lambda$1(Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$onKotEventsAggregated(Lcom/toughstump/atos/history/TrackRecordingManager;Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/history/TrackRecordingManager;->onKotEventsAggregated(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onManifestUpdated(Lcom/toughstump/atos/history/TrackRecordingManager;Ljava/lang/Object;Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/history/TrackRecordingManager;->onManifestUpdated(Ljava/lang/Object;Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final formatDate(J)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "d MMM yyyy HH:mm"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method private final getSortedArchiveList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/history/TrackRecordingManager;->archiveMap:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "archiveMap"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    new-array v1, v1, [Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, [Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 23
    .line 24
    new-instance v1, Latakplugin/atos/W1;

    .line 25
    .line 26
    invoke-direct {v1}, Latakplugin/atos/W1;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lcom/toughstump/atos/history/TrackRecordingManager$sam$java_util_Comparator$0;

    .line 30
    .line 31
    invoke-direct {v2, v1}, Lcom/toughstump/atos/history/TrackRecordingManager$sam$java_util_Comparator$0;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

.method private static final getSortedArchiveList$lambda$1(Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;->getLastUpdateTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;->getLastUpdateTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    invoke-static {v0, v1, p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private final getTrackArchiveDirectory()Ljava/io/File;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {}, Lcom/atakmap/android/atos/utilities/AtosFileUtils;->getPluginDir()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "archive"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return-object v0
.end method

.method private final initTrackRecordingDatabase()V
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
    const-string v2, "atos_history.sqlite"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "org.sqlite.JDBC"

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;-><init>(Ljava/io/File;)V

    .line 20
    .line 21
    .line 22
    sput-object v1, Lcom/toughstump/atos/history/TrackRecordingManager;->trackRecordingDatabase:Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 23
    .line 24
    return-void
.end method

.method private final onKotEventsAggregated(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 1
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
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/toughstump/atos/record/db/IAtosTrackRecordingDatabaseKt;->toTrackRecord(Lcom/toughstump/atos/kot/AtosKotEvent;)Lcom/toughstump/atos/record/db/TrackRecord;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    monitor-enter p0

    .line 38
    :try_start_0
    sget-object p2, Lcom/toughstump/atos/history/TrackRecordingManager;->trackRecordingDatabase:Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 39
    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;->record(Ljava/util/Collection;)V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    :goto_1
    monitor-exit p0

    .line 51
    sget-object p1, Lcom/toughstump/atos/history/TrackRecordingManager;->trackRecordingDatabaseUpdated:Lcom/toughstump/event/Event;

    .line 52
    .line 53
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 54
    .line 55
    invoke-virtual {p1, p0, p2}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :goto_2
    monitor-exit p0

    .line 60
    throw p1
.end method

.method private final onManifestUpdated(Ljava/lang/Object;Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/toughstump/atos/history/TrackRecordingManager;->currentManifestUid:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p2}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sput-object p1, Lcom/toughstump/atos/history/TrackRecordingManager;->currentManifestUid:Ljava/lang/String;

    .line 19
    .line 20
    sget-object p1, Lcom/toughstump/atos/history/TrackRecordingManager;->trackRecordingDatabase:Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;->getSummary()Lcom/toughstump/atos/record/db/RecordingSummary;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/RecordingSummary;->getRecordCount()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/toughstump/atos/history/TrackRecordingManager;->archiveAndStartNewTrackRecordingDatabase()Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method


# virtual methods
.method public final archiveAndStartNewTrackRecordingDatabase()Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;
    .locals 17
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    invoke-static {}, Lcom/atakmap/android/atos/utilities/AtosFileUtils;->getPluginDir()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "atos_history.sqlite"

    .line 10
    .line 11
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v2, Lcom/toughstump/atos/history/TrackRecordingManager;->INSTANCE:Lcom/toughstump/atos/history/TrackRecordingManager;

    .line 15
    .line 16
    invoke-direct {v2}, Lcom/toughstump/atos/history/TrackRecordingManager;->getTrackArchiveDirectory()Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_0
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    invoke-direct {v2, v3, v4}, Lcom/toughstump/atos/history/TrackRecordingManager;->formatDate(J)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const-string v3, "formatDate(...)"

    .line 42
    .line 43
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v6, " "

    .line 47
    .line 48
    const-string v7, "_"

    .line 49
    .line 50
    const/4 v9, 0x4

    .line 51
    const/4 v10, 0x0

    .line 52
    const/4 v8, 0x0

    .line 53
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    const-string v12, "/"

    .line 58
    .line 59
    const-string v13, "-"

    .line 60
    .line 61
    const/4 v15, 0x4

    .line 62
    const/16 v16, 0x0

    .line 63
    .line 64
    const/4 v14, 0x0

    .line 65
    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const-string v4, ":"

    .line 70
    .line 71
    const-string v5, "_"

    .line 72
    .line 73
    const/4 v7, 0x4

    .line 74
    const/4 v8, 0x0

    .line 75
    const/4 v6, 0x0

    .line 76
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    new-instance v4, Ljava/io/File;

    .line 81
    .line 82
    invoke-direct {v2}, Lcom/toughstump/atos/history/TrackRecordingManager;->getTrackArchiveDirectory()Ljava/io/File;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v6, "atos_history_"

    .line 92
    .line 93
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v6, ".sqlite"

    .line 100
    .line 101
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    move v2, v0

    .line 112
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_1

    .line 117
    .line 118
    new-instance v4, Ljava/io/File;

    .line 119
    .line 120
    sget-object v5, Lcom/toughstump/atos/history/TrackRecordingManager;->INSTANCE:Lcom/toughstump/atos/history/TrackRecordingManager;

    .line 121
    .line 122
    invoke-direct {v5}, Lcom/toughstump/atos/history/TrackRecordingManager;->getTrackArchiveDirectory()Ljava/io/File;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v7, "atos_history_"

    .line 132
    .line 133
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const/16 v7, 0x28

    .line 140
    .line 141
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v7, ").sqlite"

    .line 148
    .line 149
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    add-int/2addr v2, v0

    .line 160
    goto :goto_1

    .line 161
    :cond_1
    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 162
    .line 163
    .line 164
    const/4 v0, 0x0

    .line 165
    sput-object v0, Lcom/toughstump/atos/history/TrackRecordingManager;->trackRecordingDatabase:Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 168
    .line 169
    .line 170
    sget-object v1, Lcom/toughstump/atos/history/TrackRecordingManager;->INSTANCE:Lcom/toughstump/atos/history/TrackRecordingManager;

    .line 171
    .line 172
    invoke-direct {v1}, Lcom/toughstump/atos/history/TrackRecordingManager;->initTrackRecordingDatabase()V

    .line 173
    .line 174
    .line 175
    const-string v2, "org.sqlite.JDBC"

    .line 176
    .line 177
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    new-instance v2, Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 181
    .line 182
    invoke-direct {v2, v4}, Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;-><init>(Ljava/io/File;)V

    .line 183
    .line 184
    .line 185
    sget-object v3, Lcom/toughstump/atos/history/TrackRecordingManager;->archiveMap:Ljava/util/Map;

    .line 186
    .line 187
    if-nez v3, :cond_2

    .line 188
    .line 189
    const-string v3, "archiveMap"

    .line 190
    .line 191
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_2
    move-object v0, v3

    .line 196
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    sget-object v0, Lcom/toughstump/atos/history/TrackRecordingManager;->trackRecordingDatabaseUpdated:Lcom/toughstump/event/Event;

    .line 204
    .line 205
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 206
    .line 207
    invoke-virtual {v0, v1, v3}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    .line 209
    .line 210
    monitor-exit p0

    .line 211
    return-object v2

    .line 212
    :goto_3
    monitor-exit p0

    .line 213
    throw v0
.end method

.method public final deleteArchive(Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;)Z
    .locals 3
    .param p1    # Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "database"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;->getDbFile()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lcom/toughstump/atos/history/TrackRecordingManager;->archiveMap:Ljava/util/Map;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const-string v1, "archiveMap"

    .line 19
    .line 20
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;->getDbFile()Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :try_start_0
    invoke-virtual {p1}, Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;->getDbFile()Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    sget-object p1, Lcom/toughstump/atos/history/TrackRecordingManager;->archiveDeleted:Lcom/toughstump/event/Event;

    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p0, v0}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    return p1

    .line 52
    :catch_0
    const/4 p1, 0x0

    .line 53
    return p1
.end method

.method public final getAllArchives()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/history/TrackRecordingManager;->archiveMap:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_7

    .line 4
    .line 5
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/toughstump/atos/history/TrackRecordingManager;->archiveMap:Ljava/util/Map;

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/toughstump/atos/history/TrackRecordingManager;->getTrackArchiveDirectory()Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/toughstump/atos/history/TrackRecordingManager;->getTrackArchiveDirectory()Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_6

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    array-length v1, v0

    .line 35
    const/4 v2, 0x0

    .line 36
    :goto_0
    if-ge v2, v1, :cond_5

    .line 37
    .line 38
    aget-object v3, v0, v2

    .line 39
    .line 40
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v3}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const-string v5, "sqlite"

    .line 48
    .line 49
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_4

    .line 54
    .line 55
    sget-object v4, Lcom/toughstump/atos/history/TrackRecordingManager;->archiveMap:Ljava/util/Map;

    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    const-string v6, "archiveMap"

    .line 59
    .line 60
    if-nez v4, :cond_2

    .line 61
    .line 62
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    move-object v4, v5

    .line 66
    :cond_2
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_4

    .line 79
    .line 80
    sget-object v4, Lcom/toughstump/atos/history/TrackRecordingManager;->archiveMap:Ljava/util/Map;

    .line 81
    .line 82
    if-nez v4, :cond_3

    .line 83
    .line 84
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    move-object v5, v4

    .line 89
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    new-instance v6, Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 94
    .line 95
    invoke-direct {v6, v3}, Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;-><init>(Ljava/io/File;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_5
    invoke-direct {p0}, Lcom/toughstump/atos/history/TrackRecordingManager;->getSortedArchiveList()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    return-object v0

    .line 109
    :cond_6
    :goto_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    return-object v0

    .line 114
    :cond_7
    invoke-direct {p0}, Lcom/toughstump/atos/history/TrackRecordingManager;->getSortedArchiveList()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    return-object v0
.end method

.method public final getArchiveDeleted()Lcom/toughstump/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/event/Event<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/history/TrackRecordingManager;->archiveDeleted:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTrackRecordingDatabase()Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/history/TrackRecordingManager;->trackRecordingDatabase:Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTrackRecordingDatabaseUpdated()Lcom/toughstump/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/event/Event<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/history/TrackRecordingManager;->trackRecordingDatabaseUpdated:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setTrackRecordingDatabase(Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;)V
    .locals 0
    .param p1    # Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lcom/toughstump/atos/history/TrackRecordingManager;->trackRecordingDatabase:Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 2
    .line 3
    return-void
.end method

.method public final start()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/history/TrackRecordingManager;->initTrackRecordingDatabase()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getCurrentManifest()Lcom/toughstump/atos/manifest/AtosManifest;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    sput-object v1, Lcom/toughstump/atos/history/TrackRecordingManager;->currentManifestUid:Ljava/lang/String;

    .line 23
    .line 24
    sget-object v1, Lcom/toughstump/atos/track/AtosKotEventAggregator;->INSTANCE:Lcom/toughstump/atos/track/AtosKotEventAggregator;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/toughstump/atos/track/AtosKotEventAggregator;->getAtosKotUpdateEvent()Lcom/toughstump/event/Event;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Lcom/toughstump/atos/history/TrackRecordingManager$start$1;

    .line 31
    .line 32
    invoke-direct {v2, p0}, Lcom/toughstump/atos/history/TrackRecordingManager$start$1;-><init>(Lcom/toughstump/atos/history/TrackRecordingManager;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getManifestUpdated()Lcom/toughstump/event/Event;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Lcom/toughstump/atos/history/TrackRecordingManager$start$2;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/toughstump/atos/history/TrackRecordingManager$start$2;-><init>(Lcom/toughstump/atos/history/TrackRecordingManager;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/toughstump/atos/history/TrackRecordingManager;->getAllArchives()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 1
    sget-object v0, Lcom/toughstump/atos/track/AtosKotEventAggregator;->INSTANCE:Lcom/toughstump/atos/track/AtosKotEventAggregator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/track/AtosKotEventAggregator;->getAtosKotUpdateEvent()Lcom/toughstump/event/Event;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/toughstump/atos/history/TrackRecordingManager$stop$1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/toughstump/atos/history/TrackRecordingManager$stop$1;-><init>(Lcom/toughstump/atos/history/TrackRecordingManager;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getManifestUpdated()Lcom/toughstump/event/Event;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lcom/toughstump/atos/history/TrackRecordingManager$stop$2;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/toughstump/atos/history/TrackRecordingManager$stop$2;-><init>(Lcom/toughstump/atos/history/TrackRecordingManager;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
