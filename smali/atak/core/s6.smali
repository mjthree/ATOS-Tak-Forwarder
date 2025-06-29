.class public final Latak/core/s6;
.super Latak/core/a5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Latak/core/s6$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHashingSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HashingSource.kt\nokio/HashingSource\n*L\n1#1,139:1\n*E\n"
.end annotation


# static fields
.field public static final Q:Latak/core/s6$a;


# instance fields
.field private final O:Ljava/security/MessageDigest;

.field private final P:Ljavax/crypto/Mac;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Latak/core/s6$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Latak/core/s6$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Latak/core/s6;->Q:Latak/core/s6$a;

    return-void
.end method

.method public constructor <init>(Latak/core/Pk;Latak/core/M1;Ljava/lang/String;)V
    .locals 1
    .param p1    # Latak/core/Pk;
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

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "algorithm"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Latak/core/a5;-><init>(Latak/core/Pk;)V

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
    iput-object p1, p0, Latak/core/s6;->P:Ljavax/crypto/Mac;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Latak/core/s6;->O:Ljava/security/MessageDigest;
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

.method public constructor <init>(Latak/core/Pk;Ljava/lang/String;)V
    .locals 1
    .param p1    # Latak/core/Pk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "algorithm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Latak/core/a5;-><init>(Latak/core/Pk;)V

    .line 2
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Latak/core/s6;->O:Ljava/security/MessageDigest;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Latak/core/s6;->P:Ljavax/crypto/Mac;

    return-void
.end method

.method public static final A0(Latak/core/Pk;)Latak/core/s6;
    .locals 1
    .param p0    # Latak/core/Pk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Latak/core/s6;->Q:Latak/core/s6$a;

    invoke-virtual {v0, p0}, Latak/core/s6$a;->d(Latak/core/Pk;)Latak/core/s6;

    move-result-object p0

    return-object p0
.end method

.method public static final B0(Latak/core/Pk;)Latak/core/s6;
    .locals 1
    .param p0    # Latak/core/Pk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Latak/core/s6;->Q:Latak/core/s6$a;

    invoke-virtual {v0, p0}, Latak/core/s6$a;->e(Latak/core/Pk;)Latak/core/s6;

    move-result-object p0

    return-object p0
.end method

.method public static final C0(Latak/core/Pk;)Latak/core/s6;
    .locals 1
    .param p0    # Latak/core/Pk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Latak/core/s6;->Q:Latak/core/s6$a;

    invoke-virtual {v0, p0}, Latak/core/s6$a;->f(Latak/core/Pk;)Latak/core/s6;

    move-result-object p0

    return-object p0
.end method

.method public static final D0(Latak/core/Pk;)Latak/core/s6;
    .locals 1
    .param p0    # Latak/core/Pk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Latak/core/s6;->Q:Latak/core/s6$a;

    invoke-virtual {v0, p0}, Latak/core/s6$a;->g(Latak/core/Pk;)Latak/core/s6;

    move-result-object p0

    return-object p0
.end method

.method public static final x0(Latak/core/Pk;Latak/core/M1;)Latak/core/s6;
    .locals 1
    .param p0    # Latak/core/Pk;
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
    sget-object v0, Latak/core/s6;->Q:Latak/core/s6$a;

    invoke-virtual {v0, p0, p1}, Latak/core/s6$a;->a(Latak/core/Pk;Latak/core/M1;)Latak/core/s6;

    move-result-object p0

    return-object p0
.end method

.method public static final y0(Latak/core/Pk;Latak/core/M1;)Latak/core/s6;
    .locals 1
    .param p0    # Latak/core/Pk;
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
    sget-object v0, Latak/core/s6;->Q:Latak/core/s6$a;

    invoke-virtual {v0, p0, p1}, Latak/core/s6$a;->b(Latak/core/Pk;Latak/core/M1;)Latak/core/s6;

    move-result-object p0

    return-object p0
.end method

.method public static final z0(Latak/core/Pk;Latak/core/M1;)Latak/core/s6;
    .locals 1
    .param p0    # Latak/core/Pk;
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
    sget-object v0, Latak/core/s6;->Q:Latak/core/s6$a;

    invoke-virtual {v0, p0, p1}, Latak/core/s6$a;->c(Latak/core/Pk;Latak/core/M1;)Latak/core/s6;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public read(Latak/core/G1;J)J
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
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Latak/core/a5;->read(Latak/core/G1;J)J

    .line 7
    .line 8
    .line 9
    move-result-wide p2

    .line 10
    const-wide/16 v0, -0x1

    .line 11
    .line 12
    cmp-long v0, p2, v0

    .line 13
    .line 14
    if-eqz v0, :cond_6

    .line 15
    .line 16
    invoke-virtual {p1}, Latak/core/G1;->size()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    sub-long/2addr v0, p2

    .line 21
    invoke-virtual {p1}, Latak/core/G1;->size()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    iget-object v4, p1, Latak/core/G1;->O:Latak/core/Eh;

    .line 26
    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 30
    .line 31
    .line 32
    :cond_0
    :goto_0
    cmp-long v5, v2, v0

    .line 33
    .line 34
    if-lez v5, :cond_2

    .line 35
    .line 36
    iget-object v4, v4, Latak/core/Eh;->g:Latak/core/Eh;

    .line 37
    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget v5, v4, Latak/core/Eh;->c:I

    .line 44
    .line 45
    iget v6, v4, Latak/core/Eh;->b:I

    .line 46
    .line 47
    sub-int/2addr v5, v6

    .line 48
    int-to-long v5, v5

    .line 49
    sub-long/2addr v2, v5

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    :goto_1
    invoke-virtual {p1}, Latak/core/G1;->size()J

    .line 52
    .line 53
    .line 54
    move-result-wide v5

    .line 55
    cmp-long v5, v2, v5

    .line 56
    .line 57
    if-gez v5, :cond_6

    .line 58
    .line 59
    iget v5, v4, Latak/core/Eh;->b:I

    .line 60
    .line 61
    int-to-long v5, v5

    .line 62
    add-long/2addr v5, v0

    .line 63
    sub-long/2addr v5, v2

    .line 64
    long-to-int v0, v5

    .line 65
    iget-object v1, p0, Latak/core/s6;->O:Ljava/security/MessageDigest;

    .line 66
    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    iget-object v5, v4, Latak/core/Eh;->a:[B

    .line 70
    .line 71
    iget v6, v4, Latak/core/Eh;->c:I

    .line 72
    .line 73
    sub-int/2addr v6, v0

    .line 74
    invoke-virtual {v1, v5, v0, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    iget-object v1, p0, Latak/core/s6;->P:Ljavax/crypto/Mac;

    .line 79
    .line 80
    if-nez v1, :cond_4

    .line 81
    .line 82
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 83
    .line 84
    .line 85
    :cond_4
    iget-object v5, v4, Latak/core/Eh;->a:[B

    .line 86
    .line 87
    iget v6, v4, Latak/core/Eh;->c:I

    .line 88
    .line 89
    sub-int/2addr v6, v0

    .line 90
    invoke-virtual {v1, v5, v0, v6}, Ljavax/crypto/Mac;->update([BII)V

    .line 91
    .line 92
    .line 93
    :goto_2
    iget v0, v4, Latak/core/Eh;->c:I

    .line 94
    .line 95
    iget v1, v4, Latak/core/Eh;->b:I

    .line 96
    .line 97
    sub-int/2addr v0, v1

    .line 98
    int-to-long v0, v0

    .line 99
    add-long/2addr v2, v0

    .line 100
    iget-object v4, v4, Latak/core/Eh;->f:Latak/core/Eh;

    .line 101
    .line 102
    if-nez v4, :cond_5

    .line 103
    .line 104
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 105
    .line 106
    .line 107
    :cond_5
    move-wide v0, v2

    .line 108
    goto :goto_1

    .line 109
    :cond_6
    return-wide p2
.end method

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
    invoke-virtual {p0}, Latak/core/s6;->w0()Latak/core/M1;

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
    iget-object v0, p0, Latak/core/s6;->O:Ljava/security/MessageDigest;

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
    iget-object v0, p0, Latak/core/s6;->P:Ljavax/crypto/Mac;

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
