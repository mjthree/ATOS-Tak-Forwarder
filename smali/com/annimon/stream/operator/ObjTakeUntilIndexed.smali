.class public Lcom/annimon/stream/operator/ObjTakeUntilIndexed;
.super Lcom/annimon/stream/iterator/LsaExtIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/annimon/stream/iterator/LsaExtIterator<",
        "TT;>;"
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

.field private final stopPredicate:Lcom/annimon/stream/function/IndexedPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/IndexedPredicate<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/IndexedIterator;Lcom/annimon/stream/function/IndexedPredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/iterator/IndexedIterator<",
            "+TT;>;",
            "Lcom/annimon/stream/function/IndexedPredicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/LsaExtIterator;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjTakeUntilIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjTakeUntilIndexed;->stopPredicate:Lcom/annimon/stream/function/IndexedPredicate;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjTakeUntilIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/IndexedIterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/annimon/stream/iterator/LsaExtIterator;->isInit:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjTakeUntilIndexed;->stopPredicate:Lcom/annimon/stream/function/IndexedPredicate;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/annimon/stream/operator/ObjTakeUntilIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/annimon/stream/iterator/IndexedIterator;->getIndex()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lcom/annimon/stream/iterator/LsaExtIterator;->next:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-interface {v0, v1, v2}, Lcom/annimon/stream/function/IndexedPredicate;->test(ILjava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    :cond_0
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_0
    iput-boolean v0, p0, Lcom/annimon/stream/iterator/LsaExtIterator;->hasNext:Z

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjTakeUntilIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/IndexedIterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/annimon/stream/iterator/LsaExtIterator;->next:Ljava/lang/Object;

    .line 43
    .line 44
    :cond_2
    return-void
.end method
