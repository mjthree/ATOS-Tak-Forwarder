.class final Lkotlin/jvm/internal/ArrayDoubleIterator;
.super Lkotlin/collections/DoubleIterator;
.source "SourceFile"


# instance fields
.field private final array:[D
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private index:I


# direct methods
.method public constructor <init>([D)V
    .locals 1
    .param p1    # [D
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "array"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lkotlin/collections/DoubleIterator;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lkotlin/jvm/internal/ArrayDoubleIterator;->array:[D

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lkotlin/jvm/internal/ArrayDoubleIterator;->index:I

    .line 2
    .line 3
    iget-object v1, p0, Lkotlin/jvm/internal/ArrayDoubleIterator;->array:[D

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public nextDouble()D
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lkotlin/jvm/internal/ArrayDoubleIterator;->array:[D

    .line 2
    .line 3
    iget v1, p0, Lkotlin/jvm/internal/ArrayDoubleIterator;->index:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lkotlin/jvm/internal/ArrayDoubleIterator;->index:I

    .line 8
    .line 9
    aget-wide v1, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    return-wide v1

    .line 12
    :catch_0
    move-exception v0

    .line 13
    iget v1, p0, Lkotlin/jvm/internal/ArrayDoubleIterator;->index:I

    .line 14
    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    iput v1, p0, Lkotlin/jvm/internal/ArrayDoubleIterator;->index:I

    .line 18
    .line 19
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v1
.end method
