.class public final Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkot/KotEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTakRouteKotEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TakRouteKotEvent.kt\ncom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent\n+ 2 KotDetail.kt\nkot/KotDetailKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,284:1\n29#2:285\n37#2:306\n764#3:286\n855#3,2:287\n1611#3,9:289\n1863#3:298\n1864#3:300\n1620#3:301\n1557#3:302\n1628#3,3:303\n286#3,2:307\n1#4:299\n*S KotlinDebug\n*F\n+ 1 TakRouteKotEvent.kt\ncom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent\n*L\n47#1:285\n25#1:306\n47#1:286\n47#1:287,2\n48#1:289,9\n48#1:298\n48#1:300\n48#1:301\n53#1:302\n53#1:303,3\n25#1:307,2\n48#1:299\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTakRouteKotEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TakRouteKotEvent.kt\ncom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent\n+ 2 KotDetail.kt\nkot/KotDetailKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,284:1\n29#2:285\n37#2:306\n764#3:286\n855#3,2:287\n1611#3,9:289\n1863#3:298\n1864#3:300\n1620#3:301\n1557#3:302\n1628#3,3:303\n286#3,2:307\n1#4:299\n*S KotlinDebug\n*F\n+ 1 TakRouteKotEvent.kt\ncom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent\n*L\n47#1:285\n25#1:306\n47#1:286\n47#1:287,2\n48#1:289,9\n48#1:298\n48#1:300\n48#1:301\n53#1:302\n53#1:303,3\n25#1:307,2\n48#1:299\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DetailTakRouteInfo:Ljava/lang/String; = "__routeinfo"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DetailTakRouteNavCues:Ljava/lang/String; = "__navcues"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TakRouteCotType:Ljava/lang/String; = "b-m-r"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TakRoutePointTypeControlPoint:Ljava/lang/String; = "b-m-p-c"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TakRoutePointTypeWayPoint:Ljava/lang/String; = "b-m-p-w"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final event:Lkot/KotEvent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final points$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final routeAttributes$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->Companion:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent$Companion;

    return-void
.end method

.method private constructor <init>(Lkot/KotEvent;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->event:Lkot/KotEvent;

    .line 3
    new-instance p1, Latakplugin/atos/S1;

    invoke-direct {p1, p0}, Latakplugin/atos/S1;-><init>(Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->points$delegate:Lkotlin/Lazy;

    .line 4
    new-instance p1, Latakplugin/atos/T1;

    invoke-direct {p1, p0}, Latakplugin/atos/T1;-><init>(Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->routeAttributes$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Lkot/KotEvent;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;-><init>(Lkot/KotEvent;)V

    return-void
.end method

.method public static synthetic a(Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;)Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->routeAttributes_delegate$lambda$2(Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;)Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->points_delegate$lambda$0(Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static final newTakRouteEvent(Lkot/KotEvent;)Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;
    .locals 1
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->Companion:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent$Companion;

    invoke-virtual {v0, p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent$Companion;->newTakRouteEvent(Lkot/KotEvent;)Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;

    move-result-object p0

    return-object p0
.end method

.method public static final newTakRouteEventOrNull(Lkot/KotEvent;)Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;
    .locals 1
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->Companion:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent$Companion;

    invoke-virtual {v0, p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent$Companion;->newTakRouteEventOrNull(Lkot/KotEvent;)Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;

    move-result-object p0

    return-object p0
.end method

.method private final parseTakRoutePoints(Lkot/KotDetail;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkot/KotDetail;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/activity/ui/frag/track/map/TakRoutePoint;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lkot/KotDetail;->getChildren()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v2, v1

    .line 25
    check-cast v2, Lkot/KotDetail;

    .line 26
    .line 27
    invoke-virtual {v2}, Lkot/KotDetail;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "link"

    .line 32
    .line 33
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lkot/KotDetail;

    .line 63
    .line 64
    sget-object v2, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRoutePoint;->Companion:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRoutePoint$Companion;

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRoutePoint$Companion;->parseTakRoutePoint(Lkot/KotDetail;)Lcom/toughstump/atos/activity/ui/frag/track/map/TakRoutePoint;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    return-object p1
.end method

.method private static final points_delegate$lambda$0(Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;)Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->getDetail()Lkot/KotDetail;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->parseTakRoutePoints(Lkot/KotDetail;)Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static final routeAttributes_delegate$lambda$2(Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;)Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->getDetail()Lkot/KotDetail;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lkot/KotDetail;->getChildren()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    move-object v2, v0

    .line 25
    check-cast v2, Lkot/KotDetail;

    .line 26
    .line 27
    invoke-virtual {v2}, Lkot/KotDetail;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "link_attr"

    .line 32
    .line 33
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v0, v1

    .line 41
    :goto_0
    check-cast v0, Lkot/KotDetail;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    sget-object p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->Companion:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes$Companion;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes$Companion;->parseTakRouteAttributes(Lkot/KotDetail;)Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :cond_2
    return-object v1
.end method


# virtual methods
.method public final calculateRealCenter()Lkot/KotPoint;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->getPoints()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->getPoints()Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    const/16 v2, 0xa

    .line 19
    .line 20
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRoutePoint;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRoutePoint;->getPoint()Lkot/KotPoint;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-static {v1}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEventKt;->center3D(Ljava/util/Collection;)Lkot/KotPoint;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method

.method public getAccess()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->event:Lkot/KotEvent;

    invoke-interface {v0}, Lkot/KotEvent;->getAccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetail()Lkot/KotDetail;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->event:Lkot/KotEvent;

    invoke-interface {v0}, Lkot/KotEvent;->getDetail()Lkot/KotDetail;

    move-result-object v0

    return-object v0
.end method

.method public getHow()Lkot/How;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->event:Lkot/KotEvent;

    invoke-interface {v0}, Lkot/KotEvent;->getHow()Lkot/How;

    move-result-object v0

    return-object v0
.end method

.method public getOpex()Lkot/Opex;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->event:Lkot/KotEvent;

    invoke-interface {v0}, Lkot/KotEvent;->getOpex()Lkot/Opex;

    move-result-object v0

    return-object v0
.end method

.method public getPoint()Lkot/KotPoint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->event:Lkot/KotEvent;

    invoke-interface {v0}, Lkot/KotEvent;->getPoint()Lkot/KotPoint;

    move-result-object v0

    return-object v0
.end method

.method public final getPoints()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/activity/ui/frag/track/map/TakRoutePoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->points$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Collection;

    .line 8
    .line 9
    return-object v0
.end method

.method public getQos()Lkot/Qos;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->event:Lkot/KotEvent;

    invoke-interface {v0}, Lkot/KotEvent;->getQos()Lkot/Qos;

    move-result-object v0

    return-object v0
.end method

.method public final getRouteAttributes()Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->routeAttributes$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;

    .line 8
    .line 9
    return-object v0
.end method

.method public getStale()Lkot/KotTime;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->event:Lkot/KotEvent;

    invoke-interface {v0}, Lkot/KotEvent;->getStale()Lkot/KotTime;

    move-result-object v0

    return-object v0
.end method

.method public getStart()Lkot/KotTime;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->event:Lkot/KotEvent;

    invoke-interface {v0}, Lkot/KotEvent;->getStart()Lkot/KotTime;

    move-result-object v0

    return-object v0
.end method

.method public getTime()Lkot/KotTime;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->event:Lkot/KotEvent;

    invoke-interface {v0}, Lkot/KotEvent;->getTime()Lkot/KotTime;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lkot/KotType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->event:Lkot/KotEvent;

    invoke-interface {v0}, Lkot/KotEvent;->getType()Lkot/KotType;

    move-result-object v0

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->event:Lkot/KotEvent;

    invoke-interface {v0}, Lkot/KotEvent;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->event:Lkot/KotEvent;

    invoke-interface {v0}, Lkot/KotEvent;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
