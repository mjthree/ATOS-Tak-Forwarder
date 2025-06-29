.class public Lcom/annimon/stream/operator/ObjDropWhile;
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
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final predicate:Lcom/annimon/stream/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/LsaExtIterator;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjDropWhile;->iterator:Ljava/util/Iterator;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjDropWhile;->predicate:Lcom/annimon/stream/function/Predicate;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/iterator/LsaExtIterator;->isInit:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjDropWhile;->iterator:Ljava/util/Iterator;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

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
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjDropWhile;->iterator:Ljava/util/Iterator;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/annimon/stream/iterator/LsaExtIterator;->next:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/annimon/stream/operator/ObjDropWhile;->predicate:Lcom/annimon/stream/function/Predicate;

    .line 24
    .line 25
    invoke-interface {v1, v0}, Lcom/annimon/stream/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-boolean v0, p0, Lcom/annimon/stream/iterator/LsaExtIterator;->hasNext:Z

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjDropWhile;->iterator:Ljava/util/Iterator;

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v0, 0x0

    .line 47
    :goto_0
    iput-boolean v0, p0, Lcom/annimon/stream/iterator/LsaExtIterator;->hasNext:Z

    .line 48
    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjDropWhile;->iterator:Ljava/util/Iterator;

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/annimon/stream/iterator/LsaExtIterator;->next:Ljava/lang/Object;

    .line 59
    .line 60
    return-void
.end method
