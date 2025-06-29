.class final Lcom/annimon/stream/Collectors$36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/Collectors;->mapping(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/Collector;)Lcom/annimon/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/BiConsumer<",
        "TA;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$accumulator:Lcom/annimon/stream/function/BiConsumer;

.field final synthetic val$mapper:Lcom/annimon/stream/function/Function;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/Collectors$36;->val$accumulator:Lcom/annimon/stream/function/BiConsumer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/annimon/stream/Collectors$36;->val$mapper:Lcom/annimon/stream/function/Function;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/Collectors$36;->val$accumulator:Lcom/annimon/stream/function/BiConsumer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/Collectors$36;->val$mapper:Lcom/annimon/stream/function/Function;

    .line 4
    .line 5
    invoke-interface {v1, p2}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-interface {v0, p1, p2}, Lcom/annimon/stream/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
