.class public Lcom/marshallradio/gpstracking/Coordinate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public isFresh:Z

.field public latitude:D

.field public longitude:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide p1, p0, Lcom/marshallradio/gpstracking/Coordinate;->latitude:D

    .line 7
    iput-wide p3, p0, Lcom/marshallradio/gpstracking/Coordinate;->longitude:D

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/marshallradio/gpstracking/Coordinate;->latitude:D

    .line 3
    iput-wide v0, p0, Lcom/marshallradio/gpstracking/Coordinate;->longitude:D

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/marshallradio/gpstracking/Coordinate;->setLatitudeAndLongitude(II)V

    return-void
.end method

.method private clearNthBit(II)I
    .locals 1

    const/4 v0, 0x1

    shl-int p2, v0, p2

    not-int p2, p2

    and-int/2addr p1, p2

    return p1
.end method

.method private isFresh(I)Z
    .locals 1

    shr-int/lit8 p1, p1, 0x1e

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setNthBit(II)I
    .locals 1

    const/4 v0, 0x1

    shl-int p2, v0, p2

    or-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public setLatitudeAndLongitude(II)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/marshallradio/gpstracking/Coordinate;->isFresh(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-boolean v0, p0, Lcom/marshallradio/gpstracking/Coordinate;->isFresh:Z

    .line 6
    .line 7
    const/16 v0, 0x1e

    .line 8
    .line 9
    if-gez p1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, p1, v0}, Lcom/marshallradio/gpstracking/Coordinate;->setNthBit(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/marshallradio/gpstracking/Coordinate;->clearNthBit(II)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    :goto_0
    int-to-double v0, p1

    .line 21
    const-wide v2, 0x416312d000000000L    # 1.0E7

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    div-double/2addr v0, v2

    .line 27
    iput-wide v0, p0, Lcom/marshallradio/gpstracking/Coordinate;->latitude:D

    .line 28
    .line 29
    int-to-double p1, p2

    .line 30
    div-double/2addr p1, v2

    .line 31
    iput-wide p1, p0, Lcom/marshallradio/gpstracking/Coordinate;->longitude:D

    .line 32
    .line 33
    return-void
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
    const-string v1, "Latitude: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Lcom/marshallradio/gpstracking/Coordinate;->latitude:D

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", Longitude: "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lcom/marshallradio/gpstracking/Coordinate;->longitude:D

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
