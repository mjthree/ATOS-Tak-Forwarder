.class public final Lcom/marshallradio/gpstracking/Packets;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private id:I

.field private size:I

.field private timeStamp:J


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/marshallradio/gpstracking/Packets;->id:I

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/marshallradio/gpstracking/Packets;->timeStamp:J

    .line 7
    .line 8
    iput p4, p0, Lcom/marshallradio/gpstracking/Packets;->size:I

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic copy$default(Lcom/marshallradio/gpstracking/Packets;IJIILjava/lang/Object;)Lcom/marshallradio/gpstracking/Packets;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/marshallradio/gpstracking/Packets;->id:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-wide p2, p0, Lcom/marshallradio/gpstracking/Packets;->timeStamp:J

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget p4, p0, Lcom/marshallradio/gpstracking/Packets;->size:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/marshallradio/gpstracking/Packets;->copy(IJI)Lcom/marshallradio/gpstracking/Packets;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/marshallradio/gpstracking/Packets;->id:I

    return v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/marshallradio/gpstracking/Packets;->timeStamp:J

    return-wide v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/marshallradio/gpstracking/Packets;->size:I

    return v0
.end method

.method public final copy(IJI)Lcom/marshallradio/gpstracking/Packets;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/marshallradio/gpstracking/Packets;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/marshallradio/gpstracking/Packets;-><init>(IJI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/marshallradio/gpstracking/Packets;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/marshallradio/gpstracking/Packets;

    iget v1, p0, Lcom/marshallradio/gpstracking/Packets;->id:I

    iget v3, p1, Lcom/marshallradio/gpstracking/Packets;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/marshallradio/gpstracking/Packets;->timeStamp:J

    iget-wide v5, p1, Lcom/marshallradio/gpstracking/Packets;->timeStamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/marshallradio/gpstracking/Packets;->size:I

    iget p1, p1, Lcom/marshallradio/gpstracking/Packets;->size:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/marshallradio/gpstracking/Packets;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/marshallradio/gpstracking/Packets;->size:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/marshallradio/gpstracking/Packets;->timeStamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/marshallradio/gpstracking/Packets;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/marshallradio/gpstracking/Packets;->timeStamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/marshallradio/gpstracking/Packets;->size:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/marshallradio/gpstracking/Packets;->id:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/marshallradio/gpstracking/Packets;->size:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTimeStamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/marshallradio/gpstracking/Packets;->timeStamp:J

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Packets(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/marshallradio/gpstracking/Packets;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/marshallradio/gpstracking/Packets;->timeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/marshallradio/gpstracking/Packets;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
