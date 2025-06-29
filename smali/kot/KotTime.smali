.class public final Lkot/KotTime;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkot/KotTime$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKotTime.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotTime.kt\nkot/KotTime\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,88:1\n1#2:89\n*E\n"
.end annotation


# static fields
.field private static final AMMENDED_ISO_LOCAL_TIME$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/time/format/DateTimeFormatter;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lkot/KotTime$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MILLI_TO_NANO:I = 0xf4240

.field private static final OUTPUT_FORMATTER$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/time/format/DateTimeFormatter;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ZONE_ID_UTC:Ljava/time/ZoneId;


# instance fields
.field private final local$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final milliseconds$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final underlying:Ljava/time/OffsetDateTime;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkot/KotTime$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkot/KotTime$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lkot/KotTime;->Companion:Lkot/KotTime$Companion;

    .line 8
    .line 9
    const-string v0, "UTC"

    .line 10
    .line 11
    invoke-static {v0}, Latakplugin/atos/D0;->a(Ljava/lang/String;)Ljava/time/ZoneId;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lkot/KotTime;->ZONE_ID_UTC:Ljava/time/ZoneId;

    .line 16
    .line 17
    sget-object v0, Lkot/KotTime$Companion$AMMENDED_ISO_LOCAL_TIME$2;->INSTANCE:Lkot/KotTime$Companion$AMMENDED_ISO_LOCAL_TIME$2;

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lkot/KotTime;->AMMENDED_ISO_LOCAL_TIME$delegate:Lkotlin/Lazy;

    .line 24
    .line 25
    sget-object v0, Lkot/KotTime$Companion$OUTPUT_FORMATTER$2;->INSTANCE:Lkot/KotTime$Companion$OUTPUT_FORMATTER$2;

    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lkot/KotTime;->OUTPUT_FORMATTER$delegate:Lkotlin/Lazy;

    .line 32
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 4
    sget-object v0, Lkot/KotTime;->ZONE_ID_UTC:Ljava/time/ZoneId;

    invoke-static {v0}, Latakplugin/atos/B0;->a(Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;

    move-result-object v0

    const-string v1, "now(ZONE_ID_UTC)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lkot/KotTime;-><init>(Ljava/time/OffsetDateTime;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/OffsetDateTime;)V
    .locals 1
    .param p1    # Ljava/time/OffsetDateTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "underlying"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkot/KotTime;->underlying:Ljava/time/OffsetDateTime;

    .line 2
    new-instance p1, Lkot/KotTime$milliseconds$2;

    invoke-direct {p1, p0}, Lkot/KotTime$milliseconds$2;-><init>(Lkot/KotTime;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkot/KotTime;->milliseconds$delegate:Lkotlin/Lazy;

    .line 3
    new-instance p1, Lkot/KotTime$local$2;

    invoke-direct {p1, p0}, Lkot/KotTime$local$2;-><init>(Lkot/KotTime;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkot/KotTime;->local$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getAMMENDED_ISO_LOCAL_TIME$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lkot/KotTime;->AMMENDED_ISO_LOCAL_TIME$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getOUTPUT_FORMATTER$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lkot/KotTime;->OUTPUT_FORMATTER$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getUnderlying$p(Lkot/KotTime;)Ljava/time/OffsetDateTime;
    .locals 0

    .line 1
    iget-object p0, p0, Lkot/KotTime;->underlying:Ljava/time/OffsetDateTime;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getZONE_ID_UTC$cp()Ljava/time/ZoneId;
    .locals 1

    .line 1
    sget-object v0, Lkot/KotTime;->ZONE_ID_UTC:Ljava/time/ZoneId;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final of(J)Lkot/KotTime;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkot/KotTime;->Companion:Lkot/KotTime$Companion;

    invoke-virtual {v0, p0, p1}, Lkot/KotTime$Companion;->of(J)Lkot/KotTime;

    move-result-object p0

    return-object p0
.end method

.method public static final of(Ljava/time/Instant;)Lkot/KotTime;
    .locals 1
    .param p0    # Ljava/time/Instant;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lkot/KotTime;->Companion:Lkot/KotTime$Companion;

    invoke-virtual {v0, p0}, Lkot/KotTime$Companion;->of(Ljava/time/Instant;)Lkot/KotTime;

    move-result-object p0

    return-object p0
.end method

.method public static final of(Ljava/time/LocalDateTime;)Lkot/KotTime;
    .locals 1
    .param p0    # Ljava/time/LocalDateTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    sget-object v0, Lkot/KotTime;->Companion:Lkot/KotTime$Companion;

    invoke-virtual {v0, p0}, Lkot/KotTime$Companion;->of(Ljava/time/LocalDateTime;)Lkot/KotTime;

    move-result-object p0

    return-object p0
.end method

.method public static final of(Ljava/time/OffsetDateTime;)Lkot/KotTime;
    .locals 1
    .param p0    # Ljava/time/OffsetDateTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 4
    sget-object v0, Lkot/KotTime;->Companion:Lkot/KotTime$Companion;

    invoke-virtual {v0, p0}, Lkot/KotTime$Companion;->of(Ljava/time/OffsetDateTime;)Lkot/KotTime;

    move-result-object p0

    return-object p0
.end method

.method public static final of(Ljava/time/ZonedDateTime;)Lkot/KotTime;
    .locals 1
    .param p0    # Ljava/time/ZonedDateTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 5
    sget-object v0, Lkot/KotTime;->Companion:Lkot/KotTime$Companion;

    invoke-virtual {v0, p0}, Lkot/KotTime$Companion;->of(Ljava/time/ZonedDateTime;)Lkot/KotTime;

    move-result-object p0

    return-object p0
.end method

.method public static final parse(Ljava/lang/String;)Lkot/KotTime;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkot/KotTime;->Companion:Lkot/KotTime$Companion;

    invoke-virtual {v0, p0}, Lkot/KotTime$Companion;->parse(Ljava/lang/String;)Lkot/KotTime;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Lkot/KotTime;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lkot/KotTime;->underlying:Ljava/time/OffsetDateTime;

    .line 12
    .line 13
    check-cast p1, Lkot/KotTime;

    .line 14
    .line 15
    iget-object p1, p1, Lkot/KotTime;->underlying:Ljava/time/OffsetDateTime;

    .line 16
    .line 17
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    :goto_0
    return p1
.end method

.method public final getLocal()Ljava/time/LocalDateTime;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkot/KotTime;->local$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-local>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Latakplugin/atos/y0;->a(Ljava/lang/Object;)Ljava/time/LocalDateTime;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public final getMilliseconds()J
    .locals 2

    .line 1
    iget-object v0, p0, Lkot/KotTime;->milliseconds$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lkot/KotTime;->underlying:Ljava/time/OffsetDateTime;

    .line 2
    .line 3
    invoke-static {v0}, Latakplugin/atos/z0;->a(Ljava/time/OffsetDateTime;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final plusDays(J)Lkot/KotTime;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkot/KotTime;->underlying:Ljava/time/OffsetDateTime;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Latakplugin/atos/u0;->a(Ljava/time/OffsetDateTime;J)Ljava/time/OffsetDateTime;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, Lkot/KotTime;

    .line 8
    .line 9
    invoke-direct {p2, p1}, Lkot/KotTime;-><init>(Ljava/time/OffsetDateTime;)V

    .line 10
    .line 11
    .line 12
    return-object p2
.end method

.method public final plusHours(J)Lkot/KotTime;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkot/KotTime;->underlying:Ljava/time/OffsetDateTime;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Latakplugin/atos/G0;->a(Ljava/time/OffsetDateTime;J)Ljava/time/OffsetDateTime;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, Lkot/KotTime;

    .line 8
    .line 9
    invoke-direct {p2, p1}, Lkot/KotTime;-><init>(Ljava/time/OffsetDateTime;)V

    .line 10
    .line 11
    .line 12
    return-object p2
.end method

.method public final plusMilliseconds(J)Lkot/KotTime;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkot/KotTime;->underlying:Ljava/time/OffsetDateTime;

    .line 2
    .line 3
    const v1, 0xf4240

    .line 4
    .line 5
    .line 6
    int-to-long v1, v1

    .line 7
    mul-long/2addr p1, v1

    .line 8
    invoke-static {v0, p1, p2}, Latakplugin/atos/w0;->a(Ljava/time/OffsetDateTime;J)Ljava/time/OffsetDateTime;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance p2, Lkot/KotTime;

    .line 13
    .line 14
    invoke-direct {p2, p1}, Lkot/KotTime;-><init>(Ljava/time/OffsetDateTime;)V

    .line 15
    .line 16
    .line 17
    return-object p2
.end method

.method public final plusMinutes(J)Lkot/KotTime;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkot/KotTime;->underlying:Ljava/time/OffsetDateTime;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Latakplugin/atos/F0;->a(Ljava/time/OffsetDateTime;J)Ljava/time/OffsetDateTime;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, Lkot/KotTime;

    .line 8
    .line 9
    invoke-direct {p2, p1}, Lkot/KotTime;-><init>(Ljava/time/OffsetDateTime;)V

    .line 10
    .line 11
    .line 12
    return-object p2
.end method

.method public final plusMonths(J)Lkot/KotTime;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkot/KotTime;->underlying:Ljava/time/OffsetDateTime;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Latakplugin/atos/C0;->a(Ljava/time/OffsetDateTime;J)Ljava/time/OffsetDateTime;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, Lkot/KotTime;

    .line 8
    .line 9
    invoke-direct {p2, p1}, Lkot/KotTime;-><init>(Ljava/time/OffsetDateTime;)V

    .line 10
    .line 11
    .line 12
    return-object p2
.end method

.method public final plusSeconds(J)Lkot/KotTime;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkot/KotTime;->underlying:Ljava/time/OffsetDateTime;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Latakplugin/atos/x0;->a(Ljava/time/OffsetDateTime;J)Ljava/time/OffsetDateTime;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, Lkot/KotTime;

    .line 8
    .line 9
    invoke-direct {p2, p1}, Lkot/KotTime;-><init>(Ljava/time/OffsetDateTime;)V

    .line 10
    .line 11
    .line 12
    return-object p2
.end method

.method public final plusWeeks(J)Lkot/KotTime;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkot/KotTime;->underlying:Ljava/time/OffsetDateTime;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Latakplugin/atos/A0;->a(Ljava/time/OffsetDateTime;J)Ljava/time/OffsetDateTime;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, Lkot/KotTime;

    .line 8
    .line 9
    invoke-direct {p2, p1}, Lkot/KotTime;-><init>(Ljava/time/OffsetDateTime;)V

    .line 10
    .line 11
    .line 12
    return-object p2
.end method

.method public final plusYears(J)Lkot/KotTime;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkot/KotTime;->underlying:Ljava/time/OffsetDateTime;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Latakplugin/atos/v0;->a(Ljava/time/OffsetDateTime;J)Ljava/time/OffsetDateTime;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, Lkot/KotTime;

    .line 8
    .line 9
    invoke-direct {p2, p1}, Lkot/KotTime;-><init>(Ljava/time/OffsetDateTime;)V

    .line 10
    .line 11
    .line 12
    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkot/KotTime;->underlying:Ljava/time/OffsetDateTime;

    .line 2
    .line 3
    sget-object v1, Lkot/KotTime;->Companion:Lkot/KotTime$Companion;

    .line 4
    .line 5
    invoke-static {v1}, Lkot/KotTime$Companion;->access$getOUTPUT_FORMATTER(Lkot/KotTime$Companion;)Ljava/time/format/DateTimeFormatter;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Latakplugin/atos/E0;->a(Ljava/time/OffsetDateTime;Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "underlying.format(OUTPUT_FORMATTER)"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method
