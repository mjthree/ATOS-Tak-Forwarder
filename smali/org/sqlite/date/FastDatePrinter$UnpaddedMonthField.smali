.class Lorg/sqlite/date/FastDatePrinter$UnpaddedMonthField;
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
    name = "UnpaddedMonthField"
.end annotation


# static fields
.field static final INSTANCE:Lorg/sqlite/date/FastDatePrinter$UnpaddedMonthField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/sqlite/date/FastDatePrinter$UnpaddedMonthField;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/sqlite/date/FastDatePrinter$UnpaddedMonthField;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/sqlite/date/FastDatePrinter$UnpaddedMonthField;->INSTANCE:Lorg/sqlite/date/FastDatePrinter$UnpaddedMonthField;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final appendTo(Ljava/lang/StringBuffer;I)V
    .locals 1

    const/16 v0, 0xa

    if-ge p2, v0, :cond_0

    add-int/lit8 p2, p2, 0x30

    int-to-char p2, p2

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, p2}, Lorg/sqlite/date/FastDatePrinter;->access$000(Ljava/lang/StringBuffer;I)V

    :goto_0
    return-void
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/sqlite/date/FastDatePrinter$UnpaddedMonthField;->appendTo(Ljava/lang/StringBuffer;I)V

    return-void
.end method

.method public estimateLength()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
