.class public final Lcom/annimon/stream/OptionalBoolean;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY:Lcom/annimon/stream/OptionalBoolean;

.field private static final FALSE:Lcom/annimon/stream/OptionalBoolean;

.field private static final TRUE:Lcom/annimon/stream/OptionalBoolean;


# instance fields
.field private final isPresent:Z

.field private final value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/annimon/stream/OptionalBoolean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/annimon/stream/OptionalBoolean;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/annimon/stream/OptionalBoolean;->EMPTY:Lcom/annimon/stream/OptionalBoolean;

    .line 7
    .line 8
    new-instance v0, Lcom/annimon/stream/OptionalBoolean;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Lcom/annimon/stream/OptionalBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/annimon/stream/OptionalBoolean;->TRUE:Lcom/annimon/stream/OptionalBoolean;

    .line 15
    .line 16
    new-instance v0, Lcom/annimon/stream/OptionalBoolean;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, v1}, Lcom/annimon/stream/OptionalBoolean;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/annimon/stream/OptionalBoolean;->FALSE:Lcom/annimon/stream/OptionalBoolean;

    .line 23
    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    .line 3
    iput-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    .line 6
    iput-boolean p1, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    return-void
.end method

.method public static empty()Lcom/annimon/stream/OptionalBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/annimon/stream/OptionalBoolean;->EMPTY:Lcom/annimon/stream/OptionalBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public static of(Z)Lcom/annimon/stream/OptionalBoolean;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/annimon/stream/OptionalBoolean;->TRUE:Lcom/annimon/stream/OptionalBoolean;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Lcom/annimon/stream/OptionalBoolean;->FALSE:Lcom/annimon/stream/OptionalBoolean;

    .line 7
    .line 8
    :goto_0
    return-object p0
.end method

.method public static ofNullable(Ljava/lang/Boolean;)Lcom/annimon/stream/OptionalBoolean;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/annimon/stream/OptionalBoolean;->EMPTY:Lcom/annimon/stream/OptionalBoolean;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-static {p0}, Lcom/annimon/stream/OptionalBoolean;->of(Z)Lcom/annimon/stream/OptionalBoolean;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
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
            "Lcom/annimon/stream/OptionalBoolean;",
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
    instance-of v1, p1, Lcom/annimon/stream/OptionalBoolean;

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
    check-cast p1, Lcom/annimon/stream/OptionalBoolean;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    .line 14
    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    iget-boolean v3, p1, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    .line 18
    .line 19
    if-eqz v3, :cond_3

    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    .line 22
    .line 23
    iget-boolean p1, p1, Lcom/annimon/stream/OptionalBoolean;->value:Z

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
    iget-boolean p1, p1, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    .line 31
    .line 32
    if-ne v1, p1, :cond_2

    .line 33
    .line 34
    :goto_0
    return v0
.end method

.method public executeIfAbsent(Ljava/lang/Runnable;)Lcom/annimon/stream/OptionalBoolean;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalBoolean;->isPresent()Z

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

.method public executeIfPresent(Lcom/annimon/stream/function/BooleanConsumer;)Lcom/annimon/stream/OptionalBoolean;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/annimon/stream/OptionalBoolean;->ifPresent(Lcom/annimon/stream/function/BooleanConsumer;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public filter(Lcom/annimon/stream/function/BooleanPredicate;)Lcom/annimon/stream/OptionalBoolean;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalBoolean;->isPresent()Z

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
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/annimon/stream/function/BooleanPredicate;->test(Z)Z

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
    invoke-static {}, Lcom/annimon/stream/OptionalBoolean;->empty()Lcom/annimon/stream/OptionalBoolean;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    return-object p1
.end method

.method public filterNot(Lcom/annimon/stream/function/BooleanPredicate;)Lcom/annimon/stream/OptionalBoolean;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/annimon/stream/function/BooleanPredicate$Util;->negate(Lcom/annimon/stream/function/BooleanPredicate;)Lcom/annimon/stream/function/BooleanPredicate;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/annimon/stream/OptionalBoolean;->filter(Lcom/annimon/stream/function/BooleanPredicate;)Lcom/annimon/stream/OptionalBoolean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getAsBoolean()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalBoolean;->orElseThrow()Z

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
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x4cf

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v0, 0x4d5

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public ifPresent(Lcom/annimon/stream/function/BooleanConsumer;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lcom/annimon/stream/function/BooleanConsumer;->accept(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public ifPresentOrElse(Lcom/annimon/stream/function/BooleanConsumer;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p2, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    .line 6
    .line 7
    invoke-interface {p1, p2}, Lcom/annimon/stream/function/BooleanConsumer;->accept(Z)V

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
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

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
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    .line 2
    .line 3
    return v0
.end method

.method public map(Lcom/annimon/stream/function/BooleanPredicate;)Lcom/annimon/stream/OptionalBoolean;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalBoolean;->isPresent()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/annimon/stream/OptionalBoolean;->empty()Lcom/annimon/stream/OptionalBoolean;

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
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    .line 16
    .line 17
    invoke-interface {p1, v0}, Lcom/annimon/stream/function/BooleanPredicate;->test(Z)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p1}, Lcom/annimon/stream/OptionalBoolean;->of(Z)Lcom/annimon/stream/OptionalBoolean;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public mapToObj(Lcom/annimon/stream/function/BooleanFunction;)Lcom/annimon/stream/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/BooleanFunction<",
            "TU;>;)",
            "Lcom/annimon/stream/Optional<",
            "TU;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalBoolean;->isPresent()Z

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
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    .line 16
    .line 17
    invoke-interface {p1, v0}, Lcom/annimon/stream/function/BooleanFunction;->apply(Z)Ljava/lang/Object;

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

.method public or(Lcom/annimon/stream/function/Supplier;)Lcom/annimon/stream/OptionalBoolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Supplier<",
            "Lcom/annimon/stream/OptionalBoolean;",
            ">;)",
            "Lcom/annimon/stream/OptionalBoolean;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalBoolean;->isPresent()Z

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
    check-cast p1, Lcom/annimon/stream/OptionalBoolean;

    .line 20
    .line 21
    return-object p1
.end method

.method public orElse(Z)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    .line 6
    .line 7
    :cond_0
    return p1
.end method

.method public orElseGet(Lcom/annimon/stream/function/BooleanSupplier;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/annimon/stream/function/BooleanSupplier;->getAsBoolean()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    :goto_0
    return p1
.end method

.method public orElseThrow()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public orElseThrow(Lcom/annimon/stream/function/Supplier;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/annimon/stream/function/Supplier<",
            "TX;>;)Z^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 4
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    if-eqz v0, :cond_0

    .line 5
    iget-boolean p1, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    return p1

    .line 6
    :cond_0
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "OptionalBoolean[true]"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "OptionalBoolean[false]"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const-string v0, "OptionalBoolean.empty"

    .line 16
    .line 17
    :goto_0
    return-object v0
.end method
