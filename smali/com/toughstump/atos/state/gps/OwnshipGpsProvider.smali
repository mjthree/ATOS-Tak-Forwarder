.class public final Lcom/toughstump/atos/state/gps/OwnshipGpsProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/toughstump/atos/state/gps/OwnshipGpsProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static currentOwnshipLocation:Lkot/KotPoint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final gpsOwnshipUpdated:Lcom/toughstump/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/event/Event<",
            "Lkot/KotPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/toughstump/atos/state/gps/OwnshipGpsProvider;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/toughstump/atos/state/gps/OwnshipGpsProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/toughstump/atos/state/gps/OwnshipGpsProvider;->INSTANCE:Lcom/toughstump/atos/state/gps/OwnshipGpsProvider;

    .line 7
    .line 8
    new-instance v0, Lcom/toughstump/event/Event;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/toughstump/event/Event;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/toughstump/atos/state/gps/OwnshipGpsProvider;->gpsOwnshipUpdated:Lcom/toughstump/event/Event;

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


# virtual methods
.method public final getCurrentOwnshipLocation()Lkot/KotPoint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/state/gps/OwnshipGpsProvider;->currentOwnshipLocation:Lkot/KotPoint;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGpsOwnshipUpdated()Lcom/toughstump/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/event/Event<",
            "Lkot/KotPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/state/gps/OwnshipGpsProvider;->gpsOwnshipUpdated:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setCurrentOwnshipLocation(Lkot/KotPoint;)V
    .locals 0
    .param p1    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lcom/toughstump/atos/state/gps/OwnshipGpsProvider;->currentOwnshipLocation:Lkot/KotPoint;

    .line 2
    .line 3
    return-void
.end method

.method public final updateOwnshipLocation(Lkot/KotPoint;)V
    .locals 1
    .param p1    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sput-object p1, Lcom/toughstump/atos/state/gps/OwnshipGpsProvider;->currentOwnshipLocation:Lkot/KotPoint;

    .line 5
    .line 6
    sget-object v0, Lcom/toughstump/atos/state/gps/OwnshipGpsProvider;->gpsOwnshipUpdated:Lcom/toughstump/event/Event;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, p0, p1}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_1
    return-void
.end method
