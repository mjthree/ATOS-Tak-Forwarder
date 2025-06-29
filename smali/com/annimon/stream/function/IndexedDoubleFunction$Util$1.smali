.class final Lcom/annimon/stream/function/IndexedDoubleFunction$Util$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/IndexedDoubleFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IndexedDoubleFunction$Util;->wrap(Lcom/annimon/stream/function/DoubleFunction;)Lcom/annimon/stream/function/IndexedDoubleFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/IndexedDoubleFunction<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$function:Lcom/annimon/stream/function/DoubleFunction;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/DoubleFunction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/function/IndexedDoubleFunction$Util$1;->val$function:Lcom/annimon/stream/function/DoubleFunction;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public apply(ID)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ID)TR;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/annimon/stream/function/IndexedDoubleFunction$Util$1;->val$function:Lcom/annimon/stream/function/DoubleFunction;

    .line 2
    .line 3
    invoke-interface {p1, p2, p3}, Lcom/annimon/stream/function/DoubleFunction;->apply(D)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
