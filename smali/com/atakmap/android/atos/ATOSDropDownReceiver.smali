.class public Lcom/atakmap/android/atos/ATOSDropDownReceiver;
.super Lcom/atakmap/android/dropdown/DropDownReceiver;
.source "SourceFile"

# interfaces
.implements Lcom/atakmap/android/dropdown/a$b;


# static fields
.field public static final FAKE_BACK_PRESS:Ljava/lang/String; = "com.atakmap.android.atos.FAKE_BACK_PRESS"

.field public static final SHOW_DROP_DOWN:Ljava/lang/String; = "com.atakmap.android.atos.SHOW_DROP_DOWN"

.field private static final TAG:Ljava/lang/String; = "ATOSDropDownReceiver"


# instance fields
.field private final _inflater:Landroid/view/LayoutInflater;

.field private final _mapView:Lcom/atakmap/android/maps/MapView;

.field private final _parentFragment:Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;

.field private _pluginContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/atakmap/android/maps/MapView;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/atakmap/android/dropdown/DropDownReceiver;-><init>(Lcom/atakmap/android/maps/MapView;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/atakmap/android/atos/ATOSDropDownReceiver;->_pluginContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string v0, "layout_inflater"

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/view/LayoutInflater;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/atakmap/android/atos/ATOSDropDownReceiver;->_inflater:Landroid/view/LayoutInflater;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/atakmap/android/atos/ATOSDropDownReceiver;->_mapView:Lcom/atakmap/android/maps/MapView;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/atakmap/android/atos/ATOSDropDownReceiver;->_pluginContext:Landroid/content/Context;

    .line 19
    .line 20
    new-instance p2, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/atakmap/android/atos/ATOSDropDownReceiver;->_pluginContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p2, v0, p1}, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    iput-object p2, p0, Lcom/atakmap/android/atos/ATOSDropDownReceiver;->_parentFragment:Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;

    .line 32
    .line 33
    return-void
.end method

.method public static getBackButtonIntent()Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.atakmap.android.atos.SHOW_DROP_DOWN"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "com.atakmap.android.atos.FAKE_BACK_PRESS"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static getTrackHistoryIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v0, "com.atakmap.android.atos.SHOW_DROP_DOWN"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method


# virtual methods
.method protected disposeImpl()V
    .locals 0

    return-void
.end method

.method protected onBackButtonPressed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/ATOSDropDownReceiver;->_parentFragment:Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->handleBackButton()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->preferenceRepository:Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->setDropDownOpen(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/atakmap/android/dropdown/DropDownReceiver;->closeDropDown()V

    .line 18
    .line 19
    .line 20
    return v1
.end method

.method public onDropDownClose()V
    .locals 0

    return-void
.end method

.method public onDropDownSelectionRemoved()V
    .locals 0

    return-void
.end method

.method public onDropDownSizeChanged(DD)V
    .locals 0

    return-void
.end method

.method public onDropDownVisible(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onDropDownVisible is "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "ATOSDropDownReceiver"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/atakmap/coremap/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/atakmap/android/atos/ATOSDropDownReceiver;->_parentFragment:Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->onDropDownVisible(Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 1
    const-string p1, "ATOSDropDownReceiver"

    .line 2
    .line 3
    const-string v0, "showing plugin template drop down"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/atakmap/coremap/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "com.atakmap.android.atos.SHOW_DROP_DOWN"

    .line 13
    .line 14
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const-string p1, "com.atakmap.android.atos.FAKE_BACK_PRESS"

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/atakmap/android/atos/ATOSDropDownReceiver;->onBackButtonPressed()Z

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    sget-object p1, Lcom/atakmap/android/atos/AtosLifecycle;->preferenceRepository:Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 33
    .line 34
    const/4 p2, 0x1

    .line 35
    invoke-virtual {p1, p2}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->setDropDownOpen(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/atakmap/android/atos/ATOSDropDownReceiver;->_parentFragment:Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;

    .line 39
    .line 40
    const/4 v10, 0x0

    .line 41
    const/4 v11, 0x1

    .line 42
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 43
    .line 44
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 45
    .line 46
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 47
    .line 48
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 49
    .line 50
    move-object v0, p0

    .line 51
    move-object v12, p0

    .line 52
    invoke-virtual/range {v0 .. v12}, Lcom/atakmap/android/dropdown/DropDownReceiver;->showDropDown(Landroidx/fragment/app/Fragment;DDDDZZLcom/atakmap/android/dropdown/a$b;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method
