.class public Lcom/annimon/stream/operator/DoubleIterate;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
.source "SourceFile"


# instance fields
.field private current:D

.field private final op:Lcom/annimon/stream/function/DoubleUnaryOperator;


# direct methods
.method public constructor <init>(DLcom/annimon/stream/function/DoubleUnaryOperator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/annimon/stream/operator/DoubleIterate;->op:Lcom/annimon/stream/function/DoubleUnaryOperator;

    .line 5
    .line 6
    iput-wide p1, p0, Lcom/annimon/stream/operator/DoubleIterate;->current:D

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

.method public nextDouble()D
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/annimon/stream/operator/DoubleIterate;->current:D

    .line 2
    .line 3
    iget-object v2, p0, Lcom/annimon/stream/operator/DoubleIterate;->op:Lcom/annimon/stream/function/DoubleUnaryOperator;

    .line 4
    .line 5
    invoke-interface {v2, v0, v1}, Lcom/annimon/stream/function/DoubleUnaryOperator;->applyAsDouble(D)D

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    iput-wide v2, p0, Lcom/annimon/stream/operator/DoubleIterate;->current:D

    .line 10
    .line 11
    return-wide v0
.end method
