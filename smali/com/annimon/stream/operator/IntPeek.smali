.class public Lcom/annimon/stream/operator/IntPeek;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "SourceFile"


# instance fields
.field private final action:Lcom/annimon/stream/function/IntConsumer;

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntConsumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/IntPeek;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/annimon/stream/operator/IntPeek;->action:Lcom/annimon/stream/function/IntConsumer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/operator/IntPeek;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/operator/IntPeek;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/annimon/stream/operator/IntPeek;->action:Lcom/annimon/stream/function/IntConsumer;

    .line 8
    .line 9
    invoke-interface {v1, v0}, Lcom/annimon/stream/function/IntConsumer;->accept(I)V

    .line 10
    .line 11
    .line 12
    return v0
.end method
