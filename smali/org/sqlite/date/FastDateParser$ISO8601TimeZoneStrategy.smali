.class Lorg/sqlite/date/FastDateParser$ISO8601TimeZoneStrategy;
.super Lorg/sqlite/date/FastDateParser$Strategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/date/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ISO8601TimeZoneStrategy"
.end annotation


# static fields
.field private static final ISO_8601_1_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

.field private static final ISO_8601_2_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

.field private static final ISO_8601_3_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;


# instance fields
.field private final pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/sqlite/date/FastDateParser$ISO8601TimeZoneStrategy;

    .line 2
    .line 3
    const-string v1, "(Z|(?:[+-]\\d{2}))"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/sqlite/date/FastDateParser$ISO8601TimeZoneStrategy;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/sqlite/date/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_1_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 9
    .line 10
    new-instance v0, Lorg/sqlite/date/FastDateParser$ISO8601TimeZoneStrategy;

    .line 11
    .line 12
    const-string v1, "(Z|(?:[+-]\\d{2}\\d{2}))"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lorg/sqlite/date/FastDateParser$ISO8601TimeZoneStrategy;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lorg/sqlite/date/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_2_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 18
    .line 19
    new-instance v0, Lorg/sqlite/date/FastDateParser$ISO8601TimeZoneStrategy;

    .line 20
    .line 21
    const-string v1, "(Z|(?:[+-]\\d{2}(?::)\\d{2}))"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lorg/sqlite/date/FastDateParser$ISO8601TimeZoneStrategy;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lorg/sqlite/date/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_3_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 27
    .line 28
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/sqlite/date/FastDateParser$Strategy;-><init>(Lorg/sqlite/date/FastDateParser$1;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lorg/sqlite/date/FastDateParser$ISO8601TimeZoneStrategy;->pattern:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method static getStrategy(I)Lorg/sqlite/date/FastDateParser$Strategy;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    sget-object p0, Lorg/sqlite/date/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_3_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v0, "invalid number of X"

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0

    .line 21
    :cond_1
    sget-object p0, Lorg/sqlite/date/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_2_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_2
    sget-object p0, Lorg/sqlite/date/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_1_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 25
    .line 26
    return-object p0
.end method


# virtual methods
.method addRegex(Lorg/sqlite/date/FastDateParser;Ljava/lang/StringBuilder;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/sqlite/date/FastDateParser$ISO8601TimeZoneStrategy;->pattern:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method

.method setCalendar(Lorg/sqlite/date/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "Z"

    .line 2
    .line 3
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string p1, "UTC"

    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v0, "GMT"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method
