.class public Lcom/atakmap/android/atos/utilities/RunnableManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static _instance:Lcom/atakmap/android/atos/utilities/RunnableManager;


# instance fields
.field private _activity:Landroid/app/Activity;

.field private _mapView:Lcom/atakmap/android/maps/MapView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sput-object p0, Lcom/atakmap/android/atos/utilities/RunnableManager;->_instance:Lcom/atakmap/android/atos/utilities/RunnableManager;

    .line 6
    iput-object p1, p0, Lcom/atakmap/android/atos/utilities/RunnableManager;->_activity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Lcom/atakmap/android/maps/MapView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/atakmap/android/atos/utilities/RunnableManager;->_mapView:Lcom/atakmap/android/maps/MapView;

    .line 3
    sput-object p0, Lcom/atakmap/android/atos/utilities/RunnableManager;->_instance:Lcom/atakmap/android/atos/utilities/RunnableManager;

    return-void
.end method

.method static synthetic access$000(Lcom/atakmap/android/atos/utilities/RunnableManager;)Lcom/atakmap/android/maps/MapView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/atakmap/android/atos/utilities/RunnableManager;->_mapView:Lcom/atakmap/android/maps/MapView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/atakmap/android/atos/utilities/RunnableManager;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/atakmap/android/atos/utilities/RunnableManager;->_activity:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method public static getInstance()Lcom/atakmap/android/atos/utilities/RunnableManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/utilities/RunnableManager;->_instance:Lcom/atakmap/android/atos/utilities/RunnableManager;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/utilities/RunnableManager;->_mapView:Lcom/atakmap/android/maps/MapView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/atakmap/android/atos/utilities/RunnableManager;->_activity:Landroid/app/Activity;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/utilities/RunnableManager;->_mapView:Lcom/atakmap/android/maps/MapView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/atakmap/android/atos/utilities/RunnableManager$1;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/atakmap/android/atos/utilities/RunnableManager$1;-><init>(Lcom/atakmap/android/atos/utilities/RunnableManager;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/atakmap/android/atos/utilities/RunnableManager;->_activity:Landroid/app/Activity;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    new-instance v1, Lcom/atakmap/android/atos/utilities/RunnableManager$2;

    .line 19
    .line 20
    invoke-direct {v1, p0, p1}, Lcom/atakmap/android/atos/utilities/RunnableManager$2;-><init>(Lcom/atakmap/android/atos/utilities/RunnableManager;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method
