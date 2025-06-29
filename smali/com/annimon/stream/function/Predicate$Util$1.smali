.class final Lcom/annimon/stream/function/Predicate$Util$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/Predicate$Util;->and(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/function/Predicate;
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


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/Predicate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/function/Predicate$Util$1;->val$p1:Lcom/annimon/stream/function/Predicate;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/annimon/stream/function/Predicate$Util$1;->val$p2:Lcom/annimon/stream/function/Predicate;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/function/Predicate$Util$1;->val$p1:Lcom/annimon/stream/function/Predicate;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/annimon/stream/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/annimon/stream/function/Predicate$Util$1;->val$p2:Lcom/annimon/stream/function/Predicate;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/annimon/stream/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method
