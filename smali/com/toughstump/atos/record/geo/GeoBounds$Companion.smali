.class public final Lcom/toughstump/atos/record/geo/GeoBounds$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/toughstump/atos/record/geo/GeoBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
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
    invoke-direct {p0}, Lcom/toughstump/atos/record/geo/GeoBounds$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromPoints([Lkot/KotPoint;)Lcom/toughstump/atos/record/geo/GeoBounds;
    .locals 20
    .param p1    # [Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "points"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    array-length v1, v0

    .line 9
    const-wide v2, 0x4066800000000000L    # 180.0

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const-wide v4, -0x3f99800000000000L    # -180.0

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    const-wide v6, -0x3fa9800000000000L    # -90.0

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    const-wide v8, 0x4056800000000000L    # 90.0

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    const/4 v10, 0x0

    .line 30
    move-wide v14, v2

    .line 31
    move-wide/from16 v18, v4

    .line 32
    .line 33
    move-wide/from16 v16, v6

    .line 34
    .line 35
    move-wide v12, v8

    .line 36
    :goto_0
    if-ge v10, v1, :cond_4

    .line 37
    .line 38
    aget-object v2, v0, v10

    .line 39
    .line 40
    invoke-virtual {v2}, Lkot/KotPoint;->component1()D

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    invoke-virtual {v2}, Lkot/KotPoint;->component2()D

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    cmpg-double v2, v5, v14

    .line 49
    .line 50
    if-gez v2, :cond_0

    .line 51
    .line 52
    move-wide v14, v5

    .line 53
    :cond_0
    cmpl-double v2, v5, v18

    .line 54
    .line 55
    if-lez v2, :cond_1

    .line 56
    .line 57
    move-wide/from16 v18, v5

    .line 58
    .line 59
    :cond_1
    cmpl-double v2, v3, v16

    .line 60
    .line 61
    if-lez v2, :cond_2

    .line 62
    .line 63
    move-wide/from16 v16, v3

    .line 64
    .line 65
    :cond_2
    cmpg-double v2, v3, v12

    .line 66
    .line 67
    if-gez v2, :cond_3

    .line 68
    .line 69
    move-wide v12, v3

    .line 70
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    new-instance v0, Lcom/toughstump/atos/record/geo/GeoBounds;

    .line 74
    .line 75
    move-object v11, v0

    .line 76
    invoke-direct/range {v11 .. v19}, Lcom/toughstump/atos/record/geo/GeoBounds;-><init>(DDDD)V

    .line 77
    .line 78
    .line 79
    return-object v0
.end method
