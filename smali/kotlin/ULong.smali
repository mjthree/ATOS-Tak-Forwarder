.class public final Lkotlin/ULong;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/ULong$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlin/ULong;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "1.5"
.end annotation

.annotation build Lkotlin/WasExperimental;
    markerClass = {
        Lkotlin/ExperimentalUnsignedTypes;
    }
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field public static final Companion:Lkotlin/ULong$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_VALUE:J = -0x1L

.field public static final MIN_VALUE:J = 0x0L

.field public static final SIZE_BITS:I = 0x40

.field public static final SIZE_BYTES:I = 0x8


# instance fields
.field private final data:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/ULong$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/ULong$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/ULong;->Companion:Lkotlin/ULong$Companion;

    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lkotlin/internal/IntrinsicConstEvaluation;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lkotlin/ULong;->data:J

    .line 5
    .line 6
    return-void
.end method

.method private static final and-VKZWuLQ(JJ)J
    .locals 0
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    and-long/2addr p0, p2

    .line 2
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 3
    .line 4
    .line 5
    move-result-wide p0

    .line 6
    return-wide p0
.end method

.method public static final synthetic box-impl(J)Lkotlin/ULong;
    .locals 1

    new-instance v0, Lkotlin/ULong;

    invoke-direct {v0, p0, p1}, Lkotlin/ULong;-><init>(J)V

    return-object v0
.end method

.method private static final compareTo-7apg3OU(JB)I
    .locals 4
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide/16 v2, 0xff

    .line 3
    .line 4
    and-long/2addr v0, v2

    .line 5
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {p0, p1, v0, v1}, Latak/core/g9;->a(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private compareTo-VKZWuLQ(J)I
    .locals 2
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    invoke-virtual {p0}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide v0

    .line 1
    invoke-static {v0, v1, p1, p2}, Lkotlin/UnsignedKt;->ulongCompare(JJ)I

    move-result p1

    return p1
.end method

.method private static compareTo-VKZWuLQ(JJ)I
    .locals 0
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 2
    invoke-static {p0, p1, p2, p3}, Lkotlin/UnsignedKt;->ulongCompare(JJ)I

    move-result p0

    return p0
.end method

.method private static final compareTo-WZ4Q5Ns(JI)I
    .locals 4
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide v2, 0xffffffffL

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    and-long/2addr v0, v2

    .line 8
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-static {p0, p1, v0, v1}, Latak/core/g9;->a(JJ)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method private static final compareTo-xj2QHRw(JS)I
    .locals 4
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide/32 v2, 0xffff

    .line 3
    .line 4
    .line 5
    and-long/2addr v0, v2

    .line 6
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {p0, p1, v0, v1}, Latak/core/g9;->a(JJ)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public static constructor-impl(J)J
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lkotlin/internal/IntrinsicConstEvaluation;
    .end annotation

    return-wide p0
.end method

.method private static final dec-s-VKNKU(J)J
    .locals 2
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    add-long/2addr p0, v0

    .line 4
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 5
    .line 6
    .line 7
    move-result-wide p0

    .line 8
    return-wide p0
.end method

.method private static final div-7apg3OU(JB)J
    .locals 4
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide/16 v2, 0xff

    .line 3
    .line 4
    and-long/2addr v0, v2

    .line 5
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {p0, p1, v0, v1}, Latak/core/Tm;->a(JJ)J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method

.method private static final div-VKZWuLQ(JJ)J
    .locals 0
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlin/UnsignedKt;->ulongDivide-eb3DHEI(JJ)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method private static final div-WZ4Q5Ns(JI)J
    .locals 4
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide v2, 0xffffffffL

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    and-long/2addr v0, v2

    .line 8
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-static {p0, p1, v0, v1}, Latak/core/Tm;->a(JJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide p0

    .line 16
    return-wide p0
.end method

.method private static final div-xj2QHRw(JS)J
    .locals 4
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide/32 v2, 0xffff

    .line 3
    .line 4
    .line 5
    and-long/2addr v0, v2

    .line 6
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {p0, p1, v0, v1}, Latak/core/Tm;->a(JJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide p0

    .line 14
    return-wide p0
.end method

.method public static equals-impl(JLjava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Lkotlin/ULong;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Lkotlin/ULong;

    invoke-virtual {p2}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(JJ)Z
    .locals 0

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final floorDiv-7apg3OU(JB)J
    .locals 4
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide/16 v2, 0xff

    .line 3
    .line 4
    and-long/2addr v0, v2

    .line 5
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {p0, p1, v0, v1}, Latak/core/Tm;->a(JJ)J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method

.method private static final floorDiv-VKZWuLQ(JJ)J
    .locals 0
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Latak/core/Tm;->a(JJ)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method private static final floorDiv-WZ4Q5Ns(JI)J
    .locals 4
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide v2, 0xffffffffL

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    and-long/2addr v0, v2

    .line 8
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-static {p0, p1, v0, v1}, Latak/core/Tm;->a(JJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide p0

    .line 16
    return-wide p0
.end method

.method private static final floorDiv-xj2QHRw(JS)J
    .locals 4
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide/32 v2, 0xffff

    .line 3
    .line 4
    .line 5
    and-long/2addr v0, v2

    .line 6
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {p0, p1, v0, v1}, Latak/core/Tm;->a(JJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide p0

    .line 14
    return-wide p0
.end method

.method public static synthetic getData$annotations()V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    return-void
.end method

.method public static hashCode-impl(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method private static final inc-s-VKNKU(J)J
    .locals 2
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    add-long/2addr p0, v0

    .line 4
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 5
    .line 6
    .line 7
    move-result-wide p0

    .line 8
    return-wide p0
.end method

.method private static final inv-s-VKNKU(J)J
    .locals 0
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    not-long p0, p0

    .line 2
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 3
    .line 4
    .line 5
    move-result-wide p0

    .line 6
    return-wide p0
.end method

.method private static final minus-7apg3OU(JB)J
    .locals 4
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide/16 v2, 0xff

    .line 3
    .line 4
    and-long/2addr v0, v2

    .line 5
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sub-long/2addr p0, v0

    .line 10
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide p0

    .line 14
    return-wide p0
.end method

.method private static final minus-VKZWuLQ(JJ)J
    .locals 0
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    sub-long/2addr p0, p2

    .line 2
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 3
    .line 4
    .line 5
    move-result-wide p0

    .line 6
    return-wide p0
.end method

.method private static final minus-WZ4Q5Ns(JI)J
    .locals 4
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide v2, 0xffffffffL

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    and-long/2addr v0, v2

    .line 8
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    sub-long/2addr p0, v0

    .line 13
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide p0

    .line 17
    return-wide p0
.end method

.method private static final minus-xj2QHRw(JS)J
    .locals 4
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide/32 v2, 0xffff

    .line 3
    .line 4
    .line 5
    and-long/2addr v0, v2

    .line 6
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    sub-long/2addr p0, v0

    .line 11
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide p0

    .line 15
    return-wide p0
.end method

.method private static final mod-7apg3OU(JB)B
    .locals 4
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide/16 v2, 0xff

    .line 3
    .line 4
    and-long/2addr v0, v2

    .line 5
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {p0, p1, v0, v1}, Latak/core/Sm;->a(JJ)J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    long-to-int p0, p0

    .line 14
    int-to-byte p0, p0

    .line 15
    invoke-static {p0}, Lkotlin/UByte;->constructor-impl(B)B

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method private static final mod-VKZWuLQ(JJ)J
    .locals 0
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Latak/core/Sm;->a(JJ)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method private static final mod-WZ4Q5Ns(JI)I
    .locals 4
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide v2, 0xffffffffL

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    and-long/2addr v0, v2

    .line 8
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-static {p0, p1, v0, v1}, Latak/core/Sm;->a(JJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide p0

    .line 16
    long-to-int p0, p0

    .line 17
    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method private static final mod-xj2QHRw(JS)S
    .locals 4
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide/32 v2, 0xffff

    .line 3
    .line 4
    .line 5
    and-long/2addr v0, v2

    .line 6
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {p0, p1, v0, v1}, Latak/core/Sm;->a(JJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide p0

    .line 14
    long-to-int p0, p0

    .line 15
    int-to-short p0, p0

    .line 16
    invoke-static {p0}, Lkotlin/UShort;->constructor-impl(S)S

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method private static final or-VKZWuLQ(JJ)J
    .locals 0
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    or-long/2addr p0, p2

    .line 2
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 3
    .line 4
    .line 5
    move-result-wide p0

    .line 6
    return-wide p0
.end method

.method private static final plus-7apg3OU(JB)J
    .locals 4
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide/16 v2, 0xff

    .line 3
    .line 4
    and-long/2addr v0, v2

    .line 5
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    add-long/2addr p0, v0

    .line 10
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide p0

    .line 14
    return-wide p0
.end method

.method private static final plus-VKZWuLQ(JJ)J
    .locals 0
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    add-long/2addr p0, p2

    .line 2
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 3
    .line 4
    .line 5
    move-result-wide p0

    .line 6
    return-wide p0
.end method

.method private static final plus-WZ4Q5Ns(JI)J
    .locals 4
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide v2, 0xffffffffL

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    and-long/2addr v0, v2

    .line 8
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    add-long/2addr p0, v0

    .line 13
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide p0

    .line 17
    return-wide p0
.end method

.method private static final plus-xj2QHRw(JS)J
    .locals 4
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide/32 v2, 0xffff

    .line 3
    .line 4
    .line 5
    and-long/2addr v0, v2

    .line 6
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    add-long/2addr p0, v0

    .line 11
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide p0

    .line 15
    return-wide p0
.end method

.method private static final rangeTo-VKZWuLQ(JJ)Lkotlin/ranges/ULongRange;
    .locals 7
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    new-instance v6, Lkotlin/ranges/ULongRange;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, v6

    .line 5
    move-wide v1, p0

    .line 6
    move-wide v3, p2

    .line 7
    invoke-direct/range {v0 .. v5}, Lkotlin/ranges/ULongRange;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    return-object v6
.end method

.method private static final rangeUntil-VKZWuLQ(JJ)Lkotlin/ranges/ULongRange;
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.9"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalStdlibApi;
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlin/ranges/URangesKt;->until-eb3DHEI(JJ)Lkotlin/ranges/ULongRange;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final rem-7apg3OU(JB)J
    .locals 4
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide/16 v2, 0xff

    .line 3
    .line 4
    and-long/2addr v0, v2

    .line 5
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {p0, p1, v0, v1}, Latak/core/Sm;->a(JJ)J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method

.method private static final rem-VKZWuLQ(JJ)J
    .locals 0
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlin/UnsignedKt;->ulongRemainder-eb3DHEI(JJ)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method private static final rem-WZ4Q5Ns(JI)J
    .locals 4
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide v2, 0xffffffffL

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    and-long/2addr v0, v2

    .line 8
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-static {p0, p1, v0, v1}, Latak/core/Sm;->a(JJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide p0

    .line 16
    return-wide p0
.end method

.method private static final rem-xj2QHRw(JS)J
    .locals 4
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide/32 v2, 0xffff

    .line 3
    .line 4
    .line 5
    and-long/2addr v0, v2

    .line 6
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {p0, p1, v0, v1}, Latak/core/Sm;->a(JJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide p0

    .line 14
    return-wide p0
.end method

.method private static final shl-s-VKNKU(JI)J
    .locals 0
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    shl-long/2addr p0, p2

    .line 2
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 3
    .line 4
    .line 5
    move-result-wide p0

    .line 6
    return-wide p0
.end method

.method private static final shr-s-VKNKU(JI)J
    .locals 0
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    ushr-long/2addr p0, p2

    .line 2
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 3
    .line 4
    .line 5
    move-result-wide p0

    .line 6
    return-wide p0
.end method

.method private static final times-7apg3OU(JB)J
    .locals 4
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide/16 v2, 0xff

    .line 3
    .line 4
    and-long/2addr v0, v2

    .line 5
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    mul-long/2addr p0, v0

    .line 10
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide p0

    .line 14
    return-wide p0
.end method

.method private static final times-VKZWuLQ(JJ)J
    .locals 0
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    mul-long/2addr p0, p2

    .line 2
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 3
    .line 4
    .line 5
    move-result-wide p0

    .line 6
    return-wide p0
.end method

.method private static final times-WZ4Q5Ns(JI)J
    .locals 4
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide v2, 0xffffffffL

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    and-long/2addr v0, v2

    .line 8
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    mul-long/2addr p0, v0

    .line 13
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide p0

    .line 17
    return-wide p0
.end method

.method private static final times-xj2QHRw(JS)J
    .locals 4
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide/32 v2, 0xffff

    .line 3
    .line 4
    .line 5
    and-long/2addr v0, v2

    .line 6
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    mul-long/2addr p0, v0

    .line 11
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide p0

    .line 15
    return-wide p0
.end method

.method private static final toByte-impl(J)B
    .locals 0
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    long-to-int p0, p0

    int-to-byte p0, p0

    return p0
.end method

.method private static final toDouble-impl(J)D
    .locals 0
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlin/UnsignedKt;->ulongToDouble(J)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method private static final toFloat-impl(J)F
    .locals 0
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlin/UnsignedKt;->ulongToDouble(J)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    double-to-float p0, p0

    .line 6
    return p0
.end method

.method private static final toInt-impl(J)I
    .locals 0
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    long-to-int p0, p0

    return p0
.end method

.method private static final toLong-impl(J)J
    .locals 0
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    return-wide p0
.end method

.method private static final toShort-impl(J)S
    .locals 0
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    long-to-int p0, p0

    int-to-short p0, p0

    return p0
.end method

.method public static toString-impl(J)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Lkotlin/UnsignedKt;->ulongToString(JI)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static final toUByte-w2LRezQ(J)B
    .locals 0
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    long-to-int p0, p0

    .line 2
    int-to-byte p0, p0

    .line 3
    invoke-static {p0}, Lkotlin/UByte;->constructor-impl(B)B

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static final toUInt-pVg5ArA(J)I
    .locals 0
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    long-to-int p0, p0

    .line 2
    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method private static final toULong-s-VKNKU(J)J
    .locals 0
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    return-wide p0
.end method

.method private static final toUShort-Mh2AYeg(J)S
    .locals 0
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    long-to-int p0, p0

    .line 2
    int-to-short p0, p0

    .line 3
    invoke-static {p0}, Lkotlin/UShort;->constructor-impl(S)S

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static final xor-VKZWuLQ(JJ)J
    .locals 0
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    xor-long/2addr p0, p2

    .line 2
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 3
    .line 4
    .line 5
    move-result-wide p0

    .line 6
    return-wide p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lkotlin/ULong;

    .line 2
    .line 3
    invoke-virtual {p1}, Lkotlin/ULong;->unbox-impl()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p0}, Lkotlin/ULong;->unbox-impl()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-static {v2, v3, v0, v1}, Lkotlin/UnsignedKt;->ulongCompare(JJ)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Lkotlin/ULong;->data:J

    invoke-static {v0, v1, p1}, Lkotlin/ULong;->equals-impl(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lkotlin/ULong;->data:J

    invoke-static {v0, v1}, Lkotlin/ULong;->hashCode-impl(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-wide v0, p0, Lkotlin/ULong;->data:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lkotlin/ULong;->toString-impl(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final synthetic unbox-impl()J
    .locals 2

    iget-wide v0, p0, Lkotlin/ULong;->data:J

    return-wide v0
.end method
