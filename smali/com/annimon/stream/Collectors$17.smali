.class final Lcom/annimon/stream/Collectors$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/Collectors;->averagingLong(Lcom/annimon/stream/function/ToLongFunction;)Lcom/annimon/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/BiConsumer<",
        "[JTT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$mapper:Lcom/annimon/stream/function/ToLongFunction;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ToLongFunction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/Collectors$17;->val$mapper:Lcom/annimon/stream/function/ToLongFunction;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [J

    invoke-virtual {p0, p1, p2}, Lcom/annimon/stream/Collectors$17;->accept([JLjava/lang/Object;)V

    return-void
.end method

.method public accept([JLjava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JTT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    .line 3
    aget-wide v1, p1, v0

    iget-object v3, p0, Lcom/annimon/stream/Collectors$17;->val$mapper:Lcom/annimon/stream/function/ToLongFunction;

    invoke-interface {v3, p2}, Lcom/annimon/stream/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v3

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method
