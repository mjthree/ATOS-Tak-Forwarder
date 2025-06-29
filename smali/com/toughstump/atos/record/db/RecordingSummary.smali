.class public final Lcom/toughstump/atos/record/db/RecordingSummary;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final endTimeMillis:J

.field private final recordCount:I

.field private final recordingName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final startTimeMillis:J

.field private final uniqueTrackCount:I


# direct methods
.method public constructor <init>(IJJILjava/lang/String;)V
    .locals 0
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->recordCount:I

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->startTimeMillis:J

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->endTimeMillis:J

    .line 9
    .line 10
    iput p6, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->uniqueTrackCount:I

    .line 11
    .line 12
    iput-object p7, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->recordingName:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic copy$default(Lcom/toughstump/atos/record/db/RecordingSummary;IJJILjava/lang/String;ILjava/lang/Object;)Lcom/toughstump/atos/record/db/RecordingSummary;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget p1, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->recordCount:I

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-wide p2, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->startTimeMillis:J

    :cond_1
    move-wide v0, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-wide p4, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->endTimeMillis:J

    :cond_2
    move-wide v2, p4

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget p6, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->uniqueTrackCount:I

    :cond_3
    move p9, p6

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p7, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->recordingName:Ljava/lang/String;

    :cond_4
    move-object v4, p7

    move-object p2, p0

    move p3, p1

    move-wide p4, v0

    move-wide p6, v2

    move p8, p9

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/toughstump/atos/record/db/RecordingSummary;->copy(IJJILjava/lang/String;)Lcom/toughstump/atos/record/db/RecordingSummary;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->recordCount:I

    return v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->startTimeMillis:J

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->endTimeMillis:J

    return-wide v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->uniqueTrackCount:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->recordingName:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(IJJILjava/lang/String;)Lcom/toughstump/atos/record/db/RecordingSummary;
    .locals 9
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v8, Lcom/toughstump/atos/record/db/RecordingSummary;

    move-object v0, v8

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/toughstump/atos/record/db/RecordingSummary;-><init>(IJJILjava/lang/String;)V

    return-object v8
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
    instance-of v1, p1, Lcom/toughstump/atos/record/db/RecordingSummary;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/toughstump/atos/record/db/RecordingSummary;

    iget v1, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->recordCount:I

    iget v3, p1, Lcom/toughstump/atos/record/db/RecordingSummary;->recordCount:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->startTimeMillis:J

    iget-wide v5, p1, Lcom/toughstump/atos/record/db/RecordingSummary;->startTimeMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->endTimeMillis:J

    iget-wide v5, p1, Lcom/toughstump/atos/record/db/RecordingSummary;->endTimeMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->uniqueTrackCount:I

    iget v3, p1, Lcom/toughstump/atos/record/db/RecordingSummary;->uniqueTrackCount:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->recordingName:Ljava/lang/String;

    iget-object p1, p1, Lcom/toughstump/atos/record/db/RecordingSummary;->recordingName:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getEndTimeMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->endTimeMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getRecordCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->recordCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRecordingName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->recordingName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStartTimeMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->startTimeMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getUniqueTrackCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->uniqueTrackCount:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->recordCount:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->startTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->endTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->uniqueTrackCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->recordingName:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecordingSummary(recordCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->recordCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->startTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->endTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uniqueTrackCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->uniqueTrackCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recordingName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/record/db/RecordingSummary;->recordingName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
