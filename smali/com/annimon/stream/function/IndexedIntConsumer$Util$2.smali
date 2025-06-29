.class final Lcom/annimon/stream/function/IndexedIntConsumer$Util$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/IndexedIntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IndexedIntConsumer$Util;->accept(Lcom/annimon/stream/function/IntConsumer;Lcom/annimon/stream/function/IntConsumer;)Lcom/annimon/stream/function/IndexedIntConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c1:Lcom/annimon/stream/function/IntConsumer;

.field final synthetic val$c2:Lcom/annimon/stream/function/IntConsumer;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/IntConsumer;Lcom/annimon/stream/function/IntConsumer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/function/IndexedIntConsumer$Util$2;->val$c1:Lcom/annimon/stream/function/IntConsumer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/annimon/stream/function/IndexedIntConsumer$Util$2;->val$c2:Lcom/annimon/stream/function/IntConsumer;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public accept(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/function/IndexedIntConsumer$Util$2;->val$c1:Lcom/annimon/stream/function/IntConsumer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/annimon/stream/function/IntConsumer;->accept(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/annimon/stream/function/IndexedIntConsumer$Util$2;->val$c2:Lcom/annimon/stream/function/IntConsumer;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-interface {p1, p2}, Lcom/annimon/stream/function/IntConsumer;->accept(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method
