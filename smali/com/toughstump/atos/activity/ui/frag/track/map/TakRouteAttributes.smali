.class public final Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes$Companion;
    }
.end annotation


# static fields
.field private static final AttributeColor:Ljava/lang/String; = "color"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final AttributeDirection:Ljava/lang/String; = "direction"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final AttributeMethod:Ljava/lang/String; = "method"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final AttributeOrder:Ljava/lang/String; = "order"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final AttributePlaningMethod:Ljava/lang/String; = "planningmethod"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final AttributePrefix:Ljava/lang/String; = "prefix"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final AttributeRouteType:Ljava/lang/String; = "routetype"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final AttributeStroke:Ljava/lang/String; = "stroke"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final AttributeTransportationType:Ljava/lang/String; = "type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEFAULT_COLOR:I = -0x1

.field private static final DEFAULT_PREFIX:Ljava/lang/String; = "CP"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEFAULT_STROKE:I = 0x3

.field public static final DetailTakRouteAttributes:Ljava/lang/String; = "link_attr"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final colorArgb:I

.field private final direction:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteDirection;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final planningMethod:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final prefix:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final routeMethod:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final routeOrder:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final routeType:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final stroke:I

.field private final transportationType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->Companion:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;Ljava/lang/String;Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;ILcom/toughstump/atos/activity/ui/frag/track/map/TakRouteDirection;Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteDirection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->colorArgb:I

    .line 3
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->planningMethod:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->routeMethod:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    .line 5
    iput-object p4, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->prefix:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->routeType:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;

    .line 7
    iput p6, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->stroke:I

    .line 8
    iput-object p7, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->direction:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteDirection;

    .line 9
    iput-object p8, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->routeOrder:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;

    .line 10
    iput-object p9, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->transportationType:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;Ljava/lang/String;Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;ILcom/toughstump/atos/activity/ui/frag/track/map/TakRouteDirection;Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    and-int/lit8 v0, p10, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v0, p10, 0x8

    if-eqz v0, :cond_1

    .line 11
    const-string v0, "CP"

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p4

    :goto_1
    and-int/lit8 v0, p10, 0x20

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    move v7, v0

    goto :goto_2

    :cond_2
    move/from16 v7, p6

    :goto_2
    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 12
    invoke-direct/range {v1 .. v10}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;-><init>(ILjava/lang/String;Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;Ljava/lang/String;Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;ILcom/toughstump/atos/activity/ui/frag/track/map/TakRouteDirection;Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;ILjava/lang/String;Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;Ljava/lang/String;Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;ILcom/toughstump/atos/activity/ui/frag/track/map/TakRouteDirection;Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;Ljava/lang/String;ILjava/lang/Object;)Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->colorArgb:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->planningMethod:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->routeMethod:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->prefix:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->routeType:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->stroke:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->direction:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteDirection;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->routeOrder:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->transportationType:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->copy(ILjava/lang/String;Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;Ljava/lang/String;Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;ILcom/toughstump/atos/activity/ui/frag/track/map/TakRouteDirection;Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;Ljava/lang/String;)Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->colorArgb:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->planningMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->routeMethod:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->routeType:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;

    return-object v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->stroke:I

    return v0
.end method

.method public final component7()Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteDirection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->direction:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteDirection;

    return-object v0
.end method

.method public final component8()Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->routeOrder:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->transportationType:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;Ljava/lang/String;Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;ILcom/toughstump/atos/activity/ui/frag/track/map/TakRouteDirection;Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;Ljava/lang/String;)Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;
    .locals 11
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteDirection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v10, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;

    move-object v0, v10

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;-><init>(ILjava/lang/String;Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;Ljava/lang/String;Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;ILcom/toughstump/atos/activity/ui/frag/track/map/TakRouteDirection;Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;Ljava/lang/String;)V

    return-object v10
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
    instance-of v1, p1, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;

    iget v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->colorArgb:I

    iget v3, p1, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->colorArgb:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->planningMethod:Ljava/lang/String;

    iget-object v3, p1, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->planningMethod:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->routeMethod:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    iget-object v3, p1, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->routeMethod:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->prefix:Ljava/lang/String;

    iget-object v3, p1, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->prefix:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->routeType:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;

    iget-object v3, p1, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->routeType:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->stroke:I

    iget v3, p1, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->stroke:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->direction:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteDirection;

    iget-object v3, p1, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->direction:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteDirection;

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->routeOrder:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;

    iget-object v3, p1, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->routeOrder:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->transportationType:Ljava/lang/String;

    iget-object p1, p1, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->transportationType:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getColorArgb()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->colorArgb:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDirection()Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteDirection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->direction:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteDirection;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlanningMethod()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->planningMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->prefix:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRouteMethod()Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->routeMethod:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRouteOrder()Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->routeOrder:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRouteType()Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->routeType:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStroke()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->stroke:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTransportationType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->transportationType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->colorArgb:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->planningMethod:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->routeMethod:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->prefix:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->routeType:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->stroke:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->direction:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteDirection;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->routeOrder:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->transportationType:Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TakRouteAttributes(colorArgb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->colorArgb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", planningMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->planningMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", routeMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->routeMethod:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", routeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->routeType:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stroke="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->stroke:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->direction:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteDirection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", routeOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->routeOrder:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transportationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteAttributes;->transportationType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
