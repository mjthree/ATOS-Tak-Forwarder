.class final Lkotlin/text/LinesIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/text/LinesIterator$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# static fields
.field public static final EXHAUSTED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HAS_NEXT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final State:Lkotlin/text/LinesIterator$State;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UNKNOWN:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private delimiterLength:I

.field private delimiterStartIndex:I

.field private state:I

.field private final string:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tokenStartIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/text/LinesIterator$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/text/LinesIterator$State;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/text/LinesIterator;->State:Lkotlin/text/LinesIterator$State;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "string"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lkotlin/text/LinesIterator;->string:Ljava/lang/CharSequence;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 8

    .line 1
    iget v0, p0, Lkotlin/text/LinesIterator;->state:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    move v1, v2

    .line 10
    :cond_0
    return v1

    .line 11
    :cond_1
    iget v0, p0, Lkotlin/text/LinesIterator;->delimiterLength:I

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    if-gez v0, :cond_2

    .line 15
    .line 16
    iput v3, p0, Lkotlin/text/LinesIterator;->state:I

    .line 17
    .line 18
    return v1

    .line 19
    :cond_2
    iget-object v0, p0, Lkotlin/text/LinesIterator;->string:Ljava/lang/CharSequence;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget v1, p0, Lkotlin/text/LinesIterator;->tokenStartIndex:I

    .line 26
    .line 27
    iget-object v4, p0, Lkotlin/text/LinesIterator;->string:Ljava/lang/CharSequence;

    .line 28
    .line 29
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    :goto_0
    if-ge v1, v4, :cond_5

    .line 34
    .line 35
    iget-object v5, p0, Lkotlin/text/LinesIterator;->string:Ljava/lang/CharSequence;

    .line 36
    .line 37
    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    const/16 v6, 0xd

    .line 42
    .line 43
    const/16 v7, 0xa

    .line 44
    .line 45
    if-eq v5, v7, :cond_3

    .line 46
    .line 47
    if-eq v5, v6, :cond_3

    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    if-ne v5, v6, :cond_4

    .line 53
    .line 54
    add-int/lit8 v0, v1, 0x1

    .line 55
    .line 56
    iget-object v4, p0, Lkotlin/text/LinesIterator;->string:Ljava/lang/CharSequence;

    .line 57
    .line 58
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-ge v0, v4, :cond_4

    .line 63
    .line 64
    iget-object v4, p0, Lkotlin/text/LinesIterator;->string:Ljava/lang/CharSequence;

    .line 65
    .line 66
    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-ne v0, v7, :cond_4

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    move v3, v2

    .line 74
    :goto_1
    move v0, v1

    .line 75
    goto :goto_2

    .line 76
    :cond_5
    const/4 v3, -0x1

    .line 77
    :goto_2
    iput v2, p0, Lkotlin/text/LinesIterator;->state:I

    .line 78
    .line 79
    iput v3, p0, Lkotlin/text/LinesIterator;->delimiterLength:I

    .line 80
    .line 81
    iput v0, p0, Lkotlin/text/LinesIterator;->delimiterStartIndex:I

    .line 82
    .line 83
    return v2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/text/LinesIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lkotlin/text/LinesIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lkotlin/text/LinesIterator;->state:I

    .line 4
    iget v0, p0, Lkotlin/text/LinesIterator;->delimiterStartIndex:I

    .line 5
    iget v1, p0, Lkotlin/text/LinesIterator;->tokenStartIndex:I

    .line 6
    iget v2, p0, Lkotlin/text/LinesIterator;->delimiterLength:I

    add-int/2addr v2, v0

    iput v2, p0, Lkotlin/text/LinesIterator;->tokenStartIndex:I

    .line 7
    iget-object v2, p0, Lkotlin/text/LinesIterator;->string:Ljava/lang/CharSequence;

    invoke-interface {v2, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
