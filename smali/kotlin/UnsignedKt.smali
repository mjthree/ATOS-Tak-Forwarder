.class public final Lkotlin/UnsignedKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/JvmName;
    name = "UnsignedKt"
.end annotation


# direct methods
.method public static final doubleToUInt(D)I
    .locals 4
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v1}, Lkotlin/UnsignedKt;->uintToDouble(I)D

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    cmpg-double v0, p0, v2

    .line 14
    .line 15
    if-gtz v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v1, -0x1

    .line 19
    invoke-static {v1}, Lkotlin/UnsignedKt;->uintToDouble(I)D

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    cmpl-double v0, p0, v2

    .line 24
    .line 25
    if-ltz v0, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    cmpg-double v0, p0, v0

    .line 34
    .line 35
    if-gtz v0, :cond_3

    .line 36
    .line 37
    double-to-int p0, p0

    .line 38
    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const v0, 0x7fffffff

    .line 44
    .line 45
    .line 46
    int-to-double v1, v0

    .line 47
    sub-double/2addr p0, v1

    .line 48
    double-to-int p0, p0

    .line 49
    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    add-int/2addr p0, p1

    .line 58
    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    :goto_0
    return v1
.end method

.method public static final doubleToULong(D)J
    .locals 5
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->ulongToDouble(J)D

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    cmpg-double v0, p0, v3

    .line 15
    .line 16
    if-gtz v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const-wide/16 v1, -0x1

    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->ulongToDouble(J)D

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    cmpl-double v0, p0, v3

    .line 26
    .line 27
    if-ltz v0, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    .line 31
    .line 32
    cmpg-double v2, p0, v0

    .line 33
    .line 34
    if-gez v2, :cond_3

    .line 35
    .line 36
    double-to-long p0, p0

    .line 37
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    sub-double/2addr p0, v0

    .line 43
    double-to-long p0, p0

    .line 44
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 45
    .line 46
    .line 47
    move-result-wide p0

    .line 48
    const-wide/high16 v0, -0x8000000000000000L

    .line 49
    .line 50
    add-long/2addr p0, v0

    .line 51
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    :goto_0
    return-wide v1
.end method

.method private static final floatToUInt(F)I
    .locals 2
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    float-to-double v0, p0

    .line 2
    invoke-static {v0, v1}, Lkotlin/UnsignedKt;->doubleToUInt(D)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method private static final floatToULong(F)J
    .locals 2
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    float-to-double v0, p0

    .line 2
    invoke-static {v0, v1}, Lkotlin/UnsignedKt;->doubleToULong(D)J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    return-wide v0
.end method

.method public static final uintCompare(II)I
    .locals 1
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    xor-int/2addr p0, v0

    .line 4
    xor-int/2addr p1, v0

    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static final uintDivide-J1ME1BU(II)I
    .locals 4
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 1
    int-to-long v0, p0

    .line 2
    const-wide v2, 0xffffffffL

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    and-long/2addr v0, v2

    .line 8
    int-to-long p0, p1

    .line 9
    and-long/2addr p0, v2

    .line 10
    div-long/2addr v0, p0

    .line 11
    long-to-int p0, v0

    .line 12
    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public static final uintRemainder-J1ME1BU(II)I
    .locals 4
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 1
    int-to-long v0, p0

    .line 2
    const-wide v2, 0xffffffffL

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    and-long/2addr v0, v2

    .line 8
    int-to-long p0, p1

    .line 9
    and-long/2addr p0, v2

    .line 10
    rem-long/2addr v0, p0

    .line 11
    long-to-int p0, v0

    .line 12
    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public static final uintToDouble(I)D
    .locals 6
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    const v0, 0x7fffffff

    and-int/2addr v0, p0

    int-to-double v0, v0

    ushr-int/lit8 p0, p0, 0x1f

    shl-int/lit8 p0, p0, 0x1e

    int-to-double v2, p0

    const/4 p0, 0x2

    int-to-double v4, p0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static final uintToFloat(I)F
    .locals 2
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlin/UnsignedKt;->uintToDouble(I)D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    double-to-float p0, v0

    .line 6
    return p0
.end method

.method private static final uintToLong(I)J
    .locals 4
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static final uintToString(I)Ljava/lang/String;
    .locals 4
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final uintToString(II)Ljava/lang/String;
    .locals 4
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 2
    invoke-static {v0, v1, p1}, Lkotlin/UnsignedKt;->ulongToString(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final uintToULong(I)J
    .locals 4
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    int-to-long v0, p0

    .line 2
    const-wide v2, 0xffffffffL

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    and-long/2addr v0, v2

    .line 8
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public static final ulongCompare(JJ)I
    .locals 2
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    xor-long/2addr p0, v0

    .line 4
    xor-long/2addr p2, v0

    .line 5
    invoke-static {p0, p1, p2, p3}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static final ulongDivide-eb3DHEI(JJ)J
    .locals 5
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p2, v0

    .line 4
    .line 5
    if-gez v2, :cond_1

    .line 6
    .line 7
    invoke-static {p0, p1, p2, p3}, Latak/core/g9;->a(JJ)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-gez p0, :cond_0

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-wide/16 p0, 0x1

    .line 19
    .line 20
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide p0

    .line 24
    :goto_0
    return-wide p0

    .line 25
    :cond_1
    cmp-long v0, p0, v0

    .line 26
    .line 27
    if-ltz v0, :cond_2

    .line 28
    .line 29
    div-long/2addr p0, p2

    .line 30
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 31
    .line 32
    .line 33
    move-result-wide p0

    .line 34
    return-wide p0

    .line 35
    :cond_2
    const/4 v0, 0x1

    .line 36
    ushr-long v1, p0, v0

    .line 37
    .line 38
    div-long/2addr v1, p2

    .line 39
    shl-long/2addr v1, v0

    .line 40
    mul-long v3, v1, p2

    .line 41
    .line 42
    sub-long/2addr p0, v3

    .line 43
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide p0

    .line 47
    invoke-static {p2, p3}, Lkotlin/ULong;->constructor-impl(J)J

    .line 48
    .line 49
    .line 50
    move-result-wide p2

    .line 51
    invoke-static {p0, p1, p2, p3}, Latak/core/g9;->a(JJ)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-ltz p0, :cond_3

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    const/4 v0, 0x0

    .line 59
    :goto_1
    int-to-long p0, v0

    .line 60
    add-long/2addr v1, p0

    .line 61
    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    .line 62
    .line 63
    .line 64
    move-result-wide p0

    .line 65
    return-wide p0
.end method

.method public static final ulongRemainder-eb3DHEI(JJ)J
    .locals 6
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p2, v0

    .line 4
    .line 5
    if-gez v2, :cond_1

    .line 6
    .line 7
    invoke-static {p0, p1, p2, p3}, Latak/core/g9;->a(JJ)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sub-long/2addr p0, p2

    .line 15
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide p0

    .line 19
    :goto_0
    return-wide p0

    .line 20
    :cond_1
    cmp-long v2, p0, v0

    .line 21
    .line 22
    if-ltz v2, :cond_2

    .line 23
    .line 24
    rem-long/2addr p0, p2

    .line 25
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide p0

    .line 29
    return-wide p0

    .line 30
    :cond_2
    const/4 v2, 0x1

    .line 31
    ushr-long v3, p0, v2

    .line 32
    .line 33
    div-long/2addr v3, p2

    .line 34
    shl-long v2, v3, v2

    .line 35
    .line 36
    mul-long/2addr v2, p2

    .line 37
    sub-long/2addr p0, v2

    .line 38
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-static {p2, p3}, Lkotlin/ULong;->constructor-impl(J)J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    invoke-static {v2, v3, v4, v5}, Latak/core/g9;->a(JJ)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-ltz v2, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    move-wide p2, v0

    .line 54
    :goto_1
    sub-long/2addr p0, p2

    .line 55
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 56
    .line 57
    .line 58
    move-result-wide p0

    .line 59
    return-wide p0
.end method

.method public static final ulongToDouble(J)D
    .locals 4
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    const/16 v0, 0xb

    ushr-long v0, p0, v0

    long-to-double v0, v0

    const/16 v2, 0x800

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/16 v2, 0x7ff

    and-long/2addr p0, v2

    long-to-double p0, p0

    add-double/2addr v0, p0

    return-wide v0
.end method

.method private static final ulongToFloat(J)F
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlin/UnsignedKt;->ulongToDouble(J)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    double-to-float p0, p0

    .line 6
    return p0
.end method

.method private static final ulongToString(J)Ljava/lang/String;
    .locals 1
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-static {p0, p1, v0}, Lkotlin/UnsignedKt;->ulongToString(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final ulongToString(JI)Ljava/lang/String;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    .line 2
    const-string v1, "toString(...)"

    if-ltz v0, :cond_0

    invoke-static {p2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result p2

    invoke-static {p0, p1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 v0, 0x1

    ushr-long v2, p0, v0

    int-to-long v4, p2

    .line 3
    div-long/2addr v2, v4

    shl-long/2addr v2, v0

    mul-long v6, v2, v4

    sub-long/2addr p0, v6

    cmp-long v0, p0, v4

    if-ltz v0, :cond_1

    sub-long/2addr p0, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result p2

    invoke-static {p0, p1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
