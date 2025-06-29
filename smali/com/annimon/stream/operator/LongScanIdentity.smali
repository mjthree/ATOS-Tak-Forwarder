.class public Lcom/annimon/stream/operator/LongScanIdentity;
.super Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;
.source "SourceFile"


# instance fields
.field private final accumulator:Lcom/annimon/stream/function/LongBinaryOperator;

.field private final identity:J

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;JLcom/annimon/stream/function/LongBinaryOperator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/LongScanIdentity;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/annimon/stream/operator/LongScanIdentity;->identity:J

    .line 7
    .line 8
    iput-object p4, p0, Lcom/annimon/stream/operator/LongScanIdentity;->accumulator:Lcom/annimon/stream/function/LongBinaryOperator;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;->isInit:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;->hasNext:Z

    .line 7
    .line 8
    iget-wide v0, p0, Lcom/annimon/stream/operator/LongScanIdentity;->identity:J

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;->next:J

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/LongScanIdentity;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;->hasNext:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/annimon/stream/operator/LongScanIdentity;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->next()Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    iget-object v2, p0, Lcom/annimon/stream/operator/LongScanIdentity;->accumulator:Lcom/annimon/stream/function/LongBinaryOperator;

    .line 34
    .line 35
    iget-wide v3, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;->next:J

    .line 36
    .line 37
    invoke-interface {v2, v3, v4, v0, v1}, Lcom/annimon/stream/function/LongBinaryOperator;->applyAsLong(JJ)J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iput-wide v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;->next:J

    .line 42
    .line 43
    :cond_1
    return-void
.end method
