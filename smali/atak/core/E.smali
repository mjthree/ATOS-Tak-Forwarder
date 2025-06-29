.class public final Latak/core/E;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/JvmName;
    name = "-GzipSinkExtensions"
.end annotation


# direct methods
.method public static final a(Latak/core/Gk;)Latak/core/i6;
    .locals 1
    .param p0    # Latak/core/Gk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$receiver"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Latak/core/i6;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Latak/core/i6;-><init>(Latak/core/Gk;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
