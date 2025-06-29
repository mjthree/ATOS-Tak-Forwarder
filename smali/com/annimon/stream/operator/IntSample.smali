.class public Lcom/annimon/stream/operator/IntSample;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "SourceFile"


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

.field private final stepWidth:I


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/IntSample;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 5
    .line 6
    iput p2, p0, Lcom/annimon/stream/operator/IntSample;->stepWidth:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/operator/IntSample;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

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
    iget-object v0, p0, Lcom/annimon/stream/operator/IntSample;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    :goto_0
    iget v2, p0, Lcom/annimon/stream/operator/IntSample;->stepWidth:I

    .line 9
    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/annimon/stream/operator/IntSample;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object v2, p0, Lcom/annimon/stream/operator/IntSample;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    .line 23
    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return v0
.end method
