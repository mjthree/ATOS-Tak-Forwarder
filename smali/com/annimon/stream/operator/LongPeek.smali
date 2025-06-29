.class public Lcom/annimon/stream/operator/LongPeek;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;
.source "SourceFile"


# instance fields
.field private final action:Lcom/annimon/stream/function/LongConsumer;

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongConsumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/LongPeek;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/annimon/stream/operator/LongPeek;->action:Lcom/annimon/stream/function/LongConsumer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/operator/LongPeek;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

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
    iget-object v0, p0, Lcom/annimon/stream/operator/LongPeek;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/annimon/stream/operator/LongPeek;->action:Lcom/annimon/stream/function/LongConsumer;

    .line 8
    .line 9
    invoke-interface {v2, v0, v1}, Lcom/annimon/stream/function/LongConsumer;->accept(J)V

    .line 10
    .line 11
    .line 12
    return-wide v0
.end method
