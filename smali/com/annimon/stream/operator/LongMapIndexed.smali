.class public Lcom/annimon/stream/operator/LongMapIndexed;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;
.source "SourceFile"


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;

.field private final mapper:Lcom/annimon/stream/function/IndexedLongUnaryOperator;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;Lcom/annimon/stream/function/IndexedLongUnaryOperator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/LongMapIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/annimon/stream/operator/LongMapIndexed;->mapper:Lcom/annimon/stream/function/IndexedLongUnaryOperator;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/operator/LongMapIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public nextLong()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/operator/LongMapIndexed;->mapper:Lcom/annimon/stream/function/IndexedLongUnaryOperator;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/operator/LongMapIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;->getIndex()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/annimon/stream/operator/LongMapIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->next()Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    invoke-interface {v0, v1, v2, v3}, Lcom/annimon/stream/function/IndexedLongUnaryOperator;->applyAsLong(IJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    return-wide v0
.end method
