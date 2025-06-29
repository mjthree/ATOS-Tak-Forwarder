.class public Lcom/annimon/stream/operator/IntIterate;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "SourceFile"


# instance fields
.field private current:I

.field private final op:Lcom/annimon/stream/function/IntUnaryOperator;


# direct methods
.method public constructor <init>(ILcom/annimon/stream/function/IntUnaryOperator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/annimon/stream/operator/IntIterate;->op:Lcom/annimon/stream/function/IntUnaryOperator;

    .line 5
    .line 6
    iput p1, p0, Lcom/annimon/stream/operator/IntIterate;->current:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public nextInt()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/annimon/stream/operator/IntIterate;->current:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/operator/IntIterate;->op:Lcom/annimon/stream/function/IntUnaryOperator;

    .line 4
    .line 5
    invoke-interface {v1, v0}, Lcom/annimon/stream/function/IntUnaryOperator;->applyAsInt(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iput v1, p0, Lcom/annimon/stream/operator/IntIterate;->current:I

    .line 10
    .line 11
    return v0
.end method
