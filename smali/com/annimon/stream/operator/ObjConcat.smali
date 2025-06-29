.class public Lcom/annimon/stream/operator/ObjConcat;
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
.field private firstStreamIsCurrent:Z

.field private final iterator1:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final iterator2:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/LsaExtIterator;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjConcat;->iterator1:Ljava/util/Iterator;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjConcat;->iterator2:Ljava/util/Iterator;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/annimon/stream/operator/ObjConcat;->firstStreamIsCurrent:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/operator/ObjConcat;->firstStreamIsCurrent:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjConcat;->iterator1:Ljava/util/Iterator;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjConcat;->iterator1:Ljava/util/Iterator;

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
    iput-boolean v2, p0, Lcom/annimon/stream/iterator/LsaExtIterator;->hasNext:Z

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iput-boolean v1, p0, Lcom/annimon/stream/operator/ObjConcat;->firstStreamIsCurrent:Z

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjConcat;->iterator2:Ljava/util/Iterator;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjConcat;->iterator2:Ljava/util/Iterator;

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/annimon/stream/iterator/LsaExtIterator;->next:Ljava/lang/Object;

    .line 43
    .line 44
    iput-boolean v2, p0, Lcom/annimon/stream/iterator/LsaExtIterator;->hasNext:Z

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    iput-boolean v1, p0, Lcom/annimon/stream/iterator/LsaExtIterator;->hasNext:Z

    .line 48
    .line 49
    return-void
.end method
