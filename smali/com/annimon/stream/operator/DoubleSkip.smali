.class public Lcom/annimon/stream/operator/DoubleSkip;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
.source "SourceFile"


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

.field private final n:J

.field private skipped:J


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/DoubleSkip;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/annimon/stream/operator/DoubleSkip;->n:J

    .line 7
    .line 8
    const-wide/16 p1, 0x0

    .line 9
    .line 10
    iput-wide p1, p0, Lcom/annimon/stream/operator/DoubleSkip;->skipped:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleSkip;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/annimon/stream/operator/DoubleSkip;->skipped:J

    .line 10
    .line 11
    iget-wide v2, p0, Lcom/annimon/stream/operator/DoubleSkip;->n:J

    .line 12
    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleSkip;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    .line 21
    .line 22
    .line 23
    iget-wide v0, p0, Lcom/annimon/stream/operator/DoubleSkip;->skipped:J

    .line 24
    .line 25
    const-wide/16 v2, 0x1

    .line 26
    .line 27
    add-long/2addr v0, v2

    .line 28
    iput-wide v0, p0, Lcom/annimon/stream/operator/DoubleSkip;->skipped:J

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleSkip;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    return v0
.end method

.method public nextDouble()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleSkip;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method
