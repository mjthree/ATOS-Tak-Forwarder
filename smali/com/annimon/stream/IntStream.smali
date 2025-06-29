.class public final Lcom/annimon/stream/IntStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final EMPTY:Lcom/annimon/stream/IntStream;

.field private static final UNBOX_FUNCTION:Lcom/annimon/stream/function/ToIntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/ToIntFunction<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

.field private final params:Lcom/annimon/stream/internal/Params;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/annimon/stream/IntStream;

    .line 2
    .line 3
    new-instance v1, Lcom/annimon/stream/IntStream$1;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/annimon/stream/IntStream$1;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/annimon/stream/IntStream;->EMPTY:Lcom/annimon/stream/IntStream;

    .line 12
    .line 13
    new-instance v0, Lcom/annimon/stream/IntStream$5;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/annimon/stream/IntStream$5;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/annimon/stream/IntStream;->UNBOX_FUNCTION:Lcom/annimon/stream/function/ToIntFunction;

    .line 19
    .line 20
    return-void
.end method

.method constructor <init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    iput-object p2, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    return-void
.end method

.method private constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-void
.end method

.method public static concat(Lcom/annimon/stream/IntStream;Lcom/annimon/stream/IntStream;)Lcom/annimon/stream/IntStream;
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
    new-instance v0, Lcom/annimon/stream/IntStream;

    .line 8
    .line 9
    new-instance v1, Lcom/annimon/stream/operator/IntConcat;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 12
    .line 13
    iget-object v3, p1, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 14
    .line 15
    invoke-direct {v1, v2, v3}, Lcom/annimon/stream/operator/IntConcat;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1}, Lcom/annimon/stream/internal/Compose;->closeables(Ljava/io/Closeable;Ljava/io/Closeable;)Ljava/lang/Runnable;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v0, p0}, Lcom/annimon/stream/IntStream;->onClose(Ljava/lang/Runnable;)Lcom/annimon/stream/IntStream;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static empty()Lcom/annimon/stream/IntStream;
    .locals 1

    .line 1
    sget-object v0, Lcom/annimon/stream/IntStream;->EMPTY:Lcom/annimon/stream/IntStream;

    .line 2
    .line 3
    return-object v0
.end method

.method public static generate(Lcom/annimon/stream/function/IntSupplier;)Lcom/annimon/stream/IntStream;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/annimon/stream/IntStream;

    .line 5
    .line 6
    new-instance v1, Lcom/annimon/stream/operator/IntGenerate;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/annimon/stream/operator/IntGenerate;-><init>(Lcom/annimon/stream/function/IntSupplier;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static iterate(ILcom/annimon/stream/function/IntPredicate;Lcom/annimon/stream/function/IntUnaryOperator;)Lcom/annimon/stream/IntStream;
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p0, p2}, Lcom/annimon/stream/IntStream;->iterate(ILcom/annimon/stream/function/IntUnaryOperator;)Lcom/annimon/stream/IntStream;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/annimon/stream/IntStream;->takeWhile(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(ILcom/annimon/stream/function/IntUnaryOperator;)Lcom/annimon/stream/IntStream;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/annimon/stream/IntStream;

    new-instance v1, Lcom/annimon/stream/operator/IntIterate;

    invoke-direct {v1, p0, p1}, Lcom/annimon/stream/operator/IntIterate;-><init>(ILcom/annimon/stream/function/IntUnaryOperator;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public static of(I)Lcom/annimon/stream/IntStream;
    .locals 2

    .line 7
    new-instance v0, Lcom/annimon/stream/IntStream;

    new-instance v1, Lcom/annimon/stream/operator/IntArray;

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/annimon/stream/operator/IntArray;-><init>([I)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public static of(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)Lcom/annimon/stream/IntStream;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/annimon/stream/IntStream;

    invoke-direct {v0, p0}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public static varargs of([I)Lcom/annimon/stream/IntStream;
    .locals 2

    .line 3
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    array-length v0, p0

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/annimon/stream/IntStream;->empty()Lcom/annimon/stream/IntStream;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lcom/annimon/stream/IntStream;

    new-instance v1, Lcom/annimon/stream/operator/IntArray;

    invoke-direct {v1, p0}, Lcom/annimon/stream/operator/IntArray;-><init>([I)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public static ofCodePoints(Ljava/lang/CharSequence;)Lcom/annimon/stream/IntStream;
    .locals 2

    .line 1
    new-instance v0, Lcom/annimon/stream/IntStream;

    .line 2
    .line 3
    new-instance v1, Lcom/annimon/stream/operator/IntCodePoints;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/annimon/stream/operator/IntCodePoints;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static range(II)Lcom/annimon/stream/IntStream;
    .locals 0

    .line 1
    if-lt p0, p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/annimon/stream/IntStream;->empty()Lcom/annimon/stream/IntStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/annimon/stream/IntStream;->rangeClosed(II)Lcom/annimon/stream/IntStream;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static rangeClosed(II)Lcom/annimon/stream/IntStream;
    .locals 2

    .line 1
    if-le p0, p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/annimon/stream/IntStream;->empty()Lcom/annimon/stream/IntStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    if-ne p0, p1, :cond_1

    .line 9
    .line 10
    invoke-static {p0}, Lcom/annimon/stream/IntStream;->of(I)Lcom/annimon/stream/IntStream;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_1
    new-instance v0, Lcom/annimon/stream/IntStream;

    .line 16
    .line 17
    new-instance v1, Lcom/annimon/stream/operator/IntRangeClosed;

    .line 18
    .line 19
    invoke-direct {v1, p0, p1}, Lcom/annimon/stream/operator/IntRangeClosed;-><init>(II)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public allMatch(Lcom/annimon/stream/function/IntPredicate;)Z
    .locals 1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

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
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-interface {p1, v0}, Lcom/annimon/stream/function/IntPredicate;->test(I)Z

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

.method public anyMatch(Lcom/annimon/stream/function/IntPredicate;)Z
    .locals 1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

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
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-interface {p1, v0}, Lcom/annimon/stream/function/IntPredicate;->test(I)Z

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/Stream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

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
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

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
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

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

.method public collect(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/ObjIntConsumer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Supplier<",
            "TR;>;",
            "Lcom/annimon/stream/function/ObjIntConsumer<",
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
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

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
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-interface {p2, p1, v0}, Lcom/annimon/stream/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

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
    iget-object v2, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

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
    iget-object v2, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

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
            "Lcom/annimon/stream/IntStream;",
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

.method public distinct()Lcom/annimon/stream/IntStream;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/IntStream;->boxed()Lcom/annimon/stream/Stream;

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
    sget-object v1, Lcom/annimon/stream/IntStream;->UNBOX_FUNCTION:Lcom/annimon/stream/function/ToIntFunction;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/annimon/stream/Stream;->mapToInt(Lcom/annimon/stream/function/ToIntFunction;)Lcom/annimon/stream/IntStream;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public dropWhile(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 1
    new-instance v0, Lcom/annimon/stream/IntStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/IntDropWhile;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntDropWhile;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntPredicate;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public filter(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 1
    new-instance v0, Lcom/annimon/stream/IntStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/IntFilter;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntFilter;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntPredicate;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public filterIndexed(IILcom/annimon/stream/function/IndexedIntPredicate;)Lcom/annimon/stream/IntStream;
    .locals 5

    .line 2
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntFilterIndexed;

    new-instance v3, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;

    iget-object v4, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v3, p1, p2, v4}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;-><init>(IILcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    invoke-direct {v2, v3, p3}, Lcom/annimon/stream/operator/IntFilterIndexed;-><init>(Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;Lcom/annimon/stream/function/IndexedIntPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public filterIndexed(Lcom/annimon/stream/function/IndexedIntPredicate;)Lcom/annimon/stream/IntStream;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/IntStream;->filterIndexed(IILcom/annimon/stream/function/IndexedIntPredicate;)Lcom/annimon/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public filterNot(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/IntStream;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/annimon/stream/function/IntPredicate$Util;->negate(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/function/IntPredicate;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/annimon/stream/IntStream;->filter(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/IntStream;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public findFirst()Lcom/annimon/stream/OptionalInt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

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
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Lcom/annimon/stream/OptionalInt;->of(I)Lcom/annimon/stream/OptionalInt;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    invoke-static {}, Lcom/annimon/stream/OptionalInt;->empty()Lcom/annimon/stream/OptionalInt;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public findLast()Lcom/annimon/stream/OptionalInt;
    .locals 1

    .line 1
    new-instance v0, Lcom/annimon/stream/IntStream$4;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/annimon/stream/IntStream$4;-><init>(Lcom/annimon/stream/IntStream;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/annimon/stream/IntStream;->reduce(Lcom/annimon/stream/function/IntBinaryOperator;)Lcom/annimon/stream/OptionalInt;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public findSingle()Lcom/annimon/stream/OptionalInt;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

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
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-static {v0}, Lcom/annimon/stream/OptionalInt;->of(I)Lcom/annimon/stream/OptionalInt;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v1, "IntStream contains more than one element"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    invoke-static {}, Lcom/annimon/stream/OptionalInt;->empty()Lcom/annimon/stream/OptionalInt;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

.method public flatMap(Lcom/annimon/stream/function/IntFunction;)Lcom/annimon/stream/IntStream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/IntFunction<",
            "+",
            "Lcom/annimon/stream/IntStream;",
            ">;)",
            "Lcom/annimon/stream/IntStream;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/IntStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/IntFlatMap;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntFlatMap;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntFunction;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public forEach(Lcom/annimon/stream/function/IntConsumer;)V
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

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
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-interface {p1, v0}, Lcom/annimon/stream/function/IntConsumer;->accept(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public forEachIndexed(IILcom/annimon/stream/function/IndexedIntConsumer;)V
    .locals 1

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    invoke-interface {p3, p1, v0}, Lcom/annimon/stream/function/IndexedIntConsumer;->accept(II)V

    add-int/2addr p1, p2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forEachIndexed(Lcom/annimon/stream/function/IndexedIntConsumer;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/IntStream;->forEachIndexed(IILcom/annimon/stream/function/IndexedIntConsumer;)V

    return-void
.end method

.method public iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 2
    .line 3
    return-object v0
.end method

.method public limit(J)Lcom/annimon/stream/IntStream;
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
    invoke-static {}, Lcom/annimon/stream/IntStream;->empty()Lcom/annimon/stream/IntStream;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance v0, Lcom/annimon/stream/IntStream;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    .line 17
    .line 18
    new-instance v2, Lcom/annimon/stream/operator/IntLimit;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 21
    .line 22
    invoke-direct {v2, v3, p1, p2}, Lcom/annimon/stream/operator/IntLimit;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;J)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

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

.method public map(Lcom/annimon/stream/function/IntUnaryOperator;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 1
    new-instance v0, Lcom/annimon/stream/IntStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/IntMap;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntMap;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntUnaryOperator;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public mapIndexed(IILcom/annimon/stream/function/IntBinaryOperator;)Lcom/annimon/stream/IntStream;
    .locals 5

    .line 2
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntMapIndexed;

    new-instance v3, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;

    iget-object v4, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v3, p1, p2, v4}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;-><init>(IILcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    invoke-direct {v2, v3, p3}, Lcom/annimon/stream/operator/IntMapIndexed;-><init>(Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfInt;Lcom/annimon/stream/function/IntBinaryOperator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public mapIndexed(Lcom/annimon/stream/function/IntBinaryOperator;)Lcom/annimon/stream/IntStream;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/IntStream;->mapIndexed(IILcom/annimon/stream/function/IntBinaryOperator;)Lcom/annimon/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public mapToDouble(Lcom/annimon/stream/function/IntToDoubleFunction;)Lcom/annimon/stream/DoubleStream;
    .locals 4

    .line 1
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/IntMapToDouble;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntMapToDouble;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntToDoubleFunction;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public mapToLong(Lcom/annimon/stream/function/IntToLongFunction;)Lcom/annimon/stream/LongStream;
    .locals 4

    .line 1
    new-instance v0, Lcom/annimon/stream/LongStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/IntMapToLong;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntMapToLong;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntToLongFunction;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public mapToObj(Lcom/annimon/stream/function/IntFunction;)Lcom/annimon/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/IntFunction<",
            "+TR;>;)",
            "Lcom/annimon/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/Stream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/IntMapToObj;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntMapToObj;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntFunction;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public max()Lcom/annimon/stream/OptionalInt;
    .locals 1

    .line 1
    new-instance v0, Lcom/annimon/stream/IntStream$3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/annimon/stream/IntStream$3;-><init>(Lcom/annimon/stream/IntStream;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/annimon/stream/IntStream;->reduce(Lcom/annimon/stream/function/IntBinaryOperator;)Lcom/annimon/stream/OptionalInt;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public min()Lcom/annimon/stream/OptionalInt;
    .locals 1

    .line 1
    new-instance v0, Lcom/annimon/stream/IntStream$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/annimon/stream/IntStream$2;-><init>(Lcom/annimon/stream/IntStream;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/annimon/stream/IntStream;->reduce(Lcom/annimon/stream/function/IntBinaryOperator;)Lcom/annimon/stream/OptionalInt;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public noneMatch(Lcom/annimon/stream/function/IntPredicate;)Z
    .locals 1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

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
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-interface {p1, v0}, Lcom/annimon/stream/function/IntPredicate;->test(I)Z

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

.method public onClose(Ljava/lang/Runnable;)Lcom/annimon/stream/IntStream;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

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
    new-instance p1, Lcom/annimon/stream/IntStream;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 27
    .line 28
    invoke-direct {p1, v0, v1}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    .line 29
    .line 30
    .line 31
    return-object p1
.end method

.method public peek(Lcom/annimon/stream/function/IntConsumer;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 1
    new-instance v0, Lcom/annimon/stream/IntStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/IntPeek;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntPeek;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntConsumer;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public reduce(ILcom/annimon/stream/function/IntBinaryOperator;)I
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    .line 3
    invoke-interface {p2, p1, v0}, Lcom/annimon/stream/function/IntBinaryOperator;->applyAsInt(II)I

    move-result p1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public reduce(Lcom/annimon/stream/function/IntBinaryOperator;)Lcom/annimon/stream/OptionalInt;
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v1, v2

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1, v1, v2}, Lcom/annimon/stream/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    invoke-static {v1}, Lcom/annimon/stream/OptionalInt;->of(I)Lcom/annimon/stream/OptionalInt;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/annimon/stream/OptionalInt;->empty()Lcom/annimon/stream/OptionalInt;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public sample(I)Lcom/annimon/stream/IntStream;
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
    new-instance v0, Lcom/annimon/stream/IntStream;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    .line 10
    .line 11
    new-instance v2, Lcom/annimon/stream/operator/IntSample;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 14
    .line 15
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntSample;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

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

.method public scan(ILcom/annimon/stream/function/IntBinaryOperator;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 3
    invoke-static {p2}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntScanIdentity;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1, p2}, Lcom/annimon/stream/operator/IntScanIdentity;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;ILcom/annimon/stream/function/IntBinaryOperator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public scan(Lcom/annimon/stream/function/IntBinaryOperator;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntScan;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntScan;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntBinaryOperator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public single()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

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
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    return v0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v1, "IntStream contains more than one element"

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
    const-string v1, "IntStream contains no element"

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method public skip(J)Lcom/annimon/stream/IntStream;
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
    new-instance v0, Lcom/annimon/stream/IntStream;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    .line 13
    .line 14
    new-instance v2, Lcom/annimon/stream/operator/IntSkip;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 17
    .line 18
    invoke-direct {v2, v3, p1, p2}, Lcom/annimon/stream/operator/IntSkip;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;J)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

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

.method public sorted()Lcom/annimon/stream/IntStream;
    .locals 4

    .line 1
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/IntSorted;

    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-direct {v2, v3}, Lcom/annimon/stream/operator/IntSorted;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public sorted(Ljava/util/Comparator;)Lcom/annimon/stream/IntStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/annimon/stream/IntStream;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/annimon/stream/IntStream;->boxed()Lcom/annimon/stream/Stream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/annimon/stream/Stream;->sorted(Ljava/util/Comparator;)Lcom/annimon/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/annimon/stream/IntStream;->UNBOX_FUNCTION:Lcom/annimon/stream/function/ToIntFunction;

    invoke-virtual {p1, v0}, Lcom/annimon/stream/Stream;->mapToInt(Lcom/annimon/stream/function/ToIntFunction;)Lcom/annimon/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public sum()I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/2addr v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return v0
.end method

.method public takeUntil(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 1
    new-instance v0, Lcom/annimon/stream/IntStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/IntTakeUntil;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntTakeUntil;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntPredicate;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public takeWhile(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/IntStream;
    .locals 4

    .line 1
    new-instance v0, Lcom/annimon/stream/IntStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/IntStream;->params:Lcom/annimon/stream/internal/Params;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/operator/IntTakeWhile;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/IntTakeWhile;-><init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntPredicate;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public toArray()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/IntStream;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/annimon/stream/internal/Operators;->toIntArray(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)[I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
