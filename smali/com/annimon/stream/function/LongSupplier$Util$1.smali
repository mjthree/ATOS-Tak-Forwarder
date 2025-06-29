.class final Lcom/annimon/stream/function/LongSupplier$Util$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/LongSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/LongSupplier$Util;->safe(Lcom/annimon/stream/function/ThrowableLongSupplier;J)Lcom/annimon/stream/function/LongSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$resultIfFailed:J

.field final synthetic val$throwableSupplier:Lcom/annimon/stream/function/ThrowableLongSupplier;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ThrowableLongSupplier;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/function/LongSupplier$Util$1;->val$throwableSupplier:Lcom/annimon/stream/function/ThrowableLongSupplier;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/annimon/stream/function/LongSupplier$Util$1;->val$resultIfFailed:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getAsLong()J
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/annimon/stream/function/LongSupplier$Util$1;->val$throwableSupplier:Lcom/annimon/stream/function/ThrowableLongSupplier;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/annimon/stream/function/ThrowableLongSupplier;->getAsLong()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    return-wide v0

    .line 8
    :catchall_0
    iget-wide v0, p0, Lcom/annimon/stream/function/LongSupplier$Util$1;->val$resultIfFailed:J

    .line 9
    .line 10
    return-wide v0
.end method
