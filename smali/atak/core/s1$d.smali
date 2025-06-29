.class public final Latak/core/s1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Latak/core/Pk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latak/core/s1;->source(Latak/core/Pk;)Latak/core/Pk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic O:Latak/core/s1;

.field final synthetic P:Latak/core/Pk;


# direct methods
.method constructor <init>(Latak/core/s1;Latak/core/Pk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Latak/core/Pk;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Latak/core/s1$d;->O:Latak/core/s1;

    .line 2
    .line 3
    iput-object p2, p0, Latak/core/s1$d;->P:Latak/core/Pk;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Latak/core/s1$d;->P:Latak/core/Pk;

    .line 2
    .line 3
    invoke-interface {v0}, Latak/core/Pk;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iget-object v1, p0, Latak/core/s1$d;->O:Latak/core/s1;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Latak/core/s1;->c(Z)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    :try_start_1
    iget-object v1, p0, Latak/core/s1$d;->O:Latak/core/s1;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Latak/core/s1;->b(Ljava/io/IOException;)Ljava/io/IOException;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :goto_0
    iget-object v1, p0, Latak/core/s1$d;->O:Latak/core/s1;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v1, v2}, Latak/core/s1;->c(Z)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method public read(Latak/core/G1;J)J
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
    iget-object v0, p0, Latak/core/s1$d;->O:Latak/core/s1;

    .line 7
    .line 8
    invoke-virtual {v0}, Latak/core/s1;->enter()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Latak/core/s1$d;->P:Latak/core/Pk;

    .line 12
    .line 13
    invoke-interface {v0, p1, p2, p3}, Latak/core/Pk;->read(Latak/core/G1;J)J

    .line 14
    .line 15
    .line 16
    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    const/4 p3, 0x1

    .line 18
    iget-object v0, p0, Latak/core/s1$d;->O:Latak/core/s1;

    .line 19
    .line 20
    invoke-virtual {v0, p3}, Latak/core/s1;->c(Z)V

    .line 21
    .line 22
    .line 23
    return-wide p1

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    :try_start_1
    iget-object p2, p0, Latak/core/s1$d;->O:Latak/core/s1;

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Latak/core/s1;->b(Ljava/io/IOException;)Ljava/io/IOException;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :goto_0
    iget-object p2, p0, Latak/core/s1$d;->O:Latak/core/s1;

    .line 35
    .line 36
    const/4 p3, 0x0

    .line 37
    invoke-virtual {p2, p3}, Latak/core/s1;->c(Z)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public s()Latak/core/s1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Latak/core/s1$d;->O:Latak/core/s1;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic timeout()Latak/core/Fm;
    .locals 1

    .line 1
    invoke-virtual {p0}, Latak/core/s1$d;->s()Latak/core/s1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
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
    const-string v1, "AsyncTimeout.source("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Latak/core/s1$d;->P:Latak/core/Pk;

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
