.class public Lcom/annimon/stream/operator/DoubleMapToInt;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "SourceFile"


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

.field private final mapper:Lcom/annimon/stream/function/DoubleToIntFunction;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoubleToIntFunction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/DoubleMapToInt;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/annimon/stream/operator/DoubleMapToInt;->mapper:Lcom/annimon/stream/function/DoubleToIntFunction;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleMapToInt;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public nextInt()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleMapToInt;->mapper:Lcom/annimon/stream/function/DoubleToIntFunction;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/operator/DoubleMapToInt;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-interface {v0, v1, v2}, Lcom/annimon/stream/function/DoubleToIntFunction;->applyAsInt(D)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method
