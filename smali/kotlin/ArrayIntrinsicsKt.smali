.class public final Lkotlin/ArrayIntrinsicsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic emptyArray()[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()[TT;"
        }
    .end annotation

    .line 1
    const-string v0, "T?"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-array v0, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    return-object v0
.end method
