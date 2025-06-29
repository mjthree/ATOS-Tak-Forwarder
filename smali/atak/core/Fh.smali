.class public final Latak/core/Fh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSegmentPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentPool.kt\nokio/SegmentPool\n*L\n1#1,63:1\n*E\n"
.end annotation


# static fields
.field public static final a:Latak/core/Fh;

.field public static final b:J = 0x10000L

.field public static c:Latak/core/Eh;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static d:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Latak/core/Fh;

    .line 2
    .line 3
    invoke-direct {v0}, Latak/core/Fh;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Latak/core/Fh;->a:Latak/core/Fh;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final d(Latak/core/Eh;)V
    .locals 9
    .param p0    # Latak/core/Eh;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "segment"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Latak/core/Eh;->f:Latak/core/Eh;

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Latak/core/Eh;->g:Latak/core/Eh;

    .line 11
    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    iget-boolean v0, p0, Latak/core/Eh;->d:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    sget-object v0, Latak/core/Fh;->a:Latak/core/Fh;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    sget-wide v1, Latak/core/Fh;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    const/16 v3, 0x2000

    .line 25
    .line 26
    int-to-long v3, v3

    .line 27
    add-long v5, v1, v3

    .line 28
    .line 29
    const-wide/32 v7, 0x10000

    .line 30
    .line 31
    .line 32
    cmp-long v5, v5, v7

    .line 33
    .line 34
    if-lez v5, :cond_1

    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :cond_1
    add-long/2addr v1, v3

    .line 39
    :try_start_1
    sput-wide v1, Latak/core/Fh;->d:J

    .line 40
    .line 41
    sget-object v1, Latak/core/Fh;->c:Latak/core/Eh;

    .line 42
    .line 43
    iput-object v1, p0, Latak/core/Eh;->f:Latak/core/Eh;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    iput v1, p0, Latak/core/Eh;->c:I

    .line 47
    .line 48
    iput v1, p0, Latak/core/Eh;->b:I

    .line 49
    .line 50
    sput-object p0, Latak/core/Fh;->c:Latak/core/Eh;

    .line 51
    .line 52
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    monitor-exit v0

    .line 58
    throw p0

    .line 59
    :cond_2
    const-string p0, "Failed requirement."

    .line 60
    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0
.end method

.method public static final e()Latak/core/Eh;
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Latak/core/Fh;->a:Latak/core/Fh;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Latak/core/Fh;->c:Latak/core/Eh;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v2, v1, Latak/core/Eh;->f:Latak/core/Eh;

    .line 9
    .line 10
    sput-object v2, Latak/core/Fh;->c:Latak/core/Eh;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput-object v2, v1, Latak/core/Eh;->f:Latak/core/Eh;

    .line 14
    .line 15
    sget-wide v2, Latak/core/Fh;->d:J

    .line 16
    .line 17
    const/16 v4, 0x2000

    .line 18
    .line 19
    int-to-long v4, v4

    .line 20
    sub-long/2addr v2, v4

    .line 21
    sput-wide v2, Latak/core/Fh;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-object v1

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    monitor-exit v0

    .line 28
    new-instance v0, Latak/core/Eh;

    .line 29
    .line 30
    invoke-direct {v0}, Latak/core/Eh;-><init>()V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :goto_0
    monitor-exit v0

    .line 35
    throw v1
.end method
