.class public Lcom/annimon/stream/operator/DoubleFilterIndexed;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
.source "SourceFile"


# instance fields
.field private hasNext:Z

.field private hasNextEvaluated:Z

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;

.field private next:D

.field private final predicate:Lcom/annimon/stream/function/IndexedDoublePredicate;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;Lcom/annimon/stream/function/IndexedDoublePredicate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->predicate:Lcom/annimon/stream/function/IndexedDoublePredicate;

    .line 7
    .line 8
    return-void
.end method

.method private nextIteration()V
    .locals 4

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;->getIndex()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->next()Ljava/lang/Double;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    iput-wide v1, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->next:D

    .line 26
    .line 27
    iget-object v3, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->predicate:Lcom/annimon/stream/function/IndexedDoublePredicate;

    .line 28
    .line 29
    invoke-interface {v3, v0, v1, v2}, Lcom/annimon/stream/function/IndexedDoublePredicate;->test(ID)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->hasNext:Z

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->hasNext:Z

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->hasNextEvaluated:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/annimon/stream/operator/DoubleFilterIndexed;->nextIteration()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->hasNextEvaluated:Z

    .line 10
    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->hasNext:Z

    .line 12
    .line 13
    return v0
.end method

.method public nextDouble()D
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->hasNextEvaluated:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/annimon/stream/operator/DoubleFilterIndexed;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput-boolean v0, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->hasNext:Z

    .line 10
    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->hasNext:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->hasNextEvaluated:Z

    .line 17
    .line 18
    iget-wide v0, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->next:D

    .line 19
    .line 20
    return-wide v0

    .line 21
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw v0
.end method
