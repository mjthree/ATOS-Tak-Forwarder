.class public final Latak/core/U6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Latak/core/Pk;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInflaterSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InflaterSource.kt\nokio/InflaterSource\n+ 2 -Util.kt\nokio/-Util\n*L\n1#1,129:1\n72#2:130\n*E\n*S KotlinDebug\n*F\n+ 1 InflaterSource.kt\nokio/InflaterSource\n*L\n59#1:130\n*E\n"
.end annotation


# instance fields
.field private final O:Latak/core/J1;

.field private final P:Ljava/util/zip/Inflater;

.field private Q:I

.field private R:Z


# direct methods
.method public constructor <init>(Latak/core/J1;Ljava/util/zip/Inflater;)V
    .locals 1
    .param p1    # Latak/core/J1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/zip/Inflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latak/core/U6;->O:Latak/core/J1;

    iput-object p2, p0, Latak/core/U6;->P:Ljava/util/zip/Inflater;

    return-void
.end method

.method public constructor <init>(Latak/core/Pk;Ljava/util/zip/Inflater;)V
    .locals 1
    .param p1    # Latak/core/Pk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/zip/Inflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Latak/core/P9;->e(Latak/core/Pk;)Latak/core/J1;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Latak/core/U6;-><init>(Latak/core/J1;Ljava/util/zip/Inflater;)V

    return-void
.end method

.method private final a()V
    .locals 4

    .line 1
    iget v0, p0, Latak/core/U6;->Q:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Latak/core/U6;->P:Ljava/util/zip/Inflater;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    sub-int/2addr v0, v1

    .line 13
    iget v1, p0, Latak/core/U6;->Q:I

    .line 14
    .line 15
    sub-int/2addr v1, v0

    .line 16
    iput v1, p0, Latak/core/U6;->Q:I

    .line 17
    .line 18
    iget-object v1, p0, Latak/core/U6;->O:Latak/core/J1;

    .line 19
    .line 20
    int-to-long v2, v0

    .line 21
    invoke-interface {v1, v2, v3}, Latak/core/J1;->skip(J)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Latak/core/U6;->R:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Latak/core/U6;->P:Ljava/util/zip/Inflater;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Latak/core/U6;->R:Z

    .line 13
    .line 14
    iget-object v0, p0, Latak/core/U6;->O:Latak/core/J1;

    .line 15
    .line 16
    invoke-interface {v0}, Latak/core/Pk;->close()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public read(Latak/core/G1;J)J
    .locals 6
    .param p1    # Latak/core/G1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p2, v0

    .line 9
    .line 10
    if-ltz v2, :cond_7

    .line 11
    .line 12
    iget-boolean v3, p0, Latak/core/U6;->R:Z

    .line 13
    .line 14
    if-nez v3, :cond_6

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    return-wide v0

    .line 19
    :cond_0
    :goto_0
    invoke-virtual {p0}, Latak/core/U6;->s()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    :try_start_0
    invoke-virtual {p1, v1}, Latak/core/G1;->j(I)Latak/core/Eh;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget v2, v1, Latak/core/Eh;->c:I

    .line 29
    .line 30
    rsub-int v2, v2, 0x2000

    .line 31
    .line 32
    int-to-long v2, v2

    .line 33
    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    long-to-int v2, v2

    .line 38
    iget-object v3, p0, Latak/core/U6;->P:Ljava/util/zip/Inflater;

    .line 39
    .line 40
    iget-object v4, v1, Latak/core/Eh;->a:[B

    .line 41
    .line 42
    iget v5, v1, Latak/core/Eh;->c:I

    .line 43
    .line 44
    invoke-virtual {v3, v4, v5, v2}, Ljava/util/zip/Inflater;->inflate([BII)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-lez v2, :cond_1

    .line 49
    .line 50
    iget p2, v1, Latak/core/Eh;->c:I

    .line 51
    .line 52
    add-int/2addr p2, v2

    .line 53
    iput p2, v1, Latak/core/Eh;->c:I

    .line 54
    .line 55
    invoke-virtual {p1}, Latak/core/G1;->size()J

    .line 56
    .line 57
    .line 58
    move-result-wide p2

    .line 59
    int-to-long v0, v2

    .line 60
    add-long/2addr p2, v0

    .line 61
    invoke-virtual {p1, p2, p3}, Latak/core/G1;->i(J)V

    .line 62
    .line 63
    .line 64
    return-wide v0

    .line 65
    :catch_0
    move-exception p1

    .line 66
    goto :goto_2

    .line 67
    :cond_1
    iget-object v2, p0, Latak/core/U6;->P:Ljava/util/zip/Inflater;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_4

    .line 74
    .line 75
    iget-object v2, p0, Latak/core/U6;->P:Ljava/util/zip/Inflater;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsDictionary()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_2

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    if-nez v0, :cond_3

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    .line 88
    .line 89
    const-string p2, "source exhausted prematurely"

    .line 90
    .line 91
    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :cond_4
    :goto_1
    invoke-direct {p0}, Latak/core/U6;->a()V

    .line 96
    .line 97
    .line 98
    iget p2, v1, Latak/core/Eh;->b:I

    .line 99
    .line 100
    iget p3, v1, Latak/core/Eh;->c:I

    .line 101
    .line 102
    if-ne p2, p3, :cond_5

    .line 103
    .line 104
    invoke-virtual {v1}, Latak/core/Eh;->b()Latak/core/Eh;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    iput-object p2, p1, Latak/core/G1;->O:Latak/core/Eh;

    .line 109
    .line 110
    invoke-static {v1}, Latak/core/Fh;->d(Latak/core/Eh;)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    :cond_5
    const-wide/16 p1, -0x1

    .line 114
    .line 115
    return-wide p1

    .line 116
    :goto_2
    new-instance p2, Ljava/io/IOException;

    .line 117
    .line 118
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    throw p2

    .line 122
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 123
    .line 124
    const-string p2, "closed"

    .line 125
    .line 126
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p1

    .line 130
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v0, "byteCount < 0: "

    .line 136
    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p2
.end method

.method public final s()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Latak/core/U6;->P:Ljava/util/zip/Inflater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-direct {p0}, Latak/core/U6;->a()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Latak/core/U6;->P:Ljava/util/zip/Inflater;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_3

    .line 21
    .line 22
    iget-object v0, p0, Latak/core/U6;->O:Latak/core/J1;

    .line 23
    .line 24
    invoke-interface {v0}, Latak/core/J1;->C()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    return v0

    .line 32
    :cond_1
    iget-object v0, p0, Latak/core/U6;->O:Latak/core/J1;

    .line 33
    .line 34
    invoke-interface {v0}, Latak/core/J1;->u()Latak/core/G1;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v0, v0, Latak/core/G1;->O:Latak/core/Eh;

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget v2, v0, Latak/core/Eh;->c:I

    .line 46
    .line 47
    iget v3, v0, Latak/core/Eh;->b:I

    .line 48
    .line 49
    sub-int/2addr v2, v3

    .line 50
    iput v2, p0, Latak/core/U6;->Q:I

    .line 51
    .line 52
    iget-object v4, p0, Latak/core/U6;->P:Ljava/util/zip/Inflater;

    .line 53
    .line 54
    iget-object v0, v0, Latak/core/Eh;->a:[B

    .line 55
    .line 56
    invoke-virtual {v4, v0, v3, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 57
    .line 58
    .line 59
    return v1

    .line 60
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string v1, "?"

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0
.end method

.method public timeout()Latak/core/Fm;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Latak/core/U6;->O:Latak/core/J1;

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
