.class public final Latak/core/Ig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Latak/core/J1;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealBufferedSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 2 -Util.kt\nokio/-Util\n*L\n1#1,469:1\n32#1:470\n32#1:471\n32#1:472\n32#1:473\n32#1:474\n32#1:475\n32#1:476\n32#1:477\n32#1:478\n32#1:479\n32#1:480\n32#1:481\n32#1:482\n32#1:483\n32#1:484\n32#1:485\n32#1:486\n32#1:487\n32#1:488\n32#1:489\n32#1:490\n32#1:491\n32#1:492\n32#1:493\n32#1:494\n32#1:496\n32#1:497\n32#1:498\n32#1:499\n32#1:500\n32#1:501\n32#1:502\n32#1:503\n32#1:504\n32#1:505\n32#1:506\n32#1:507\n32#1:508\n32#1:509\n32#1:510\n32#1:511\n32#1:512\n32#1:513\n32#1:514\n32#1:515\n32#1:516\n32#1:517\n32#1:518\n32#1:519\n32#1:520\n32#1:521\n32#1:522\n32#1:523\n32#1:525\n32#1:526\n32#1:527\n32#1:528\n32#1:529\n32#1:530\n32#1:531\n32#1:532\n32#1:533\n32#1:534\n32#1:535\n32#1:536\n32#1:537\n32#1:538\n32#1:539\n32#1:540\n32#1:541\n32#1:542\n32#1:543\n32#1:544\n32#1:545\n32#1:546\n32#1:547\n32#1:548\n32#1:549\n32#1:550\n32#1:551\n32#1:552\n75#2:495\n75#2:524\n*E\n*S KotlinDebug\n*F\n+ 1 RealBufferedSource.kt\nokio/RealBufferedSource\n*L\n40#1:470\n41#1:471\n45#1:472\n46#1:473\n51#1:474\n51#1:475\n61#1:476\n62#1:477\n69#1:478\n73#1:479\n74#1:480\n79#1:481\n86#1:482\n93#1:483\n98#1:484\n106#1:485\n107#1:486\n112#1:487\n123#1:488\n124#1:489\n124#1:490\n131#1:491\n137#1:492\n138#1:493\n142#1:494\n143#1:496\n147#1:497\n148#1:498\n152#1:499\n160#1:500\n164#1:501\n169#1:502\n170#1:503\n173#1:504\n176#1:505\n177#1:506\n178#1:507\n178#1:508\n184#1:509\n185#1:510\n190#1:511\n194#1:512\n195#1:513\n200#1:514\n207#1:515\n208#1:516\n213#1:517\n223#1:518\n225#1:519\n226#1:520\n227#1:521\n230#1:522\n230#1:523\n231#1:525\n238#1:526\n245#1:527\n250#1:528\n255#1:529\n260#1:530\n265#1:531\n270#1:532\n275#1:533\n283#1:534\n295#1:535\n303#1:536\n317#1:537\n324#1:538\n324#1:539\n327#1:540\n328#1:541\n343#1:542\n348#1:543\n349#1:544\n364#1:545\n367#1:546\n368#1:547\n382#1:548\n385#1:549\n386#1:550\n413#1:551\n462#1:552\n142#1:495\n230#1:524\n*E\n"
.end annotation


# instance fields
.field public final O:Latak/core/Pk;
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
.method public constructor <init>(Latak/core/Pk;)V
    .locals 1
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Latak/core/Ig;->O:Latak/core/Pk;

    .line 10
    .line 11
    new-instance p1, Latak/core/G1;

    .line 12
    .line 13
    invoke-direct {p1}, Latak/core/G1;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Latak/core/Ig;->P:Latak/core/G1;

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
.method public A()[B
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 2
    .line 3
    iget-object v1, p0, Latak/core/Ig;->O:Latak/core/Pk;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Latak/core/G1;->h0(Latak/core/Pk;)J

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 9
    .line 10
    invoke-virtual {v0}, Latak/core/G1;->A()[B

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public C()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Latak/core/Ig;->Q:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 6
    .line 7
    invoke-virtual {v0}, Latak/core/G1;->C()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Latak/core/Ig;->O:Latak/core/Pk;

    .line 14
    .line 15
    iget-object v1, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 16
    .line 17
    const/16 v2, 0x2000

    .line 18
    .line 19
    int-to-long v2, v2

    .line 20
    invoke-interface {v0, v1, v2, v3}, Latak/core/Pk;->read(Latak/core/G1;J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    const-wide/16 v2, -0x1

    .line 25
    .line 26
    cmp-long v0, v0, v2

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0

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

.method public E(Latak/core/Gk;)J
    .locals 8
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
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    move-wide v2, v0

    .line 9
    :cond_0
    :goto_0
    iget-object v4, p0, Latak/core/Ig;->O:Latak/core/Pk;

    .line 10
    .line 11
    iget-object v5, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 12
    .line 13
    const/16 v6, 0x2000

    .line 14
    .line 15
    int-to-long v6, v6

    .line 16
    invoke-interface {v4, v5, v6, v7}, Latak/core/Pk;->read(Latak/core/G1;J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    const-wide/16 v6, -0x1

    .line 21
    .line 22
    cmp-long v4, v4, v6

    .line 23
    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    iget-object v4, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 27
    .line 28
    invoke-virtual {v4}, Latak/core/G1;->y0()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    cmp-long v6, v4, v0

    .line 33
    .line 34
    if-lez v6, :cond_0

    .line 35
    .line 36
    add-long/2addr v2, v4

    .line 37
    iget-object v6, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 38
    .line 39
    invoke-interface {p1, v6, v4, v5}, Latak/core/Gk;->write(Latak/core/G1;J)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v4, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 44
    .line 45
    invoke-virtual {v4}, Latak/core/G1;->size()J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    cmp-long v0, v4, v0

    .line 50
    .line 51
    if-lez v0, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 54
    .line 55
    invoke-virtual {v0}, Latak/core/G1;->size()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    add-long/2addr v2, v0

    .line 60
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 61
    .line 62
    invoke-virtual {v0}, Latak/core/G1;->size()J

    .line 63
    .line 64
    .line 65
    move-result-wide v4

    .line 66
    invoke-interface {p1, v0, v4, v5}, Latak/core/Gk;->write(Latak/core/G1;J)V

    .line 67
    .line 68
    .line 69
    :cond_2
    return-wide v2
.end method

.method public F(BJ)J
    .locals 6

    .line 1
    const-wide v4, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move v1, p1

    .line 8
    move-wide v2, p2

    .line 9
    invoke-virtual/range {v0 .. v5}, Latak/core/Ig;->G(BJJ)J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    return-wide p1
.end method

.method public G(BJJ)J
    .locals 9

    .line 1
    iget-boolean v0, p0, Latak/core/Ig;->Q:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, p2

    .line 8
    .line 9
    if-gtz v0, :cond_3

    .line 10
    .line 11
    cmp-long v0, p4, p2

    .line 12
    .line 13
    if-ltz v0, :cond_3

    .line 14
    .line 15
    :goto_0
    cmp-long v0, p2, p4

    .line 16
    .line 17
    const-wide/16 v7, -0x1

    .line 18
    .line 19
    if-gez v0, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 22
    .line 23
    move v2, p1

    .line 24
    move-wide v3, p2

    .line 25
    move-wide v5, p4

    .line 26
    invoke-virtual/range {v1 .. v6}, Latak/core/G1;->G(BJJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    cmp-long v2, v0, v7

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    return-wide v0

    .line 35
    :cond_0
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 36
    .line 37
    invoke-virtual {v0}, Latak/core/G1;->size()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    cmp-long v2, v0, p4

    .line 42
    .line 43
    if-gez v2, :cond_2

    .line 44
    .line 45
    iget-object v2, p0, Latak/core/Ig;->O:Latak/core/Pk;

    .line 46
    .line 47
    iget-object v3, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 48
    .line 49
    const/16 v4, 0x2000

    .line 50
    .line 51
    int-to-long v4, v4

    .line 52
    invoke-interface {v2, v3, v4, v5}, Latak/core/Pk;->read(Latak/core/G1;J)J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    cmp-long v2, v2, v7

    .line 57
    .line 58
    if-nez v2, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 62
    .line 63
    .line 64
    move-result-wide p2

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    :goto_1
    return-wide v7

    .line 67
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v0, "fromIndex="

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p2, " toIndex="

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p2

    .line 102
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 103
    .line 104
    const-string p2, "closed"

    .line 105
    .line 106
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1
.end method

.method public H()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    invoke-virtual {p0, v0}, Latak/core/Ig;->s0(B)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const-wide/16 v2, -0x1

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 15
    .line 16
    invoke-virtual {v0}, Latak/core/G1;->size()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    cmp-long v0, v0, v2

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 27
    .line 28
    invoke-virtual {v0}, Latak/core/G1;->size()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    invoke-virtual {p0, v0, v1}, Latak/core/Ig;->b(J)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v2, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 40
    .line 41
    invoke-virtual {v2, v0, v1}, Latak/core/G1;->e(J)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :goto_0
    return-object v0
.end method

.method public J()J
    .locals 10

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Latak/core/Ig;->p0(J)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    move-wide v4, v2

    .line 9
    :goto_0
    add-long v6, v4, v0

    .line 10
    .line 11
    invoke-virtual {p0, v6, v7}, Latak/core/Ig;->Y(J)Z

    .line 12
    .line 13
    .line 14
    move-result v8

    .line 15
    if-eqz v8, :cond_4

    .line 16
    .line 17
    iget-object v8, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 18
    .line 19
    invoke-virtual {v8, v4, v5}, Latak/core/G1;->L0(J)B

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    const/16 v9, 0x30

    .line 24
    .line 25
    int-to-byte v9, v9

    .line 26
    if-lt v8, v9, :cond_0

    .line 27
    .line 28
    const/16 v9, 0x39

    .line 29
    .line 30
    int-to-byte v9, v9

    .line 31
    if-le v8, v9, :cond_1

    .line 32
    .line 33
    :cond_0
    cmp-long v4, v4, v2

    .line 34
    .line 35
    if-nez v4, :cond_2

    .line 36
    .line 37
    const/16 v5, 0x2d

    .line 38
    .line 39
    int-to-byte v5, v5

    .line 40
    if-eq v8, v5, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move-wide v4, v6

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 49
    .line 50
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 51
    .line 52
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/4 v2, 0x1

    .line 61
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, "Expected leading [0-9] or \'-\' character but was %#x"

    .line 66
    .line 67
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v2, "java.lang.String.format(format, *args)"

    .line 72
    .line 73
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :cond_4
    :goto_2
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 81
    .line 82
    invoke-virtual {v0}, Latak/core/G1;->J()J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    return-wide v0
.end method

.method public K(J)Ljava/lang/String;
    .locals 13
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_3

    .line 6
    .line 7
    const-wide v0, 0x7fffffffffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long v2, p1, v0

    .line 13
    .line 14
    const-wide/16 v3, 0x1

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    move-wide v5, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    add-long v5, p1, v3

    .line 21
    .line 22
    :goto_0
    const/16 v2, 0xa

    .line 23
    .line 24
    int-to-byte v2, v2

    .line 25
    const-wide/16 v9, 0x0

    .line 26
    .line 27
    move-object v7, p0

    .line 28
    move v8, v2

    .line 29
    move-wide v11, v5

    .line 30
    invoke-virtual/range {v7 .. v12}, Latak/core/Ig;->G(BJJ)J

    .line 31
    .line 32
    .line 33
    move-result-wide v7

    .line 34
    const-wide/16 v9, -0x1

    .line 35
    .line 36
    cmp-long v9, v7, v9

    .line 37
    .line 38
    if-eqz v9, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 41
    .line 42
    invoke-virtual {p1, v7, v8}, Latak/core/G1;->e(J)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :cond_1
    cmp-long v0, v5, v0

    .line 48
    .line 49
    if-gez v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0, v5, v6}, Latak/core/Ig;->Y(J)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 58
    .line 59
    sub-long v7, v5, v3

    .line 60
    .line 61
    invoke-virtual {v0, v7, v8}, Latak/core/G1;->L0(J)B

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/16 v1, 0xd

    .line 66
    .line 67
    int-to-byte v1, v1

    .line 68
    if-ne v0, v1, :cond_2

    .line 69
    .line 70
    add-long/2addr v3, v5

    .line 71
    invoke-virtual {p0, v3, v4}, Latak/core/Ig;->Y(J)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 78
    .line 79
    invoke-virtual {v0, v5, v6}, Latak/core/G1;->L0(J)B

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-ne v0, v2, :cond_2

    .line 84
    .line 85
    iget-object p1, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 86
    .line 87
    invoke-virtual {p1, v5, v6}, Latak/core/G1;->e(J)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    return-object p1

    .line 92
    :cond_2
    new-instance v6, Latak/core/G1;

    .line 93
    .line 94
    invoke-direct {v6}, Latak/core/G1;-><init>()V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 98
    .line 99
    invoke-virtual {v0}, Latak/core/G1;->size()J

    .line 100
    .line 101
    .line 102
    move-result-wide v1

    .line 103
    const/16 v3, 0x20

    .line 104
    .line 105
    int-to-long v3, v3

    .line 106
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 107
    .line 108
    .line 109
    move-result-wide v4

    .line 110
    const-wide/16 v2, 0x0

    .line 111
    .line 112
    move-object v1, v6

    .line 113
    invoke-virtual/range {v0 .. v5}, Latak/core/G1;->B0(Latak/core/G1;JJ)Latak/core/G1;

    .line 114
    .line 115
    .line 116
    new-instance v0, Ljava/io/EOFException;

    .line 117
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v2, "\\n not found: limit="

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v2, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 129
    .line 130
    invoke-virtual {v2}, Latak/core/G1;->size()J

    .line 131
    .line 132
    .line 133
    move-result-wide v2

    .line 134
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 135
    .line 136
    .line 137
    move-result-wide p1

    .line 138
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string p1, " content="

    .line 142
    .line 143
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6}, Latak/core/G1;->W()Latak/core/M1;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Latak/core/M1;->x()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string p1, "\u2026"

    .line 158
    .line 159
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw v0

    .line 170
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v1, "limit < 0: "

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw p2
.end method

.method public L(JLatak/core/M1;II)Z
    .locals 6
    .param p3    # Latak/core/M1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bytes"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Latak/core/Ig;->Q:Z

    .line 7
    .line 8
    if-nez v0, :cond_5

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    cmp-long v0, p1, v0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-ltz v0, :cond_4

    .line 16
    .line 17
    if-ltz p4, :cond_4

    .line 18
    .line 19
    if-ltz p5, :cond_4

    .line 20
    .line 21
    invoke-virtual {p3}, Latak/core/M1;->c0()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sub-int/2addr v0, p4

    .line 26
    if-ge v0, p5, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    move v0, v1

    .line 30
    :goto_0
    if-ge v0, p5, :cond_3

    .line 31
    .line 32
    int-to-long v2, v0

    .line 33
    add-long/2addr v2, p1

    .line 34
    const-wide/16 v4, 0x1

    .line 35
    .line 36
    add-long/2addr v4, v2

    .line 37
    invoke-virtual {p0, v4, v5}, Latak/core/Ig;->Y(J)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_1

    .line 42
    .line 43
    return v1

    .line 44
    :cond_1
    iget-object v4, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 45
    .line 46
    invoke-virtual {v4, v2, v3}, Latak/core/G1;->L0(J)B

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    add-int v3, p4, v0

    .line 51
    .line 52
    invoke-virtual {p3, v3}, Latak/core/M1;->s(I)B

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eq v2, v3, :cond_2

    .line 57
    .line 58
    return v1

    .line 59
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const/4 p1, 0x1

    .line 63
    return p1

    .line 64
    :cond_4
    :goto_1
    return v1

    .line 65
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string p2, "closed"

    .line 68
    .line 69
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1
.end method

.method public M(Latak/core/M1;)J
    .locals 2
    .param p1    # Latak/core/M1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bytes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0, v1}, Latak/core/Ig;->l0(Latak/core/M1;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public P(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
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
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 7
    .line 8
    iget-object v1, p0, Latak/core/Ig;->O:Latak/core/Pk;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Latak/core/G1;->h0(Latak/core/Pk;)J

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Latak/core/G1;->P(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public R()I
    .locals 3

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Latak/core/Ig;->p0(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Latak/core/G1;->L0(J)B

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    and-int/lit16 v1, v0, 0xe0

    .line 15
    .line 16
    const/16 v2, 0xc0

    .line 17
    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    const-wide/16 v0, 0x2

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Latak/core/Ig;->p0(J)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    and-int/lit16 v1, v0, 0xf0

    .line 27
    .line 28
    const/16 v2, 0xe0

    .line 29
    .line 30
    if-ne v1, v2, :cond_1

    .line 31
    .line 32
    const-wide/16 v0, 0x3

    .line 33
    .line 34
    invoke-virtual {p0, v0, v1}, Latak/core/Ig;->p0(J)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    and-int/lit16 v0, v0, 0xf8

    .line 39
    .line 40
    const/16 v1, 0xf0

    .line 41
    .line 42
    if-ne v0, v1, :cond_2

    .line 43
    .line 44
    const-wide/16 v0, 0x4

    .line 45
    .line 46
    invoke-virtual {p0, v0, v1}, Latak/core/Ig;->p0(J)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 50
    .line 51
    invoke-virtual {v0}, Latak/core/G1;->R()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    return v0
.end method

.method public W()Latak/core/M1;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 2
    .line 3
    iget-object v1, p0, Latak/core/Ig;->O:Latak/core/Pk;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Latak/core/G1;->h0(Latak/core/Pk;)J

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 9
    .line 10
    invoke-virtual {v0}, Latak/core/G1;->W()Latak/core/M1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public Y(J)Z
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_3

    .line 6
    .line 7
    iget-boolean v0, p0, Latak/core/Ig;->Q:Z

    .line 8
    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 12
    .line 13
    invoke-virtual {v0}, Latak/core/G1;->size()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    cmp-long v0, v0, p1

    .line 18
    .line 19
    if-gez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Latak/core/Ig;->O:Latak/core/Pk;

    .line 22
    .line 23
    iget-object v1, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 24
    .line 25
    const/16 v2, 0x2000

    .line 26
    .line 27
    int-to-long v2, v2

    .line 28
    invoke-interface {v0, v1, v2, v3}, Latak/core/Pk;->read(Latak/core/G1;J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    const-wide/16 v2, -0x1

    .line 33
    .line 34
    cmp-long v0, v0, v2

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    return p1

    .line 40
    :cond_1
    const/4 p1, 0x1

    .line 41
    return p1

    .line 42
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p2, "closed"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v1, "byteCount < 0: "

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p2
.end method

.method public a0(Latak/core/M1;J)J
    .locals 8
    .param p1    # Latak/core/M1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "targetBytes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Latak/core/Ig;->Q:Z

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    :goto_0
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, p3}, Latak/core/G1;->a0(Latak/core/M1;J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    const-wide/16 v2, -0x1

    .line 17
    .line 18
    cmp-long v4, v0, v2

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    return-wide v0

    .line 23
    :cond_0
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 24
    .line 25
    invoke-virtual {v0}, Latak/core/G1;->size()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iget-object v4, p0, Latak/core/Ig;->O:Latak/core/Pk;

    .line 30
    .line 31
    iget-object v5, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 32
    .line 33
    const/16 v6, 0x2000

    .line 34
    .line 35
    int-to-long v6, v6

    .line 36
    invoke-interface {v4, v5, v6, v7}, Latak/core/Pk;->read(Latak/core/G1;J)J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    cmp-long v4, v4, v2

    .line 41
    .line 42
    if-nez v4, :cond_1

    .line 43
    .line 44
    return-wide v2

    .line 45
    :cond_1
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 46
    .line 47
    .line 48
    move-result-wide p2

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p2, "closed"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method public b(J)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Latak/core/Ig;->p0(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Latak/core/G1;->b(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public b0()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Latak/core/Ig;->K(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public c(J)Latak/core/M1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Latak/core/Ig;->p0(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Latak/core/G1;->c(J)Latak/core/M1;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public c0()I
    .locals 2

    .line 1
    const-wide/16 v0, 0x4

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Latak/core/Ig;->p0(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 7
    .line 8
    invoke-virtual {v0}, Latak/core/G1;->c0()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Latak/core/Ig;->Q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Latak/core/Ig;->Q:Z

    .line 8
    .line 9
    iget-object v0, p0, Latak/core/Ig;->O:Latak/core/Pk;

    .line 10
    .line 11
    invoke-interface {v0}, Latak/core/Pk;->close()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 15
    .line 16
    invoke-virtual {v0}, Latak/core/G1;->w0()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public d(Latak/core/G1;J)V
    .locals 1
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
    :try_start_0
    invoke-virtual {p0, p2, p3}, Latak/core/Ig;->p0(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Latak/core/G1;->d(Latak/core/G1;J)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p2

    .line 16
    iget-object p3, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 17
    .line 18
    invoke-virtual {p1, p3}, Latak/core/G1;->h0(Latak/core/Pk;)J

    .line 19
    .line 20
    .line 21
    throw p2
.end method

.method public d0(J)[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Latak/core/Ig;->p0(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Latak/core/G1;->d0(J)[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public e0()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 2
    .line 3
    iget-object v1, p0, Latak/core/Ig;->O:Latak/core/Pk;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Latak/core/G1;->h0(Latak/core/Pk;)J

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 9
    .line 10
    invoke-virtual {v0}, Latak/core/G1;->e0()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public g0(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p3    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "charset"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Latak/core/Ig;->p0(J)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Latak/core/G1;->g0(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public i0()S
    .locals 2

    .line 1
    const-wide/16 v0, 0x2

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Latak/core/Ig;->p0(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 7
    .line 8
    invoke-virtual {v0}, Latak/core/G1;->i0()S

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Latak/core/Ig;->Q:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public j0(Latak/core/W9;)I
    .locals 5
    .param p1    # Latak/core/W9;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "options"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Latak/core/Ig;->Q:Z

    .line 7
    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, p1, v1}, Latak/core/G1;->g(Latak/core/W9;Z)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, -0x2

    .line 18
    const/4 v2, -0x1

    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    if-eq v0, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Latak/core/W9;->a()[Latak/core/M1;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    aget-object p1, p1, v0

    .line 28
    .line 29
    invoke-virtual {p1}, Latak/core/M1;->c0()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iget-object v1, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 34
    .line 35
    int-to-long v2, p1

    .line 36
    invoke-virtual {v1, v2, v3}, Latak/core/G1;->skip(J)V

    .line 37
    .line 38
    .line 39
    return v0

    .line 40
    :cond_1
    return v2

    .line 41
    :cond_2
    iget-object v0, p0, Latak/core/Ig;->O:Latak/core/Pk;

    .line 42
    .line 43
    iget-object v1, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 44
    .line 45
    const/16 v3, 0x2000

    .line 46
    .line 47
    int-to-long v3, v3

    .line 48
    invoke-interface {v0, v1, v3, v4}, Latak/core/Pk;->read(Latak/core/G1;J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    const-wide/16 v3, -0x1

    .line 53
    .line 54
    cmp-long v0, v0, v3

    .line 55
    .line 56
    if-nez v0, :cond_0

    .line 57
    .line 58
    return v2

    .line 59
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string v0, "closed"

    .line 62
    .line 63
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1
.end method

.method public k0()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Latak/core/Ig;->p0(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 7
    .line 8
    invoke-virtual {v0}, Latak/core/G1;->k0()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public l0(Latak/core/M1;J)J
    .locals 8
    .param p1    # Latak/core/M1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bytes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Latak/core/Ig;->Q:Z

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    :goto_0
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, p3}, Latak/core/G1;->l0(Latak/core/M1;J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    const-wide/16 v2, -0x1

    .line 17
    .line 18
    cmp-long v4, v0, v2

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    return-wide v0

    .line 23
    :cond_0
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 24
    .line 25
    invoke-virtual {v0}, Latak/core/G1;->size()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iget-object v4, p0, Latak/core/Ig;->O:Latak/core/Pk;

    .line 30
    .line 31
    iget-object v5, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 32
    .line 33
    const/16 v6, 0x2000

    .line 34
    .line 35
    int-to-long v6, v6

    .line 36
    invoke-interface {v4, v5, v6, v7}, Latak/core/Pk;->read(Latak/core/G1;J)J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    cmp-long v4, v4, v2

    .line 41
    .line 42
    if-nez v4, :cond_1

    .line 43
    .line 44
    return-wide v2

    .line 45
    :cond_1
    invoke-virtual {p1}, Latak/core/M1;->c0()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    int-to-long v2, v2

    .line 50
    sub-long/2addr v0, v2

    .line 51
    const-wide/16 v2, 0x1

    .line 52
    .line 53
    add-long/2addr v0, v2

    .line 54
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 55
    .line 56
    .line 57
    move-result-wide p2

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string p2, "closed"

    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1
.end method

.method public m0(JLatak/core/M1;)Z
    .locals 7
    .param p3    # Latak/core/M1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bytes"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Latak/core/M1;->c0()I

    .line 7
    .line 8
    .line 9
    move-result v6

    .line 10
    const/4 v5, 0x0

    .line 11
    move-object v1, p0

    .line 12
    move-wide v2, p1

    .line 13
    move-object v4, p3

    .line 14
    invoke-virtual/range {v1 .. v6}, Latak/core/Ig;->L(JLatak/core/M1;II)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public p0(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Latak/core/Ig;->Y(J)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public peek()Latak/core/J1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Latak/core/Ud;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Latak/core/Ud;-><init>(Latak/core/J1;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Latak/core/P9;->e(Latak/core/Pk;)Latak/core/J1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    invoke-virtual {v0}, Latak/core/G1;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Latak/core/Ig;->O:Latak/core/Pk;

    .line 24
    iget-object v1, p0, Latak/core/Ig;->P:Latak/core/G1;

    const/16 v2, 0x2000

    int-to-long v2, v2

    .line 25
    invoke-interface {v0, v1, v2, v3}, Latak/core/Pk;->read(Latak/core/G1;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 26
    :cond_0
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 27
    invoke-virtual {v0, p1}, Latak/core/G1;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public read([B)I
    .locals 2
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Latak/core/Ig;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 9
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Latakplugin/atos/c;->e(JJJ)V

    .line 14
    iget-object p3, p0, Latak/core/Ig;->P:Latak/core/G1;

    invoke-virtual {p3}, Latak/core/G1;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    .line 15
    iget-object p3, p0, Latak/core/Ig;->O:Latak/core/Pk;

    .line 16
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    const/16 v1, 0x2000

    int-to-long v1, v1

    .line 17
    invoke-interface {p3, v0, v1, v2}, Latak/core/Pk;->read(Latak/core/G1;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    const/4 p1, -0x1

    return p1

    .line 18
    :cond_0
    iget-object p3, p0, Latak/core/Ig;->P:Latak/core/G1;

    invoke-virtual {p3}, Latak/core/G1;->size()J

    move-result-wide v0

    .line 19
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 20
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 21
    invoke-virtual {v0, p1, p2, p3}, Latak/core/G1;->read([BII)I

    move-result p1

    return p1
.end method

.method public read(Latak/core/G1;J)J
    .locals 4
    .param p1    # Latak/core/G1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 1
    iget-boolean v2, p0, Latak/core/Ig;->Q:Z

    if-nez v2, :cond_1

    .line 2
    iget-object v2, p0, Latak/core/Ig;->P:Latak/core/G1;

    invoke-virtual {v2}, Latak/core/G1;->size()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Latak/core/Ig;->O:Latak/core/Pk;

    .line 4
    iget-object v1, p0, Latak/core/Ig;->P:Latak/core/G1;

    const/16 v2, 0x2000

    int-to-long v2, v2

    .line 5
    invoke-interface {v0, v1, v2, v3}, Latak/core/Pk;->read(Latak/core/G1;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    .line 6
    :cond_0
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    invoke-virtual {v0}, Latak/core/G1;->size()J

    move-result-wide v0

    .line 7
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 8
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Latak/core/G1;->read(Latak/core/G1;J)J

    move-result-wide p1

    return-wide p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readByte()B
    .locals 2

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Latak/core/Ig;->p0(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 7
    .line 8
    invoke-virtual {v0}, Latak/core/G1;->readByte()B

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public readFully([B)V
    .locals 6
    .param p1    # [B
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
    :try_start_0
    array-length v0, p1

    .line 7
    int-to-long v0, v0

    .line 8
    invoke-virtual {p0, v0, v1}, Latak/core/Ig;->p0(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Latak/core/G1;->readFully([B)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    iget-object v2, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 20
    .line 21
    invoke-virtual {v2}, Latak/core/G1;->size()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    const-wide/16 v4, 0x0

    .line 26
    .line 27
    cmp-long v2, v2, v4

    .line 28
    .line 29
    if-lez v2, :cond_1

    .line 30
    .line 31
    iget-object v2, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 32
    .line 33
    invoke-virtual {v2}, Latak/core/G1;->size()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    long-to-int v3, v3

    .line 38
    invoke-virtual {v2, p1, v1, v3}, Latak/core/G1;->read([BII)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/4 v3, -0x1

    .line 43
    if-eq v2, v3, :cond_0

    .line 44
    .line 45
    add-int/2addr v1, v2

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_1
    throw v0
.end method

.method public readInt()I
    .locals 2

    .line 1
    const-wide/16 v0, 0x4

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Latak/core/Ig;->p0(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 7
    .line 8
    invoke-virtual {v0}, Latak/core/G1;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public readLong()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Latak/core/Ig;->p0(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 7
    .line 8
    invoke-virtual {v0}, Latak/core/G1;->readLong()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public readShort()S
    .locals 2

    .line 1
    const-wide/16 v0, 0x2

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Latak/core/Ig;->p0(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 7
    .line 8
    invoke-virtual {v0}, Latak/core/G1;->readShort()S

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public s0(B)J
    .locals 6

    .line 1
    const-wide/16 v2, 0x0

    .line 2
    .line 3
    const-wide v4, 0x7fffffffffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move v1, p1

    .line 10
    invoke-virtual/range {v0 .. v5}, Latak/core/Ig;->G(BJJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public skip(J)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Latak/core/Ig;->Q:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    :goto_0
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v2, p1, v0

    .line 8
    .line 9
    if-lez v2, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 12
    .line 13
    invoke-virtual {v2}, Latak/core/G1;->size()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    cmp-long v0, v2, v0

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Latak/core/Ig;->O:Latak/core/Pk;

    .line 22
    .line 23
    iget-object v1, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 24
    .line 25
    const/16 v2, 0x2000

    .line 26
    .line 27
    int-to-long v2, v2

    .line 28
    invoke-interface {v0, v1, v2, v3}, Latak/core/Pk;->read(Latak/core/G1;J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    const-wide/16 v2, -0x1

    .line 33
    .line 34
    cmp-long v0, v0, v2

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_1
    :goto_1
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 46
    .line 47
    invoke-virtual {v0}, Latak/core/G1;->size()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    iget-object v2, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 56
    .line 57
    invoke-virtual {v2, v0, v1}, Latak/core/G1;->skip(J)V

    .line 58
    .line 59
    .line 60
    sub-long/2addr p1, v0

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    return-void

    .line 63
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    const-string p2, "closed"

    .line 66
    .line 67
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1
.end method

.method public t()Latak/core/G1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 2
    .line 3
    return-object v0
.end method

.method public t0()J
    .locals 5

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Latak/core/Ig;->p0(J)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 8
    .line 9
    int-to-long v2, v1

    .line 10
    invoke-virtual {p0, v2, v3}, Latak/core/Ig;->Y(J)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_5

    .line 15
    .line 16
    iget-object v2, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 17
    .line 18
    int-to-long v3, v0

    .line 19
    invoke-virtual {v2, v3, v4}, Latak/core/G1;->L0(J)B

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/16 v3, 0x30

    .line 24
    .line 25
    int-to-byte v3, v3

    .line 26
    if-lt v2, v3, :cond_0

    .line 27
    .line 28
    const/16 v3, 0x39

    .line 29
    .line 30
    int-to-byte v3, v3

    .line 31
    if-le v2, v3, :cond_2

    .line 32
    .line 33
    :cond_0
    const/16 v3, 0x61

    .line 34
    .line 35
    int-to-byte v3, v3

    .line 36
    if-lt v2, v3, :cond_1

    .line 37
    .line 38
    const/16 v3, 0x66

    .line 39
    .line 40
    int-to-byte v3, v3

    .line 41
    if-le v2, v3, :cond_2

    .line 42
    .line 43
    :cond_1
    const/16 v3, 0x41

    .line 44
    .line 45
    int-to-byte v3, v3

    .line 46
    if-lt v2, v3, :cond_3

    .line 47
    .line 48
    const/16 v3, 0x46

    .line 49
    .line 50
    int-to-byte v3, v3

    .line 51
    if-le v2, v3, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move v0, v1

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 60
    .line 61
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 62
    .line 63
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const/4 v2, 0x1

    .line 72
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string v2, "Expected leading [0-9a-fA-F] character but was %#x"

    .line 77
    .line 78
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const-string v2, "java.lang.String.format(format, *args)"

    .line 83
    .line 84
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :cond_5
    :goto_2
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 92
    .line 93
    invoke-virtual {v0}, Latak/core/G1;->t0()J

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    return-wide v0
.end method

.method public timeout()Latak/core/Fm;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Latak/core/Ig;->O:Latak/core/Pk;

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
    iget-object v1, p0, Latak/core/Ig;->O:Latak/core/Pk;

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
    iget-object v0, p0, Latak/core/Ig;->P:Latak/core/G1;

    .line 2
    .line 3
    return-object v0
.end method

.method public u0(Latak/core/M1;)J
    .locals 2
    .param p1    # Latak/core/M1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "targetBytes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0, v1}, Latak/core/Ig;->a0(Latak/core/M1;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public v0()Ljava/io/InputStream;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Latak/core/Ig$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Latak/core/Ig$a;-><init>(Latak/core/Ig;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
