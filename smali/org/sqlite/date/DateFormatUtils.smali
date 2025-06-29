.class public Lorg/sqlite/date/DateFormatUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ISO_DATETIME_FORMAT:Lorg/sqlite/date/FastDateFormat;

.field public static final ISO_DATETIME_TIME_ZONE_FORMAT:Lorg/sqlite/date/FastDateFormat;

.field public static final ISO_DATE_FORMAT:Lorg/sqlite/date/FastDateFormat;

.field public static final ISO_DATE_TIME_ZONE_FORMAT:Lorg/sqlite/date/FastDateFormat;

.field public static final ISO_TIME_FORMAT:Lorg/sqlite/date/FastDateFormat;

.field public static final ISO_TIME_NO_T_FORMAT:Lorg/sqlite/date/FastDateFormat;

.field public static final ISO_TIME_NO_T_TIME_ZONE_FORMAT:Lorg/sqlite/date/FastDateFormat;

.field public static final ISO_TIME_TIME_ZONE_FORMAT:Lorg/sqlite/date/FastDateFormat;

.field public static final SMTP_DATETIME_FORMAT:Lorg/sqlite/date/FastDateFormat;

.field private static final UTC_TIME_ZONE:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "GMT"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/sqlite/date/DateFormatUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    .line 8
    .line 9
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 10
    .line 11
    invoke-static {v0}, Lorg/sqlite/date/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/sqlite/date/FastDateFormat;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lorg/sqlite/date/DateFormatUtils;->ISO_DATETIME_FORMAT:Lorg/sqlite/date/FastDateFormat;

    .line 16
    .line 17
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ssZZ"

    .line 18
    .line 19
    invoke-static {v0}, Lorg/sqlite/date/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/sqlite/date/FastDateFormat;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lorg/sqlite/date/DateFormatUtils;->ISO_DATETIME_TIME_ZONE_FORMAT:Lorg/sqlite/date/FastDateFormat;

    .line 24
    .line 25
    const-string v0, "yyyy-MM-dd"

    .line 26
    .line 27
    invoke-static {v0}, Lorg/sqlite/date/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/sqlite/date/FastDateFormat;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lorg/sqlite/date/DateFormatUtils;->ISO_DATE_FORMAT:Lorg/sqlite/date/FastDateFormat;

    .line 32
    .line 33
    const-string v0, "yyyy-MM-ddZZ"

    .line 34
    .line 35
    invoke-static {v0}, Lorg/sqlite/date/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/sqlite/date/FastDateFormat;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lorg/sqlite/date/DateFormatUtils;->ISO_DATE_TIME_ZONE_FORMAT:Lorg/sqlite/date/FastDateFormat;

    .line 40
    .line 41
    const-string v0, "\'T\'HH:mm:ss"

    .line 42
    .line 43
    invoke-static {v0}, Lorg/sqlite/date/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/sqlite/date/FastDateFormat;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lorg/sqlite/date/DateFormatUtils;->ISO_TIME_FORMAT:Lorg/sqlite/date/FastDateFormat;

    .line 48
    .line 49
    const-string v0, "\'T\'HH:mm:ssZZ"

    .line 50
    .line 51
    invoke-static {v0}, Lorg/sqlite/date/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/sqlite/date/FastDateFormat;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lorg/sqlite/date/DateFormatUtils;->ISO_TIME_TIME_ZONE_FORMAT:Lorg/sqlite/date/FastDateFormat;

    .line 56
    .line 57
    const-string v0, "HH:mm:ss"

    .line 58
    .line 59
    invoke-static {v0}, Lorg/sqlite/date/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/sqlite/date/FastDateFormat;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lorg/sqlite/date/DateFormatUtils;->ISO_TIME_NO_T_FORMAT:Lorg/sqlite/date/FastDateFormat;

    .line 64
    .line 65
    const-string v0, "HH:mm:ssZZ"

    .line 66
    .line 67
    invoke-static {v0}, Lorg/sqlite/date/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/sqlite/date/FastDateFormat;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lorg/sqlite/date/DateFormatUtils;->ISO_TIME_NO_T_TIME_ZONE_FORMAT:Lorg/sqlite/date/FastDateFormat;

    .line 72
    .line 73
    const-string v0, "EEE, dd MMM yyyy HH:mm:ss Z"

    .line 74
    .line 75
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 76
    .line 77
    invoke-static {v0, v1}, Lorg/sqlite/date/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lorg/sqlite/date/FastDateFormat;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Lorg/sqlite/date/DateFormatUtils;->SMTP_DATETIME_FORMAT:Lorg/sqlite/date/FastDateFormat;

    .line 82
    .line 83
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

.method public static format(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    const/4 p0, 0x0

    invoke-static {v0, p2, p0, p0}, Lorg/sqlite/date/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 7
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    const/4 p0, 0x0

    invoke-static {v0, p2, p0, p3}, Lorg/sqlite/date/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(JLjava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1

    .line 4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    const/4 p0, 0x0

    invoke-static {v0, p2, p3, p0}, Lorg/sqlite/date/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(JLjava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 10
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, p2, p3, p4}, Lorg/sqlite/date/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0, v0}, Lorg/sqlite/date/DateFormatUtils;->format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-static {p0, p1, v0, p2}, Lorg/sqlite/date/DateFormatUtils;->format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p1, p2, v0}, Lorg/sqlite/date/DateFormatUtils;->format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 13
    invoke-static {p1, p2, p3}, Lorg/sqlite/date/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/sqlite/date/FastDateFormat;

    move-result-object p1

    .line 14
    invoke-virtual {p1, p0}, Lorg/sqlite/date/FastDateFormat;->format(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0, v0}, Lorg/sqlite/date/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-static {p0, p1, v0, p2}, Lorg/sqlite/date/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, p1, p2, v0}, Lorg/sqlite/date/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 11
    invoke-static {p1, p2, p3}, Lorg/sqlite/date/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/sqlite/date/FastDateFormat;

    move-result-object p1

    .line 12
    invoke-virtual {p1, p0}, Lorg/sqlite/date/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatUTC(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    sget-object p0, Lorg/sqlite/date/DateFormatUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    const/4 p1, 0x0

    invoke-static {v0, p2, p0, p1}, Lorg/sqlite/date/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatUTC(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    sget-object p0, Lorg/sqlite/date/DateFormatUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    invoke-static {v0, p2, p0, p3}, Lorg/sqlite/date/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatUTC(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    sget-object v0, Lorg/sqlite/date/DateFormatUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/sqlite/date/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatUTC(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 4
    sget-object v0, Lorg/sqlite/date/DateFormatUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    invoke-static {p0, p1, v0, p2}, Lorg/sqlite/date/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
