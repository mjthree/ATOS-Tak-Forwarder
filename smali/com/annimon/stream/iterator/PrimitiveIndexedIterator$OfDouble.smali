.class public Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/iterator/PrimitiveIndexedIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfDouble"
.end annotation


# instance fields
.field private index:I

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

.field private final step:I


# direct methods
.method public constructor <init>(IILcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;-><init>()V

    .line 3
    iput-object p3, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 4
    iput p2, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;->step:I

    .line 5
    iput p1, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;->index:I

    return-void
.end method

.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1, p1}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;-><init>(IILcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;->index:I

    .line 2
    .line 3
    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->next()Ljava/lang/Double;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget v2, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;->index:I

    .line 12
    .line 13
    iget v3, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;->step:I

    .line 14
    .line 15
    add-int/2addr v2, v3

    .line 16
    iput v2, p0, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;->index:I

    .line 17
    .line 18
    return-wide v0
.end method
