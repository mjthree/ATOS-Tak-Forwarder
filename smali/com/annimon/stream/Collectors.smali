.class public final Lcom/annimon/stream/Collectors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/annimon/stream/Collectors$CollectorsImpl;,
        Lcom/annimon/stream/Collectors$Tuple2;,
        Lcom/annimon/stream/Collectors$Tuple1;
    }
.end annotation


# static fields
.field private static final DOUBLE_2ELEMENTS_ARRAY_SUPPLIER:Lcom/annimon/stream/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/Supplier<",
            "[D>;"
        }
    .end annotation
.end field

.field private static final LONG_2ELEMENTS_ARRAY_SUPPLIER:Lcom/annimon/stream/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/Supplier<",
            "[J>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/annimon/stream/Collectors$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/annimon/stream/Collectors$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/annimon/stream/Collectors;->LONG_2ELEMENTS_ARRAY_SUPPLIER:Lcom/annimon/stream/function/Supplier;

    .line 7
    .line 8
    new-instance v0, Lcom/annimon/stream/Collectors$2;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/annimon/stream/Collectors$2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/annimon/stream/Collectors;->DOUBLE_2ELEMENTS_ARRAY_SUPPLIER:Lcom/annimon/stream/function/Supplier;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalStateException;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/annimon/stream/Collectors;->duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$100(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Lcom/annimon/stream/function/BinaryOperator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/annimon/stream/Collectors;->mapMerge(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Lcom/annimon/stream/function/BinaryOperator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static averaging(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/Collectors$15;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/annimon/stream/Collectors$15;-><init>(Lcom/annimon/stream/function/Function;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/annimon/stream/Collectors;->averagingDouble(Lcom/annimon/stream/function/ToDoubleFunction;)Lcom/annimon/stream/Collector;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static averagingDouble(Lcom/annimon/stream/function/ToDoubleFunction;)Lcom/annimon/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ToDoubleFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/Collectors$CollectorsImpl;

    .line 2
    .line 3
    sget-object v1, Lcom/annimon/stream/Collectors;->DOUBLE_2ELEMENTS_ARRAY_SUPPLIER:Lcom/annimon/stream/function/Supplier;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/Collectors$19;

    .line 6
    .line 7
    invoke-direct {v2, p0}, Lcom/annimon/stream/Collectors$19;-><init>(Lcom/annimon/stream/function/ToDoubleFunction;)V

    .line 8
    .line 9
    .line 10
    new-instance p0, Lcom/annimon/stream/Collectors$20;

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/annimon/stream/Collectors$20;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, v2, p0}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method private static averagingHelper(Lcom/annimon/stream/function/BiConsumer;)Lcom/annimon/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/BiConsumer<",
            "[JTT;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/Collectors$CollectorsImpl;

    .line 2
    .line 3
    sget-object v1, Lcom/annimon/stream/Collectors;->LONG_2ELEMENTS_ARRAY_SUPPLIER:Lcom/annimon/stream/function/Supplier;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/Collectors$18;

    .line 6
    .line 7
    invoke-direct {v2}, Lcom/annimon/stream/Collectors$18;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, p0, v2}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static averagingInt(Lcom/annimon/stream/function/ToIntFunction;)Lcom/annimon/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ToIntFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/Collectors$16;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/annimon/stream/Collectors$16;-><init>(Lcom/annimon/stream/function/ToIntFunction;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/annimon/stream/Collectors;->averagingHelper(Lcom/annimon/stream/function/BiConsumer;)Lcom/annimon/stream/Collector;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static averagingLong(Lcom/annimon/stream/function/ToLongFunction;)Lcom/annimon/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ToLongFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/Collectors$17;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/annimon/stream/Collectors$17;-><init>(Lcom/annimon/stream/function/ToLongFunction;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/annimon/stream/Collectors;->averagingHelper(Lcom/annimon/stream/function/BiConsumer;)Lcom/annimon/stream/Collector;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method static castIdentity()Lcom/annimon/stream/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/annimon/stream/function/Function<",
            "TA;TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/Collectors$45;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/annimon/stream/Collectors$45;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static collectingAndThen(Lcom/annimon/stream/Collector;Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "IR:",
            "Ljava/lang/Object;",
            "OR:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/Collector<",
            "TT;TA;TIR;>;",
            "Lcom/annimon/stream/function/Function<",
            "TIR;TOR;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;TA;TOR;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/annimon/stream/Collector;->finisher()Lcom/annimon/stream/function/Function;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/annimon/stream/Collectors;->castIdentity()Lcom/annimon/stream/function/Function;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    new-instance v1, Lcom/annimon/stream/Collectors$CollectorsImpl;

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/annimon/stream/Collector;->supplier()Lcom/annimon/stream/function/Supplier;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {p0}, Lcom/annimon/stream/Collector;->accumulator()Lcom/annimon/stream/function/BiConsumer;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {v0, p1}, Lcom/annimon/stream/function/Function$Util;->andThen(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/function/Function;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v1, v2, p0, p1}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    .line 26
    .line 27
    .line 28
    return-object v1
.end method

.method public static counting()Lcom/annimon/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/Collectors$28;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/annimon/stream/Collectors$28;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/annimon/stream/Collectors;->summingLong(Lcom/annimon/stream/function/ToLongFunction;)Lcom/annimon/stream/Collector;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method private static duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalStateException;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "Duplicate key %s (attempted merging values %s and %s)"

    .line 4
    .line 5
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static filtering(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/Collector;)Lcom/annimon/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;",
            "Lcom/annimon/stream/Collector<",
            "-TT;TA;TR;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/annimon/stream/Collector;->accumulator()Lcom/annimon/stream/function/BiConsumer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/annimon/stream/Collectors$CollectorsImpl;

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/annimon/stream/Collector;->supplier()Lcom/annimon/stream/function/Supplier;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v3, Lcom/annimon/stream/Collectors$35;

    .line 12
    .line 13
    invoke-direct {v3, p0, v0}, Lcom/annimon/stream/Collectors$35;-><init>(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/BiConsumer;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lcom/annimon/stream/Collector;->finisher()Lcom/annimon/stream/function/Function;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v1, v2, v3, p0}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    .line 21
    .line 22
    .line 23
    return-object v1
.end method

.method public static flatMapping(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/Collector;)Lcom/annimon/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+",
            "Lcom/annimon/stream/Stream<",
            "+TU;>;>;",
            "Lcom/annimon/stream/Collector<",
            "-TU;TA;TR;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/annimon/stream/Collector;->accumulator()Lcom/annimon/stream/function/BiConsumer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/annimon/stream/Collectors$CollectorsImpl;

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/annimon/stream/Collector;->supplier()Lcom/annimon/stream/function/Supplier;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v3, Lcom/annimon/stream/Collectors$37;

    .line 12
    .line 13
    invoke-direct {v3, p0, v0}, Lcom/annimon/stream/Collectors$37;-><init>(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/BiConsumer;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lcom/annimon/stream/Collector;->finisher()Lcom/annimon/stream/function/Function;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v1, v2, v3, p0}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    .line 21
    .line 22
    .line 23
    return-object v1
.end method

.method public static groupingBy(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TK;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/annimon/stream/Collectors;->toList()Lcom/annimon/stream/Collector;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/annimon/stream/Collectors;->groupingBy(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/Collector;)Lcom/annimon/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static groupingBy(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/Collector;)Lcom/annimon/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TK;>;",
            "Lcom/annimon/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TD;>;>;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/annimon/stream/Collectors;->hashMapSupplier()Lcom/annimon/stream/function/Supplier;

    move-result-object v0

    .line 3
    invoke-static {p0, v0, p1}, Lcom/annimon/stream/Collectors;->groupingBy(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/Collector;)Lcom/annimon/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static groupingBy(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/Collector;)Lcom/annimon/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TD;>;>(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TK;>;",
            "Lcom/annimon/stream/function/Supplier<",
            "TM;>;",
            "Lcom/annimon/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 4
    invoke-interface {p2}, Lcom/annimon/stream/Collector;->finisher()Lcom/annimon/stream/function/Function;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Lcom/annimon/stream/Collectors$38;

    invoke-direct {v1, v0}, Lcom/annimon/stream/Collectors$38;-><init>(Lcom/annimon/stream/function/Function;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    new-instance v0, Lcom/annimon/stream/Collectors$CollectorsImpl;

    new-instance v2, Lcom/annimon/stream/Collectors$39;

    invoke-direct {v2, p0, p2}, Lcom/annimon/stream/Collectors$39;-><init>(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/Collector;)V

    invoke-direct {v0, p1, v2, v1}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    return-object v0
.end method

.method private static hashMapSupplier()Lcom/annimon/stream/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/annimon/stream/function/Supplier<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/Collectors$43;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/annimon/stream/Collectors$43;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static joining()Lcom/annimon/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, ""

    invoke-static {v0}, Lcom/annimon/stream/Collectors;->joining(Ljava/lang/CharSequence;)Lcom/annimon/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static joining(Ljava/lang/CharSequence;)Lcom/annimon/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/annimon/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    const-string v0, ""

    invoke-static {p0, v0, v0}, Lcom/annimon/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/annimon/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/annimon/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/annimon/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/annimon/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/annimon/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/annimon/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ")",
            "Lcom/annimon/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/annimon/stream/Collectors$CollectorsImpl;

    new-instance v1, Lcom/annimon/stream/Collectors$12;

    invoke-direct {v1}, Lcom/annimon/stream/Collectors$12;-><init>()V

    new-instance v2, Lcom/annimon/stream/Collectors$13;

    invoke-direct {v2, p0, p1}, Lcom/annimon/stream/Collectors$13;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance p0, Lcom/annimon/stream/Collectors$14;

    invoke-direct {p0, p3, p2}, Lcom/annimon/stream/Collectors$14;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-direct {v0, v1, v2, p0}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    return-object v0
.end method

.method private static mapMerge(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Lcom/annimon/stream/function/BinaryOperator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;",
            "Lcom/annimon/stream/function/BinaryOperator<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p3, v0, p2}, Lcom/annimon/stream/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :goto_0
    if-nez p2, :cond_1

    .line 13
    .line 14
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :goto_1
    return-void
.end method

.method public static mapping(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/Collector;)Lcom/annimon/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TU;>;",
            "Lcom/annimon/stream/Collector<",
            "-TU;TA;TR;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/annimon/stream/Collector;->accumulator()Lcom/annimon/stream/function/BiConsumer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/annimon/stream/Collectors$CollectorsImpl;

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/annimon/stream/Collector;->supplier()Lcom/annimon/stream/function/Supplier;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v3, Lcom/annimon/stream/Collectors$36;

    .line 12
    .line 13
    invoke-direct {v3, v0, p0}, Lcom/annimon/stream/Collectors$36;-><init>(Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lcom/annimon/stream/Collector;->finisher()Lcom/annimon/stream/function/Function;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v1, v2, v3, p0}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    .line 21
    .line 22
    .line 23
    return-object v1
.end method

.method public static partitioningBy(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/annimon/stream/Collectors;->toList()Lcom/annimon/stream/Collector;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/annimon/stream/Collectors;->partitioningBy(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/Collector;)Lcom/annimon/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static partitioningBy(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/Collector;)Lcom/annimon/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;",
            "Lcom/annimon/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "TD;>;>;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lcom/annimon/stream/Collector;->accumulator()Lcom/annimon/stream/function/BiConsumer;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/annimon/stream/Collectors$CollectorsImpl;

    new-instance v2, Lcom/annimon/stream/Collectors$40;

    invoke-direct {v2, p1}, Lcom/annimon/stream/Collectors$40;-><init>(Lcom/annimon/stream/Collector;)V

    new-instance v3, Lcom/annimon/stream/Collectors$41;

    invoke-direct {v3, v0, p0}, Lcom/annimon/stream/Collectors$41;-><init>(Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Predicate;)V

    new-instance p0, Lcom/annimon/stream/Collectors$42;

    invoke-direct {p0, p1}, Lcom/annimon/stream/Collectors$42;-><init>(Lcom/annimon/stream/Collector;)V

    invoke-direct {v1, v2, v3, p0}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    return-object v1
.end method

.method public static reducing(Ljava/lang/Object;Lcom/annimon/stream/function/BinaryOperator;)Lcom/annimon/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/annimon/stream/function/BinaryOperator<",
            "TT;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/Collectors$CollectorsImpl;

    new-instance v1, Lcom/annimon/stream/Collectors$29;

    invoke-direct {v1, p0}, Lcom/annimon/stream/Collectors$29;-><init>(Ljava/lang/Object;)V

    new-instance p0, Lcom/annimon/stream/Collectors$30;

    invoke-direct {p0, p1}, Lcom/annimon/stream/Collectors$30;-><init>(Lcom/annimon/stream/function/BinaryOperator;)V

    new-instance p1, Lcom/annimon/stream/Collectors$31;

    invoke-direct {p1}, Lcom/annimon/stream/Collectors$31;-><init>()V

    invoke-direct {v0, v1, p0, p1}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    return-object v0
.end method

.method public static reducing(Ljava/lang/Object;Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/BinaryOperator;)Lcom/annimon/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TR;>;",
            "Lcom/annimon/stream/function/BinaryOperator<",
            "TR;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/annimon/stream/Collectors$CollectorsImpl;

    new-instance v1, Lcom/annimon/stream/Collectors$32;

    invoke-direct {v1, p0}, Lcom/annimon/stream/Collectors$32;-><init>(Ljava/lang/Object;)V

    new-instance p0, Lcom/annimon/stream/Collectors$33;

    invoke-direct {p0, p2, p1}, Lcom/annimon/stream/Collectors$33;-><init>(Lcom/annimon/stream/function/BinaryOperator;Lcom/annimon/stream/function/Function;)V

    new-instance p1, Lcom/annimon/stream/Collectors$34;

    invoke-direct {p1}, Lcom/annimon/stream/Collectors$34;-><init>()V

    invoke-direct {v0, v1, p0, p1}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    return-object v0
.end method

.method public static summingDouble(Lcom/annimon/stream/function/ToDoubleFunction;)Lcom/annimon/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ToDoubleFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/Collectors$CollectorsImpl;

    .line 2
    .line 3
    sget-object v1, Lcom/annimon/stream/Collectors;->DOUBLE_2ELEMENTS_ARRAY_SUPPLIER:Lcom/annimon/stream/function/Supplier;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/Collectors$26;

    .line 6
    .line 7
    invoke-direct {v2, p0}, Lcom/annimon/stream/Collectors$26;-><init>(Lcom/annimon/stream/function/ToDoubleFunction;)V

    .line 8
    .line 9
    .line 10
    new-instance p0, Lcom/annimon/stream/Collectors$27;

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/annimon/stream/Collectors$27;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, v2, p0}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static summingInt(Lcom/annimon/stream/function/ToIntFunction;)Lcom/annimon/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ToIntFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/Collectors$CollectorsImpl;

    .line 2
    .line 3
    new-instance v1, Lcom/annimon/stream/Collectors$21;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/annimon/stream/Collectors$21;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/annimon/stream/Collectors$22;

    .line 9
    .line 10
    invoke-direct {v2, p0}, Lcom/annimon/stream/Collectors$22;-><init>(Lcom/annimon/stream/function/ToIntFunction;)V

    .line 11
    .line 12
    .line 13
    new-instance p0, Lcom/annimon/stream/Collectors$23;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/annimon/stream/Collectors$23;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2, p0}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static summingLong(Lcom/annimon/stream/function/ToLongFunction;)Lcom/annimon/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ToLongFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/Collectors$CollectorsImpl;

    .line 2
    .line 3
    sget-object v1, Lcom/annimon/stream/Collectors;->LONG_2ELEMENTS_ARRAY_SUPPLIER:Lcom/annimon/stream/function/Supplier;

    .line 4
    .line 5
    new-instance v2, Lcom/annimon/stream/Collectors$24;

    .line 6
    .line 7
    invoke-direct {v2, p0}, Lcom/annimon/stream/Collectors$24;-><init>(Lcom/annimon/stream/function/ToLongFunction;)V

    .line 8
    .line 9
    .line 10
    new-instance p0, Lcom/annimon/stream/Collectors$25;

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/annimon/stream/Collectors$25;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, v2, p0}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static toCollection(Lcom/annimon/stream/function/Supplier;)Lcom/annimon/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R::",
            "Ljava/util/Collection<",
            "TT;>;>(",
            "Lcom/annimon/stream/function/Supplier<",
            "TR;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/Collectors$CollectorsImpl;

    .line 2
    .line 3
    new-instance v1, Lcom/annimon/stream/Collectors$3;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/annimon/stream/Collectors$3;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static toList()Lcom/annimon/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/Collectors$CollectorsImpl;

    .line 2
    .line 3
    new-instance v1, Lcom/annimon/stream/Collectors$4;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/annimon/stream/Collectors$4;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/annimon/stream/Collectors$5;

    .line 9
    .line 10
    invoke-direct {v2}, Lcom/annimon/stream/Collectors$5;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static toMap(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TK;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TT;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/annimon/stream/function/UnaryOperator$Util;->identity()Lcom/annimon/stream/function/UnaryOperator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/annimon/stream/Collectors;->toMap(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static toMap(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TK;>;",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TV;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/annimon/stream/Collectors;->hashMapSupplier()Lcom/annimon/stream/function/Supplier;

    move-result-object v0

    .line 3
    invoke-static {p0, p1, v0}, Lcom/annimon/stream/Collectors;->toMap(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Supplier;)Lcom/annimon/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static toMap(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/BinaryOperator;)Lcom/annimon/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TK;>;",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TV;>;",
            "Lcom/annimon/stream/function/BinaryOperator<",
            "TV;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 5
    invoke-static {}, Lcom/annimon/stream/Collectors;->hashMapSupplier()Lcom/annimon/stream/function/Supplier;

    move-result-object v0

    .line 6
    invoke-static {p0, p1, p2, v0}, Lcom/annimon/stream/Collectors;->toMap(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/BinaryOperator;Lcom/annimon/stream/function/Supplier;)Lcom/annimon/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static toMap(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/BinaryOperator;Lcom/annimon/stream/function/Supplier;)Lcom/annimon/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TV;>;>(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TK;>;",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TV;>;",
            "Lcom/annimon/stream/function/BinaryOperator<",
            "TV;>;",
            "Lcom/annimon/stream/function/Supplier<",
            "TM;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/annimon/stream/Collectors$CollectorsImpl;

    new-instance v1, Lcom/annimon/stream/Collectors$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/annimon/stream/Collectors$11;-><init>(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/BinaryOperator;)V

    invoke-direct {v0, p3, v1}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;)V

    return-object v0
.end method

.method public static toMap(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Supplier;)Lcom/annimon/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TV;>;>(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TK;>;",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TV;>;",
            "Lcom/annimon/stream/function/Supplier<",
            "TM;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/annimon/stream/Collectors$CollectorsImpl;

    new-instance v1, Lcom/annimon/stream/Collectors$10;

    invoke-direct {v1, p0, p1}, Lcom/annimon/stream/Collectors$10;-><init>(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;)V

    invoke-direct {v0, p2, v1}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;)V

    return-object v0
.end method

.method public static toSet()Lcom/annimon/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/Collectors$CollectorsImpl;

    .line 2
    .line 3
    new-instance v1, Lcom/annimon/stream/Collectors$7;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/annimon/stream/Collectors$7;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/annimon/stream/Collectors$8;

    .line 9
    .line 10
    invoke-direct {v2}, Lcom/annimon/stream/Collectors$8;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static toUnmodifiableList()Lcom/annimon/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/annimon/stream/Collectors;->toList()Lcom/annimon/stream/Collector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/annimon/stream/Collectors$6;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/annimon/stream/Collectors$6;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/annimon/stream/Collectors;->collectingAndThen(Lcom/annimon/stream/Collector;Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Collector;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public static toUnmodifiableMap(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Collector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TK;>;",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TV;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/annimon/stream/Collectors;->toMap(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Collector;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/annimon/stream/Collectors;->toUnmodifiableMapConverter()Lcom/annimon/stream/function/UnaryOperator;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lcom/annimon/stream/Collectors;->collectingAndThen(Lcom/annimon/stream/Collector;Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static toUnmodifiableMap(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/BinaryOperator;)Lcom/annimon/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TK;>;",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TV;>;",
            "Lcom/annimon/stream/function/BinaryOperator<",
            "TV;>;)",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 4
    invoke-static {}, Lcom/annimon/stream/Collectors;->hashMapSupplier()Lcom/annimon/stream/function/Supplier;

    move-result-object v0

    .line 5
    invoke-static {p0, p1, p2, v0}, Lcom/annimon/stream/Collectors;->toMap(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/BinaryOperator;Lcom/annimon/stream/function/Supplier;)Lcom/annimon/stream/Collector;

    move-result-object p0

    .line 6
    invoke-static {}, Lcom/annimon/stream/Collectors;->toUnmodifiableMapConverter()Lcom/annimon/stream/function/UnaryOperator;

    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Lcom/annimon/stream/Collectors;->collectingAndThen(Lcom/annimon/stream/Collector;Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method private static toUnmodifiableMapConverter()Lcom/annimon/stream/function/UnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/annimon/stream/function/UnaryOperator<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/Collectors$44;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/annimon/stream/Collectors$44;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static toUnmodifiableSet()Lcom/annimon/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/annimon/stream/Collector<",
            "TT;*",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/annimon/stream/Collectors;->toSet()Lcom/annimon/stream/Collector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/annimon/stream/Collectors$9;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/annimon/stream/Collectors$9;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/annimon/stream/Collectors;->collectingAndThen(Lcom/annimon/stream/Collector;Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Collector;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method
