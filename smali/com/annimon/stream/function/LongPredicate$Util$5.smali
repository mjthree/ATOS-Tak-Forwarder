.class final Lcom/annimon/stream/function/LongPredicate$Util$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/LongPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/LongPredicate$Util;->safe(Lcom/annimon/stream/function/ThrowableLongPredicate;Z)Lcom/annimon/stream/function/LongPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$resultIfFailed:Z

.field final synthetic val$throwablePredicate:Lcom/annimon/stream/function/ThrowableLongPredicate;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ThrowableLongPredicate;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/function/LongPredicate$Util$5;->val$throwablePredicate:Lcom/annimon/stream/function/ThrowableLongPredicate;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/annimon/stream/function/LongPredicate$Util$5;->val$resultIfFailed:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public test(J)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/annimon/stream/function/LongPredicate$Util$5;->val$throwablePredicate:Lcom/annimon/stream/function/ThrowableLongPredicate;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/annimon/stream/function/ThrowableLongPredicate;->test(J)Z

    .line 4
    .line 5
    .line 6
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    return p1

    .line 8
    :catchall_0
    iget-boolean p1, p0, Lcom/annimon/stream/function/LongPredicate$Util$5;->val$resultIfFailed:Z

    .line 9
    .line 10
    return p1
.end method
