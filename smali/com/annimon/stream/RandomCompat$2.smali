.class Lcom/annimon/stream/RandomCompat$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/LongSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/RandomCompat;->longs()Lcom/annimon/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/annimon/stream/RandomCompat;


# direct methods
.method constructor <init>(Lcom/annimon/stream/RandomCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/RandomCompat$2;->this$0:Lcom/annimon/stream/RandomCompat;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getAsLong()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/RandomCompat$2;->this$0:Lcom/annimon/stream/RandomCompat;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/annimon/stream/RandomCompat;->access$000(Lcom/annimon/stream/RandomCompat;)Ljava/util/Random;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method
