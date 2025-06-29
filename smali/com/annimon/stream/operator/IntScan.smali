.class public Lcom/annimon/stream/operator/IntScan;
.super Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;
.source "SourceFile"


# instance fields
.field private final accumulator:Lcom/annimon/stream/function/IntBinaryOperator;

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntBinaryOperator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/IntScan;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/annimon/stream/operator/IntScan;->accumulator:Lcom/annimon/stream/function/IntBinaryOperator;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/operator/IntScan;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;->hasNext:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/annimon/stream/operator/IntScan;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-boolean v1, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;->isInit:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/annimon/stream/operator/IntScan;->accumulator:Lcom/annimon/stream/function/IntBinaryOperator;

    .line 26
    .line 27
    iget v2, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;->next:I

    .line 28
    .line 29
    invoke-interface {v1, v2, v0}, Lcom/annimon/stream/function/IntBinaryOperator;->applyAsInt(II)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;->next:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iput v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;->next:I

    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method
