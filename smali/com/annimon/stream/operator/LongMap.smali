.class public Lcom/annimon/stream/operator/LongMap;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;
.source "SourceFile"


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

.field private final mapper:Lcom/annimon/stream/function/LongUnaryOperator;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongUnaryOperator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/LongMap;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/annimon/stream/operator/LongMap;->mapper:Lcom/annimon/stream/function/LongUnaryOperator;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/operator/LongMap;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

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

.method public nextLong()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/operator/LongMap;->mapper:Lcom/annimon/stream/function/LongUnaryOperator;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/operator/LongMap;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-interface {v0, v1, v2}, Lcom/annimon/stream/function/LongUnaryOperator;->applyAsLong(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method
