.class Lcom/annimon/stream/RandomCompat$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/DoubleSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/RandomCompat;->doubles(DD)Lcom/annimon/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final bound:D

.field final synthetic this$0:Lcom/annimon/stream/RandomCompat;

.field final synthetic val$randomNumberBound:D

.field final synthetic val$randomNumberOrigin:D


# direct methods
.method constructor <init>(Lcom/annimon/stream/RandomCompat;DD)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/RandomCompat$6;->this$0:Lcom/annimon/stream/RandomCompat;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/annimon/stream/RandomCompat$6;->val$randomNumberBound:D

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/annimon/stream/RandomCompat$6;->val$randomNumberOrigin:D

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    sub-double/2addr p2, p4

    .line 11
    iput-wide p2, p0, Lcom/annimon/stream/RandomCompat$6;->bound:D

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public getAsDouble()D
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/RandomCompat$6;->this$0:Lcom/annimon/stream/RandomCompat;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/annimon/stream/RandomCompat;->access$000(Lcom/annimon/stream/RandomCompat;)Ljava/util/Random;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-wide v2, p0, Lcom/annimon/stream/RandomCompat$6;->bound:D

    .line 12
    .line 13
    mul-double/2addr v0, v2

    .line 14
    iget-wide v2, p0, Lcom/annimon/stream/RandomCompat$6;->val$randomNumberOrigin:D

    .line 15
    .line 16
    add-double/2addr v0, v2

    .line 17
    iget-wide v2, p0, Lcom/annimon/stream/RandomCompat$6;->val$randomNumberBound:D

    .line 18
    .line 19
    cmpl-double v4, v0, v2

    .line 20
    .line 21
    if-ltz v4, :cond_0

    .line 22
    .line 23
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    const-wide/16 v2, 0x1

    .line 28
    .line 29
    sub-long/2addr v0, v2

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    :cond_0
    return-wide v0
.end method
