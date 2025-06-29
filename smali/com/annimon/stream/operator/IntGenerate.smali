.class public Lcom/annimon/stream/operator/IntGenerate;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "SourceFile"


# instance fields
.field private final supplier:Lcom/annimon/stream/function/IntSupplier;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/function/IntSupplier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/IntGenerate;->supplier:Lcom/annimon/stream/function/IntSupplier;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public nextInt()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/operator/IntGenerate;->supplier:Lcom/annimon/stream/function/IntSupplier;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/annimon/stream/function/IntSupplier;->getAsInt()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
