.class public Lcom/annimon/stream/operator/DoubleSorted;
.super Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;
.source "SourceFile"


# instance fields
.field private array:[D

.field private index:I

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/DoubleSorted;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/annimon/stream/operator/DoubleSorted;->index:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;->isInit:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleSorted;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/annimon/stream/internal/Operators;->toDoubleArray(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)[D

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/annimon/stream/operator/DoubleSorted;->array:[D

    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/Arrays;->sort([D)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget v0, p0, Lcom/annimon/stream/operator/DoubleSorted;->index:I

    .line 17
    .line 18
    iget-object v1, p0, Lcom/annimon/stream/operator/DoubleSorted;->array:[D

    .line 19
    .line 20
    array-length v2, v1

    .line 21
    if-ge v0, v2, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v2, 0x0

    .line 26
    :goto_0
    iput-boolean v2, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;->hasNext:Z

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    add-int/lit8 v2, v0, 0x1

    .line 31
    .line 32
    iput v2, p0, Lcom/annimon/stream/operator/DoubleSorted;->index:I

    .line 33
    .line 34
    aget-wide v0, v1, v0

    .line 35
    .line 36
    iput-wide v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;->next:D

    .line 37
    .line 38
    :cond_2
    return-void
.end method
