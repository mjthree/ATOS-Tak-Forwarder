.class final Lcom/annimon/stream/function/IndexedIntConsumer$Util$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/IndexedIntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IndexedIntConsumer$Util;->andThen(Lcom/annimon/stream/function/IndexedIntConsumer;Lcom/annimon/stream/function/IndexedIntConsumer;)Lcom/annimon/stream/function/IndexedIntConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c1:Lcom/annimon/stream/function/IndexedIntConsumer;

.field final synthetic val$c2:Lcom/annimon/stream/function/IndexedIntConsumer;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/IndexedIntConsumer;Lcom/annimon/stream/function/IndexedIntConsumer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/function/IndexedIntConsumer$Util$1;->val$c1:Lcom/annimon/stream/function/IndexedIntConsumer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/annimon/stream/function/IndexedIntConsumer$Util$1;->val$c2:Lcom/annimon/stream/function/IndexedIntConsumer;

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
    iget-object v0, p0, Lcom/annimon/stream/function/IndexedIntConsumer$Util$1;->val$c1:Lcom/annimon/stream/function/IndexedIntConsumer;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/annimon/stream/function/IndexedIntConsumer;->accept(II)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/annimon/stream/function/IndexedIntConsumer$Util$1;->val$c2:Lcom/annimon/stream/function/IndexedIntConsumer;

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lcom/annimon/stream/function/IndexedIntConsumer;->accept(II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
