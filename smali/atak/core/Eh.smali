.class public final Latak/core/Eh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Latak/core/Eh$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSegment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Segment.kt\nokio/Segment\n*L\n1#1,175:1\n*E\n"
.end annotation


# static fields
.field public static final h:Latak/core/Eh$a;

.field public static final i:I = 0x2000

.field public static final j:I = 0x400


# instance fields
.field public final a:[B
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public c:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public d:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public e:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public f:Latak/core/Eh;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Latak/core/Eh;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Latak/core/Eh$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Latak/core/Eh$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Latak/core/Eh;->h:Latak/core/Eh$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Latak/core/Eh;->a:[B

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Latak/core/Eh;->e:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Latak/core/Eh;->d:Z

    return-void
.end method

.method public constructor <init>([BIIZZ)V
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latak/core/Eh;->a:[B

    .line 5
    iput p2, p0, Latak/core/Eh;->b:I

    .line 6
    iput p3, p0, Latak/core/Eh;->c:I

    .line 7
    iput-boolean p4, p0, Latak/core/Eh;->d:Z

    .line 8
    iput-boolean p5, p0, Latak/core/Eh;->e:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Latak/core/Eh;->g:Latak/core/Eh;

    .line 2
    .line 3
    if-eq v0, p0, :cond_8

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-boolean v0, v0, Latak/core/Eh;->e:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget v0, p0, Latak/core/Eh;->c:I

    .line 16
    .line 17
    iget v1, p0, Latak/core/Eh;->b:I

    .line 18
    .line 19
    sub-int/2addr v0, v1

    .line 20
    iget-object v1, p0, Latak/core/Eh;->g:Latak/core/Eh;

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 25
    .line 26
    .line 27
    :cond_2
    iget v1, v1, Latak/core/Eh;->c:I

    .line 28
    .line 29
    rsub-int v1, v1, 0x2000

    .line 30
    .line 31
    iget-object v2, p0, Latak/core/Eh;->g:Latak/core/Eh;

    .line 32
    .line 33
    if-nez v2, :cond_3

    .line 34
    .line 35
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 36
    .line 37
    .line 38
    :cond_3
    iget-boolean v2, v2, Latak/core/Eh;->d:Z

    .line 39
    .line 40
    if-eqz v2, :cond_4

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_4
    iget-object v2, p0, Latak/core/Eh;->g:Latak/core/Eh;

    .line 45
    .line 46
    if-nez v2, :cond_5

    .line 47
    .line 48
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 49
    .line 50
    .line 51
    :cond_5
    iget v2, v2, Latak/core/Eh;->b:I

    .line 52
    .line 53
    :goto_0
    add-int/2addr v1, v2

    .line 54
    if-le v0, v1, :cond_6

    .line 55
    .line 56
    return-void

    .line 57
    :cond_6
    iget-object v1, p0, Latak/core/Eh;->g:Latak/core/Eh;

    .line 58
    .line 59
    if-nez v1, :cond_7

    .line 60
    .line 61
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 62
    .line 63
    .line 64
    :cond_7
    invoke-virtual {p0, v1, v0}, Latak/core/Eh;->g(Latak/core/Eh;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Latak/core/Eh;->b()Latak/core/Eh;

    .line 68
    .line 69
    .line 70
    invoke-static {p0}, Latak/core/Fh;->d(Latak/core/Eh;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    const-string v1, "cannot compact"

    .line 77
    .line 78
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v0
.end method

.method public final b()Latak/core/Eh;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Latak/core/Eh;->f:Latak/core/Eh;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq v0, p0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move-object v0, v1

    .line 8
    :goto_0
    iget-object v2, p0, Latak/core/Eh;->g:Latak/core/Eh;

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v3, p0, Latak/core/Eh;->f:Latak/core/Eh;

    .line 16
    .line 17
    iput-object v3, v2, Latak/core/Eh;->f:Latak/core/Eh;

    .line 18
    .line 19
    iget-object v2, p0, Latak/core/Eh;->f:Latak/core/Eh;

    .line 20
    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 24
    .line 25
    .line 26
    :cond_2
    iget-object v3, p0, Latak/core/Eh;->g:Latak/core/Eh;

    .line 27
    .line 28
    iput-object v3, v2, Latak/core/Eh;->g:Latak/core/Eh;

    .line 29
    .line 30
    iput-object v1, p0, Latak/core/Eh;->f:Latak/core/Eh;

    .line 31
    .line 32
    iput-object v1, p0, Latak/core/Eh;->g:Latak/core/Eh;

    .line 33
    .line 34
    return-object v0
.end method

.method public final c(Latak/core/Eh;)Latak/core/Eh;
    .locals 1
    .param p1    # Latak/core/Eh;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "segment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p0, p1, Latak/core/Eh;->g:Latak/core/Eh;

    .line 7
    .line 8
    iget-object v0, p0, Latak/core/Eh;->f:Latak/core/Eh;

    .line 9
    .line 10
    iput-object v0, p1, Latak/core/Eh;->f:Latak/core/Eh;

    .line 11
    .line 12
    iget-object v0, p0, Latak/core/Eh;->f:Latak/core/Eh;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iput-object p1, v0, Latak/core/Eh;->g:Latak/core/Eh;

    .line 20
    .line 21
    iput-object p1, p0, Latak/core/Eh;->f:Latak/core/Eh;

    .line 22
    .line 23
    return-object p1
.end method

.method public final d()Latak/core/Eh;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Latak/core/Eh;->d:Z

    .line 3
    .line 4
    new-instance v0, Latak/core/Eh;

    .line 5
    .line 6
    iget-object v2, p0, Latak/core/Eh;->a:[B

    .line 7
    .line 8
    iget v3, p0, Latak/core/Eh;->b:I

    .line 9
    .line 10
    iget v4, p0, Latak/core/Eh;->c:I

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    const/4 v6, 0x0

    .line 14
    move-object v1, v0

    .line 15
    invoke-direct/range {v1 .. v6}, Latak/core/Eh;-><init>([BIIZZ)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final e(I)Latak/core/Eh;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-lez p1, :cond_2

    .line 2
    .line 3
    iget v0, p0, Latak/core/Eh;->c:I

    .line 4
    .line 5
    iget v1, p0, Latak/core/Eh;->b:I

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    if-gt p1, v0, :cond_2

    .line 9
    .line 10
    const/16 v0, 0x400

    .line 11
    .line 12
    if-lt p1, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Latak/core/Eh;->d()Latak/core/Eh;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Latak/core/Fh;->e()Latak/core/Eh;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Latak/core/Eh;->a:[B

    .line 24
    .line 25
    iget v2, p0, Latak/core/Eh;->b:I

    .line 26
    .line 27
    iget-object v3, v0, Latak/core/Eh;->a:[B

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static {v1, v2, v3, v4, p1}, Latakplugin/atos/b;->a([BI[BII)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget v1, v0, Latak/core/Eh;->b:I

    .line 34
    .line 35
    add-int/2addr v1, p1

    .line 36
    iput v1, v0, Latak/core/Eh;->c:I

    .line 37
    .line 38
    iget v1, p0, Latak/core/Eh;->b:I

    .line 39
    .line 40
    add-int/2addr v1, p1

    .line 41
    iput v1, p0, Latak/core/Eh;->b:I

    .line 42
    .line 43
    iget-object p1, p0, Latak/core/Eh;->g:Latak/core/Eh;

    .line 44
    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {p1, v0}, Latak/core/Eh;->c(Latak/core/Eh;)Latak/core/Eh;

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    const-string v0, "byteCount out of range"

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method

.method public final f()Latak/core/Eh;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v6, Latak/core/Eh;

    .line 2
    .line 3
    iget-object v0, p0, Latak/core/Eh;->a:[B

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v0, "java.util.Arrays.copyOf(this, size)"

    .line 11
    .line 12
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v2, p0, Latak/core/Eh;->b:I

    .line 16
    .line 17
    iget v3, p0, Latak/core/Eh;->c:I

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x1

    .line 21
    move-object v0, v6

    .line 22
    invoke-direct/range {v0 .. v5}, Latak/core/Eh;-><init>([BIIZZ)V

    .line 23
    .line 24
    .line 25
    return-object v6
.end method

.method public final g(Latak/core/Eh;I)V
    .locals 4
    .param p1    # Latak/core/Eh;
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
    iget-boolean v0, p1, Latak/core/Eh;->e:Z

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget v0, p1, Latak/core/Eh;->c:I

    .line 11
    .line 12
    add-int v1, v0, p2

    .line 13
    .line 14
    const/16 v2, 0x2000

    .line 15
    .line 16
    if-le v1, v2, :cond_2

    .line 17
    .line 18
    iget-boolean v1, p1, Latak/core/Eh;->d:Z

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    add-int v1, v0, p2

    .line 23
    .line 24
    iget v3, p1, Latak/core/Eh;->b:I

    .line 25
    .line 26
    sub-int/2addr v1, v3

    .line 27
    if-gt v1, v2, :cond_0

    .line 28
    .line 29
    iget-object v1, p1, Latak/core/Eh;->a:[B

    .line 30
    .line 31
    sub-int/2addr v0, v3

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-static {v1, v3, v1, v2, v0}, Latakplugin/atos/b;->a([BI[BII)V

    .line 34
    .line 35
    .line 36
    iget v0, p1, Latak/core/Eh;->c:I

    .line 37
    .line 38
    iget v1, p1, Latak/core/Eh;->b:I

    .line 39
    .line 40
    sub-int/2addr v0, v1

    .line 41
    iput v0, p1, Latak/core/Eh;->c:I

    .line 42
    .line 43
    iput v2, p1, Latak/core/Eh;->b:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    :goto_0
    iget-object v0, p0, Latak/core/Eh;->a:[B

    .line 59
    .line 60
    iget v1, p0, Latak/core/Eh;->b:I

    .line 61
    .line 62
    iget-object v2, p1, Latak/core/Eh;->a:[B

    .line 63
    .line 64
    iget v3, p1, Latak/core/Eh;->c:I

    .line 65
    .line 66
    invoke-static {v0, v1, v2, v3, p2}, Latakplugin/atos/b;->a([BI[BII)V

    .line 67
    .line 68
    .line 69
    iget v0, p1, Latak/core/Eh;->c:I

    .line 70
    .line 71
    add-int/2addr v0, p2

    .line 72
    iput v0, p1, Latak/core/Eh;->c:I

    .line 73
    .line 74
    iget p1, p0, Latak/core/Eh;->b:I

    .line 75
    .line 76
    add-int/2addr p1, p2

    .line 77
    iput p1, p0, Latak/core/Eh;->b:I

    .line 78
    .line 79
    return-void

    .line 80
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    const-string p2, "only owner can write"

    .line 83
    .line 84
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1
.end method
