.class public final Lkot/KotTime$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkot/KotTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkot/KotTime$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAMMENDED_ISO_LOCAL_TIME(Lkot/KotTime$Companion;)Ljava/time/format/DateTimeFormatter;
    .locals 0

    .line 1
    invoke-direct {p0}, Lkot/KotTime$Companion;->getAMMENDED_ISO_LOCAL_TIME()Ljava/time/format/DateTimeFormatter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getOUTPUT_FORMATTER(Lkot/KotTime$Companion;)Ljava/time/format/DateTimeFormatter;
    .locals 0

    .line 1
    invoke-direct {p0}, Lkot/KotTime$Companion;->getOUTPUT_FORMATTER()Ljava/time/format/DateTimeFormatter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getAMMENDED_ISO_LOCAL_TIME()Ljava/time/format/DateTimeFormatter;
    .locals 1

    .line 1
    invoke-static {}, Lkot/KotTime;->access$getAMMENDED_ISO_LOCAL_TIME$delegate$cp()Lkotlin/Lazy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Latakplugin/atos/L0;->a(Ljava/lang/Object;)Ljava/time/format/DateTimeFormatter;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private final getOUTPUT_FORMATTER()Ljava/time/format/DateTimeFormatter;
    .locals 1

    .line 1
    invoke-static {}, Lkot/KotTime;->access$getOUTPUT_FORMATTER$delegate$cp()Lkotlin/Lazy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Latakplugin/atos/L0;->a(Ljava/lang/Object;)Ljava/time/format/DateTimeFormatter;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method


# virtual methods
.method public final getZONE_ID_UTC$core()Ljava/time/ZoneId;
    .locals 1

    .line 1
    invoke-static {}, Lkot/KotTime;->access$getZONE_ID_UTC$cp()Ljava/time/ZoneId;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final of(J)Lkot/KotTime;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Latakplugin/atos/M0;->a(J)Ljava/time/Instant;

    move-result-object p1

    const-string p2, "ofEpochMilli(milliseconds)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkot/KotTime$Companion;->of(Ljava/time/Instant;)Lkot/KotTime;

    move-result-object p1

    return-object p1
.end method

.method public final of(Ljava/time/Instant;)Lkot/KotTime;
    .locals 2
    .param p1    # Ljava/time/Instant;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "instant"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lkot/KotTime$Companion;->getZONE_ID_UTC$core()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {p1, v0}, Latakplugin/atos/Q0;->a(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;

    move-result-object p1

    .line 3
    new-instance v0, Lkot/KotTime;

    const-string v1, "offsetDateTime"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lkot/KotTime;-><init>(Ljava/time/OffsetDateTime;)V

    return-object v0
.end method

.method public final of(Ljava/time/LocalDateTime;)Lkot/KotTime;
    .locals 1
    .param p1    # Ljava/time/LocalDateTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "localDateTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Latakplugin/atos/H0;->a()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {p1, v0}, Latakplugin/atos/I0;->a(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    const-string v0, "of(localDateTime, ZoneId.systemDefault())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkot/KotTime$Companion;->of(Ljava/time/ZonedDateTime;)Lkot/KotTime;

    move-result-object p1

    return-object p1
.end method

.method public final of(Ljava/time/OffsetDateTime;)Lkot/KotTime;
    .locals 2
    .param p1    # Ljava/time/OffsetDateTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "offsetDateTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Latakplugin/atos/J0;->a()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-static {p1, v0}, Latakplugin/atos/K0;->a(Ljava/time/OffsetDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object p1

    .line 6
    new-instance v0, Lkot/KotTime;

    const-string v1, "asUtc"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lkot/KotTime;-><init>(Ljava/time/OffsetDateTime;)V

    return-object v0
.end method

.method public final of(Ljava/time/ZonedDateTime;)Lkot/KotTime;
    .locals 2
    .param p1    # Ljava/time/ZonedDateTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "zonedDateTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lkot/KotTime$Companion;->getZONE_ID_UTC$core()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {p1, v0}, Latakplugin/atos/N0;->a(Ljava/time/ZonedDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    .line 8
    new-instance v0, Lkot/KotTime;

    invoke-static {p1}, Latakplugin/atos/O0;->a(Ljava/time/ZonedDateTime;)Ljava/time/OffsetDateTime;

    move-result-object p1

    const-string v1, "asUtc.toOffsetDateTime()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lkot/KotTime;-><init>(Ljava/time/OffsetDateTime;)V

    return-object v0
.end method

.method public final parse(Ljava/lang/String;)Lkot/KotTime;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "string"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Latakplugin/atos/P0;->a(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Latakplugin/atos/O0;->a(Ljava/time/ZonedDateTime;)Ljava/time/OffsetDateTime;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v0, Lkot/KotTime;

    .line 15
    .line 16
    const-string v1, "offset"

    .line 17
    .line 18
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p1}, Lkot/KotTime;-><init>(Ljava/time/OffsetDateTime;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method
