.class public Lcom/atakmap/android/atos/TagToolMapComponent;
.super Lcom/atakmap/android/dropdown/DropDownMapComponent;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TagToolMapComponent"


# instance fields
.field private _atosDropDownReceiver:Lcom/atakmap/android/atos/ATOSDropDownReceiver;

.field private _mapView:Lcom/atakmap/android/maps/MapView;

.field private _pluginContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/atakmap/android/dropdown/DropDownMapComponent;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/atakmap/android/dropdown/DropDownMapComponent;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCreate(Landroid/content/Context;Landroid/content/Intent;Lcom/atakmap/android/maps/MapView;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/atakmap/android/dropdown/DropDownMapComponent;->onCreate(Landroid/content/Context;Landroid/content/Intent;Lcom/atakmap/android/maps/MapView;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/atakmap/android/atos/TagToolMapComponent;->_pluginContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/atakmap/android/atos/TagToolMapComponent;->_mapView:Lcom/atakmap/android/maps/MapView;

    .line 7
    .line 8
    sget p2, Lcom/atakmap/android/atos/plugin/R$style;->ATAKPluginTheme:I

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->setTheme(I)V

    .line 11
    .line 12
    .line 13
    new-instance p2, Lcom/atakmap/android/atos/utilities/RunnableManager;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/atakmap/android/atos/TagToolMapComponent;->_mapView:Lcom/atakmap/android/maps/MapView;

    .line 16
    .line 17
    invoke-direct {p2, v0}, Lcom/atakmap/android/atos/utilities/RunnableManager;-><init>(Lcom/atakmap/android/maps/MapView;)V

    .line 18
    .line 19
    .line 20
    sget-object p2, Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;->INSTANCE:Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/atakmap/android/atos/TagToolMapComponent;->_pluginContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {p2, v0, p3}, Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;->onCreate(Landroid/content/Context;Lcom/atakmap/android/maps/MapView;)V

    .line 25
    .line 26
    .line 27
    new-instance p2, Lcom/atakmap/android/atos/ATOSDropDownReceiver;

    .line 28
    .line 29
    invoke-direct {p2, p3, p1}, Lcom/atakmap/android/atos/ATOSDropDownReceiver;-><init>(Lcom/atakmap/android/maps/MapView;Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, Lcom/atakmap/android/atos/TagToolMapComponent;->_atosDropDownReceiver:Lcom/atakmap/android/atos/ATOSDropDownReceiver;

    .line 33
    .line 34
    new-instance p2, Lcom/atakmap/android/ipc/AtakBroadcast$DocumentedIntentFilter;

    .line 35
    .line 36
    invoke-direct {p2}, Lcom/atakmap/android/ipc/AtakBroadcast$DocumentedIntentFilter;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v0, "com.atakmap.android.atos.SHOW_DROP_DOWN"

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/atakmap/android/atos/TagToolMapComponent;->_atosDropDownReceiver:Lcom/atakmap/android/atos/ATOSDropDownReceiver;

    .line 45
    .line 46
    invoke-virtual {p0, p1, v0, p2}, Lcom/atakmap/android/dropdown/DropDownMapComponent;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Lcom/atakmap/android/ipc/AtakBroadcast$DocumentedIntentFilter;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1, p3}, Lcom/atakmap/android/atos/TagToolMapComponent;->onResume(Landroid/content/Context;Lcom/atakmap/android/maps/MapView;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method protected onDestroyImpl(Landroid/content/Context;Lcom/atakmap/android/maps/MapView;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;->INSTANCE:Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;->onDestroy()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onPause(Landroid/content/Context;Lcom/atakmap/android/maps/MapView;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/atakmap/android/dropdown/DropDownMapComponent;->onPause(Landroid/content/Context;Lcom/atakmap/android/maps/MapView;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v0, "onPause: "

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string p2, "TagToolMapComponent"

    .line 26
    .line 27
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    sget-object p1, Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;->INSTANCE:Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;->onPause()V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/atakmap/android/atos/TagToolMapComponent;->_atosDropDownReceiver:Lcom/atakmap/android/atos/ATOSDropDownReceiver;

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/atakmap/android/dropdown/DropDownReceiver;->closeDropDown()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public onResume(Landroid/content/Context;Lcom/atakmap/android/maps/MapView;)V
    .locals 2

    .line 1
    const-string v0, "AtosRabManager"

    .line 2
    .line 3
    const-string v1, "resume map"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/atakmap/android/dropdown/DropDownMapComponent;->onResume(Landroid/content/Context;Lcom/atakmap/android/maps/MapView;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;->INSTANCE:Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;->onResume()V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lcom/atakmap/android/atos/AtosLifecycle;->preferenceRepository:Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getDropDownOpen()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    new-instance p1, Landroid/content/Intent;

    .line 25
    .line 26
    const-string p2, "com.atakmap.android.atos.SHOW_DROP_DOWN"

    .line 27
    .line 28
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/atakmap/android/ipc/AtakBroadcast;->a()Lcom/atakmap/android/ipc/AtakBroadcast;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2, p1}, Lcom/atakmap/android/ipc/AtakBroadcast;->a(Landroid/content/Intent;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Context;Lcom/atakmap/android/maps/MapView;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/atakmap/android/dropdown/DropDownMapComponent;->onStart(Landroid/content/Context;Lcom/atakmap/android/maps/MapView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onStop(Landroid/content/Context;Lcom/atakmap/android/maps/MapView;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/atakmap/android/dropdown/DropDownMapComponent;->onStop(Landroid/content/Context;Lcom/atakmap/android/maps/MapView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
