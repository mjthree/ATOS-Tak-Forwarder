.class public Lcom/annimon/stream/operator/LongTakeUntil;
.super Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;
.source "SourceFile"


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

.field private final stopPredicate:Lcom/annimon/stream/function/LongPredicate;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongPredicate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/LongTakeUntil;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/annimon/stream/operator/LongTakeUntil;->stopPredicate:Lcom/annimon/stream/function/LongPredicate;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/operator/LongTakeUntil;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

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
    iget-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;->isInit:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/annimon/stream/operator/LongTakeUntil;->stopPredicate:Lcom/annimon/stream/function/LongPredicate;

    .line 14
    .line 15
    iget-wide v1, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;->next:J

    .line 16
    .line 17
    invoke-interface {v0, v1, v2}, Lcom/annimon/stream/function/LongPredicate;->test(J)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    iput-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;->hasNext:Z

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/annimon/stream/operator/LongTakeUntil;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->next()Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    iput-wide v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;->next:J

    .line 41
    .line 42
    :cond_2
    return-void
.end method
