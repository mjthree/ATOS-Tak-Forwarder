.class public final Lcom/annimon/stream/LongStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final EMPTY:Lcom/annimon/stream/LongStream;

.field private static final UNBOX_FUNCTION:Lcom/annimon/stream/function/ToLongFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/ToLongFunction<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

.field private final params:Lcom/annimon/stream/internal/Params;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/annimon/stream/LongStream;

    .line 2
    .line 3
    new-instance v1, Lcom/annimon/stream/LongStream$1;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/annimon/stream/LongStream$1;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/annimon/stream/LongStream;->EMPTY:Lcom/annimon/stream/LongStream;

    .line 12
    .line 13
    new-instance v0, Lcom/annimon/stream/LongStream$5;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/annimon/stream/LongStream$5;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/annimon/stream/LongStream;->UNBOX_FUNCTION:Lcom/annimon/stream/function/ToLongFunction;

    .line 19
    .line 20
    return-void
.end method

.method constructor <init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    iput-object p2, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    return-void
.end method

.method private constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-void
.end method

.method public static concat(Lcom/annimon/stream/LongStream;Lcom/annimon/stream/LongStream;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/annimon/stream/LongStream;

    .line 8
    .line 9
    new-instance v1, Lcom/annimon/stream/operator/LongConcat;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 12
    .line 13
    iget-object v3, p1, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 14
    .line 15
    invoke-direct {v1, v2, v3}, Lcom/annimon/stream/operator/LongConcat;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1}, Lcom/annimon/stream/internal/Compose;->closeables(Ljava/io/Closeable;Ljava/io/Closeable;)Ljava/lang/Runnable;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v0, p0}, Lcom/annimon/stream/LongStream;->onClose(Ljava/lang/Runnable;)Lcom/annimon/stream/LongStream;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static empty()Lcom/annimon/stream/LongStream;
    .locals 1

    .line 1
    sget-object v0, Lcom/annimon/stream/LongStream;->EMPTY:Lcom/annimon/stream/LongStream;

    .line 2
    .line 3
    return-object v0
.end method

.method public static generate(Lcom/annimon/stream/function/LongSupplier;)Lcom/annimon/stream/LongStream;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/annimon/stream/LongStream;

    .line 5
    .line 6
    new-instance v1, Lcom/annimon/stream/operator/LongGenerate;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/annimon/stream/operator/LongGenerate;-><init>(Lcom/annimon/stream/function/LongSupplier;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static iterate(JLcom/annimon/stream/function/LongPredicate;Lcom/annimon/stream/function/LongUnaryOperator;)Lcom/annimon/stream/LongStream;
    .locals 0

    .line 3
    invoke-static {p2}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p0, p1, p3}, Lcom/annimon/stream/LongStream;->iterate(JLcom/annimon/stream/function/LongUnaryOperator;)Lcom/annimon/stream/LongStream;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/annimon/stream/LongStream;->takeWhile(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(JLcom/annimon/stream/function/LongUnaryOperator;)Lcom/annimon/stream/LongStream;
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/annimon/stream/LongStream;

    new-instance v1, Lcom/annimon/stream/operator/LongIterate;

    invoke-direct {v1, p0, p1, p2}, Lcom/annimon/stream/operator/LongIterate;-><init>(JLcom/annimon/stream/function/LongUnaryOperator;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public static of(J)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 7
    new-instance v0, Lcom/annimon/stream/LongStream;

    new-instance v1, Lcom/annimon/stream/operator/LongArray;

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p0, v2, v3

    invoke-direct {v1, v2}, Lcom/annimon/stream/operator/LongArray;-><init>([J)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public static of(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)Lcom/annimon/stream/LongStream;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/annimon/stream/LongStream;

    invoke-direct {v0, p0}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public static varargs of([J)Lcom/annimon/stream/LongStream;
    .locals 2

    .line 3
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    array-length v0, p0

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/annimon/stream/LongStream;->empty()Lcom/annimon/stream/LongStream;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lcom/annimon/stream/LongStream;

    new-instance v1, Lcom/annimon/stream/operator/LongArray;

    invoke-direct {v1, p0}, Lcom/annimon/stream/operator/LongArray;-><init>([J)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public static range(JJ)Lcom/annimon/stream/LongStream;
    .locals 2

    .line 1
    cmp-long v0, p0, p2

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/annimon/stream/LongStream;->empty()Lcom/annimon/stream/LongStream;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const-wide/16 v0, 0x1

    .line 11
    .line 12
    sub-long/2addr p2, v0

    .line 13
    invoke-static {p0, p1, p2, p3}, Lcom/annimon/stream/LongStream;->rangeClosed(JJ)Lcom/annimon/stream/LongStream;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static rangeClosed(JJ)Lcom/annimon/stream/LongStream;
    .locals 2

    .line 1
    cmp-long v0, p0, p2

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/annimon/stream/LongStream;->empty()Lcom/annimon/stream/LongStream;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-static {p0, p1}, Lcom/annimon/stream/LongStream;->of(J)Lcom/annimon/stream/LongStream;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_1
    new-instance v0, Lcom/annimon/stream/LongStream;

    .line 18
    .line 19
    new-instance v1, Lcom/annimon/stream/operator/LongRangeClosed;

    .line 20
    .line 21
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/annimon/stream/operator/LongRangeClosed;-><init>(JJ)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method


# virtual methods
.method public allMatch(Lcom/annimon/stream/function/LongPredicate;)Z
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/LongPredicate;->test(J)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_1
    const/4 p1, 0x1

    .line 24
    return p1
.end method

.method public anyMatch(Lcom/annimon/stream/function/LongPredicate;)Z
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/LongPredicate;->test(J)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public boxed()Lcom/annimon/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/Stream<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/Stream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public collect(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/ObjLongConsumer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Supplier<",
            "TR;>;",
            "Lcom/annimon/stream/function/ObjLongConsumer<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-interface {p2, p1, v0, v1}, Lcom/annimon/stream/function/ObjLongConsumer;->accept(Ljava/lang/Object;J)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-object p1
.end method

.method public count()J
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v2, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    .line 14
    .line 15
    .line 16
    const-wide/16 v2, 0x1

    .line 17
    .line 18
    add-long/2addr v0, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-wide v0
.end method

.method public custom(Lcom/annimon/stream/function/Function;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "Lcom/annimon/stream/LongStream;",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p0}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public distinct()Lcom/annimon/stream/LongStream;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/LongStream;->boxed()Lcom/annimon/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/annimon/stream/Stream;->distinct()Lcom/annimon/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/annimon/stream/LongStream;->UNBOX_FUNCTION:Lcom/annimon/stream/function/ToLongFunction;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/annimon/stream/Stream;->mapToLong(Lcom/annimon/stream/function/ToLongFunction;)Lcom/annimon/stream/LongStream;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public dropWhile(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 1
    new-instance v0, Lcom/annimon/stream/LongStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/LongDropWhile;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongDropWhile;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongPredicate;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public filter(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 1
    new-instance v0, Lcom/annimon/stream/LongStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/LongFilter;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongFilter;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongPredicate;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public filterIndexed(IILcom/annimon/stream/function/IndexedLongPredicate;)Lcom/annimon/stream/LongStream;
    .locals 5

    .line 2
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongFilterIndexed;

    new-instance v3, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;

    iget-object v4, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v3, p1, p2, v4}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;-><init>(IILcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    invoke-direct {v2, v3, p3}, Lcom/annimon/stream/operator/LongFilterIndexed;-><init>(Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;Lcom/annimon/stream/function/IndexedLongPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public filterIndexed(Lcom/annimon/stream/function/IndexedLongPredicate;)Lcom/annimon/stream/LongStream;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/LongStream;->filterIndexed(IILcom/annimon/stream/function/IndexedLongPredicate;)Lcom/annimon/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public filterNot(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/LongStream;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/annimon/stream/function/LongPredicate$Util;->negate(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/function/LongPredicate;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/annimon/stream/LongStream;->filter(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/LongStream;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public findFirst()Lcom/annimon/stream/OptionalLong;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-static {v0, v1}, Lcom/annimon/stream/OptionalLong;->of(J)Lcom/annimon/stream/OptionalLong;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    invoke-static {}, Lcom/annimon/stream/OptionalLong;->empty()Lcom/annimon/stream/OptionalLong;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public findLast()Lcom/annimon/stream/OptionalLong;
    .locals 1

    .line 1
    new-instance v0, Lcom/annimon/stream/LongStream$4;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/annimon/stream/LongStream$4;-><init>(Lcom/annimon/stream/LongStream;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/annimon/stream/LongStream;->reduce(Lcom/annimon/stream/function/LongBinaryOperator;)Lcom/annimon/stream/OptionalLong;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public findSingle()Lcom/annimon/stream/OptionalLong;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/annimon/stream/OptionalLong;->empty()Lcom/annimon/stream/OptionalLong;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iget-object v2, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/annimon/stream/OptionalLong;->of(J)Lcom/annimon/stream/OptionalLong;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v1, "LongStream contains more than one element"

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method

.method public flatMap(Lcom/annimon/stream/function/LongFunction;)Lcom/annimon/stream/LongStream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/LongFunction<",
            "+",
            "Lcom/annimon/stream/LongStream;",
            ">;)",
            "Lcom/annimon/stream/LongStream;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/LongStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/LongFlatMap;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongFlatMap;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongFunction;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public forEach(Lcom/annimon/stream/function/LongConsumer;)V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/LongConsumer;->accept(J)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public forEachIndexed(IILcom/annimon/stream/function/IndexedLongConsumer;)V
    .locals 2

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    invoke-interface {p3, p1, v0, v1}, Lcom/annimon/stream/function/IndexedLongConsumer;->accept(IJ)V

    add-int/2addr p1, p2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forEachIndexed(Lcom/annimon/stream/function/IndexedLongConsumer;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/LongStream;->forEachIndexed(IILcom/annimon/stream/function/IndexedLongConsumer;)V

    return-void
.end method

.method public iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 2
    .line 3
    return-object v0
.end method

.method public limit(J)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/annimon/stream/LongStream;->empty()Lcom/annimon/stream/LongStream;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance v0, Lcom/annimon/stream/LongStream;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    .line 17
    .line 18
    new-instance v2, Lcom/annimon/stream/operator/LongLimit;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 21
    .line 22
    invoke-direct {v2, v3, p1, p2}, Lcom/annimon/stream/operator/LongLimit;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;J)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string p2, "maxSize cannot be negative"

    .line 32
    .line 33
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public map(Lcom/annimon/stream/function/LongUnaryOperator;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 1
    new-instance v0, Lcom/annimon/stream/LongStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/LongMap;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongMap;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongUnaryOperator;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public mapIndexed(IILcom/annimon/stream/function/IndexedLongUnaryOperator;)Lcom/annimon/stream/LongStream;
    .locals 5

    .line 2
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongMapIndexed;

    new-instance v3, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;

    iget-object v4, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v3, p1, p2, v4}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;-><init>(IILcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    invoke-direct {v2, v3, p3}, Lcom/annimon/stream/operator/LongMapIndexed;-><init>(Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfLong;Lcom/annimon/stream/function/IndexedLongUnaryOperator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public mapIndexed(Lcom/annimon/stream/function/IndexedLongUnaryOperator;)Lcom/annimon/stream/LongStream;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/LongStream;->mapIndexed(IILcom/annimon/stream/function/IndexedLongUnaryOperator;)Lcom/annimon/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public mapToDouble(Lcom/annimon/stream/function/LongToDoubleFunction;)Lcom/annimon/stream/DoubleStream;
    .locals 4

    .line 1
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/LongMapToDouble;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongMapToDouble;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongToDoubleFunction;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public mapToInt(Lcom/annimon/stream/function/LongToIntFunction;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 1
    new-instance v0, Lcom/annimon/stream/IntStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/LongMapToInt;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongMapToInt;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongToIntFunction;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public mapToObj(Lcom/annimon/stream/function/LongFunction;)Lcom/annimon/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/LongFunction<",
            "+TR;>;)",
            "Lcom/annimon/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/Stream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/LongMapToObj;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongMapToObj;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongFunction;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public max()Lcom/annimon/stream/OptionalLong;
    .locals 1

    .line 1
    new-instance v0, Lcom/annimon/stream/LongStream$3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/annimon/stream/LongStream$3;-><init>(Lcom/annimon/stream/LongStream;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/annimon/stream/LongStream;->reduce(Lcom/annimon/stream/function/LongBinaryOperator;)Lcom/annimon/stream/OptionalLong;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public min()Lcom/annimon/stream/OptionalLong;
    .locals 1

    .line 1
    new-instance v0, Lcom/annimon/stream/LongStream$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/annimon/stream/LongStream$2;-><init>(Lcom/annimon/stream/LongStream;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/annimon/stream/LongStream;->reduce(Lcom/annimon/stream/function/LongBinaryOperator;)Lcom/annimon/stream/OptionalLong;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public noneMatch(Lcom/annimon/stream/function/LongPredicate;)Z
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/LongPredicate;->test(J)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_1
    const/4 p1, 0x1

    .line 24
    return p1
.end method

.method public onClose(Ljava/lang/Runnable;)Lcom/annimon/stream/LongStream;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/annimon/stream/internal/Params;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/annimon/stream/internal/Params;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    .line 17
    .line 18
    invoke-static {v1, p1}, Lcom/annimon/stream/internal/Compose;->runnables(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    .line 23
    .line 24
    :goto_0
    new-instance p1, Lcom/annimon/stream/LongStream;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 27
    .line 28
    invoke-direct {p1, v0, v1}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    .line 29
    .line 30
    .line 31
    return-object p1
.end method

.method public peek(Lcom/annimon/stream/function/LongConsumer;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 1
    new-instance v0, Lcom/annimon/stream/LongStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/LongPeek;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongPeek;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongConsumer;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public reduce(JLcom/annimon/stream/function/LongBinaryOperator;)J
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    .line 3
    invoke-interface {p3, p1, p2, v0, v1}, Lcom/annimon/stream/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public reduce(Lcom/annimon/stream/function/LongBinaryOperator;)Lcom/annimon/stream/OptionalLong;
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v3}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move-wide v1, v3

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1, v1, v2, v3, v4}, Lcom/annimon/stream/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    invoke-static {v1, v2}, Lcom/annimon/stream/OptionalLong;->of(J)Lcom/annimon/stream/OptionalLong;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/annimon/stream/OptionalLong;->empty()Lcom/annimon/stream/OptionalLong;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public sample(I)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 1
    if-lez p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Lcom/annimon/stream/LongStream;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    .line 10
    .line 11
    new-instance v2, Lcom/annimon/stream/operator/LongSample;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 14
    .line 15
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongSample;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v0, "stepWidth cannot be zero or negative"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public scan(JLcom/annimon/stream/function/LongBinaryOperator;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 3
    invoke-static {p3}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongScanIdentity;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/annimon/stream/operator/LongScanIdentity;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;JLcom/annimon/stream/function/LongBinaryOperator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public scan(Lcom/annimon/stream/function/LongBinaryOperator;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongScan;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongScan;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongBinaryOperator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public single()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    return-wide v0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v1, "LongStream contains more than one element"

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 33
    .line 34
    const-string v1, "LongStream contains no element"

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method public skip(J)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Lcom/annimon/stream/LongStream;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    .line 13
    .line 14
    new-instance v2, Lcom/annimon/stream/operator/LongSkip;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 17
    .line 18
    invoke-direct {v2, v3, p1, p2}, Lcom/annimon/stream/operator/LongSkip;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;J)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string p2, "n cannot be negative"

    .line 28
    .line 29
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method public sorted()Lcom/annimon/stream/LongStream;
    .locals 4

    .line 1
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/LongSorted;

    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-direct {v2, v3}, Lcom/annimon/stream/operator/LongSorted;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public sorted(Ljava/util/Comparator;)Lcom/annimon/stream/LongStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/annimon/stream/LongStream;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/annimon/stream/LongStream;->boxed()Lcom/annimon/stream/Stream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/annimon/stream/Stream;->sorted(Ljava/util/Comparator;)Lcom/annimon/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/annimon/stream/LongStream;->UNBOX_FUNCTION:Lcom/annimon/stream/function/ToLongFunction;

    invoke-virtual {p1, v0}, Lcom/annimon/stream/Stream;->mapToLong(Lcom/annimon/stream/function/ToLongFunction;)Lcom/annimon/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public sum()J
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v2, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    add-long/2addr v0, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-wide v0
.end method

.method public takeUntil(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 1
    new-instance v0, Lcom/annimon/stream/LongStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/LongTakeUntil;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongTakeUntil;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongPredicate;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public takeWhile(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 1
    new-instance v0, Lcom/annimon/stream/LongStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/LongStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/LongTakeWhile;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/LongTakeWhile;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongPredicate;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public toArray()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/LongStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/annimon/stream/internal/Operators;->toLongArray(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)[J

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
