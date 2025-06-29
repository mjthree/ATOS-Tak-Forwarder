.class public Lorg/sqlite/date/FastDatePrinter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/sqlite/date/DatePrinter;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sqlite/date/FastDatePrinter$TimeZoneDisplayKey;,
        Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;,
        Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;,
        Lorg/sqlite/date/FastDatePrinter$TimeZoneNameRule;,
        Lorg/sqlite/date/FastDatePrinter$TwentyFourHourField;,
        Lorg/sqlite/date/FastDatePrinter$TwelveHourField;,
        Lorg/sqlite/date/FastDatePrinter$TwoDigitMonthField;,
        Lorg/sqlite/date/FastDatePrinter$TwoDigitYearField;,
        Lorg/sqlite/date/FastDatePrinter$TwoDigitNumberField;,
        Lorg/sqlite/date/FastDatePrinter$PaddedNumberField;,
        Lorg/sqlite/date/FastDatePrinter$UnpaddedMonthField;,
        Lorg/sqlite/date/FastDatePrinter$UnpaddedNumberField;,
        Lorg/sqlite/date/FastDatePrinter$TextField;,
        Lorg/sqlite/date/FastDatePrinter$StringLiteral;,
        Lorg/sqlite/date/FastDatePrinter$CharacterLiteral;,
        Lorg/sqlite/date/FastDatePrinter$NumberRule;,
        Lorg/sqlite/date/FastDatePrinter$Rule;
    }
.end annotation


# static fields
.field public static final FULL:I = 0x0

.field public static final LONG:I = 0x1

.field public static final MEDIUM:I = 0x2

.field public static final SHORT:I = 0x3

.field private static final cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lorg/sqlite/date/FastDatePrinter$TimeZoneDisplayKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mLocale:Ljava/util/Locale;

.field private transient mMaxLengthEstimate:I

.field private final mPattern:Ljava/lang/String;

.field private transient mRules:[Lorg/sqlite/date/FastDatePrinter$Rule;

.field private final mTimeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/sqlite/date/FastDatePrinter;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    .line 8
    .line 9
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/sqlite/date/FastDatePrinter;->mPattern:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/sqlite/date/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/sqlite/date/FastDatePrinter;->mLocale:Ljava/util/Locale;

    .line 9
    .line 10
    invoke-direct {p0}, Lorg/sqlite/date/FastDatePrinter;->init()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method static synthetic access$000(Ljava/lang/StringBuffer;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/sqlite/date/FastDatePrinter;->appendDigits(Ljava/lang/StringBuffer;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static appendDigits(Ljava/lang/StringBuffer;I)V
    .locals 1

    .line 1
    div-int/lit8 v0, p1, 0xa

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x30

    .line 4
    .line 5
    int-to-char v0, v0

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 7
    .line 8
    .line 9
    rem-int/lit8 p1, p1, 0xa

    .line 10
    .line 11
    add-int/lit8 p1, p1, 0x30

    .line 12
    .line 13
    int-to-char p1, p1

    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    iget v1, p0, Lorg/sqlite/date/FastDatePrinter;->mMaxLengthEstimate:I

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Lorg/sqlite/date/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method static getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lorg/sqlite/date/FastDatePrinter$TimeZoneDisplayKey;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lorg/sqlite/date/FastDatePrinter$TimeZoneDisplayKey;-><init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lorg/sqlite/date/FastDatePrinter;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    .line 7
    .line 8
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Ljava/lang/String;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Ljava/lang/String;

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    move-object v2, p0

    .line 29
    :cond_0
    return-object v2
.end method

.method private init()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/date/FastDatePrinter;->parsePattern()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    new-array v1, v1, [Lorg/sqlite/date/FastDatePrinter$Rule;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, [Lorg/sqlite/date/FastDatePrinter$Rule;

    .line 16
    .line 17
    iput-object v0, p0, Lorg/sqlite/date/FastDatePrinter;->mRules:[Lorg/sqlite/date/FastDatePrinter$Rule;

    .line 18
    .line 19
    array-length v0, v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    if-ltz v0, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Lorg/sqlite/date/FastDatePrinter;->mRules:[Lorg/sqlite/date/FastDatePrinter$Rule;

    .line 26
    .line 27
    aget-object v2, v2, v0

    .line 28
    .line 29
    invoke-interface {v2}, Lorg/sqlite/date/FastDatePrinter$Rule;->estimateLength()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    add-int/2addr v1, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput v1, p0, Lorg/sqlite/date/FastDatePrinter;->mMaxLengthEstimate:I

    .line 36
    .line 37
    return-void
.end method

.method private newCalendar()Ljava/util/GregorianCalendar;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/GregorianCalendar;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/sqlite/date/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/sqlite/date/FastDatePrinter;->mLocale:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
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
    invoke-direct {p0}, Lorg/sqlite/date/FastDatePrinter;->init()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method protected applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/sqlite/date/FastDatePrinter;->mRules:[Lorg/sqlite/date/FastDatePrinter$Rule;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-interface {v3, p2, p1}, Lorg/sqlite/date/FastDatePrinter$Rule;->appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/sqlite/date/FastDatePrinter;

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
    check-cast p1, Lorg/sqlite/date/FastDatePrinter;

    .line 8
    .line 9
    iget-object v0, p0, Lorg/sqlite/date/FastDatePrinter;->mPattern:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p1, Lorg/sqlite/date/FastDatePrinter;->mPattern:Ljava/lang/String;

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
    iget-object v0, p0, Lorg/sqlite/date/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    .line 20
    .line 21
    iget-object v2, p1, Lorg/sqlite/date/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

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
    iget-object v0, p0, Lorg/sqlite/date/FastDatePrinter;->mLocale:Ljava/util/Locale;

    .line 30
    .line 31
    iget-object p1, p1, Lorg/sqlite/date/FastDatePrinter;->mLocale:Ljava/util/Locale;

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

.method public format(J)Ljava/lang/String;
    .locals 1

    .line 9
    invoke-direct {p0}, Lorg/sqlite/date/FastDatePrinter;->newCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 11
    invoke-direct {p0, v0}, Lorg/sqlite/date/FastDatePrinter;->applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/sqlite/date/FastDatePrinter;->mMaxLengthEstimate:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/sqlite/date/FastDatePrinter;->format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 12
    invoke-direct {p0}, Lorg/sqlite/date/FastDatePrinter;->newCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 14
    invoke-direct {p0, v0}, Lorg/sqlite/date/FastDatePrinter;->applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    .line 16
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0, p3}, Lorg/sqlite/date/FastDatePrinter;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .line 1
    instance-of p3, p1, Ljava/util/Date;

    if-eqz p3, :cond_0

    .line 2
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lorg/sqlite/date/FastDatePrinter;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of p3, p1, Ljava/util/Calendar;

    if-eqz p3, :cond_1

    .line 4
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lorg/sqlite/date/FastDatePrinter;->format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    instance-of p3, p1, Ljava/lang/Long;

    if-eqz p3, :cond_2

    .line 6
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/sqlite/date/FastDatePrinter;->format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown class: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_3

    .line 8
    const-string p1, "<null>"

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/date/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    .line 17
    invoke-direct {p0}, Lorg/sqlite/date/FastDatePrinter;->newCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 19
    invoke-virtual {p0, v0, p2}, Lorg/sqlite/date/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/date/FastDatePrinter;->mLocale:Ljava/util/Locale;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxLengthEstimate()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/sqlite/date/FastDatePrinter;->mMaxLengthEstimate:I

    .line 2
    .line 3
    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/date/FastDatePrinter;->mPattern:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/date/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/sqlite/date/FastDatePrinter;->mPattern:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lorg/sqlite/date/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lorg/sqlite/date/FastDatePrinter;->mLocale:Ljava/util/Locale;

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

.method protected parsePattern()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/sqlite/date/FastDatePrinter$Rule;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/text/DateFormatSymbols;

    .line 4
    .line 5
    iget-object v2, v0, Lorg/sqlite/date/FastDatePrinter;->mLocale:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v8, v0, Lorg/sqlite/date/FastDatePrinter;->mPattern:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    const/4 v9, 0x0

    .line 46
    move v10, v9

    .line 47
    :goto_0
    if-ge v10, v8, :cond_f

    .line 48
    .line 49
    filled-new-array {v10}, [I

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    iget-object v11, v0, Lorg/sqlite/date/FastDatePrinter;->mPattern:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, v11, v10}, Lorg/sqlite/date/FastDatePrinter;->parseToken(Ljava/lang/String;[I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v11

    .line 59
    aget v10, v10, v9

    .line 60
    .line 61
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v12

    .line 65
    if-nez v12, :cond_0

    .line 66
    .line 67
    goto/16 :goto_5

    .line 68
    .line 69
    :cond_0
    invoke-virtual {v11, v9}, Ljava/lang/String;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v13

    .line 73
    const/16 v14, 0x57

    .line 74
    .line 75
    if-eq v13, v14, :cond_e

    .line 76
    .line 77
    const/16 v14, 0x58

    .line 78
    .line 79
    if-eq v13, v14, :cond_d

    .line 80
    .line 81
    const/16 v14, 0x79

    .line 82
    .line 83
    if-eq v13, v14, :cond_a

    .line 84
    .line 85
    const/16 v14, 0x7a

    .line 86
    .line 87
    if-eq v13, v14, :cond_8

    .line 88
    .line 89
    const/16 v15, 0xb

    .line 90
    .line 91
    const/4 v14, 0x3

    .line 92
    sparse-switch v13, :sswitch_data_0

    .line 93
    .line 94
    .line 95
    packed-switch v13, :pswitch_data_0

    .line 96
    .line 97
    .line 98
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v3, "Illegal pattern component: "

    .line 106
    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v1

    .line 121
    :pswitch_0
    invoke-virtual {v0, v15, v12}, Lorg/sqlite/date/FastDatePrinter;->selectNumberRule(II)Lorg/sqlite/date/FastDatePrinter$NumberRule;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    :goto_1
    const/4 v13, 0x1

    .line 126
    goto/16 :goto_4

    .line 127
    .line 128
    :pswitch_1
    new-instance v11, Lorg/sqlite/date/FastDatePrinter$TextField;

    .line 129
    .line 130
    invoke-direct {v11, v9, v3}, Lorg/sqlite/date/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :pswitch_2
    const/16 v11, 0x8

    .line 135
    .line 136
    invoke-virtual {v0, v11, v12}, Lorg/sqlite/date/FastDatePrinter;->selectNumberRule(II)Lorg/sqlite/date/FastDatePrinter$NumberRule;

    .line 137
    .line 138
    .line 139
    move-result-object v11

    .line 140
    goto :goto_1

    .line 141
    :pswitch_3
    new-instance v11, Lorg/sqlite/date/FastDatePrinter$TextField;

    .line 142
    .line 143
    const/4 v13, 0x4

    .line 144
    if-ge v12, v13, :cond_1

    .line 145
    .line 146
    move-object v12, v7

    .line 147
    goto :goto_2

    .line 148
    :cond_1
    move-object v12, v6

    .line 149
    :goto_2
    const/4 v13, 0x7

    .line 150
    invoke-direct {v11, v13, v12}, Lorg/sqlite/date/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :pswitch_4
    const/4 v11, 0x6

    .line 155
    invoke-virtual {v0, v11, v12}, Lorg/sqlite/date/FastDatePrinter;->selectNumberRule(II)Lorg/sqlite/date/FastDatePrinter$NumberRule;

    .line 156
    .line 157
    .line 158
    move-result-object v11

    .line 159
    goto :goto_1

    .line 160
    :sswitch_0
    invoke-virtual {v0, v14, v12}, Lorg/sqlite/date/FastDatePrinter;->selectNumberRule(II)Lorg/sqlite/date/FastDatePrinter$NumberRule;

    .line 161
    .line 162
    .line 163
    move-result-object v11

    .line 164
    goto :goto_1

    .line 165
    :sswitch_1
    const/16 v11, 0xd

    .line 166
    .line 167
    invoke-virtual {v0, v11, v12}, Lorg/sqlite/date/FastDatePrinter;->selectNumberRule(II)Lorg/sqlite/date/FastDatePrinter$NumberRule;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    goto :goto_1

    .line 172
    :sswitch_2
    const/16 v11, 0xc

    .line 173
    .line 174
    invoke-virtual {v0, v11, v12}, Lorg/sqlite/date/FastDatePrinter;->selectNumberRule(II)Lorg/sqlite/date/FastDatePrinter$NumberRule;

    .line 175
    .line 176
    .line 177
    move-result-object v11

    .line 178
    goto :goto_1

    .line 179
    :sswitch_3
    new-instance v11, Lorg/sqlite/date/FastDatePrinter$TwentyFourHourField;

    .line 180
    .line 181
    invoke-virtual {v0, v15, v12}, Lorg/sqlite/date/FastDatePrinter;->selectNumberRule(II)Lorg/sqlite/date/FastDatePrinter$NumberRule;

    .line 182
    .line 183
    .line 184
    move-result-object v12

    .line 185
    invoke-direct {v11, v12}, Lorg/sqlite/date/FastDatePrinter$TwentyFourHourField;-><init>(Lorg/sqlite/date/FastDatePrinter$NumberRule;)V

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :sswitch_4
    new-instance v11, Lorg/sqlite/date/FastDatePrinter$TwelveHourField;

    .line 190
    .line 191
    const/16 v13, 0xa

    .line 192
    .line 193
    invoke-virtual {v0, v13, v12}, Lorg/sqlite/date/FastDatePrinter;->selectNumberRule(II)Lorg/sqlite/date/FastDatePrinter$NumberRule;

    .line 194
    .line 195
    .line 196
    move-result-object v12

    .line 197
    invoke-direct {v11, v12}, Lorg/sqlite/date/FastDatePrinter$TwelveHourField;-><init>(Lorg/sqlite/date/FastDatePrinter$NumberRule;)V

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :sswitch_5
    const/4 v11, 0x5

    .line 202
    invoke-virtual {v0, v11, v12}, Lorg/sqlite/date/FastDatePrinter;->selectNumberRule(II)Lorg/sqlite/date/FastDatePrinter$NumberRule;

    .line 203
    .line 204
    .line 205
    move-result-object v11

    .line 206
    goto :goto_1

    .line 207
    :sswitch_6
    new-instance v11, Lorg/sqlite/date/FastDatePrinter$TextField;

    .line 208
    .line 209
    const/16 v12, 0x9

    .line 210
    .line 211
    invoke-direct {v11, v12, v1}, Lorg/sqlite/date/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :sswitch_7
    const/4 v11, 0x1

    .line 216
    if-ne v12, v11, :cond_2

    .line 217
    .line 218
    sget-object v11, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_NO_COLON:Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;

    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_2
    const/4 v11, 0x2

    .line 222
    if-ne v12, v11, :cond_3

    .line 223
    .line 224
    sget-object v11, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_ISO_8601:Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;

    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_3
    sget-object v11, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_COLON:Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;

    .line 228
    .line 229
    goto :goto_1

    .line 230
    :sswitch_8
    const/16 v11, 0xe

    .line 231
    .line 232
    invoke-virtual {v0, v11, v12}, Lorg/sqlite/date/FastDatePrinter;->selectNumberRule(II)Lorg/sqlite/date/FastDatePrinter$NumberRule;

    .line 233
    .line 234
    .line 235
    move-result-object v11

    .line 236
    goto :goto_1

    .line 237
    :sswitch_9
    const/4 v11, 0x2

    .line 238
    const/4 v13, 0x4

    .line 239
    if-lt v12, v13, :cond_4

    .line 240
    .line 241
    new-instance v12, Lorg/sqlite/date/FastDatePrinter$TextField;

    .line 242
    .line 243
    invoke-direct {v12, v11, v4}, Lorg/sqlite/date/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    :goto_3
    move-object v11, v12

    .line 247
    goto :goto_1

    .line 248
    :cond_4
    if-ne v12, v14, :cond_5

    .line 249
    .line 250
    new-instance v12, Lorg/sqlite/date/FastDatePrinter$TextField;

    .line 251
    .line 252
    invoke-direct {v12, v11, v5}, Lorg/sqlite/date/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_5
    if-ne v12, v11, :cond_6

    .line 257
    .line 258
    sget-object v11, Lorg/sqlite/date/FastDatePrinter$TwoDigitMonthField;->INSTANCE:Lorg/sqlite/date/FastDatePrinter$TwoDigitMonthField;

    .line 259
    .line 260
    goto/16 :goto_1

    .line 261
    .line 262
    :cond_6
    sget-object v11, Lorg/sqlite/date/FastDatePrinter$UnpaddedMonthField;->INSTANCE:Lorg/sqlite/date/FastDatePrinter$UnpaddedMonthField;

    .line 263
    .line 264
    goto/16 :goto_1

    .line 265
    .line 266
    :sswitch_a
    const/16 v11, 0xa

    .line 267
    .line 268
    invoke-virtual {v0, v11, v12}, Lorg/sqlite/date/FastDatePrinter;->selectNumberRule(II)Lorg/sqlite/date/FastDatePrinter$NumberRule;

    .line 269
    .line 270
    .line 271
    move-result-object v11

    .line 272
    goto/16 :goto_1

    .line 273
    .line 274
    :sswitch_b
    const/4 v12, 0x1

    .line 275
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v11

    .line 279
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 280
    .line 281
    .line 282
    move-result v13

    .line 283
    if-ne v13, v12, :cond_7

    .line 284
    .line 285
    new-instance v12, Lorg/sqlite/date/FastDatePrinter$CharacterLiteral;

    .line 286
    .line 287
    invoke-virtual {v11, v9}, Ljava/lang/String;->charAt(I)C

    .line 288
    .line 289
    .line 290
    move-result v11

    .line 291
    invoke-direct {v12, v11}, Lorg/sqlite/date/FastDatePrinter$CharacterLiteral;-><init>(C)V

    .line 292
    .line 293
    .line 294
    goto :goto_3

    .line 295
    :cond_7
    new-instance v12, Lorg/sqlite/date/FastDatePrinter$StringLiteral;

    .line 296
    .line 297
    invoke-direct {v12, v11}, Lorg/sqlite/date/FastDatePrinter$StringLiteral;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    goto :goto_3

    .line 301
    :cond_8
    const/4 v11, 0x4

    .line 302
    if-lt v12, v11, :cond_9

    .line 303
    .line 304
    new-instance v11, Lorg/sqlite/date/FastDatePrinter$TimeZoneNameRule;

    .line 305
    .line 306
    iget-object v12, v0, Lorg/sqlite/date/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    .line 307
    .line 308
    iget-object v13, v0, Lorg/sqlite/date/FastDatePrinter;->mLocale:Ljava/util/Locale;

    .line 309
    .line 310
    const/4 v14, 0x1

    .line 311
    invoke-direct {v11, v12, v13, v14}, Lorg/sqlite/date/FastDatePrinter$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    .line 312
    .line 313
    .line 314
    move v13, v14

    .line 315
    goto :goto_4

    .line 316
    :cond_9
    new-instance v11, Lorg/sqlite/date/FastDatePrinter$TimeZoneNameRule;

    .line 317
    .line 318
    iget-object v12, v0, Lorg/sqlite/date/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    .line 319
    .line 320
    iget-object v13, v0, Lorg/sqlite/date/FastDatePrinter;->mLocale:Ljava/util/Locale;

    .line 321
    .line 322
    invoke-direct {v11, v12, v13, v9}, Lorg/sqlite/date/FastDatePrinter$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    .line 323
    .line 324
    .line 325
    goto/16 :goto_1

    .line 326
    .line 327
    :cond_a
    const/4 v11, 0x2

    .line 328
    if-ne v12, v11, :cond_b

    .line 329
    .line 330
    sget-object v11, Lorg/sqlite/date/FastDatePrinter$TwoDigitYearField;->INSTANCE:Lorg/sqlite/date/FastDatePrinter$TwoDigitYearField;

    .line 331
    .line 332
    goto/16 :goto_1

    .line 333
    .line 334
    :cond_b
    const/4 v11, 0x4

    .line 335
    if-ge v12, v11, :cond_c

    .line 336
    .line 337
    move v12, v11

    .line 338
    :cond_c
    const/4 v13, 0x1

    .line 339
    invoke-virtual {v0, v13, v12}, Lorg/sqlite/date/FastDatePrinter;->selectNumberRule(II)Lorg/sqlite/date/FastDatePrinter$NumberRule;

    .line 340
    .line 341
    .line 342
    move-result-object v11

    .line 343
    goto :goto_4

    .line 344
    :cond_d
    const/4 v13, 0x1

    .line 345
    invoke-static {v12}, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;->getRule(I)Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;

    .line 346
    .line 347
    .line 348
    move-result-object v11

    .line 349
    goto :goto_4

    .line 350
    :cond_e
    const/4 v11, 0x4

    .line 351
    const/4 v13, 0x1

    .line 352
    invoke-virtual {v0, v11, v12}, Lorg/sqlite/date/FastDatePrinter;->selectNumberRule(II)Lorg/sqlite/date/FastDatePrinter$NumberRule;

    .line 353
    .line 354
    .line 355
    move-result-object v11

    .line 356
    :goto_4
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    add-int/2addr v10, v13

    .line 360
    goto/16 :goto_0

    .line 361
    .line 362
    :cond_f
    :goto_5
    return-object v2

    .line 363
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

    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected parseToken(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aget v2, p2, v1

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/16 v5, 0x5a

    .line 18
    .line 19
    const/16 v6, 0x41

    .line 20
    .line 21
    if-lt v4, v6, :cond_0

    .line 22
    .line 23
    if-le v4, v5, :cond_1

    .line 24
    .line 25
    :cond_0
    const/16 v7, 0x7a

    .line 26
    .line 27
    const/16 v8, 0x61

    .line 28
    .line 29
    if-lt v4, v8, :cond_2

    .line 30
    .line 31
    if-gt v4, v7, :cond_2

    .line 32
    .line 33
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    :goto_0
    add-int/lit8 v5, v2, 0x1

    .line 37
    .line 38
    if-ge v5, v3, :cond_8

    .line 39
    .line 40
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-ne v6, v4, :cond_8

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    move v2, v5

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/16 v4, 0x27

    .line 52
    .line 53
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    move v9, v1

    .line 57
    :goto_1
    if-ge v2, v3, :cond_8

    .line 58
    .line 59
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    if-ne v10, v4, :cond_4

    .line 64
    .line 65
    add-int/lit8 v11, v2, 0x1

    .line 66
    .line 67
    if-ge v11, v3, :cond_3

    .line 68
    .line 69
    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v12

    .line 73
    if-ne v12, v4, :cond_3

    .line 74
    .line 75
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    move v2, v11

    .line 79
    goto :goto_2

    .line 80
    :cond_3
    xor-int/lit8 v9, v9, 0x1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    if-nez v9, :cond_7

    .line 84
    .line 85
    if-lt v10, v6, :cond_5

    .line 86
    .line 87
    if-le v10, v5, :cond_6

    .line 88
    .line 89
    :cond_5
    if-lt v10, v8, :cond_7

    .line 90
    .line 91
    if-gt v10, v7, :cond_7

    .line 92
    .line 93
    :cond_6
    add-int/lit8 v2, v2, -0x1

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_7
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_8
    :goto_3
    aput v2, p2, v1

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    return-object p1
.end method

.method protected selectNumberRule(II)Lorg/sqlite/date/FastDatePrinter$NumberRule;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p2, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p2, v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lorg/sqlite/date/FastDatePrinter$PaddedNumberField;

    .line 8
    .line 9
    invoke-direct {v0, p1, p2}, Lorg/sqlite/date/FastDatePrinter$PaddedNumberField;-><init>(II)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance p2, Lorg/sqlite/date/FastDatePrinter$TwoDigitNumberField;

    .line 14
    .line 15
    invoke-direct {p2, p1}, Lorg/sqlite/date/FastDatePrinter$TwoDigitNumberField;-><init>(I)V

    .line 16
    .line 17
    .line 18
    return-object p2

    .line 19
    :cond_1
    new-instance p2, Lorg/sqlite/date/FastDatePrinter$UnpaddedNumberField;

    .line 20
    .line 21
    invoke-direct {p2, p1}, Lorg/sqlite/date/FastDatePrinter$UnpaddedNumberField;-><init>(I)V

    .line 22
    .line 23
    .line 24
    return-object p2
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
    const-string v1, "FastDatePrinter["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/sqlite/date/FastDatePrinter;->mPattern:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/sqlite/date/FastDatePrinter;->mLocale:Ljava/util/Locale;

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
    iget-object v1, p0, Lorg/sqlite/date/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

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
