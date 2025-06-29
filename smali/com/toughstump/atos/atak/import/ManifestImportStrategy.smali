.class public final Lcom/toughstump/atos/atak/import/ManifestImportStrategy;
.super Latak/core/ky;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/atak/import/ManifestImportStrategy$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/atak/import/ManifestImportStrategy$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EXTENSION:Ljava/lang/String; = ".atos"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FILE_NAME:Ljava/lang/String; = "ATOS Tag Manifest"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FOLDER_NAME:Ljava/lang/String; = "atos"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AtosManifestImport"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final onManifestQuickShareImported:Lcom/toughstump/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/event/Event<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/toughstump/atos/atak/import/ManifestImportStrategy$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/toughstump/atos/atak/import/ManifestImportStrategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/toughstump/atos/atak/import/ManifestImportStrategy;->Companion:Lcom/toughstump/atos/atak/import/ManifestImportStrategy$Companion;

    .line 8
    .line 9
    new-instance v0, Lcom/toughstump/event/Event;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/toughstump/event/Event;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/toughstump/atos/atak/import/ManifestImportStrategy;->onManifestQuickShareImported:Lcom/toughstump/event/Event;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    const/4 v5, 0x1

    .line 2
    const-string v6, "ATOS Tag Manifest"

    .line 3
    .line 4
    const-string v1, ".atos"

    .line 5
    .line 6
    const-string v2, "atos"

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    move-object v0, p0

    .line 11
    invoke-direct/range {v0 .. v6}, Latak/core/ky;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/toughstump/atos/atak/import/ManifestImportStrategy;->onManifestQuickShareImported:Lcom/toughstump/event/Event;

    .line 15
    .line 16
    new-instance v1, Lcom/toughstump/atos/atak/import/ManifestImportStrategy$1;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/toughstump/atos/atak/import/ManifestImportStrategy$1;-><init>(Lcom/toughstump/atos/atak/import/ManifestImportStrategy;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static final synthetic access$getOnManifestQuickShareImported$cp()Lcom/toughstump/event/Event;
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/atak/import/ManifestImportStrategy;->onManifestQuickShareImported:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$onManifestQuickShareImported(Lcom/toughstump/atos/atak/import/ManifestImportStrategy;Ljava/lang/Object;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/atak/import/ManifestImportStrategy;->onManifestQuickShareImported(Ljava/lang/Object;Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$showImportDialog(Lcom/toughstump/atos/atak/import/ManifestImportStrategy;Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/atak/import/ManifestImportStrategy;->showImportDialog(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final importFile(Ljava/io/File;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/atakmap/coremap/filesystem/FileSystemUtils;->read(Ljava/io/File;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "read(...)"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    const-string v1, "UTF_8"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lcom/toughstump/atos/manifest/AtosManifest;->Companion:Lcom/toughstump/atos/manifest/AtosManifest$Companion;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lcom/toughstump/atos/manifest/AtosManifest$Companion;->fromJson(Ljava/lang/String;)Lcom/toughstump/atos/manifest/AtosManifest;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    invoke-static {}, Lcom/atakmap/android/atos/utilities/RunnableManager;->getInstance()Lcom/atakmap/android/atos/utilities/RunnableManager;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "failed to parse ATOS Manifest"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/atakmap/android/atos/utilities/RunnableManager;->toast(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    return p1

    .line 41
    :cond_0
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->importManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/atakmap/android/atos/utilities/RunnableManager;->getInstance()Lcom/atakmap/android/atos/utilities/RunnableManager;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Lcom/toughstump/atos/atak/import/ManifestImportStrategy$importFile$1;

    .line 55
    .line 56
    invoke-direct {v1, p0, p1}, Lcom/toughstump/atos/atak/import/ManifestImportStrategy$importFile$1;-><init>(Lcom/toughstump/atos/atak/import/ManifestImportStrategy;Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/atakmap/android/atos/utilities/RunnableManager;->post(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    return p1
.end method

.method private final onManifestQuickShareImported(Ljava/lang/Object;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/toughstump/atos/atak/import/ManifestImportStrategy;->beginImport(Ljava/io/File;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final showImportDialog(Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestImportDialog;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestImportDialog;-><init>(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestImportDialog;->show()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public beginImport(Ljava/io/File;)Z
    .locals 3
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "Attempting to read ATOS File"

    const-string v1, "AtosManifestImport"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :try_start_0
    invoke-direct {p0, p1}, Lcom/toughstump/atos/atak/import/ManifestImportStrategy;->importFile(Ljava/io/File;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 8
    invoke-static {v0}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    invoke-super {p0, p1}, Latak/core/ky;->beginImport(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public beginImport(Ljava/io/File;Ljava/util/Set;)Z
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "+",
            "Latak/core/lk$a;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "AtosManifestImport"

    const-string v1, "Attempting to read ATOS File"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/toughstump/atos/atak/export/MissionPackageExporter;->INSTANCE:Lcom/toughstump/atos/atak/export/MissionPackageExporter;

    invoke-virtual {v1}, Lcom/toughstump/atos/atak/export/MissionPackageExporter;->getLastSentFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/toughstump/atos/atak/import/ManifestImportStrategy;->importFile(Ljava/io/File;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    invoke-super {p0, p1, p2}, Latak/core/ky;->beginImport(Ljava/io/File;Ljava/util/Set;)Z

    move-result p1

    return p1
.end method

.method public match(Ljava/io/File;)Z
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/atakmap/android/atos/utilities/AtosFileUtils;->getExtension(Ljava/io/File;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "atos"

    .line 6
    .line 7
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
