.class final Lcom/annimon/stream/function/DoublePredicate$Util$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/DoublePredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/DoublePredicate$Util;->xor(Lcom/annimon/stream/function/DoublePredicate;Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/function/DoublePredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$p1:Lcom/annimon/stream/function/DoublePredicate;

.field final synthetic val$p2:Lcom/annimon/stream/function/DoublePredicate;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/DoublePredicate;Lcom/annimon/stream/function/DoublePredicate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/function/DoublePredicate$Util$3;->val$p1:Lcom/annimon/stream/function/DoublePredicate;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/annimon/stream/function/DoublePredicate$Util$3;->val$p2:Lcom/annimon/stream/function/DoublePredicate;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public test(D)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/function/DoublePredicate$Util$3;->val$p1:Lcom/annimon/stream/function/DoublePredicate;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/annimon/stream/function/DoublePredicate;->test(D)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/annimon/stream/function/DoublePredicate$Util$3;->val$p2:Lcom/annimon/stream/function/DoublePredicate;

    .line 8
    .line 9
    invoke-interface {v1, p1, p2}, Lcom/annimon/stream/function/DoublePredicate;->test(D)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    xor-int/2addr p1, v0

    .line 14
    return p1
.end method
