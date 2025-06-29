.class public final Lcom/toughstump/atos/record/geo/GeoBounds;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/record/geo/GeoBounds$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/record/geo/GeoBounds$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private east:D

.field private north:D

.field private south:D

.field private west:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/record/geo/GeoBounds$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/record/geo/GeoBounds$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/record/geo/GeoBounds;->Companion:Lcom/toughstump/atos/record/geo/GeoBounds$Companion;

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 11

    cmpg-double v0, p1, p5

    if-gez v0, :cond_0

    move-wide v2, p1

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p5

    :goto_0
    cmpg-double v0, p3, p7

    if-gez v0, :cond_1

    move-wide v4, p3

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p7

    :goto_1
    cmpl-double v0, p1, p5

    if-lez v0, :cond_2

    move-wide v6, p1

    goto :goto_2

    :cond_2
    move-wide/from16 v6, p5

    :goto_2
    cmpl-double v0, p3, p7

    if-lez v0, :cond_3

    move-wide v8, p3

    goto :goto_3

    :cond_3
    move-wide/from16 v8, p7

    :goto_3
    const/4 v10, 0x1

    move-object v1, p0

    .line 8
    invoke-direct/range {v1 .. v10}, Lcom/toughstump/atos/record/geo/GeoBounds;-><init>(DDDDZ)V

    return-void
.end method

.method public constructor <init>(DDDDZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->south:D

    .line 3
    iput-wide p3, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->west:D

    .line 4
    iput-wide p5, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->north:D

    .line 5
    iput-wide p7, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->east:D

    return-void
.end method

.method public constructor <init>(Lcom/toughstump/atos/record/geo/GeoBounds;)V
    .locals 11
    .param p1    # Lcom/toughstump/atos/record/geo/GeoBounds;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-wide v2, p1, Lcom/toughstump/atos/record/geo/GeoBounds;->south:D

    iget-wide v4, p1, Lcom/toughstump/atos/record/geo/GeoBounds;->west:D

    iget-wide v6, p1, Lcom/toughstump/atos/record/geo/GeoBounds;->north:D

    iget-wide v8, p1, Lcom/toughstump/atos/record/geo/GeoBounds;->east:D

    const/4 v10, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/toughstump/atos/record/geo/GeoBounds;-><init>(DDDDZ)V

    return-void
.end method

.method public constructor <init>(Lkot/KotPoint;Lkot/KotPoint;)V
    .locals 10
    .param p1    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lkot/KotPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lkot/KotPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p2}, Lkot/KotPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p2}, Lkot/KotPoint;->getLongitude()D

    move-result-wide v8

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/toughstump/atos/record/geo/GeoBounds;-><init>(DDDD)V

    return-void
.end method


# virtual methods
.method public final contains(Lcom/toughstump/atos/record/geo/GeoBounds;)Z
    .locals 4
    .param p1    # Lcom/toughstump/atos/record/geo/GeoBounds;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p1, Lcom/toughstump/atos/record/geo/GeoBounds;->east:D

    iget-wide v2, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->east:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p1, Lcom/toughstump/atos/record/geo/GeoBounds;->west:D

    iget-wide v2, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->west:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p1, Lcom/toughstump/atos/record/geo/GeoBounds;->south:D

    iget-wide v2, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->south:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p1, Lcom/toughstump/atos/record/geo/GeoBounds;->north:D

    iget-wide v2, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->north:D

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final contains(Lkot/KotPoint;)Z
    .locals 4
    .param p1    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lkot/KotPoint;->getLongitude()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->west:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lkot/KotPoint;->getLongitude()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->east:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lkot/KotPoint;->getLatitude()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->south:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lkot/KotPoint;->getLatitude()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->north:D

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getCenter()Lkot/KotPoint;
    .locals 19
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    .line 3
    new-instance v14, Lkot/KotPoint;

    iget-wide v1, v0, Lcom/toughstump/atos/record/geo/GeoBounds;->north:D

    iget-wide v3, v0, Lcom/toughstump/atos/record/geo/GeoBounds;->south:D

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v5, v1, v3

    iget-wide v1, v0, Lcom/toughstump/atos/record/geo/GeoBounds;->east:D

    iget-wide v7, v0, Lcom/toughstump/atos/record/geo/GeoBounds;->west:D

    add-double/2addr v1, v7

    div-double v7, v1, v3

    const/16 v12, 0x1c

    const/4 v13, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    move-object v1, v14

    move-wide v2, v5

    move-wide v4, v7

    move-wide v6, v9

    move-wide v8, v15

    move-wide/from16 v10, v17

    invoke-direct/range {v1 .. v13}, Lkot/KotPoint;-><init>(DDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v14
.end method

.method public final getCenter(Lkot/KotPoint;)Lkot/KotPoint;
    .locals 29
    .param p1    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    if-eqz p1, :cond_0

    .line 1
    new-instance v3, Lkot/KotPoint;

    iget-wide v4, v0, Lcom/toughstump/atos/record/geo/GeoBounds;->north:D

    iget-wide v6, v0, Lcom/toughstump/atos/record/geo/GeoBounds;->south:D

    add-double/2addr v4, v6

    div-double/2addr v4, v1

    iget-wide v6, v0, Lcom/toughstump/atos/record/geo/GeoBounds;->east:D

    iget-wide v8, v0, Lcom/toughstump/atos/record/geo/GeoBounds;->west:D

    add-double/2addr v6, v8

    div-double/2addr v6, v1

    const/16 v14, 0x1c

    const/4 v15, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v3 .. v15}, Lkot/KotPoint;-><init>(DDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, p1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v3, Lkot/KotPoint;

    iget-wide v4, v0, Lcom/toughstump/atos/record/geo/GeoBounds;->north:D

    iget-wide v6, v0, Lcom/toughstump/atos/record/geo/GeoBounds;->south:D

    add-double/2addr v4, v6

    div-double v17, v4, v1

    iget-wide v4, v0, Lcom/toughstump/atos/record/geo/GeoBounds;->east:D

    iget-wide v6, v0, Lcom/toughstump/atos/record/geo/GeoBounds;->west:D

    add-double/2addr v4, v6

    div-double v19, v4, v1

    const/16 v27, 0x1c

    const/16 v28, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v28}, Lkot/KotPoint;-><init>(DDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    return-object v3
.end method

.method public final getEast()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->east:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getNorth()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->north:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSouth()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->south:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getWest()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->west:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final intersects(DDDD)Z
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->north:D

    cmpg-double p5, v0, p5

    if-ltz p5, :cond_0

    iget-wide p5, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->south:D

    cmpl-double p1, p5, p1

    if-gtz p1, :cond_0

    iget-wide p1, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->east:D

    cmpg-double p1, p1, p3

    if-ltz p1, :cond_0

    iget-wide p1, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->west:D

    cmpl-double p1, p1, p7

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final intersects(Lcom/toughstump/atos/record/geo/GeoBounds;)Z
    .locals 10
    .param p1    # Lcom/toughstump/atos/record/geo/GeoBounds;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v2, p1, Lcom/toughstump/atos/record/geo/GeoBounds;->north:D

    iget-wide v4, p1, Lcom/toughstump/atos/record/geo/GeoBounds;->west:D

    iget-wide v6, p1, Lcom/toughstump/atos/record/geo/GeoBounds;->south:D

    iget-wide v8, p1, Lcom/toughstump/atos/record/geo/GeoBounds;->east:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/toughstump/atos/record/geo/GeoBounds;->intersects(DDDD)Z

    move-result p1

    return p1
.end method

.method public final setEast(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->east:D

    .line 2
    .line 3
    return-void
.end method

.method public final setNorth(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->north:D

    .line 2
    .line 3
    return-void
.end method

.method public final setSouth(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->south:D

    .line 2
    .line 3
    return-void
.end method

.method public final setWest(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->west:D

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "GeoBounds {north="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->north:D

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", west="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->west:D

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", south="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-wide v1, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->south:D

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", east="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-wide v1, p0, Lcom/toughstump/atos/record/geo/GeoBounds;->east:D

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x7d

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
