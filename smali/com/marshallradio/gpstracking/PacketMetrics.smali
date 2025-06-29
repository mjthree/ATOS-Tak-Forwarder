.class public Lcom/marshallradio/gpstracking/PacketMetrics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static droppedPackets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/marshallradio/gpstracking/DroppedPackets;",
            ">;"
        }
    .end annotation
.end field

.field public static packetsList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/marshallradio/gpstracking/Packets;",
            ">;"
        }
    .end annotation
.end field

.field public static pocketLinkPackets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/marshallradio/gpstracking/PocketLinkPackets;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/marshallradio/gpstracking/PacketMetrics;->packetsList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/marshallradio/gpstracking/PacketMetrics;->droppedPackets:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/marshallradio/gpstracking/PacketMetrics;->pocketLinkPackets:Ljava/util/ArrayList;

    .line 24
    .line 25
    return-void
.end method

.method public static calculateTotalSpeed()I
    .locals 3

    .line 1
    sget-object v0, Lcom/marshallradio/gpstracking/PacketMetrics;->packetsList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/marshallradio/gpstracking/PacketMetrics;->getListSizePackets(Ljava/util/concurrent/CopyOnWriteArrayList;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lcom/marshallradio/gpstracking/PacketMetrics;->pocketLinkPackets:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/marshallradio/gpstracking/PacketMetrics;->getListSizePlPackets(Ljava/util/ArrayList;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v0, v1

    .line 14
    sget-object v1, Lcom/marshallradio/gpstracking/PacketMetrics;->droppedPackets:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/marshallradio/gpstracking/PacketMetrics;->getListSizeDroppedPackets(Ljava/util/ArrayList;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/2addr v0, v1

    .line 21
    div-int/lit8 v0, v0, 0x3c

    .line 22
    .line 23
    mul-int/lit8 v0, v0, 0x8

    .line 24
    .line 25
    int-to-long v0, v0

    .line 26
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    return v0
.end method

.method public static clearDataFromDroppedPackets(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/marshallradio/gpstracking/DroppedPackets;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/marshallradio/gpstracking/DroppedPackets;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-ge v3, v4, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lcom/marshallradio/gpstracking/DroppedPackets;

    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/marshallradio/gpstracking/DroppedPackets;->getTimeStamp()J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    sub-long v5, v1, v5

    .line 36
    .line 37
    const-wide/32 v7, 0xea60

    .line 38
    .line 39
    .line 40
    cmp-long v5, v5, v7

    .line 41
    .line 42
    if-gez v5, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return-object v0
.end method

.method public static clearDataFromPackets(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/marshallradio/gpstracking/Packets;",
            ">;)",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/marshallradio/gpstracking/Packets;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-ge v3, v4, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lcom/marshallradio/gpstracking/Packets;

    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/marshallradio/gpstracking/Packets;->getTimeStamp()J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    sub-long v5, v1, v5

    .line 36
    .line 37
    const-wide/32 v7, 0xea60

    .line 38
    .line 39
    .line 40
    cmp-long v5, v5, v7

    .line 41
    .line 42
    if-gez v5, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return-object v0
.end method

.method public static clearDataFromPocketLinkPackets(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/marshallradio/gpstracking/PocketLinkPackets;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/marshallradio/gpstracking/PocketLinkPackets;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-ge v3, v4, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lcom/marshallradio/gpstracking/PocketLinkPackets;

    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/marshallradio/gpstracking/PocketLinkPackets;->getTimeStamp()J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    sub-long v5, v1, v5

    .line 36
    .line 37
    const-wide/32 v7, 0xea60

    .line 38
    .line 39
    .line 40
    cmp-long v5, v5, v7

    .line 41
    .line 42
    if-gez v5, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return-object v0
.end method

.method public static clearList()V
    .locals 1

    .line 1
    sget-object v0, Lcom/marshallradio/gpstracking/PacketMetrics;->packetsList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/marshallradio/gpstracking/PacketMetrics;->pocketLinkPackets:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/marshallradio/gpstracking/PacketMetrics;->droppedPackets:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static flushOneSecondOld()V
    .locals 1

    .line 1
    sget-object v0, Lcom/marshallradio/gpstracking/PacketMetrics;->packetsList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/marshallradio/gpstracking/PacketMetrics;->clearDataFromPackets(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/marshallradio/gpstracking/PacketMetrics;->packetsList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    sget-object v0, Lcom/marshallradio/gpstracking/PacketMetrics;->pocketLinkPackets:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/marshallradio/gpstracking/PacketMetrics;->clearDataFromPocketLinkPackets(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/marshallradio/gpstracking/PacketMetrics;->pocketLinkPackets:Ljava/util/ArrayList;

    .line 16
    .line 17
    sget-object v0, Lcom/marshallradio/gpstracking/PacketMetrics;->droppedPackets:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/marshallradio/gpstracking/PacketMetrics;->clearDataFromDroppedPackets(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/marshallradio/gpstracking/PacketMetrics;->droppedPackets:Ljava/util/ArrayList;

    .line 24
    .line 25
    return-void
.end method

.method public static getDroppedByteCount()I
    .locals 3

    .line 1
    sget-object v0, Lcom/marshallradio/gpstracking/PacketMetrics;->droppedPackets:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/marshallradio/gpstracking/DroppedPackets;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/marshallradio/gpstracking/DroppedPackets;->getSize()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    add-int/2addr v1, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return v1
.end method

.method public static getDroppedPackets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/marshallradio/gpstracking/DroppedPackets;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/marshallradio/gpstracking/PacketMetrics;->droppedPackets:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getListSizeDroppedPackets(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/marshallradio/gpstracking/DroppedPackets;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v0, v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/marshallradio/gpstracking/DroppedPackets;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/marshallradio/gpstracking/DroppedPackets;->getSize()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    add-int/2addr v1, v2

    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return v1
.end method

.method public static getListSizePackets(Ljava/util/concurrent/CopyOnWriteArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/marshallradio/gpstracking/Packets;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v0, v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/marshallradio/gpstracking/Packets;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/marshallradio/gpstracking/Packets;->getSize()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    add-int/2addr v1, v2

    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return v1
.end method

.method public static getListSizePlPackets(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/marshallradio/gpstracking/PocketLinkPackets;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v0, v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/marshallradio/gpstracking/PocketLinkPackets;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/marshallradio/gpstracking/PocketLinkPackets;->getSize()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    add-int/2addr v1, v2

    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return v1
.end method

.method public static getPacketReceivedInLastSecond()D
    .locals 10

    .line 1
    sget-object v0, Lcom/marshallradio/gpstracking/PacketMetrics;->packetsList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    const-wide/16 v1, 0x3e8

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v4

    .line 18
    move v0, v3

    .line 19
    move v6, v0

    .line 20
    :goto_0
    sget-object v7, Lcom/marshallradio/gpstracking/PacketMetrics;->packetsList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    .line 22
    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    if-ge v0, v7, :cond_2

    .line 27
    .line 28
    sget-object v7, Lcom/marshallradio/gpstracking/PacketMetrics;->packetsList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 29
    .line 30
    invoke-virtual {v7, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    check-cast v7, Lcom/marshallradio/gpstracking/Packets;

    .line 35
    .line 36
    invoke-virtual {v7}, Lcom/marshallradio/gpstracking/Packets;->getTimeStamp()J

    .line 37
    .line 38
    .line 39
    move-result-wide v8

    .line 40
    sub-long v8, v4, v8

    .line 41
    .line 42
    cmp-long v8, v8, v1

    .line 43
    .line 44
    if-gtz v8, :cond_0

    .line 45
    .line 46
    invoke-virtual {v7}, Lcom/marshallradio/gpstracking/Packets;->getSize()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    add-int/2addr v6, v7

    .line 51
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move v6, v3

    .line 55
    :cond_2
    sget-object v0, Lcom/marshallradio/gpstracking/PacketMetrics;->pocketLinkPackets:Ljava/util/ArrayList;

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_4

    .line 64
    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 66
    .line 67
    .line 68
    move-result-wide v4

    .line 69
    move v0, v3

    .line 70
    :goto_1
    sget-object v7, Lcom/marshallradio/gpstracking/PacketMetrics;->pocketLinkPackets:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-ge v0, v7, :cond_4

    .line 77
    .line 78
    sget-object v7, Lcom/marshallradio/gpstracking/PacketMetrics;->pocketLinkPackets:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    check-cast v7, Lcom/marshallradio/gpstracking/PocketLinkPackets;

    .line 85
    .line 86
    invoke-virtual {v7}, Lcom/marshallradio/gpstracking/PocketLinkPackets;->getTimeStamp()J

    .line 87
    .line 88
    .line 89
    move-result-wide v8

    .line 90
    sub-long v8, v4, v8

    .line 91
    .line 92
    cmp-long v8, v8, v1

    .line 93
    .line 94
    if-gtz v8, :cond_3

    .line 95
    .line 96
    invoke-virtual {v7}, Lcom/marshallradio/gpstracking/PocketLinkPackets;->getSize()I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    add-int/2addr v6, v7

    .line 101
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    sget-object v0, Lcom/marshallradio/gpstracking/PacketMetrics;->droppedPackets:Ljava/util/ArrayList;

    .line 105
    .line 106
    if-eqz v0, :cond_6

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_6

    .line 113
    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 115
    .line 116
    .line 117
    move-result-wide v4

    .line 118
    move v0, v3

    .line 119
    :goto_2
    sget-object v7, Lcom/marshallradio/gpstracking/PacketMetrics;->droppedPackets:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-ge v0, v7, :cond_6

    .line 126
    .line 127
    sget-object v7, Lcom/marshallradio/gpstracking/PacketMetrics;->droppedPackets:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    check-cast v7, Lcom/marshallradio/gpstracking/DroppedPackets;

    .line 134
    .line 135
    invoke-virtual {v7}, Lcom/marshallradio/gpstracking/DroppedPackets;->getTimeStamp()J

    .line 136
    .line 137
    .line 138
    move-result-wide v8

    .line 139
    sub-long v8, v4, v8

    .line 140
    .line 141
    cmp-long v8, v8, v1

    .line 142
    .line 143
    if-gtz v8, :cond_5

    .line 144
    .line 145
    invoke-virtual {v7}, Lcom/marshallradio/gpstracking/DroppedPackets;->getSize()I

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    add-int/2addr v6, v7

    .line 150
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_6
    mul-int/lit8 v6, v6, 0x8

    .line 154
    .line 155
    div-int/lit16 v6, v6, 0x3e8

    .line 156
    .line 157
    int-to-long v0, v6

    .line 158
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 163
    .line 164
    invoke-virtual {v0, v3, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    .line 169
    .line 170
    .line 171
    move-result-wide v0

    .line 172
    return-wide v0
.end method

.method public static getPacketsList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/marshallradio/gpstracking/Packets;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/marshallradio/gpstracking/PacketMetrics;->packetsList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getPacketsReceivedInLastMinute()I
    .locals 1

    .line 1
    sget-object v0, Lcom/marshallradio/gpstracking/PacketMetrics;->packetsList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static getPocketLinkPackets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/marshallradio/gpstracking/PocketLinkPackets;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/marshallradio/gpstracking/PacketMetrics;->pocketLinkPackets:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getTotalPacketDataRate()I
    .locals 2

    .line 1
    sget-object v0, Lcom/marshallradio/gpstracking/PacketMetrics;->packetsList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lcom/marshallradio/gpstracking/PacketMetrics;->pocketLinkPackets:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v0, v1

    .line 14
    div-int/lit8 v0, v0, 0x3c

    .line 15
    .line 16
    return v0
.end method

.method public static getTotalPacketsSize()I
    .locals 2

    .line 1
    sget-object v0, Lcom/marshallradio/gpstracking/PacketMetrics;->packetsList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lcom/marshallradio/gpstracking/PacketMetrics;->pocketLinkPackets:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v0, v1

    .line 14
    return v0
.end method


# virtual methods
.method public addDroppedPackets(Ljava/lang/String;JI)V
    .locals 1

    .line 1
    new-instance v0, Lcom/marshallradio/gpstracking/DroppedPackets;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/marshallradio/gpstracking/DroppedPackets;-><init>(Ljava/lang/String;JI)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/marshallradio/gpstracking/PacketMetrics;->droppedPackets:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public addPacket(IJI)V
    .locals 1

    .line 1
    new-instance v0, Lcom/marshallradio/gpstracking/Packets;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/marshallradio/gpstracking/Packets;-><init>(IJI)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/marshallradio/gpstracking/PacketMetrics;->packetsList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public addPocketLinkPackets(JI)V
    .locals 1

    .line 1
    new-instance v0, Lcom/marshallradio/gpstracking/PocketLinkPackets;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/marshallradio/gpstracking/PocketLinkPackets;-><init>(JI)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/marshallradio/gpstracking/PacketMetrics;->pocketLinkPackets:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
