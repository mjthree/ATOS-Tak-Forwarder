.class Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/sqlite/date/FastDatePrinter$Rule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/date/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeZoneNumberRule"
.end annotation


# static fields
.field static final INSTANCE_COLON:Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;

.field static final INSTANCE_ISO_8601:Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;

.field static final INSTANCE_NO_COLON:Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;


# instance fields
.field final mColon:Z

.field final mISO8601:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;-><init>(ZZ)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_COLON:Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;

    .line 9
    .line 10
    new-instance v0, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;

    .line 11
    .line 12
    invoke-direct {v0, v2, v2}, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;-><init>(ZZ)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_NO_COLON:Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;

    .line 16
    .line 17
    new-instance v0, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;

    .line 18
    .line 19
    invoke-direct {v0, v1, v1}, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;-><init>(ZZ)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_ISO_8601:Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;

    .line 23
    .line 24
    return-void
.end method

.method constructor <init>(ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;->mColon:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;->mISO8601:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;->mISO8601:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "UTC"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string p2, "Z"

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const/16 v0, 0xf

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/16 v1, 0x10

    .line 34
    .line 35
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    add-int/2addr v0, p2

    .line 40
    if-gez v0, :cond_1

    .line 41
    .line 42
    const/16 p2, 0x2d

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 45
    .line 46
    .line 47
    neg-int v0, v0

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/16 p2, 0x2b

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 52
    .line 53
    .line 54
    :goto_0
    const p2, 0x36ee80

    .line 55
    .line 56
    .line 57
    div-int p2, v0, p2

    .line 58
    .line 59
    invoke-static {p1, p2}, Lorg/sqlite/date/FastDatePrinter;->access$000(Ljava/lang/StringBuffer;I)V

    .line 60
    .line 61
    .line 62
    iget-boolean v1, p0, Lorg/sqlite/date/FastDatePrinter$TimeZoneNumberRule;->mColon:Z

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    const/16 v1, 0x3a

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 69
    .line 70
    .line 71
    :cond_2
    const v1, 0xea60

    .line 72
    .line 73
    .line 74
    div-int/2addr v0, v1

    .line 75
    mul-int/lit8 p2, p2, 0x3c

    .line 76
    .line 77
    sub-int/2addr v0, p2

    .line 78
    invoke-static {p1, v0}, Lorg/sqlite/date/FastDatePrinter;->access$000(Ljava/lang/StringBuffer;I)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public estimateLength()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
