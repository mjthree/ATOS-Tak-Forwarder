.class public final Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "QuickShareManifestDirectoryWatcher"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private active:Z

.field private final directoryWatched:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;->Companion:Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "directoryWatched"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;->directoryWatched:Ljava/io/File;

    .line 10
    .line 11
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;->fileMap:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method private final compareFiles(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;->directoryWatched:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_4

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v3}, Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;->isAtosFile(Ljava/io/File;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_3

    .line 24
    .line 25
    iget-object v4, p0, Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;->fileMap:Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    iget-object v6, p0, Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;->fileMap:Ljava/util/Map;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Ljava/lang/Long;

    .line 56
    .line 57
    if-nez v6, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 61
    .line 62
    .line 63
    move-result-wide v6

    .line 64
    cmp-long v4, v4, v6

    .line 65
    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;->fileMap:Ljava/util/Map;

    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 75
    .line 76
    .line 77
    move-result-wide v6

    .line 78
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    invoke-virtual {p0, v3}, Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;->sendManifestImportedQuickShareIntent(Ljava/io/File;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    return-void
.end method

.method static synthetic compareFiles$default(Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    and-int/2addr p2, p3

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    move p1, p3

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;->compareFiles(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final watchCycle()V
    .locals 3

    .line 1
    :goto_0
    iget-boolean v0, p0, Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;->active:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {p0, v2, v0, v1}, Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;->compareFiles$default(Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;ZILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v0, 0x3e8

    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "QuickShareManifestDirectoryWatcher"

    .line 18
    .line 19
    const-string v1, "Watch Cycle ceased"

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final getActive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;->active:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getDirectoryWatched()Ljava/io/File;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;->directoryWatched:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isAtosFile(Ljava/io/File;)Z
    .locals 4
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "getName(...)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    const/4 v1, 0x0

    .line 17
    const-string v2, "ATOS"

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public final sendManifestImportedQuickShareIntent(Ljava/io/File;)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "manifestZip"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "QuickShareManifestDirectoryWatcher"

    .line 7
    .line 8
    const-string v1, "Sending Intent"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Landroid/content/Intent;

    .line 18
    .line 19
    const-string v1, "com.toughstump.atos.atak.import.MANIFEST_IMPORTED_QUICK_SHARE"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "manifest_file_path"

    .line 25
    .line 26
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "putExtra(...)"

    .line 31
    .line 32
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getActivityContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final setActive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;->active:Z

    .line 2
    .line 3
    return-void
.end method

.method public final startWatching()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;->compareFiles(Z)V

    .line 3
    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;->active:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;->active:Z

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;->watchCycle()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final stopWatching()V
    .locals 2

    .line 1
    const-string v0, "QuickShareManifestDirectoryWatcher"

    .line 2
    .line 3
    const-string v1, "Stopping Watching"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;->active:Z

    .line 10
    .line 11
    return-void
.end method
