.class public Lcom/annimon/stream/operator/DoubleConcat;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
.source "SourceFile"


# instance fields
.field private firstStreamIsCurrent:Z

.field private final iterator1:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

.field private final iterator2:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/DoubleConcat;->iterator1:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/annimon/stream/operator/DoubleConcat;->iterator2:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/annimon/stream/operator/DoubleConcat;->firstStreamIsCurrent:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/operator/DoubleConcat;->firstStreamIsCurrent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleConcat;->iterator1:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/annimon/stream/operator/DoubleConcat;->firstStreamIsCurrent:Z

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleConcat;->iterator2:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method public nextDouble()D
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/operator/DoubleConcat;->firstStreamIsCurrent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleConcat;->iterator1:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 6
    .line 7
    :goto_0
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleConcat;->iterator2:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :goto_1
    return-wide v0
.end method
