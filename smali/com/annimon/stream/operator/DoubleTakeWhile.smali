.class public Lcom/annimon/stream/operator/DoubleTakeWhile;
.super Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;
.source "SourceFile"


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

.field private final predicate:Lcom/annimon/stream/function/DoublePredicate;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoublePredicate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/DoubleTakeWhile;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/annimon/stream/operator/DoubleTakeWhile;->predicate:Lcom/annimon/stream/function/DoublePredicate;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleTakeWhile;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleTakeWhile;->predicate:Lcom/annimon/stream/function/DoublePredicate;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/annimon/stream/operator/DoubleTakeWhile;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->next()Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    iput-wide v1, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;->next:D

    .line 22
    .line 23
    invoke-interface {v0, v1, v2}, Lcom/annimon/stream/function/DoublePredicate;->test(D)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    iput-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfDouble;->hasNext:Z

    .line 33
    .line 34
    return-void
.end method
