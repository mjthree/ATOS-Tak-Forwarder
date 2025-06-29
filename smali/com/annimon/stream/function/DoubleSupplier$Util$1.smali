.class final Lcom/annimon/stream/function/DoubleSupplier$Util$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/DoubleSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/DoubleSupplier$Util;->safe(Lcom/annimon/stream/function/ThrowableDoubleSupplier;D)Lcom/annimon/stream/function/DoubleSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$resultIfFailed:D

.field final synthetic val$throwableSupplier:Lcom/annimon/stream/function/ThrowableDoubleSupplier;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ThrowableDoubleSupplier;D)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/function/DoubleSupplier$Util$1;->val$throwableSupplier:Lcom/annimon/stream/function/ThrowableDoubleSupplier;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/annimon/stream/function/DoubleSupplier$Util$1;->val$resultIfFailed:D

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getAsDouble()D
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/annimon/stream/function/DoubleSupplier$Util$1;->val$throwableSupplier:Lcom/annimon/stream/function/ThrowableDoubleSupplier;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/annimon/stream/function/ThrowableDoubleSupplier;->getAsDouble()D

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
    iget-wide v0, p0, Lcom/annimon/stream/function/DoubleSupplier$Util$1;->val$resultIfFailed:D

    .line 9
    .line 10
    return-wide v0
.end method
