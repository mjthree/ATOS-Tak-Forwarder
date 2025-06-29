.class public Lcom/annimon/stream/operator/IntLimit;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "SourceFile"


# instance fields
.field private index:J

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

.field private final maxSize:J


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/IntLimit;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/annimon/stream/operator/IntLimit;->maxSize:J

    .line 7
    .line 8
    const-wide/16 p1, 0x0

    .line 9
    .line 10
    iput-wide p1, p0, Lcom/annimon/stream/operator/IntLimit;->index:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/annimon/stream/operator/IntLimit;->index:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/annimon/stream/operator/IntLimit;->maxSize:J

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/annimon/stream/operator/IntLimit;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public nextInt()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/annimon/stream/operator/IntLimit;->index:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    iput-wide v0, p0, Lcom/annimon/stream/operator/IntLimit;->index:J

    .line 7
    .line 8
    iget-object v0, p0, Lcom/annimon/stream/operator/IntLimit;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method
