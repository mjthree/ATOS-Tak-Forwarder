.class public Lcom/annimon/stream/operator/IntFilter;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "SourceFile"


# instance fields
.field private hasNext:Z

.field private hasNextEvaluated:Z

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

.field private next:I

.field private final predicate:Lcom/annimon/stream/function/IntPredicate;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntPredicate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/IntFilter;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/annimon/stream/operator/IntFilter;->predicate:Lcom/annimon/stream/function/IntPredicate;

    .line 7
    .line 8
    return-void
.end method

.method private nextIteration()V
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/IntFilter;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

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
    iget-object v0, p0, Lcom/annimon/stream/operator/IntFilter;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/annimon/stream/operator/IntFilter;->next:I

    .line 16
    .line 17
    iget-object v1, p0, Lcom/annimon/stream/operator/IntFilter;->predicate:Lcom/annimon/stream/function/IntPredicate;

    .line 18
    .line 19
    invoke-interface {v1, v0}, Lcom/annimon/stream/function/IntPredicate;->test(I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/annimon/stream/operator/IntFilter;->hasNext:Z

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/annimon/stream/operator/IntFilter;->hasNext:Z

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntFilter;->hasNextEvaluated:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/annimon/stream/operator/IntFilter;->nextIteration()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/annimon/stream/operator/IntFilter;->hasNextEvaluated:Z

    .line 10
    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntFilter;->hasNext:Z

    .line 12
    .line 13
    return v0
.end method

.method public nextInt()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntFilter;->hasNextEvaluated:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/annimon/stream/operator/IntFilter;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput-boolean v0, p0, Lcom/annimon/stream/operator/IntFilter;->hasNext:Z

    .line 10
    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntFilter;->hasNext:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/annimon/stream/operator/IntFilter;->hasNextEvaluated:Z

    .line 17
    .line 18
    iget v0, p0, Lcom/annimon/stream/operator/IntFilter;->next:I

    .line 19
    .line 20
    return v0

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
