.class final Lcom/annimon/stream/function/Supplier$Util$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/Supplier$Util;->safe(Lcom/annimon/stream/function/ThrowableSupplier;Ljava/lang/Object;)Lcom/annimon/stream/function/Supplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/Supplier<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$resultIfFailed:Ljava/lang/Object;

.field final synthetic val$throwableSupplier:Lcom/annimon/stream/function/ThrowableSupplier;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ThrowableSupplier;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/function/Supplier$Util$1;->val$throwableSupplier:Lcom/annimon/stream/function/ThrowableSupplier;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/annimon/stream/function/Supplier$Util$1;->val$resultIfFailed:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/annimon/stream/function/Supplier$Util$1;->val$throwableSupplier:Lcom/annimon/stream/function/ThrowableSupplier;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/annimon/stream/function/ThrowableSupplier;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    return-object v0

    .line 8
    :catchall_0
    iget-object v0, p0, Lcom/annimon/stream/function/Supplier$Util$1;->val$resultIfFailed:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method
