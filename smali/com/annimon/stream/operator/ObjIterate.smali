.class public Lcom/annimon/stream/operator/ObjIterate;
.super Lcom/annimon/stream/iterator/LsaIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/annimon/stream/iterator/LsaIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private current:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final op:Lcom/annimon/stream/function/UnaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/UnaryOperator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/annimon/stream/function/UnaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/annimon/stream/function/UnaryOperator<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/LsaIterator;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjIterate;->op:Lcom/annimon/stream/function/UnaryOperator;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjIterate;->current:Ljava/lang/Object;

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

.method public nextIteration()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjIterate;->current:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/operator/ObjIterate;->op:Lcom/annimon/stream/function/UnaryOperator;

    .line 4
    .line 5
    invoke-interface {v1, v0}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p0, Lcom/annimon/stream/operator/ObjIterate;->current:Ljava/lang/Object;

    .line 10
    .line 11
    return-object v0
.end method
