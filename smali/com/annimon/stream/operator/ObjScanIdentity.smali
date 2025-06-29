.class public Lcom/annimon/stream/operator/ObjScanIdentity;
.super Lcom/annimon/stream/iterator/LsaExtIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/annimon/stream/iterator/LsaExtIterator<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final accumulator:Lcom/annimon/stream/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/BiFunction<",
            "-TR;-TT;+TR;>;"
        }
    .end annotation
.end field

.field private final identity:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljava/lang/Object;Lcom/annimon/stream/function/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;TR;",
            "Lcom/annimon/stream/function/BiFunction<",
            "-TR;-TT;+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/LsaExtIterator;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjScanIdentity;->iterator:Ljava/util/Iterator;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjScanIdentity;->identity:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/annimon/stream/operator/ObjScanIdentity;->accumulator:Lcom/annimon/stream/function/BiFunction;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/iterator/LsaExtIterator;->isInit:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/annimon/stream/iterator/LsaExtIterator;->hasNext:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjScanIdentity;->identity:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/annimon/stream/iterator/LsaExtIterator;->next:Ljava/lang/Object;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjScanIdentity;->iterator:Ljava/util/Iterator;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput-boolean v0, p0, Lcom/annimon/stream/iterator/LsaExtIterator;->hasNext:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjScanIdentity;->iterator:Ljava/util/Iterator;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/annimon/stream/operator/ObjScanIdentity;->accumulator:Lcom/annimon/stream/function/BiFunction;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/annimon/stream/iterator/LsaExtIterator;->next:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-interface {v1, v2, v0}, Lcom/annimon/stream/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/annimon/stream/iterator/LsaExtIterator;->next:Ljava/lang/Object;

    .line 38
    .line 39
    :cond_1
    return-void
.end method
