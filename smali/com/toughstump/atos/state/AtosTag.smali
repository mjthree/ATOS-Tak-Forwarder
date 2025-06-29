.class public final Lcom/toughstump/atos/state/AtosTag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/state/AtosTag$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/state/AtosTag$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final atosKotEvent:Lcom/toughstump/atos/kot/AtosKotEvent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isMyTrack:Z

.field private final isVisible:Z

.field private final ownshipBearingDegTrue:Ljava/lang/Double;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final ownshipRangeM:Ljava/lang/Double;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final tagState:Lcom/toughstump/atos/state/model/AtosTagState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/state/AtosTag$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/state/AtosTag$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/state/AtosTag;->Companion:Lcom/toughstump/atos/state/AtosTag$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/toughstump/atos/kot/AtosKotEvent;Lcom/toughstump/atos/state/model/AtosTagState;ZZLjava/lang/Double;Ljava/lang/Double;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/kot/AtosKotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/toughstump/atos/state/model/AtosTagState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "atosKotEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/toughstump/atos/state/AtosTag;->atosKotEvent:Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 3
    iput-object p2, p0, Lcom/toughstump/atos/state/AtosTag;->tagState:Lcom/toughstump/atos/state/model/AtosTagState;

    .line 4
    iput-boolean p3, p0, Lcom/toughstump/atos/state/AtosTag;->isVisible:Z

    .line 5
    iput-boolean p4, p0, Lcom/toughstump/atos/state/AtosTag;->isMyTrack:Z

    .line 6
    iput-object p5, p0, Lcom/toughstump/atos/state/AtosTag;->ownshipRangeM:Ljava/lang/Double;

    .line 7
    iput-object p6, p0, Lcom/toughstump/atos/state/AtosTag;->ownshipBearingDegTrue:Ljava/lang/Double;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/toughstump/atos/kot/AtosKotEvent;Lcom/toughstump/atos/state/model/AtosTagState;ZZLjava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, p5

    :goto_0
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, p6

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 8
    invoke-direct/range {v2 .. v8}, Lcom/toughstump/atos/state/AtosTag;-><init>(Lcom/toughstump/atos/kot/AtosKotEvent;Lcom/toughstump/atos/state/model/AtosTagState;ZZLjava/lang/Double;Ljava/lang/Double;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/toughstump/atos/state/AtosTag;Lcom/toughstump/atos/kot/AtosKotEvent;Lcom/toughstump/atos/state/model/AtosTagState;ZZLjava/lang/Double;Ljava/lang/Double;ILjava/lang/Object;)Lcom/toughstump/atos/state/AtosTag;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/toughstump/atos/state/AtosTag;->atosKotEvent:Lcom/toughstump/atos/kot/AtosKotEvent;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/toughstump/atos/state/AtosTag;->tagState:Lcom/toughstump/atos/state/model/AtosTagState;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lcom/toughstump/atos/state/AtosTag;->isVisible:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/toughstump/atos/state/AtosTag;->isMyTrack:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/toughstump/atos/state/AtosTag;->ownshipRangeM:Ljava/lang/Double;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/toughstump/atos/state/AtosTag;->ownshipBearingDegTrue:Ljava/lang/Double;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move p5, v0

    move p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/toughstump/atos/state/AtosTag;->copy(Lcom/toughstump/atos/kot/AtosKotEvent;Lcom/toughstump/atos/state/model/AtosTagState;ZZLjava/lang/Double;Ljava/lang/Double;)Lcom/toughstump/atos/state/AtosTag;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/toughstump/atos/kot/AtosKotEvent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/state/AtosTag;->atosKotEvent:Lcom/toughstump/atos/kot/AtosKotEvent;

    return-object v0
.end method

.method public final component2()Lcom/toughstump/atos/state/model/AtosTagState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/state/AtosTag;->tagState:Lcom/toughstump/atos/state/model/AtosTagState;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/toughstump/atos/state/AtosTag;->isVisible:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/toughstump/atos/state/AtosTag;->isMyTrack:Z

    return v0
.end method

.method public final component5()Ljava/lang/Double;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/state/AtosTag;->ownshipRangeM:Ljava/lang/Double;

    return-object v0
.end method

.method public final component6()Ljava/lang/Double;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/state/AtosTag;->ownshipBearingDegTrue:Ljava/lang/Double;

    return-object v0
.end method

.method public final copy(Lcom/toughstump/atos/kot/AtosKotEvent;Lcom/toughstump/atos/state/model/AtosTagState;ZZLjava/lang/Double;Ljava/lang/Double;)Lcom/toughstump/atos/state/AtosTag;
    .locals 8
    .param p1    # Lcom/toughstump/atos/kot/AtosKotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/toughstump/atos/state/model/AtosTagState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "atosKotEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/toughstump/atos/state/AtosTag;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/toughstump/atos/state/AtosTag;-><init>(Lcom/toughstump/atos/kot/AtosKotEvent;Lcom/toughstump/atos/state/model/AtosTagState;ZZLjava/lang/Double;Ljava/lang/Double;)V

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
    instance-of v1, p1, Lcom/toughstump/atos/state/AtosTag;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/toughstump/atos/state/AtosTag;

    iget-object v1, p0, Lcom/toughstump/atos/state/AtosTag;->atosKotEvent:Lcom/toughstump/atos/kot/AtosKotEvent;

    iget-object v3, p1, Lcom/toughstump/atos/state/AtosTag;->atosKotEvent:Lcom/toughstump/atos/kot/AtosKotEvent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/toughstump/atos/state/AtosTag;->tagState:Lcom/toughstump/atos/state/model/AtosTagState;

    iget-object v3, p1, Lcom/toughstump/atos/state/AtosTag;->tagState:Lcom/toughstump/atos/state/model/AtosTagState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/toughstump/atos/state/AtosTag;->isVisible:Z

    iget-boolean v3, p1, Lcom/toughstump/atos/state/AtosTag;->isVisible:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/toughstump/atos/state/AtosTag;->isMyTrack:Z

    iget-boolean v3, p1, Lcom/toughstump/atos/state/AtosTag;->isMyTrack:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/toughstump/atos/state/AtosTag;->ownshipRangeM:Ljava/lang/Double;

    iget-object v3, p1, Lcom/toughstump/atos/state/AtosTag;->ownshipRangeM:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/toughstump/atos/state/AtosTag;->ownshipBearingDegTrue:Ljava/lang/Double;

    iget-object p1, p1, Lcom/toughstump/atos/state/AtosTag;->ownshipBearingDegTrue:Ljava/lang/Double;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAtosKotEvent()Lcom/toughstump/atos/kot/AtosKotEvent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/state/AtosTag;->atosKotEvent:Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBreadcrumbEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/state/AtosTag;->tagState:Lcom/toughstump/atos/state/model/AtosTagState;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/state/model/AtosTagState;->getBreadCrumbEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getBroadcastEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/state/AtosTag;->tagState:Lcom/toughstump/atos/state/model/AtosTagState;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/state/model/AtosTagState;->getBroadcastEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getCallsign()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/state/AtosTag;->atosKotEvent:Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getCallsign()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getColor()Lcom/toughstump/atos/AtosColor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/state/AtosTag;->atosKotEvent:Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getColor()Lcom/toughstump/atos/AtosColor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getManifestUid()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/state/AtosTag;->atosKotEvent:Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getManifestUid()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getOwnshipBearingDegTrue()Ljava/lang/Double;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/state/AtosTag;->ownshipBearingDegTrue:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOwnshipRangeM()Ljava/lang/Double;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/state/AtosTag;->ownshipRangeM:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPoint()Lkot/KotPoint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/state/AtosTag;->atosKotEvent:Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getPoint()Lkot/KotPoint;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getRangeAndBearingEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/state/AtosTag;->tagState:Lcom/toughstump/atos/state/model/AtosTagState;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/state/model/AtosTagState;->getRangeAndBearingEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getShouldBroadcast()Z
    .locals 4

    .line 1
    new-instance v0, Lkot/KotTime;

    .line 2
    .line 3
    invoke-direct {v0}, Lkot/KotTime;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lkot/KotTime;->getMilliseconds()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/toughstump/atos/state/AtosTag;->atosKotEvent:Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTime()Lkot/KotTime;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lkot/KotTime;->getMilliseconds()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    sub-long/2addr v0, v2

    .line 21
    const-wide/32 v2, 0x493e0

    .line 22
    .line 23
    .line 24
    cmp-long v0, v0, v2

    .line 25
    .line 26
    if-gez v0, :cond_0

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/toughstump/atos/state/AtosTag;->isVisible:Z

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/toughstump/atos/state/AtosTag;->getBroadcastEnabled()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0
.end method

.method public final getTagId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/state/AtosTag;->atosKotEvent:Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTagId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getTagState()Lcom/toughstump/atos/state/model/AtosTagState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/state/AtosTag;->tagState:Lcom/toughstump/atos/state/model/AtosTagState;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTrackType()Lcom/toughstump/atos/AtosTrackType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/state/AtosTag;->atosKotEvent:Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTrackType()Lcom/toughstump/atos/AtosTrackType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/state/AtosTag;->atosKotEvent:Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getUid()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/toughstump/atos/state/AtosTag;->atosKotEvent:Lcom/toughstump/atos/kot/AtosKotEvent;

    invoke-virtual {v0}, Lcom/toughstump/atos/kot/AtosKotEvent;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/state/AtosTag;->tagState:Lcom/toughstump/atos/state/model/AtosTagState;

    invoke-virtual {v1}, Lcom/toughstump/atos/state/model/AtosTagState;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/toughstump/atos/state/AtosTag;->isVisible:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/toughstump/atos/state/AtosTag;->isMyTrack:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/state/AtosTag;->ownshipRangeM:Ljava/lang/Double;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/state/AtosTag;->ownshipBearingDegTrue:Ljava/lang/Double;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final isMyTrack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/state/AtosTag;->isMyTrack:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/state/AtosTag;->isVisible:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AtosTag(atosKotEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/state/AtosTag;->atosKotEvent:Lcom/toughstump/atos/kot/AtosKotEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tagState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/state/AtosTag;->tagState:Lcom/toughstump/atos/state/model/AtosTagState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/toughstump/atos/state/AtosTag;->isVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMyTrack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/toughstump/atos/state/AtosTag;->isMyTrack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ownshipRangeM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/state/AtosTag;->ownshipRangeM:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ownshipBearingDegTrue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/state/AtosTag;->ownshipBearingDegTrue:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
