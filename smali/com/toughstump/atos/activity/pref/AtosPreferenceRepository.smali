.class public final Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DB_KEY_PREFS:Ljava/lang/String; = "ATOS_PREFERENCES"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DB_PREFS_DEFAULT:Ljava/lang/String; = ""
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "AtosPreferenceRepository"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final bluetoothScanEnabledEvent:Lcom/toughstump/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/event/Event<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final database:Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final goTennaDistanceThresholdEvent:Lcom/toughstump/event/Event;
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

.field private final goTennaEnabledEvent:Lcom/toughstump/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/event/Event<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final goTennaRefreshRateEvent:Lcom/toughstump/event/Event;
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

.field private final hideStaleEnabledEvent:Lcom/toughstump/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/event/Event<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final legacyTrackHistoryUidEvent:Lcom/toughstump/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/event/Event<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onlyCurrentManifestEnabledEvent:Lcom/toughstump/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/event/Event<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final preferencesUpdated:Lcom/toughstump/event/Event;
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->Companion:Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;)V
    .locals 11
    .param p1    # Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->database:Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;

    .line 10
    .line 11
    new-instance p1, Lcom/toughstump/event/Event;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/toughstump/event/Event;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->preferencesUpdated:Lcom/toughstump/event/Event;

    .line 17
    .line 18
    new-instance p1, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 19
    .line 20
    const/16 v9, 0xff

    .line 21
    .line 22
    const/4 v10, 0x0

    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x0

    .line 31
    move-object v0, p1

    .line 32
    invoke-direct/range {v0 .. v10}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;-><init>(ZZZZZIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 36
    .line 37
    new-instance p1, Lcom/toughstump/event/Event;

    .line 38
    .line 39
    invoke-direct {p1}, Lcom/toughstump/event/Event;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->bluetoothScanEnabledEvent:Lcom/toughstump/event/Event;

    .line 43
    .line 44
    new-instance p1, Lcom/toughstump/event/Event;

    .line 45
    .line 46
    invoke-direct {p1}, Lcom/toughstump/event/Event;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->hideStaleEnabledEvent:Lcom/toughstump/event/Event;

    .line 50
    .line 51
    new-instance p1, Lcom/toughstump/event/Event;

    .line 52
    .line 53
    invoke-direct {p1}, Lcom/toughstump/event/Event;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->legacyTrackHistoryUidEvent:Lcom/toughstump/event/Event;

    .line 57
    .line 58
    new-instance p1, Lcom/toughstump/event/Event;

    .line 59
    .line 60
    invoke-direct {p1}, Lcom/toughstump/event/Event;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->goTennaEnabledEvent:Lcom/toughstump/event/Event;

    .line 64
    .line 65
    new-instance p1, Lcom/toughstump/event/Event;

    .line 66
    .line 67
    invoke-direct {p1}, Lcom/toughstump/event/Event;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->onlyCurrentManifestEnabledEvent:Lcom/toughstump/event/Event;

    .line 71
    .line 72
    new-instance p1, Lcom/toughstump/event/Event;

    .line 73
    .line 74
    invoke-direct {p1}, Lcom/toughstump/event/Event;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->goTennaRefreshRateEvent:Lcom/toughstump/event/Event;

    .line 78
    .line 79
    new-instance p1, Lcom/toughstump/event/Event;

    .line 80
    .line 81
    invoke-direct {p1}, Lcom/toughstump/event/Event;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->goTennaDistanceThresholdEvent:Lcom/toughstump/event/Event;

    .line 85
    .line 86
    invoke-direct {p0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->loadConfig()V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method private final loadConfig()V
    .locals 3

    .line 1
    const-string v0, "ATOS_PREFERENCES"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->database:Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;

    .line 6
    .line 7
    invoke-interface {v2, v0, v1}, Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    iget-object v2, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->database:Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;

    .line 13
    .line 14
    invoke-interface {v2, v0, v1}, Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    sget-object v0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->Companion:Lcom/toughstump/atos/activity/pref/AtosPrefStruct$Companion;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct$Companion;->fromJson(Ljava/lang/String;)Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->updatePropertyListeners()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private final updateConfig()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->toJson()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->database:Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;

    .line 8
    .line 9
    const-string v2, "ATOS_PREFERENCES"

    .line 10
    .line 11
    invoke-interface {v1, v2, v0}, Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->preferencesUpdated:Lcom/toughstump/event/Event;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->database:Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;

    .line 17
    .line 18
    const-string v3, ""

    .line 19
    .line 20
    invoke-interface {v1, v2, v3}, Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, p0, v1}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private final updatePropertyListeners()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->bluetoothScanEnabledEvent:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getBluetoothEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, p0, v1}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->hideStaleEnabledEvent:Lcom/toughstump/event/Event;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getHideStale()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, p0, v1}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->legacyTrackHistoryUidEvent:Lcom/toughstump/event/Event;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getLegacyTrackHistoryUid()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, p0, v1}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->goTennaEnabledEvent:Lcom/toughstump/event/Event;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getGoTennaEnabled()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, p0, v1}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->onlyCurrentManifestEnabledEvent:Lcom/toughstump/event/Event;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getOnlyCurrentManifestVisible()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, p0, v1}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->goTennaRefreshRateEvent:Lcom/toughstump/event/Event;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getGoTennaRefreshRate()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, p0, v1}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->goTennaDistanceThresholdEvent:Lcom/toughstump/event/Event;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getGoTennaDistanceThreshold()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, p0, v1}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method


# virtual methods
.method public final getAtosPrefs()Lcom/toughstump/atos/activity/pref/AtosPrefStruct;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ATOS_PREFERENCES"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->database:Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;

    .line 6
    .line 7
    invoke-interface {v2, v0, v1}, Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    iget-object v2, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->database:Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;

    .line 13
    .line 14
    invoke-interface {v2, v0, v1}, Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    sget-object v0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->Companion:Lcom/toughstump/atos/activity/pref/AtosPrefStruct$Companion;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct$Companion;->fromJson(Ljava/lang/String;)Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public final getBluetoothScanEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getBluetoothEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getBluetoothScanEnabledEvent()Lcom/toughstump/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/event/Event<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->bluetoothScanEnabledEvent:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getConfig()Lcom/toughstump/atos/activity/pref/AtosPrefStruct;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDropDownOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getDropDownOpen()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getGoTennaDistanceThreshold()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getGoTennaDistanceThreshold()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getGoTennaDistanceThresholdEvent()Lcom/toughstump/event/Event;
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
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->goTennaDistanceThresholdEvent:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGoTennaEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getGoTennaEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getGoTennaEnabledEvent()Lcom/toughstump/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/event/Event<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->goTennaEnabledEvent:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGoTennaRefreshRate()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getGoTennaRefreshRate()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getGoTennaRefreshRateEvent()Lcom/toughstump/event/Event;
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
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->goTennaRefreshRateEvent:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHideStaleEnabledEvent()Lcom/toughstump/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/event/Event<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->hideStaleEnabledEvent:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHideStaleTags()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getHideStale()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getLegacyTrackHistoryUid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getLegacyTrackHistoryUid()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getLegacyTrackHistoryUidEvent()Lcom/toughstump/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/event/Event<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->legacyTrackHistoryUidEvent:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnlyCurrentManifestEnabledEvent()Lcom/toughstump/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/event/Event<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->onlyCurrentManifestEnabledEvent:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnlyCurrentManifestVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getOnlyCurrentManifestVisible()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getPreferenceJsonString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ATOS_PREFERENCES"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->database:Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;

    .line 6
    .line 7
    invoke-interface {v2, v0, v1}, Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    iget-object v2, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->database:Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;

    .line 13
    .line 14
    invoke-interface {v2, v0, v1}, Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-object v1
.end method

.method public final onResume()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->loadConfig()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setAtosPrefs(Lcom/toughstump/atos/activity/pref/AtosPrefStruct;)V
    .locals 3
    .param p1    # Lcom/toughstump/atos/activity/pref/AtosPrefStruct;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->toJson()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->database:Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;

    .line 11
    .line 12
    const-string v1, "ATOS_PREFERENCES"

    .line 13
    .line 14
    invoke-interface {v0, v1, p1}, Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->preferencesUpdated:Lcom/toughstump/event/Event;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->database:Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;

    .line 20
    .line 21
    const-string v2, ""

    .line 22
    .line 23
    invoke-interface {v0, v1, v2}, Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, p0, v0}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final setBluetoothScanEnabled(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getBluetoothEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 11
    .line 12
    const/16 v10, 0xfe

    .line 13
    .line 14
    const/4 v11, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v9, 0x0

    .line 22
    move v2, p1

    .line 23
    invoke-static/range {v1 .. v11}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->copy$default(Lcom/toughstump/atos/activity/pref/AtosPrefStruct;ZZZZZIIZILjava/lang/Object;)Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->updateConfig()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->bluetoothScanEnabledEvent:Lcom/toughstump/event/Event;

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p0, p1}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final setConfig(Lcom/toughstump/atos/activity/pref/AtosPrefStruct;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/activity/pref/AtosPrefStruct;
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
    iput-object p1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 7
    .line 8
    return-void
.end method

.method public final setDropDownOpen(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getDropDownOpen()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 11
    .line 12
    const/16 v10, 0x7f

    .line 13
    .line 14
    const/4 v11, 0x0

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
    const/4 v8, 0x0

    .line 22
    move v9, p1

    .line 23
    invoke-static/range {v1 .. v11}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->copy$default(Lcom/toughstump/atos/activity/pref/AtosPrefStruct;ZZZZZIIZILjava/lang/Object;)Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v1, "Drop Down open = "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v0, "AtosPreferenceRepository"

    .line 47
    .line 48
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->updateConfig()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final setGoTennaDistanceThreshold(I)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getGoTennaDistanceThreshold()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 11
    .line 12
    const/16 v10, 0xbf

    .line 13
    .line 14
    const/4 v11, 0x0

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
    const/4 v9, 0x0

    .line 22
    move v8, p1

    .line 23
    invoke-static/range {v1 .. v11}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->copy$default(Lcom/toughstump/atos/activity/pref/AtosPrefStruct;ZZZZZIIZILjava/lang/Object;)Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->updateConfig()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->goTennaDistanceThresholdEvent:Lcom/toughstump/event/Event;

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p0, p1}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final setGoTennaEnabled(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getGoTennaEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 11
    .line 12
    const/16 v10, 0xf7

    .line 13
    .line 14
    const/4 v11, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v9, 0x0

    .line 22
    move v5, p1

    .line 23
    invoke-static/range {v1 .. v11}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->copy$default(Lcom/toughstump/atos/activity/pref/AtosPrefStruct;ZZZZZIIZILjava/lang/Object;)Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->updateConfig()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->goTennaEnabledEvent:Lcom/toughstump/event/Event;

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p0, p1}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final setGoTennaRefreshRate(I)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getGoTennaRefreshRate()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 11
    .line 12
    const/16 v10, 0xdf

    .line 13
    .line 14
    const/4 v11, 0x0

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
    const/4 v8, 0x0

    .line 21
    const/4 v9, 0x0

    .line 22
    move v7, p1

    .line 23
    invoke-static/range {v1 .. v11}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->copy$default(Lcom/toughstump/atos/activity/pref/AtosPrefStruct;ZZZZZIIZILjava/lang/Object;)Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->updateConfig()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->goTennaRefreshRateEvent:Lcom/toughstump/event/Event;

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p0, p1}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final setHideStaleTags(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getHideStale()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 11
    .line 12
    const/16 v10, 0xfd

    .line 13
    .line 14
    const/4 v11, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v9, 0x0

    .line 22
    move v3, p1

    .line 23
    invoke-static/range {v1 .. v11}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->copy$default(Lcom/toughstump/atos/activity/pref/AtosPrefStruct;ZZZZZIIZILjava/lang/Object;)Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->updateConfig()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->hideStaleEnabledEvent:Lcom/toughstump/event/Event;

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p0, p1}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final setLegacyTrackHistoryUid(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getLegacyTrackHistoryUid()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 11
    .line 12
    const/16 v10, 0xfd

    .line 13
    .line 14
    const/4 v11, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v9, 0x0

    .line 22
    move v3, p1

    .line 23
    invoke-static/range {v1 .. v11}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->copy$default(Lcom/toughstump/atos/activity/pref/AtosPrefStruct;ZZZZZIIZILjava/lang/Object;)Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->updateConfig()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->legacyTrackHistoryUidEvent:Lcom/toughstump/event/Event;

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p0, p1}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final setOnlyCurrentManifestVisible(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getOnlyCurrentManifestVisible()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 11
    .line 12
    const/16 v10, 0xef

    .line 13
    .line 14
    const/4 v11, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v9, 0x0

    .line 22
    move v6, p1

    .line 23
    invoke-static/range {v1 .. v11}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->copy$default(Lcom/toughstump/atos/activity/pref/AtosPrefStruct;ZZZZZIIZILjava/lang/Object;)Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->config:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->updateConfig()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->onlyCurrentManifestEnabledEvent:Lcom/toughstump/event/Event;

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p0, p1}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final setPreferenceJsonString(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->database:Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;

    .line 7
    .line 8
    const-string v1, "ATOS_PREFERENCES"

    .line 9
    .line 10
    invoke-interface {v0, v1, p1}, Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->preferencesUpdated:Lcom/toughstump/event/Event;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->database:Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;

    .line 16
    .line 17
    const-string v2, ""

    .line 18
    .line 19
    invoke-interface {v0, v1, v2}, Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, p0, v0}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final toggleCurrentManifest()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getOnlyCurrentManifestVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->setOnlyCurrentManifestVisible(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final toggleStale()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getHideStaleTags()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->setHideStaleTags(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
