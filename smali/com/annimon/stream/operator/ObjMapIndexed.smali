.class public Lcom/annimon/stream/operator/ObjMapIndexed;
.super Lcom/annimon/stream/iterator/LsaIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/annimon/stream/iterator/LsaIterator<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/IndexedIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/iterator/IndexedIterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final mapper:Lcom/annimon/stream/function/IndexedFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/IndexedFunction<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/IndexedIterator;Lcom/annimon/stream/function/IndexedFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/iterator/IndexedIterator<",
            "+TT;>;",
            "Lcom/annimon/stream/function/IndexedFunction<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/LsaIterator;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjMapIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjMapIndexed;->mapper:Lcom/annimon/stream/function/IndexedFunction;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjMapIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/IndexedIterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public nextIteration()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjMapIndexed;->mapper:Lcom/annimon/stream/function/IndexedFunction;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/operator/ObjMapIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/annimon/stream/iterator/IndexedIterator;->getIndex()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/annimon/stream/operator/ObjMapIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/annimon/stream/iterator/IndexedIterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v0, v1, v2}, Lcom/annimon/stream/function/IndexedFunction;->apply(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method
