.class final Lcom/annimon/stream/function/Predicate$Util$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/Predicate$Util;->and(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/Predicate;[Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/function/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/Predicate<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$p1:Lcom/annimon/stream/function/Predicate;

.field final synthetic val$p2:Lcom/annimon/stream/function/Predicate;

.field final synthetic val$rest:[Lcom/annimon/stream/function/Predicate;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/Predicate;[Lcom/annimon/stream/function/Predicate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/function/Predicate$Util$2;->val$p1:Lcom/annimon/stream/function/Predicate;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/annimon/stream/function/Predicate$Util$2;->val$p2:Lcom/annimon/stream/function/Predicate;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/annimon/stream/function/Predicate$Util$2;->val$rest:[Lcom/annimon/stream/function/Predicate;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/function/Predicate$Util$2;->val$p1:Lcom/annimon/stream/function/Predicate;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/annimon/stream/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/annimon/stream/function/Predicate$Util$2;->val$p2:Lcom/annimon/stream/function/Predicate;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/annimon/stream/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/annimon/stream/function/Predicate$Util$2;->val$rest:[Lcom/annimon/stream/function/Predicate;

    .line 19
    .line 20
    array-length v2, v0

    .line 21
    move v3, v1

    .line 22
    :goto_0
    if-ge v3, v2, :cond_1

    .line 23
    .line 24
    aget-object v4, v0, v3

    .line 25
    .line 26
    invoke-interface {v4, p1}, Lcom/annimon/stream/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    return v1

    .line 33
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x1

    .line 37
    return p1

    .line 38
    :cond_2
    return v1
.end method
