.class public Lcom/annimon/stream/operator/IntScanIdentity;
.super Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;
.source "SourceFile"


# instance fields
.field private final accumulator:Lcom/annimon/stream/function/IntBinaryOperator;

.field private final identity:I

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;ILcom/annimon/stream/function/IntBinaryOperator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/IntScanIdentity;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 5
    .line 6
    iput p2, p0, Lcom/annimon/stream/operator/IntScanIdentity;->identity:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/annimon/stream/operator/IntScanIdentity;->accumulator:Lcom/annimon/stream/function/IntBinaryOperator;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;->isInit:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;->hasNext:Z

    .line 7
    .line 8
    iget v0, p0, Lcom/annimon/stream/operator/IntScanIdentity;->identity:I

    .line 9
    .line 10
    iput v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;->next:I

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/IntScanIdentity;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;->hasNext:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/annimon/stream/operator/IntScanIdentity;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v1, p0, Lcom/annimon/stream/operator/IntScanIdentity;->accumulator:Lcom/annimon/stream/function/IntBinaryOperator;

    .line 34
    .line 35
    iget v2, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;->next:I

    .line 36
    .line 37
    invoke-interface {v1, v2, v0}, Lcom/annimon/stream/function/IntBinaryOperator;->applyAsInt(II)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;->next:I

    .line 42
    .line 43
    :cond_1
    return-void
.end method
