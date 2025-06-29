.class public Lcom/annimon/stream/operator/ObjDropWhileIndexed;
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

.field private final predicate:Lcom/annimon/stream/function/IndexedPredicate;
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
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjDropWhileIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjDropWhileIndexed;->predicate:Lcom/annimon/stream/function/IndexedPredicate;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/iterator/LsaExtIterator;->isInit:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjDropWhileIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/IndexedIterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput-boolean v0, p0, Lcom/annimon/stream/iterator/LsaExtIterator;->hasNext:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjDropWhileIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/IndexedIterator;->getIndex()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lcom/annimon/stream/operator/ObjDropWhileIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/annimon/stream/iterator/IndexedIterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, p0, Lcom/annimon/stream/iterator/LsaExtIterator;->next:Ljava/lang/Object;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/annimon/stream/operator/ObjDropWhileIndexed;->predicate:Lcom/annimon/stream/function/IndexedPredicate;

    .line 30
    .line 31
    invoke-interface {v2, v0, v1}, Lcom/annimon/stream/function/IndexedPredicate;->test(ILjava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget-boolean v0, p0, Lcom/annimon/stream/iterator/LsaExtIterator;->hasNext:Z

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjDropWhileIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/IndexedIterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v0, 0x0

    .line 53
    :goto_0
    iput-boolean v0, p0, Lcom/annimon/stream/iterator/LsaExtIterator;->hasNext:Z

    .line 54
    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjDropWhileIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/IndexedIterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/annimon/stream/iterator/LsaExtIterator;->next:Ljava/lang/Object;

    .line 65
    .line 66
    return-void
.end method
