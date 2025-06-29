.class public final Lcom/annimon/stream/OptionalInt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY:Lcom/annimon/stream/OptionalInt;


# instance fields
.field private final isPresent:Z

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/annimon/stream/OptionalInt;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/annimon/stream/OptionalInt;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/annimon/stream/OptionalInt;->EMPTY:Lcom/annimon/stream/OptionalInt;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    .line 3
    iput v0, p0, Lcom/annimon/stream/OptionalInt;->value:I

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    .line 6
    iput p1, p0, Lcom/annimon/stream/OptionalInt;->value:I

    return-void
.end method

.method public static empty()Lcom/annimon/stream/OptionalInt;
    .locals 1

    .line 1
    sget-object v0, Lcom/annimon/stream/OptionalInt;->EMPTY:Lcom/annimon/stream/OptionalInt;

    .line 2
    .line 3
    return-object v0
.end method

.method public static of(I)Lcom/annimon/stream/OptionalInt;
    .locals 1

    .line 1
    new-instance v0, Lcom/annimon/stream/OptionalInt;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/annimon/stream/OptionalInt;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static ofNullable(Ljava/lang/Integer;)Lcom/annimon/stream/OptionalInt;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/annimon/stream/OptionalInt;->EMPTY:Lcom/annimon/stream/OptionalInt;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/annimon/stream/OptionalInt;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-direct {v0, p0}, Lcom/annimon/stream/OptionalInt;-><init>(I)V

    .line 13
    .line 14
    .line 15
    move-object p0, v0

    .line 16
    :goto_0
    return-object p0
.end method


# virtual methods
.method public custom(Lcom/annimon/stream/function/Function;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "Lcom/annimon/stream/OptionalInt;",
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

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/annimon/stream/OptionalInt;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/annimon/stream/OptionalInt;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    .line 14
    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    iget-boolean v3, p1, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    .line 18
    .line 19
    if-eqz v3, :cond_3

    .line 20
    .line 21
    iget v1, p0, Lcom/annimon/stream/OptionalInt;->value:I

    .line 22
    .line 23
    iget p1, p1, Lcom/annimon/stream/OptionalInt;->value:I

    .line 24
    .line 25
    if-ne v1, p1, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    move v0, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_3
    iget-boolean p1, p1, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    .line 31
    .line 32
    if-ne v1, p1, :cond_2

    .line 33
    .line 34
    :goto_0
    return v0
.end method

.method public executeIfAbsent(Ljava/lang/Runnable;)Lcom/annimon/stream/OptionalInt;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalInt;->isPresent()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-object p0
.end method

.method public executeIfPresent(Lcom/annimon/stream/function/IntConsumer;)Lcom/annimon/stream/OptionalInt;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/annimon/stream/OptionalInt;->ifPresent(Lcom/annimon/stream/function/IntConsumer;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public filter(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/OptionalInt;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalInt;->isPresent()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget v0, p0, Lcom/annimon/stream/OptionalInt;->value:I

    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/annimon/stream/function/IntPredicate;->test(I)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    move-object p1, p0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-static {}, Lcom/annimon/stream/OptionalInt;->empty()Lcom/annimon/stream/OptionalInt;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    return-object p1
.end method

.method public filterNot(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/OptionalInt;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/annimon/stream/function/IntPredicate$Util;->negate(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/function/IntPredicate;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/annimon/stream/OptionalInt;->filter(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/OptionalInt;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getAsInt()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalInt;->orElseThrow()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/annimon/stream/OptionalInt;->value:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public ifPresent(Lcom/annimon/stream/function/IntConsumer;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/annimon/stream/OptionalInt;->value:I

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lcom/annimon/stream/function/IntConsumer;->accept(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public ifPresentOrElse(Lcom/annimon/stream/function/IntConsumer;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p2, p0, Lcom/annimon/stream/OptionalInt;->value:I

    .line 6
    .line 7
    invoke-interface {p1, p2}, Lcom/annimon/stream/function/IntConsumer;->accept(I)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public isPresent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    .line 2
    .line 3
    return v0
.end method

.method public map(Lcom/annimon/stream/function/IntUnaryOperator;)Lcom/annimon/stream/OptionalInt;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalInt;->isPresent()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/annimon/stream/OptionalInt;->empty()Lcom/annimon/stream/OptionalInt;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    iget v0, p0, Lcom/annimon/stream/OptionalInt;->value:I

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lcom/annimon/stream/function/IntUnaryOperator;->applyAsInt(I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p1}, Lcom/annimon/stream/OptionalInt;->of(I)Lcom/annimon/stream/OptionalInt;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public mapToDouble(Lcom/annimon/stream/function/IntToDoubleFunction;)Lcom/annimon/stream/OptionalDouble;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalInt;->isPresent()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/annimon/stream/OptionalDouble;->empty()Lcom/annimon/stream/OptionalDouble;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    iget v0, p0, Lcom/annimon/stream/OptionalInt;->value:I

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lcom/annimon/stream/function/IntToDoubleFunction;->applyAsDouble(I)D

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-static {v0, v1}, Lcom/annimon/stream/OptionalDouble;->of(D)Lcom/annimon/stream/OptionalDouble;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public mapToLong(Lcom/annimon/stream/function/IntToLongFunction;)Lcom/annimon/stream/OptionalLong;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalInt;->isPresent()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/annimon/stream/OptionalLong;->empty()Lcom/annimon/stream/OptionalLong;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    iget v0, p0, Lcom/annimon/stream/OptionalInt;->value:I

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lcom/annimon/stream/function/IntToLongFunction;->applyAsLong(I)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-static {v0, v1}, Lcom/annimon/stream/OptionalLong;->of(J)Lcom/annimon/stream/OptionalLong;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public mapToObj(Lcom/annimon/stream/function/IntFunction;)Lcom/annimon/stream/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/IntFunction<",
            "TU;>;)",
            "Lcom/annimon/stream/Optional<",
            "TU;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalInt;->isPresent()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/annimon/stream/Optional;->empty()Lcom/annimon/stream/Optional;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    iget v0, p0, Lcom/annimon/stream/OptionalInt;->value:I

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lcom/annimon/stream/function/IntFunction;->apply(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/annimon/stream/Optional;->ofNullable(Ljava/lang/Object;)Lcom/annimon/stream/Optional;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public or(Lcom/annimon/stream/function/Supplier;)Lcom/annimon/stream/OptionalInt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Supplier<",
            "Lcom/annimon/stream/OptionalInt;",
            ">;)",
            "Lcom/annimon/stream/OptionalInt;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalInt;->isPresent()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/annimon/stream/OptionalInt;

    .line 20
    .line 21
    return-object p1
.end method

.method public orElse(I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/annimon/stream/OptionalInt;->value:I

    .line 6
    .line 7
    :cond_0
    return p1
.end method

.method public orElseGet(Lcom/annimon/stream/function/IntSupplier;)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/annimon/stream/OptionalInt;->value:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/annimon/stream/function/IntSupplier;->getAsInt()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    :goto_0
    return p1
.end method

.method public orElseThrow()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/annimon/stream/OptionalInt;->value:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public orElseThrow(Lcom/annimon/stream/function/Supplier;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/annimon/stream/function/Supplier<",
            "TX;>;)I^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 4
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 5
    iget p1, p0, Lcom/annimon/stream/OptionalInt;->value:I

    return p1

    .line 6
    :cond_0
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public stream()Lcom/annimon/stream/IntStream;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalInt;->isPresent()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/annimon/stream/IntStream;->empty()Lcom/annimon/stream/IntStream;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    iget v0, p0, Lcom/annimon/stream/OptionalInt;->value:I

    .line 13
    .line 14
    invoke-static {v0}, Lcom/annimon/stream/IntStream;->of(I)Lcom/annimon/stream/IntStream;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalInt;->isPresent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/annimon/stream/OptionalInt;->value:I

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "OptionalInt[%s]"

    .line 16
    .line 17
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v0, "OptionalInt.empty"

    .line 23
    .line 24
    :goto_0
    return-object v0
.end method
