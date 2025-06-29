.class public Lcom/annimon/stream/operator/IntMapToDouble;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
.source "SourceFile"


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

.field private final mapper:Lcom/annimon/stream/function/IntToDoubleFunction;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntToDoubleFunction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/IntMapToDouble;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/annimon/stream/operator/IntMapToDouble;->mapper:Lcom/annimon/stream/function/IntToDoubleFunction;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/operator/IntMapToDouble;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

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

.method public nextDouble()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/operator/IntMapToDouble;->mapper:Lcom/annimon/stream/function/IntToDoubleFunction;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/operator/IntMapToDouble;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {v0, v1}, Lcom/annimon/stream/function/IntToDoubleFunction;->applyAsDouble(I)D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method
