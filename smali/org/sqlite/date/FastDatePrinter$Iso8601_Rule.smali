.class Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;
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
    name = "Iso8601_Rule"
.end annotation


# static fields
.field static final ISO8601_HOURS:Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;

.field static final ISO8601_HOURS_COLON_MINUTES:Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;

.field static final ISO8601_HOURS_MINUTES:Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;


# instance fields
.field final length:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS:Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;

    .line 8
    .line 9
    new-instance v0, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    invoke-direct {v0, v1}, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS_MINUTES:Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;

    .line 16
    .line 17
    new-instance v0, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;

    .line 18
    .line 19
    const/4 v1, 0x6

    .line 20
    invoke-direct {v0, v1}, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS_COLON_MINUTES:Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;

    .line 24
    .line 25
    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;->length:I

    .line 5
    .line 6
    return-void
.end method

.method static getRule(I)Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;
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
    sget-object p0, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS_COLON_MINUTES:Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;

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
    sget-object p0, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS_MINUTES:Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_2
    sget-object p0, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS:Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;

    .line 25
    .line 26
    return-object p0
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 3

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p2, "Z"

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/16 v1, 0x10

    .line 16
    .line 17
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    add-int/2addr v0, p2

    .line 22
    if-gez v0, :cond_1

    .line 23
    .line 24
    const/16 p2, 0x2d

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 27
    .line 28
    .line 29
    neg-int v0, v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/16 p2, 0x2b

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    :goto_0
    const p2, 0x36ee80

    .line 37
    .line 38
    .line 39
    div-int p2, v0, p2

    .line 40
    .line 41
    invoke-static {p1, p2}, Lorg/sqlite/date/FastDatePrinter;->access$000(Ljava/lang/StringBuffer;I)V

    .line 42
    .line 43
    .line 44
    iget v1, p0, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;->length:I

    .line 45
    .line 46
    const/4 v2, 0x5

    .line 47
    if-ge v1, v2, :cond_2

    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    const/4 v2, 0x6

    .line 51
    if-ne v1, v2, :cond_3

    .line 52
    .line 53
    const/16 v1, 0x3a

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 56
    .line 57
    .line 58
    :cond_3
    const v1, 0xea60

    .line 59
    .line 60
    .line 61
    div-int/2addr v0, v1

    .line 62
    mul-int/lit8 p2, p2, 0x3c

    .line 63
    .line 64
    sub-int/2addr v0, p2

    .line 65
    invoke-static {p1, v0}, Lorg/sqlite/date/FastDatePrinter;->access$000(Ljava/lang/StringBuffer;I)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/sqlite/date/FastDatePrinter$Iso8601_Rule;->length:I

    .line 2
    .line 3
    return v0
.end method
