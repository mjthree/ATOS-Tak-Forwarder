.class final Lcom/annimon/stream/function/Predicate$Util$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/Predicate$Util;->xor(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/function/Predicate;
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
    iput-object p1, p0, Lcom/annimon/stream/function/Predicate$Util$5;->val$p1:Lcom/annimon/stream/function/Predicate;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/annimon/stream/function/Predicate$Util$5;->val$p2:Lcom/annimon/stream/function/Predicate;

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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/function/Predicate$Util$5;->val$p1:Lcom/annimon/stream/function/Predicate;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/annimon/stream/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/annimon/stream/function/Predicate$Util$5;->val$p2:Lcom/annimon/stream/function/Predicate;

    .line 8
    .line 9
    invoke-interface {v1, p1}, Lcom/annimon/stream/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    xor-int/2addr p1, v0

    .line 14
    return p1
.end method
