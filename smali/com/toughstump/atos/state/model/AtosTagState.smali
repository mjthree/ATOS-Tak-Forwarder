.class public final Lcom/toughstump/atos/state/model/AtosTagState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final breadCrumbEnabled:Z

.field private final broadcastEnabled:Z

.field private final rangeAndBearingEnabled:Z

.field private final uid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZ)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "uid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/toughstump/atos/state/model/AtosTagState;->uid:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/toughstump/atos/state/model/AtosTagState;->broadcastEnabled:Z

    .line 4
    iput-boolean p3, p0, Lcom/toughstump/atos/state/model/AtosTagState;->rangeAndBearingEnabled:Z

    .line 5
    iput-boolean p4, p0, Lcom/toughstump/atos/state/model/AtosTagState;->breadCrumbEnabled:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x1

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/toughstump/atos/state/model/AtosTagState;-><init>(Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/toughstump/atos/state/model/AtosTagState;Ljava/lang/String;ZZZILjava/lang/Object;)Lcom/toughstump/atos/state/model/AtosTagState;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/toughstump/atos/state/model/AtosTagState;->uid:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lcom/toughstump/atos/state/model/AtosTagState;->broadcastEnabled:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/toughstump/atos/state/model/AtosTagState;->rangeAndBearingEnabled:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/toughstump/atos/state/model/AtosTagState;->breadCrumbEnabled:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/toughstump/atos/state/model/AtosTagState;->copy(Ljava/lang/String;ZZZ)Lcom/toughstump/atos/state/model/AtosTagState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/state/model/AtosTagState;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/toughstump/atos/state/model/AtosTagState;->broadcastEnabled:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/toughstump/atos/state/model/AtosTagState;->rangeAndBearingEnabled:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/toughstump/atos/state/model/AtosTagState;->breadCrumbEnabled:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;ZZZ)Lcom/toughstump/atos/state/model/AtosTagState;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "uid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/toughstump/atos/state/model/AtosTagState;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/toughstump/atos/state/model/AtosTagState;-><init>(Ljava/lang/String;ZZZ)V

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
    instance-of v1, p1, Lcom/toughstump/atos/state/model/AtosTagState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/toughstump/atos/state/model/AtosTagState;

    iget-object v1, p0, Lcom/toughstump/atos/state/model/AtosTagState;->uid:Ljava/lang/String;

    iget-object v3, p1, Lcom/toughstump/atos/state/model/AtosTagState;->uid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/toughstump/atos/state/model/AtosTagState;->broadcastEnabled:Z

    iget-boolean v3, p1, Lcom/toughstump/atos/state/model/AtosTagState;->broadcastEnabled:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/toughstump/atos/state/model/AtosTagState;->rangeAndBearingEnabled:Z

    iget-boolean v3, p1, Lcom/toughstump/atos/state/model/AtosTagState;->rangeAndBearingEnabled:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/toughstump/atos/state/model/AtosTagState;->breadCrumbEnabled:Z

    iget-boolean p1, p1, Lcom/toughstump/atos/state/model/AtosTagState;->breadCrumbEnabled:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getBreadCrumbEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/state/model/AtosTagState;->breadCrumbEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getBroadcastEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/state/model/AtosTagState;->broadcastEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getRangeAndBearingEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/state/model/AtosTagState;->rangeAndBearingEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/state/model/AtosTagState;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/toughstump/atos/state/model/AtosTagState;->uid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/toughstump/atos/state/model/AtosTagState;->broadcastEnabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/toughstump/atos/state/model/AtosTagState;->rangeAndBearingEnabled:Z

    if-eqz v1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/toughstump/atos/state/model/AtosTagState;->breadCrumbEnabled:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AtosTagState(uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/state/model/AtosTagState;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", broadcastEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/toughstump/atos/state/model/AtosTagState;->broadcastEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rangeAndBearingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/toughstump/atos/state/model/AtosTagState;->rangeAndBearingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", breadCrumbEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/toughstump/atos/state/model/AtosTagState;->breadCrumbEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
