.class public final Latak/core/Hg$a;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latak/core/Hg;->r0()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealBufferedSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealBufferedSink.kt\nokio/RealBufferedSink$outputStream$1\n+ 2 RealBufferedSink.kt\nokio/RealBufferedSink\n*L\n1#1,258:1\n32#2:259\n32#2:260\n*E\n*S KotlinDebug\n*F\n+ 1 RealBufferedSink.kt\nokio/RealBufferedSink$outputStream$1\n*L\n196#1:259\n202#1:260\n*E\n"
.end annotation


# instance fields
.field final synthetic O:Latak/core/Hg;


# direct methods
.method constructor <init>(Latak/core/Hg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Latak/core/Hg$a;->O:Latak/core/Hg;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Latak/core/Hg$a;->O:Latak/core/Hg;

    .line 2
    .line 3
    invoke-virtual {v0}, Latak/core/Hg;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public flush()V
    .locals 2

    .line 1
    iget-object v0, p0, Latak/core/Hg$a;->O:Latak/core/Hg;

    .line 2
    .line 3
    iget-boolean v1, v0, Latak/core/Hg;->Q:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Latak/core/Hg;->flush()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
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
    iget-object v1, p0, Latak/core/Hg$a;->O:Latak/core/Hg;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ".outputStream()"

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

.method public write(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Latak/core/Hg$a;->O:Latak/core/Hg;

    iget-boolean v1, v0, Latak/core/Hg;->Q:Z

    if-nez v1, :cond_0

    .line 2
    iget-object v0, v0, Latak/core/Hg;->P:Latak/core/G1;

    int-to-byte p1, p1

    .line 3
    invoke-virtual {v0, p1}, Latak/core/G1;->m1(I)Latak/core/G1;

    .line 4
    iget-object p1, p0, Latak/core/Hg$a;->O:Latak/core/Hg;

    invoke-virtual {p1}, Latak/core/Hg;->I()Latak/core/I1;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)V
    .locals 2
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Latak/core/Hg$a;->O:Latak/core/Hg;

    iget-boolean v1, v0, Latak/core/Hg;->Q:Z

    if-nez v1, :cond_0

    .line 7
    iget-object v0, v0, Latak/core/Hg;->P:Latak/core/G1;

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Latak/core/G1;->l1([BII)Latak/core/G1;

    .line 9
    iget-object p1, p0, Latak/core/Hg$a;->O:Latak/core/Hg;

    invoke-virtual {p1}, Latak/core/Hg;->I()Latak/core/I1;

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
