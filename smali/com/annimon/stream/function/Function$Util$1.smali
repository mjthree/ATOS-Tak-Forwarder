.class final Lcom/annimon/stream/function/Function$Util$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/Function$Util;->andThen(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/function/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/Function<",
        "TT;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$f1:Lcom/annimon/stream/function/Function;

.field final synthetic val$f2:Lcom/annimon/stream/function/Function;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/function/Function$Util$1;->val$f2:Lcom/annimon/stream/function/Function;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/annimon/stream/function/Function$Util$1;->val$f1:Lcom/annimon/stream/function/Function;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/function/Function$Util$1;->val$f2:Lcom/annimon/stream/function/Function;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/annimon/stream/function/Function$Util$1;->val$f1:Lcom/annimon/stream/function/Function;

    .line 4
    .line 5
    invoke-interface {v1, p1}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
