.class final Lcom/annimon/stream/function/LongConsumer$Util$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/LongConsumer$Util;->safe(Lcom/annimon/stream/function/ThrowableLongConsumer;Lcom/annimon/stream/function/LongConsumer;)Lcom/annimon/stream/function/LongConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onFailedConsumer:Lcom/annimon/stream/function/LongConsumer;

.field final synthetic val$throwableConsumer:Lcom/annimon/stream/function/ThrowableLongConsumer;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ThrowableLongConsumer;Lcom/annimon/stream/function/LongConsumer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/function/LongConsumer$Util$2;->val$throwableConsumer:Lcom/annimon/stream/function/ThrowableLongConsumer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/annimon/stream/function/LongConsumer$Util$2;->val$onFailedConsumer:Lcom/annimon/stream/function/LongConsumer;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/annimon/stream/function/LongConsumer$Util$2;->val$throwableConsumer:Lcom/annimon/stream/function/ThrowableLongConsumer;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/annimon/stream/function/ThrowableLongConsumer;->accept(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    iget-object v0, p0, Lcom/annimon/stream/function/LongConsumer$Util$2;->val$onFailedConsumer:Lcom/annimon/stream/function/LongConsumer;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Lcom/annimon/stream/function/LongConsumer;->accept(J)V

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    return-void
.end method
