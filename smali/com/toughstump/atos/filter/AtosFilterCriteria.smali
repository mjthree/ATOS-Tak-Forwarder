.class public final Lcom/toughstump/atos/filter/AtosFilterCriteria;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/filter/AtosFilterCriteria$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/filter/AtosFilterCriteria$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LIMIT_LOWER_ID:I = 0x1

.field private static final LIMIT_UPPER_ID:I = 0xff


# instance fields
.field private final callsignEnabled:Z

.field private final callsignMod:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final colorEnabled:Z

.field private final colors:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/AtosColor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final distanceEnabled:Z

.field private final distanceM:Ljava/lang/Double;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final hideAllTags:Z

.field private final isColorTypeLogicAnd:Z

.field private final tagIdRangeEnabled:Z

.field private final tagIdRangeEnd:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final tagIdRangeStart:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final typeEnabled:Z

.field private final types:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/AtosTrackType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/filter/AtosFilterCriteria$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/filter/AtosFilterCriteria$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->Companion:Lcom/toughstump/atos/filter/AtosFilterCriteria$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 1
    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/toughstump/atos/filter/AtosFilterCriteria;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Collection;Ljava/util/Collection;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Collection;Ljava/util/Collection;Z)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/toughstump/atos/AtosColor;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/toughstump/atos/AtosTrackType;",
            ">;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->hideAllTags:Z

    .line 4
    iput-object p2, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->callsignMod:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->distanceM:Ljava/lang/Double;

    .line 6
    iput-object p4, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagIdRangeStart:Ljava/lang/Integer;

    .line 7
    iput-object p5, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagIdRangeEnd:Ljava/lang/Integer;

    .line 8
    iput-object p6, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->colors:Ljava/util/Collection;

    .line 9
    iput-object p7, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->types:Ljava/util/Collection;

    .line 10
    iput-boolean p8, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->isColorTypeLogicAnd:Z

    const/4 p1, 0x0

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    move p3, p4

    goto :goto_0

    :cond_0
    move p3, p1

    .line 11
    :goto_0
    iput-boolean p3, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->distanceEnabled:Z

    .line 12
    invoke-direct {p0}, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagRangeValid()Z

    move-result p3

    iput-boolean p3, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagIdRangeEnabled:Z

    if-eqz p2, :cond_2

    .line 13
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move p2, p1

    goto :goto_2

    :cond_2
    :goto_1
    move p2, p4

    :goto_2
    xor-int/2addr p2, p4

    iput-boolean p2, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->callsignEnabled:Z

    if-eqz p6, :cond_4

    .line 14
    invoke-interface {p6}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    move p2, p1

    goto :goto_4

    :cond_4
    :goto_3
    move p2, p4

    :goto_4
    xor-int/2addr p2, p4

    iput-boolean p2, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->colorEnabled:Z

    if-eqz p7, :cond_5

    .line 15
    invoke-interface {p7}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    move p1, p4

    :cond_6
    xor-int/2addr p1, p4

    iput-boolean p1, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->typeEnabled:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Collection;Ljava/util/Collection;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    move-object v5, v4

    goto :goto_2

    :cond_2
    move-object v5, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    move-object v6, v4

    goto :goto_3

    :cond_3
    move-object v6, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    move-object v7, v4

    goto :goto_4

    :cond_4
    move-object v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    move-object v8, v4

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    goto :goto_6

    :cond_6
    move-object/from16 v4, p7

    :goto_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    move/from16 v2, p8

    :goto_7
    move-object p1, p0

    move p2, v1

    move-object p3, v3

    move-object p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v4

    move/from16 p9, v2

    .line 16
    invoke-direct/range {p1 .. p9}, Lcom/toughstump/atos/filter/AtosFilterCriteria;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Collection;Ljava/util/Collection;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/toughstump/atos/filter/AtosFilterCriteria;ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Collection;Ljava/util/Collection;ZILjava/lang/Object;)Lcom/toughstump/atos/filter/AtosFilterCriteria;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->hideAllTags:Z

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->callsignMod:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->distanceM:Ljava/lang/Double;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagIdRangeStart:Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagIdRangeEnd:Ljava/lang/Integer;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->colors:Ljava/util/Collection;

    goto :goto_5

    :cond_5
    move-object v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->types:Ljava/util/Collection;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->isColorTypeLogicAnd:Z

    goto :goto_7

    :cond_7
    move/from16 v1, p8

    :goto_7
    move p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/toughstump/atos/filter/AtosFilterCriteria;->copy(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Collection;Ljava/util/Collection;Z)Lcom/toughstump/atos/filter/AtosFilterCriteria;

    move-result-object v0

    return-object v0
.end method

.method private final isVisible(Ljava/lang/String;Lcom/toughstump/atos/AtosColor;Lcom/toughstump/atos/AtosTrackType;ILjava/lang/Double;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->hideAllTags:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->isColorTypeLogicAnd:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->types:Ljava/util/Collection;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->colors:Ljava/util/Collection;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/toughstump/atos/filter/AtosFilterCriteria;->isCallsignVisible(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0, p3}, Lcom/toughstump/atos/filter/AtosFilterCriteria;->isTypeVisible(Lcom/toughstump/atos/AtosTrackType;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0, p2}, Lcom/toughstump/atos/filter/AtosFilterCriteria;->isColorVisible(Lcom/toughstump/atos/AtosColor;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    :cond_1
    invoke-virtual {p0, p4}, Lcom/toughstump/atos/filter/AtosFilterCriteria;->isInTagRange(I)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    invoke-virtual {p0, p5}, Lcom/toughstump/atos/filter/AtosFilterCriteria;->isDistanceVisible(Ljava/lang/Double;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    :goto_0
    move v1, v2

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {p0, p1}, Lcom/toughstump/atos/filter/AtosFilterCriteria;->isCallsignVisible(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    invoke-virtual {p0, p2}, Lcom/toughstump/atos/filter/AtosFilterCriteria;->isColorVisible(Lcom/toughstump/atos/AtosColor;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    invoke-virtual {p0, p3}, Lcom/toughstump/atos/filter/AtosFilterCriteria;->isTypeVisible(Lcom/toughstump/atos/AtosTrackType;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    invoke-virtual {p0, p4}, Lcom/toughstump/atos/filter/AtosFilterCriteria;->isInTagRange(I)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    invoke-virtual {p0, p5}, Lcom/toughstump/atos/filter/AtosFilterCriteria;->isDistanceVisible(Ljava/lang/Double;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    :goto_1
    return v1
.end method

.method private final tagRangeValid()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagIdRangeStart:Ljava/lang/Integer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagIdRangeEnd:Ljava/lang/Integer;

    .line 8
    .line 9
    if-nez v2, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-lt v0, v2, :cond_4

    .line 18
    .line 19
    iget-object v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagIdRangeEnd:Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-ge v0, v2, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagIdRangeStart:Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/16 v3, 0xff

    .line 35
    .line 36
    if-gt v0, v3, :cond_4

    .line 37
    .line 38
    iget-object v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagIdRangeEnd:Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-le v0, v3, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    return v2

    .line 48
    :cond_4
    :goto_0
    return v1
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->hideAllTags:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->callsignMod:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/Double;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->distanceM:Ljava/lang/Double;

    return-object v0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagIdRangeStart:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component5()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagIdRangeEnd:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component6()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/AtosColor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->colors:Ljava/util/Collection;

    return-object v0
.end method

.method public final component7()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/AtosTrackType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->types:Ljava/util/Collection;

    return-object v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->isColorTypeLogicAnd:Z

    return v0
.end method

.method public final copy(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Collection;Ljava/util/Collection;Z)Lcom/toughstump/atos/filter/AtosFilterCriteria;
    .locals 10
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/toughstump/atos/AtosColor;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/toughstump/atos/AtosTrackType;",
            ">;Z)",
            "Lcom/toughstump/atos/filter/AtosFilterCriteria;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v9, Lcom/toughstump/atos/filter/AtosFilterCriteria;

    move-object v0, v9

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/toughstump/atos/filter/AtosFilterCriteria;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Collection;Ljava/util/Collection;Z)V

    return-object v9
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
    instance-of v1, p1, Lcom/toughstump/atos/filter/AtosFilterCriteria;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/toughstump/atos/filter/AtosFilterCriteria;

    iget-boolean v1, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->hideAllTags:Z

    iget-boolean v3, p1, Lcom/toughstump/atos/filter/AtosFilterCriteria;->hideAllTags:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->callsignMod:Ljava/lang/String;

    iget-object v3, p1, Lcom/toughstump/atos/filter/AtosFilterCriteria;->callsignMod:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->distanceM:Ljava/lang/Double;

    iget-object v3, p1, Lcom/toughstump/atos/filter/AtosFilterCriteria;->distanceM:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagIdRangeStart:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagIdRangeStart:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagIdRangeEnd:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagIdRangeEnd:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->colors:Ljava/util/Collection;

    iget-object v3, p1, Lcom/toughstump/atos/filter/AtosFilterCriteria;->colors:Ljava/util/Collection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->types:Ljava/util/Collection;

    iget-object v3, p1, Lcom/toughstump/atos/filter/AtosFilterCriteria;->types:Ljava/util/Collection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->isColorTypeLogicAnd:Z

    iget-boolean p1, p1, Lcom/toughstump/atos/filter/AtosFilterCriteria;->isColorTypeLogicAnd:Z

    if-eq v1, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getCallsignMod()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->callsignMod:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getColors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/AtosColor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->colors:Ljava/util/Collection;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDistanceEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->distanceEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getDistanceM()Ljava/lang/Double;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->distanceM:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHideAllTags()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->hideAllTags:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getTagIdRangeEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagIdRangeEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getTagIdRangeEnd()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagIdRangeEnd:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTagIdRangeStart()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagIdRangeStart:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTypes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/AtosTrackType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->types:Ljava/util/Collection;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->hideAllTags:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->callsignMod:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->distanceM:Ljava/lang/Double;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagIdRangeStart:Ljava/lang/Integer;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagIdRangeEnd:Ljava/lang/Integer;

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->colors:Ljava/util/Collection;

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->types:Ljava/util/Collection;

    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->isColorTypeLogicAnd:Z

    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    return v0
.end method

.method public final isCallsignVisible(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tagCallsign"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->callsignMod:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->callsignMod:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {p1, v0, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 28
    return p1
.end method

.method public final isColorTypeLogicAnd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->isColorTypeLogicAnd:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isColorVisible(Lcom/toughstump/atos/AtosColor;)Z
    .locals 1
    .param p1    # Lcom/toughstump/atos/AtosColor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tagColor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->colors:Ljava/util/Collection;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->colors:Ljava/util/Collection;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 25
    return p1
.end method

.method public final isDistanceVisible(Ljava/lang/Double;)Z
    .locals 6
    .param p1    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->distanceEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    if-nez p1, :cond_1

    .line 8
    .line 9
    return v1

    .line 10
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    iget-object p1, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->distanceM:Ljava/lang/Double;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    cmpg-double p1, v2, v4

    .line 24
    .line 25
    if-gez p1, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 v1, 0x0

    .line 29
    :goto_0
    return v1
.end method

.method public final isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->hideAllTags:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->distanceEnabled:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagIdRangeEnabled:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->callsignEnabled:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->colorEnabled:Z

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->typeEnabled:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 29
    :goto_1
    return v0
.end method

.method public final isInTagRange(I)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagIdRangeEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagIdRangeStart:Ljava/lang/Integer;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    new-instance v3, Lkotlin/ranges/IntRange;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v4, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagIdRangeEnd:Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-direct {v3, v0, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p1}, Lkotlin/ranges/IntRange;->contains(I)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-ne p1, v1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v1, v2

    .line 38
    :goto_0
    return v1
.end method

.method public final isTagVisibleByFilterCriteria(Lcom/toughstump/atos/state/AtosTag;)Z
    .locals 7
    .param p1    # Lcom/toughstump/atos/state/AtosTag;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getCallsign()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getColor()Lcom/toughstump/atos/AtosColor;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getTrackType()Lcom/toughstump/atos/AtosTrackType;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getTagId()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getOwnshipRangeM()Ljava/lang/Double;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    move-object v1, p0

    .line 27
    invoke-direct/range {v1 .. v6}, Lcom/toughstump/atos/filter/AtosFilterCriteria;->isVisible(Ljava/lang/String;Lcom/toughstump/atos/AtosColor;Lcom/toughstump/atos/AtosTrackType;ILjava/lang/Double;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method public final isTypeVisible(Lcom/toughstump/atos/AtosTrackType;)Z
    .locals 1
    .param p1    # Lcom/toughstump/atos/AtosTrackType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "atosType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->types:Ljava/util/Collection;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->types:Ljava/util/Collection;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 25
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AtosFilterCriteria(hideAllTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->hideAllTags:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callsignMod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->callsignMod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", distanceM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->distanceM:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tagIdRangeStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagIdRangeStart:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tagIdRangeEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->tagIdRangeEnd:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", colors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->colors:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", types="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->types:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isColorTypeLogicAnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->isColorTypeLogicAnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
