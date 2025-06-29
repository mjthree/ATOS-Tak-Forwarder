.class public final Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefLifecycle;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefLifecycle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static database:Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;

.field private static preferenceRepo:Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefLifecycle;

    invoke-direct {v0}, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefLifecycle;-><init>()V

    sput-object v0, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefLifecycle;->INSTANCE:Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefLifecycle;

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

.method private final initManifestDatabase()V
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
    const-string v1, "org.sqlite.JDBC"

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;-><init>(Ljava/io/File;)V

    .line 20
    .line 21
    .line 22
    sput-object v1, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefLifecycle;->database:Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final getPreferenceRepo()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefLifecycle;->preferenceRepo:Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setPreferenceRepo(Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;)V
    .locals 0
    .param p1    # Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefLifecycle;->preferenceRepo:Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 2
    .line 3
    return-void
.end method

.method public final start()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefLifecycle;->initManifestDatabase()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 5
    .line 6
    sget-object v1, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefLifecycle;->database:Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string v1, "database"

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
    sput-object v0, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefLifecycle;->preferenceRepo:Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 20
    .line 21
    return-void
.end method
