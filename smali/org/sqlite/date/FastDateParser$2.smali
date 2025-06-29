.class Lorg/sqlite/date/FastDateParser$2;
.super Lorg/sqlite/date/FastDateParser$NumberStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/date/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/sqlite/date/FastDateParser$NumberStrategy;-><init>(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method modify(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method
