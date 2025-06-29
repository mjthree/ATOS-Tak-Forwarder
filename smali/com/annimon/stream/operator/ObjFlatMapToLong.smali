.class public Lcom/annimon/stream/operator/ObjFlatMapToLong;
.super Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;"
    }
.end annotation


# instance fields
.field private inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final mapper:Lcom/annimon/stream/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/Function<",
            "-TT;+",
            "Lcom/annimon/stream/LongStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+",
            "Lcom/annimon/stream/LongStream;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjFlatMapToLong;->iterator:Ljava/util/Iterator;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjFlatMapToLong;->mapper:Lcom/annimon/stream/function/Function;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToLong;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToLong;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->next()Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    iput-wide v2, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;->next:J

    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;->hasNext:Z

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToLong;->iterator:Ljava/util/Iterator;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToLong;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToLong;->iterator:Ljava/util/Iterator;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v2, p0, Lcom/annimon/stream/operator/ObjFlatMapToLong;->mapper:Lcom/annimon/stream/function/Function;

    .line 52
    .line 53
    invoke-interface {v2, v0}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/annimon/stream/LongStream;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/annimon/stream/LongStream;->iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToLong;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 66
    .line 67
    :cond_2
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToLong;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 68
    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    .line 77
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFlatMapToLong;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->next()Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 84
    .line 85
    .line 86
    move-result-wide v2

    .line 87
    iput-wide v2, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;->next:J

    .line 88
    .line 89
    iput-boolean v1, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;->hasNext:Z

    .line 90
    .line 91
    return-void

    .line 92
    :cond_3
    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfLong;->hasNext:Z

    .line 94
    .line 95
    return-void
.end method
