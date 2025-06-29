.class final Lcom/annimon/stream/function/IntConsumer$Util$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IntConsumer$Util;->safe(Lcom/annimon/stream/function/ThrowableIntConsumer;Lcom/annimon/stream/function/IntConsumer;)Lcom/annimon/stream/function/IntConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onFailedConsumer:Lcom/annimon/stream/function/IntConsumer;

.field final synthetic val$throwableConsumer:Lcom/annimon/stream/function/ThrowableIntConsumer;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ThrowableIntConsumer;Lcom/annimon/stream/function/IntConsumer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/function/IntConsumer$Util$2;->val$throwableConsumer:Lcom/annimon/stream/function/ThrowableIntConsumer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/annimon/stream/function/IntConsumer$Util$2;->val$onFailedConsumer:Lcom/annimon/stream/function/IntConsumer;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/annimon/stream/function/IntConsumer$Util$2;->val$throwableConsumer:Lcom/annimon/stream/function/ThrowableIntConsumer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/annimon/stream/function/ThrowableIntConsumer;->accept(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    iget-object v0, p0, Lcom/annimon/stream/function/IntConsumer$Util$2;->val$onFailedConsumer:Lcom/annimon/stream/function/IntConsumer;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/annimon/stream/function/IntConsumer;->accept(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    return-void
.end method
