.class public Lcom/annimon/stream/operator/IntFlatMap;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "SourceFile"


# instance fields
.field private inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

.field private innerStream:Lcom/annimon/stream/IntStream;

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

.field private final mapper:Lcom/annimon/stream/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/IntFunction<",
            "+",
            "Lcom/annimon/stream/IntStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;",
            "Lcom/annimon/stream/function/IntFunction<",
            "+",
            "Lcom/annimon/stream/IntStream;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/IntFlatMap;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/annimon/stream/operator/IntFlatMap;->mapper:Lcom/annimon/stream/function/IntFunction;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/operator/IntFlatMap;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/operator/IntFlatMap;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    iget-object v0, p0, Lcom/annimon/stream/operator/IntFlatMap;->innerStream:Lcom/annimon/stream/IntStream;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/annimon/stream/IntStream;->close()V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lcom/annimon/stream/operator/IntFlatMap;->innerStream:Lcom/annimon/stream/IntStream;

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/annimon/stream/operator/IntFlatMap;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v2, p0, Lcom/annimon/stream/operator/IntFlatMap;->mapper:Lcom/annimon/stream/function/IntFunction;

    .line 38
    .line 39
    invoke-interface {v2, v0}, Lcom/annimon/stream/function/IntFunction;->apply(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/annimon/stream/IntStream;

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iput-object v0, p0, Lcom/annimon/stream/operator/IntFlatMap;->innerStream:Lcom/annimon/stream/IntStream;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/annimon/stream/IntStream;->iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_0

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/annimon/stream/IntStream;->iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/annimon/stream/operator/IntFlatMap;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 65
    .line 66
    return v1

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/annimon/stream/operator/IntFlatMap;->innerStream:Lcom/annimon/stream/IntStream;

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/annimon/stream/IntStream;->close()V

    .line 72
    .line 73
    .line 74
    iput-object v2, p0, Lcom/annimon/stream/operator/IntFlatMap;->innerStream:Lcom/annimon/stream/IntStream;

    .line 75
    .line 76
    :cond_4
    const/4 v0, 0x0

    .line 77
    return v0
.end method

.method public nextInt()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/operator/IntFlatMap;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 13
    .line 14
    .line 15
    throw v0
.end method
