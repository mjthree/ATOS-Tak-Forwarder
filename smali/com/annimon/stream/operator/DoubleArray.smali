.class public Lcom/annimon/stream/operator/DoubleArray;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
.source "SourceFile"


# instance fields
.field private index:I

.field private final values:[D


# direct methods
.method public constructor <init>([D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/DoubleArray;->values:[D

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/annimon/stream/operator/DoubleArray;->index:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/annimon/stream/operator/DoubleArray;->index:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/operator/DoubleArray;->values:[D

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public nextDouble()D
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleArray;->values:[D

    .line 2
    .line 3
    iget v1, p0, Lcom/annimon/stream/operator/DoubleArray;->index:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/annimon/stream/operator/DoubleArray;->index:I

    .line 8
    .line 9
    aget-wide v1, v0, v1

    .line 10
    .line 11
    return-wide v1
.end method
