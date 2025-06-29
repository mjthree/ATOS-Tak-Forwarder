.class public final Lcom/annimon/stream/OptionalDouble;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY:Lcom/annimon/stream/OptionalDouble;


# instance fields
.field private final isPresent:Z

.field private final value:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/annimon/stream/OptionalDouble;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/annimon/stream/OptionalDouble;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/annimon/stream/OptionalDouble;->EMPTY:Lcom/annimon/stream/OptionalDouble;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    return-void
.end method

.method private constructor <init>(D)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    .line 6
    iput-wide p1, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    return-void
.end method

.method public static empty()Lcom/annimon/stream/OptionalDouble;
    .locals 1

    .line 1
    sget-object v0, Lcom/annimon/stream/OptionalDouble;->EMPTY:Lcom/annimon/stream/OptionalDouble;

    .line 2
    .line 3
    return-object v0
.end method

.method public static of(D)Lcom/annimon/stream/OptionalDouble;
    .locals 1

    .line 1
    new-instance v0, Lcom/annimon/stream/OptionalDouble;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/OptionalDouble;-><init>(D)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static ofNullable(Ljava/lang/Double;)Lcom/annimon/stream/OptionalDouble;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/annimon/stream/OptionalDouble;->EMPTY:Lcom/annimon/stream/OptionalDouble;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/annimon/stream/OptionalDouble;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/OptionalDouble;-><init>(D)V

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
            "Lcom/annimon/stream/OptionalDouble;",
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
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/annimon/stream/OptionalDouble;

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
    check-cast p1, Lcom/annimon/stream/OptionalDouble;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    .line 14
    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    iget-boolean v3, p1, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    .line 18
    .line 19
    if-eqz v3, :cond_3

    .line 20
    .line 21
    iget-wide v3, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    .line 22
    .line 23
    iget-wide v5, p1, Lcom/annimon/stream/OptionalDouble;->value:D

    .line 24
    .line 25
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    move v0, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_3
    iget-boolean p1, p1, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    .line 35
    .line 36
    if-ne v1, p1, :cond_2

    .line 37
    .line 38
    :goto_0
    return v0
.end method

.method public executeIfAbsent(Ljava/lang/Runnable;)Lcom/annimon/stream/OptionalDouble;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalDouble;->isPresent()Z

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

.method public executeIfPresent(Lcom/annimon/stream/function/DoubleConsumer;)Lcom/annimon/stream/OptionalDouble;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/annimon/stream/OptionalDouble;->ifPresent(Lcom/annimon/stream/function/DoubleConsumer;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public filter(Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/OptionalDouble;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalDouble;->isPresent()Z

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
    iget-wide v0, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    .line 9
    .line 10
    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/DoublePredicate;->test(D)Z

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
    invoke-static {}, Lcom/annimon/stream/OptionalDouble;->empty()Lcom/annimon/stream/OptionalDouble;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    return-object p1
.end method

.method public filterNot(Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/OptionalDouble;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/annimon/stream/function/DoublePredicate$Util;->negate(Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/function/DoublePredicate;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/annimon/stream/OptionalDouble;->filter(Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/OptionalDouble;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getAsDouble()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalDouble;->orElseThrow()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/annimon/stream/Objects;->hashCode(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public ifPresent(Lcom/annimon/stream/function/DoubleConsumer;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    .line 6
    .line 7
    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/DoubleConsumer;->accept(D)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public ifPresentOrElse(Lcom/annimon/stream/function/DoubleConsumer;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    .line 6
    .line 7
    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/DoubleConsumer;->accept(D)V

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
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

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
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    .line 2
    .line 3
    return v0
.end method

.method public map(Lcom/annimon/stream/function/DoubleUnaryOperator;)Lcom/annimon/stream/OptionalDouble;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalDouble;->isPresent()Z

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
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-wide v0, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    .line 16
    .line 17
    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/DoubleUnaryOperator;->applyAsDouble(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-static {v0, v1}, Lcom/annimon/stream/OptionalDouble;->of(D)Lcom/annimon/stream/OptionalDouble;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public mapToInt(Lcom/annimon/stream/function/DoubleToIntFunction;)Lcom/annimon/stream/OptionalInt;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalDouble;->isPresent()Z

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
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-wide v0, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    .line 16
    .line 17
    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/DoubleToIntFunction;->applyAsInt(D)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p1}, Lcom/annimon/stream/OptionalInt;->of(I)Lcom/annimon/stream/OptionalInt;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public mapToLong(Lcom/annimon/stream/function/DoubleToLongFunction;)Lcom/annimon/stream/OptionalLong;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalDouble;->isPresent()Z

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
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-wide v0, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    .line 16
    .line 17
    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/DoubleToLongFunction;->applyAsLong(D)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-static {v0, v1}, Lcom/annimon/stream/OptionalLong;->of(J)Lcom/annimon/stream/OptionalLong;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public mapToObj(Lcom/annimon/stream/function/DoubleFunction;)Lcom/annimon/stream/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/DoubleFunction<",
            "TU;>;)",
            "Lcom/annimon/stream/Optional<",
            "TU;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalDouble;->isPresent()Z

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
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-wide v0, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    .line 16
    .line 17
    invoke-interface {p1, v0, v1}, Lcom/annimon/stream/function/DoubleFunction;->apply(D)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/annimon/stream/Optional;->ofNullable(Ljava/lang/Object;)Lcom/annimon/stream/Optional;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public or(Lcom/annimon/stream/function/Supplier;)Lcom/annimon/stream/OptionalDouble;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Supplier<",
            "Lcom/annimon/stream/OptionalDouble;",
            ">;)",
            "Lcom/annimon/stream/OptionalDouble;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalDouble;->isPresent()Z

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
    check-cast p1, Lcom/annimon/stream/OptionalDouble;

    .line 20
    .line 21
    return-object p1
.end method

.method public orElse(D)D
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide p1, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    .line 6
    .line 7
    :cond_0
    return-wide p1
.end method

.method public orElseGet(Lcom/annimon/stream/function/DoubleSupplier;)D
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/annimon/stream/function/DoubleSupplier;->getAsDouble()D

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    :goto_0
    return-wide v0
.end method

.method public orElseThrow()D
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    return-wide v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public orElseThrow(Lcom/annimon/stream/function/Supplier;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/annimon/stream/function/Supplier<",
            "TX;>;)D^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 4
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    .line 5
    iget-wide v0, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    return-wide v0

    .line 6
    :cond_0
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public stream()Lcom/annimon/stream/DoubleStream;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalDouble;->isPresent()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/annimon/stream/DoubleStream;->empty()Lcom/annimon/stream/DoubleStream;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-wide v0, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/annimon/stream/DoubleStream;->of(D)Lcom/annimon/stream/DoubleStream;

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
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalDouble;->isPresent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/annimon/stream/OptionalDouble;->value:D

    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

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
    const-string v1, "OptionalDouble[%s]"

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
    const-string v0, "OptionalDouble.empty"

    .line 23
    .line 24
    :goto_0
    return-object v0
.end method
