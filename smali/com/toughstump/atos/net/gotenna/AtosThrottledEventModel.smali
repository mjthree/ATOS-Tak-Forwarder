.class public final Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final lastTxLocation:Lkot/KotPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lastTxTime:J

.field private final mostRecentKotEvent:Lcom/toughstump/atos/kot/AtosKotEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLkot/KotPoint;Lcom/toughstump/atos/kot/AtosKotEvent;)V
    .locals 1
    .param p3    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/toughstump/atos/kot/AtosKotEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "lastTxLocation"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-wide p1, p0, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->lastTxTime:J

    .line 10
    .line 11
    iput-object p3, p0, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->lastTxLocation:Lkot/KotPoint;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->mostRecentKotEvent:Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic copy$default(Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;JLkot/KotPoint;Lcom/toughstump/atos/kot/AtosKotEvent;ILjava/lang/Object;)Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->lastTxTime:J

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p3, p0, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->lastTxLocation:Lkot/KotPoint;

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-object p4, p0, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->mostRecentKotEvent:Lcom/toughstump/atos/kot/AtosKotEvent;

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->copy(JLkot/KotPoint;Lcom/toughstump/atos/kot/AtosKotEvent;)Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->lastTxTime:J

    return-wide v0
.end method

.method public final component2()Lkot/KotPoint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->lastTxLocation:Lkot/KotPoint;

    return-object v0
.end method

.method public final component3()Lcom/toughstump/atos/kot/AtosKotEvent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->mostRecentKotEvent:Lcom/toughstump/atos/kot/AtosKotEvent;

    return-object v0
.end method

.method public final copy(JLkot/KotPoint;Lcom/toughstump/atos/kot/AtosKotEvent;)Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;
    .locals 1
    .param p3    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/toughstump/atos/kot/AtosKotEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "lastTxLocation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;-><init>(JLkot/KotPoint;Lcom/toughstump/atos/kot/AtosKotEvent;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;

    iget-wide v3, p0, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->lastTxTime:J

    iget-wide v5, p1, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->lastTxTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->lastTxLocation:Lkot/KotPoint;

    iget-object v3, p1, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->lastTxLocation:Lkot/KotPoint;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->mostRecentKotEvent:Lcom/toughstump/atos/kot/AtosKotEvent;

    iget-object p1, p1, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->mostRecentKotEvent:Lcom/toughstump/atos/kot/AtosKotEvent;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getLastTxLocation()Lkot/KotPoint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->lastTxLocation:Lkot/KotPoint;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastTxTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->lastTxTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMostRecentKotEvent()Lcom/toughstump/atos/kot/AtosKotEvent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->mostRecentKotEvent:Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->lastTxTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->lastTxLocation:Lkot/KotPoint;

    invoke-virtual {v1}, Lkot/KotPoint;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->mostRecentKotEvent:Lcom/toughstump/atos/kot/AtosKotEvent;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/toughstump/atos/kot/AtosKotEvent;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AtosThrottledEventModel(lastTxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->lastTxTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastTxLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->lastTxLocation:Lkot/KotPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mostRecentKotEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->mostRecentKotEvent:Lcom/toughstump/atos/kot/AtosKotEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
