.class Lorg/sqlite/date/FastDatePrinter$TwentyFourHourField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/sqlite/date/FastDatePrinter$NumberRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/date/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwentyFourHourField"
.end annotation


# instance fields
.field private final mRule:Lorg/sqlite/date/FastDatePrinter$NumberRule;


# direct methods
.method constructor <init>(Lorg/sqlite/date/FastDatePrinter$NumberRule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/sqlite/date/FastDatePrinter$TwentyFourHourField;->mRule:Lorg/sqlite/date/FastDatePrinter$NumberRule;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/sqlite/date/FastDatePrinter$TwentyFourHourField;->mRule:Lorg/sqlite/date/FastDatePrinter$NumberRule;

    invoke-interface {v0, p1, p2}, Lorg/sqlite/date/FastDatePrinter$NumberRule;->appendTo(Ljava/lang/StringBuffer;I)V

    return-void
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 2

    const/16 v0, 0xb

    .line 1
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->getMaximum(I)I

    move-result p2

    add-int/lit8 v1, p2, 0x1

    .line 3
    :cond_0
    iget-object p2, p0, Lorg/sqlite/date/FastDatePrinter$TwentyFourHourField;->mRule:Lorg/sqlite/date/FastDatePrinter$NumberRule;

    invoke-interface {p2, p1, v1}, Lorg/sqlite/date/FastDatePrinter$NumberRule;->appendTo(Ljava/lang/StringBuffer;I)V

    return-void
.end method

.method public estimateLength()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/date/FastDatePrinter$TwentyFourHourField;->mRule:Lorg/sqlite/date/FastDatePrinter$NumberRule;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/sqlite/date/FastDatePrinter$Rule;->estimateLength()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
