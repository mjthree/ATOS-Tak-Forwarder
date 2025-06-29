.class public final Latak/core/F;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/JvmName;
    name = "-GzipSourceExtensions"
.end annotation


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2

.field private static final c:I = 0x3

.field private static final d:I = 0x4

.field private static final e:B = 0x0t

.field private static final f:B = 0x1t

.field private static final g:B = 0x2t

.field private static final h:B = 0x3t


# direct methods
.method private static final a(II)Z
    .locals 0

    .line 1
    shr-int/2addr p0, p1

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static final b(Latak/core/Pk;)Latak/core/j6;
    .locals 1
    .param p0    # Latak/core/Pk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Latak/core/j6;

    invoke-direct {v0, p0}, Latak/core/j6;-><init>(Latak/core/Pk;)V

    return-object v0
.end method

.method public static final synthetic b(II)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Latak/core/F;->a(II)Z

    move-result p0

    return p0
.end method
