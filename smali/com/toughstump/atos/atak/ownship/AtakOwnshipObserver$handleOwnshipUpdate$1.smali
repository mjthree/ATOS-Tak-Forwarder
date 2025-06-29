.class final Lcom/toughstump/atos/atak/ownship/AtakOwnshipObserver$handleOwnshipUpdate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/atak/ownship/AtakOwnshipObserver;->handleOwnshipUpdate(Lcom/atakmap/android/maps/ar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $geoPoint:Lcom/atakmap/coremap/maps/coords/GeoPoint;


# direct methods
.method constructor <init>(Lcom/atakmap/coremap/maps/coords/GeoPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/toughstump/atos/atak/ownship/AtakOwnshipObserver$handleOwnshipUpdate$1;->$geoPoint:Lcom/atakmap/coremap/maps/coords/GeoPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    const-string v0, "AtosOwnshipObserver"

    .line 2
    .line 3
    const-string v1, "updating ownship "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/toughstump/atos/state/gps/OwnshipGpsProvider;->INSTANCE:Lcom/toughstump/atos/state/gps/OwnshipGpsProvider;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/toughstump/atos/atak/ownship/AtakOwnshipObserver$handleOwnshipUpdate$1;->$geoPoint:Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/toughstump/atos/atak/ownship/AtakOwnshipObserverKt;->toKotPoint(Lcom/atakmap/coremap/maps/coords/GeoPoint;)Lkot/KotPoint;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/toughstump/atos/state/gps/OwnshipGpsProvider;->updateOwnshipLocation(Lkot/KotPoint;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
