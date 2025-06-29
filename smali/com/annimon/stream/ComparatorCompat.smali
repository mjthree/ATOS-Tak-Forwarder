.class public final Lcom/annimon/stream/ComparatorCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final NATURAL_ORDER:Lcom/annimon/stream/ComparatorCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/ComparatorCompat<",
            "Ljava/lang/Comparable<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final REVERSE_ORDER:Lcom/annimon/stream/ComparatorCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/ComparatorCompat<",
            "Ljava/lang/Comparable<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/annimon/stream/ComparatorCompat;

    .line 2
    .line 3
    new-instance v1, Lcom/annimon/stream/ComparatorCompat$1;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/annimon/stream/ComparatorCompat$1;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/annimon/stream/ComparatorCompat;-><init>(Ljava/util/Comparator;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/annimon/stream/ComparatorCompat;->NATURAL_ORDER:Lcom/annimon/stream/ComparatorCompat;

    .line 12
    .line 13
    new-instance v0, Lcom/annimon/stream/ComparatorCompat;

    .line 14
    .line 15
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Lcom/annimon/stream/ComparatorCompat;-><init>(Ljava/util/Comparator;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/annimon/stream/ComparatorCompat;->REVERSE_ORDER:Lcom/annimon/stream/ComparatorCompat;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/ComparatorCompat;->comparator:Ljava/util/Comparator;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic access$000(Lcom/annimon/stream/ComparatorCompat;)Ljava/util/Comparator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/annimon/stream/ComparatorCompat;->comparator:Ljava/util/Comparator;

    .line 2
    .line 3
    return-object p0
.end method

.method public static chain(Ljava/util/Comparator;)Lcom/annimon/stream/ComparatorCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/annimon/stream/ComparatorCompat<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/ComparatorCompat;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/annimon/stream/ComparatorCompat;-><init>(Ljava/util/Comparator;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static comparing(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/ComparatorCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/lang/Comparable<",
            "-TU;>;>(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TU;>;)",
            "Lcom/annimon/stream/ComparatorCompat<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/annimon/stream/ComparatorCompat;

    new-instance v1, Lcom/annimon/stream/ComparatorCompat$4;

    invoke-direct {v1, p0}, Lcom/annimon/stream/ComparatorCompat$4;-><init>(Lcom/annimon/stream/function/Function;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/ComparatorCompat;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static comparing(Lcom/annimon/stream/function/Function;Ljava/util/Comparator;)Lcom/annimon/stream/ComparatorCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/Comparator<",
            "-TU;>;)",
            "Lcom/annimon/stream/ComparatorCompat<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/annimon/stream/ComparatorCompat;

    new-instance v1, Lcom/annimon/stream/ComparatorCompat$3;

    invoke-direct {v1, p0, p1}, Lcom/annimon/stream/ComparatorCompat$3;-><init>(Lcom/annimon/stream/function/Function;Ljava/util/Comparator;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/ComparatorCompat;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static comparingDouble(Lcom/annimon/stream/function/ToDoubleFunction;)Lcom/annimon/stream/ComparatorCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ToDoubleFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/ComparatorCompat<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/annimon/stream/ComparatorCompat;

    .line 5
    .line 6
    new-instance v1, Lcom/annimon/stream/ComparatorCompat$7;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/annimon/stream/ComparatorCompat$7;-><init>(Lcom/annimon/stream/function/ToDoubleFunction;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/annimon/stream/ComparatorCompat;-><init>(Ljava/util/Comparator;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static comparingInt(Lcom/annimon/stream/function/ToIntFunction;)Lcom/annimon/stream/ComparatorCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ToIntFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/ComparatorCompat<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/annimon/stream/ComparatorCompat;

    .line 5
    .line 6
    new-instance v1, Lcom/annimon/stream/ComparatorCompat$5;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/annimon/stream/ComparatorCompat$5;-><init>(Lcom/annimon/stream/function/ToIntFunction;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/annimon/stream/ComparatorCompat;-><init>(Ljava/util/Comparator;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static comparingLong(Lcom/annimon/stream/function/ToLongFunction;)Lcom/annimon/stream/ComparatorCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ToLongFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/ComparatorCompat<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/annimon/stream/ComparatorCompat;

    .line 5
    .line 6
    new-instance v1, Lcom/annimon/stream/ComparatorCompat$6;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/annimon/stream/ComparatorCompat$6;-><init>(Lcom/annimon/stream/function/ToLongFunction;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/annimon/stream/ComparatorCompat;-><init>(Ljava/util/Comparator;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static naturalOrder()Lcom/annimon/stream/ComparatorCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>()",
            "Lcom/annimon/stream/ComparatorCompat<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/annimon/stream/ComparatorCompat;->NATURAL_ORDER:Lcom/annimon/stream/ComparatorCompat;

    .line 2
    .line 3
    return-object v0
.end method

.method private static nullsComparator(ZLjava/util/Comparator;)Lcom/annimon/stream/ComparatorCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lcom/annimon/stream/ComparatorCompat<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/ComparatorCompat;

    .line 2
    .line 3
    new-instance v1, Lcom/annimon/stream/ComparatorCompat$8;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/annimon/stream/ComparatorCompat$8;-><init>(ZLjava/util/Comparator;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/annimon/stream/ComparatorCompat;-><init>(Ljava/util/Comparator;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static nullsFirst()Lcom/annimon/stream/ComparatorCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/annimon/stream/ComparatorCompat<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/annimon/stream/ComparatorCompat;->nullsComparator(ZLjava/util/Comparator;)Lcom/annimon/stream/ComparatorCompat;

    move-result-object v0

    return-object v0
.end method

.method public static nullsFirst(Ljava/util/Comparator;)Lcom/annimon/stream/ComparatorCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lcom/annimon/stream/ComparatorCompat<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p0}, Lcom/annimon/stream/ComparatorCompat;->nullsComparator(ZLjava/util/Comparator;)Lcom/annimon/stream/ComparatorCompat;

    move-result-object p0

    return-object p0
.end method

.method public static nullsLast()Lcom/annimon/stream/ComparatorCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/annimon/stream/ComparatorCompat<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/annimon/stream/ComparatorCompat;->nullsComparator(ZLjava/util/Comparator;)Lcom/annimon/stream/ComparatorCompat;

    move-result-object v0

    return-object v0
.end method

.method public static nullsLast(Ljava/util/Comparator;)Lcom/annimon/stream/ComparatorCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lcom/annimon/stream/ComparatorCompat<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0}, Lcom/annimon/stream/ComparatorCompat;->nullsComparator(ZLjava/util/Comparator;)Lcom/annimon/stream/ComparatorCompat;

    move-result-object p0

    return-object p0
.end method

.method public static reverseOrder()Lcom/annimon/stream/ComparatorCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>()",
            "Lcom/annimon/stream/ComparatorCompat<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/annimon/stream/ComparatorCompat;->REVERSE_ORDER:Lcom/annimon/stream/ComparatorCompat;

    .line 2
    .line 3
    return-object v0
.end method

.method public static reversed(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/annimon/stream/ComparatorCompat$2;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/ComparatorCompat$2;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/ComparatorCompat;->comparator:Ljava/util/Comparator;

    .line 2
    .line 3
    return-object v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/ComparatorCompat;->comparator:Ljava/util/Comparator;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public reversed()Lcom/annimon/stream/ComparatorCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/ComparatorCompat<",
            "TT;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/annimon/stream/ComparatorCompat;

    iget-object v1, p0, Lcom/annimon/stream/ComparatorCompat;->comparator:Ljava/util/Comparator;

    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/annimon/stream/ComparatorCompat;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public bridge synthetic reversed()Ljava/util/Comparator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/ComparatorCompat;->reversed()Lcom/annimon/stream/ComparatorCompat;

    move-result-object v0

    return-object v0
.end method

.method public thenComparing(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/ComparatorCompat;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/lang/Comparable<",
            "-TU;>;>(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TU;>;)",
            "Lcom/annimon/stream/ComparatorCompat<",
            "TT;>;"
        }
    .end annotation

    .line 8
    invoke-static {p1}, Lcom/annimon/stream/ComparatorCompat;->comparing(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/ComparatorCompat;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/annimon/stream/ComparatorCompat;->thenComparing(Ljava/util/Comparator;)Lcom/annimon/stream/ComparatorCompat;

    move-result-object p1

    return-object p1
.end method

.method public thenComparing(Lcom/annimon/stream/function/Function;Ljava/util/Comparator;)Lcom/annimon/stream/ComparatorCompat;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/Comparator<",
            "-TU;>;)",
            "Lcom/annimon/stream/ComparatorCompat<",
            "TT;>;"
        }
    .end annotation

    .line 7
    invoke-static {p1, p2}, Lcom/annimon/stream/ComparatorCompat;->comparing(Lcom/annimon/stream/function/Function;Ljava/util/Comparator;)Lcom/annimon/stream/ComparatorCompat;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/annimon/stream/ComparatorCompat;->thenComparing(Ljava/util/Comparator;)Lcom/annimon/stream/ComparatorCompat;

    move-result-object p1

    return-object p1
.end method

.method public thenComparing(Ljava/util/Comparator;)Lcom/annimon/stream/ComparatorCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lcom/annimon/stream/ComparatorCompat<",
            "TT;>;"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lcom/annimon/stream/ComparatorCompat;

    new-instance v1, Lcom/annimon/stream/ComparatorCompat$9;

    invoke-direct {v1, p0, p1}, Lcom/annimon/stream/ComparatorCompat$9;-><init>(Lcom/annimon/stream/ComparatorCompat;Ljava/util/Comparator;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/ComparatorCompat;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public bridge synthetic thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/annimon/stream/ComparatorCompat;->thenComparing(Ljava/util/Comparator;)Lcom/annimon/stream/ComparatorCompat;

    move-result-object p1

    return-object p1
.end method

.method public thenComparingDouble(Lcom/annimon/stream/function/ToDoubleFunction;)Lcom/annimon/stream/ComparatorCompat;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ToDoubleFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/ComparatorCompat<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/annimon/stream/ComparatorCompat;->comparingDouble(Lcom/annimon/stream/function/ToDoubleFunction;)Lcom/annimon/stream/ComparatorCompat;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/annimon/stream/ComparatorCompat;->thenComparing(Ljava/util/Comparator;)Lcom/annimon/stream/ComparatorCompat;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public thenComparingInt(Lcom/annimon/stream/function/ToIntFunction;)Lcom/annimon/stream/ComparatorCompat;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ToIntFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/ComparatorCompat<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/annimon/stream/ComparatorCompat;->comparingInt(Lcom/annimon/stream/function/ToIntFunction;)Lcom/annimon/stream/ComparatorCompat;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/annimon/stream/ComparatorCompat;->thenComparing(Ljava/util/Comparator;)Lcom/annimon/stream/ComparatorCompat;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public thenComparingLong(Lcom/annimon/stream/function/ToLongFunction;)Lcom/annimon/stream/ComparatorCompat;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ToLongFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/ComparatorCompat<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/annimon/stream/ComparatorCompat;->comparingLong(Lcom/annimon/stream/function/ToLongFunction;)Lcom/annimon/stream/ComparatorCompat;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/annimon/stream/ComparatorCompat;->thenComparing(Ljava/util/Comparator;)Lcom/annimon/stream/ComparatorCompat;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
