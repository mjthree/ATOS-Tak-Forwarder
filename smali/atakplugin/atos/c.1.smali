.class public final Latakplugin/atos/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n-Util.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -Util.kt\nokio/-Util\n*L\n1#1,89:1\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "-Util"
.end annotation


# direct methods
.method public static final a(BI)I
    .locals 0

    .line 1
    and-int/2addr p0, p1

    .line 2
    return p0
.end method

.method public static final b(BJ)J
    .locals 2

    .line 1
    int-to-long v0, p0

    .line 2
    and-long p0, v0, p1

    .line 3
    .line 4
    return-wide p0
.end method

.method public static final c(IJ)J
    .locals 2

    .line 1
    int-to-long v0, p0

    .line 2
    and-long p0, v0, p1

    .line 3
    .line 4
    return-wide p0
.end method

.method public static final d([BI[BII)Z
    .locals 4
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "a"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "b"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_0
    if-ge v1, p4, :cond_1

    .line 14
    .line 15
    add-int v2, v1, p1

    .line 16
    .line 17
    aget-byte v2, p0, v2

    .line 18
    .line 19
    add-int v3, v1, p3

    .line 20
    .line 21
    aget-byte v3, p2, v3

    .line 22
    .line 23
    if-eq v2, v3, :cond_0

    .line 24
    .line 25
    return v0

    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x1

    .line 30
    return p0
.end method

.method public static final e(JJJ)V
    .locals 4

    .line 1
    or-long v0, p2, p4

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    cmp-long v0, p2, p0

    .line 10
    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    sub-long v0, p0, p2

    .line 14
    .line 15
    cmp-long v0, v0, p4

    .line 16
    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "size="

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p0, " offset="

    .line 36
    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, " byteCount="

    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method

.method public static final f(IJ)J
    .locals 2

    .line 1
    int-to-long v0, p0

    .line 2
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 3
    .line 4
    .line 5
    move-result-wide p0

    .line 6
    return-wide p0
.end method

.method public static final g(JI)J
    .locals 2

    .line 1
    int-to-long v0, p2

    .line 2
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 3
    .line 4
    .line 5
    move-result-wide p0

    .line 6
    return-wide p0
.end method

.method public static final h(I)I
    .locals 2

    .line 1
    const/high16 v0, -0x1000000

    .line 2
    .line 3
    and-int/2addr v0, p0

    .line 4
    ushr-int/lit8 v0, v0, 0x18

    .line 5
    .line 6
    const/high16 v1, 0xff0000

    .line 7
    .line 8
    and-int/2addr v1, p0

    .line 9
    ushr-int/lit8 v1, v1, 0x8

    .line 10
    .line 11
    or-int/2addr v0, v1

    .line 12
    const v1, 0xff00

    .line 13
    .line 14
    .line 15
    and-int/2addr v1, p0

    .line 16
    shl-int/lit8 v1, v1, 0x8

    .line 17
    .line 18
    or-int/2addr v0, v1

    .line 19
    and-int/lit16 p0, p0, 0xff

    .line 20
    .line 21
    shl-int/lit8 p0, p0, 0x18

    .line 22
    .line 23
    or-int/2addr p0, v0

    .line 24
    return p0
.end method

.method public static final i(J)J
    .locals 8

    .line 1
    const-wide/high16 v0, -0x100000000000000L

    .line 2
    .line 3
    and-long/2addr v0, p0

    .line 4
    const/16 v2, 0x38

    .line 5
    .line 6
    ushr-long/2addr v0, v2

    .line 7
    const-wide/high16 v3, 0xff000000000000L

    .line 8
    .line 9
    and-long/2addr v3, p0

    .line 10
    const/16 v5, 0x28

    .line 11
    .line 12
    ushr-long/2addr v3, v5

    .line 13
    or-long/2addr v0, v3

    .line 14
    const-wide v3, 0xff0000000000L

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    and-long/2addr v3, p0

    .line 20
    const/16 v6, 0x18

    .line 21
    .line 22
    ushr-long/2addr v3, v6

    .line 23
    or-long/2addr v0, v3

    .line 24
    const-wide v3, 0xff00000000L

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    and-long/2addr v3, p0

    .line 30
    const/16 v7, 0x8

    .line 31
    .line 32
    ushr-long/2addr v3, v7

    .line 33
    or-long/2addr v0, v3

    .line 34
    const-wide v3, 0xff000000L

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    and-long/2addr v3, p0

    .line 40
    shl-long/2addr v3, v7

    .line 41
    or-long/2addr v0, v3

    .line 42
    const-wide/32 v3, 0xff0000

    .line 43
    .line 44
    .line 45
    and-long/2addr v3, p0

    .line 46
    shl-long/2addr v3, v6

    .line 47
    or-long/2addr v0, v3

    .line 48
    const-wide/32 v3, 0xff00

    .line 49
    .line 50
    .line 51
    and-long/2addr v3, p0

    .line 52
    shl-long/2addr v3, v5

    .line 53
    or-long/2addr v0, v3

    .line 54
    const-wide/16 v3, 0xff

    .line 55
    .line 56
    and-long/2addr p0, v3

    .line 57
    shl-long/2addr p0, v2

    .line 58
    or-long/2addr p0, v0

    .line 59
    return-wide p0
.end method

.method public static final j(S)S
    .locals 1

    .line 1
    const v0, 0xff00

    .line 2
    .line 3
    .line 4
    and-int/2addr v0, p0

    .line 5
    ushr-int/lit8 v0, v0, 0x8

    .line 6
    .line 7
    and-int/lit16 p0, p0, 0xff

    .line 8
    .line 9
    shl-int/lit8 p0, p0, 0x8

    .line 10
    .line 11
    or-int/2addr p0, v0

    .line 12
    int-to-short p0, p0

    .line 13
    return p0
.end method

.method public static final k(BI)I
    .locals 0

    .line 1
    shl-int/2addr p0, p1

    .line 2
    return p0
.end method

.method public static final l(BI)I
    .locals 0

    .line 1
    shr-int/2addr p0, p1

    .line 2
    return p0
.end method
