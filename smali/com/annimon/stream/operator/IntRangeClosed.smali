.class public Lcom/annimon/stream/operator/IntRangeClosed;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "SourceFile"


# instance fields
.field private current:I

.field private final endInclusive:I

.field private hasNext:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/annimon/stream/operator/IntRangeClosed;->endInclusive:I

    .line 5
    .line 6
    iput p1, p0, Lcom/annimon/stream/operator/IntRangeClosed;->current:I

    .line 7
    .line 8
    if-gt p1, p2, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput-boolean p1, p0, Lcom/annimon/stream/operator/IntRangeClosed;->hasNext:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntRangeClosed;->hasNext:Z

    .line 2
    .line 3
    return v0
.end method

.method public nextInt()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/annimon/stream/operator/IntRangeClosed;->current:I

    .line 2
    .line 3
    iget v1, p0, Lcom/annimon/stream/operator/IntRangeClosed;->endInclusive:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/annimon/stream/operator/IntRangeClosed;->hasNext:Z

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 12
    .line 13
    iput v1, p0, Lcom/annimon/stream/operator/IntRangeClosed;->current:I

    .line 14
    .line 15
    return v0
.end method
