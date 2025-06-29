.class Lcom/annimon/stream/RandomCompat$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/IntSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/RandomCompat;->ints(II)Lcom/annimon/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final bound:I

.field final synthetic this$0:Lcom/annimon/stream/RandomCompat;

.field final synthetic val$randomNumberBound:I

.field final synthetic val$randomNumberOrigin:I


# direct methods
.method constructor <init>(Lcom/annimon/stream/RandomCompat;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/RandomCompat$4;->this$0:Lcom/annimon/stream/RandomCompat;

    .line 2
    .line 3
    iput p2, p0, Lcom/annimon/stream/RandomCompat$4;->val$randomNumberBound:I

    .line 4
    .line 5
    iput p3, p0, Lcom/annimon/stream/RandomCompat$4;->val$randomNumberOrigin:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    sub-int/2addr p2, p3

    .line 11
    iput p2, p0, Lcom/annimon/stream/RandomCompat$4;->bound:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public getAsInt()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/annimon/stream/RandomCompat$4;->bound:I

    .line 2
    .line 3
    if-gez v0, :cond_1

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/RandomCompat$4;->this$0:Lcom/annimon/stream/RandomCompat;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/annimon/stream/RandomCompat;->access$000(Lcom/annimon/stream/RandomCompat;)Ljava/util/Random;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget v1, p0, Lcom/annimon/stream/RandomCompat$4;->val$randomNumberOrigin:I

    .line 16
    .line 17
    if-ge v1, v0, :cond_0

    .line 18
    .line 19
    iget v1, p0, Lcom/annimon/stream/RandomCompat$4;->val$randomNumberBound:I

    .line 20
    .line 21
    if-ge v0, v1, :cond_0

    .line 22
    .line 23
    return v0

    .line 24
    :cond_1
    iget v0, p0, Lcom/annimon/stream/RandomCompat$4;->val$randomNumberOrigin:I

    .line 25
    .line 26
    iget-object v1, p0, Lcom/annimon/stream/RandomCompat$4;->this$0:Lcom/annimon/stream/RandomCompat;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/annimon/stream/RandomCompat;->access$000(Lcom/annimon/stream/RandomCompat;)Ljava/util/Random;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget v2, p0, Lcom/annimon/stream/RandomCompat$4;->bound:I

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/2addr v0, v1

    .line 39
    return v0
.end method
