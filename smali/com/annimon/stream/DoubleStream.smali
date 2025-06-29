.class public final Lcom/annimon/stream/DoubleStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final EMPTY:Lcom/annimon/stream/DoubleStream;

.field private static final UNBOX_FUNCTION:Lcom/annimon/stream/function/ToDoubleFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/ToDoubleFunction<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

.field private final params:Lcom/annimon/stream/internal/Params;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    .line 2
    .line 3
    new-instance v1, Lcom/annimon/stream/DoubleStream$1;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/annimon/stream/DoubleStream$1;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/annimon/stream/DoubleStream;->EMPTY:Lcom/annimon/stream/DoubleStream;

    .line 12
    .line 13
    new-instance v0, Lcom/annimon/stream/DoubleStream$5;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/annimon/stream/DoubleStream$5;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/annimon/stream/DoubleStream;->UNBOX_FUNCTION:Lcom/annimon/stream/function/ToDoubleFunction;

    .line 19
    .line 20
    return-void
.end method

.method constructor <init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    iput-object p2, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    return-void
.end method

.method private constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-void
.end method

.method public static concat(Lcom/annimon/stream/DoubleStream;Lcom/annimon/stream/DoubleStream;)Lcom/annimon/stream/DoubleStream;
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
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    .line 8
    .line 9
    new-instance v1, Lcom/annimon/stream/operator/DoubleConcat;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 12
    .line 13
    iget-object v3, p1, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 14
    .line 15
    invoke-direct {v1, v2, v3}, Lcom/annimon/stream/operator/DoubleConcat;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1}, Lcom/annimon/stream/internal/Compose;->closeables(Ljava/io/Closeable;Ljava/io/Closeable;)Ljava/lang/Runnable;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v0, p0}, Lcom/annimon/stream/DoubleStream;->onClose(Ljava/lang/Runnable;)Lcom/annimon/stream/DoubleStream;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static empty()Lcom/annimon/stream/DoubleStream;
    .locals 1

    .line 1
    sget-object v0, Lcom/annimon/stream/DoubleStream;->EMPTY:Lcom/annimon/stream/DoubleStream;

    .line 2
    .line 3
    return-object v0
.end method

.method public static generate(Lcom/annimon/stream/function/DoubleSupplier;)Lcom/annimon/stream/DoubleStream;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    .line 5
    .line 6
    new-instance v1, Lcom/annimon/stream/operator/DoubleGenerate;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/annimon/stream/operator/DoubleGenerate;-><init>(Lcom/annimon/stream/function/DoubleSupplier;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static iterate(DLcom/annimon/stream/function/DoublePredicate;Lcom/annimon/stream/function/DoubleUnaryOperator;)Lcom/annimon/stream/DoubleStream;
    .locals 0

    .line 3
    invoke-static {p2}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p0, p1, p3}, Lcom/annimon/stream/DoubleStream;->iterate(DLcom/annimon/stream/function/DoubleUnaryOperator;)Lcom/annimon/stream/DoubleStream;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/annimon/stream/DoubleStream;->takeWhile(Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(DLcom/annimon/stream/function/DoubleUnaryOperator;)Lcom/annimon/stream/DoubleStream;
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    new-instance v1, Lcom/annimon/stream/operator/DoubleIterate;

    invoke-direct {v1, p0, p1, p2}, Lcom/annimon/stream/operator/DoubleIterate;-><init>(DLcom/annimon/stream/function/DoubleUnaryOperator;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public static of(D)Lcom/annimon/stream/DoubleStream;
    .locals 4

    .line 7
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    new-instance v1, Lcom/annimon/stream/operator/DoubleArray;

    const/4 v2, 0x1

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide p0, v2, v3

    invoke-direct {v1, v2}, Lcom/annimon/stream/operator/DoubleArray;-><init>([D)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public static of(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)Lcom/annimon/stream/DoubleStream;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    invoke-direct {v0, p0}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public static varargs of([D)Lcom/annimon/stream/DoubleStream;
    .locals 2

    .line 3
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    array-length v0, p0

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/annimon/stream/DoubleStream;->empty()Lcom/annimon/stream/DoubleStream;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    new-instance v1, Lcom/annimon/stream/operator/DoubleArray;

    invoke-direct {v1, p0}, Lcom/annimon/stream/operator/DoubleArray;-><init>([D)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method


# virtual methods
.method public allMatch(Lcom/annimon/stream/function/DoublePredicate;)Z
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

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
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/DoublePredicate;->test(D)Z

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

.method public anyMatch(Lcom/annimon/stream/function/DoublePredicate;)Z
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

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
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/DoublePredicate;->test(D)Z

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

.method public average()Lcom/annimon/stream/OptionalDouble;
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    move-wide v4, v0

    .line 6
    :goto_0
    iget-object v6, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 7
    .line 8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v6

    .line 12
    if-eqz v6, :cond_0

    .line 13
    .line 14
    iget-object v6, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 15
    .line 16
    invoke-virtual {v6}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    .line 17
    .line 18
    .line 19
    move-result-wide v6

    .line 20
    add-double/2addr v2, v6

    .line 21
    const-wide/16 v6, 0x1

    .line 22
    .line 23
    add-long/2addr v4, v6

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    cmp-long v0, v4, v0

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    invoke-static {}, Lcom/annimon/stream/OptionalDouble;->empty()Lcom/annimon/stream/OptionalDouble;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0

    .line 34
    :cond_1
    long-to-double v0, v4

    .line 35
    div-double/2addr v2, v0

    .line 36
    invoke-static {v2, v3}, Lcom/annimon/stream/OptionalDouble;->of(D)Lcom/annimon/stream/OptionalDouble;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

.method public boxed()Lcom/annimon/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/Stream<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/Stream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

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
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

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
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

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

.method public collect(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/ObjDoubleConsumer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Supplier<",
            "TR;>;",
            "Lcom/annimon/stream/function/ObjDoubleConsumer<",
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
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

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
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-interface {p2, p1, v0, v1}, Lcom/annimon/stream/function/ObjDoubleConsumer;->accept(Ljava/lang/Object;D)V

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
    iget-object v2, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

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
    iget-object v2, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

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
            "Lcom/annimon/stream/DoubleStream;",
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

.method public distinct()Lcom/annimon/stream/DoubleStream;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/DoubleStream;->boxed()Lcom/annimon/stream/Stream;

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
    sget-object v1, Lcom/annimon/stream/DoubleStream;->UNBOX_FUNCTION:Lcom/annimon/stream/function/ToDoubleFunction;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/annimon/stream/Stream;->mapToDouble(Lcom/annimon/stream/function/ToDoubleFunction;)Lcom/annimon/stream/DoubleStream;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public dropWhile(Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/DoubleStream;
    .locals 4

    .line 1
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/DoubleDropWhile;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/DoubleDropWhile;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoublePredicate;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public filter(Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/DoubleStream;
    .locals 4

    .line 1
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/DoubleFilter;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/DoubleFilter;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoublePredicate;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public filterIndexed(IILcom/annimon/stream/function/IndexedDoublePredicate;)Lcom/annimon/stream/DoubleStream;
    .locals 5

    .line 2
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/DoubleFilterIndexed;

    new-instance v3, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;

    iget-object v4, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-direct {v3, p1, p2, v4}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;-><init>(IILcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    invoke-direct {v2, v3, p3}, Lcom/annimon/stream/operator/DoubleFilterIndexed;-><init>(Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;Lcom/annimon/stream/function/IndexedDoublePredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public filterIndexed(Lcom/annimon/stream/function/IndexedDoublePredicate;)Lcom/annimon/stream/DoubleStream;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/DoubleStream;->filterIndexed(IILcom/annimon/stream/function/IndexedDoublePredicate;)Lcom/annimon/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public filterNot(Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/DoubleStream;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/annimon/stream/function/DoublePredicate$Util;->negate(Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/function/DoublePredicate;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/annimon/stream/DoubleStream;->filter(Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/DoubleStream;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public findFirst()Lcom/annimon/stream/OptionalDouble;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

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
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-static {v0, v1}, Lcom/annimon/stream/OptionalDouble;->of(D)Lcom/annimon/stream/OptionalDouble;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    invoke-static {}, Lcom/annimon/stream/OptionalDouble;->empty()Lcom/annimon/stream/OptionalDouble;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public findLast()Lcom/annimon/stream/OptionalDouble;
    .locals 1

    .line 1
    new-instance v0, Lcom/annimon/stream/DoubleStream$4;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/annimon/stream/DoubleStream$4;-><init>(Lcom/annimon/stream/DoubleStream;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/annimon/stream/DoubleStream;->reduce(Lcom/annimon/stream/function/DoubleBinaryOperator;)Lcom/annimon/stream/OptionalDouble;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public findSingle()Lcom/annimon/stream/OptionalDouble;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

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
    invoke-static {}, Lcom/annimon/stream/OptionalDouble;->empty()Lcom/annimon/stream/OptionalDouble;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iget-object v2, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

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
    invoke-static {v0, v1}, Lcom/annimon/stream/OptionalDouble;->of(D)Lcom/annimon/stream/OptionalDouble;

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
    const-string v1, "DoubleStream contains more than one element"

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method

.method public flatMap(Lcom/annimon/stream/function/DoubleFunction;)Lcom/annimon/stream/DoubleStream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/DoubleFunction<",
            "+",
            "Lcom/annimon/stream/DoubleStream;",
            ">;)",
            "Lcom/annimon/stream/DoubleStream;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/DoubleFlatMap;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/DoubleFlatMap;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoubleFunction;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public forEach(Lcom/annimon/stream/function/DoubleConsumer;)V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

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
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/DoubleConsumer;->accept(D)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public forEachIndexed(IILcom/annimon/stream/function/IndexedDoubleConsumer;)V
    .locals 2

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    invoke-interface {p3, p1, v0, v1}, Lcom/annimon/stream/function/IndexedDoubleConsumer;->accept(ID)V

    add-int/2addr p1, p2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forEachIndexed(Lcom/annimon/stream/function/IndexedDoubleConsumer;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/DoubleStream;->forEachIndexed(IILcom/annimon/stream/function/IndexedDoubleConsumer;)V

    return-void
.end method

.method public iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 2
    .line 3
    return-object v0
.end method

.method public limit(J)Lcom/annimon/stream/DoubleStream;
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
    invoke-static {}, Lcom/annimon/stream/DoubleStream;->empty()Lcom/annimon/stream/DoubleStream;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    .line 17
    .line 18
    new-instance v2, Lcom/annimon/stream/operator/DoubleLimit;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 21
    .line 22
    invoke-direct {v2, v3, p1, p2}, Lcom/annimon/stream/operator/DoubleLimit;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;J)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

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

.method public map(Lcom/annimon/stream/function/DoubleUnaryOperator;)Lcom/annimon/stream/DoubleStream;
    .locals 4

    .line 1
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/DoubleMap;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/DoubleMap;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoubleUnaryOperator;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public mapIndexed(IILcom/annimon/stream/function/IndexedDoubleUnaryOperator;)Lcom/annimon/stream/DoubleStream;
    .locals 5

    .line 2
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/DoubleMapIndexed;

    new-instance v3, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;

    iget-object v4, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-direct {v3, p1, p2, v4}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;-><init>(IILcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    invoke-direct {v2, v3, p3}, Lcom/annimon/stream/operator/DoubleMapIndexed;-><init>(Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;Lcom/annimon/stream/function/IndexedDoubleUnaryOperator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public mapIndexed(Lcom/annimon/stream/function/IndexedDoubleUnaryOperator;)Lcom/annimon/stream/DoubleStream;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/DoubleStream;->mapIndexed(IILcom/annimon/stream/function/IndexedDoubleUnaryOperator;)Lcom/annimon/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public mapToInt(Lcom/annimon/stream/function/DoubleToIntFunction;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 1
    new-instance v0, Lcom/annimon/stream/IntStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/DoubleMapToInt;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/DoubleMapToInt;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoubleToIntFunction;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public mapToLong(Lcom/annimon/stream/function/DoubleToLongFunction;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 1
    new-instance v0, Lcom/annimon/stream/LongStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/DoubleMapToLong;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/DoubleMapToLong;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoubleToLongFunction;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public mapToObj(Lcom/annimon/stream/function/DoubleFunction;)Lcom/annimon/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/DoubleFunction<",
            "+TR;>;)",
            "Lcom/annimon/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/Stream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/DoubleMapToObj;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/DoubleMapToObj;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoubleFunction;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public max()Lcom/annimon/stream/OptionalDouble;
    .locals 1

    .line 1
    new-instance v0, Lcom/annimon/stream/DoubleStream$3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/annimon/stream/DoubleStream$3;-><init>(Lcom/annimon/stream/DoubleStream;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/annimon/stream/DoubleStream;->reduce(Lcom/annimon/stream/function/DoubleBinaryOperator;)Lcom/annimon/stream/OptionalDouble;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public min()Lcom/annimon/stream/OptionalDouble;
    .locals 1

    .line 1
    new-instance v0, Lcom/annimon/stream/DoubleStream$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/annimon/stream/DoubleStream$2;-><init>(Lcom/annimon/stream/DoubleStream;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/annimon/stream/DoubleStream;->reduce(Lcom/annimon/stream/function/DoubleBinaryOperator;)Lcom/annimon/stream/OptionalDouble;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public noneMatch(Lcom/annimon/stream/function/DoublePredicate;)Z
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

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
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/DoublePredicate;->test(D)Z

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

.method public onClose(Ljava/lang/Runnable;)Lcom/annimon/stream/DoubleStream;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

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
    new-instance p1, Lcom/annimon/stream/DoubleStream;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 27
    .line 28
    invoke-direct {p1, v0, v1}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    .line 29
    .line 30
    .line 31
    return-object p1
.end method

.method public peek(Lcom/annimon/stream/function/DoubleConsumer;)Lcom/annimon/stream/DoubleStream;
    .locals 4

    .line 1
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/DoublePeek;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/DoublePeek;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoubleConsumer;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public reduce(DLcom/annimon/stream/function/DoubleBinaryOperator;)D
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    .line 3
    invoke-interface {p3, p1, p2, v0, v1}, Lcom/annimon/stream/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide p1

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public reduce(Lcom/annimon/stream/function/DoubleBinaryOperator;)Lcom/annimon/stream/OptionalDouble;
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v3}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move-wide v1, v3

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1, v1, v2, v3, v4}, Lcom/annimon/stream/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    invoke-static {v1, v2}, Lcom/annimon/stream/OptionalDouble;->of(D)Lcom/annimon/stream/OptionalDouble;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/annimon/stream/OptionalDouble;->empty()Lcom/annimon/stream/OptionalDouble;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public sample(I)Lcom/annimon/stream/DoubleStream;
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
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    .line 10
    .line 11
    new-instance v2, Lcom/annimon/stream/operator/DoubleSample;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 14
    .line 15
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/DoubleSample;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

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

.method public scan(DLcom/annimon/stream/function/DoubleBinaryOperator;)Lcom/annimon/stream/DoubleStream;
    .locals 4

    .line 3
    invoke-static {p3}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/DoubleScanIdentity;

    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/annimon/stream/operator/DoubleScanIdentity;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;DLcom/annimon/stream/function/DoubleBinaryOperator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public scan(Lcom/annimon/stream/function/DoubleBinaryOperator;)Lcom/annimon/stream/DoubleStream;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/DoubleScan;

    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/DoubleScan;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoubleBinaryOperator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public single()D
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

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
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

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
    const-string v1, "DoubleStream contains more than one element"

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
    const-string v1, "DoubleStream contains no element"

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method public skip(J)Lcom/annimon/stream/DoubleStream;
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
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    .line 13
    .line 14
    new-instance v2, Lcom/annimon/stream/operator/DoubleSkip;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 17
    .line 18
    invoke-direct {v2, v3, p1, p2}, Lcom/annimon/stream/operator/DoubleSkip;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;J)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

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

.method public sorted()Lcom/annimon/stream/DoubleStream;
    .locals 4

    .line 1
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/DoubleSorted;

    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-direct {v2, v3}, Lcom/annimon/stream/operator/DoubleSorted;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public sorted(Ljava/util/Comparator;)Lcom/annimon/stream/DoubleStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/annimon/stream/DoubleStream;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/annimon/stream/DoubleStream;->boxed()Lcom/annimon/stream/Stream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/annimon/stream/Stream;->sorted(Ljava/util/Comparator;)Lcom/annimon/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/annimon/stream/DoubleStream;->UNBOX_FUNCTION:Lcom/annimon/stream/function/ToDoubleFunction;

    invoke-virtual {p1, v0}, Lcom/annimon/stream/Stream;->mapToDouble(Lcom/annimon/stream/function/ToDoubleFunction;)Lcom/annimon/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public sum()D
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v2, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

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
    iget-object v2, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    add-double/2addr v0, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-wide v0
.end method

.method public takeUntil(Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/DoubleStream;
    .locals 4

    .line 1
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/DoubleTakeUntil;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/DoubleTakeUntil;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoublePredicate;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public takeWhile(Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/DoubleStream;
    .locals 4

    .line 1
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/DoubleStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/DoubleTakeWhile;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/DoubleTakeWhile;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoublePredicate;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public toArray()[D
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/DoubleStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/annimon/stream/internal/Operators;->toDoubleArray(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)[D

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
