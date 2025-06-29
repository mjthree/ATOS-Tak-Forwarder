.class public Lorg/sqlite/date/FastDateParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/sqlite/date/DateParser;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sqlite/date/FastDateParser$ISO8601TimeZoneStrategy;,
        Lorg/sqlite/date/FastDateParser$TimeZoneStrategy;,
        Lorg/sqlite/date/FastDateParser$NumberStrategy;,
        Lorg/sqlite/date/FastDateParser$CaseInsensitiveTextStrategy;,
        Lorg/sqlite/date/FastDateParser$CopyQuotedStrategy;,
        Lorg/sqlite/date/FastDateParser$Strategy;
    }
.end annotation


# static fields
.field private static final ABBREVIATED_YEAR_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

.field private static final DAY_OF_MONTH_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

.field private static final DAY_OF_WEEK_IN_MONTH_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

.field private static final DAY_OF_YEAR_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

.field private static final HOUR12_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

.field private static final HOUR24_OF_DAY_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

.field private static final HOUR_OF_DAY_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

.field private static final HOUR_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

.field private static final ISO_8601_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

.field static final JAPANESE_IMPERIAL:Ljava/util/Locale;

.field private static final LITERAL_YEAR_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

.field private static final MILLISECOND_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

.field private static final MINUTE_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

.field private static final NUMBER_MONTH_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

.field private static final SECOND_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

.field private static final WEEK_OF_MONTH_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

.field private static final WEEK_OF_YEAR_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

.field private static final caches:[Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Lorg/sqlite/date/FastDateParser$Strategy;",
            ">;"
        }
    .end annotation
.end field

.field private static final formatPattern:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private final century:I

.field private transient currentFormatField:Ljava/lang/String;

.field private final locale:Ljava/util/Locale;

.field private transient nextStrategy:Lorg/sqlite/date/FastDateParser$Strategy;

.field private transient parsePattern:Ljava/util/regex/Pattern;

.field private final pattern:Ljava/lang/String;

.field private final startYear:I

.field private transient strategies:[Lorg/sqlite/date/FastDateParser$Strategy;

.field private final timeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Locale;

    .line 2
    .line 3
    const-string v1, "ja"

    .line 4
    .line 5
    const-string v2, "JP"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/sqlite/date/FastDateParser;->JAPANESE_IMPERIAL:Ljava/util/Locale;

    .line 11
    .line 12
    const-string v0, "D+|E+|F+|G+|H+|K+|M+|S+|W+|X+|Z+|a+|d+|h+|k+|m+|s+|w+|y+|z+|\'\'|\'[^\']++(\'\'[^\']*+)*+\'|[^\'A-Za-z]++"

    .line 13
    .line 14
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lorg/sqlite/date/FastDateParser;->formatPattern:Ljava/util/regex/Pattern;

    .line 19
    .line 20
    const/16 v0, 0x11

    .line 21
    .line 22
    new-array v0, v0, [Ljava/util/concurrent/ConcurrentMap;

    .line 23
    .line 24
    sput-object v0, Lorg/sqlite/date/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    .line 25
    .line 26
    new-instance v0, Lorg/sqlite/date/FastDateParser$1;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {v0, v1}, Lorg/sqlite/date/FastDateParser$1;-><init>(I)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lorg/sqlite/date/FastDateParser;->ABBREVIATED_YEAR_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 33
    .line 34
    new-instance v0, Lorg/sqlite/date/FastDateParser$2;

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    invoke-direct {v0, v2}, Lorg/sqlite/date/FastDateParser$2;-><init>(I)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lorg/sqlite/date/FastDateParser;->NUMBER_MONTH_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 41
    .line 42
    new-instance v0, Lorg/sqlite/date/FastDateParser$NumberStrategy;

    .line 43
    .line 44
    invoke-direct {v0, v1}, Lorg/sqlite/date/FastDateParser$NumberStrategy;-><init>(I)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lorg/sqlite/date/FastDateParser;->LITERAL_YEAR_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 48
    .line 49
    new-instance v0, Lorg/sqlite/date/FastDateParser$NumberStrategy;

    .line 50
    .line 51
    const/4 v1, 0x3

    .line 52
    invoke-direct {v0, v1}, Lorg/sqlite/date/FastDateParser$NumberStrategy;-><init>(I)V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lorg/sqlite/date/FastDateParser;->WEEK_OF_YEAR_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 56
    .line 57
    new-instance v0, Lorg/sqlite/date/FastDateParser$NumberStrategy;

    .line 58
    .line 59
    const/4 v1, 0x4

    .line 60
    invoke-direct {v0, v1}, Lorg/sqlite/date/FastDateParser$NumberStrategy;-><init>(I)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lorg/sqlite/date/FastDateParser;->WEEK_OF_MONTH_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 64
    .line 65
    new-instance v0, Lorg/sqlite/date/FastDateParser$NumberStrategy;

    .line 66
    .line 67
    const/4 v1, 0x6

    .line 68
    invoke-direct {v0, v1}, Lorg/sqlite/date/FastDateParser$NumberStrategy;-><init>(I)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lorg/sqlite/date/FastDateParser;->DAY_OF_YEAR_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 72
    .line 73
    new-instance v0, Lorg/sqlite/date/FastDateParser$NumberStrategy;

    .line 74
    .line 75
    const/4 v1, 0x5

    .line 76
    invoke-direct {v0, v1}, Lorg/sqlite/date/FastDateParser$NumberStrategy;-><init>(I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lorg/sqlite/date/FastDateParser;->DAY_OF_MONTH_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 80
    .line 81
    new-instance v0, Lorg/sqlite/date/FastDateParser$NumberStrategy;

    .line 82
    .line 83
    const/16 v1, 0x8

    .line 84
    .line 85
    invoke-direct {v0, v1}, Lorg/sqlite/date/FastDateParser$NumberStrategy;-><init>(I)V

    .line 86
    .line 87
    .line 88
    sput-object v0, Lorg/sqlite/date/FastDateParser;->DAY_OF_WEEK_IN_MONTH_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 89
    .line 90
    new-instance v0, Lorg/sqlite/date/FastDateParser$NumberStrategy;

    .line 91
    .line 92
    const/16 v1, 0xb

    .line 93
    .line 94
    invoke-direct {v0, v1}, Lorg/sqlite/date/FastDateParser$NumberStrategy;-><init>(I)V

    .line 95
    .line 96
    .line 97
    sput-object v0, Lorg/sqlite/date/FastDateParser;->HOUR_OF_DAY_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 98
    .line 99
    new-instance v0, Lorg/sqlite/date/FastDateParser$3;

    .line 100
    .line 101
    invoke-direct {v0, v1}, Lorg/sqlite/date/FastDateParser$3;-><init>(I)V

    .line 102
    .line 103
    .line 104
    sput-object v0, Lorg/sqlite/date/FastDateParser;->HOUR24_OF_DAY_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 105
    .line 106
    new-instance v0, Lorg/sqlite/date/FastDateParser$4;

    .line 107
    .line 108
    const/16 v1, 0xa

    .line 109
    .line 110
    invoke-direct {v0, v1}, Lorg/sqlite/date/FastDateParser$4;-><init>(I)V

    .line 111
    .line 112
    .line 113
    sput-object v0, Lorg/sqlite/date/FastDateParser;->HOUR12_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 114
    .line 115
    new-instance v0, Lorg/sqlite/date/FastDateParser$NumberStrategy;

    .line 116
    .line 117
    invoke-direct {v0, v1}, Lorg/sqlite/date/FastDateParser$NumberStrategy;-><init>(I)V

    .line 118
    .line 119
    .line 120
    sput-object v0, Lorg/sqlite/date/FastDateParser;->HOUR_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 121
    .line 122
    new-instance v0, Lorg/sqlite/date/FastDateParser$NumberStrategy;

    .line 123
    .line 124
    const/16 v1, 0xc

    .line 125
    .line 126
    invoke-direct {v0, v1}, Lorg/sqlite/date/FastDateParser$NumberStrategy;-><init>(I)V

    .line 127
    .line 128
    .line 129
    sput-object v0, Lorg/sqlite/date/FastDateParser;->MINUTE_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 130
    .line 131
    new-instance v0, Lorg/sqlite/date/FastDateParser$NumberStrategy;

    .line 132
    .line 133
    const/16 v1, 0xd

    .line 134
    .line 135
    invoke-direct {v0, v1}, Lorg/sqlite/date/FastDateParser$NumberStrategy;-><init>(I)V

    .line 136
    .line 137
    .line 138
    sput-object v0, Lorg/sqlite/date/FastDateParser;->SECOND_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 139
    .line 140
    new-instance v0, Lorg/sqlite/date/FastDateParser$NumberStrategy;

    .line 141
    .line 142
    const/16 v1, 0xe

    .line 143
    .line 144
    invoke-direct {v0, v1}, Lorg/sqlite/date/FastDateParser$NumberStrategy;-><init>(I)V

    .line 145
    .line 146
    .line 147
    sput-object v0, Lorg/sqlite/date/FastDateParser;->MILLISECOND_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 148
    .line 149
    new-instance v0, Lorg/sqlite/date/FastDateParser$ISO8601TimeZoneStrategy;

    .line 150
    .line 151
    const-string v1, "(Z|(?:[+-]\\d{2}(?::?\\d{2})?))"

    .line 152
    .line 153
    invoke-direct {v0, v1}, Lorg/sqlite/date/FastDateParser$ISO8601TimeZoneStrategy;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    sput-object v0, Lorg/sqlite/date/FastDateParser;->ISO_8601_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 157
    .line 158
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/sqlite/date/FastDateParser;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/sqlite/date/FastDateParser;->pattern:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lorg/sqlite/date/FastDateParser;->timeZone:Ljava/util/TimeZone;

    .line 5
    iput-object p3, p0, Lorg/sqlite/date/FastDateParser;->locale:Ljava/util/Locale;

    .line 6
    invoke-static {p2, p3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p4, :cond_0

    .line 7
    invoke-virtual {p1, p4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 8
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    goto :goto_0

    .line 9
    :cond_0
    sget-object p4, Lorg/sqlite/date/FastDateParser;->JAPANESE_IMPERIAL:Ljava/util/Locale;

    invoke-virtual {p3, p4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    .line 10
    :cond_1
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 11
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/lit8 p2, p2, -0x50

    .line 12
    :goto_0
    div-int/lit8 p3, p2, 0x64

    mul-int/lit8 p3, p3, 0x64

    iput p3, p0, Lorg/sqlite/date/FastDateParser;->century:I

    sub-int/2addr p2, p3

    .line 13
    iput p2, p0, Lorg/sqlite/date/FastDateParser;->startYear:I

    .line 14
    invoke-direct {p0, p1}, Lorg/sqlite/date/FastDateParser;->init(Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/sqlite/date/FastDateParser;->escapeRegex(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$200(ILjava/util/Calendar;Ljava/util/Locale;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/sqlite/date/FastDateParser;->getDisplayNames(ILjava/util/Calendar;Ljava/util/Locale;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$300(Lorg/sqlite/date/FastDateParser;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/sqlite/date/FastDateParser;->adjustYear(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private adjustYear(I)I
    .locals 2

    .line 1
    iget v0, p0, Lorg/sqlite/date/FastDateParser;->century:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iget v1, p0, Lorg/sqlite/date/FastDateParser;->startYear:I

    .line 5
    .line 6
    if-lt p1, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    add-int/lit8 v0, v0, 0x64

    .line 10
    .line 11
    :goto_0
    return v0
.end method

.method private static escapeRegex(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 3

    .line 1
    const-string v0, "\\Q"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge v0, v1, :cond_5

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0x27

    .line 18
    .line 19
    if-eq v1, v2, :cond_2

    .line 20
    .line 21
    const/16 v2, 0x5c

    .line 22
    .line 23
    if-eq v1, v2, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-ne v0, v2, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/16 v2, 0x45

    .line 43
    .line 44
    if-ne v1, v2, :cond_4

    .line 45
    .line 46
    const-string v1, "E\\\\E\\"

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const/16 v1, 0x51

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    if-eqz p2, :cond_4

    .line 55
    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-ne v0, v1, :cond_3

    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    :cond_4
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_5
    const-string p1, "\\E"

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    return-object p0
.end method

.method private static getCache(I)Ljava/util/concurrent/ConcurrentMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Lorg/sqlite/date/FastDateParser$Strategy;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/sqlite/date/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    aget-object v1, v0, p0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 12
    .line 13
    .line 14
    aput-object v1, v0, p0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    aget-object p0, v0, p0

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-object p0

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method private static getDisplayNames(ILjava/util/Calendar;Ljava/util/Locale;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Calendar;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p0, v0, p2}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method private getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/sqlite/date/FastDateParser$Strategy;
    .locals 3

    .line 1
    invoke-static {p1}, Lorg/sqlite/date/FastDateParser;->getCache(I)Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/sqlite/date/FastDateParser;->locale:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lorg/sqlite/date/FastDateParser$Strategy;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const/16 v1, 0xf

    .line 16
    .line 17
    if-ne p1, v1, :cond_0

    .line 18
    .line 19
    new-instance p1, Lorg/sqlite/date/FastDateParser$TimeZoneStrategy;

    .line 20
    .line 21
    iget-object p2, p0, Lorg/sqlite/date/FastDateParser;->locale:Ljava/util/Locale;

    .line 22
    .line 23
    invoke-direct {p1, p2}, Lorg/sqlite/date/FastDateParser$TimeZoneStrategy;-><init>(Ljava/util/Locale;)V

    .line 24
    .line 25
    .line 26
    move-object v1, p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v1, Lorg/sqlite/date/FastDateParser$CaseInsensitiveTextStrategy;

    .line 29
    .line 30
    iget-object v2, p0, Lorg/sqlite/date/FastDateParser;->locale:Ljava/util/Locale;

    .line 31
    .line 32
    invoke-direct {v1, p1, p2, v2}, Lorg/sqlite/date/FastDateParser$CaseInsensitiveTextStrategy;-><init>(ILjava/util/Calendar;Ljava/util/Locale;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object p1, p0, Lorg/sqlite/date/FastDateParser;->locale:Ljava/util/Locale;

    .line 36
    .line 37
    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lorg/sqlite/date/FastDateParser$Strategy;

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    return-object p1

    .line 46
    :cond_1
    return-object v1
.end method

.method private getStrategy(Ljava/lang/String;Ljava/util/Calendar;)Lorg/sqlite/date/FastDateParser$Strategy;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/16 v2, 0x57

    .line 7
    .line 8
    if-eq v1, v2, :cond_6

    .line 9
    .line 10
    const/16 v2, 0x58

    .line 11
    .line 12
    if-eq v1, v2, :cond_5

    .line 13
    .line 14
    const/16 v2, 0x79

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    if-eq v1, v2, :cond_3

    .line 18
    .line 19
    const/16 v2, 0x7a

    .line 20
    .line 21
    if-eq v1, v2, :cond_2

    .line 22
    .line 23
    sparse-switch v1, :sswitch_data_0

    .line 24
    .line 25
    .line 26
    packed-switch v1, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :pswitch_0
    sget-object p1, Lorg/sqlite/date/FastDateParser;->HOUR_OF_DAY_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_1
    invoke-direct {p0, v0, p2}, Lorg/sqlite/date/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/sqlite/date/FastDateParser$Strategy;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :pswitch_2
    sget-object p1, Lorg/sqlite/date/FastDateParser;->DAY_OF_WEEK_IN_MONTH_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 39
    .line 40
    return-object p1

    .line 41
    :pswitch_3
    const/4 p1, 0x7

    .line 42
    invoke-direct {p0, p1, p2}, Lorg/sqlite/date/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/sqlite/date/FastDateParser$Strategy;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :pswitch_4
    sget-object p1, Lorg/sqlite/date/FastDateParser;->DAY_OF_YEAR_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 48
    .line 49
    return-object p1

    .line 50
    :sswitch_0
    sget-object p1, Lorg/sqlite/date/FastDateParser;->WEEK_OF_YEAR_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 51
    .line 52
    return-object p1

    .line 53
    :sswitch_1
    sget-object p1, Lorg/sqlite/date/FastDateParser;->SECOND_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 54
    .line 55
    return-object p1

    .line 56
    :sswitch_2
    sget-object p1, Lorg/sqlite/date/FastDateParser;->MINUTE_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 57
    .line 58
    return-object p1

    .line 59
    :sswitch_3
    sget-object p1, Lorg/sqlite/date/FastDateParser;->HOUR24_OF_DAY_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 60
    .line 61
    return-object p1

    .line 62
    :sswitch_4
    sget-object p1, Lorg/sqlite/date/FastDateParser;->HOUR12_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 63
    .line 64
    return-object p1

    .line 65
    :sswitch_5
    sget-object p1, Lorg/sqlite/date/FastDateParser;->DAY_OF_MONTH_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 66
    .line 67
    return-object p1

    .line 68
    :sswitch_6
    const/16 p1, 0x9

    .line 69
    .line 70
    invoke-direct {p0, p1, p2}, Lorg/sqlite/date/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/sqlite/date/FastDateParser$Strategy;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1

    .line 75
    :sswitch_7
    const-string v0, "ZZ"

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    sget-object p1, Lorg/sqlite/date/FastDateParser;->ISO_8601_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 84
    .line 85
    return-object p1

    .line 86
    :sswitch_8
    sget-object p1, Lorg/sqlite/date/FastDateParser;->MILLISECOND_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 87
    .line 88
    return-object p1

    .line 89
    :sswitch_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    const/4 v0, 0x3

    .line 94
    if-lt p1, v0, :cond_0

    .line 95
    .line 96
    invoke-direct {p0, v3, p2}, Lorg/sqlite/date/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/sqlite/date/FastDateParser$Strategy;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    goto :goto_0

    .line 101
    :cond_0
    sget-object p1, Lorg/sqlite/date/FastDateParser;->NUMBER_MONTH_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 102
    .line 103
    :goto_0
    return-object p1

    .line 104
    :sswitch_a
    sget-object p1, Lorg/sqlite/date/FastDateParser;->HOUR_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 105
    .line 106
    return-object p1

    .line 107
    :sswitch_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-le p2, v3, :cond_1

    .line 112
    .line 113
    new-instance p2, Lorg/sqlite/date/FastDateParser$CopyQuotedStrategy;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    const/4 v1, 0x1

    .line 120
    sub-int/2addr v0, v1

    .line 121
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-direct {p2, p1}, Lorg/sqlite/date/FastDateParser$CopyQuotedStrategy;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-object p2

    .line 129
    :cond_1
    :goto_1
    new-instance p2, Lorg/sqlite/date/FastDateParser$CopyQuotedStrategy;

    .line 130
    .line 131
    invoke-direct {p2, p1}, Lorg/sqlite/date/FastDateParser$CopyQuotedStrategy;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-object p2

    .line 135
    :cond_2
    const/16 p1, 0xf

    .line 136
    .line 137
    invoke-direct {p0, p1, p2}, Lorg/sqlite/date/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/sqlite/date/FastDateParser$Strategy;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    return-object p1

    .line 142
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-le p1, v3, :cond_4

    .line 147
    .line 148
    sget-object p1, Lorg/sqlite/date/FastDateParser;->LITERAL_YEAR_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_4
    sget-object p1, Lorg/sqlite/date/FastDateParser;->ABBREVIATED_YEAR_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 152
    .line 153
    :goto_2
    return-object p1

    .line 154
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    invoke-static {p1}, Lorg/sqlite/date/FastDateParser$ISO8601TimeZoneStrategy;->getStrategy(I)Lorg/sqlite/date/FastDateParser$Strategy;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    return-object p1

    .line 163
    :cond_6
    sget-object p1, Lorg/sqlite/date/FastDateParser;->WEEK_OF_MONTH_STRATEGY:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 164
    .line 165
    return-object p1

    .line 166
    nop

    .line 167
    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_b
        0x4b -> :sswitch_a
        0x4d -> :sswitch_9
        0x53 -> :sswitch_8
        0x5a -> :sswitch_7
        0x61 -> :sswitch_6
        0x64 -> :sswitch_5
        0x68 -> :sswitch_4
        0x6b -> :sswitch_3
        0x6d -> :sswitch_2
        0x73 -> :sswitch_1
        0x77 -> :sswitch_0
    .end sparse-switch

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init(Ljava/util/Calendar;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v2, Lorg/sqlite/date/FastDateParser;->formatPattern:Ljava/util/regex/Pattern;

    .line 12
    .line 13
    iget-object v3, p0, Lorg/sqlite/date/FastDateParser;->pattern:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_4

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iput-object v3, p0, Lorg/sqlite/date/FastDateParser;->currentFormatField:Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {p0, v3, p1}, Lorg/sqlite/date/FastDateParser;->getStrategy(Ljava/lang/String;Ljava/util/Calendar;)Lorg/sqlite/date/FastDateParser$Strategy;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-virtual {v2, v4, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_2

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lorg/sqlite/date/FastDateParser;->nextStrategy:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionStart()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-ne v4, v5, :cond_1

    .line 64
    .line 65
    invoke-virtual {v3, p0, v0}, Lorg/sqlite/date/FastDateParser$Strategy;->addRegex(Lorg/sqlite/date/FastDateParser;Ljava/lang/StringBuilder;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_0

    .line 70
    .line 71
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    :cond_0
    iput-object p1, p0, Lorg/sqlite/date/FastDateParser;->currentFormatField:Ljava/lang/String;

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    new-array p1, p1, [Lorg/sqlite/date/FastDateParser$Strategy;

    .line 81
    .line 82
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, [Lorg/sqlite/date/FastDateParser$Strategy;

    .line 87
    .line 88
    iput-object p1, p0, Lorg/sqlite/date/FastDateParser;->strategies:[Lorg/sqlite/date/FastDateParser$Strategy;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lorg/sqlite/date/FastDateParser;->parsePattern:Ljava/util/regex/Pattern;

    .line 99
    .line 100
    return-void

    .line 101
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v1, "Failed to parse \""

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lorg/sqlite/date/FastDateParser;->pattern:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v1, "\" ; gave up at index "

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionStart()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p1

    .line 138
    :cond_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-direct {p0, v4, p1}, Lorg/sqlite/date/FastDateParser;->getStrategy(Ljava/lang/String;Ljava/util/Calendar;)Lorg/sqlite/date/FastDateParser$Strategy;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    iput-object v5, p0, Lorg/sqlite/date/FastDateParser;->nextStrategy:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 147
    .line 148
    invoke-virtual {v3, p0, v0}, Lorg/sqlite/date/FastDateParser$Strategy;->addRegex(Lorg/sqlite/date/FastDateParser;Ljava/lang/StringBuilder;)Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-eqz v5, :cond_3

    .line 153
    .line 154
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    :cond_3
    iput-object v4, p0, Lorg/sqlite/date/FastDateParser;->currentFormatField:Ljava/lang/String;

    .line 158
    .line 159
    iget-object v3, p0, Lorg/sqlite/date/FastDateParser;->nextStrategy:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 163
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v1, "Illegal pattern character \'"

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    iget-object v1, p0, Lorg/sqlite/date/FastDateParser;->pattern:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionStart()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v1, "\'"

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/sqlite/date/FastDateParser;->timeZone:Ljava/util/TimeZone;

    .line 5
    .line 6
    iget-object v0, p0, Lorg/sqlite/date/FastDateParser;->locale:Ljava/util/Locale;

    .line 7
    .line 8
    invoke-static {p1, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Lorg/sqlite/date/FastDateParser;->init(Ljava/util/Calendar;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/sqlite/date/FastDateParser;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lorg/sqlite/date/FastDateParser;

    .line 8
    .line 9
    iget-object v0, p0, Lorg/sqlite/date/FastDateParser;->pattern:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p1, Lorg/sqlite/date/FastDateParser;->pattern:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lorg/sqlite/date/FastDateParser;->timeZone:Ljava/util/TimeZone;

    .line 20
    .line 21
    iget-object v2, p1, Lorg/sqlite/date/FastDateParser;->timeZone:Ljava/util/TimeZone;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lorg/sqlite/date/FastDateParser;->locale:Ljava/util/Locale;

    .line 30
    .line 31
    iget-object p1, p1, Lorg/sqlite/date/FastDateParser;->locale:Ljava/util/Locale;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    :cond_1
    return v1
.end method

.method getFieldWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/date/FastDateParser;->currentFormatField:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/date/FastDateParser;->locale:Ljava/util/Locale;

    .line 2
    .line 3
    return-object v0
.end method

.method getParsePattern()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/date/FastDateParser;->parsePattern:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/date/FastDateParser;->pattern:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/date/FastDateParser;->timeZone:Ljava/util/TimeZone;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/sqlite/date/FastDateParser;->pattern:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lorg/sqlite/date/FastDateParser;->timeZone:Ljava/util/TimeZone;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lorg/sqlite/date/FastDateParser;->locale:Ljava/util/Locale;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    mul-int/lit8 v2, v2, 0xd

    .line 20
    .line 21
    add-int/2addr v1, v2

    .line 22
    mul-int/lit8 v1, v1, 0xd

    .line 23
    .line 24
    add-int/2addr v0, v1

    .line 25
    return v0
.end method

.method isNextNumber()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/date/FastDateParser;->nextStrategy:Lorg/sqlite/date/FastDateParser$Strategy;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/sqlite/date/FastDateParser$Strategy;->isNumber()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".000"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/sqlite/date/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lorg/sqlite/date/FastDateParser;->locale:Ljava/util/Locale;

    sget-object v2, Lorg/sqlite/date/FastDateParser;->JAPANESE_IMPERIAL:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "\" does not match "

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(The "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/sqlite/date/FastDateParser;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " locale does not support dates before 1868 AD)\nUnparseable date: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/sqlite/date/FastDateParser;->parsePattern:Ljava/util/regex/Pattern;

    .line 5
    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unparseable date: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/sqlite/date/FastDateParser;->parsePattern:Ljava/util/regex/Pattern;

    .line 7
    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 5

    .line 8
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 9
    iget-object v1, p0, Lorg/sqlite/date/FastDateParser;->parsePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_0
    iget-object v1, p0, Lorg/sqlite/date/FastDateParser;->timeZone:Ljava/util/TimeZone;

    iget-object v2, p0, Lorg/sqlite/date/FastDateParser;->locale:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    const/4 v2, 0x0

    .line 13
    :goto_0
    iget-object v3, p0, Lorg/sqlite/date/FastDateParser;->strategies:[Lorg/sqlite/date/FastDateParser$Strategy;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 14
    aget-object v2, v3, v2

    .line 15
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v1, v3}, Lorg/sqlite/date/FastDateParser$Strategy;->setCalendar(Lorg/sqlite/date/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V

    move v2, v4

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 17
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public parseObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/date/FastDateParser;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/date/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "FastDateParser["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/sqlite/date/FastDateParser;->pattern:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ","

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lorg/sqlite/date/FastDateParser;->locale:Ljava/util/Locale;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lorg/sqlite/date/FastDateParser;->timeZone:Ljava/util/TimeZone;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, "]"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method
