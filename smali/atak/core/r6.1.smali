.class public final Latak/core/r6;
.super Latak/core/Z4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Latak/core/r6$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHashingSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HashingSink.kt\nokio/HashingSink\n+ 2 -Util.kt\nokio/-Util\n*L\n1#1,125:1\n72#2:126\n*E\n*S KotlinDebug\n*F\n+ 1 HashingSink.kt\nokio/HashingSink\n*L\n68#1:126\n*E\n"
.end annotation


# static fields
.field public static final Q:Latak/core/r6$a;


# instance fields
.field private final O:Ljava/security/MessageDigest;

.field private final P:Ljavax/crypto/Mac;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Latak/core/r6$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Latak/core/r6$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Latak/core/r6;->Q:Latak/core/r6$a;

    return-void
.end method

.method public constructor <init>(Latak/core/Gk;Latak/core/M1;Ljava/lang/String;)V
    .locals 1
    .param p1    # Latak/core/Gk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Latak/core/M1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "algorithm"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Latak/core/Z4;-><init>(Latak/core/Gk;)V

    .line 5
    :try_start_0
    invoke-static {p3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    .line 6
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Latak/core/M1;->m0()[B

    move-result-object p2

    invoke-direct {v0, p2, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 7
    iput-object p1, p0, Latak/core/r6;->P:Ljavax/crypto/Mac;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Latak/core/r6;->O:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Latak/core/Gk;Ljava/lang/String;)V
    .locals 1
    .param p1    # Latak/core/Gk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "algorithm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Latak/core/Z4;-><init>(Latak/core/Gk;)V

    .line 2
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Latak/core/r6;->O:Ljava/security/MessageDigest;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Latak/core/r6;->P:Ljavax/crypto/Mac;

    return-void
.end method

.method public static final A0(Latak/core/Gk;)Latak/core/r6;
    .locals 1
    .param p0    # Latak/core/Gk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Latak/core/r6;->Q:Latak/core/r6$a;

    invoke-virtual {v0, p0}, Latak/core/r6$a;->d(Latak/core/Gk;)Latak/core/r6;

    move-result-object p0

    return-object p0
.end method

.method public static final B0(Latak/core/Gk;)Latak/core/r6;
    .locals 1
    .param p0    # Latak/core/Gk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Latak/core/r6;->Q:Latak/core/r6$a;

    invoke-virtual {v0, p0}, Latak/core/r6$a;->e(Latak/core/Gk;)Latak/core/r6;

    move-result-object p0

    return-object p0
.end method

.method public static final C0(Latak/core/Gk;)Latak/core/r6;
    .locals 1
    .param p0    # Latak/core/Gk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Latak/core/r6;->Q:Latak/core/r6$a;

    invoke-virtual {v0, p0}, Latak/core/r6$a;->f(Latak/core/Gk;)Latak/core/r6;

    move-result-object p0

    return-object p0
.end method

.method public static final D0(Latak/core/Gk;)Latak/core/r6;
    .locals 1
    .param p0    # Latak/core/Gk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Latak/core/r6;->Q:Latak/core/r6$a;

    invoke-virtual {v0, p0}, Latak/core/r6$a;->g(Latak/core/Gk;)Latak/core/r6;

    move-result-object p0

    return-object p0
.end method

.method public static final x0(Latak/core/Gk;Latak/core/M1;)Latak/core/r6;
    .locals 1
    .param p0    # Latak/core/Gk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Latak/core/M1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Latak/core/r6;->Q:Latak/core/r6$a;

    invoke-virtual {v0, p0, p1}, Latak/core/r6$a;->a(Latak/core/Gk;Latak/core/M1;)Latak/core/r6;

    move-result-object p0

    return-object p0
.end method

.method public static final y0(Latak/core/Gk;Latak/core/M1;)Latak/core/r6;
    .locals 1
    .param p0    # Latak/core/Gk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Latak/core/M1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Latak/core/r6;->Q:Latak/core/r6$a;

    invoke-virtual {v0, p0, p1}, Latak/core/r6$a;->b(Latak/core/Gk;Latak/core/M1;)Latak/core/r6;

    move-result-object p0

    return-object p0
.end method

.method public static final z0(Latak/core/Gk;Latak/core/M1;)Latak/core/r6;
    .locals 1
    .param p0    # Latak/core/Gk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Latak/core/M1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Latak/core/r6;->Q:Latak/core/r6$a;

    invoke-virtual {v0, p0, p1}, Latak/core/r6$a;->c(Latak/core/Gk;Latak/core/M1;)Latak/core/r6;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final s()Latak/core/M1;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "hash"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_hash"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Latak/core/r6;->w0()Latak/core/M1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final w0()Latak/core/M1;
    .locals 3
    .annotation build Lkotlin/jvm/JvmName;
        name = "hash"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Latak/core/r6;->O:Ljava/security/MessageDigest;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Latak/core/r6;->P:Ljavax/crypto/Mac;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    new-instance v1, Latak/core/M1;

    .line 22
    .line 23
    const-string v2, "result"

    .line 24
    .line 25
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v0}, Latak/core/M1;-><init>([B)V

    .line 29
    .line 30
    .line 31
    return-object v1
.end method

.method public write(Latak/core/G1;J)V
    .locals 7
    .param p1    # Latak/core/G1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Latak/core/G1;->size()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    move-wide v5, p2

    .line 13
    invoke-static/range {v1 .. v6}, Latakplugin/atos/c;->e(JJJ)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p1, Latak/core/G1;->O:Latak/core/Eh;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 21
    .line 22
    .line 23
    :cond_0
    const-wide/16 v1, 0x0

    .line 24
    .line 25
    :cond_1
    :goto_0
    cmp-long v3, v1, p2

    .line 26
    .line 27
    if-gez v3, :cond_4

    .line 28
    .line 29
    sub-long v3, p2, v1

    .line 30
    .line 31
    iget v5, v0, Latak/core/Eh;->c:I

    .line 32
    .line 33
    iget v6, v0, Latak/core/Eh;->b:I

    .line 34
    .line 35
    sub-int/2addr v5, v6

    .line 36
    int-to-long v5, v5

    .line 37
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    long-to-int v3, v3

    .line 42
    iget-object v4, p0, Latak/core/r6;->O:Ljava/security/MessageDigest;

    .line 43
    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    iget-object v5, v0, Latak/core/Eh;->a:[B

    .line 47
    .line 48
    iget v6, v0, Latak/core/Eh;->b:I

    .line 49
    .line 50
    invoke-virtual {v4, v5, v6, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    iget-object v4, p0, Latak/core/r6;->P:Ljavax/crypto/Mac;

    .line 55
    .line 56
    if-nez v4, :cond_3

    .line 57
    .line 58
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 59
    .line 60
    .line 61
    :cond_3
    iget-object v5, v0, Latak/core/Eh;->a:[B

    .line 62
    .line 63
    iget v6, v0, Latak/core/Eh;->b:I

    .line 64
    .line 65
    invoke-virtual {v4, v5, v6, v3}, Ljavax/crypto/Mac;->update([BII)V

    .line 66
    .line 67
    .line 68
    :goto_1
    int-to-long v3, v3

    .line 69
    add-long/2addr v1, v3

    .line 70
    iget-object v0, v0, Latak/core/Eh;->f:Latak/core/Eh;

    .line 71
    .line 72
    if-nez v0, :cond_1

    .line 73
    .line 74
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    invoke-super {p0, p1, p2, p3}, Latak/core/Z4;->write(Latak/core/G1;J)V

    .line 79
    .line 80
    .line 81
    return-void
.end method
