.class public final Latak/core/Hg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Latak/core/I1;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealBufferedSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealBufferedSink.kt\nokio/RealBufferedSink\n*L\n1#1,258:1\n32#1:259\n32#1:260\n32#1:261\n32#1:262\n32#1:263\n32#1:264\n32#1:265\n32#1:266\n32#1:267\n32#1:268\n32#1:269\n32#1:270\n32#1:271\n32#1:272\n32#1:273\n32#1:274\n32#1:275\n32#1:276\n32#1:277\n32#1:278\n32#1:279\n32#1:280\n32#1:281\n32#1:282\n32#1:283\n32#1:284\n32#1:285\n32#1:286\n32#1:287\n32#1:288\n32#1:289\n*E\n*S KotlinDebug\n*F\n+ 1 RealBufferedSink.kt\nokio/RealBufferedSink\n*L\n38#1:259\n44#1:260\n50#1:261\n56#1:262\n62#1:263\n68#1:264\n79#1:265\n85#1:266\n91#1:267\n97#1:268\n105#1:269\n116#1:270\n126#1:271\n132#1:272\n138#1:273\n144#1:274\n150#1:275\n156#1:276\n162#1:277\n168#1:278\n174#1:279\n180#1:280\n181#1:281\n187#1:282\n188#1:283\n221#1:284\n222#1:285\n222#1:286\n236#1:287\n237#1:288\n237#1:289\n*E\n"
.end annotation


# instance fields
.field public final O:Latak/core/Gk;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final P:Latak/core/G1;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Q:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Latak/core/Gk;)V
    .locals 1
    .param p1    # Latak/core/Gk;
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Latak/core/Hg;->O:Latak/core/Gk;

    .line 10
    .line 11
    new-instance p1, Latak/core/G1;

    .line 12
    .line 13
    invoke-direct {p1}, Latak/core/G1;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public B(I)Latak/core/I1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Latak/core/Hg;->Q:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Latak/core/G1;->q1(I)Latak/core/G1;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Latak/core/Hg;->I()Latak/core/I1;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v0, "closed"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public D(I)Latak/core/I1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Latak/core/Hg;->Q:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Latak/core/G1;->m1(I)Latak/core/G1;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Latak/core/Hg;->I()Latak/core/I1;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v0, "closed"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public I()Latak/core/I1;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Latak/core/Hg;->Q:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 6
    .line 7
    invoke-virtual {v0}, Latak/core/G1;->y0()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v2, v0, v2

    .line 14
    .line 15
    if-lez v2, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Latak/core/Hg;->O:Latak/core/Gk;

    .line 18
    .line 19
    iget-object v3, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 20
    .line 21
    invoke-interface {v2, v3, v0, v1}, Latak/core/Gk;->write(Latak/core/G1;J)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-object p0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v1, "closed"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public N(I)Latak/core/I1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Latak/core/Hg;->Q:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Latak/core/G1;->u1(I)Latak/core/G1;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Latak/core/Hg;->I()Latak/core/I1;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v0, "closed"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public O(Ljava/lang/String;)Latak/core/I1;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "string"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Latak/core/Hg;->Q:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Latak/core/G1;->A1(Ljava/lang/String;)Latak/core/G1;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Latak/core/Hg;->I()Latak/core/I1;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "closed"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public Q([BII)Latak/core/I1;
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Latak/core/Hg;->Q:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, p3}, Latak/core/G1;->l1([BII)Latak/core/G1;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Latak/core/Hg;->I()Latak/core/I1;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string p2, "closed"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public S(Latak/core/M1;)Latak/core/I1;
    .locals 1
    .param p1    # Latak/core/M1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "byteString"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Latak/core/Hg;->Q:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Latak/core/G1;->h1(Latak/core/M1;)Latak/core/G1;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Latak/core/Hg;->I()Latak/core/I1;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "closed"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public T(Ljava/lang/String;II)Latak/core/I1;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "string"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Latak/core/Hg;->Q:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, p3}, Latak/core/G1;->B1(Ljava/lang/String;II)Latak/core/G1;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Latak/core/Hg;->I()Latak/core/I1;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string p2, "closed"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public U(J)Latak/core/I1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Latak/core/Hg;->Q:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Latak/core/G1;->o1(J)Latak/core/G1;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Latak/core/Hg;->I()Latak/core/I1;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string p2, "closed"

    .line 18
    .line 19
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public V(Latak/core/Pk;J)Latak/core/I1;
    .locals 4
    .param p1    # Latak/core/Pk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :goto_0
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v0, p2, v0

    .line 9
    .line 10
    if-lez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 13
    .line 14
    invoke-interface {p1, v0, p2, p3}, Latak/core/Pk;->read(Latak/core/G1;J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    const-wide/16 v2, -0x1

    .line 19
    .line 20
    cmp-long v2, v0, v2

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    sub-long/2addr p2, v0

    .line 25
    invoke-virtual {p0}, Latak/core/Hg;->I()Latak/core/I1;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_1
    return-object p0
.end method

.method public X(Ljava/lang/String;Ljava/nio/charset/Charset;)Latak/core/I1;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "string"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "charset"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Latak/core/Hg;->Q:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Latak/core/G1;->w1(Ljava/lang/String;Ljava/nio/charset/Charset;)Latak/core/G1;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Latak/core/Hg;->I()Latak/core/I1;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string p2, "closed"

    .line 28
    .line 29
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method public close()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Latak/core/Hg;->Q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 7
    .line 8
    invoke-virtual {v0}, Latak/core/G1;->size()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    cmp-long v0, v0, v2

    .line 15
    .line 16
    if-lez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Latak/core/Hg;->O:Latak/core/Gk;

    .line 19
    .line 20
    iget-object v1, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 21
    .line 22
    invoke-virtual {v1}, Latak/core/G1;->size()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    invoke-interface {v0, v1, v2, v3}, Latak/core/Gk;->write(Latak/core/G1;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 33
    :goto_1
    :try_start_1
    iget-object v1, p0, Latak/core/Hg;->O:Latak/core/Gk;

    .line 34
    .line 35
    invoke-interface {v1}, Latak/core/Gk;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :catchall_1
    move-exception v1

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    move-object v0, v1

    .line 43
    :cond_2
    :goto_2
    const/4 v1, 0x1

    .line 44
    iput-boolean v1, p0, Latak/core/Hg;->Q:Z

    .line 45
    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    throw v0
.end method

.method public f0([B)Latak/core/I1;
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Latak/core/Hg;->Q:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Latak/core/G1;->k1([B)Latak/core/G1;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Latak/core/Hg;->I()Latak/core/I1;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "closed"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public flush()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Latak/core/Hg;->Q:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 6
    .line 7
    invoke-virtual {v0}, Latak/core/G1;->size()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Latak/core/Hg;->O:Latak/core/Gk;

    .line 18
    .line 19
    iget-object v1, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 20
    .line 21
    invoke-virtual {v1}, Latak/core/G1;->size()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-interface {v0, v1, v2, v3}, Latak/core/Gk;->write(Latak/core/G1;J)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Latak/core/Hg;->O:Latak/core/Gk;

    .line 29
    .line 30
    invoke-interface {v0}, Latak/core/Gk;->flush()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string v1, "closed"

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0
.end method

.method public h0(Latak/core/Pk;)J
    .locals 6
    .param p1    # Latak/core/Pk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    :goto_0
    iget-object v2, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 9
    .line 10
    const/16 v3, 0x2000

    .line 11
    .line 12
    int-to-long v3, v3

    .line 13
    invoke-interface {p1, v2, v3, v4}, Latak/core/Pk;->read(Latak/core/G1;J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    const-wide/16 v4, -0x1

    .line 18
    .line 19
    cmp-long v4, v2, v4

    .line 20
    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    return-wide v0

    .line 24
    :cond_0
    add-long/2addr v0, v2

    .line 25
    invoke-virtual {p0}, Latak/core/Hg;->I()Latak/core/I1;

    .line 26
    .line 27
    .line 28
    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Latak/core/Hg;->Q:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public n0(Ljava/lang/String;IILjava/nio/charset/Charset;)Latak/core/I1;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "string"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "charset"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Latak/core/Hg;->Q:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2, p3, p4}, Latak/core/G1;->v1(Ljava/lang/String;IILjava/nio/charset/Charset;)Latak/core/G1;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Latak/core/Hg;->I()Latak/core/I1;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string p2, "closed"

    .line 28
    .line 29
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method public o0(J)Latak/core/I1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Latak/core/Hg;->Q:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Latak/core/G1;->r1(J)Latak/core/G1;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Latak/core/Hg;->I()Latak/core/I1;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string p2, "closed"

    .line 18
    .line 19
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public q0(J)Latak/core/I1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Latak/core/Hg;->Q:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Latak/core/G1;->n1(J)Latak/core/G1;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Latak/core/Hg;->I()Latak/core/I1;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string p2, "closed"

    .line 18
    .line 19
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public r0()Ljava/io/OutputStream;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Latak/core/Hg$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Latak/core/Hg$a;-><init>(Latak/core/Hg;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public t()Latak/core/G1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 2
    .line 3
    return-object v0
.end method

.method public timeout()Latak/core/Fm;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Latak/core/Hg;->O:Latak/core/Gk;

    .line 2
    .line 3
    invoke-interface {v0}, Latak/core/Gk;->timeout()Latak/core/Fm;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "buffer("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Latak/core/Hg;->O:Latak/core/Gk;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x29

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public u()Latak/core/G1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 2
    .line 3
    return-object v0
.end method

.method public v()Latak/core/I1;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Latak/core/Hg;->Q:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 6
    .line 7
    invoke-virtual {v0}, Latak/core/G1;->size()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v2, v0, v2

    .line 14
    .line 15
    if-lez v2, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Latak/core/Hg;->O:Latak/core/Gk;

    .line 18
    .line 19
    iget-object v3, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 20
    .line 21
    invoke-interface {v2, v3, v0, v1}, Latak/core/Gk;->write(Latak/core/G1;J)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-object p0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v1, "closed"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public w(I)Latak/core/I1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Latak/core/Hg;->Q:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Latak/core/G1;->t1(I)Latak/core/G1;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Latak/core/Hg;->I()Latak/core/I1;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v0, "closed"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p0, Latak/core/Hg;->Q:Z

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 8
    invoke-virtual {v0, p1}, Latak/core/G1;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 9
    invoke-virtual {p0}, Latak/core/Hg;->I()Latak/core/I1;

    return p1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Latak/core/G1;J)V
    .locals 1
    .param p1    # Latak/core/G1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Latak/core/Hg;->Q:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Latak/core/G1;->write(Latak/core/G1;J)V

    .line 4
    invoke-virtual {p0}, Latak/core/Hg;->I()Latak/core/I1;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x(I)Latak/core/I1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Latak/core/Hg;->Q:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Latak/core/G1;->C1(I)Latak/core/G1;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Latak/core/Hg;->I()Latak/core/I1;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v0, "closed"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public y(I)Latak/core/I1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Latak/core/Hg;->Q:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Latak/core/G1;->p1(I)Latak/core/G1;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Latak/core/Hg;->I()Latak/core/I1;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v0, "closed"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public z(J)Latak/core/I1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Latak/core/Hg;->Q:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Latak/core/Hg;->P:Latak/core/G1;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Latak/core/G1;->s1(J)Latak/core/G1;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Latak/core/Hg;->I()Latak/core/I1;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string p2, "closed"

    .line 18
    .line 19
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method
