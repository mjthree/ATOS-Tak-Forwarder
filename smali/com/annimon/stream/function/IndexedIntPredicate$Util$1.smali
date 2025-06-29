.class final Lcom/annimon/stream/function/IndexedIntPredicate$Util$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/IndexedIntPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IndexedIntPredicate$Util;->wrap(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/function/IndexedIntPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$predicate:Lcom/annimon/stream/function/IntPredicate;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/IntPredicate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/function/IndexedIntPredicate$Util$1;->val$predicate:Lcom/annimon/stream/function/IntPredicate;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public test(II)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/annimon/stream/function/IndexedIntPredicate$Util$1;->val$predicate:Lcom/annimon/stream/function/IntPredicate;

    .line 2
    .line 3
    invoke-interface {p1, p2}, Lcom/annimon/stream/function/IntPredicate;->test(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
