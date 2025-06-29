.class public Lcom/annimon/stream/function/Function$Util;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static andThen(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TR;>;",
            "Lcom/annimon/stream/function/Function<",
            "-TR;+TV;>;)",
            "Lcom/annimon/stream/function/Function<",
            "TT;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/annimon/stream/function/Function$Util$1;

    .line 2
    .line 3
    invoke-direct {v0, p1, p0}, Lcom/annimon/stream/function/Function$Util$1;-><init>(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static compose(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/function/Function;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TR;>;",
            "Lcom/annimon/stream/function/Function<",
            "-TV;+TT;>;)",
            "Lcom/annimon/stream/function/Function<",
            "TV;TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p0}, Lcom/annimon/stream/function/Function$Util;->andThen(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/function/Function;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static safe(Lcom/annimon/stream/function/ThrowableFunction;)Lcom/annimon/stream/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ThrowableFunction<",
            "-TT;+TR;",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/annimon/stream/function/Function<",
            "TT;TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/annimon/stream/function/Function$Util;->safe(Lcom/annimon/stream/function/ThrowableFunction;Ljava/lang/Object;)Lcom/annimon/stream/function/Function;

    move-result-object p0

    return-object p0
.end method

.method public static safe(Lcom/annimon/stream/function/ThrowableFunction;Ljava/lang/Object;)Lcom/annimon/stream/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ThrowableFunction<",
            "-TT;+TR;",
            "Ljava/lang/Throwable;",
            ">;TR;)",
            "Lcom/annimon/stream/function/Function<",
            "TT;TR;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/annimon/stream/function/Function$Util$2;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/Function$Util$2;-><init>(Lcom/annimon/stream/function/ThrowableFunction;Ljava/lang/Object;)V

    return-object v0
.end method
