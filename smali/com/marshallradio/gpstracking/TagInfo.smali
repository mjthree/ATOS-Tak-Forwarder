.class public Lcom/marshallradio/gpstracking/TagInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public currenttimestamp:J

.field public lastsavedPkt:Lcom/marshallradio/gpstracking/DataPacketModel;

.field public lasttimestamp:J

.field public tagid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/marshallradio/gpstracking/TagInfo;->lasttimestamp:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/marshallradio/gpstracking/TagInfo;->currenttimestamp:J

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/marshallradio/gpstracking/TagInfo;->tagid:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public getCurrenttimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/marshallradio/gpstracking/TagInfo;->currenttimestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLastsavedPkt()Lcom/marshallradio/gpstracking/DataPacketModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/marshallradio/gpstracking/TagInfo;->lastsavedPkt:Lcom/marshallradio/gpstracking/DataPacketModel;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLasttimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/marshallradio/gpstracking/TagInfo;->lasttimestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTagid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/marshallradio/gpstracking/TagInfo;->tagid:I

    .line 2
    .line 3
    return v0
.end method

.method public setCurrenttimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/marshallradio/gpstracking/TagInfo;->currenttimestamp:J

    .line 2
    .line 3
    return-void
.end method

.method public setLastsavedPkt(Lcom/marshallradio/gpstracking/DataPacketModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/marshallradio/gpstracking/TagInfo;->lastsavedPkt:Lcom/marshallradio/gpstracking/DataPacketModel;

    .line 2
    .line 3
    return-void
.end method

.method public setLasttimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/marshallradio/gpstracking/TagInfo;->lasttimestamp:J

    .line 2
    .line 3
    return-void
.end method

.method public setTagid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/marshallradio/gpstracking/TagInfo;->tagid:I

    .line 2
    .line 3
    return-void
.end method
