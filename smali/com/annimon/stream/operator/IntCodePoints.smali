.class public Lcom/annimon/stream/operator/IntCodePoints;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "SourceFile"


# instance fields
.field private final charSequence:Ljava/lang/CharSequence;

.field private current:I

.field private final isString:Z

.field private length:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/annimon/stream/operator/IntCodePoints;->charSequence:Ljava/lang/CharSequence;

    .line 5
    .line 6
    instance-of p1, p1, Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/annimon/stream/operator/IntCodePoints;->isString:Z

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/annimon/stream/operator/IntCodePoints;->current:I

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/annimon/stream/operator/IntCodePoints;->length:I

    .line 15
    .line 16
    return-void
.end method

.method private ensureLength()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntCodePoints;->isString:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/annimon/stream/operator/IntCodePoints;->length:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/annimon/stream/operator/IntCodePoints;->charSequence:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/annimon/stream/operator/IntCodePoints;->length:I

    .line 17
    .line 18
    :cond_0
    iget v0, p0, Lcom/annimon/stream/operator/IntCodePoints;->length:I

    .line 19
    .line 20
    return v0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/annimon/stream/operator/IntCodePoints;->charSequence:Ljava/lang/CharSequence;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/annimon/stream/operator/IntCodePoints;->current:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/annimon/stream/operator/IntCodePoints;->ensureLength()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public nextInt()I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/annimon/stream/operator/IntCodePoints;->ensureLength()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/annimon/stream/operator/IntCodePoints;->current:I

    .line 6
    .line 7
    if-ge v1, v0, :cond_1

    .line 8
    .line 9
    iget-object v2, p0, Lcom/annimon/stream/operator/IntCodePoints;->charSequence:Ljava/lang/CharSequence;

    .line 10
    .line 11
    add-int/lit8 v3, v1, 0x1

    .line 12
    .line 13
    iput v3, p0, Lcom/annimon/stream/operator/IntCodePoints;->current:I

    .line 14
    .line 15
    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget v2, p0, Lcom/annimon/stream/operator/IntCodePoints;->current:I

    .line 26
    .line 27
    if-ge v2, v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/annimon/stream/operator/IntCodePoints;->charSequence:Ljava/lang/CharSequence;

    .line 30
    .line 31
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    iget v2, p0, Lcom/annimon/stream/operator/IntCodePoints;->current:I

    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    iput v2, p0, Lcom/annimon/stream/operator/IntCodePoints;->current:I

    .line 46
    .line 47
    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    return v0

    .line 52
    :cond_0
    return v1

    .line 53
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 56
    .line 57
    .line 58
    throw v0
.end method
