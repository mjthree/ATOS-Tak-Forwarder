.class public final Lcom/toughstump/atos/record/route/TakRoute$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/toughstump/atos/record/route/TakRoute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTakRoute.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TakRoute.kt\ncom/toughstump/atos/record/route/TakRoute$Companion\n+ 2 KotDetail.kt\nkot/KotDetailKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,224:1\n37#2:225\n37#2:228\n29#2:233\n286#3,2:226\n286#3,2:229\n1849#3,2:231\n764#3:234\n855#3,2:235\n1601#3,9:237\n1849#3:246\n1850#3:248\n1610#3:249\n1#4:247\n*S KotlinDebug\n*F\n+ 1 TakRoute.kt\ncom/toughstump/atos/record/route/TakRoute$Companion\n*L\n45#1:225\n53#1:228\n107#1:233\n45#1:226,2\n53#1:229,2\n90#1:231,2\n107#1:234\n107#1:235,2\n108#1:237,9\n108#1:246\n108#1:248\n108#1:249\n108#1:247\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/record/route/TakRoute$Companion;-><init>()V

    return-void
.end method

.method private final getDetail(Lcom/toughstump/atos/record/route/TakRoute;)Lkot/KotDetail;
    .locals 14

    .line 1
    new-instance v4, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/toughstump/atos/record/route/TakRoute;->getCallsign()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v5

    .line 10
    const/16 v12, 0x7e

    .line 11
    .line 12
    const/4 v13, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v10, 0x0

    .line 18
    const/4 v11, 0x0

    .line 19
    invoke-static/range {v5 .. v13}, Lkot/utils/model/ContactUtils;->contact$default(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lkot/utils/model/Contact;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lkot/utils/model/ContactUtils;->toKotDetail(Lkot/utils/model/Contact;)Lkot/KotDetail;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/toughstump/atos/record/route/TakRoute;->getPoints()Ljava/util/Collection;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/toughstump/atos/record/route/TakRoutePoint;

    .line 49
    .line 50
    sget-object v2, Lcom/toughstump/atos/record/route/TakRoutePoint;->Companion:Lcom/toughstump/atos/record/route/TakRoutePoint$Companion;

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Lcom/toughstump/atos/record/route/TakRoutePoint$Companion;->toKotDetail(Lcom/toughstump/atos/record/route/TakRoutePoint;)Lkot/KotDetail;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    new-instance v0, Lcom/toughstump/atos/record/route/TakRouteAttributes;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/toughstump/atos/record/route/TakRoute;->getColorArgb()I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    invoke-virtual {p1}, Lcom/toughstump/atos/record/route/TakRoute;->getRouteMethod()Lcom/toughstump/atos/record/route/TakRouteMethod;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {p1}, Lcom/toughstump/atos/record/route/TakRoute;->getPrefix()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-virtual {p1}, Lcom/toughstump/atos/record/route/TakRoute;->getRouteType()Lcom/toughstump/atos/record/route/TakRouteType;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-virtual {p1}, Lcom/toughstump/atos/record/route/TakRoute;->getStroke()I

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    invoke-virtual {p1}, Lcom/toughstump/atos/record/route/TakRoute;->getDirection()Lcom/toughstump/atos/record/route/TakRouteDirection;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    invoke-virtual {p1}, Lcom/toughstump/atos/record/route/TakRoute;->getRouteOrder()Lcom/toughstump/atos/record/route/TakRouteOrder;

    .line 87
    .line 88
    .line 89
    move-result-object v12

    .line 90
    invoke-virtual {p1}, Lcom/toughstump/atos/record/route/TakRoute;->getTransportationType()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v13

    .line 94
    move-object v5, v0

    .line 95
    invoke-direct/range {v5 .. v13}, Lcom/toughstump/atos/record/route/TakRouteAttributes;-><init>(ILcom/toughstump/atos/record/route/TakRouteMethod;Ljava/lang/String;Lcom/toughstump/atos/record/route/TakRouteType;ILcom/toughstump/atos/record/route/TakRouteDirection;Lcom/toughstump/atos/record/route/TakRouteOrder;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    sget-object p1, Lcom/toughstump/atos/record/route/TakRouteAttributes;->Companion:Lcom/toughstump/atos/record/route/TakRouteAttributes$Companion;

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Lcom/toughstump/atos/record/route/TakRouteAttributes$Companion;->toKotDetail(Lcom/toughstump/atos/record/route/TakRouteAttributes;)Lkot/KotDetail;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    new-instance p1, Lkot/KotDetail;

    .line 108
    .line 109
    const/4 v5, 0x7

    .line 110
    const/4 v6, 0x0

    .line 111
    const/4 v1, 0x0

    .line 112
    const/4 v2, 0x0

    .line 113
    const/4 v3, 0x0

    .line 114
    move-object v0, p1

    .line 115
    invoke-direct/range {v0 .. v6}, Lkot/KotDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Collection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 116
    .line 117
    .line 118
    return-object p1
.end method

.method private final parseTakRoutePoints(Lkot/KotDetail;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkot/KotDetail;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/record/route/TakRoutePoint;",
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
    sget-object v2, Lcom/toughstump/atos/record/route/TakRoutePoint;->Companion:Lcom/toughstump/atos/record/route/TakRoutePoint$Companion;

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Lcom/toughstump/atos/record/route/TakRoutePoint$Companion;->parseTakRoutePoint(Lkot/KotDetail;)Lcom/toughstump/atos/record/route/TakRoutePoint;

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

.method public static synthetic toKotEvent$default(Lcom/toughstump/atos/record/route/TakRoute$Companion;Lcom/toughstump/atos/record/route/TakRoute;Lkot/KotTime;Lkot/KotTime;ILjava/lang/Object;)Lkot/KotEvent;
    .locals 1

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    move-object p2, v0

    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    move-object p3, v0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/toughstump/atos/record/route/TakRoute$Companion;->toKotEvent(Lcom/toughstump/atos/record/route/TakRoute;Lkot/KotTime;Lkot/KotTime;)Lkot/KotEvent;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method


# virtual methods
.method public final isTakRoute(Lkot/KotEvent;)Z
    .locals 3
    .param p1    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lkot/KotEvent;->getType()Lkot/KotType;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lkot/KotType;->getCot()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "b-m-r"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-interface {p1}, Lkot/KotEvent;->getDetail()Lkot/KotDetail;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lkot/KotDetail;->getChildren()Ljava/util/Collection;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    move-object v1, v0

    .line 45
    check-cast v1, Lkot/KotDetail;

    .line 46
    .line 47
    invoke-virtual {v1}, Lkot/KotDetail;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "__routeinfo"

    .line 52
    .line 53
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 v0, 0x0

    .line 61
    :goto_0
    check-cast v0, Lkot/KotDetail;

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const/4 p1, 0x0

    .line 68
    :goto_1
    return p1
.end method

.method public final toKotEvent(Lcom/toughstump/atos/record/route/TakRoute;Lkot/KotTime;Lkot/KotTime;)Lkot/KotEvent;
    .locals 15
    .param p1    # Lcom/toughstump/atos/record/route/TakRoute;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkot/KotTime;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkot/KotTime;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct/range {p0 .. p1}, Lcom/toughstump/atos/record/route/TakRoute$Companion;->getDetail(Lcom/toughstump/atos/record/route/TakRoute;)Lkot/KotDetail;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/record/route/TakRoute;->getStartTime()Lkot/KotTime;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Lkot/KotTime;

    .line 21
    .line 22
    invoke-direct {v0}, Lkot/KotTime;-><init>()V

    .line 23
    .line 24
    .line 25
    :cond_0
    move-object v8, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move-object/from16 v8, p2

    .line 28
    .line 29
    :goto_0
    if-nez p3, :cond_3

    .line 30
    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/record/route/TakRoute;->getStaleTime()Lkot/KotTime;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    new-instance v0, Lkot/KotTime;

    .line 38
    .line 39
    invoke-direct {v0}, Lkot/KotTime;-><init>()V

    .line 40
    .line 41
    .line 42
    const-wide/16 v2, 0x1

    .line 43
    .line 44
    invoke-virtual {v0, v2, v3}, Lkot/KotTime;->plusYears(J)Lkot/KotTime;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_2
    move-object v9, v0

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    move-object/from16 v9, p3

    .line 51
    .line 52
    :goto_1
    new-instance v0, Lkot/BasicKotEvent;

    .line 53
    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/record/route/TakRoute;->getType()Lkot/KotType;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/record/route/TakRoute;->getPoint()Lkot/KotPoint;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/toughstump/atos/record/route/TakRoute;->getUid()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-static {}, Lkot/HowKt;->getEstimated()Lkot/How;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    const/16 v13, 0x700

    .line 71
    .line 72
    const/4 v14, 0x0

    .line 73
    const/4 v10, 0x0

    .line 74
    const/4 v11, 0x0

    .line 75
    const/4 v12, 0x0

    .line 76
    move-object v1, v0

    .line 77
    move-object v7, v8

    .line 78
    invoke-direct/range {v1 .. v14}, Lkot/BasicKotEvent;-><init>(Lkot/KotType;Lkot/KotPoint;Lkot/KotDetail;Ljava/lang/String;Lkot/How;Lkot/KotTime;Lkot/KotTime;Lkot/KotTime;Ljava/lang/String;Lkot/Qos;Lkot/Opex;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 79
    .line 80
    .line 81
    return-object v0
.end method

.method public final toTakRoute(Lkot/KotEvent;)Lcom/toughstump/atos/record/route/TakRoute;
    .locals 19
    .param p1    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p1}, Lcom/toughstump/atos/record/route/TakRoute$Companion;->isTakRoute(Lkot/KotEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-object v2

    .line 16
    :cond_0
    invoke-interface/range {p1 .. p1}, Lkot/KotEvent;->getUid()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-static/range {p1 .. p1}, Lkot/utils/KotUtils;->callsignOrNull(Lkot/KotEvent;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-string v0, ""

    .line 27
    .line 28
    :cond_1
    move-object v6, v0

    .line 29
    invoke-interface/range {p1 .. p1}, Lkot/KotEvent;->getDetail()Lkot/KotDetail;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lkot/KotDetail;->getChildren()Ljava/util/Collection;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    move-object v5, v3

    .line 52
    check-cast v5, Lkot/KotDetail;

    .line 53
    .line 54
    invoke-virtual {v5}, Lkot/KotDetail;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    const-string v7, "link_attr"

    .line 59
    .line 60
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    move-object v3, v2

    .line 68
    :goto_0
    check-cast v3, Lkot/KotDetail;

    .line 69
    .line 70
    if-eqz v3, :cond_4

    .line 71
    .line 72
    sget-object v0, Lcom/toughstump/atos/record/route/TakRouteAttributes;->Companion:Lcom/toughstump/atos/record/route/TakRouteAttributes$Companion;

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Lcom/toughstump/atos/record/route/TakRouteAttributes$Companion;->parseTakRouteAttributes(Lkot/KotDetail;)Lcom/toughstump/atos/record/route/TakRouteAttributes;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    invoke-interface/range {p1 .. p1}, Lkot/KotEvent;->getDetail()Lkot/KotDetail;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    move-object/from16 v15, p0

    .line 85
    .line 86
    invoke-direct {v15, v2}, Lcom/toughstump/atos/record/route/TakRoute$Companion;->parseTakRoutePoints(Lkot/KotDetail;)Ljava/util/Collection;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    new-instance v2, Lcom/toughstump/atos/record/route/TakRoute;

    .line 91
    .line 92
    invoke-interface/range {p1 .. p1}, Lkot/KotEvent;->getType()Lkot/KotType;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v0}, Lcom/toughstump/atos/record/route/TakRouteAttributes;->getColorArgb()I

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    invoke-virtual {v0}, Lcom/toughstump/atos/record/route/TakRouteAttributes;->getRouteMethod()Lcom/toughstump/atos/record/route/TakRouteMethod;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    invoke-virtual {v0}, Lcom/toughstump/atos/record/route/TakRouteAttributes;->getPrefix()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    invoke-virtual {v0}, Lcom/toughstump/atos/record/route/TakRouteAttributes;->getRouteType()Lcom/toughstump/atos/record/route/TakRouteType;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    invoke-virtual {v0}, Lcom/toughstump/atos/record/route/TakRouteAttributes;->getStroke()I

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    invoke-virtual {v0}, Lcom/toughstump/atos/record/route/TakRouteAttributes;->getDirection()Lcom/toughstump/atos/record/route/TakRouteDirection;

    .line 117
    .line 118
    .line 119
    move-result-object v13

    .line 120
    invoke-virtual {v0}, Lcom/toughstump/atos/record/route/TakRouteAttributes;->getRouteOrder()Lcom/toughstump/atos/record/route/TakRouteOrder;

    .line 121
    .line 122
    .line 123
    move-result-object v14

    .line 124
    invoke-virtual {v0}, Lcom/toughstump/atos/record/route/TakRouteAttributes;->getTransportationType()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface/range {p1 .. p1}, Lkot/KotEvent;->getStart()Lkot/KotTime;

    .line 129
    .line 130
    .line 131
    move-result-object v16

    .line 132
    invoke-interface/range {p1 .. p1}, Lkot/KotEvent;->getStale()Lkot/KotTime;

    .line 133
    .line 134
    .line 135
    move-result-object v17

    .line 136
    invoke-interface/range {p1 .. p1}, Lkot/KotEvent;->getPoint()Lkot/KotPoint;

    .line 137
    .line 138
    .line 139
    move-result-object v18

    .line 140
    move-object v3, v2

    .line 141
    move-object v15, v0

    .line 142
    invoke-direct/range {v3 .. v18}, Lcom/toughstump/atos/record/route/TakRoute;-><init>(Ljava/lang/String;Lkot/KotType;Ljava/lang/String;Ljava/util/Collection;ILcom/toughstump/atos/record/route/TakRouteMethod;Ljava/lang/String;Lcom/toughstump/atos/record/route/TakRouteType;ILcom/toughstump/atos/record/route/TakRouteDirection;Lcom/toughstump/atos/record/route/TakRouteOrder;Ljava/lang/String;Lkot/KotTime;Lkot/KotTime;Lkot/KotPoint;)V

    .line 143
    .line 144
    .line 145
    :cond_4
    return-object v2
.end method
