.class public final Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "QuickShareManifestConcurrencyManager"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static parentDirectory:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static quickShareDirectory:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static quickShareManifestDirectoryWatcher:Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final watcherThread:Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;->INSTANCE:Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;

    .line 7
    .line 8
    new-instance v0, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager$watcherThread$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager$watcherThread$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;->watcherThread:Ljava/lang/Thread;

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

.method public static final synthetic access$startWatcher(Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;->startWatcher()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final startWatcher()V
    .locals 3

    .line 1
    const-string v0, "starting watcher thread"

    .line 2
    .line 3
    const-string v1, "QuickShareManifestConcurrencyManager"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;->parentDirectory:Ljava/io/File;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string v0, "Null Downloads Directory"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 25
    .line 26
    sget-object v1, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;->parentDirectory:Ljava/io/File;

    .line 27
    .line 28
    const-string v2, "Quick Share"

    .line 29
    .line 30
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;->quickShareDirectory:Ljava/io/File;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 36
    .line 37
    .line 38
    new-instance v0, Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;

    .line 39
    .line 40
    sget-object v1, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;->quickShareDirectory:Ljava/io/File;

    .line 41
    .line 42
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v1}, Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;-><init>(Ljava/io/File;)V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;->quickShareManifestDirectoryWatcher:Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;

    .line 49
    .line 50
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;->startWatching()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private final stopWatcher()V
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;->quickShareManifestDirectoryWatcher:Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;->stopWatching()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final getParentDirectory()Ljava/io/File;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;->parentDirectory:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getQuickShareDirectory()Ljava/io/File;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;->quickShareDirectory:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getQuickShareManifestDirectoryWatcher()Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;->quickShareManifestDirectoryWatcher:Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWatcherThread()Ljava/lang/Thread;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;->watcherThread:Ljava/lang/Thread;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setParentDirectory(Ljava/io/File;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;->parentDirectory:Ljava/io/File;

    .line 2
    .line 3
    return-void
.end method

.method public final setQuickShareDirectory(Ljava/io/File;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;->quickShareDirectory:Ljava/io/File;

    .line 2
    .line 3
    return-void
.end method

.method public final setQuickShareManifestDirectoryWatcher(Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;)V
    .locals 0
    .param p1    # Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;->quickShareManifestDirectoryWatcher:Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;

    .line 2
    .line 3
    return-void
.end method

.method public final start()V
    .locals 2

    .line 1
    const-string v0, "QuickShareManifestConcurrencyManager"

    .line 2
    .line 3
    const-string v1, "starting handler"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;->watcherThread:Ljava/lang/Thread;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    const-string v0, "QuickShareManifestConcurrencyManager"

    .line 2
    .line 3
    const-string v1, "stopping watcher thread"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;->quickShareManifestDirectoryWatcher:Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/toughstump/atos/atak/import/QuickShareManifestDirectoryWatcher;->setActive(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object v0, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;->watcherThread:Ljava/lang/Thread;

    .line 17
    .line 18
    const-wide/16 v1, 0x7d0

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
