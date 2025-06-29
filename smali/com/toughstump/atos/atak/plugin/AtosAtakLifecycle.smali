.class public final Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final detailHandler:Lcom/toughstump/atos/atak/cot/AtosCotDetailHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static manifestImportStrategy:Lcom/toughstump/atos/atak/import/ManifestImportStrategy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static manifestImportedBroadcastReceiver:Lcom/toughstump/atos/atak/import/ManifestImportedBroadcastReceiver;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static mapInteractions:Lcom/toughstump/atos/atak/map/IAtakMapInteractions;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;->INSTANCE:Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;

    .line 7
    .line 8
    new-instance v0, Lcom/toughstump/atos/atak/import/ManifestImportStrategy;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/toughstump/atos/atak/import/ManifestImportStrategy;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;->manifestImportStrategy:Lcom/toughstump/atos/atak/import/ManifestImportStrategy;

    .line 14
    .line 15
    new-instance v0, Lcom/toughstump/atos/atak/cot/AtosCotDetailHandler;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/toughstump/atos/atak/cot/AtosCotDetailHandler;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;->detailHandler:Lcom/toughstump/atos/atak/cot/AtosCotDetailHandler;

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


# virtual methods
.method public final getMapInteractions()Lcom/toughstump/atos/atak/map/IAtakMapInteractions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;->mapInteractions:Lcom/toughstump/atos/atak/map/IAtakMapInteractions;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onCreate(Landroid/content/Context;Lcom/atakmap/android/maps/MapView;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/atakmap/android/maps/MapView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant",
            "UnspecifiedRegisterReceiverFlag"
        }
    .end annotation

    .line 1
    const-string v0, "pluginContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mapView"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/atakmap/android/atos/AtosLifecycle;->setActivityContext(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/atakmap/android/atos/AtosLifecycle;->setPluginContext(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    sget-object v1, Lcom/atakmap/android/atos/pref/AtakPrefs;->INSTANCE:Lcom/atakmap/android/atos/pref/AtakPrefs;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/atakmap/android/atos/pref/AtakPrefs;->start()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/atakmap/android/atos/pref/AtakPrefs;->getDeviceUid()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1}, Lcom/atakmap/android/atos/pref/AtakPrefs;->getDeviceKotType()Lkot/KotType;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v1}, Lcom/atakmap/android/atos/pref/AtakPrefs;->getDeviceCallsign()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v2, v3, v1}, Lcom/atakmap/android/atos/AtosLifecycle;->start(Ljava/lang/String;Lkot/KotType;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 44
    .line 45
    sget-object v1, Lcom/atakmap/android/atos/calc/CoordinateCalculator;->INSTANCE:Lcom/atakmap/android/atos/calc/CoordinateCalculator;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/toughstump/atos/state/AtosStateProvider;->setCoordinateCalculator(Lcom/toughstump/atos/calc/ICoordinateCalculator;)V

    .line 48
    .line 49
    .line 50
    sget-object v0, Lcom/toughstump/atos/atak/ownship/AtakOwnshipObserver;->INSTANCE:Lcom/toughstump/atos/atak/ownship/AtakOwnshipObserver;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/toughstump/atos/atak/ownship/AtakOwnshipObserver;->start()V

    .line 53
    .line 54
    .line 55
    sget-object v0, Lcom/toughstump/atos/atak/observer/AtakAtosObserver;->INSTANCE:Lcom/toughstump/atos/atak/observer/AtakAtosObserver;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/toughstump/atos/atak/observer/AtakAtosObserver;->start()V

    .line 58
    .line 59
    .line 60
    sget-object v0, Lcom/toughstump/atos/atak/map/MapItemTailor;->INSTANCE:Lcom/toughstump/atos/atak/map/MapItemTailor;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lcom/toughstump/atos/atak/map/MapItemTailor;->start(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Latak/core/ao;->a()Latak/core/ao;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sget-object v1, Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;->detailHandler:Lcom/toughstump/atos/atak/cot/AtosCotDetailHandler;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Latak/core/ao;->a(Latak/core/an;)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/atakmap/android/importexport/ImportExportMapComponent;->a()Lcom/atakmap/android/importexport/ImportExportMapComponent;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sget-object v1, Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;->manifestImportStrategy:Lcom/toughstump/atos/atak/import/ManifestImportStrategy;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/atakmap/android/importexport/ImportExportMapComponent;->a(Latak/core/lk;)V

    .line 81
    .line 82
    .line 83
    sget-object v0, Lcom/toughstump/atos/track/ActiveTrackCountProvider;->INSTANCE:Lcom/toughstump/atos/track/ActiveTrackCountProvider;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/toughstump/atos/track/ActiveTrackCountProvider;->start()V

    .line 86
    .line 87
    .line 88
    sget-object v0, Lcom/atakmap/android/atos/detail/AtosCotDetailViewEnabler;->INSTANCE:Lcom/atakmap/android/atos/detail/AtosCotDetailViewEnabler;

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Lcom/atakmap/android/atos/detail/AtosCotDetailViewEnabler;->start(Landroid/content/Context;)V

    .line 91
    .line 92
    .line 93
    new-instance p1, Lcom/toughstump/atos/atak/import/ManifestImportedBroadcastReceiver;

    .line 94
    .line 95
    invoke-direct {p1}, Lcom/toughstump/atos/atak/import/ManifestImportedBroadcastReceiver;-><init>()V

    .line 96
    .line 97
    .line 98
    sput-object p1, Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;->manifestImportedBroadcastReceiver:Lcom/toughstump/atos/atak/import/ManifestImportedBroadcastReceiver;

    .line 99
    .line 100
    new-instance p1, Landroid/content/IntentFilter;

    .line 101
    .line 102
    const-string v0, "com.toughstump.atos.atak.import.MANIFEST_IMPORTED_QUICK_SHARE"

    .line 103
    .line 104
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 108
    .line 109
    const/16 v1, 0x1a

    .line 110
    .line 111
    if-lt v0, v1, :cond_0

    .line 112
    .line 113
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    sget-object v0, Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;->manifestImportedBroadcastReceiver:Lcom/toughstump/atos/atak/import/ManifestImportedBroadcastReceiver;

    .line 118
    .line 119
    const/4 v1, 0x2

    .line 120
    invoke-static {p2, v0, p1, v1}, Latakplugin/atos/t;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_0
    const-string v0, "AtosAtakLifecycle"

    .line 125
    .line 126
    const-string v1, "Old Android Version, not specifying exported in intent filter"

    .line 127
    .line 128
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    sget-object v0, Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;->manifestImportedBroadcastReceiver:Lcom/toughstump/atos/atak/import/ManifestImportedBroadcastReceiver;

    .line 136
    .line 137
    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    .line 139
    .line 140
    :goto_0
    sget-object p1, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;->INSTANCE:Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;

    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;->start()V

    .line 143
    .line 144
    .line 145
    sget-object p1, Lcom/toughstump/atos/atak/map/AtakMapInteractions;->INSTANCE:Lcom/toughstump/atos/atak/map/AtakMapInteractions;

    .line 146
    .line 147
    sput-object p1, Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;->mapInteractions:Lcom/toughstump/atos/atak/map/IAtakMapInteractions;

    .line 148
    .line 149
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->onDestroy()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/toughstump/atos/atak/ownship/AtakOwnshipObserver;->INSTANCE:Lcom/toughstump/atos/atak/ownship/AtakOwnshipObserver;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/toughstump/atos/atak/ownship/AtakOwnshipObserver;->stop()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/toughstump/atos/atak/observer/AtakAtosObserver;->INSTANCE:Lcom/toughstump/atos/atak/observer/AtakAtosObserver;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/toughstump/atos/atak/observer/AtakAtosObserver;->stop()V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/toughstump/atos/atak/map/MapItemTailor;->INSTANCE:Lcom/toughstump/atos/atak/map/MapItemTailor;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/toughstump/atos/atak/map/MapItemTailor;->stop()V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/atakmap/android/maps/MapView;->getMapView()Lcom/atakmap/android/maps/MapView;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v1, Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;->manifestImportedBroadcastReceiver:Lcom/toughstump/atos/atak/import/ManifestImportedBroadcastReceiver;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;->INSTANCE:Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;->stop()V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Latak/core/ao;->a()Latak/core/ao;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v1, Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;->detailHandler:Lcom/toughstump/atos/atak/cot/AtosCotDetailHandler;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Latak/core/ao;->b(Latak/core/an;)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/atakmap/android/importexport/ImportExportMapComponent;->a()Lcom/atakmap/android/importexport/ImportExportMapComponent;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sget-object v1, Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;->manifestImportStrategy:Lcom/toughstump/atos/atak/import/ManifestImportStrategy;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/atakmap/android/importexport/ImportExportMapComponent;->b(Latak/core/lk;)V

    .line 55
    .line 56
    .line 57
    sget-object v0, Lcom/toughstump/atos/track/ActiveTrackCountProvider;->INSTANCE:Lcom/toughstump/atos/track/ActiveTrackCountProvider;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/toughstump/atos/track/ActiveTrackCountProvider;->onDestroy()V

    .line 60
    .line 61
    .line 62
    sget-object v0, Lcom/atakmap/android/atos/detail/AtosCotDetailViewEnabler;->INSTANCE:Lcom/atakmap/android/atos/detail/AtosCotDetailViewEnabler;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/atakmap/android/atos/detail/AtosCotDetailViewEnabler;->stop()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->onPause()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->INSTANCE:Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->stop()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->onResume()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->INSTANCE:Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->start()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setMapInteractions(Lcom/toughstump/atos/atak/map/IAtakMapInteractions;)V
    .locals 0
    .param p1    # Lcom/toughstump/atos/atak/map/IAtakMapInteractions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;->mapInteractions:Lcom/toughstump/atos/atak/map/IAtakMapInteractions;

    .line 2
    .line 3
    return-void
.end method
