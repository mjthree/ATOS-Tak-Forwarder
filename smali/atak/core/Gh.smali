.class public final Latak/core/Gh;
.super Latak/core/M1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSegmentedByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentedByteString.kt\nokio/SegmentedByteString\n*L\n1#1,299:1\n*E\n"
.end annotation


# instance fields
.field private final transient U:[[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final transient V:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Latak/core/G1;I)V
    .locals 7
    .param p1    # Latak/core/G1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "buffer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Latak/core/M1;->T:Latak/core/M1;

    .line 7
    .line 8
    invoke-virtual {v0}, Latak/core/M1;->c()[B

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p0, v0}, Latak/core/M1;-><init>([B)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Latak/core/G1;->size()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    int-to-long v5, p2

    .line 22
    invoke-static/range {v1 .. v6}, Latakplugin/atos/c;->e(JJJ)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p1, Latak/core/G1;->O:Latak/core/Eh;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    move v2, v1

    .line 29
    move v3, v2

    .line 30
    :goto_0
    if-ge v2, p2, :cond_2

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget v4, v0, Latak/core/Eh;->c:I

    .line 38
    .line 39
    iget v5, v0, Latak/core/Eh;->b:I

    .line 40
    .line 41
    if-eq v4, v5, :cond_1

    .line 42
    .line 43
    sub-int/2addr v4, v5

    .line 44
    add-int/2addr v2, v4

    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    iget-object v0, v0, Latak/core/Eh;->f:Latak/core/Eh;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 51
    .line 52
    const-string p2, "s.limit == s.pos"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    new-array v0, v3, [[B

    .line 59
    .line 60
    mul-int/lit8 v2, v3, 0x2

    .line 61
    .line 62
    new-array v2, v2, [I

    .line 63
    .line 64
    iput-object v2, p0, Latak/core/Gh;->V:[I

    .line 65
    .line 66
    iget-object p1, p1, Latak/core/G1;->O:Latak/core/Eh;

    .line 67
    .line 68
    move v2, v1

    .line 69
    :goto_1
    if-ge v1, p2, :cond_5

    .line 70
    .line 71
    if-nez p1, :cond_3

    .line 72
    .line 73
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 74
    .line 75
    .line 76
    :cond_3
    iget-object v4, p1, Latak/core/Eh;->a:[B

    .line 77
    .line 78
    aput-object v4, v0, v2

    .line 79
    .line 80
    iget v4, p1, Latak/core/Eh;->c:I

    .line 81
    .line 82
    iget v5, p1, Latak/core/Eh;->b:I

    .line 83
    .line 84
    sub-int/2addr v4, v5

    .line 85
    add-int/2addr v1, v4

    .line 86
    if-le v1, p2, :cond_4

    .line 87
    .line 88
    move v1, p2

    .line 89
    :cond_4
    iget-object v4, p0, Latak/core/Gh;->V:[I

    .line 90
    .line 91
    aput v1, v4, v2

    .line 92
    .line 93
    add-int v6, v2, v3

    .line 94
    .line 95
    aput v5, v4, v6

    .line 96
    .line 97
    const/4 v4, 0x1

    .line 98
    iput-boolean v4, p1, Latak/core/Eh;->d:Z

    .line 99
    .line 100
    add-int/lit8 v2, v2, 0x1

    .line 101
    .line 102
    iget-object p1, p1, Latak/core/Eh;->f:Latak/core/Eh;

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_5
    iput-object v0, p0, Latak/core/Gh;->U:[[B

    .line 106
    .line 107
    return-void
.end method

.method private final X(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Latak/core/Gh;->V:[I

    .line 2
    .line 3
    iget-object v1, p0, Latak/core/Gh;->U:[[B

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-ltz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    not-int p1, p1

    .line 17
    :goto_0
    return p1
.end method

.method private final s0()Latak/core/M1;
    .locals 2

    .line 1
    new-instance v0, Latak/core/M1;

    .line 2
    .line 3
    invoke-virtual {p0}, Latak/core/Gh;->m0()[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Latak/core/M1;-><init>([B)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private final t0()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-direct {p0}, Latak/core/Gh;->s0()Latak/core/M1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    .line 9
    .line 10
    const-string v1, "null cannot be cast to non-null type java.lang.Object"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method


# virtual methods
.method public A(Latak/core/M1;)Latak/core/M1;
    .locals 1
    .param p1    # Latak/core/M1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Latak/core/Gh;->s0()Latak/core/M1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Latak/core/M1;->A(Latak/core/M1;)Latak/core/M1;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public B(Latak/core/M1;)Latak/core/M1;
    .locals 1
    .param p1    # Latak/core/M1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Latak/core/Gh;->s0()Latak/core/M1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Latak/core/M1;->B(Latak/core/M1;)Latak/core/M1;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public F([BI)I
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Latak/core/Gh;->s0()Latak/core/M1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1, p2}, Latak/core/M1;->F([BI)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final I()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Latak/core/Gh;->V:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public final J()[[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Latak/core/Gh;->U:[[B

    .line 2
    .line 3
    return-object v0
.end method

.method public N([BI)I
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Latak/core/Gh;->s0()Latak/core/M1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1, p2}, Latak/core/M1;->N([BI)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public Q()Latak/core/M1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Latak/core/Gh;->s0()Latak/core/M1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Latak/core/M1;->Q()Latak/core/M1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public U(ILatak/core/M1;II)Z
    .locals 7
    .param p2    # Latak/core/M1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-ltz p1, :cond_4

    .line 8
    .line 9
    invoke-virtual {p0}, Latak/core/M1;->c0()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sub-int/2addr v1, p4

    .line 14
    if-le p1, v1, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    invoke-direct {p0, p1}, Latak/core/Gh;->X(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :goto_0
    if-lez p4, :cond_3

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    move v2, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iget-object v2, p0, Latak/core/Gh;->V:[I

    .line 28
    .line 29
    add-int/lit8 v3, v1, -0x1

    .line 30
    .line 31
    aget v2, v2, v3

    .line 32
    .line 33
    :goto_1
    iget-object v3, p0, Latak/core/Gh;->V:[I

    .line 34
    .line 35
    aget v3, v3, v1

    .line 36
    .line 37
    sub-int/2addr v3, v2

    .line 38
    add-int/2addr v3, v2

    .line 39
    sub-int/2addr v3, p1

    .line 40
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    iget-object v4, p0, Latak/core/Gh;->V:[I

    .line 45
    .line 46
    iget-object v5, p0, Latak/core/Gh;->U:[[B

    .line 47
    .line 48
    array-length v6, v5

    .line 49
    add-int/2addr v6, v1

    .line 50
    aget v4, v4, v6

    .line 51
    .line 52
    sub-int v2, p1, v2

    .line 53
    .line 54
    add-int/2addr v2, v4

    .line 55
    aget-object v4, v5, v1

    .line 56
    .line 57
    invoke-virtual {p2, p3, v4, v2, v3}, Latak/core/M1;->V(I[BII)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_2

    .line 62
    .line 63
    return v0

    .line 64
    :cond_2
    add-int/2addr p1, v3

    .line 65
    add-int/2addr p3, v3

    .line 66
    sub-int/2addr p4, v3

    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    const/4 p1, 0x1

    .line 71
    return p1

    .line 72
    :cond_4
    :goto_2
    return v0
.end method

.method public V(I[BII)Z
    .locals 7
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-ltz p1, :cond_4

    .line 8
    .line 9
    invoke-virtual {p0}, Latak/core/M1;->c0()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sub-int/2addr v1, p4

    .line 14
    if-gt p1, v1, :cond_4

    .line 15
    .line 16
    if-ltz p3, :cond_4

    .line 17
    .line 18
    array-length v1, p2

    .line 19
    sub-int/2addr v1, p4

    .line 20
    if-le p3, v1, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    invoke-direct {p0, p1}, Latak/core/Gh;->X(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    :goto_0
    if-lez p4, :cond_3

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    move v2, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object v2, p0, Latak/core/Gh;->V:[I

    .line 34
    .line 35
    add-int/lit8 v3, v1, -0x1

    .line 36
    .line 37
    aget v2, v2, v3

    .line 38
    .line 39
    :goto_1
    iget-object v3, p0, Latak/core/Gh;->V:[I

    .line 40
    .line 41
    aget v3, v3, v1

    .line 42
    .line 43
    sub-int/2addr v3, v2

    .line 44
    add-int/2addr v3, v2

    .line 45
    sub-int/2addr v3, p1

    .line 46
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    iget-object v4, p0, Latak/core/Gh;->V:[I

    .line 51
    .line 52
    iget-object v5, p0, Latak/core/Gh;->U:[[B

    .line 53
    .line 54
    array-length v6, v5

    .line 55
    add-int/2addr v6, v1

    .line 56
    aget v4, v4, v6

    .line 57
    .line 58
    sub-int v2, p1, v2

    .line 59
    .line 60
    add-int/2addr v2, v4

    .line 61
    aget-object v4, v5, v1

    .line 62
    .line 63
    invoke-static {v4, v2, p2, p3, v3}, Latakplugin/atos/c;->d([BI[BII)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_2

    .line 68
    .line 69
    return v0

    .line 70
    :cond_2
    add-int/2addr p1, v3

    .line 71
    add-int/2addr p3, v3

    .line 72
    sub-int/2addr p4, v3

    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    const/4 p1, 0x1

    .line 77
    return p1

    .line 78
    :cond_4
    :goto_2
    return v0
.end method

.method public Z()Latak/core/M1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Latak/core/Gh;->s0()Latak/core/M1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Latak/core/M1;->Z()Latak/core/M1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public a0()Latak/core/M1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Latak/core/Gh;->s0()Latak/core/M1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Latak/core/M1;->a0()Latak/core/M1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public b0()Latak/core/M1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Latak/core/Gh;->s0()Latak/core/M1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Latak/core/M1;->b0()Latak/core/M1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    instance-of v1, p1, Latak/core/M1;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast p1, Latak/core/M1;

    .line 11
    .line 12
    invoke-virtual {p1}, Latak/core/M1;->c0()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0}, Latak/core/M1;->c0()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-ne v1, v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Latak/core/M1;->c0()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p0, v2, p1, v2, v1}, Latak/core/Gh;->U(ILatak/core/M1;II)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v0, v2

    .line 34
    :goto_0
    return v0
.end method

.method public f()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Latak/core/Gh;->m0()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public f0(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "charset"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Latak/core/Gh;->s0()Latak/core/M1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Latak/core/M1;->f0(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Latak/core/Gh;->s0()Latak/core/M1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Latak/core/M1;->g()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Latak/core/Gh;->s0()Latak/core/M1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Latak/core/M1;->h()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .line 1
    invoke-virtual {p0}, Latak/core/M1;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget-object v0, p0, Latak/core/Gh;->U:[[B

    .line 9
    .line 10
    array-length v0, v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    move v3, v2

    .line 14
    move v2, v1

    .line 15
    :goto_0
    if-ge v1, v0, :cond_2

    .line 16
    .line 17
    iget-object v4, p0, Latak/core/Gh;->U:[[B

    .line 18
    .line 19
    aget-object v4, v4, v1

    .line 20
    .line 21
    iget-object v5, p0, Latak/core/Gh;->V:[I

    .line 22
    .line 23
    add-int v6, v0, v1

    .line 24
    .line 25
    aget v6, v5, v6

    .line 26
    .line 27
    aget v5, v5, v1

    .line 28
    .line 29
    sub-int v2, v5, v2

    .line 30
    .line 31
    add-int/2addr v2, v6

    .line 32
    :goto_1
    if-ge v6, v2, :cond_1

    .line 33
    .line 34
    mul-int/lit8 v3, v3, 0x1f

    .line 35
    .line 36
    aget-byte v7, v4, v6

    .line 37
    .line 38
    add-int/2addr v3, v7

    .line 39
    add-int/lit8 v6, v6, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    move v2, v5

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p0, v3}, Latak/core/M1;->v(I)V

    .line 47
    .line 48
    .line 49
    return v3
.end method

.method public i0(II)Latak/core/M1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Latak/core/Gh;->s0()Latak/core/M1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Latak/core/M1;->i0(II)Latak/core/M1;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public j()I
    .locals 2

    .line 1
    iget-object v0, p0, Latak/core/Gh;->V:[I

    .line 2
    .line 3
    iget-object v1, p0, Latak/core/Gh;->U:[[B

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    aget v0, v0, v1

    .line 9
    .line 10
    return v0
.end method

.method public k0()Latak/core/M1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Latak/core/Gh;->s0()Latak/core/M1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Latak/core/M1;->k0()Latak/core/M1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public l0()Latak/core/M1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Latak/core/Gh;->s0()Latak/core/M1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Latak/core/M1;->l0()Latak/core/M1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public m0()[B
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Latak/core/Gh;->V:[I

    .line 2
    .line 3
    iget-object v1, p0, Latak/core/Gh;->U:[[B

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    add-int/lit8 v2, v2, -0x1

    .line 7
    .line 8
    aget v0, v0, v2

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    array-length v1, v1

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :goto_0
    if-ge v2, v1, :cond_0

    .line 16
    .line 17
    iget-object v4, p0, Latak/core/Gh;->V:[I

    .line 18
    .line 19
    add-int v5, v1, v2

    .line 20
    .line 21
    aget v5, v4, v5

    .line 22
    .line 23
    aget v4, v4, v2

    .line 24
    .line 25
    iget-object v6, p0, Latak/core/Gh;->U:[[B

    .line 26
    .line 27
    aget-object v6, v6, v2

    .line 28
    .line 29
    sub-int v7, v4, v3

    .line 30
    .line 31
    invoke-static {v6, v5, v0, v3, v7}, Latakplugin/atos/b;->a([BI[BII)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    move v3, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object v0
.end method

.method public n0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Latak/core/Gh;->s0()Latak/core/M1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Latak/core/M1;->n0()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public o0(Ljava/io/OutputStream;)V
    .locals 6
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "out"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Latak/core/Gh;->U:[[B

    .line 7
    .line 8
    array-length v0, v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    iget-object v3, p0, Latak/core/Gh;->V:[I

    .line 14
    .line 15
    add-int v4, v0, v1

    .line 16
    .line 17
    aget v4, v3, v4

    .line 18
    .line 19
    aget v3, v3, v1

    .line 20
    .line 21
    iget-object v5, p0, Latak/core/Gh;->U:[[B

    .line 22
    .line 23
    aget-object v5, v5, v1

    .line 24
    .line 25
    sub-int v2, v3, v2

    .line 26
    .line 27
    invoke-virtual {p1, v5, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    move v2, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public t()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Latak/core/Gh;->m0()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Latak/core/Gh;->s0()Latak/core/M1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Latak/core/M1;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public u(I)B
    .locals 7

    .line 1
    iget-object v0, p0, Latak/core/Gh;->V:[I

    .line 2
    .line 3
    iget-object v1, p0, Latak/core/Gh;->U:[[B

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    aget v0, v0, v1

    .line 9
    .line 10
    int-to-long v1, v0

    .line 11
    int-to-long v3, p1

    .line 12
    const-wide/16 v5, 0x1

    .line 13
    .line 14
    invoke-static/range {v1 .. v6}, Latakplugin/atos/c;->e(JJJ)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Latak/core/Gh;->X(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Latak/core/Gh;->V:[I

    .line 26
    .line 27
    add-int/lit8 v2, v0, -0x1

    .line 28
    .line 29
    aget v1, v1, v2

    .line 30
    .line 31
    :goto_0
    iget-object v2, p0, Latak/core/Gh;->V:[I

    .line 32
    .line 33
    iget-object v3, p0, Latak/core/Gh;->U:[[B

    .line 34
    .line 35
    array-length v4, v3

    .line 36
    add-int/2addr v4, v0

    .line 37
    aget v2, v2, v4

    .line 38
    .line 39
    aget-object v0, v3, v0

    .line 40
    .line 41
    sub-int/2addr p1, v1

    .line 42
    add-int/2addr p1, v2

    .line 43
    aget-byte p1, v0, p1

    .line 44
    .line 45
    return p1
.end method

.method public x()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Latak/core/Gh;->s0()Latak/core/M1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Latak/core/M1;->x()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public y(Latak/core/G1;)V
    .locals 11
    .param p1    # Latak/core/G1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "buffer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Latak/core/Gh;->U:[[B

    .line 7
    .line 8
    array-length v0, v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v1, v0, :cond_3

    .line 12
    .line 13
    iget-object v3, p0, Latak/core/Gh;->V:[I

    .line 14
    .line 15
    add-int v4, v0, v1

    .line 16
    .line 17
    aget v7, v3, v4

    .line 18
    .line 19
    aget v3, v3, v1

    .line 20
    .line 21
    new-instance v4, Latak/core/Eh;

    .line 22
    .line 23
    iget-object v5, p0, Latak/core/Gh;->U:[[B

    .line 24
    .line 25
    aget-object v6, v5, v1

    .line 26
    .line 27
    add-int v5, v7, v3

    .line 28
    .line 29
    sub-int v8, v5, v2

    .line 30
    .line 31
    const/4 v9, 0x1

    .line 32
    const/4 v10, 0x0

    .line 33
    move-object v5, v4

    .line 34
    invoke-direct/range {v5 .. v10}, Latak/core/Eh;-><init>([BIIZZ)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p1, Latak/core/G1;->O:Latak/core/Eh;

    .line 38
    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    iput-object v4, v4, Latak/core/Eh;->g:Latak/core/Eh;

    .line 42
    .line 43
    iput-object v4, v4, Latak/core/Eh;->f:Latak/core/Eh;

    .line 44
    .line 45
    iput-object v4, p1, Latak/core/G1;->O:Latak/core/Eh;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    if-nez v2, :cond_1

    .line 49
    .line 50
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v2, v2, Latak/core/Eh;->g:Latak/core/Eh;

    .line 54
    .line 55
    if-nez v2, :cond_2

    .line 56
    .line 57
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {v2, v4}, Latak/core/Eh;->c(Latak/core/Eh;)Latak/core/Eh;

    .line 61
    .line 62
    .line 63
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    move v2, v3

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {p1}, Latak/core/G1;->size()J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    int-to-long v2, v2

    .line 72
    add-long/2addr v0, v2

    .line 73
    invoke-virtual {p1, v0, v1}, Latak/core/G1;->i(J)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public z(Latak/core/M1;)Latak/core/M1;
    .locals 1
    .param p1    # Latak/core/M1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Latak/core/Gh;->s0()Latak/core/M1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Latak/core/M1;->z(Latak/core/M1;)Latak/core/M1;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method
