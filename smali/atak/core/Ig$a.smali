.class public final Latak/core/Ig$a;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latak/core/Ig;->v0()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealBufferedSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealBufferedSource.kt\nokio/RealBufferedSource$inputStream$1\n+ 2 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 3 -Util.kt\nokio/-Util\n*L\n1#1,469:1\n32#2:470\n32#2:471\n32#2:472\n32#2:474\n32#2:475\n32#2:476\n32#2:477\n63#3:473\n72#3:478\n*E\n*S KotlinDebug\n*F\n+ 1 RealBufferedSource.kt\nokio/RealBufferedSource$inputStream$1\n*L\n426#1:470\n427#1:471\n430#1:472\n437#1:474\n438#1:475\n442#1:476\n447#1:477\n430#1:473\n447#1:478\n*E\n"
.end annotation


# instance fields
.field final synthetic O:Latak/core/Ig;


# direct methods
.method constructor <init>(Latak/core/Ig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Latak/core/Ig$a;->O:Latak/core/Ig;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4

    .line 1
    iget-object v0, p0, Latak/core/Ig$a;->O:Latak/core/Ig;

    .line 2
    .line 3
    iget-boolean v1, v0, Latak/core/Ig;->Q:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Latak/core/Ig;->P:Latak/core/G1;

    .line 8
    .line 9
    invoke-virtual {v0}, Latak/core/G1;->size()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const v2, 0x7fffffff

    .line 14
    .line 15
    .line 16
    int-to-long v2, v2

    .line 17
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    long-to-int v0, v0

    .line 22
    return v0

    .line 23
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 24
    .line 25
    const-string v1, "closed"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Latak/core/Ig$a;->O:Latak/core/Ig;

    .line 2
    .line 3
    invoke-virtual {v0}, Latak/core/Ig;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public read()I
    .locals 4

    .line 1
    iget-object v0, p0, Latak/core/Ig$a;->O:Latak/core/Ig;

    iget-boolean v1, v0, Latak/core/Ig;->Q:Z

    if-nez v1, :cond_1

    .line 2
    iget-object v0, v0, Latak/core/Ig;->P:Latak/core/G1;

    invoke-virtual {v0}, Latak/core/G1;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Latak/core/Ig$a;->O:Latak/core/Ig;

    iget-object v1, v0, Latak/core/Ig;->O:Latak/core/Pk;

    .line 4
    iget-object v0, v0, Latak/core/Ig;->P:Latak/core/G1;

    const/16 v2, 0x2000

    int-to-long v2, v2

    .line 5
    invoke-interface {v1, v0, v2, v3}, Latak/core/Pk;->read(Latak/core/G1;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Latak/core/Ig$a;->O:Latak/core/Ig;

    .line 7
    iget-object v0, v0, Latak/core/Ig;->P:Latak/core/G1;

    .line 8
    invoke-virtual {v0}, Latak/core/G1;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 9
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 7
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Latak/core/Ig$a;->O:Latak/core/Ig;

    iget-boolean v0, v0, Latak/core/Ig;->Q:Z

    if-nez v0, :cond_1

    .line 11
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Latakplugin/atos/c;->e(JJJ)V

    .line 12
    iget-object v0, p0, Latak/core/Ig$a;->O:Latak/core/Ig;

    .line 13
    iget-object v0, v0, Latak/core/Ig;->P:Latak/core/G1;

    invoke-virtual {v0}, Latak/core/G1;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Latak/core/Ig$a;->O:Latak/core/Ig;

    iget-object v1, v0, Latak/core/Ig;->O:Latak/core/Pk;

    .line 15
    iget-object v0, v0, Latak/core/Ig;->P:Latak/core/G1;

    const/16 v2, 0x2000

    int-to-long v2, v2

    .line 16
    invoke-interface {v1, v0, v2, v3}, Latak/core/Pk;->read(Latak/core/G1;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 17
    :cond_0
    iget-object v0, p0, Latak/core/Ig$a;->O:Latak/core/Ig;

    .line 18
    iget-object v0, v0, Latak/core/Ig;->P:Latak/core/G1;

    .line 19
    invoke-virtual {v0, p1, p2, p3}, Latak/core/G1;->read([BII)I

    move-result p1

    return p1

    .line 20
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
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
    iget-object v1, p0, Latak/core/Ig$a;->O:Latak/core/Ig;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ".inputStream()"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method
