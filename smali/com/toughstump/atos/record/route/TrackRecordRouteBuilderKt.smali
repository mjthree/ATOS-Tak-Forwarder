.class public final Lcom/toughstump/atos/record/route/TrackRecordRouteBuilderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrackRecordRouteBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrackRecordRouteBuilder.kt\ncom/toughstump/atos/record/route/TrackRecordRouteBuilderKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,61:1\n1849#2,2:62\n*S KotlinDebug\n*F\n+ 1 TrackRecordRouteBuilder.kt\ncom/toughstump/atos/record/route/TrackRecordRouteBuilderKt\n*L\n39#1:62,2\n*E\n"
.end annotation


# direct methods
.method public static final buildTakRoute(Ljava/util/Collection;)Lcom/toughstump/atos/record/route/TakRoute;
    .locals 22
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/record/db/TrackRecord;",
            ">;)",
            "Lcom/toughstump/atos/record/route/TakRoute;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "tracks"

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static/range {p0 .. p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/toughstump/atos/record/db/TrackRecord;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/toughstump/atos/record/db/TrackRecord;->getUid()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v3, "-ROUTE"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-static/range {p0 .. p0}, Lcom/toughstump/atos/record/route/TrackRecordRouteBuilderKt;->buildTakRoutePoints(Ljava/util/Collection;)Ljava/util/Collection;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    new-instance v1, Lcom/toughstump/atos/record/route/TakRoute;

    .line 40
    .line 41
    move-object v4, v1

    .line 42
    new-instance v9, Lkot/KotType;

    .line 43
    .line 44
    move-object v6, v9

    .line 45
    const/4 v13, 0x6

    .line 46
    const/4 v14, 0x0

    .line 47
    const-string v10, "b-m-r"

    .line 48
    .line 49
    const/4 v11, 0x0

    .line 50
    const/4 v12, 0x0

    .line 51
    invoke-direct/range {v9 .. v14}, Lkot/KotType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/toughstump/atos/record/db/TrackRecord;->getLabel()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    sget-object v2, Lcom/toughstump/atos/AtosColor;->Companion:Lcom/toughstump/atos/AtosColor$Companion;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/toughstump/atos/record/db/TrackRecord;->getColor()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v2, v0}, Lcom/toughstump/atos/AtosColor$Companion;->get(Ljava/lang/String;)Lcom/toughstump/atos/AtosColor;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/toughstump/atos/AtosColor;->getRgba()I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    sget-object v10, Lcom/toughstump/atos/record/route/TakRouteMethod;->Walking:Lcom/toughstump/atos/record/route/TakRouteMethod;

    .line 73
    .line 74
    sget-object v12, Lcom/toughstump/atos/record/route/TakRouteType;->Primary:Lcom/toughstump/atos/record/route/TakRouteType;

    .line 75
    .line 76
    sget-object v14, Lcom/toughstump/atos/record/route/TakRouteDirection;->Infil:Lcom/toughstump/atos/record/route/TakRouteDirection;

    .line 77
    .line 78
    sget-object v15, Lcom/toughstump/atos/record/route/TakRouteOrder;->Ascending:Lcom/toughstump/atos/record/route/TakRouteOrder;

    .line 79
    .line 80
    const/16 v20, 0x7000

    .line 81
    .line 82
    const/16 v21, 0x0

    .line 83
    .line 84
    const-string v11, "CP"

    .line 85
    .line 86
    const/4 v13, 0x3

    .line 87
    const-string v16, "On Foot"

    .line 88
    .line 89
    const/16 v17, 0x0

    .line 90
    .line 91
    const/16 v18, 0x0

    .line 92
    .line 93
    const/16 v19, 0x0

    .line 94
    .line 95
    invoke-direct/range {v4 .. v21}, Lcom/toughstump/atos/record/route/TakRoute;-><init>(Ljava/lang/String;Lkot/KotType;Ljava/lang/String;Ljava/util/Collection;ILcom/toughstump/atos/record/route/TakRouteMethod;Ljava/lang/String;Lcom/toughstump/atos/record/route/TakRouteType;ILcom/toughstump/atos/record/route/TakRouteDirection;Lcom/toughstump/atos/record/route/TakRouteOrder;Ljava/lang/String;Lkot/KotTime;Lkot/KotTime;Lkot/KotPoint;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 96
    .line 97
    .line 98
    return-object v1
.end method

.method public static final buildTakRoutePoints(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 15
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/record/db/TrackRecord;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/record/route/TakRoutePoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "tracks"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->removeFirst(Ljava/util/List;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/toughstump/atos/record/db/TrackRecord;

    .line 15
    .line 16
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/toughstump/atos/record/db/TrackRecord;

    .line 21
    .line 22
    new-instance v2, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-static {v0, v5, v3, v4}, Lcom/toughstump/atos/record/route/TrackRecordRouteBuilderKt;->buildWayPoint$default(Lcom/toughstump/atos/record/db/TrackRecord;ZILjava/lang/Object;)Lcom/toughstump/atos/record/route/TakRoutePoint;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/toughstump/atos/record/db/TrackRecord;

    .line 52
    .line 53
    new-instance v3, Lcom/toughstump/atos/record/route/TakRoutePoint;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/toughstump/atos/record/db/TrackRecord;->getLocation()Lkot/KotPoint;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    const/16 v13, 0x3e

    .line 60
    .line 61
    const/4 v14, 0x0

    .line 62
    const/4 v8, 0x0

    .line 63
    const/4 v9, 0x0

    .line 64
    const/4 v10, 0x0

    .line 65
    const/4 v11, 0x0

    .line 66
    const/4 v12, 0x0

    .line 67
    move-object v6, v3

    .line 68
    invoke-direct/range {v6 .. v14}, Lcom/toughstump/atos/record/route/TakRoutePoint;-><init>(Lkot/KotPoint;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-static {v1, v5}, Lcom/toughstump/atos/record/route/TrackRecordRouteBuilderKt;->buildWayPoint(Lcom/toughstump/atos/record/db/TrackRecord;Z)Lcom/toughstump/atos/record/route/TakRoutePoint;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    return-object v2
.end method

.method public static final buildWayPoint(Lcom/toughstump/atos/record/db/TrackRecord;Z)Lcom/toughstump/atos/record/route/TakRoutePoint;
    .locals 9
    .param p0    # Lcom/toughstump/atos/record/db/TrackRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "first"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/toughstump/atos/record/db/TrackRecord;->getLabel()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, " SP"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_0
    move-object v4, p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const-string p1, "VDO"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :goto_1
    invoke-virtual {p0}, Lcom/toughstump/atos/record/db/TrackRecord;->getLocation()Lkot/KotPoint;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    new-instance p0, Lcom/toughstump/atos/record/route/TakRoutePoint;

    .line 47
    .line 48
    const/4 v7, 0x4

    .line 49
    const/4 v8, 0x0

    .line 50
    const-string v2, "c"

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    const-string v5, "b-m-p-w"

    .line 54
    .line 55
    move-object v0, p0

    .line 56
    invoke-direct/range {v0 .. v8}, Lcom/toughstump/atos/record/route/TakRoutePoint;-><init>(Lkot/KotPoint;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 57
    .line 58
    .line 59
    return-object p0
.end method

.method public static synthetic buildWayPoint$default(Lcom/toughstump/atos/record/db/TrackRecord;ZILjava/lang/Object;)Lcom/toughstump/atos/record/route/TakRoutePoint;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    :cond_0
    invoke-static {p0, p1}, Lcom/toughstump/atos/record/route/TrackRecordRouteBuilderKt;->buildWayPoint(Lcom/toughstump/atos/record/db/TrackRecord;Z)Lcom/toughstump/atos/record/route/TakRoutePoint;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
