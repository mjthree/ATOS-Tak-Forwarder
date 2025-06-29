.class Lcom/annimon/stream/Collectors$37$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/Collectors$37;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/Consumer<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/annimon/stream/Collectors$37;

.field final synthetic val$a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/annimon/stream/Collectors$37;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/Collectors$37$1;->this$0:Lcom/annimon/stream/Collectors$37;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/annimon/stream/Collectors$37$1;->val$a:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/Collectors$37$1;->this$0:Lcom/annimon/stream/Collectors$37;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/annimon/stream/Collectors$37;->val$accumulator:Lcom/annimon/stream/function/BiConsumer;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/annimon/stream/Collectors$37$1;->val$a:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-interface {v0, v1, p1}, Lcom/annimon/stream/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
