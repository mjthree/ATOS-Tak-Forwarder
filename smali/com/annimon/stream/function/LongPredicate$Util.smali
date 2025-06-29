.class public Lcom/annimon/stream/function/LongPredicate$Util;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/LongPredicate;
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

.method public static and(Lcom/annimon/stream/function/LongPredicate;Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/function/LongPredicate;
    .locals 1

    .line 1
    new-instance v0, Lcom/annimon/stream/function/LongPredicate$Util$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/LongPredicate$Util$1;-><init>(Lcom/annimon/stream/function/LongPredicate;Lcom/annimon/stream/function/LongPredicate;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static negate(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/function/LongPredicate;
    .locals 1

    .line 1
    new-instance v0, Lcom/annimon/stream/function/LongPredicate$Util$4;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/annimon/stream/function/LongPredicate$Util$4;-><init>(Lcom/annimon/stream/function/LongPredicate;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static or(Lcom/annimon/stream/function/LongPredicate;Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/function/LongPredicate;
    .locals 1

    .line 1
    new-instance v0, Lcom/annimon/stream/function/LongPredicate$Util$2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/LongPredicate$Util$2;-><init>(Lcom/annimon/stream/function/LongPredicate;Lcom/annimon/stream/function/LongPredicate;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static safe(Lcom/annimon/stream/function/ThrowableLongPredicate;)Lcom/annimon/stream/function/LongPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ThrowableLongPredicate<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/annimon/stream/function/LongPredicate;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/annimon/stream/function/LongPredicate$Util;->safe(Lcom/annimon/stream/function/ThrowableLongPredicate;Z)Lcom/annimon/stream/function/LongPredicate;

    move-result-object p0

    return-object p0
.end method

.method public static safe(Lcom/annimon/stream/function/ThrowableLongPredicate;Z)Lcom/annimon/stream/function/LongPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ThrowableLongPredicate<",
            "Ljava/lang/Throwable;",
            ">;Z)",
            "Lcom/annimon/stream/function/LongPredicate;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/annimon/stream/function/LongPredicate$Util$5;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/LongPredicate$Util$5;-><init>(Lcom/annimon/stream/function/ThrowableLongPredicate;Z)V

    return-object v0
.end method

.method public static xor(Lcom/annimon/stream/function/LongPredicate;Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/function/LongPredicate;
    .locals 1

    .line 1
    new-instance v0, Lcom/annimon/stream/function/LongPredicate$Util$3;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/LongPredicate$Util$3;-><init>(Lcom/annimon/stream/function/LongPredicate;Lcom/annimon/stream/function/LongPredicate;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
