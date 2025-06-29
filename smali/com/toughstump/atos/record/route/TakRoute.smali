.class public final Lcom/toughstump/atos/record/route/TakRoute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/record/route/TakRoute$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTakRoute.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TakRoute.kt\ncom/toughstump/atos/record/route/TakRoute\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,224:1\n1547#2:225\n1618#2,3:226\n*S KotlinDebug\n*F\n+ 1 TakRoute.kt\ncom/toughstump/atos/record/route/TakRoute\n*L\n32#1:225\n32#1:226,3\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/record/route/TakRoute$Companion;
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
.field private final callsign:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final colorArgb:I

.field private final direction:Lcom/toughstump/atos/record/route/TakRouteDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final point:Lkot/KotPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final points:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/record/route/TakRoutePoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final prefix:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final routeMethod:Lcom/toughstump/atos/record/route/TakRouteMethod;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final routeOrder:Lcom/toughstump/atos/record/route/TakRouteOrder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final routeType:Lcom/toughstump/atos/record/route/TakRouteType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final staleTime:Lkot/KotTime;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final startTime:Lkot/KotTime;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final stroke:I

.field private final transportationType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final type:Lkot/KotType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final uid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/record/route/TakRoute$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/record/route/TakRoute$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/record/route/TakRoute;->Companion:Lcom/toughstump/atos/record/route/TakRoute$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lkot/KotType;Ljava/lang/String;Ljava/util/Collection;ILcom/toughstump/atos/record/route/TakRouteMethod;Ljava/lang/String;Lcom/toughstump/atos/record/route/TakRouteType;ILcom/toughstump/atos/record/route/TakRouteDirection;Lcom/toughstump/atos/record/route/TakRouteOrder;Ljava/lang/String;Lkot/KotTime;Lkot/KotTime;Lkot/KotPoint;)V
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkot/KotType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/toughstump/atos/record/route/TakRouteMethod;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/toughstump/atos/record/route/TakRouteType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/toughstump/atos/record/route/TakRouteDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lcom/toughstump/atos/record/route/TakRouteOrder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Lkot/KotTime;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Lkot/KotTime;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkot/KotType;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/record/route/TakRoutePoint;",
            ">;I",
            "Lcom/toughstump/atos/record/route/TakRouteMethod;",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/record/route/TakRouteType;",
            "I",
            "Lcom/toughstump/atos/record/route/TakRouteDirection;",
            "Lcom/toughstump/atos/record/route/TakRouteOrder;",
            "Ljava/lang/String;",
            "Lkot/KotTime;",
            "Lkot/KotTime;",
            "Lkot/KotPoint;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p15

    const-string v12, "uid"

    invoke-static {p1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "type"

    invoke-static {p2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "callsign"

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "points"

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "routeMethod"

    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "prefix"

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "routeType"

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "direction"

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "routeOrder"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "transportationType"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "point"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v1, v0, Lcom/toughstump/atos/record/route/TakRoute;->uid:Ljava/lang/String;

    .line 3
    iput-object v2, v0, Lcom/toughstump/atos/record/route/TakRoute;->type:Lkot/KotType;

    .line 4
    iput-object v3, v0, Lcom/toughstump/atos/record/route/TakRoute;->callsign:Ljava/lang/String;

    .line 5
    iput-object v4, v0, Lcom/toughstump/atos/record/route/TakRoute;->points:Ljava/util/Collection;

    move/from16 v1, p5

    .line 6
    iput v1, v0, Lcom/toughstump/atos/record/route/TakRoute;->colorArgb:I

    .line 7
    iput-object v5, v0, Lcom/toughstump/atos/record/route/TakRoute;->routeMethod:Lcom/toughstump/atos/record/route/TakRouteMethod;

    .line 8
    iput-object v6, v0, Lcom/toughstump/atos/record/route/TakRoute;->prefix:Ljava/lang/String;

    .line 9
    iput-object v7, v0, Lcom/toughstump/atos/record/route/TakRoute;->routeType:Lcom/toughstump/atos/record/route/TakRouteType;

    move/from16 v1, p9

    .line 10
    iput v1, v0, Lcom/toughstump/atos/record/route/TakRoute;->stroke:I

    .line 11
    iput-object v8, v0, Lcom/toughstump/atos/record/route/TakRoute;->direction:Lcom/toughstump/atos/record/route/TakRouteDirection;

    .line 12
    iput-object v9, v0, Lcom/toughstump/atos/record/route/TakRoute;->routeOrder:Lcom/toughstump/atos/record/route/TakRouteOrder;

    .line 13
    iput-object v10, v0, Lcom/toughstump/atos/record/route/TakRoute;->transportationType:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 14
    iput-object v1, v0, Lcom/toughstump/atos/record/route/TakRoute;->startTime:Lkot/KotTime;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/toughstump/atos/record/route/TakRoute;->staleTime:Lkot/KotTime;

    .line 16
    iput-object v11, v0, Lcom/toughstump/atos/record/route/TakRoute;->point:Lkot/KotPoint;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkot/KotType;Ljava/lang/String;Ljava/util/Collection;ILcom/toughstump/atos/record/route/TakRouteMethod;Ljava/lang/String;Lcom/toughstump/atos/record/route/TakRouteType;ILcom/toughstump/atos/record/route/TakRouteDirection;Lcom/toughstump/atos/record/route/TakRouteOrder;Ljava/lang/String;Lkot/KotTime;Lkot/KotTime;Lkot/KotPoint;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    move/from16 v0, p16

    and-int/lit16 v1, v0, 0x1000

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object/from16 v16, v2

    goto :goto_0

    :cond_0
    move-object/from16 v16, p13

    :goto_0
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_1

    move-object/from16 v17, v2

    goto :goto_1

    :cond_1
    move-object/from16 v17, p14

    :goto_1
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_2

    .line 17
    new-instance v0, Lkot/KotPoint;

    const/16 v12, 0x1f

    const/4 v13, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lkot/KotPoint;-><init>(DDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v18, v0

    goto :goto_2

    :cond_2
    move-object/from16 v18, p15

    :goto_2
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    .line 18
    invoke-direct/range {v3 .. v18}, Lcom/toughstump/atos/record/route/TakRoute;-><init>(Ljava/lang/String;Lkot/KotType;Ljava/lang/String;Ljava/util/Collection;ILcom/toughstump/atos/record/route/TakRouteMethod;Ljava/lang/String;Lcom/toughstump/atos/record/route/TakRouteType;ILcom/toughstump/atos/record/route/TakRouteDirection;Lcom/toughstump/atos/record/route/TakRouteOrder;Ljava/lang/String;Lkot/KotTime;Lkot/KotTime;Lkot/KotPoint;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/toughstump/atos/record/route/TakRoute;Ljava/lang/String;Lkot/KotType;Ljava/lang/String;Ljava/util/Collection;ILcom/toughstump/atos/record/route/TakRouteMethod;Ljava/lang/String;Lcom/toughstump/atos/record/route/TakRouteType;ILcom/toughstump/atos/record/route/TakRouteDirection;Lcom/toughstump/atos/record/route/TakRouteOrder;Ljava/lang/String;Lkot/KotTime;Lkot/KotTime;Lkot/KotPoint;ILjava/lang/Object;)Lcom/toughstump/atos/record/route/TakRoute;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p16

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/toughstump/atos/record/route/TakRoute;->uid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/toughstump/atos/record/route/TakRoute;->type:Lkot/KotType;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/toughstump/atos/record/route/TakRoute;->callsign:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/toughstump/atos/record/route/TakRoute;->points:Ljava/util/Collection;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/toughstump/atos/record/route/TakRoute;->colorArgb:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/toughstump/atos/record/route/TakRoute;->routeMethod:Lcom/toughstump/atos/record/route/TakRouteMethod;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/toughstump/atos/record/route/TakRoute;->prefix:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/toughstump/atos/record/route/TakRoute;->routeType:Lcom/toughstump/atos/record/route/TakRouteType;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget v10, v0, Lcom/toughstump/atos/record/route/TakRoute;->stroke:I

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/toughstump/atos/record/route/TakRoute;->direction:Lcom/toughstump/atos/record/route/TakRouteDirection;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/toughstump/atos/record/route/TakRoute;->routeOrder:Lcom/toughstump/atos/record/route/TakRouteOrder;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/toughstump/atos/record/route/TakRoute;->transportationType:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/toughstump/atos/record/route/TakRoute;->startTime:Lkot/KotTime;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/toughstump/atos/record/route/TakRoute;->staleTime:Lkot/KotTime;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/toughstump/atos/record/route/TakRoute;->point:Lkot/KotPoint;

    goto :goto_e

    :cond_e
    move-object/from16 v1, p15

    :goto_e
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p15, v1

    invoke-virtual/range {p0 .. p15}, Lcom/toughstump/atos/record/route/TakRoute;->copy(Ljava/lang/String;Lkot/KotType;Ljava/lang/String;Ljava/util/Collection;ILcom/toughstump/atos/record/route/TakRouteMethod;Ljava/lang/String;Lcom/toughstump/atos/record/route/TakRouteType;ILcom/toughstump/atos/record/route/TakRouteDirection;Lcom/toughstump/atos/record/route/TakRouteOrder;Ljava/lang/String;Lkot/KotTime;Lkot/KotTime;Lkot/KotPoint;)Lcom/toughstump/atos/record/route/TakRoute;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Lcom/toughstump/atos/record/route/TakRouteDirection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->direction:Lcom/toughstump/atos/record/route/TakRouteDirection;

    return-object v0
.end method

.method public final component11()Lcom/toughstump/atos/record/route/TakRouteOrder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->routeOrder:Lcom/toughstump/atos/record/route/TakRouteOrder;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->transportationType:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Lkot/KotTime;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->startTime:Lkot/KotTime;

    return-object v0
.end method

.method public final component14()Lkot/KotTime;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->staleTime:Lkot/KotTime;

    return-object v0
.end method

.method public final component15()Lkot/KotPoint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->point:Lkot/KotPoint;

    return-object v0
.end method

.method public final component2()Lkot/KotType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->type:Lkot/KotType;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->callsign:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/record/route/TakRoutePoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->points:Ljava/util/Collection;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->colorArgb:I

    return v0
.end method

.method public final component6()Lcom/toughstump/atos/record/route/TakRouteMethod;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->routeMethod:Lcom/toughstump/atos/record/route/TakRouteMethod;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Lcom/toughstump/atos/record/route/TakRouteType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->routeType:Lcom/toughstump/atos/record/route/TakRouteType;

    return-object v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->stroke:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Lkot/KotType;Ljava/lang/String;Ljava/util/Collection;ILcom/toughstump/atos/record/route/TakRouteMethod;Ljava/lang/String;Lcom/toughstump/atos/record/route/TakRouteType;ILcom/toughstump/atos/record/route/TakRouteDirection;Lcom/toughstump/atos/record/route/TakRouteOrder;Ljava/lang/String;Lkot/KotTime;Lkot/KotTime;Lkot/KotPoint;)Lcom/toughstump/atos/record/route/TakRoute;
    .locals 17
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkot/KotType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/toughstump/atos/record/route/TakRouteMethod;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/toughstump/atos/record/route/TakRouteType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/toughstump/atos/record/route/TakRouteDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lcom/toughstump/atos/record/route/TakRouteOrder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Lkot/KotTime;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Lkot/KotTime;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkot/KotType;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/record/route/TakRoutePoint;",
            ">;I",
            "Lcom/toughstump/atos/record/route/TakRouteMethod;",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/record/route/TakRouteType;",
            "I",
            "Lcom/toughstump/atos/record/route/TakRouteDirection;",
            "Lcom/toughstump/atos/record/route/TakRouteOrder;",
            "Ljava/lang/String;",
            "Lkot/KotTime;",
            "Lkot/KotTime;",
            "Lkot/KotPoint;",
            ")",
            "Lcom/toughstump/atos/record/route/TakRoute;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "uid"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callsign"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "points"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "routeMethod"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "routeType"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "routeOrder"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transportationType"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "point"

    move-object/from16 v15, p15

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/toughstump/atos/record/route/TakRoute;

    move-object v1, v0

    move/from16 v6, p5

    move/from16 v10, p9

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    invoke-direct/range {v1 .. v16}, Lcom/toughstump/atos/record/route/TakRoute;-><init>(Ljava/lang/String;Lkot/KotType;Ljava/lang/String;Ljava/util/Collection;ILcom/toughstump/atos/record/route/TakRouteMethod;Ljava/lang/String;Lcom/toughstump/atos/record/route/TakRouteType;ILcom/toughstump/atos/record/route/TakRouteDirection;Lcom/toughstump/atos/record/route/TakRouteOrder;Ljava/lang/String;Lkot/KotTime;Lkot/KotTime;Lkot/KotPoint;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/toughstump/atos/record/route/TakRoute;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/toughstump/atos/record/route/TakRoute;

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->uid:Ljava/lang/String;

    iget-object v3, p1, Lcom/toughstump/atos/record/route/TakRoute;->uid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->type:Lkot/KotType;

    iget-object v3, p1, Lcom/toughstump/atos/record/route/TakRoute;->type:Lkot/KotType;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->callsign:Ljava/lang/String;

    iget-object v3, p1, Lcom/toughstump/atos/record/route/TakRoute;->callsign:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->points:Ljava/util/Collection;

    iget-object v3, p1, Lcom/toughstump/atos/record/route/TakRoute;->points:Ljava/util/Collection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->colorArgb:I

    iget v3, p1, Lcom/toughstump/atos/record/route/TakRoute;->colorArgb:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->routeMethod:Lcom/toughstump/atos/record/route/TakRouteMethod;

    iget-object v3, p1, Lcom/toughstump/atos/record/route/TakRoute;->routeMethod:Lcom/toughstump/atos/record/route/TakRouteMethod;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->prefix:Ljava/lang/String;

    iget-object v3, p1, Lcom/toughstump/atos/record/route/TakRoute;->prefix:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->routeType:Lcom/toughstump/atos/record/route/TakRouteType;

    iget-object v3, p1, Lcom/toughstump/atos/record/route/TakRoute;->routeType:Lcom/toughstump/atos/record/route/TakRouteType;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->stroke:I

    iget v3, p1, Lcom/toughstump/atos/record/route/TakRoute;->stroke:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->direction:Lcom/toughstump/atos/record/route/TakRouteDirection;

    iget-object v3, p1, Lcom/toughstump/atos/record/route/TakRoute;->direction:Lcom/toughstump/atos/record/route/TakRouteDirection;

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->routeOrder:Lcom/toughstump/atos/record/route/TakRouteOrder;

    iget-object v3, p1, Lcom/toughstump/atos/record/route/TakRoute;->routeOrder:Lcom/toughstump/atos/record/route/TakRouteOrder;

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->transportationType:Ljava/lang/String;

    iget-object v3, p1, Lcom/toughstump/atos/record/route/TakRoute;->transportationType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->startTime:Lkot/KotTime;

    iget-object v3, p1, Lcom/toughstump/atos/record/route/TakRoute;->startTime:Lkot/KotTime;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->staleTime:Lkot/KotTime;

    iget-object v3, p1, Lcom/toughstump/atos/record/route/TakRoute;->staleTime:Lkot/KotTime;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->point:Lkot/KotPoint;

    iget-object p1, p1, Lcom/toughstump/atos/record/route/TakRoute;->point:Lkot/KotPoint;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public final getCallsign()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->callsign:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getColorArgb()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->colorArgb:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDirection()Lcom/toughstump/atos/record/route/TakRouteDirection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->direction:Lcom/toughstump/atos/record/route/TakRouteDirection;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPoint()Lkot/KotPoint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->point:Lkot/KotPoint;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPoints()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/record/route/TakRoutePoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->points:Ljava/util/Collection;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->prefix:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRouteCenterPoint()Lkot/KotPoint;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->points:Ljava/util/Collection;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/toughstump/atos/record/route/TakRoutePoint;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/toughstump/atos/record/route/TakRoutePoint;->getPoint()Lkot/KotPoint;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v1}, Lcom/toughstump/atos/record/util/GeoPointUtilsKt;->center3D(Ljava/util/Collection;)Lkot/KotPoint;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public final getRouteMethod()Lcom/toughstump/atos/record/route/TakRouteMethod;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->routeMethod:Lcom/toughstump/atos/record/route/TakRouteMethod;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRouteOrder()Lcom/toughstump/atos/record/route/TakRouteOrder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->routeOrder:Lcom/toughstump/atos/record/route/TakRouteOrder;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRouteType()Lcom/toughstump/atos/record/route/TakRouteType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->routeType:Lcom/toughstump/atos/record/route/TakRouteType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStaleTime()Lkot/KotTime;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->staleTime:Lkot/KotTime;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStartTime()Lkot/KotTime;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->startTime:Lkot/KotTime;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStroke()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->stroke:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTransportationType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->transportationType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Lkot/KotType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->type:Lkot/KotType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRoute;->uid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->type:Lkot/KotType;

    invoke-virtual {v1}, Lkot/KotType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->callsign:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->points:Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->colorArgb:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->routeMethod:Lcom/toughstump/atos/record/route/TakRouteMethod;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->routeType:Lcom/toughstump/atos/record/route/TakRouteType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->stroke:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->direction:Lcom/toughstump/atos/record/route/TakRouteDirection;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->routeOrder:Lcom/toughstump/atos/record/route/TakRouteOrder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->transportationType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->startTime:Lkot/KotTime;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lkot/KotTime;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->staleTime:Lkot/KotTime;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lkot/KotTime;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->point:Lkot/KotPoint;

    invoke-virtual {v1}, Lkot/KotPoint;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TakRoute(uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->type:Lkot/KotType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callsign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->callsign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", points="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->points:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", colorArgb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->colorArgb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", routeMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->routeMethod:Lcom/toughstump/atos/record/route/TakRouteMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", routeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->routeType:Lcom/toughstump/atos/record/route/TakRouteType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stroke="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->stroke:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->direction:Lcom/toughstump/atos/record/route/TakRouteDirection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", routeOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->routeOrder:Lcom/toughstump/atos/record/route/TakRouteOrder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transportationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->transportationType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->startTime:Lkot/KotTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", staleTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->staleTime:Lkot/KotTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", point="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRoute;->point:Lkot/KotPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
