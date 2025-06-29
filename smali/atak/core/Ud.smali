.class public final Latak/core/Ud;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Latak/core/Pk;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPeekSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PeekSource.kt\nokio/PeekSource\n*L\n1#1,74:1\n*E\n"
.end annotation


# instance fields
.field private final O:Latak/core/J1;

.field private final P:Latak/core/G1;

.field private Q:Latak/core/Eh;

.field private R:I

.field private S:Z

.field private T:J


# direct methods
.method public constructor <init>(Latak/core/J1;)V
    .locals 1
    .param p1    # Latak/core/J1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "upstream"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Latak/core/Ud;->O:Latak/core/J1;

    .line 10
    .line 11
    invoke-interface {p1}, Latak/core/J1;->u()Latak/core/G1;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Latak/core/Ud;->P:Latak/core/G1;

    .line 16
    .line 17
    iget-object p1, p1, Latak/core/G1;->O:Latak/core/Eh;

    .line 18
    .line 19
    iput-object p1, p0, Latak/core/Ud;->Q:Latak/core/Eh;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget p1, p1, Latak/core/Eh;->b:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, -0x1

    .line 27
    :goto_0
    iput p1, p0, Latak/core/Ud;->R:I

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Latak/core/Ud;->S:Z

    .line 3
    .line 4
    return-void
.end method

.method public read(Latak/core/G1;J)J
    .locals 8
    .param p1    # Latak/core/G1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Latak/core/Ud;->S:Z

    .line 7
    .line 8
    if-nez v0, :cond_6

    .line 9
    .line 10
    iget-object v0, p0, Latak/core/Ud;->Q:Latak/core/Eh;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v1, p0, Latak/core/Ud;->P:Latak/core/G1;

    .line 15
    .line 16
    iget-object v1, v1, Latak/core/G1;->O:Latak/core/Eh;

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    iget v0, p0, Latak/core/Ud;->R:I

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget v1, v1, Latak/core/Eh;->b:I

    .line 28
    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string p2, "Peek source is invalid because upstream source was used"

    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_2
    :goto_0
    iget-object v0, p0, Latak/core/Ud;->O:Latak/core/J1;

    .line 41
    .line 42
    iget-wide v1, p0, Latak/core/Ud;->T:J

    .line 43
    .line 44
    add-long/2addr v1, p2

    .line 45
    invoke-interface {v0, v1, v2}, Latak/core/J1;->Y(J)Z

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Latak/core/Ud;->Q:Latak/core/Eh;

    .line 49
    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    iget-object v0, p0, Latak/core/Ud;->P:Latak/core/G1;

    .line 53
    .line 54
    iget-object v0, v0, Latak/core/G1;->O:Latak/core/Eh;

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    iput-object v0, p0, Latak/core/Ud;->Q:Latak/core/Eh;

    .line 59
    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 63
    .line 64
    .line 65
    :cond_3
    iget v0, v0, Latak/core/Eh;->b:I

    .line 66
    .line 67
    iput v0, p0, Latak/core/Ud;->R:I

    .line 68
    .line 69
    :cond_4
    iget-object v0, p0, Latak/core/Ud;->P:Latak/core/G1;

    .line 70
    .line 71
    invoke-virtual {v0}, Latak/core/G1;->size()J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    iget-wide v2, p0, Latak/core/Ud;->T:J

    .line 76
    .line 77
    sub-long/2addr v0, v2

    .line 78
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 79
    .line 80
    .line 81
    move-result-wide p2

    .line 82
    const-wide/16 v0, 0x0

    .line 83
    .line 84
    cmp-long v0, p2, v0

    .line 85
    .line 86
    if-gtz v0, :cond_5

    .line 87
    .line 88
    const-wide/16 p1, -0x1

    .line 89
    .line 90
    return-wide p1

    .line 91
    :cond_5
    iget-object v2, p0, Latak/core/Ud;->P:Latak/core/G1;

    .line 92
    .line 93
    iget-wide v4, p0, Latak/core/Ud;->T:J

    .line 94
    .line 95
    move-object v3, p1

    .line 96
    move-wide v6, p2

    .line 97
    invoke-virtual/range {v2 .. v7}, Latak/core/G1;->B0(Latak/core/G1;JJ)Latak/core/G1;

    .line 98
    .line 99
    .line 100
    iget-wide v0, p0, Latak/core/Ud;->T:J

    .line 101
    .line 102
    add-long/2addr v0, p2

    .line 103
    iput-wide v0, p0, Latak/core/Ud;->T:J

    .line 104
    .line 105
    return-wide p2

    .line 106
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 107
    .line 108
    const-string p2, "closed"

    .line 109
    .line 110
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p1
.end method

.method public timeout()Latak/core/Fm;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Latak/core/Ud;->O:Latak/core/J1;

    .line 2
    .line 3
    invoke-interface {v0}, Latak/core/Pk;->timeout()Latak/core/Fm;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
