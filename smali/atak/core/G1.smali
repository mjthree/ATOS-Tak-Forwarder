.class public final Latak/core/G1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Latak/core/J1;
.implements Latak/core/I1;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Latak/core/G1$a;,
        Latak/core/G1$d;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/Buffer\n+ 2 -Util.kt\nokio/-Util\n*L\n1#1,2214:1\n1395#1,20:2218\n1395#1,20:2274\n1395#1:2294\n1397#1,8:2296\n1407#1,8:2305\n1395#1,20:2314\n75#2:2215\n72#2:2216\n72#2:2217\n63#2:2238\n63#2:2239\n63#2:2240\n63#2:2241\n63#2:2242\n63#2:2243\n63#2:2244\n63#2:2245\n63#2:2246\n63#2:2247\n63#2:2248\n63#2:2249\n69#2:2250\n69#2:2251\n66#2:2252\n66#2:2253\n66#2:2254\n66#2:2255\n66#2:2256\n66#2:2257\n66#2:2258\n66#2:2259\n63#2:2260\n63#2:2261\n75#2:2262\n63#2:2263\n63#2:2264\n63#2:2265\n63#2:2266\n63#2:2267\n63#2:2268\n63#2:2269\n63#2:2270\n63#2:2271\n63#2:2272\n72#2:2273\n75#2:2295\n75#2:2304\n75#2:2313\n*E\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/Buffer\n*L\n287#1,20:2218\n1432#1,20:2274\n1467#1:2294\n1467#1,8:2296\n1467#1,8:2305\n1502#1,20:2314\n135#1:2215\n194#1:2216\n232#1:2217\n302#1:2238\n302#1:2239\n307#1:2240\n307#1:2241\n330#1:2242\n331#1:2243\n332#1:2244\n333#1:2245\n337#1:2246\n338#1:2247\n339#1:2248\n340#1:2249\n363#1:2250\n364#1:2251\n368#1:2252\n369#1:2253\n370#1:2254\n371#1:2255\n372#1:2256\n373#1:2257\n374#1:2258\n375#1:2259\n577#1:2260\n601#1:2261\n710#1:2262\n743#1:2263\n745#1:2264\n749#1:2265\n751#1:2266\n755#1:2267\n757#1:2268\n761#1:2269\n763#1:2270\n784#1:2271\n787#1:2272\n883#1:2273\n1467#1:2295\n1467#1:2304\n1467#1:2313\n*E\n"
.end annotation


# static fields
.field private static final a:[B

.field public static final b:Latak/core/G1$d;


# instance fields
.field public O:Latak/core/Eh;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private P:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Latak/core/G1$d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Latak/core/G1$d;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Latak/core/G1;->b:Latak/core/G1$d;

    .line 8
    .line 9
    const-string v0, "0123456789abcdef"

    .line 10
    .line 11
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "(this as java.lang.String).getBytes(charset)"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Latak/core/G1;->a:[B

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic G0(Latak/core/G1;Latak/core/G1;JJILjava/lang/Object;)Latak/core/G1;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    and-int/lit8 p7, p6, 0x2

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const-wide/16 p2, 0x0

    .line 6
    .line 7
    :cond_0
    move-wide v2, p2

    .line 8
    and-int/lit8 p2, p6, 0x4

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    iget-wide p2, p0, Latak/core/G1;->P:J

    .line 13
    .line 14
    sub-long p4, p2, v2

    .line 15
    .line 16
    :cond_1
    move-wide v4, p4

    .line 17
    move-object v0, p0

    .line 18
    move-object v1, p1

    .line 19
    invoke-virtual/range {v0 .. v5}, Latak/core/G1;->B0(Latak/core/G1;JJ)Latak/core/G1;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static bridge synthetic H0(Latak/core/G1;Ljava/io/OutputStream;JJILjava/lang/Object;)Latak/core/G1;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    and-int/lit8 p7, p6, 0x2

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const-wide/16 p2, 0x0

    .line 6
    .line 7
    :cond_0
    move-wide v2, p2

    .line 8
    and-int/lit8 p2, p6, 0x4

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    iget-wide p2, p0, Latak/core/G1;->P:J

    .line 13
    .line 14
    sub-long p4, p2, v2

    .line 15
    .line 16
    :cond_1
    move-wide v4, p4

    .line 17
    move-object v0, p0

    .line 18
    move-object v1, p1

    .line 19
    invoke-virtual/range {v0 .. v5}, Latak/core/G1;->E0(Ljava/io/OutputStream;JJ)Latak/core/G1;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method private final I0(Ljava/lang/String;)Latak/core/M1;
    .locals 5

    .line 1
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v1, v0, Latak/core/Eh;->a:[B

    .line 10
    .line 11
    iget v2, v0, Latak/core/Eh;->b:I

    .line 12
    .line 13
    iget v3, v0, Latak/core/Eh;->c:I

    .line 14
    .line 15
    sub-int/2addr v3, v2

    .line 16
    invoke-virtual {p1, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Latak/core/Eh;->f:Latak/core/Eh;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 24
    .line 25
    .line 26
    :cond_0
    :goto_0
    if-eq v1, v0, :cond_1

    .line 27
    .line 28
    iget-object v2, v1, Latak/core/Eh;->a:[B

    .line 29
    .line 30
    iget v3, v1, Latak/core/Eh;->b:I

    .line 31
    .line 32
    iget v4, v1, Latak/core/Eh;->c:I

    .line 33
    .line 34
    sub-int/2addr v4, v3

    .line 35
    invoke-virtual {p1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v1, Latak/core/Eh;->f:Latak/core/Eh;

    .line 39
    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance v0, Latak/core/M1;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v1, "messageDigest.digest()"

    .line 53
    .line 54
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, p1}, Latak/core/M1;-><init>([B)V

    .line 58
    .line 59
    .line 60
    return-object v0
.end method

.method private final M0(Ljava/lang/String;Latak/core/M1;)Latak/core/M1;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 6
    .line 7
    invoke-virtual {p2}, Latak/core/M1;->t()[B

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-direct {v1, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p2, p1, Latak/core/Eh;->a:[B

    .line 22
    .line 23
    iget v1, p1, Latak/core/Eh;->b:I

    .line 24
    .line 25
    iget v2, p1, Latak/core/Eh;->c:I

    .line 26
    .line 27
    sub-int/2addr v2, v1

    .line 28
    invoke-virtual {v0, p2, v1, v2}, Ljavax/crypto/Mac;->update([BII)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p1, Latak/core/Eh;->f:Latak/core/Eh;

    .line 32
    .line 33
    if-nez p2, :cond_0

    .line 34
    .line 35
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    if-eq p2, p1, :cond_1

    .line 42
    .line 43
    iget-object v1, p2, Latak/core/Eh;->a:[B

    .line 44
    .line 45
    iget v2, p2, Latak/core/Eh;->b:I

    .line 46
    .line 47
    iget v3, p2, Latak/core/Eh;->c:I

    .line 48
    .line 49
    sub-int/2addr v3, v2

    .line 50
    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Mac;->update([BII)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p2, Latak/core/Eh;->f:Latak/core/Eh;

    .line 54
    .line 55
    if-nez p2, :cond_0

    .line 56
    .line 57
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance p1, Latak/core/M1;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    const-string v0, "mac.doFinal()"

    .line 68
    .line 69
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, p2}, Latak/core/M1;-><init>([B)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    return-object p1

    .line 76
    :goto_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    throw p2
.end method

.method public static bridge synthetic T0(Latak/core/G1;Latak/core/G1$a;ILjava/lang/Object;)Latak/core/G1$a;
    .locals 0
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    new-instance p1, Latak/core/G1$a;

    .line 6
    .line 7
    invoke-direct {p1}, Latak/core/G1$a;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Latak/core/G1;->S0(Latak/core/G1$a;)Latak/core/G1$a;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private final W0(Ljava/io/InputStream;JZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p2, v0

    .line 4
    .line 5
    if-gtz v0, :cond_1

    .line 6
    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    return-void

    .line 11
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Latak/core/G1;->j(I)Latak/core/Eh;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v1, v0, Latak/core/Eh;->c:I

    .line 17
    .line 18
    rsub-int v1, v1, 0x2000

    .line 19
    .line 20
    int-to-long v1, v1

    .line 21
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    long-to-int v1, v1

    .line 26
    iget-object v2, v0, Latak/core/Eh;->a:[B

    .line 27
    .line 28
    iget v3, v0, Latak/core/Eh;->c:I

    .line 29
    .line 30
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, -0x1

    .line 35
    if-ne v1, v2, :cond_3

    .line 36
    .line 37
    if-eqz p4, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_3
    iget v2, v0, Latak/core/Eh;->c:I

    .line 47
    .line 48
    add-int/2addr v2, v1

    .line 49
    iput v2, v0, Latak/core/Eh;->c:I

    .line 50
    .line 51
    iget-wide v2, p0, Latak/core/G1;->P:J

    .line 52
    .line 53
    int-to-long v0, v1

    .line 54
    add-long/2addr v2, v0

    .line 55
    iput-wide v2, p0, Latak/core/G1;->P:J

    .line 56
    .line 57
    sub-long/2addr p2, v0

    .line 58
    goto :goto_0
.end method

.method public static bridge synthetic Z0(Latak/core/G1;Latak/core/G1$a;ILjava/lang/Object;)Latak/core/G1$a;
    .locals 0
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    new-instance p1, Latak/core/G1$a;

    .line 6
    .line 7
    invoke-direct {p1}, Latak/core/G1$a;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Latak/core/G1;->Y0(Latak/core/G1$a;)Latak/core/G1$a;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private final b(Latak/core/Eh;I[BII)Z
    .locals 5

    .line 2
    iget v0, p1, Latak/core/Eh;->c:I

    .line 3
    iget-object v1, p1, Latak/core/Eh;->a:[B

    :goto_0
    if-ge p4, p5, :cond_3

    if-ne p2, v0, :cond_1

    .line 4
    iget-object p1, p1, Latak/core/Eh;->f:Latak/core/Eh;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 5
    :cond_0
    iget-object p2, p1, Latak/core/Eh;->a:[B

    .line 6
    iget v0, p1, Latak/core/Eh;->b:I

    .line 7
    iget v1, p1, Latak/core/Eh;->c:I

    move v4, v1

    move-object v1, p2

    move p2, v0

    move v0, v4

    .line 8
    :cond_1
    aget-byte v2, v1, p2

    aget-byte v3, p3, p4

    if-eq v2, v3, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private final f(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Latak/core/Eh;",
            "-",
            "Ljava/lang/Long;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    invoke-virtual {p0}, Latak/core/G1;->size()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    sub-long/2addr v1, p1

    .line 10
    cmp-long v1, v1, p1

    .line 11
    .line 12
    if-gez v1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Latak/core/G1;->size()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    :goto_0
    cmp-long v3, v1, p1

    .line 19
    .line 20
    if-lez v3, :cond_1

    .line 21
    .line 22
    iget-object v0, v0, Latak/core/Eh;->g:Latak/core/Eh;

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget v3, v0, Latak/core/Eh;->c:I

    .line 30
    .line 31
    iget v4, v0, Latak/core/Eh;->b:I

    .line 32
    .line 33
    sub-int/2addr v3, v4

    .line 34
    int-to-long v3, v3

    .line 35
    sub-long/2addr v1, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p3, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :cond_2
    const-wide/16 v1, 0x0

    .line 47
    .line 48
    :goto_1
    iget v3, v0, Latak/core/Eh;->c:I

    .line 49
    .line 50
    iget v4, v0, Latak/core/Eh;->b:I

    .line 51
    .line 52
    sub-int/2addr v3, v4

    .line 53
    int-to-long v3, v3

    .line 54
    add-long/2addr v3, v1

    .line 55
    cmp-long v5, v3, p1

    .line 56
    .line 57
    if-lez v5, :cond_3

    .line 58
    .line 59
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-interface {p3, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    :cond_3
    iget-object v0, v0, Latak/core/Eh;->f:Latak/core/Eh;

    .line 69
    .line 70
    if-nez v0, :cond_4

    .line 71
    .line 72
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 73
    .line 74
    .line 75
    :cond_4
    move-wide v1, v3

    .line 76
    goto :goto_1

    .line 77
    :cond_5
    const-wide/16 p1, -0x1

    .line 78
    .line 79
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const/4 p2, 0x0

    .line 84
    invoke-interface {p3, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    return-object p1
.end method

.method public static bridge synthetic h(Latak/core/G1;Latak/core/W9;ZILjava/lang/Object;)I
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Latak/core/G1;->g(Latak/core/W9;Z)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static bridge synthetic z1(Latak/core/G1;Ljava/io/OutputStream;JILjava/lang/Object;)Latak/core/G1;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-wide p2, p0, Latak/core/G1;->P:J

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Latak/core/G1;->y1(Ljava/io/OutputStream;J)Latak/core/G1;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public A()[B
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Latak/core/G1;->d0(J)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public A1(Ljava/lang/String;)Latak/core/G1;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "string"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, p1, v1, v0}, Latak/core/G1;->B1(Ljava/lang/String;II)Latak/core/G1;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public bridge synthetic B(I)Latak/core/I1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Latak/core/G1;->q1(I)Latak/core/G1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final B0(Latak/core/G1;JJ)Latak/core/G1;
    .locals 7
    .param p1    # Latak/core/G1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "out"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Latak/core/G1;->P:J

    .line 7
    .line 8
    move-wide v3, p2

    .line 9
    move-wide v5, p4

    .line 10
    invoke-static/range {v1 .. v6}, Latakplugin/atos/c;->e(JJJ)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    cmp-long v2, p4, v0

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    iget-wide v2, p1, Latak/core/G1;->P:J

    .line 21
    .line 22
    add-long/2addr v2, p4

    .line 23
    iput-wide v2, p1, Latak/core/G1;->P:J

    .line 24
    .line 25
    iget-object v2, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 26
    .line 27
    :goto_0
    if-nez v2, :cond_1

    .line 28
    .line 29
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget v3, v2, Latak/core/Eh;->c:I

    .line 33
    .line 34
    iget v4, v2, Latak/core/Eh;->b:I

    .line 35
    .line 36
    sub-int v5, v3, v4

    .line 37
    .line 38
    int-to-long v5, v5

    .line 39
    cmp-long v5, p2, v5

    .line 40
    .line 41
    if-ltz v5, :cond_2

    .line 42
    .line 43
    sub-int/2addr v3, v4

    .line 44
    int-to-long v3, v3

    .line 45
    sub-long/2addr p2, v3

    .line 46
    iget-object v2, v2, Latak/core/Eh;->f:Latak/core/Eh;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    :goto_1
    cmp-long v3, p4, v0

    .line 50
    .line 51
    if-lez v3, :cond_7

    .line 52
    .line 53
    if-nez v2, :cond_3

    .line 54
    .line 55
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-virtual {v2}, Latak/core/Eh;->d()Latak/core/Eh;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iget v4, v3, Latak/core/Eh;->b:I

    .line 63
    .line 64
    long-to-int p2, p2

    .line 65
    add-int/2addr v4, p2

    .line 66
    iput v4, v3, Latak/core/Eh;->b:I

    .line 67
    .line 68
    long-to-int p2, p4

    .line 69
    add-int/2addr v4, p2

    .line 70
    iget p2, v3, Latak/core/Eh;->c:I

    .line 71
    .line 72
    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    iput p2, v3, Latak/core/Eh;->c:I

    .line 77
    .line 78
    iget-object p2, p1, Latak/core/G1;->O:Latak/core/Eh;

    .line 79
    .line 80
    if-nez p2, :cond_4

    .line 81
    .line 82
    iput-object v3, v3, Latak/core/Eh;->g:Latak/core/Eh;

    .line 83
    .line 84
    iput-object v3, v3, Latak/core/Eh;->f:Latak/core/Eh;

    .line 85
    .line 86
    iput-object v3, p1, Latak/core/G1;->O:Latak/core/Eh;

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_4
    if-nez p2, :cond_5

    .line 90
    .line 91
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 92
    .line 93
    .line 94
    :cond_5
    iget-object p2, p2, Latak/core/Eh;->g:Latak/core/Eh;

    .line 95
    .line 96
    if-nez p2, :cond_6

    .line 97
    .line 98
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 99
    .line 100
    .line 101
    :cond_6
    invoke-virtual {p2, v3}, Latak/core/Eh;->c(Latak/core/Eh;)Latak/core/Eh;

    .line 102
    .line 103
    .line 104
    :goto_2
    iget p2, v3, Latak/core/Eh;->c:I

    .line 105
    .line 106
    iget p3, v3, Latak/core/Eh;->b:I

    .line 107
    .line 108
    sub-int/2addr p2, p3

    .line 109
    int-to-long p2, p2

    .line 110
    sub-long/2addr p4, p2

    .line 111
    iget-object v2, v2, Latak/core/Eh;->f:Latak/core/Eh;

    .line 112
    .line 113
    move-wide p2, v0

    .line 114
    goto :goto_1

    .line 115
    :cond_7
    return-object p0
.end method

.method public B1(Ljava/lang/String;II)Latak/core/G1;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "string"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-ltz p2, :cond_c

    .line 7
    .line 8
    if-lt p3, p2, :cond_b

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-gt p3, v0, :cond_a

    .line 15
    .line 16
    :goto_0
    if-ge p2, p3, :cond_9

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/16 v1, 0x80

    .line 23
    .line 24
    if-ge v0, v1, :cond_2

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {p0, v2}, Latak/core/G1;->j(I)Latak/core/Eh;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, v2, Latak/core/Eh;->a:[B

    .line 32
    .line 33
    iget v4, v2, Latak/core/Eh;->c:I

    .line 34
    .line 35
    sub-int/2addr v4, p2

    .line 36
    rsub-int v5, v4, 0x2000

    .line 37
    .line 38
    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    add-int/lit8 v6, p2, 0x1

    .line 43
    .line 44
    add-int/2addr p2, v4

    .line 45
    int-to-byte v0, v0

    .line 46
    aput-byte v0, v3, p2

    .line 47
    .line 48
    :goto_1
    if-ge v6, v5, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-lt p2, v1, :cond_0

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_0
    add-int/lit8 v0, v6, 0x1

    .line 58
    .line 59
    add-int/2addr v6, v4

    .line 60
    int-to-byte p2, p2

    .line 61
    aput-byte p2, v3, v6

    .line 62
    .line 63
    move v6, v0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    :goto_2
    add-int/2addr v4, v6

    .line 66
    iget p2, v2, Latak/core/Eh;->c:I

    .line 67
    .line 68
    sub-int/2addr v4, p2

    .line 69
    add-int/2addr p2, v4

    .line 70
    iput p2, v2, Latak/core/Eh;->c:I

    .line 71
    .line 72
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 73
    .line 74
    int-to-long v2, v4

    .line 75
    add-long/2addr v0, v2

    .line 76
    iput-wide v0, p0, Latak/core/G1;->P:J

    .line 77
    .line 78
    move p2, v6

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const/16 v2, 0x800

    .line 81
    .line 82
    if-ge v0, v2, :cond_3

    .line 83
    .line 84
    const/4 v2, 0x2

    .line 85
    invoke-virtual {p0, v2}, Latak/core/G1;->j(I)Latak/core/Eh;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    iget-object v4, v3, Latak/core/Eh;->a:[B

    .line 90
    .line 91
    iget v5, v3, Latak/core/Eh;->c:I

    .line 92
    .line 93
    shr-int/lit8 v6, v0, 0x6

    .line 94
    .line 95
    or-int/lit16 v6, v6, 0xc0

    .line 96
    .line 97
    int-to-byte v6, v6

    .line 98
    aput-byte v6, v4, v5

    .line 99
    .line 100
    add-int/lit8 v6, v5, 0x1

    .line 101
    .line 102
    and-int/lit8 v0, v0, 0x3f

    .line 103
    .line 104
    or-int/2addr v0, v1

    .line 105
    int-to-byte v0, v0

    .line 106
    aput-byte v0, v4, v6

    .line 107
    .line 108
    add-int/2addr v5, v2

    .line 109
    iput v5, v3, Latak/core/Eh;->c:I

    .line 110
    .line 111
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 112
    .line 113
    const-wide/16 v2, 0x2

    .line 114
    .line 115
    add-long/2addr v0, v2

    .line 116
    iput-wide v0, p0, Latak/core/G1;->P:J

    .line 117
    .line 118
    :goto_3
    add-int/lit8 p2, p2, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    const v2, 0xd800

    .line 122
    .line 123
    .line 124
    const/16 v3, 0x3f

    .line 125
    .line 126
    if-lt v0, v2, :cond_8

    .line 127
    .line 128
    const v2, 0xdfff

    .line 129
    .line 130
    .line 131
    if-le v0, v2, :cond_4

    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_4
    add-int/lit8 v4, p2, 0x1

    .line 135
    .line 136
    if-ge v4, p3, :cond_5

    .line 137
    .line 138
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    goto :goto_4

    .line 143
    :cond_5
    const/4 v5, 0x0

    .line 144
    :goto_4
    const v6, 0xdbff

    .line 145
    .line 146
    .line 147
    if-gt v0, v6, :cond_7

    .line 148
    .line 149
    const v6, 0xdc00

    .line 150
    .line 151
    .line 152
    if-gt v6, v5, :cond_7

    .line 153
    .line 154
    if-ge v2, v5, :cond_6

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_6
    and-int/lit16 v0, v0, 0x3ff

    .line 158
    .line 159
    shl-int/lit8 v0, v0, 0xa

    .line 160
    .line 161
    and-int/lit16 v2, v5, 0x3ff

    .line 162
    .line 163
    or-int/2addr v0, v2

    .line 164
    const/high16 v2, 0x10000

    .line 165
    .line 166
    add-int/2addr v0, v2

    .line 167
    const/4 v2, 0x4

    .line 168
    invoke-virtual {p0, v2}, Latak/core/G1;->j(I)Latak/core/Eh;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    iget-object v5, v4, Latak/core/Eh;->a:[B

    .line 173
    .line 174
    iget v6, v4, Latak/core/Eh;->c:I

    .line 175
    .line 176
    shr-int/lit8 v7, v0, 0x12

    .line 177
    .line 178
    or-int/lit16 v7, v7, 0xf0

    .line 179
    .line 180
    int-to-byte v7, v7

    .line 181
    aput-byte v7, v5, v6

    .line 182
    .line 183
    add-int/lit8 v7, v6, 0x1

    .line 184
    .line 185
    shr-int/lit8 v8, v0, 0xc

    .line 186
    .line 187
    and-int/2addr v8, v3

    .line 188
    or-int/2addr v8, v1

    .line 189
    int-to-byte v8, v8

    .line 190
    aput-byte v8, v5, v7

    .line 191
    .line 192
    add-int/lit8 v7, v6, 0x2

    .line 193
    .line 194
    shr-int/lit8 v8, v0, 0x6

    .line 195
    .line 196
    and-int/2addr v8, v3

    .line 197
    or-int/2addr v8, v1

    .line 198
    int-to-byte v8, v8

    .line 199
    aput-byte v8, v5, v7

    .line 200
    .line 201
    add-int/lit8 v7, v6, 0x3

    .line 202
    .line 203
    and-int/2addr v0, v3

    .line 204
    or-int/2addr v0, v1

    .line 205
    int-to-byte v0, v0

    .line 206
    aput-byte v0, v5, v7

    .line 207
    .line 208
    add-int/2addr v6, v2

    .line 209
    iput v6, v4, Latak/core/Eh;->c:I

    .line 210
    .line 211
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 212
    .line 213
    const-wide/16 v2, 0x4

    .line 214
    .line 215
    add-long/2addr v0, v2

    .line 216
    iput-wide v0, p0, Latak/core/G1;->P:J

    .line 217
    .line 218
    add-int/lit8 p2, p2, 0x2

    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :cond_7
    :goto_5
    invoke-virtual {p0, v3}, Latak/core/G1;->m1(I)Latak/core/G1;

    .line 223
    .line 224
    .line 225
    move p2, v4

    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :cond_8
    :goto_6
    const/4 v2, 0x3

    .line 229
    invoke-virtual {p0, v2}, Latak/core/G1;->j(I)Latak/core/Eh;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    iget-object v5, v4, Latak/core/Eh;->a:[B

    .line 234
    .line 235
    iget v6, v4, Latak/core/Eh;->c:I

    .line 236
    .line 237
    shr-int/lit8 v7, v0, 0xc

    .line 238
    .line 239
    or-int/lit16 v7, v7, 0xe0

    .line 240
    .line 241
    int-to-byte v7, v7

    .line 242
    aput-byte v7, v5, v6

    .line 243
    .line 244
    add-int/lit8 v7, v6, 0x1

    .line 245
    .line 246
    shr-int/lit8 v8, v0, 0x6

    .line 247
    .line 248
    and-int/2addr v3, v8

    .line 249
    or-int/2addr v3, v1

    .line 250
    int-to-byte v3, v3

    .line 251
    aput-byte v3, v5, v7

    .line 252
    .line 253
    add-int/lit8 v3, v6, 0x2

    .line 254
    .line 255
    and-int/lit8 v0, v0, 0x3f

    .line 256
    .line 257
    or-int/2addr v0, v1

    .line 258
    int-to-byte v0, v0

    .line 259
    aput-byte v0, v5, v3

    .line 260
    .line 261
    add-int/2addr v6, v2

    .line 262
    iput v6, v4, Latak/core/Eh;->c:I

    .line 263
    .line 264
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 265
    .line 266
    const-wide/16 v2, 0x3

    .line 267
    .line 268
    add-long/2addr v0, v2

    .line 269
    iput-wide v0, p0, Latak/core/G1;->P:J

    .line 270
    .line 271
    goto/16 :goto_3

    .line 272
    .line 273
    :cond_9
    return-object p0

    .line 274
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .line 278
    .line 279
    const-string v0, "endIndex > string.length: "

    .line 280
    .line 281
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string p3, " > "

    .line 288
    .line 289
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 304
    .line 305
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    throw p2

    .line 313
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .line 317
    .line 318
    const-string v0, "endIndex < beginIndex: "

    .line 319
    .line 320
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string p3, " < "

    .line 327
    .line 328
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 339
    .line 340
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    throw p2

    .line 348
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .line 352
    .line 353
    const-string p3, "beginIndex < 0: "

    .line 354
    .line 355
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 366
    .line 367
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    throw p2
.end method

.method public C()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final C0(Ljava/io/OutputStream;)Latak/core/G1;
    .locals 8
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v6, 0x6

    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Latak/core/G1;->H0(Latak/core/G1;Ljava/io/OutputStream;JJILjava/lang/Object;)Latak/core/G1;

    move-result-object p1

    return-object p1
.end method

.method public C1(I)Latak/core/G1;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Latak/core/G1;->m1(I)Latak/core/G1;

    .line 6
    .line 7
    .line 8
    goto/16 :goto_1

    .line 9
    .line 10
    :cond_0
    const/16 v1, 0x800

    .line 11
    .line 12
    const/16 v2, 0x3f

    .line 13
    .line 14
    if-ge p1, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-virtual {p0, v1}, Latak/core/G1;->j(I)Latak/core/Eh;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v4, v3, Latak/core/Eh;->a:[B

    .line 22
    .line 23
    iget v5, v3, Latak/core/Eh;->c:I

    .line 24
    .line 25
    shr-int/lit8 v6, p1, 0x6

    .line 26
    .line 27
    or-int/lit16 v6, v6, 0xc0

    .line 28
    .line 29
    int-to-byte v6, v6

    .line 30
    aput-byte v6, v4, v5

    .line 31
    .line 32
    add-int/lit8 v6, v5, 0x1

    .line 33
    .line 34
    and-int/2addr p1, v2

    .line 35
    or-int/2addr p1, v0

    .line 36
    int-to-byte p1, p1

    .line 37
    aput-byte p1, v4, v6

    .line 38
    .line 39
    add-int/2addr v5, v1

    .line 40
    iput v5, v3, Latak/core/Eh;->c:I

    .line 41
    .line 42
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 43
    .line 44
    const-wide/16 v2, 0x2

    .line 45
    .line 46
    add-long/2addr v0, v2

    .line 47
    iput-wide v0, p0, Latak/core/G1;->P:J

    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :cond_1
    const v1, 0xd800

    .line 52
    .line 53
    .line 54
    if-le v1, p1, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const v1, 0xdfff

    .line 58
    .line 59
    .line 60
    if-lt v1, p1, :cond_3

    .line 61
    .line 62
    invoke-virtual {p0, v2}, Latak/core/G1;->m1(I)Latak/core/G1;

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    :goto_0
    const/high16 v1, 0x10000

    .line 67
    .line 68
    if-ge p1, v1, :cond_4

    .line 69
    .line 70
    const/4 v1, 0x3

    .line 71
    invoke-virtual {p0, v1}, Latak/core/G1;->j(I)Latak/core/Eh;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    iget-object v4, v3, Latak/core/Eh;->a:[B

    .line 76
    .line 77
    iget v5, v3, Latak/core/Eh;->c:I

    .line 78
    .line 79
    shr-int/lit8 v6, p1, 0xc

    .line 80
    .line 81
    or-int/lit16 v6, v6, 0xe0

    .line 82
    .line 83
    int-to-byte v6, v6

    .line 84
    aput-byte v6, v4, v5

    .line 85
    .line 86
    add-int/lit8 v6, v5, 0x1

    .line 87
    .line 88
    shr-int/lit8 v7, p1, 0x6

    .line 89
    .line 90
    and-int/2addr v7, v2

    .line 91
    or-int/2addr v7, v0

    .line 92
    int-to-byte v7, v7

    .line 93
    aput-byte v7, v4, v6

    .line 94
    .line 95
    add-int/lit8 v6, v5, 0x2

    .line 96
    .line 97
    and-int/2addr p1, v2

    .line 98
    or-int/2addr p1, v0

    .line 99
    int-to-byte p1, p1

    .line 100
    aput-byte p1, v4, v6

    .line 101
    .line 102
    add-int/2addr v5, v1

    .line 103
    iput v5, v3, Latak/core/Eh;->c:I

    .line 104
    .line 105
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 106
    .line 107
    const-wide/16 v2, 0x3

    .line 108
    .line 109
    add-long/2addr v0, v2

    .line 110
    iput-wide v0, p0, Latak/core/G1;->P:J

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    const v1, 0x10ffff

    .line 114
    .line 115
    .line 116
    if-gt p1, v1, :cond_5

    .line 117
    .line 118
    const/4 v1, 0x4

    .line 119
    invoke-virtual {p0, v1}, Latak/core/G1;->j(I)Latak/core/Eh;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    iget-object v4, v3, Latak/core/Eh;->a:[B

    .line 124
    .line 125
    iget v5, v3, Latak/core/Eh;->c:I

    .line 126
    .line 127
    shr-int/lit8 v6, p1, 0x12

    .line 128
    .line 129
    or-int/lit16 v6, v6, 0xf0

    .line 130
    .line 131
    int-to-byte v6, v6

    .line 132
    aput-byte v6, v4, v5

    .line 133
    .line 134
    add-int/lit8 v6, v5, 0x1

    .line 135
    .line 136
    shr-int/lit8 v7, p1, 0xc

    .line 137
    .line 138
    and-int/2addr v7, v2

    .line 139
    or-int/2addr v7, v0

    .line 140
    int-to-byte v7, v7

    .line 141
    aput-byte v7, v4, v6

    .line 142
    .line 143
    add-int/lit8 v6, v5, 0x2

    .line 144
    .line 145
    shr-int/lit8 v7, p1, 0x6

    .line 146
    .line 147
    and-int/2addr v7, v2

    .line 148
    or-int/2addr v7, v0

    .line 149
    int-to-byte v7, v7

    .line 150
    aput-byte v7, v4, v6

    .line 151
    .line 152
    add-int/lit8 v6, v5, 0x3

    .line 153
    .line 154
    and-int/2addr p1, v2

    .line 155
    or-int/2addr p1, v0

    .line 156
    int-to-byte p1, p1

    .line 157
    aput-byte p1, v4, v6

    .line 158
    .line 159
    add-int/2addr v5, v1

    .line 160
    iput v5, v3, Latak/core/Eh;->c:I

    .line 161
    .line 162
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 163
    .line 164
    const-wide/16 v2, 0x4

    .line 165
    .line 166
    add-long/2addr v0, v2

    .line 167
    iput-wide v0, p0, Latak/core/G1;->P:J

    .line 168
    .line 169
    :goto_1
    return-object p0

    .line 170
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 171
    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v2, "Unexpected code point: "

    .line 178
    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw v0
.end method

.method public bridge synthetic D(I)Latak/core/I1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Latak/core/G1;->m1(I)Latak/core/G1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final D0(Ljava/io/OutputStream;J)Latak/core/G1;
    .locals 8
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v6, 0x4

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-static/range {v0 .. v7}, Latak/core/G1;->H0(Latak/core/G1;Ljava/io/OutputStream;JJILjava/lang/Object;)Latak/core/G1;

    move-result-object p1

    return-object p1
.end method

.method public E(Latak/core/Gk;)J
    .locals 4
    .param p1    # Latak/core/Gk;
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
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    if-lez v2, :cond_0

    .line 13
    .line 14
    invoke-interface {p1, p0, v0, v1}, Latak/core/Gk;->write(Latak/core/G1;J)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-wide v0
.end method

.method public final E0(Ljava/io/OutputStream;JJ)Latak/core/G1;
    .locals 7
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "out"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Latak/core/G1;->P:J

    .line 7
    .line 8
    move-wide v3, p2

    .line 9
    move-wide v5, p4

    .line 10
    invoke-static/range {v1 .. v6}, Latakplugin/atos/c;->e(JJJ)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    cmp-long v2, p4, v0

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    iget-object v2, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 21
    .line 22
    :goto_0
    if-nez v2, :cond_1

    .line 23
    .line 24
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget v3, v2, Latak/core/Eh;->c:I

    .line 28
    .line 29
    iget v4, v2, Latak/core/Eh;->b:I

    .line 30
    .line 31
    sub-int v5, v3, v4

    .line 32
    .line 33
    int-to-long v5, v5

    .line 34
    cmp-long v5, p2, v5

    .line 35
    .line 36
    if-ltz v5, :cond_2

    .line 37
    .line 38
    sub-int/2addr v3, v4

    .line 39
    int-to-long v3, v3

    .line 40
    sub-long/2addr p2, v3

    .line 41
    iget-object v2, v2, Latak/core/Eh;->f:Latak/core/Eh;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    cmp-long v3, p4, v0

    .line 45
    .line 46
    if-lez v3, :cond_4

    .line 47
    .line 48
    if-nez v2, :cond_3

    .line 49
    .line 50
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 51
    .line 52
    .line 53
    :cond_3
    iget v3, v2, Latak/core/Eh;->b:I

    .line 54
    .line 55
    int-to-long v3, v3

    .line 56
    add-long/2addr v3, p2

    .line 57
    long-to-int p2, v3

    .line 58
    iget p3, v2, Latak/core/Eh;->c:I

    .line 59
    .line 60
    sub-int/2addr p3, p2

    .line 61
    int-to-long v3, p3

    .line 62
    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->min(JJ)J

    .line 63
    .line 64
    .line 65
    move-result-wide v3

    .line 66
    long-to-int p3, v3

    .line 67
    iget-object v3, v2, Latak/core/Eh;->a:[B

    .line 68
    .line 69
    invoke-virtual {p1, v3, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 70
    .line 71
    .line 72
    int-to-long p2, p3

    .line 73
    sub-long/2addr p4, p2

    .line 74
    iget-object v2, v2, Latak/core/Eh;->f:Latak/core/Eh;

    .line 75
    .line 76
    move-wide p2, v0

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    return-object p0
.end method

.method public F(BJ)J
    .locals 6

    .line 1
    const-wide v4, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move v1, p1

    .line 8
    move-wide v2, p2

    .line 9
    invoke-virtual/range {v0 .. v5}, Latak/core/G1;->G(BJJ)J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    return-wide p1
.end method

.method public G(BJJ)J
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, v0, p2

    .line 4
    .line 5
    if-gtz v2, :cond_10

    .line 6
    .line 7
    cmp-long v2, p4, p2

    .line 8
    .line 9
    if-ltz v2, :cond_10

    .line 10
    .line 11
    iget-wide v2, p0, Latak/core/G1;->P:J

    .line 12
    .line 13
    cmp-long v4, p4, v2

    .line 14
    .line 15
    if-lez v4, :cond_0

    .line 16
    .line 17
    move-wide p4, v2

    .line 18
    :cond_0
    cmp-long v2, p2, p4

    .line 19
    .line 20
    const-wide/16 v3, -0x1

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    return-wide v3

    .line 25
    :cond_1
    iget-object v2, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 26
    .line 27
    if-eqz v2, :cond_f

    .line 28
    .line 29
    invoke-virtual {p0}, Latak/core/G1;->size()J

    .line 30
    .line 31
    .line 32
    move-result-wide v5

    .line 33
    sub-long/2addr v5, p2

    .line 34
    cmp-long v5, v5, p2

    .line 35
    .line 36
    if-gez v5, :cond_8

    .line 37
    .line 38
    invoke-virtual {p0}, Latak/core/G1;->size()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    :goto_0
    cmp-long v5, v0, p2

    .line 43
    .line 44
    if-lez v5, :cond_3

    .line 45
    .line 46
    iget-object v2, v2, Latak/core/Eh;->g:Latak/core/Eh;

    .line 47
    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget v5, v2, Latak/core/Eh;->c:I

    .line 54
    .line 55
    iget v6, v2, Latak/core/Eh;->b:I

    .line 56
    .line 57
    sub-int/2addr v5, v6

    .line 58
    int-to-long v5, v5

    .line 59
    sub-long/2addr v0, v5

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    :goto_1
    cmp-long v5, v0, p4

    .line 62
    .line 63
    if-gez v5, :cond_7

    .line 64
    .line 65
    iget-object v5, v2, Latak/core/Eh;->a:[B

    .line 66
    .line 67
    iget v6, v2, Latak/core/Eh;->c:I

    .line 68
    .line 69
    int-to-long v6, v6

    .line 70
    iget v8, v2, Latak/core/Eh;->b:I

    .line 71
    .line 72
    int-to-long v8, v8

    .line 73
    add-long/2addr v8, p4

    .line 74
    sub-long/2addr v8, v0

    .line 75
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 76
    .line 77
    .line 78
    move-result-wide v6

    .line 79
    long-to-int v6, v6

    .line 80
    iget v7, v2, Latak/core/Eh;->b:I

    .line 81
    .line 82
    int-to-long v7, v7

    .line 83
    add-long/2addr v7, p2

    .line 84
    sub-long/2addr v7, v0

    .line 85
    long-to-int p2, v7

    .line 86
    :goto_2
    if-ge p2, v6, :cond_5

    .line 87
    .line 88
    aget-byte p3, v5, p2

    .line 89
    .line 90
    if-ne p3, p1, :cond_4

    .line 91
    .line 92
    :goto_3
    iget p1, v2, Latak/core/Eh;->b:I

    .line 93
    .line 94
    sub-int/2addr p2, p1

    .line 95
    int-to-long p1, p2

    .line 96
    add-long/2addr p1, v0

    .line 97
    return-wide p1

    .line 98
    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_5
    iget p2, v2, Latak/core/Eh;->c:I

    .line 102
    .line 103
    iget p3, v2, Latak/core/Eh;->b:I

    .line 104
    .line 105
    sub-int/2addr p2, p3

    .line 106
    int-to-long p2, p2

    .line 107
    add-long/2addr v0, p2

    .line 108
    iget-object v2, v2, Latak/core/Eh;->f:Latak/core/Eh;

    .line 109
    .line 110
    if-nez v2, :cond_6

    .line 111
    .line 112
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 113
    .line 114
    .line 115
    :cond_6
    move-wide p2, v0

    .line 116
    goto :goto_1

    .line 117
    :cond_7
    return-wide v3

    .line 118
    :cond_8
    :goto_4
    iget v5, v2, Latak/core/Eh;->c:I

    .line 119
    .line 120
    iget v6, v2, Latak/core/Eh;->b:I

    .line 121
    .line 122
    sub-int/2addr v5, v6

    .line 123
    int-to-long v5, v5

    .line 124
    add-long/2addr v5, v0

    .line 125
    cmp-long v7, v5, p2

    .line 126
    .line 127
    if-lez v7, :cond_d

    .line 128
    .line 129
    :goto_5
    cmp-long v5, v0, p4

    .line 130
    .line 131
    if-gez v5, :cond_c

    .line 132
    .line 133
    iget-object v5, v2, Latak/core/Eh;->a:[B

    .line 134
    .line 135
    iget v6, v2, Latak/core/Eh;->c:I

    .line 136
    .line 137
    int-to-long v6, v6

    .line 138
    iget v8, v2, Latak/core/Eh;->b:I

    .line 139
    .line 140
    int-to-long v8, v8

    .line 141
    add-long/2addr v8, p4

    .line 142
    sub-long/2addr v8, v0

    .line 143
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 144
    .line 145
    .line 146
    move-result-wide v6

    .line 147
    long-to-int v6, v6

    .line 148
    iget v7, v2, Latak/core/Eh;->b:I

    .line 149
    .line 150
    int-to-long v7, v7

    .line 151
    add-long/2addr v7, p2

    .line 152
    sub-long/2addr v7, v0

    .line 153
    long-to-int p2, v7

    .line 154
    :goto_6
    if-ge p2, v6, :cond_a

    .line 155
    .line 156
    aget-byte p3, v5, p2

    .line 157
    .line 158
    if-ne p3, p1, :cond_9

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_9
    add-int/lit8 p2, p2, 0x1

    .line 162
    .line 163
    goto :goto_6

    .line 164
    :cond_a
    iget p2, v2, Latak/core/Eh;->c:I

    .line 165
    .line 166
    iget p3, v2, Latak/core/Eh;->b:I

    .line 167
    .line 168
    sub-int/2addr p2, p3

    .line 169
    int-to-long p2, p2

    .line 170
    add-long/2addr v0, p2

    .line 171
    iget-object v2, v2, Latak/core/Eh;->f:Latak/core/Eh;

    .line 172
    .line 173
    if-nez v2, :cond_b

    .line 174
    .line 175
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 176
    .line 177
    .line 178
    :cond_b
    move-wide p2, v0

    .line 179
    goto :goto_5

    .line 180
    :cond_c
    return-wide v3

    .line 181
    :cond_d
    iget-object v2, v2, Latak/core/Eh;->f:Latak/core/Eh;

    .line 182
    .line 183
    if-nez v2, :cond_e

    .line 184
    .line 185
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 186
    .line 187
    .line 188
    :cond_e
    move-wide v0, v5

    .line 189
    goto :goto_4

    .line 190
    :cond_f
    return-wide v3

    .line 191
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v0, "size="

    .line 197
    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 202
    .line 203
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v0, " fromIndex="

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string p2, " toIndex="

    .line 215
    .line 216
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 227
    .line 228
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw p2
.end method

.method public H()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    invoke-virtual {p0, v0}, Latak/core/G1;->s0(B)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const-wide/16 v2, -0x1

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Latak/core/G1;->e(J)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 20
    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    cmp-long v2, v0, v2

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Latak/core/G1;->b(J)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0
.end method

.method public bridge synthetic I()Latak/core/I1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Latak/core/G1;->K0()Latak/core/G1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public J()J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_c

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const-wide/16 v4, -0x7

    .line 11
    .line 12
    move v1, v0

    .line 13
    move-wide v5, v4

    .line 14
    move-wide v3, v2

    .line 15
    move v2, v1

    .line 16
    :cond_0
    iget-object v7, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 17
    .line 18
    if-nez v7, :cond_1

    .line 19
    .line 20
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v8, v7, Latak/core/Eh;->a:[B

    .line 24
    .line 25
    iget v9, v7, Latak/core/Eh;->b:I

    .line 26
    .line 27
    iget v10, v7, Latak/core/Eh;->c:I

    .line 28
    .line 29
    :goto_0
    if-ge v9, v10, :cond_8

    .line 30
    .line 31
    aget-byte v11, v8, v9

    .line 32
    .line 33
    const/16 v12, 0x30

    .line 34
    .line 35
    int-to-byte v12, v12

    .line 36
    if-lt v11, v12, :cond_5

    .line 37
    .line 38
    const/16 v13, 0x39

    .line 39
    .line 40
    int-to-byte v13, v13

    .line 41
    if-gt v11, v13, :cond_5

    .line 42
    .line 43
    sub-int/2addr v12, v11

    .line 44
    const-wide v13, -0xcccccccccccccccL

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    cmp-long v13, v3, v13

    .line 50
    .line 51
    if-ltz v13, :cond_3

    .line 52
    .line 53
    if-nez v13, :cond_2

    .line 54
    .line 55
    int-to-long v13, v12

    .line 56
    cmp-long v13, v13, v5

    .line 57
    .line 58
    if-gez v13, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const-wide/16 v13, 0xa

    .line 62
    .line 63
    mul-long/2addr v3, v13

    .line 64
    int-to-long v11, v12

    .line 65
    add-long/2addr v3, v11

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    :goto_1
    new-instance v0, Latak/core/G1;

    .line 68
    .line 69
    invoke-direct {v0}, Latak/core/G1;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v3, v4}, Latak/core/G1;->n1(J)Latak/core/G1;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0, v11}, Latak/core/G1;->m1(I)Latak/core/G1;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-nez v1, :cond_4

    .line 81
    .line 82
    invoke-virtual {v0}, Latak/core/G1;->readByte()B

    .line 83
    .line 84
    .line 85
    :cond_4
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 86
    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v3, "Number too large: "

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Latak/core/G1;->e0()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v1

    .line 112
    :cond_5
    const/16 v12, 0x2d

    .line 113
    .line 114
    int-to-byte v12, v12

    .line 115
    const/4 v13, 0x1

    .line 116
    if-ne v11, v12, :cond_6

    .line 117
    .line 118
    if-nez v0, :cond_6

    .line 119
    .line 120
    const-wide/16 v11, 0x1

    .line 121
    .line 122
    sub-long/2addr v5, v11

    .line 123
    move v1, v13

    .line 124
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 125
    .line 126
    add-int/lit8 v0, v0, 0x1

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_6
    if-eqz v0, :cond_7

    .line 130
    .line 131
    move v2, v13

    .line 132
    goto :goto_3

    .line 133
    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 134
    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v2, "Expected leading [0-9] or \'-\' character but was 0x"

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw v0

    .line 160
    :cond_8
    :goto_3
    if-ne v9, v10, :cond_9

    .line 161
    .line 162
    invoke-virtual {v7}, Latak/core/Eh;->b()Latak/core/Eh;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    iput-object v8, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 167
    .line 168
    invoke-static {v7}, Latak/core/Fh;->d(Latak/core/Eh;)V

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_9
    iput v9, v7, Latak/core/Eh;->b:I

    .line 173
    .line 174
    :goto_4
    if-nez v2, :cond_a

    .line 175
    .line 176
    iget-object v7, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 177
    .line 178
    if-nez v7, :cond_0

    .line 179
    .line 180
    :cond_a
    iget-wide v5, p0, Latak/core/G1;->P:J

    .line 181
    .line 182
    int-to-long v7, v0

    .line 183
    sub-long/2addr v5, v7

    .line 184
    iput-wide v5, p0, Latak/core/G1;->P:J

    .line 185
    .line 186
    if-eqz v1, :cond_b

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_b
    neg-long v3, v3

    .line 190
    :goto_5
    return-wide v3

    .line 191
    :cond_c
    new-instance v0, Ljava/io/EOFException;

    .line 192
    .line 193
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 194
    .line 195
    .line 196
    throw v0
.end method

.method public J0()Latak/core/G1;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public K(J)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_3

    .line 6
    .line 7
    const-wide v0, 0x7fffffffffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long v2, p1, v0

    .line 13
    .line 14
    const-wide/16 v3, 0x1

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    add-long v0, p1, v3

    .line 20
    .line 21
    :goto_0
    const/16 v2, 0xa

    .line 22
    .line 23
    int-to-byte v2, v2

    .line 24
    const-wide/16 v7, 0x0

    .line 25
    .line 26
    move-object v5, p0

    .line 27
    move v6, v2

    .line 28
    move-wide v9, v0

    .line 29
    invoke-virtual/range {v5 .. v10}, Latak/core/G1;->G(BJJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide v5

    .line 33
    const-wide/16 v7, -0x1

    .line 34
    .line 35
    cmp-long v7, v5, v7

    .line 36
    .line 37
    if-eqz v7, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0, v5, v6}, Latak/core/G1;->e(J)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    :cond_1
    iget-wide v5, p0, Latak/core/G1;->P:J

    .line 45
    .line 46
    cmp-long v5, v0, v5

    .line 47
    .line 48
    if-gez v5, :cond_2

    .line 49
    .line 50
    sub-long v3, v0, v3

    .line 51
    .line 52
    invoke-virtual {p0, v3, v4}, Latak/core/G1;->L0(J)B

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const/16 v4, 0xd

    .line 57
    .line 58
    int-to-byte v4, v4

    .line 59
    if-ne v3, v4, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0, v0, v1}, Latak/core/G1;->L0(J)B

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-ne v3, v2, :cond_2

    .line 66
    .line 67
    invoke-virtual {p0, v0, v1}, Latak/core/G1;->e(J)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1

    .line 72
    :cond_2
    new-instance v6, Latak/core/G1;

    .line 73
    .line 74
    invoke-direct {v6}, Latak/core/G1;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 78
    .line 79
    const/16 v2, 0x20

    .line 80
    .line 81
    int-to-long v2, v2

    .line 82
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    const-wide/16 v2, 0x0

    .line 87
    .line 88
    move-object v0, p0

    .line 89
    move-object v1, v6

    .line 90
    invoke-virtual/range {v0 .. v5}, Latak/core/G1;->B0(Latak/core/G1;JJ)Latak/core/G1;

    .line 91
    .line 92
    .line 93
    new-instance v0, Ljava/io/EOFException;

    .line 94
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v2, "\\n not found: limit="

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-wide v2, p0, Latak/core/G1;->P:J

    .line 106
    .line 107
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 108
    .line 109
    .line 110
    move-result-wide p1

    .line 111
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string p1, " content="

    .line 115
    .line 116
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6}, Latak/core/G1;->W()Latak/core/M1;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1}, Latak/core/M1;->x()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const/16 p1, 0x2026

    .line 131
    .line 132
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v0

    .line 143
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v1, "limit < 0: "

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p2
.end method

.method public K0()Latak/core/G1;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public L(JLatak/core/M1;II)Z
    .locals 6
    .param p3    # Latak/core/M1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bytes"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v0, p1, v0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-ltz v0, :cond_3

    .line 12
    .line 13
    if-ltz p4, :cond_3

    .line 14
    .line 15
    if-ltz p5, :cond_3

    .line 16
    .line 17
    iget-wide v2, p0, Latak/core/G1;->P:J

    .line 18
    .line 19
    sub-long/2addr v2, p1

    .line 20
    int-to-long v4, p5

    .line 21
    cmp-long v0, v2, v4

    .line 22
    .line 23
    if-ltz v0, :cond_3

    .line 24
    .line 25
    invoke-virtual {p3}, Latak/core/M1;->c0()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    sub-int/2addr v0, p4

    .line 30
    if-ge v0, p5, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    move v0, v1

    .line 34
    :goto_0
    if-ge v0, p5, :cond_2

    .line 35
    .line 36
    int-to-long v2, v0

    .line 37
    add-long/2addr v2, p1

    .line 38
    invoke-virtual {p0, v2, v3}, Latak/core/G1;->L0(J)B

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    add-int v3, p4, v0

    .line 43
    .line 44
    invoke-virtual {p3, v3}, Latak/core/M1;->s(I)B

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eq v2, v3, :cond_1

    .line 49
    .line 50
    return v1

    .line 51
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 p1, 0x1

    .line 55
    return p1

    .line 56
    :cond_3
    :goto_1
    return v1
.end method

.method public final L0(J)B
    .locals 7
    .annotation build Lkotlin/jvm/JvmName;
        name = "getByte"
    .end annotation

    .line 1
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 2
    .line 3
    const-wide/16 v4, 0x1

    .line 4
    .line 5
    move-wide v2, p1

    .line 6
    invoke-static/range {v0 .. v5}, Latakplugin/atos/c;->e(JJJ)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 10
    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    invoke-virtual {p0}, Latak/core/G1;->size()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    sub-long/2addr v1, p1

    .line 18
    cmp-long v1, v1, p1

    .line 19
    .line 20
    if-gez v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Latak/core/G1;->size()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    :goto_0
    cmp-long v3, v1, p1

    .line 27
    .line 28
    if-lez v3, :cond_1

    .line 29
    .line 30
    iget-object v0, v0, Latak/core/Eh;->g:Latak/core/Eh;

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget v3, v0, Latak/core/Eh;->c:I

    .line 38
    .line 39
    iget v4, v0, Latak/core/Eh;->b:I

    .line 40
    .line 41
    sub-int/2addr v3, v4

    .line 42
    int-to-long v3, v3

    .line 43
    sub-long/2addr v1, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v3, v0, Latak/core/Eh;->a:[B

    .line 46
    .line 47
    iget v0, v0, Latak/core/Eh;->b:I

    .line 48
    .line 49
    int-to-long v4, v0

    .line 50
    add-long/2addr v4, p1

    .line 51
    sub-long/2addr v4, v1

    .line 52
    long-to-int p1, v4

    .line 53
    aget-byte p1, v3, p1

    .line 54
    .line 55
    return p1

    .line 56
    :cond_2
    const-wide/16 v1, 0x0

    .line 57
    .line 58
    :goto_1
    iget v3, v0, Latak/core/Eh;->c:I

    .line 59
    .line 60
    iget v4, v0, Latak/core/Eh;->b:I

    .line 61
    .line 62
    sub-int/2addr v3, v4

    .line 63
    int-to-long v5, v3

    .line 64
    add-long/2addr v5, v1

    .line 65
    cmp-long v3, v5, p1

    .line 66
    .line 67
    if-lez v3, :cond_3

    .line 68
    .line 69
    iget-object v0, v0, Latak/core/Eh;->a:[B

    .line 70
    .line 71
    int-to-long v3, v4

    .line 72
    add-long/2addr v3, p1

    .line 73
    sub-long/2addr v3, v1

    .line 74
    long-to-int p1, v3

    .line 75
    aget-byte p1, v0, p1

    .line 76
    .line 77
    return p1

    .line 78
    :cond_3
    iget-object v0, v0, Latak/core/Eh;->f:Latak/core/Eh;

    .line 79
    .line 80
    if-nez v0, :cond_4

    .line 81
    .line 82
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 83
    .line 84
    .line 85
    :cond_4
    move-wide v1, v5

    .line 86
    goto :goto_1

    .line 87
    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 88
    .line 89
    .line 90
    const/4 p1, 0x0

    .line 91
    throw p1
.end method

.method public M(Latak/core/M1;)J
    .locals 2
    .param p1    # Latak/core/M1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "bytes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0, v1}, Latak/core/G1;->l0(Latak/core/M1;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public bridge synthetic N(I)Latak/core/I1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Latak/core/G1;->u1(I)Latak/core/G1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final N0(Latak/core/M1;)Latak/core/M1;
    .locals 1
    .param p1    # Latak/core/M1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "HmacSHA1"

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Latak/core/G1;->M0(Ljava/lang/String;Latak/core/M1;)Latak/core/M1;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public bridge synthetic O(Ljava/lang/String;)Latak/core/I1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Latak/core/G1;->A1(Ljava/lang/String;)Latak/core/G1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final O0(Latak/core/M1;)Latak/core/M1;
    .locals 1
    .param p1    # Latak/core/M1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "HmacSHA256"

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Latak/core/G1;->M0(Ljava/lang/String;Latak/core/M1;)Latak/core/M1;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public P(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "charset"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1, p1}, Latak/core/G1;->g0(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final P0(Latak/core/M1;)Latak/core/M1;
    .locals 1
    .param p1    # Latak/core/M1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "HmacSHA512"

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Latak/core/G1;->M0(Ljava/lang/String;Latak/core/M1;)Latak/core/M1;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public bridge synthetic Q([BII)Latak/core/I1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Latak/core/G1;->l1([BII)Latak/core/G1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final Q0()Latak/core/M1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "MD5"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Latak/core/G1;->I0(Ljava/lang/String;)Latak/core/M1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public R()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_b

    .line 8
    .line 9
    invoke-virtual {p0, v2, v3}, Latak/core/G1;->L0(J)B

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    and-int/lit16 v1, v0, 0x80

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/16 v3, 0x80

    .line 17
    .line 18
    const v4, 0xfffd

    .line 19
    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    and-int/lit8 v1, v0, 0x7f

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    move v6, v5

    .line 27
    move v5, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    and-int/lit16 v1, v0, 0xe0

    .line 30
    .line 31
    const/16 v5, 0xc0

    .line 32
    .line 33
    if-ne v1, v5, :cond_1

    .line 34
    .line 35
    and-int/lit8 v1, v0, 0x1f

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    move v6, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    and-int/lit16 v1, v0, 0xf0

    .line 41
    .line 42
    const/16 v5, 0xe0

    .line 43
    .line 44
    if-ne v1, v5, :cond_2

    .line 45
    .line 46
    and-int/lit8 v1, v0, 0xf

    .line 47
    .line 48
    const/4 v5, 0x3

    .line 49
    const/16 v6, 0x800

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    and-int/lit16 v1, v0, 0xf8

    .line 53
    .line 54
    const/16 v5, 0xf0

    .line 55
    .line 56
    if-ne v1, v5, :cond_a

    .line 57
    .line 58
    and-int/lit8 v1, v0, 0x7

    .line 59
    .line 60
    const/4 v5, 0x4

    .line 61
    const/high16 v6, 0x10000

    .line 62
    .line 63
    :goto_0
    iget-wide v7, p0, Latak/core/G1;->P:J

    .line 64
    .line 65
    int-to-long v9, v5

    .line 66
    cmp-long v7, v7, v9

    .line 67
    .line 68
    if-ltz v7, :cond_9

    .line 69
    .line 70
    :goto_1
    if-ge v2, v5, :cond_4

    .line 71
    .line 72
    int-to-long v7, v2

    .line 73
    invoke-virtual {p0, v7, v8}, Latak/core/G1;->L0(J)B

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    and-int/lit16 v11, v0, 0xc0

    .line 78
    .line 79
    if-ne v11, v3, :cond_3

    .line 80
    .line 81
    shl-int/lit8 v1, v1, 0x6

    .line 82
    .line 83
    and-int/lit8 v0, v0, 0x3f

    .line 84
    .line 85
    or-int/2addr v1, v0

    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {p0, v7, v8}, Latak/core/G1;->skip(J)V

    .line 90
    .line 91
    .line 92
    return v4

    .line 93
    :cond_4
    invoke-virtual {p0, v9, v10}, Latak/core/G1;->skip(J)V

    .line 94
    .line 95
    .line 96
    const v0, 0x10ffff

    .line 97
    .line 98
    .line 99
    if-le v1, v0, :cond_5

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_5
    const v0, 0xd800

    .line 103
    .line 104
    .line 105
    if-le v0, v1, :cond_6

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_6
    const v0, 0xdfff

    .line 109
    .line 110
    .line 111
    if-lt v0, v1, :cond_7

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_7
    :goto_2
    if-ge v1, v6, :cond_8

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_8
    move v4, v1

    .line 118
    :goto_3
    return v4

    .line 119
    :cond_9
    new-instance v1, Ljava/io/EOFException;

    .line 120
    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v3, "size < "

    .line 127
    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v3, ": "

    .line 135
    .line 136
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-wide v3, p0, Latak/core/G1;->P:J

    .line 140
    .line 141
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v3, " (to read code point prefixed 0x"

    .line 145
    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v0, ")"

    .line 157
    .line 158
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v1

    .line 169
    :cond_a
    const-wide/16 v0, 0x1

    .line 170
    .line 171
    invoke-virtual {p0, v0, v1}, Latak/core/G1;->skip(J)V

    .line 172
    .line 173
    .line 174
    return v4

    .line 175
    :cond_b
    new-instance v0, Ljava/io/EOFException;

    .line 176
    .line 177
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 178
    .line 179
    .line 180
    throw v0
.end method

.method public final R0()Latak/core/G1$a;
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Latak/core/G1;->T0(Latak/core/G1;Latak/core/G1$a;ILjava/lang/Object;)Latak/core/G1$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic S(Latak/core/M1;)Latak/core/I1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Latak/core/G1;->h1(Latak/core/M1;)Latak/core/G1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final S0(Latak/core/G1$a;)Latak/core/G1$a;
    .locals 1
    .param p1    # Latak/core/G1$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "unsafeCursor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Latak/core/G1$a;->O:Latak/core/G1;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-object p0, p1, Latak/core/G1$a;->O:Latak/core/G1;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p1, Latak/core/G1$a;->P:Z

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "already attached to a buffer"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public bridge synthetic T(Ljava/lang/String;II)Latak/core/I1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Latak/core/G1;->B1(Ljava/lang/String;II)Latak/core/G1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic U(J)Latak/core/I1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Latak/core/G1;->o1(J)Latak/core/G1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final U0(Ljava/io/InputStream;)Latak/core/G1;
    .locals 3
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "input"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide v0, 0x7fffffffffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {p0, p1, v0, v1, v2}, Latak/core/G1;->W0(Ljava/io/InputStream;JZ)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public V(Latak/core/Pk;J)Latak/core/I1;
    .locals 4
    .param p1    # Latak/core/Pk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :goto_0
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v0, p2, v0

    .line 9
    .line 10
    if-lez v0, :cond_1

    .line 11
    .line 12
    invoke-interface {p1, p0, p2, p3}, Latak/core/Pk;->read(Latak/core/G1;J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    const-wide/16 v2, -0x1

    .line 17
    .line 18
    cmp-long v2, v0, v2

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    sub-long/2addr p2, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    return-object p0
.end method

.method public final V0(Ljava/io/InputStream;J)Latak/core/G1;
    .locals 2
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "input"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v0, p2, v0

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, p2, p3, v0}, Latak/core/G1;->W0(Ljava/io/InputStream;JZ)V

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v0, "byteCount < 0: "

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p2
.end method

.method public W()Latak/core/M1;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Latak/core/M1;

    .line 2
    .line 3
    invoke-virtual {p0}, Latak/core/G1;->A()[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Latak/core/M1;-><init>([B)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic X(Ljava/lang/String;Ljava/nio/charset/Charset;)Latak/core/I1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Latak/core/G1;->w1(Ljava/lang/String;Ljava/nio/charset/Charset;)Latak/core/G1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final X0()Latak/core/G1$a;
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Latak/core/G1;->Z0(Latak/core/G1;Latak/core/G1$a;ILjava/lang/Object;)Latak/core/G1$a;

    move-result-object v0

    return-object v0
.end method

.method public Y(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 2
    .line 3
    cmp-long p1, v0, p1

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public final Y0(Latak/core/G1$a;)Latak/core/G1$a;
    .locals 1
    .param p1    # Latak/core/G1$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "unsafeCursor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Latak/core/G1$a;->O:Latak/core/G1;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-object p0, p1, Latak/core/G1$a;->O:Latak/core/G1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p1, Latak/core/G1$a;->P:Z

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "already attached to a buffer"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public final a(J)B
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to operator function"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this[index]"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_getByte"
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Latak/core/G1;->L0(J)B

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public a0(Latak/core/M1;J)J
    .locals 11
    .param p1    # Latak/core/M1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "targetBytes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p2, v0

    .line 9
    .line 10
    if-ltz v2, :cond_19

    .line 11
    .line 12
    iget-object v2, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 13
    .line 14
    const-wide/16 v3, -0x1

    .line 15
    .line 16
    if-eqz v2, :cond_18

    .line 17
    .line 18
    invoke-virtual {p0}, Latak/core/G1;->size()J

    .line 19
    .line 20
    .line 21
    move-result-wide v5

    .line 22
    sub-long/2addr v5, p2

    .line 23
    cmp-long v5, v5, p2

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v8, 0x1

    .line 28
    if-gez v5, :cond_c

    .line 29
    .line 30
    invoke-virtual {p0}, Latak/core/G1;->size()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    :goto_0
    cmp-long v5, v0, p2

    .line 35
    .line 36
    if-lez v5, :cond_1

    .line 37
    .line 38
    iget-object v2, v2, Latak/core/Eh;->g:Latak/core/Eh;

    .line 39
    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget v5, v2, Latak/core/Eh;->c:I

    .line 46
    .line 47
    iget v9, v2, Latak/core/Eh;->b:I

    .line 48
    .line 49
    sub-int/2addr v5, v9

    .line 50
    int-to-long v9, v5

    .line 51
    sub-long/2addr v0, v9

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p1}, Latak/core/M1;->c0()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-ne v5, v6, :cond_6

    .line 58
    .line 59
    invoke-virtual {p1, v7}, Latak/core/M1;->s(I)B

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-virtual {p1, v8}, Latak/core/M1;->s(I)B

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    :goto_1
    iget-wide v6, p0, Latak/core/G1;->P:J

    .line 68
    .line 69
    cmp-long v6, v0, v6

    .line 70
    .line 71
    if-gez v6, :cond_b

    .line 72
    .line 73
    iget-object v6, v2, Latak/core/Eh;->a:[B

    .line 74
    .line 75
    iget v7, v2, Latak/core/Eh;->b:I

    .line 76
    .line 77
    int-to-long v7, v7

    .line 78
    add-long/2addr v7, p2

    .line 79
    sub-long/2addr v7, v0

    .line 80
    long-to-int p2, v7

    .line 81
    iget p3, v2, Latak/core/Eh;->c:I

    .line 82
    .line 83
    :goto_2
    if-ge p2, p3, :cond_4

    .line 84
    .line 85
    aget-byte v7, v6, p2

    .line 86
    .line 87
    if-eq v7, v5, :cond_3

    .line 88
    .line 89
    if-ne v7, p1, :cond_2

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    :goto_3
    iget p1, v2, Latak/core/Eh;->b:I

    .line 96
    .line 97
    :goto_4
    sub-int/2addr p2, p1

    .line 98
    int-to-long p1, p2

    .line 99
    add-long/2addr p1, v0

    .line 100
    return-wide p1

    .line 101
    :cond_4
    iget p2, v2, Latak/core/Eh;->c:I

    .line 102
    .line 103
    iget p3, v2, Latak/core/Eh;->b:I

    .line 104
    .line 105
    sub-int/2addr p2, p3

    .line 106
    int-to-long p2, p2

    .line 107
    add-long/2addr v0, p2

    .line 108
    iget-object v2, v2, Latak/core/Eh;->f:Latak/core/Eh;

    .line 109
    .line 110
    if-nez v2, :cond_5

    .line 111
    .line 112
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 113
    .line 114
    .line 115
    :cond_5
    move-wide p2, v0

    .line 116
    goto :goto_1

    .line 117
    :cond_6
    invoke-virtual {p1}, Latak/core/M1;->t()[B

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    :goto_5
    iget-wide v5, p0, Latak/core/G1;->P:J

    .line 122
    .line 123
    cmp-long v5, v0, v5

    .line 124
    .line 125
    if-gez v5, :cond_b

    .line 126
    .line 127
    iget-object v5, v2, Latak/core/Eh;->a:[B

    .line 128
    .line 129
    iget v6, v2, Latak/core/Eh;->b:I

    .line 130
    .line 131
    int-to-long v8, v6

    .line 132
    add-long/2addr v8, p2

    .line 133
    sub-long/2addr v8, v0

    .line 134
    long-to-int p2, v8

    .line 135
    iget p3, v2, Latak/core/Eh;->c:I

    .line 136
    .line 137
    :goto_6
    if-ge p2, p3, :cond_9

    .line 138
    .line 139
    aget-byte v6, v5, p2

    .line 140
    .line 141
    array-length v8, p1

    .line 142
    move v9, v7

    .line 143
    :goto_7
    if-ge v9, v8, :cond_8

    .line 144
    .line 145
    aget-byte v10, p1, v9

    .line 146
    .line 147
    if-ne v6, v10, :cond_7

    .line 148
    .line 149
    :goto_8
    iget p1, v2, Latak/core/Eh;->b:I

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_7
    add-int/lit8 v9, v9, 0x1

    .line 153
    .line 154
    goto :goto_7

    .line 155
    :cond_8
    add-int/lit8 p2, p2, 0x1

    .line 156
    .line 157
    goto :goto_6

    .line 158
    :cond_9
    iget p2, v2, Latak/core/Eh;->c:I

    .line 159
    .line 160
    iget p3, v2, Latak/core/Eh;->b:I

    .line 161
    .line 162
    sub-int/2addr p2, p3

    .line 163
    int-to-long p2, p2

    .line 164
    add-long/2addr v0, p2

    .line 165
    iget-object v2, v2, Latak/core/Eh;->f:Latak/core/Eh;

    .line 166
    .line 167
    if-nez v2, :cond_a

    .line 168
    .line 169
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 170
    .line 171
    .line 172
    :cond_a
    move-wide p2, v0

    .line 173
    goto :goto_5

    .line 174
    :cond_b
    return-wide v3

    .line 175
    :cond_c
    :goto_9
    iget v5, v2, Latak/core/Eh;->c:I

    .line 176
    .line 177
    iget v9, v2, Latak/core/Eh;->b:I

    .line 178
    .line 179
    sub-int/2addr v5, v9

    .line 180
    int-to-long v9, v5

    .line 181
    add-long/2addr v9, v0

    .line 182
    cmp-long v5, v9, p2

    .line 183
    .line 184
    if-lez v5, :cond_16

    .line 185
    .line 186
    invoke-virtual {p1}, Latak/core/M1;->c0()I

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    if-ne v5, v6, :cond_10

    .line 191
    .line 192
    invoke-virtual {p1, v7}, Latak/core/M1;->s(I)B

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    invoke-virtual {p1, v8}, Latak/core/M1;->s(I)B

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    :goto_a
    iget-wide v6, p0, Latak/core/G1;->P:J

    .line 201
    .line 202
    cmp-long v6, v0, v6

    .line 203
    .line 204
    if-gez v6, :cond_15

    .line 205
    .line 206
    iget-object v6, v2, Latak/core/Eh;->a:[B

    .line 207
    .line 208
    iget v7, v2, Latak/core/Eh;->b:I

    .line 209
    .line 210
    int-to-long v7, v7

    .line 211
    add-long/2addr v7, p2

    .line 212
    sub-long/2addr v7, v0

    .line 213
    long-to-int p2, v7

    .line 214
    iget p3, v2, Latak/core/Eh;->c:I

    .line 215
    .line 216
    :goto_b
    if-ge p2, p3, :cond_e

    .line 217
    .line 218
    aget-byte v7, v6, p2

    .line 219
    .line 220
    if-eq v7, v5, :cond_3

    .line 221
    .line 222
    if-ne v7, p1, :cond_d

    .line 223
    .line 224
    goto/16 :goto_3

    .line 225
    .line 226
    :cond_d
    add-int/lit8 p2, p2, 0x1

    .line 227
    .line 228
    goto :goto_b

    .line 229
    :cond_e
    iget p2, v2, Latak/core/Eh;->c:I

    .line 230
    .line 231
    iget p3, v2, Latak/core/Eh;->b:I

    .line 232
    .line 233
    sub-int/2addr p2, p3

    .line 234
    int-to-long p2, p2

    .line 235
    add-long/2addr v0, p2

    .line 236
    iget-object v2, v2, Latak/core/Eh;->f:Latak/core/Eh;

    .line 237
    .line 238
    if-nez v2, :cond_f

    .line 239
    .line 240
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 241
    .line 242
    .line 243
    :cond_f
    move-wide p2, v0

    .line 244
    goto :goto_a

    .line 245
    :cond_10
    invoke-virtual {p1}, Latak/core/M1;->t()[B

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    :goto_c
    iget-wide v5, p0, Latak/core/G1;->P:J

    .line 250
    .line 251
    cmp-long v5, v0, v5

    .line 252
    .line 253
    if-gez v5, :cond_15

    .line 254
    .line 255
    iget-object v5, v2, Latak/core/Eh;->a:[B

    .line 256
    .line 257
    iget v6, v2, Latak/core/Eh;->b:I

    .line 258
    .line 259
    int-to-long v8, v6

    .line 260
    add-long/2addr v8, p2

    .line 261
    sub-long/2addr v8, v0

    .line 262
    long-to-int p2, v8

    .line 263
    iget p3, v2, Latak/core/Eh;->c:I

    .line 264
    .line 265
    :goto_d
    if-ge p2, p3, :cond_13

    .line 266
    .line 267
    aget-byte v6, v5, p2

    .line 268
    .line 269
    array-length v8, p1

    .line 270
    move v9, v7

    .line 271
    :goto_e
    if-ge v9, v8, :cond_12

    .line 272
    .line 273
    aget-byte v10, p1, v9

    .line 274
    .line 275
    if-ne v6, v10, :cond_11

    .line 276
    .line 277
    goto/16 :goto_8

    .line 278
    .line 279
    :cond_11
    add-int/lit8 v9, v9, 0x1

    .line 280
    .line 281
    goto :goto_e

    .line 282
    :cond_12
    add-int/lit8 p2, p2, 0x1

    .line 283
    .line 284
    goto :goto_d

    .line 285
    :cond_13
    iget p2, v2, Latak/core/Eh;->c:I

    .line 286
    .line 287
    iget p3, v2, Latak/core/Eh;->b:I

    .line 288
    .line 289
    sub-int/2addr p2, p3

    .line 290
    int-to-long p2, p2

    .line 291
    add-long/2addr v0, p2

    .line 292
    iget-object v2, v2, Latak/core/Eh;->f:Latak/core/Eh;

    .line 293
    .line 294
    if-nez v2, :cond_14

    .line 295
    .line 296
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 297
    .line 298
    .line 299
    :cond_14
    move-wide p2, v0

    .line 300
    goto :goto_c

    .line 301
    :cond_15
    return-wide v3

    .line 302
    :cond_16
    iget-object v2, v2, Latak/core/Eh;->f:Latak/core/Eh;

    .line 303
    .line 304
    if-nez v2, :cond_17

    .line 305
    .line 306
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 307
    .line 308
    .line 309
    :cond_17
    move-wide v0, v9

    .line 310
    goto/16 :goto_9

    .line 311
    .line 312
    :cond_18
    return-wide v3

    .line 313
    :cond_19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .line 317
    .line 318
    const-string v0, "fromIndex < 0: "

    .line 319
    .line 320
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 331
    .line 332
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    throw p2
.end method

.method public b(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Latak/core/G1;->g0(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b0()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Latak/core/G1;->K(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public final b1()Latak/core/M1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "SHA-1"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Latak/core/G1;->I0(Ljava/lang/String;)Latak/core/M1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c(J)Latak/core/M1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Latak/core/M1;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Latak/core/G1;->d0(J)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Latak/core/M1;-><init>([B)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public c0()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Latak/core/G1;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Latakplugin/atos/c;->h(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final c1()Latak/core/M1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "SHA-256"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Latak/core/G1;->I0(Ljava/lang/String;)Latak/core/M1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Latak/core/G1;->x0()Latak/core/G1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public d(Latak/core/G1;J)V
    .locals 3
    .param p1    # Latak/core/G1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
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
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 7
    .line 8
    cmp-long v2, v0, p2

    .line 9
    .line 10
    if-ltz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, p0, p2, p3}, Latak/core/G1;->write(Latak/core/G1;J)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p1, p0, v0, v1}, Latak/core/G1;->write(Latak/core/G1;J)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Ljava/io/EOFException;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public d0(J)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_1

    .line 6
    .line 7
    const v0, 0x7fffffff

    .line 8
    .line 9
    .line 10
    int-to-long v0, v0

    .line 11
    cmp-long v0, p1, v0

    .line 12
    .line 13
    if-gtz v0, :cond_1

    .line 14
    .line 15
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 16
    .line 17
    cmp-long v0, v0, p1

    .line 18
    .line 19
    if-ltz v0, :cond_0

    .line 20
    .line 21
    long-to-int p1, p1

    .line 22
    new-array p1, p1, [B

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Latak/core/G1;->readFully([B)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v1, "byteCount: "

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p2
.end method

.method public final d1()Latak/core/M1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "SHA-512"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Latak/core/G1;->I0(Ljava/lang/String;)Latak/core/M1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final e(J)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    const-wide/16 v1, 0x1

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    sub-long v3, p1, v1

    .line 10
    .line 11
    invoke-virtual {p0, v3, v4}, Latak/core/G1;->L0(J)B

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v5, 0xd

    .line 16
    .line 17
    int-to-byte v5, v5

    .line 18
    if-ne v0, v5, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v3, v4}, Latak/core/G1;->b(J)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-wide/16 v0, 0x2

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Latak/core/G1;->skip(J)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0, p1, p2}, Latak/core/G1;->b(J)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, v1, v2}, Latak/core/G1;->skip(J)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-object p1
.end method

.method public e0()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 2
    .line 3
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Latak/core/G1;->g0(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final e1()Latak/core/M1;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 2
    .line 3
    const v2, 0x7fffffff

    .line 4
    .line 5
    .line 6
    int-to-long v2, v2

    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-gtz v2, :cond_0

    .line 10
    .line 11
    long-to-int v0, v0

    .line 12
    invoke-virtual {p0, v0}, Latak/core/G1;->f1(I)Latak/core/M1;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "size > Integer.MAX_VALUE: "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-wide v1, p0, Latak/core/G1;->P:J

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 18
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    instance-of v3, v1, Latak/core/G1;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v3, :cond_1

    .line 13
    .line 14
    return v4

    .line 15
    :cond_1
    iget-wide v5, v0, Latak/core/G1;->P:J

    .line 16
    .line 17
    check-cast v1, Latak/core/G1;

    .line 18
    .line 19
    iget-wide v7, v1, Latak/core/G1;->P:J

    .line 20
    .line 21
    cmp-long v3, v5, v7

    .line 22
    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    return v4

    .line 26
    :cond_2
    const-wide/16 v7, 0x0

    .line 27
    .line 28
    cmp-long v3, v5, v7

    .line 29
    .line 30
    if-nez v3, :cond_3

    .line 31
    .line 32
    return v2

    .line 33
    :cond_3
    iget-object v3, v0, Latak/core/G1;->O:Latak/core/Eh;

    .line 34
    .line 35
    if-nez v3, :cond_4

    .line 36
    .line 37
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 38
    .line 39
    .line 40
    :cond_4
    iget-object v1, v1, Latak/core/G1;->O:Latak/core/Eh;

    .line 41
    .line 42
    if-nez v1, :cond_5

    .line 43
    .line 44
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 45
    .line 46
    .line 47
    :cond_5
    iget v5, v3, Latak/core/Eh;->b:I

    .line 48
    .line 49
    iget v6, v1, Latak/core/Eh;->b:I

    .line 50
    .line 51
    move-wide v9, v7

    .line 52
    :goto_0
    iget-wide v11, v0, Latak/core/G1;->P:J

    .line 53
    .line 54
    cmp-long v11, v9, v11

    .line 55
    .line 56
    if-gez v11, :cond_c

    .line 57
    .line 58
    iget v11, v3, Latak/core/Eh;->c:I

    .line 59
    .line 60
    sub-int/2addr v11, v5

    .line 61
    iget v12, v1, Latak/core/Eh;->c:I

    .line 62
    .line 63
    sub-int/2addr v12, v6

    .line 64
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    int-to-long v11, v11

    .line 69
    move-wide v13, v7

    .line 70
    :goto_1
    cmp-long v15, v13, v11

    .line 71
    .line 72
    if-gez v15, :cond_7

    .line 73
    .line 74
    iget-object v15, v3, Latak/core/Eh;->a:[B

    .line 75
    .line 76
    add-int/lit8 v16, v5, 0x1

    .line 77
    .line 78
    aget-byte v5, v15, v5

    .line 79
    .line 80
    iget-object v15, v1, Latak/core/Eh;->a:[B

    .line 81
    .line 82
    add-int/lit8 v17, v6, 0x1

    .line 83
    .line 84
    aget-byte v6, v15, v6

    .line 85
    .line 86
    if-eq v5, v6, :cond_6

    .line 87
    .line 88
    return v4

    .line 89
    :cond_6
    const-wide/16 v5, 0x1

    .line 90
    .line 91
    add-long/2addr v13, v5

    .line 92
    move/from16 v5, v16

    .line 93
    .line 94
    move/from16 v6, v17

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_7
    iget v13, v3, Latak/core/Eh;->c:I

    .line 98
    .line 99
    if-ne v5, v13, :cond_9

    .line 100
    .line 101
    iget-object v3, v3, Latak/core/Eh;->f:Latak/core/Eh;

    .line 102
    .line 103
    if-nez v3, :cond_8

    .line 104
    .line 105
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 106
    .line 107
    .line 108
    :cond_8
    iget v5, v3, Latak/core/Eh;->b:I

    .line 109
    .line 110
    :cond_9
    iget v13, v1, Latak/core/Eh;->c:I

    .line 111
    .line 112
    if-ne v6, v13, :cond_b

    .line 113
    .line 114
    iget-object v1, v1, Latak/core/Eh;->f:Latak/core/Eh;

    .line 115
    .line 116
    if-nez v1, :cond_a

    .line 117
    .line 118
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 119
    .line 120
    .line 121
    :cond_a
    iget v6, v1, Latak/core/Eh;->b:I

    .line 122
    .line 123
    :cond_b
    add-long/2addr v9, v11

    .line 124
    goto :goto_0

    .line 125
    :cond_c
    return v2
.end method

.method public bridge synthetic f0([B)Latak/core/I1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Latak/core/G1;->k1([B)Latak/core/G1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final f1(I)Latak/core/M1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Latak/core/M1;->T:Latak/core/M1;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Latak/core/Gh;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Latak/core/Gh;-><init>(Latak/core/G1;I)V

    .line 9
    .line 10
    .line 11
    move-object p1, v0

    .line 12
    :goto_0
    return-object p1
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public final g(Latak/core/W9;Z)I
    .locals 17
    .param p1    # Latak/core/W9;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "options"

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    move-object/from16 v0, p0

    .line 9
    .line 10
    iget-object v2, v0, Latak/core/G1;->O:Latak/core/Eh;

    .line 11
    .line 12
    const/4 v3, -0x2

    .line 13
    const/4 v4, -0x1

    .line 14
    if-eqz v2, :cond_12

    .line 15
    .line 16
    iget-object v5, v2, Latak/core/Eh;->a:[B

    .line 17
    .line 18
    iget v6, v2, Latak/core/Eh;->b:I

    .line 19
    .line 20
    iget v7, v2, Latak/core/Eh;->c:I

    .line 21
    .line 22
    invoke-virtual/range {p1 .. p1}, Latak/core/W9;->d()[I

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v8, 0x0

    .line 27
    move-object v10, v2

    .line 28
    move v11, v4

    .line 29
    move v9, v8

    .line 30
    :goto_0
    add-int/lit8 v12, v9, 0x1

    .line 31
    .line 32
    aget v13, v1, v9

    .line 33
    .line 34
    add-int/lit8 v9, v9, 0x2

    .line 35
    .line 36
    aget v12, v1, v12

    .line 37
    .line 38
    if-eq v12, v4, :cond_0

    .line 39
    .line 40
    move v11, v12

    .line 41
    :cond_0
    if-nez v10, :cond_1

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_1
    const/4 v12, 0x0

    .line 45
    if-gez v13, :cond_b

    .line 46
    .line 47
    mul-int/lit8 v13, v13, -0x1

    .line 48
    .line 49
    add-int v14, v9, v13

    .line 50
    .line 51
    :goto_1
    add-int/lit8 v13, v6, 0x1

    .line 52
    .line 53
    aget-byte v6, v5, v6

    .line 54
    .line 55
    and-int/lit16 v6, v6, 0xff

    .line 56
    .line 57
    add-int/lit8 v15, v9, 0x1

    .line 58
    .line 59
    aget v9, v1, v9

    .line 60
    .line 61
    if-eq v6, v9, :cond_2

    .line 62
    .line 63
    return v11

    .line 64
    :cond_2
    if-ne v15, v14, :cond_3

    .line 65
    .line 66
    const/4 v6, 0x1

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    move v6, v8

    .line 69
    :goto_2
    if-ne v13, v7, :cond_9

    .line 70
    .line 71
    if-nez v10, :cond_4

    .line 72
    .line 73
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 74
    .line 75
    .line 76
    :cond_4
    iget-object v5, v10, Latak/core/Eh;->f:Latak/core/Eh;

    .line 77
    .line 78
    if-nez v5, :cond_5

    .line 79
    .line 80
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 81
    .line 82
    .line 83
    :cond_5
    iget v7, v5, Latak/core/Eh;->b:I

    .line 84
    .line 85
    iget-object v9, v5, Latak/core/Eh;->a:[B

    .line 86
    .line 87
    iget v10, v5, Latak/core/Eh;->c:I

    .line 88
    .line 89
    if-ne v5, v2, :cond_8

    .line 90
    .line 91
    if-nez v6, :cond_7

    .line 92
    .line 93
    :goto_3
    if-eqz p2, :cond_6

    .line 94
    .line 95
    return v3

    .line 96
    :cond_6
    return v11

    .line 97
    :cond_7
    move-object v5, v9

    .line 98
    move-object v9, v12

    .line 99
    goto :goto_4

    .line 100
    :cond_8
    move-object/from16 v16, v9

    .line 101
    .line 102
    move-object v9, v5

    .line 103
    move-object/from16 v5, v16

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_9
    move-object v9, v10

    .line 107
    move v10, v7

    .line 108
    move v7, v13

    .line 109
    :goto_4
    if-eqz v6, :cond_a

    .line 110
    .line 111
    aget v6, v1, v15

    .line 112
    .line 113
    move v3, v7

    .line 114
    move v7, v10

    .line 115
    move-object v10, v9

    .line 116
    goto :goto_6

    .line 117
    :cond_a
    move v6, v7

    .line 118
    move v7, v10

    .line 119
    move-object v10, v9

    .line 120
    move v9, v15

    .line 121
    goto :goto_1

    .line 122
    :cond_b
    add-int/lit8 v14, v6, 0x1

    .line 123
    .line 124
    aget-byte v6, v5, v6

    .line 125
    .line 126
    and-int/lit16 v6, v6, 0xff

    .line 127
    .line 128
    add-int v15, v9, v13

    .line 129
    .line 130
    :goto_5
    if-ne v9, v15, :cond_c

    .line 131
    .line 132
    return v11

    .line 133
    :cond_c
    aget v3, v1, v9

    .line 134
    .line 135
    if-ne v6, v3, :cond_11

    .line 136
    .line 137
    add-int/2addr v9, v13

    .line 138
    aget v6, v1, v9

    .line 139
    .line 140
    if-ne v14, v7, :cond_e

    .line 141
    .line 142
    iget-object v10, v10, Latak/core/Eh;->f:Latak/core/Eh;

    .line 143
    .line 144
    if-nez v10, :cond_d

    .line 145
    .line 146
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 147
    .line 148
    .line 149
    :cond_d
    iget v3, v10, Latak/core/Eh;->b:I

    .line 150
    .line 151
    iget-object v5, v10, Latak/core/Eh;->a:[B

    .line 152
    .line 153
    iget v7, v10, Latak/core/Eh;->c:I

    .line 154
    .line 155
    if-ne v10, v2, :cond_f

    .line 156
    .line 157
    move-object v10, v12

    .line 158
    goto :goto_6

    .line 159
    :cond_e
    move v3, v14

    .line 160
    :cond_f
    :goto_6
    if-ltz v6, :cond_10

    .line 161
    .line 162
    return v6

    .line 163
    :cond_10
    neg-int v9, v6

    .line 164
    move v6, v3

    .line 165
    const/4 v3, -0x2

    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :cond_11
    add-int/lit8 v9, v9, 0x1

    .line 169
    .line 170
    const/4 v3, -0x2

    .line 171
    goto :goto_5

    .line 172
    :cond_12
    if-eqz p2, :cond_13

    .line 173
    .line 174
    const/4 v3, -0x2

    .line 175
    goto :goto_7

    .line 176
    :cond_13
    move v3, v4

    .line 177
    :goto_7
    return v3
.end method

.method public g0(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6
    .param p3    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "charset"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v0, p1, v0

    .line 9
    .line 10
    if-ltz v0, :cond_5

    .line 11
    .line 12
    const v1, 0x7fffffff

    .line 13
    .line 14
    .line 15
    int-to-long v1, v1

    .line 16
    cmp-long v1, p1, v1

    .line 17
    .line 18
    if-gtz v1, :cond_5

    .line 19
    .line 20
    iget-wide v1, p0, Latak/core/G1;->P:J

    .line 21
    .line 22
    cmp-long v1, v1, p1

    .line 23
    .line 24
    if-ltz v1, :cond_4

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const-string p1, ""

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_0
    iget-object v0, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget v1, v0, Latak/core/Eh;->b:I

    .line 39
    .line 40
    int-to-long v2, v1

    .line 41
    add-long/2addr v2, p1

    .line 42
    iget v4, v0, Latak/core/Eh;->c:I

    .line 43
    .line 44
    int-to-long v4, v4

    .line 45
    cmp-long v2, v2, v4

    .line 46
    .line 47
    if-lez v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0, p1, p2}, Latak/core/G1;->d0(J)[B

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance p2, Ljava/lang/String;

    .line 54
    .line 55
    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 56
    .line 57
    .line 58
    return-object p2

    .line 59
    :cond_2
    iget-object v2, v0, Latak/core/Eh;->a:[B

    .line 60
    .line 61
    long-to-int v3, p1

    .line 62
    new-instance v4, Ljava/lang/String;

    .line 63
    .line 64
    invoke-direct {v4, v2, v1, v3, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 65
    .line 66
    .line 67
    iget p3, v0, Latak/core/Eh;->b:I

    .line 68
    .line 69
    add-int/2addr p3, v3

    .line 70
    iput p3, v0, Latak/core/Eh;->b:I

    .line 71
    .line 72
    iget-wide v1, p0, Latak/core/G1;->P:J

    .line 73
    .line 74
    sub-long/2addr v1, p1

    .line 75
    iput-wide v1, p0, Latak/core/G1;->P:J

    .line 76
    .line 77
    iget p1, v0, Latak/core/Eh;->c:I

    .line 78
    .line 79
    if-ne p3, p1, :cond_3

    .line 80
    .line 81
    invoke-virtual {v0}, Latak/core/Eh;->b()Latak/core/Eh;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 86
    .line 87
    invoke-static {v0}, Latak/core/Fh;->d(Latak/core/Eh;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    return-object v4

    .line 91
    :cond_4
    new-instance p1, Ljava/io/EOFException;

    .line 92
    .line 93
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 94
    .line 95
    .line 96
    throw p1

    .line 97
    :cond_5
    new-instance p3, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v0, "byteCount: "

    .line 103
    .line 104
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p2
.end method

.method public h0(Latak/core/Pk;)J
    .locals 6
    .param p1    # Latak/core/Pk;
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
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    :goto_0
    const/16 v2, 0x2000

    .line 9
    .line 10
    int-to-long v2, v2

    .line 11
    invoke-interface {p1, p0, v2, v3}, Latak/core/Pk;->read(Latak/core/G1;J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    const-wide/16 v4, -0x1

    .line 16
    .line 17
    cmp-long v4, v2, v4

    .line 18
    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    return-wide v0

    .line 22
    :cond_0
    add-long/2addr v0, v2

    .line 23
    goto :goto_0
.end method

.method public h1(Latak/core/M1;)Latak/core/G1;
    .locals 1
    .param p1    # Latak/core/M1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "byteString"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p0}, Latak/core/M1;->y(Latak/core/G1;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    :cond_0
    iget v2, v0, Latak/core/Eh;->b:I

    .line 7
    .line 8
    iget v3, v0, Latak/core/Eh;->c:I

    .line 9
    .line 10
    :goto_0
    if-ge v2, v3, :cond_1

    .line 11
    .line 12
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    .line 14
    iget-object v4, v0, Latak/core/Eh;->a:[B

    .line 15
    .line 16
    aget-byte v4, v4, v2

    .line 17
    .line 18
    add-int/2addr v1, v4

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, v0, Latak/core/Eh;->f:Latak/core/Eh;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 27
    .line 28
    .line 29
    :cond_2
    iget-object v2, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 30
    .line 31
    if-ne v0, v2, :cond_0

    .line 32
    .line 33
    return v1

    .line 34
    :cond_3
    const/4 v0, 0x0

    .line 35
    return v0
.end method

.method public final i(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Latak/core/G1;->P:J

    .line 2
    .line 3
    return-void
.end method

.method public i0()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Latak/core/G1;->readShort()S

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Latakplugin/atos/c;->j(S)S

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j(I)Latak/core/Eh;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_5

    .line 3
    .line 4
    const/16 v0, 0x2000

    .line 5
    .line 6
    if-gt p1, v0, :cond_5

    .line 7
    .line 8
    iget-object v1, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Latak/core/Fh;->e()Latak/core/Eh;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 17
    .line 18
    iput-object p1, p1, Latak/core/Eh;->g:Latak/core/Eh;

    .line 19
    .line 20
    iput-object p1, p1, Latak/core/Eh;->f:Latak/core/Eh;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    if-nez v1, :cond_1

    .line 24
    .line 25
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v1, v1, Latak/core/Eh;->g:Latak/core/Eh;

    .line 29
    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget v2, v1, Latak/core/Eh;->c:I

    .line 36
    .line 37
    add-int/2addr v2, p1

    .line 38
    if-gt v2, v0, :cond_3

    .line 39
    .line 40
    iget-boolean p1, v1, Latak/core/Eh;->e:Z

    .line 41
    .line 42
    if-nez p1, :cond_4

    .line 43
    .line 44
    :cond_3
    invoke-static {}, Latak/core/Fh;->e()Latak/core/Eh;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v1, p1}, Latak/core/Eh;->c(Latak/core/Eh;)Latak/core/Eh;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :cond_4
    return-object v1

    .line 53
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    const-string v0, "unexpected capacity"

    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public j0(Latak/core/W9;)I
    .locals 3
    .param p1    # Latak/core/W9;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "options"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p0, p1, v2, v0, v1}, Latak/core/G1;->h(Latak/core/G1;Latak/core/W9;ZILjava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, -0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    invoke-virtual {p1}, Latak/core/W9;->a()[Latak/core/M1;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    aget-object p1, p1, v0

    .line 22
    .line 23
    invoke-virtual {p1}, Latak/core/M1;->c0()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    int-to-long v1, p1

    .line 28
    invoke-virtual {p0, v1, v2}, Latak/core/G1;->skip(J)V

    .line 29
    .line 30
    .line 31
    return v0
.end method

.method public k0()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Latak/core/G1;->readLong()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Latakplugin/atos/c;->i(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public k1([B)Latak/core/G1;
    .locals 2
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, p1, v1, v0}, Latak/core/G1;->l1([BII)Latak/core/G1;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public l0(Latak/core/M1;J)J
    .locals 18
    .param p1    # Latak/core/M1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-wide/from16 v0, p2

    .line 6
    .line 7
    const-string v2, "bytes"

    .line 8
    .line 9
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Latak/core/M1;->c0()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-lez v2, :cond_10

    .line 17
    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    cmp-long v4, v0, v2

    .line 21
    .line 22
    if-ltz v4, :cond_f

    .line 23
    .line 24
    iget-object v4, v6, Latak/core/G1;->O:Latak/core/Eh;

    .line 25
    .line 26
    if-eqz v4, :cond_e

    .line 27
    .line 28
    invoke-virtual/range {p0 .. p0}, Latak/core/G1;->size()J

    .line 29
    .line 30
    .line 31
    move-result-wide v10

    .line 32
    sub-long/2addr v10, v0

    .line 33
    cmp-long v5, v10, v0

    .line 34
    .line 35
    const-wide/16 v10, 0x1

    .line 36
    .line 37
    const/4 v12, 0x0

    .line 38
    if-gez v5, :cond_6

    .line 39
    .line 40
    invoke-virtual/range {p0 .. p0}, Latak/core/G1;->size()J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    :goto_0
    cmp-long v5, v2, v0

    .line 45
    .line 46
    if-lez v5, :cond_1

    .line 47
    .line 48
    iget-object v4, v4, Latak/core/Eh;->g:Latak/core/Eh;

    .line 49
    .line 50
    if-nez v4, :cond_0

    .line 51
    .line 52
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 53
    .line 54
    .line 55
    :cond_0
    iget v5, v4, Latak/core/Eh;->c:I

    .line 56
    .line 57
    iget v13, v4, Latak/core/Eh;->b:I

    .line 58
    .line 59
    sub-int/2addr v5, v13

    .line 60
    int-to-long v13, v5

    .line 61
    sub-long/2addr v2, v13

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v7, v12}, Latak/core/M1;->s(I)B

    .line 64
    .line 65
    .line 66
    move-result v12

    .line 67
    invoke-virtual/range {p1 .. p1}, Latak/core/M1;->c0()I

    .line 68
    .line 69
    .line 70
    move-result v13

    .line 71
    iget-wide v14, v6, Latak/core/G1;->P:J

    .line 72
    .line 73
    int-to-long v8, v13

    .line 74
    sub-long/2addr v14, v8

    .line 75
    add-long/2addr v14, v10

    .line 76
    move-wide v8, v2

    .line 77
    move-object v10, v4

    .line 78
    :goto_1
    cmp-long v2, v8, v14

    .line 79
    .line 80
    if-gez v2, :cond_5

    .line 81
    .line 82
    iget-object v11, v10, Latak/core/Eh;->a:[B

    .line 83
    .line 84
    iget v2, v10, Latak/core/Eh;->c:I

    .line 85
    .line 86
    iget v3, v10, Latak/core/Eh;->b:I

    .line 87
    .line 88
    int-to-long v3, v3

    .line 89
    add-long/2addr v3, v14

    .line 90
    sub-long/2addr v3, v8

    .line 91
    move-wide/from16 v16, v14

    .line 92
    .line 93
    int-to-long v14, v2

    .line 94
    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 95
    .line 96
    .line 97
    move-result-wide v2

    .line 98
    long-to-int v14, v2

    .line 99
    iget v2, v10, Latak/core/Eh;->b:I

    .line 100
    .line 101
    int-to-long v2, v2

    .line 102
    add-long/2addr v2, v0

    .line 103
    sub-long/2addr v2, v8

    .line 104
    long-to-int v0, v2

    .line 105
    move v15, v0

    .line 106
    :goto_2
    if-ge v15, v14, :cond_3

    .line 107
    .line 108
    aget-byte v0, v11, v15

    .line 109
    .line 110
    if-ne v0, v12, :cond_2

    .line 111
    .line 112
    add-int/lit8 v2, v15, 0x1

    .line 113
    .line 114
    invoke-virtual/range {p1 .. p1}, Latak/core/M1;->t()[B

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    const/4 v4, 0x1

    .line 119
    move-object/from16 v0, p0

    .line 120
    .line 121
    move-object v1, v10

    .line 122
    move v5, v13

    .line 123
    invoke-direct/range {v0 .. v5}, Latak/core/G1;->b(Latak/core/Eh;I[BII)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_2

    .line 128
    .line 129
    iget v0, v10, Latak/core/Eh;->b:I

    .line 130
    .line 131
    sub-int/2addr v15, v0

    .line 132
    int-to-long v0, v15

    .line 133
    add-long/2addr v0, v8

    .line 134
    return-wide v0

    .line 135
    :cond_2
    add-int/lit8 v15, v15, 0x1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_3
    iget v0, v10, Latak/core/Eh;->c:I

    .line 139
    .line 140
    iget v1, v10, Latak/core/Eh;->b:I

    .line 141
    .line 142
    sub-int/2addr v0, v1

    .line 143
    int-to-long v0, v0

    .line 144
    add-long/2addr v8, v0

    .line 145
    iget-object v10, v10, Latak/core/Eh;->f:Latak/core/Eh;

    .line 146
    .line 147
    if-nez v10, :cond_4

    .line 148
    .line 149
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 150
    .line 151
    .line 152
    :cond_4
    move-wide v0, v8

    .line 153
    move-wide/from16 v14, v16

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_5
    const-wide/16 v0, -0x1

    .line 157
    .line 158
    return-wide v0

    .line 159
    :cond_6
    :goto_3
    iget v5, v4, Latak/core/Eh;->c:I

    .line 160
    .line 161
    iget v8, v4, Latak/core/Eh;->b:I

    .line 162
    .line 163
    sub-int/2addr v5, v8

    .line 164
    int-to-long v8, v5

    .line 165
    add-long/2addr v8, v2

    .line 166
    cmp-long v5, v8, v0

    .line 167
    .line 168
    if-lez v5, :cond_c

    .line 169
    .line 170
    invoke-virtual {v7, v12}, Latak/core/M1;->s(I)B

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    invoke-virtual/range {p1 .. p1}, Latak/core/M1;->c0()I

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    iget-wide v12, v6, Latak/core/G1;->P:J

    .line 179
    .line 180
    int-to-long v14, v9

    .line 181
    sub-long/2addr v12, v14

    .line 182
    add-long/2addr v12, v10

    .line 183
    move-wide v10, v2

    .line 184
    move-object v14, v4

    .line 185
    :goto_4
    cmp-long v2, v10, v12

    .line 186
    .line 187
    if-gez v2, :cond_b

    .line 188
    .line 189
    iget-object v15, v14, Latak/core/Eh;->a:[B

    .line 190
    .line 191
    iget v2, v14, Latak/core/Eh;->c:I

    .line 192
    .line 193
    iget v3, v14, Latak/core/Eh;->b:I

    .line 194
    .line 195
    int-to-long v3, v3

    .line 196
    add-long/2addr v3, v12

    .line 197
    sub-long/2addr v3, v10

    .line 198
    int-to-long v5, v2

    .line 199
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 200
    .line 201
    .line 202
    move-result-wide v2

    .line 203
    long-to-int v6, v2

    .line 204
    iget v2, v14, Latak/core/Eh;->b:I

    .line 205
    .line 206
    int-to-long v2, v2

    .line 207
    add-long/2addr v2, v0

    .line 208
    sub-long/2addr v2, v10

    .line 209
    long-to-int v0, v2

    .line 210
    move v5, v0

    .line 211
    :goto_5
    if-ge v5, v6, :cond_9

    .line 212
    .line 213
    aget-byte v0, v15, v5

    .line 214
    .line 215
    if-ne v0, v8, :cond_7

    .line 216
    .line 217
    add-int/lit8 v2, v5, 0x1

    .line 218
    .line 219
    invoke-virtual/range {p1 .. p1}, Latak/core/M1;->t()[B

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    const/4 v4, 0x1

    .line 224
    move-object/from16 v0, p0

    .line 225
    .line 226
    move-object v1, v14

    .line 227
    move/from16 v16, v5

    .line 228
    .line 229
    move v5, v9

    .line 230
    invoke-direct/range {v0 .. v5}, Latak/core/G1;->b(Latak/core/Eh;I[BII)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_8

    .line 235
    .line 236
    iget v0, v14, Latak/core/Eh;->b:I

    .line 237
    .line 238
    sub-int v5, v16, v0

    .line 239
    .line 240
    int-to-long v0, v5

    .line 241
    add-long/2addr v0, v10

    .line 242
    return-wide v0

    .line 243
    :cond_7
    move/from16 v16, v5

    .line 244
    .line 245
    :cond_8
    add-int/lit8 v5, v16, 0x1

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_9
    iget v0, v14, Latak/core/Eh;->c:I

    .line 249
    .line 250
    iget v1, v14, Latak/core/Eh;->b:I

    .line 251
    .line 252
    sub-int/2addr v0, v1

    .line 253
    int-to-long v0, v0

    .line 254
    add-long/2addr v10, v0

    .line 255
    iget-object v14, v14, Latak/core/Eh;->f:Latak/core/Eh;

    .line 256
    .line 257
    if-nez v14, :cond_a

    .line 258
    .line 259
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 260
    .line 261
    .line 262
    :cond_a
    move-object/from16 v6, p0

    .line 263
    .line 264
    move-wide v0, v10

    .line 265
    goto :goto_4

    .line 266
    :cond_b
    const-wide/16 v2, -0x1

    .line 267
    .line 268
    return-wide v2

    .line 269
    :cond_c
    const-wide/16 v2, -0x1

    .line 270
    .line 271
    iget-object v4, v4, Latak/core/Eh;->f:Latak/core/Eh;

    .line 272
    .line 273
    if-nez v4, :cond_d

    .line 274
    .line 275
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 276
    .line 277
    .line 278
    :cond_d
    move-object/from16 v6, p0

    .line 279
    .line 280
    move-wide v2, v8

    .line 281
    goto :goto_3

    .line 282
    :cond_e
    const-wide/16 v2, -0x1

    .line 283
    .line 284
    return-wide v2

    .line 285
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    const-string v3, "fromIndex < 0: "

    .line 291
    .line 292
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 303
    .line 304
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    throw v1

    .line 312
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 313
    .line 314
    const-string v1, "bytes is empty"

    .line 315
    .line 316
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    throw v0
.end method

.method public l1([BII)Latak/core/G1;
    .locals 9
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    int-to-long v1, v0

    .line 8
    int-to-long v3, p2

    .line 9
    int-to-long v7, p3

    .line 10
    move-wide v5, v7

    .line 11
    invoke-static/range {v1 .. v6}, Latakplugin/atos/c;->e(JJJ)V

    .line 12
    .line 13
    .line 14
    add-int/2addr p3, p2

    .line 15
    :goto_0
    if-ge p2, p3, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Latak/core/G1;->j(I)Latak/core/Eh;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sub-int v1, p3, p2

    .line 23
    .line 24
    iget v2, v0, Latak/core/Eh;->c:I

    .line 25
    .line 26
    rsub-int v2, v2, 0x2000

    .line 27
    .line 28
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget-object v2, v0, Latak/core/Eh;->a:[B

    .line 33
    .line 34
    iget v3, v0, Latak/core/Eh;->c:I

    .line 35
    .line 36
    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    add-int/2addr p2, v1

    .line 40
    iget v2, v0, Latak/core/Eh;->c:I

    .line 41
    .line 42
    add-int/2addr v2, v1

    .line 43
    iput v2, v0, Latak/core/Eh;->c:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-wide p1, p0, Latak/core/G1;->P:J

    .line 47
    .line 48
    add-long/2addr p1, v7

    .line 49
    iput-wide p1, p0, Latak/core/G1;->P:J

    .line 50
    .line 51
    return-object p0
.end method

.method public m0(JLatak/core/M1;)Z
    .locals 7
    .param p3    # Latak/core/M1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bytes"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Latak/core/M1;->c0()I

    .line 7
    .line 8
    .line 9
    move-result v6

    .line 10
    const/4 v5, 0x0

    .line 11
    move-object v1, p0

    .line 12
    move-wide v2, p1

    .line 13
    move-object v4, p3

    .line 14
    invoke-virtual/range {v1 .. v6}, Latak/core/G1;->L(JLatak/core/M1;II)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public m1(I)Latak/core/G1;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Latak/core/G1;->j(I)Latak/core/Eh;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, v0, Latak/core/Eh;->a:[B

    .line 7
    .line 8
    iget v2, v0, Latak/core/Eh;->c:I

    .line 9
    .line 10
    add-int/lit8 v3, v2, 0x1

    .line 11
    .line 12
    iput v3, v0, Latak/core/Eh;->c:I

    .line 13
    .line 14
    int-to-byte p1, p1

    .line 15
    aput-byte p1, v1, v2

    .line 16
    .line 17
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 18
    .line 19
    const-wide/16 v2, 0x1

    .line 20
    .line 21
    add-long/2addr v0, v2

    .line 22
    iput-wide v0, p0, Latak/core/G1;->P:J

    .line 23
    .line 24
    return-object p0
.end method

.method public bridge synthetic n0(Ljava/lang/String;IILjava/nio/charset/Charset;)Latak/core/I1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Latak/core/G1;->v1(Ljava/lang/String;IILjava/nio/charset/Charset;)Latak/core/G1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public n1(J)Latak/core/G1;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    const/16 p1, 0x30

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Latak/core/G1;->m1(I)Latak/core/G1;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    const/4 v3, 0x1

    .line 15
    if-gez v2, :cond_2

    .line 16
    .line 17
    neg-long p1, p1

    .line 18
    cmp-long v2, p1, v0

    .line 19
    .line 20
    if-gez v2, :cond_1

    .line 21
    .line 22
    const-string p1, "-9223372036854775808"

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Latak/core/G1;->A1(Ljava/lang/String;)Latak/core/G1;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_1
    move v2, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v2, 0x0

    .line 32
    :goto_0
    const-wide/32 v4, 0x5f5e100

    .line 33
    .line 34
    .line 35
    cmp-long v4, p1, v4

    .line 36
    .line 37
    const/16 v5, 0xa

    .line 38
    .line 39
    if-gez v4, :cond_a

    .line 40
    .line 41
    const-wide/16 v6, 0x2710

    .line 42
    .line 43
    cmp-long v4, p1, v6

    .line 44
    .line 45
    if-gez v4, :cond_6

    .line 46
    .line 47
    const-wide/16 v6, 0x64

    .line 48
    .line 49
    cmp-long v4, p1, v6

    .line 50
    .line 51
    if-gez v4, :cond_4

    .line 52
    .line 53
    const-wide/16 v6, 0xa

    .line 54
    .line 55
    cmp-long v4, p1, v6

    .line 56
    .line 57
    if-gez v4, :cond_3

    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :cond_3
    const/4 v3, 0x2

    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :cond_4
    const-wide/16 v3, 0x3e8

    .line 65
    .line 66
    cmp-long v3, p1, v3

    .line 67
    .line 68
    if-gez v3, :cond_5

    .line 69
    .line 70
    const/4 v3, 0x3

    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :cond_5
    const/4 v3, 0x4

    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :cond_6
    const-wide/32 v3, 0xf4240

    .line 77
    .line 78
    .line 79
    cmp-long v3, p1, v3

    .line 80
    .line 81
    if-gez v3, :cond_8

    .line 82
    .line 83
    const-wide/32 v3, 0x186a0

    .line 84
    .line 85
    .line 86
    cmp-long v3, p1, v3

    .line 87
    .line 88
    if-gez v3, :cond_7

    .line 89
    .line 90
    const/4 v3, 0x5

    .line 91
    goto/16 :goto_1

    .line 92
    .line 93
    :cond_7
    const/4 v3, 0x6

    .line 94
    goto/16 :goto_1

    .line 95
    .line 96
    :cond_8
    const-wide/32 v3, 0x989680

    .line 97
    .line 98
    .line 99
    cmp-long v3, p1, v3

    .line 100
    .line 101
    if-gez v3, :cond_9

    .line 102
    .line 103
    const/4 v3, 0x7

    .line 104
    goto/16 :goto_1

    .line 105
    .line 106
    :cond_9
    const/16 v3, 0x8

    .line 107
    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    :cond_a
    const-wide v3, 0xe8d4a51000L

    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    cmp-long v3, p1, v3

    .line 116
    .line 117
    if-gez v3, :cond_e

    .line 118
    .line 119
    const-wide v3, 0x2540be400L

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    cmp-long v3, p1, v3

    .line 125
    .line 126
    if-gez v3, :cond_c

    .line 127
    .line 128
    const-wide/32 v3, 0x3b9aca00

    .line 129
    .line 130
    .line 131
    cmp-long v3, p1, v3

    .line 132
    .line 133
    if-gez v3, :cond_b

    .line 134
    .line 135
    const/16 v3, 0x9

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_b
    move v3, v5

    .line 139
    goto :goto_1

    .line 140
    :cond_c
    const-wide v3, 0x174876e800L

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    cmp-long v3, p1, v3

    .line 146
    .line 147
    if-gez v3, :cond_d

    .line 148
    .line 149
    const/16 v3, 0xb

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_d
    const/16 v3, 0xc

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_e
    const-wide v3, 0x38d7ea4c68000L

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    cmp-long v3, p1, v3

    .line 161
    .line 162
    if-gez v3, :cond_11

    .line 163
    .line 164
    const-wide v3, 0x9184e72a000L

    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    cmp-long v3, p1, v3

    .line 170
    .line 171
    if-gez v3, :cond_f

    .line 172
    .line 173
    const/16 v3, 0xd

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_f
    const-wide v3, 0x5af3107a4000L

    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    cmp-long v3, p1, v3

    .line 182
    .line 183
    if-gez v3, :cond_10

    .line 184
    .line 185
    const/16 v3, 0xe

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_10
    const/16 v3, 0xf

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_11
    const-wide v3, 0x16345785d8a0000L

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    cmp-long v3, p1, v3

    .line 197
    .line 198
    if-gez v3, :cond_13

    .line 199
    .line 200
    const-wide v3, 0x2386f26fc10000L

    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    cmp-long v3, p1, v3

    .line 206
    .line 207
    if-gez v3, :cond_12

    .line 208
    .line 209
    const/16 v3, 0x10

    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_12
    const/16 v3, 0x11

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_13
    const-wide v3, 0xde0b6b3a7640000L

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    cmp-long v3, p1, v3

    .line 221
    .line 222
    if-gez v3, :cond_14

    .line 223
    .line 224
    const/16 v3, 0x12

    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_14
    const/16 v3, 0x13

    .line 228
    .line 229
    :goto_1
    if-eqz v2, :cond_15

    .line 230
    .line 231
    add-int/lit8 v3, v3, 0x1

    .line 232
    .line 233
    :cond_15
    invoke-virtual {p0, v3}, Latak/core/G1;->j(I)Latak/core/Eh;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    iget-object v6, v4, Latak/core/Eh;->a:[B

    .line 238
    .line 239
    iget v7, v4, Latak/core/Eh;->c:I

    .line 240
    .line 241
    add-int/2addr v7, v3

    .line 242
    :goto_2
    cmp-long v8, p1, v0

    .line 243
    .line 244
    if-eqz v8, :cond_16

    .line 245
    .line 246
    int-to-long v8, v5

    .line 247
    rem-long v10, p1, v8

    .line 248
    .line 249
    long-to-int v10, v10

    .line 250
    add-int/lit8 v7, v7, -0x1

    .line 251
    .line 252
    sget-object v11, Latak/core/G1;->a:[B

    .line 253
    .line 254
    aget-byte v10, v11, v10

    .line 255
    .line 256
    aput-byte v10, v6, v7

    .line 257
    .line 258
    div-long/2addr p1, v8

    .line 259
    goto :goto_2

    .line 260
    :cond_16
    if-eqz v2, :cond_17

    .line 261
    .line 262
    add-int/lit8 v7, v7, -0x1

    .line 263
    .line 264
    const/16 p1, 0x2d

    .line 265
    .line 266
    int-to-byte p1, p1

    .line 267
    aput-byte p1, v6, v7

    .line 268
    .line 269
    :cond_17
    iget p1, v4, Latak/core/Eh;->c:I

    .line 270
    .line 271
    add-int/2addr p1, v3

    .line 272
    iput p1, v4, Latak/core/Eh;->c:I

    .line 273
    .line 274
    iget-wide p1, p0, Latak/core/G1;->P:J

    .line 275
    .line 276
    int-to-long v0, v3

    .line 277
    add-long/2addr p1, v0

    .line 278
    iput-wide p1, p0, Latak/core/G1;->P:J

    .line 279
    .line 280
    return-object p0
.end method

.method public bridge synthetic o0(J)Latak/core/I1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Latak/core/G1;->r1(J)Latak/core/G1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public o1(J)Latak/core/G1;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 p1, 0x30

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Latak/core/G1;->m1(I)Latak/core/G1;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x4

    .line 23
    div-int/2addr v0, v1

    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Latak/core/G1;->j(I)Latak/core/Eh;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v3, v2, Latak/core/Eh;->a:[B

    .line 31
    .line 32
    iget v4, v2, Latak/core/Eh;->c:I

    .line 33
    .line 34
    add-int v5, v4, v0

    .line 35
    .line 36
    add-int/lit8 v5, v5, -0x1

    .line 37
    .line 38
    :goto_0
    if-lt v5, v4, :cond_1

    .line 39
    .line 40
    sget-object v6, Latak/core/G1;->a:[B

    .line 41
    .line 42
    const-wide/16 v7, 0xf

    .line 43
    .line 44
    and-long/2addr v7, p1

    .line 45
    long-to-int v7, v7

    .line 46
    aget-byte v6, v6, v7

    .line 47
    .line 48
    aput-byte v6, v3, v5

    .line 49
    .line 50
    ushr-long/2addr p1, v1

    .line 51
    add-int/lit8 v5, v5, -0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget p1, v2, Latak/core/Eh;->c:I

    .line 55
    .line 56
    add-int/2addr p1, v0

    .line 57
    iput p1, v2, Latak/core/Eh;->c:I

    .line 58
    .line 59
    iget-wide p1, p0, Latak/core/G1;->P:J

    .line 60
    .line 61
    int-to-long v0, v0

    .line 62
    add-long/2addr p1, v0

    .line 63
    iput-wide p1, p0, Latak/core/G1;->P:J

    .line 64
    .line 65
    return-object p0
.end method

.method public p0(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 2
    .line 3
    cmp-long p1, v0, p1

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public p1(I)Latak/core/G1;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Latak/core/G1;->j(I)Latak/core/Eh;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, v1, Latak/core/Eh;->a:[B

    .line 7
    .line 8
    iget v3, v1, Latak/core/Eh;->c:I

    .line 9
    .line 10
    add-int/lit8 v4, v3, 0x1

    .line 11
    .line 12
    ushr-int/lit8 v5, p1, 0x18

    .line 13
    .line 14
    and-int/lit16 v5, v5, 0xff

    .line 15
    .line 16
    int-to-byte v5, v5

    .line 17
    aput-byte v5, v2, v3

    .line 18
    .line 19
    add-int/lit8 v5, v3, 0x2

    .line 20
    .line 21
    ushr-int/lit8 v6, p1, 0x10

    .line 22
    .line 23
    and-int/lit16 v6, v6, 0xff

    .line 24
    .line 25
    int-to-byte v6, v6

    .line 26
    aput-byte v6, v2, v4

    .line 27
    .line 28
    add-int/lit8 v4, v3, 0x3

    .line 29
    .line 30
    ushr-int/lit8 v6, p1, 0x8

    .line 31
    .line 32
    and-int/lit16 v6, v6, 0xff

    .line 33
    .line 34
    int-to-byte v6, v6

    .line 35
    aput-byte v6, v2, v5

    .line 36
    .line 37
    add-int/2addr v3, v0

    .line 38
    and-int/lit16 p1, p1, 0xff

    .line 39
    .line 40
    int-to-byte p1, p1

    .line 41
    aput-byte p1, v2, v4

    .line 42
    .line 43
    iput v3, v1, Latak/core/Eh;->c:I

    .line 44
    .line 45
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 46
    .line 47
    const-wide/16 v2, 0x4

    .line 48
    .line 49
    add-long/2addr v0, v2

    .line 50
    iput-wide v0, p0, Latak/core/G1;->P:J

    .line 51
    .line 52
    return-object p0
.end method

.method public peek()Latak/core/J1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Latak/core/Ud;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Latak/core/Ud;-><init>(Latak/core/J1;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Latak/core/P9;->e(Latak/core/Pk;)Latak/core/J1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public bridge synthetic q0(J)Latak/core/I1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Latak/core/G1;->n1(J)Latak/core/G1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public q1(I)Latak/core/G1;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1}, Latakplugin/atos/c;->h(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Latak/core/G1;->p1(I)Latak/core/G1;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public r0()Ljava/io/OutputStream;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Latak/core/G1$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Latak/core/G1$c;-><init>(Latak/core/G1;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public r1(J)Latak/core/G1;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Latak/core/G1;->j(I)Latak/core/Eh;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v1, Latak/core/Eh;->a:[B

    .line 8
    .line 9
    iget v3, v1, Latak/core/Eh;->c:I

    .line 10
    .line 11
    add-int/lit8 v4, v3, 0x1

    .line 12
    .line 13
    const/16 v5, 0x38

    .line 14
    .line 15
    ushr-long v5, p1, v5

    .line 16
    .line 17
    const-wide/16 v7, 0xff

    .line 18
    .line 19
    and-long/2addr v5, v7

    .line 20
    long-to-int v5, v5

    .line 21
    int-to-byte v5, v5

    .line 22
    aput-byte v5, v2, v3

    .line 23
    .line 24
    add-int/lit8 v5, v3, 0x2

    .line 25
    .line 26
    const/16 v6, 0x30

    .line 27
    .line 28
    ushr-long v9, p1, v6

    .line 29
    .line 30
    and-long/2addr v9, v7

    .line 31
    long-to-int v6, v9

    .line 32
    int-to-byte v6, v6

    .line 33
    aput-byte v6, v2, v4

    .line 34
    .line 35
    add-int/lit8 v4, v3, 0x3

    .line 36
    .line 37
    const/16 v6, 0x28

    .line 38
    .line 39
    ushr-long v9, p1, v6

    .line 40
    .line 41
    and-long/2addr v9, v7

    .line 42
    long-to-int v6, v9

    .line 43
    int-to-byte v6, v6

    .line 44
    aput-byte v6, v2, v5

    .line 45
    .line 46
    add-int/lit8 v5, v3, 0x4

    .line 47
    .line 48
    const/16 v6, 0x20

    .line 49
    .line 50
    ushr-long v9, p1, v6

    .line 51
    .line 52
    and-long/2addr v9, v7

    .line 53
    long-to-int v6, v9

    .line 54
    int-to-byte v6, v6

    .line 55
    aput-byte v6, v2, v4

    .line 56
    .line 57
    add-int/lit8 v4, v3, 0x5

    .line 58
    .line 59
    const/16 v6, 0x18

    .line 60
    .line 61
    ushr-long v9, p1, v6

    .line 62
    .line 63
    and-long/2addr v9, v7

    .line 64
    long-to-int v6, v9

    .line 65
    int-to-byte v6, v6

    .line 66
    aput-byte v6, v2, v5

    .line 67
    .line 68
    add-int/lit8 v5, v3, 0x6

    .line 69
    .line 70
    const/16 v6, 0x10

    .line 71
    .line 72
    ushr-long v9, p1, v6

    .line 73
    .line 74
    and-long/2addr v9, v7

    .line 75
    long-to-int v6, v9

    .line 76
    int-to-byte v6, v6

    .line 77
    aput-byte v6, v2, v4

    .line 78
    .line 79
    add-int/lit8 v4, v3, 0x7

    .line 80
    .line 81
    ushr-long v9, p1, v0

    .line 82
    .line 83
    and-long/2addr v9, v7

    .line 84
    long-to-int v6, v9

    .line 85
    int-to-byte v6, v6

    .line 86
    aput-byte v6, v2, v5

    .line 87
    .line 88
    add-int/2addr v3, v0

    .line 89
    and-long/2addr p1, v7

    .line 90
    long-to-int p1, p1

    .line 91
    int-to-byte p1, p1

    .line 92
    aput-byte p1, v2, v4

    .line 93
    .line 94
    iput v3, v1, Latak/core/Eh;->c:I

    .line 95
    .line 96
    iget-wide p1, p0, Latak/core/G1;->P:J

    .line 97
    .line 98
    const-wide/16 v0, 0x8

    .line 99
    .line 100
    add-long/2addr p1, v0

    .line 101
    iput-wide p1, p0, Latak/core/G1;->P:J

    .line 102
    .line 103
    return-object p0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Latak/core/G1;->O:Latak/core/Eh;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, v0, Latak/core/Eh;->c:I

    iget v3, v0, Latak/core/Eh;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 13
    iget-object v2, v0, Latak/core/Eh;->a:[B

    iget v3, v0, Latak/core/Eh;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 14
    iget p1, v0, Latak/core/Eh;->b:I

    add-int/2addr p1, v1

    iput p1, v0, Latak/core/Eh;->b:I

    .line 15
    iget-wide v2, p0, Latak/core/G1;->P:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Latak/core/G1;->P:J

    .line 16
    iget v2, v0, Latak/core/Eh;->c:I

    if-ne p1, v2, :cond_0

    .line 17
    invoke-virtual {v0}, Latak/core/Eh;->b()Latak/core/Eh;

    move-result-object p1

    iput-object p1, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 18
    invoke-static {v0}, Latak/core/Fh;->d(Latak/core/Eh;)V

    :cond_0
    return v1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public read([B)I
    .locals 2
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Latak/core/G1;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 7
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Latakplugin/atos/c;->e(JJJ)V

    .line 3
    iget-object v0, p0, Latak/core/G1;->O:Latak/core/Eh;

    if-eqz v0, :cond_1

    .line 4
    iget v1, v0, Latak/core/Eh;->c:I

    iget v2, v0, Latak/core/Eh;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 5
    iget-object v1, v0, Latak/core/Eh;->a:[B

    iget v2, v0, Latak/core/Eh;->b:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget p1, v0, Latak/core/Eh;->b:I

    add-int/2addr p1, p3

    iput p1, v0, Latak/core/Eh;->b:I

    .line 7
    iget-wide v1, p0, Latak/core/G1;->P:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Latak/core/G1;->P:J

    .line 8
    iget p2, v0, Latak/core/Eh;->c:I

    if-ne p1, p2, :cond_0

    .line 9
    invoke-virtual {v0}, Latak/core/Eh;->b()Latak/core/Eh;

    move-result-object p1

    iput-object p1, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 10
    invoke-static {v0}, Latak/core/Fh;->d(Latak/core/Eh;)V

    :cond_0
    return p3

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public read(Latak/core/G1;J)J
    .locals 4
    .param p1    # Latak/core/G1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 19
    iget-wide v2, p0, Latak/core/G1;->P:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    move-wide p2, v2

    .line 20
    :cond_1
    invoke-virtual {p1, p0, p2, p3}, Latak/core/G1;->write(Latak/core/G1;J)V

    return-wide p2

    .line 21
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readByte()B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget v1, v0, Latak/core/Eh;->b:I

    .line 17
    .line 18
    iget v2, v0, Latak/core/Eh;->c:I

    .line 19
    .line 20
    iget-object v3, v0, Latak/core/Eh;->a:[B

    .line 21
    .line 22
    add-int/lit8 v4, v1, 0x1

    .line 23
    .line 24
    aget-byte v1, v3, v1

    .line 25
    .line 26
    iget-wide v5, p0, Latak/core/G1;->P:J

    .line 27
    .line 28
    const-wide/16 v7, 0x1

    .line 29
    .line 30
    sub-long/2addr v5, v7

    .line 31
    iput-wide v5, p0, Latak/core/G1;->P:J

    .line 32
    .line 33
    if-ne v4, v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Latak/core/Eh;->b()Latak/core/Eh;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iput-object v2, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 40
    .line 41
    invoke-static {v0}, Latak/core/Fh;->d(Latak/core/Eh;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iput v4, v0, Latak/core/Eh;->b:I

    .line 46
    .line 47
    :goto_0
    return v1

    .line 48
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 51
    .line 52
    .line 53
    throw v0
.end method

.method public readFully([B)V
    .locals 3
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
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
    const/4 v0, 0x0

    .line 7
    :goto_0
    array-length v1, p1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    array-length v1, p1

    .line 11
    sub-int/2addr v1, v0

    .line 12
    invoke-virtual {p0, p1, v0, v1}, Latak/core/G1;->read([BII)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, -0x1

    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    add-int/2addr v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    return-void
.end method

.method public readInt()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 2
    .line 3
    const-wide/16 v2, 0x4

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-ltz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget v1, v0, Latak/core/Eh;->b:I

    .line 17
    .line 18
    iget v4, v0, Latak/core/Eh;->c:I

    .line 19
    .line 20
    sub-int v5, v4, v1

    .line 21
    .line 22
    int-to-long v5, v5

    .line 23
    cmp-long v5, v5, v2

    .line 24
    .line 25
    if-gez v5, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Latak/core/G1;->readByte()B

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    and-int/lit16 v0, v0, 0xff

    .line 32
    .line 33
    shl-int/lit8 v0, v0, 0x18

    .line 34
    .line 35
    invoke-virtual {p0}, Latak/core/G1;->readByte()B

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    and-int/lit16 v1, v1, 0xff

    .line 40
    .line 41
    shl-int/lit8 v1, v1, 0x10

    .line 42
    .line 43
    or-int/2addr v0, v1

    .line 44
    invoke-virtual {p0}, Latak/core/G1;->readByte()B

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    and-int/lit16 v1, v1, 0xff

    .line 49
    .line 50
    shl-int/lit8 v1, v1, 0x8

    .line 51
    .line 52
    or-int/2addr v0, v1

    .line 53
    invoke-virtual {p0}, Latak/core/G1;->readByte()B

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    and-int/lit16 v1, v1, 0xff

    .line 58
    .line 59
    or-int/2addr v0, v1

    .line 60
    return v0

    .line 61
    :cond_1
    iget-object v5, v0, Latak/core/Eh;->a:[B

    .line 62
    .line 63
    add-int/lit8 v6, v1, 0x1

    .line 64
    .line 65
    aget-byte v7, v5, v1

    .line 66
    .line 67
    and-int/lit16 v7, v7, 0xff

    .line 68
    .line 69
    shl-int/lit8 v7, v7, 0x18

    .line 70
    .line 71
    add-int/lit8 v8, v1, 0x2

    .line 72
    .line 73
    aget-byte v6, v5, v6

    .line 74
    .line 75
    and-int/lit16 v6, v6, 0xff

    .line 76
    .line 77
    shl-int/lit8 v6, v6, 0x10

    .line 78
    .line 79
    or-int/2addr v6, v7

    .line 80
    add-int/lit8 v7, v1, 0x3

    .line 81
    .line 82
    aget-byte v8, v5, v8

    .line 83
    .line 84
    and-int/lit16 v8, v8, 0xff

    .line 85
    .line 86
    shl-int/lit8 v8, v8, 0x8

    .line 87
    .line 88
    or-int/2addr v6, v8

    .line 89
    add-int/lit8 v1, v1, 0x4

    .line 90
    .line 91
    aget-byte v5, v5, v7

    .line 92
    .line 93
    and-int/lit16 v5, v5, 0xff

    .line 94
    .line 95
    or-int/2addr v5, v6

    .line 96
    iget-wide v6, p0, Latak/core/G1;->P:J

    .line 97
    .line 98
    sub-long/2addr v6, v2

    .line 99
    iput-wide v6, p0, Latak/core/G1;->P:J

    .line 100
    .line 101
    if-ne v1, v4, :cond_2

    .line 102
    .line 103
    invoke-virtual {v0}, Latak/core/Eh;->b()Latak/core/Eh;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iput-object v1, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 108
    .line 109
    invoke-static {v0}, Latak/core/Fh;->d(Latak/core/Eh;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_2
    iput v1, v0, Latak/core/Eh;->b:I

    .line 114
    .line 115
    :goto_0
    return v5

    .line 116
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    .line 117
    .line 118
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 119
    .line 120
    .line 121
    throw v0
.end method

.method public readLong()J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 2
    .line 3
    const-wide/16 v2, 0x8

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-ltz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget v1, v0, Latak/core/Eh;->b:I

    .line 17
    .line 18
    iget v4, v0, Latak/core/Eh;->c:I

    .line 19
    .line 20
    sub-int v5, v4, v1

    .line 21
    .line 22
    int-to-long v5, v5

    .line 23
    cmp-long v5, v5, v2

    .line 24
    .line 25
    const/16 v6, 0x20

    .line 26
    .line 27
    if-gez v5, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Latak/core/G1;->readInt()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    int-to-long v0, v0

    .line 34
    const-wide v2, 0xffffffffL

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    and-long/2addr v0, v2

    .line 40
    shl-long/2addr v0, v6

    .line 41
    invoke-virtual {p0}, Latak/core/G1;->readInt()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    int-to-long v4, v4

    .line 46
    and-long/2addr v2, v4

    .line 47
    or-long/2addr v0, v2

    .line 48
    return-wide v0

    .line 49
    :cond_1
    iget-object v5, v0, Latak/core/Eh;->a:[B

    .line 50
    .line 51
    add-int/lit8 v7, v1, 0x1

    .line 52
    .line 53
    aget-byte v8, v5, v1

    .line 54
    .line 55
    int-to-long v8, v8

    .line 56
    const-wide/16 v10, 0xff

    .line 57
    .line 58
    and-long/2addr v8, v10

    .line 59
    const/16 v12, 0x38

    .line 60
    .line 61
    shl-long/2addr v8, v12

    .line 62
    add-int/lit8 v12, v1, 0x2

    .line 63
    .line 64
    aget-byte v7, v5, v7

    .line 65
    .line 66
    int-to-long v13, v7

    .line 67
    and-long/2addr v13, v10

    .line 68
    const/16 v7, 0x30

    .line 69
    .line 70
    shl-long/2addr v13, v7

    .line 71
    or-long v7, v8, v13

    .line 72
    .line 73
    add-int/lit8 v9, v1, 0x3

    .line 74
    .line 75
    aget-byte v12, v5, v12

    .line 76
    .line 77
    int-to-long v12, v12

    .line 78
    and-long/2addr v12, v10

    .line 79
    const/16 v14, 0x28

    .line 80
    .line 81
    shl-long/2addr v12, v14

    .line 82
    or-long/2addr v7, v12

    .line 83
    add-int/lit8 v12, v1, 0x4

    .line 84
    .line 85
    aget-byte v9, v5, v9

    .line 86
    .line 87
    int-to-long v13, v9

    .line 88
    and-long/2addr v13, v10

    .line 89
    shl-long/2addr v13, v6

    .line 90
    or-long v6, v7, v13

    .line 91
    .line 92
    add-int/lit8 v8, v1, 0x5

    .line 93
    .line 94
    aget-byte v9, v5, v12

    .line 95
    .line 96
    int-to-long v12, v9

    .line 97
    and-long/2addr v12, v10

    .line 98
    const/16 v9, 0x18

    .line 99
    .line 100
    shl-long/2addr v12, v9

    .line 101
    or-long/2addr v6, v12

    .line 102
    add-int/lit8 v9, v1, 0x6

    .line 103
    .line 104
    aget-byte v8, v5, v8

    .line 105
    .line 106
    int-to-long v12, v8

    .line 107
    and-long/2addr v12, v10

    .line 108
    const/16 v8, 0x10

    .line 109
    .line 110
    shl-long/2addr v12, v8

    .line 111
    or-long/2addr v6, v12

    .line 112
    add-int/lit8 v8, v1, 0x7

    .line 113
    .line 114
    aget-byte v9, v5, v9

    .line 115
    .line 116
    int-to-long v12, v9

    .line 117
    and-long/2addr v12, v10

    .line 118
    const/16 v9, 0x8

    .line 119
    .line 120
    shl-long/2addr v12, v9

    .line 121
    or-long/2addr v6, v12

    .line 122
    add-int/2addr v1, v9

    .line 123
    aget-byte v5, v5, v8

    .line 124
    .line 125
    int-to-long v8, v5

    .line 126
    and-long/2addr v8, v10

    .line 127
    or-long v5, v6, v8

    .line 128
    .line 129
    iget-wide v7, p0, Latak/core/G1;->P:J

    .line 130
    .line 131
    sub-long/2addr v7, v2

    .line 132
    iput-wide v7, p0, Latak/core/G1;->P:J

    .line 133
    .line 134
    if-ne v1, v4, :cond_2

    .line 135
    .line 136
    invoke-virtual {v0}, Latak/core/Eh;->b()Latak/core/Eh;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iput-object v1, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 141
    .line 142
    invoke-static {v0}, Latak/core/Fh;->d(Latak/core/Eh;)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_2
    iput v1, v0, Latak/core/Eh;->b:I

    .line 147
    .line 148
    :goto_0
    return-wide v5

    .line 149
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    .line 150
    .line 151
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 152
    .line 153
    .line 154
    throw v0
.end method

.method public readShort()S
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 2
    .line 3
    const-wide/16 v2, 0x2

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-ltz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget v1, v0, Latak/core/Eh;->b:I

    .line 17
    .line 18
    iget v4, v0, Latak/core/Eh;->c:I

    .line 19
    .line 20
    sub-int v5, v4, v1

    .line 21
    .line 22
    const/4 v6, 0x2

    .line 23
    if-ge v5, v6, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Latak/core/G1;->readByte()B

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    and-int/lit16 v0, v0, 0xff

    .line 30
    .line 31
    shl-int/lit8 v0, v0, 0x8

    .line 32
    .line 33
    invoke-virtual {p0}, Latak/core/G1;->readByte()B

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    and-int/lit16 v1, v1, 0xff

    .line 38
    .line 39
    or-int/2addr v0, v1

    .line 40
    int-to-short v0, v0

    .line 41
    return v0

    .line 42
    :cond_1
    iget-object v5, v0, Latak/core/Eh;->a:[B

    .line 43
    .line 44
    add-int/lit8 v7, v1, 0x1

    .line 45
    .line 46
    aget-byte v8, v5, v1

    .line 47
    .line 48
    and-int/lit16 v8, v8, 0xff

    .line 49
    .line 50
    shl-int/lit8 v8, v8, 0x8

    .line 51
    .line 52
    add-int/2addr v1, v6

    .line 53
    aget-byte v5, v5, v7

    .line 54
    .line 55
    and-int/lit16 v5, v5, 0xff

    .line 56
    .line 57
    or-int/2addr v5, v8

    .line 58
    iget-wide v6, p0, Latak/core/G1;->P:J

    .line 59
    .line 60
    sub-long/2addr v6, v2

    .line 61
    iput-wide v6, p0, Latak/core/G1;->P:J

    .line 62
    .line 63
    if-ne v1, v4, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0}, Latak/core/Eh;->b()Latak/core/Eh;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iput-object v1, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 70
    .line 71
    invoke-static {v0}, Latak/core/Fh;->d(Latak/core/Eh;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iput v1, v0, Latak/core/Eh;->b:I

    .line 76
    .line 77
    :goto_0
    int-to-short v0, v5

    .line 78
    return v0

    .line 79
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 82
    .line 83
    .line 84
    throw v0
.end method

.method public final s()J
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "size"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_size"
    .end annotation

    .line 1
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public s0(B)J
    .locals 6

    .line 1
    const-wide/16 v2, 0x0

    .line 2
    .line 3
    const-wide v4, 0x7fffffffffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move v1, p1

    .line 10
    invoke-virtual/range {v0 .. v5}, Latak/core/G1;->G(BJJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public s1(J)Latak/core/G1;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Latakplugin/atos/c;->i(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    invoke-virtual {p0, p1, p2}, Latak/core/G1;->r1(J)Latak/core/G1;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final size()J
    .locals 2
    .annotation build Lkotlin/jvm/JvmName;
        name = "size"
    .end annotation

    .line 1
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public skip(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-lez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v1, v0, Latak/core/Eh;->c:I

    .line 12
    .line 13
    iget v2, v0, Latak/core/Eh;->b:I

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    int-to-long v1, v1

    .line 17
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    long-to-int v1, v1

    .line 22
    iget-wide v2, p0, Latak/core/G1;->P:J

    .line 23
    .line 24
    int-to-long v4, v1

    .line 25
    sub-long/2addr v2, v4

    .line 26
    iput-wide v2, p0, Latak/core/G1;->P:J

    .line 27
    .line 28
    sub-long/2addr p1, v4

    .line 29
    iget v2, v0, Latak/core/Eh;->b:I

    .line 30
    .line 31
    add-int/2addr v2, v1

    .line 32
    iput v2, v0, Latak/core/Eh;->b:I

    .line 33
    .line 34
    iget v1, v0, Latak/core/Eh;->c:I

    .line 35
    .line 36
    if-ne v2, v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Latak/core/Eh;->b()Latak/core/Eh;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 43
    .line 44
    invoke-static {v0}, Latak/core/Fh;->d(Latak/core/Eh;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    return-void
.end method

.method public t()Latak/core/G1;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public t0()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    move-wide v4, v2

    .line 12
    :cond_0
    iget-object v6, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 13
    .line 14
    if-nez v6, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v7, v6, Latak/core/Eh;->a:[B

    .line 20
    .line 21
    iget v8, v6, Latak/core/Eh;->b:I

    .line 22
    .line 23
    iget v9, v6, Latak/core/Eh;->c:I

    .line 24
    .line 25
    :goto_0
    if-ge v8, v9, :cond_7

    .line 26
    .line 27
    aget-byte v10, v7, v8

    .line 28
    .line 29
    const/16 v11, 0x30

    .line 30
    .line 31
    int-to-byte v11, v11

    .line 32
    if-lt v10, v11, :cond_2

    .line 33
    .line 34
    const/16 v12, 0x39

    .line 35
    .line 36
    int-to-byte v12, v12

    .line 37
    if-gt v10, v12, :cond_2

    .line 38
    .line 39
    sub-int v11, v10, v11

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    const/16 v11, 0x61

    .line 43
    .line 44
    int-to-byte v11, v11

    .line 45
    if-lt v10, v11, :cond_3

    .line 46
    .line 47
    const/16 v12, 0x66

    .line 48
    .line 49
    int-to-byte v12, v12

    .line 50
    if-gt v10, v12, :cond_3

    .line 51
    .line 52
    :goto_1
    sub-int v11, v10, v11

    .line 53
    .line 54
    add-int/lit8 v11, v11, 0xa

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    const/16 v11, 0x41

    .line 58
    .line 59
    int-to-byte v11, v11

    .line 60
    if-lt v10, v11, :cond_5

    .line 61
    .line 62
    const/16 v12, 0x46

    .line 63
    .line 64
    int-to-byte v12, v12

    .line 65
    if-gt v10, v12, :cond_5

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :goto_2
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    .line 69
    .line 70
    and-long/2addr v12, v4

    .line 71
    cmp-long v12, v12, v2

    .line 72
    .line 73
    if-nez v12, :cond_4

    .line 74
    .line 75
    const/4 v10, 0x4

    .line 76
    shl-long/2addr v4, v10

    .line 77
    int-to-long v10, v11

    .line 78
    or-long/2addr v4, v10

    .line 79
    add-int/lit8 v8, v8, 0x1

    .line 80
    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    new-instance v0, Latak/core/G1;

    .line 85
    .line 86
    invoke-direct {v0}, Latak/core/G1;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v4, v5}, Latak/core/G1;->o1(J)Latak/core/G1;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0, v10}, Latak/core/G1;->m1(I)Latak/core/G1;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 98
    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v3, "Number too large: "

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Latak/core/G1;->e0()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v1

    .line 124
    :cond_5
    if-eqz v0, :cond_6

    .line 125
    .line 126
    const/4 v1, 0x1

    .line 127
    goto :goto_3

    .line 128
    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 129
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v0

    .line 155
    :cond_7
    :goto_3
    if-ne v8, v9, :cond_8

    .line 156
    .line 157
    invoke-virtual {v6}, Latak/core/Eh;->b()Latak/core/Eh;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    iput-object v7, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 162
    .line 163
    invoke-static {v6}, Latak/core/Fh;->d(Latak/core/Eh;)V

    .line 164
    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_8
    iput v8, v6, Latak/core/Eh;->b:I

    .line 168
    .line 169
    :goto_4
    if-nez v1, :cond_9

    .line 170
    .line 171
    iget-object v6, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 172
    .line 173
    if-nez v6, :cond_0

    .line 174
    .line 175
    :cond_9
    iget-wide v1, p0, Latak/core/G1;->P:J

    .line 176
    .line 177
    int-to-long v6, v0

    .line 178
    sub-long/2addr v1, v6

    .line 179
    iput-wide v1, p0, Latak/core/G1;->P:J

    .line 180
    .line 181
    return-wide v4

    .line 182
    :cond_a
    new-instance v0, Ljava/io/EOFException;

    .line 183
    .line 184
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 185
    .line 186
    .line 187
    throw v0
.end method

.method public t1(I)Latak/core/G1;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Latak/core/G1;->j(I)Latak/core/Eh;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, v1, Latak/core/Eh;->a:[B

    .line 7
    .line 8
    iget v3, v1, Latak/core/Eh;->c:I

    .line 9
    .line 10
    add-int/lit8 v4, v3, 0x1

    .line 11
    .line 12
    ushr-int/lit8 v5, p1, 0x8

    .line 13
    .line 14
    and-int/lit16 v5, v5, 0xff

    .line 15
    .line 16
    int-to-byte v5, v5

    .line 17
    aput-byte v5, v2, v3

    .line 18
    .line 19
    add-int/2addr v3, v0

    .line 20
    and-int/lit16 p1, p1, 0xff

    .line 21
    .line 22
    int-to-byte p1, p1

    .line 23
    aput-byte p1, v2, v4

    .line 24
    .line 25
    iput v3, v1, Latak/core/Eh;->c:I

    .line 26
    .line 27
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 28
    .line 29
    const-wide/16 v2, 0x2

    .line 30
    .line 31
    add-long/2addr v0, v2

    .line 32
    iput-wide v0, p0, Latak/core/G1;->P:J

    .line 33
    .line 34
    return-object p0
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

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Latak/core/G1;->e1()Latak/core/M1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Latak/core/M1;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public u()Latak/core/G1;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public u0(Latak/core/M1;)J
    .locals 2
    .param p1    # Latak/core/M1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "targetBytes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0, v1}, Latak/core/G1;->a0(Latak/core/M1;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public u1(I)Latak/core/G1;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    int-to-short p1, p1

    .line 2
    invoke-static {p1}, Latakplugin/atos/c;->j(S)S

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Latak/core/G1;->t1(I)Latak/core/G1;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public bridge synthetic v()Latak/core/I1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Latak/core/G1;->J0()Latak/core/G1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public v0()Ljava/io/InputStream;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Latak/core/G1$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Latak/core/G1$b;-><init>(Latak/core/G1;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public v1(Ljava/lang/String;IILjava/nio/charset/Charset;)Latak/core/G1;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "string"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "charset"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-ltz p2, :cond_4

    .line 12
    .line 13
    if-lt p3, p2, :cond_3

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-gt p3, v0, :cond_2

    .line 20
    .line 21
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 22
    .line 23
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2, p3}, Latak/core/G1;->B1(Ljava/lang/String;II)Latak/core/G1;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string p2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    .line 39
    .line 40
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string p2, "(this as java.lang.String).getBytes(charset)"

    .line 50
    .line 51
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    array-length p2, p1

    .line 55
    const/4 p3, 0x0

    .line 56
    invoke-virtual {p0, p1, p3, p2}, Latak/core/G1;->l1([BII)Latak/core/G1;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    .line 62
    .line 63
    const-string p2, "null cannot be cast to non-null type java.lang.String"

    .line 64
    .line 65
    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string p4, "endIndex > string.length: "

    .line 75
    .line 76
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p3, " > "

    .line 83
    .line 84
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p2

    .line 108
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string p4, "endIndex < beginIndex: "

    .line 114
    .line 115
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p3, " < "

    .line 122
    .line 123
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p2

    .line 143
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string p3, "beginIndex < 0: "

    .line 149
    .line 150
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p2
.end method

.method public bridge synthetic w(I)Latak/core/I1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Latak/core/G1;->t1(I)Latak/core/G1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final w0()V
    .locals 2

    .line 1
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Latak/core/G1;->skip(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public w1(Ljava/lang/String;Ljava/nio/charset/Charset;)Latak/core/G1;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "string"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "charset"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, p1, v1, v0, p2}, Latak/core/G1;->v1(Ljava/lang/String;IILjava/nio/charset/Charset;)Latak/core/G1;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {p0, v2}, Latak/core/G1;->j(I)Latak/core/Eh;

    move-result-object v2

    .line 3
    iget v3, v2, Latak/core/Eh;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 4
    iget-object v4, v2, Latak/core/Eh;->a:[B

    iget v5, v2, Latak/core/Eh;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    .line 5
    iget v4, v2, Latak/core/Eh;->c:I

    add-int/2addr v4, v3

    iput v4, v2, Latak/core/Eh;->c:I

    goto :goto_0

    .line 6
    :cond_0
    iget-wide v1, p0, Latak/core/G1;->P:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Latak/core/G1;->P:J

    return v0
.end method

.method public write(Latak/core/G1;J)V
    .locals 7
    .param p1    # Latak/core/G1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, p0, :cond_e

    .line 7
    iget-wide v1, p1, Latak/core/G1;->P:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Latakplugin/atos/c;->e(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_d

    .line 8
    iget-object v0, p1, Latak/core/G1;->O:Latak/core/Eh;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget v0, v0, Latak/core/Eh;->c:I

    iget-object v1, p1, Latak/core/G1;->O:Latak/core/Eh;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget v1, v1, Latak/core/Eh;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_8

    .line 9
    iget-object v0, p0, Latak/core/G1;->O:Latak/core/Eh;

    if-eqz v0, :cond_3

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v0, v0, Latak/core/Eh;->g:Latak/core/Eh;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    .line 10
    iget-boolean v1, v0, Latak/core/Eh;->e:Z

    if-eqz v1, :cond_6

    iget v1, v0, Latak/core/Eh;->c:I

    int-to-long v1, v1

    add-long/2addr v1, p2

    iget-boolean v3, v0, Latak/core/Eh;->d:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    iget v3, v0, Latak/core/Eh;->b:I

    :goto_2
    int-to-long v3, v3

    sub-long/2addr v1, v3

    const/16 v3, 0x2000

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_6

    .line 11
    iget-object v1, p1, Latak/core/G1;->O:Latak/core/Eh;

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Latak/core/Eh;->g(Latak/core/Eh;I)V

    .line 12
    iget-wide v0, p1, Latak/core/G1;->P:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Latak/core/G1;->P:J

    .line 13
    iget-wide v0, p0, Latak/core/G1;->P:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Latak/core/G1;->P:J

    return-void

    .line 14
    :cond_6
    iget-object v0, p1, Latak/core/G1;->O:Latak/core/Eh;

    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    long-to-int v1, p2

    invoke-virtual {v0, v1}, Latak/core/Eh;->e(I)Latak/core/Eh;

    move-result-object v0

    iput-object v0, p1, Latak/core/G1;->O:Latak/core/Eh;

    .line 15
    :cond_8
    iget-object v0, p1, Latak/core/G1;->O:Latak/core/Eh;

    if-nez v0, :cond_9

    .line 16
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    iget v1, v0, Latak/core/Eh;->c:I

    iget v2, v0, Latak/core/Eh;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 17
    invoke-virtual {v0}, Latak/core/Eh;->b()Latak/core/Eh;

    move-result-object v3

    iput-object v3, p1, Latak/core/G1;->O:Latak/core/Eh;

    .line 18
    iget-object v3, p0, Latak/core/G1;->O:Latak/core/Eh;

    if-nez v3, :cond_a

    .line 19
    iput-object v0, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 20
    iput-object v0, v0, Latak/core/Eh;->g:Latak/core/Eh;

    .line 21
    iput-object v0, v0, Latak/core/Eh;->f:Latak/core/Eh;

    goto :goto_3

    :cond_a
    if-nez v3, :cond_b

    .line 22
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    iget-object v3, v3, Latak/core/Eh;->g:Latak/core/Eh;

    if-nez v3, :cond_c

    .line 23
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_c
    invoke-virtual {v3, v0}, Latak/core/Eh;->c(Latak/core/Eh;)Latak/core/Eh;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Latak/core/Eh;->a()V

    .line 25
    :goto_3
    iget-wide v3, p1, Latak/core/G1;->P:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Latak/core/G1;->P:J

    .line 26
    iget-wide v3, p0, Latak/core/G1;->P:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Latak/core/G1;->P:J

    sub-long/2addr p2, v1

    goto/16 :goto_0

    :cond_d
    return-void

    .line 27
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic x(I)Latak/core/I1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Latak/core/G1;->C1(I)Latak/core/G1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public x0()Latak/core/G1;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Latak/core/G1;

    .line 2
    .line 3
    invoke-direct {v0}, Latak/core/G1;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Latak/core/G1;->P:J

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v1, v1, v3

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    iget-object v1, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {v1}, Latak/core/Eh;->d()Latak/core/Eh;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, v0, Latak/core/G1;->O:Latak/core/Eh;

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object v2, v0, Latak/core/G1;->O:Latak/core/Eh;

    .line 34
    .line 35
    iput-object v2, v1, Latak/core/Eh;->g:Latak/core/Eh;

    .line 36
    .line 37
    if-nez v2, :cond_3

    .line 38
    .line 39
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 40
    .line 41
    .line 42
    :cond_3
    iget-object v1, v0, Latak/core/G1;->O:Latak/core/Eh;

    .line 43
    .line 44
    if-nez v1, :cond_4

    .line 45
    .line 46
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 47
    .line 48
    .line 49
    :cond_4
    iget-object v1, v1, Latak/core/Eh;->g:Latak/core/Eh;

    .line 50
    .line 51
    iput-object v1, v2, Latak/core/Eh;->f:Latak/core/Eh;

    .line 52
    .line 53
    iget-object v1, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 54
    .line 55
    if-nez v1, :cond_5

    .line 56
    .line 57
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 58
    .line 59
    .line 60
    :cond_5
    iget-object v1, v1, Latak/core/Eh;->f:Latak/core/Eh;

    .line 61
    .line 62
    :goto_0
    iget-object v2, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 63
    .line 64
    if-eq v1, v2, :cond_9

    .line 65
    .line 66
    iget-object v2, v0, Latak/core/G1;->O:Latak/core/Eh;

    .line 67
    .line 68
    if-nez v2, :cond_6

    .line 69
    .line 70
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 71
    .line 72
    .line 73
    :cond_6
    iget-object v2, v2, Latak/core/Eh;->g:Latak/core/Eh;

    .line 74
    .line 75
    if-nez v2, :cond_7

    .line 76
    .line 77
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 78
    .line 79
    .line 80
    :cond_7
    if-nez v1, :cond_8

    .line 81
    .line 82
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 83
    .line 84
    .line 85
    :cond_8
    invoke-virtual {v1}, Latak/core/Eh;->d()Latak/core/Eh;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v2, v3}, Latak/core/Eh;->c(Latak/core/Eh;)Latak/core/Eh;

    .line 90
    .line 91
    .line 92
    iget-object v1, v1, Latak/core/Eh;->f:Latak/core/Eh;

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_9
    iget-wide v1, p0, Latak/core/G1;->P:J

    .line 96
    .line 97
    iput-wide v1, v0, Latak/core/G1;->P:J

    .line 98
    .line 99
    return-object v0
.end method

.method public final x1(Ljava/io/OutputStream;)Latak/core/G1;
    .locals 6
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Latak/core/G1;->z1(Latak/core/G1;Ljava/io/OutputStream;JILjava/lang/Object;)Latak/core/G1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic y(I)Latak/core/I1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Latak/core/G1;->p1(I)Latak/core/G1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final y0()J
    .locals 5

    .line 1
    iget-wide v0, p0, Latak/core/G1;->P:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    return-wide v2

    .line 10
    :cond_0
    iget-object v2, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v2, v2, Latak/core/Eh;->g:Latak/core/Eh;

    .line 18
    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 22
    .line 23
    .line 24
    :cond_2
    iget v3, v2, Latak/core/Eh;->c:I

    .line 25
    .line 26
    const/16 v4, 0x2000

    .line 27
    .line 28
    if-ge v3, v4, :cond_3

    .line 29
    .line 30
    iget-boolean v4, v2, Latak/core/Eh;->e:Z

    .line 31
    .line 32
    if-eqz v4, :cond_3

    .line 33
    .line 34
    iget v2, v2, Latak/core/Eh;->b:I

    .line 35
    .line 36
    sub-int/2addr v3, v2

    .line 37
    int-to-long v2, v3

    .line 38
    sub-long/2addr v0, v2

    .line 39
    :cond_3
    return-wide v0
.end method

.method public final y1(Ljava/io/OutputStream;J)Latak/core/G1;
    .locals 7
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "out"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Latak/core/G1;->P:J

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    move-wide v5, p2

    .line 11
    invoke-static/range {v1 .. v6}, Latakplugin/atos/c;->e(JJJ)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 15
    .line 16
    :cond_0
    :goto_0
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    cmp-long v1, p2, v1

    .line 19
    .line 20
    if-lez v1, :cond_2

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget v1, v0, Latak/core/Eh;->c:I

    .line 28
    .line 29
    iget v2, v0, Latak/core/Eh;->b:I

    .line 30
    .line 31
    sub-int/2addr v1, v2

    .line 32
    int-to-long v1, v1

    .line 33
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    long-to-int v1, v1

    .line 38
    iget-object v2, v0, Latak/core/Eh;->a:[B

    .line 39
    .line 40
    iget v3, v0, Latak/core/Eh;->b:I

    .line 41
    .line 42
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 43
    .line 44
    .line 45
    iget v2, v0, Latak/core/Eh;->b:I

    .line 46
    .line 47
    add-int/2addr v2, v1

    .line 48
    iput v2, v0, Latak/core/Eh;->b:I

    .line 49
    .line 50
    iget-wide v3, p0, Latak/core/G1;->P:J

    .line 51
    .line 52
    int-to-long v5, v1

    .line 53
    sub-long/2addr v3, v5

    .line 54
    iput-wide v3, p0, Latak/core/G1;->P:J

    .line 55
    .line 56
    sub-long/2addr p2, v5

    .line 57
    iget v1, v0, Latak/core/Eh;->c:I

    .line 58
    .line 59
    if-ne v2, v1, :cond_0

    .line 60
    .line 61
    invoke-virtual {v0}, Latak/core/Eh;->b()Latak/core/Eh;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput-object v1, p0, Latak/core/G1;->O:Latak/core/Eh;

    .line 66
    .line 67
    invoke-static {v0}, Latak/core/Fh;->d(Latak/core/Eh;)V

    .line 68
    .line 69
    .line 70
    move-object v0, v1

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    return-object p0
.end method

.method public bridge synthetic z(J)Latak/core/I1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Latak/core/G1;->s1(J)Latak/core/G1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
