.class Lcom/annimon/stream/internal/SpinedBuffer$OfDouble$1;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;->iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field index:J

.field final synthetic this$0:Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;


# direct methods
.method constructor <init>(Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble$1;->this$0:Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble$1;->index:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble$1;->index:J

    .line 2
    .line 3
    iget-object v2, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble$1;->this$0:Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;

    .line 4
    .line 5
    invoke-virtual {v2}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->count()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public nextDouble()D
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble$1;->this$0:Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble$1;->index:J

    .line 4
    .line 5
    const-wide/16 v3, 0x1

    .line 6
    .line 7
    add-long/2addr v3, v1

    .line 8
    iput-wide v3, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble$1;->index:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/annimon/stream/internal/SpinedBuffer$OfDouble;->get(J)D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method
