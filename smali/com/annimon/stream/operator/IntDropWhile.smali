.class public Lcom/annimon/stream/operator/IntDropWhile;
.super Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;
.source "SourceFile"


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

.field private final predicate:Lcom/annimon/stream/function/IntPredicate;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntPredicate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/IntDropWhile;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/annimon/stream/operator/IntDropWhile;->predicate:Lcom/annimon/stream/function/IntPredicate;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;->isInit:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/IntDropWhile;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;->hasNext:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/annimon/stream/operator/IntDropWhile;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;->next:I

    .line 26
    .line 27
    iget-object v1, p0, Lcom/annimon/stream/operator/IntDropWhile;->predicate:Lcom/annimon/stream/function/IntPredicate;

    .line 28
    .line 29
    invoke-interface {v1, v0}, Lcom/annimon/stream/function/IntPredicate;->test(I)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;->hasNext:Z

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/annimon/stream/operator/IntDropWhile;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v0, 0x0

    .line 51
    :goto_0
    iput-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;->hasNext:Z

    .line 52
    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    return-void

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/annimon/stream/operator/IntDropWhile;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iput v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;->next:I

    .line 67
    .line 68
    return-void
.end method
