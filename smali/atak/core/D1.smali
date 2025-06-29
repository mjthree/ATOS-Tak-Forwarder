.class final Latak/core/D1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Latak/core/Gk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public timeout()Latak/core/Fm;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Latak/core/Fm;->NONE:Latak/core/Fm;

    .line 2
    .line 3
    return-object v0
.end method

.method public write(Latak/core/G1;J)V
    .locals 1
    .param p1    # Latak/core/G1;
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
    invoke-virtual {p1, p2, p3}, Latak/core/G1;->skip(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
