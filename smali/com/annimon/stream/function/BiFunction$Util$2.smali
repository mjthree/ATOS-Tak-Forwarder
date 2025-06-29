.class final Lcom/annimon/stream/function/BiFunction$Util$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/BiFunction$Util;->reverse(Lcom/annimon/stream/function/BiFunction;)Lcom/annimon/stream/function/BiFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/BiFunction<",
        "TU;TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$function:Lcom/annimon/stream/function/BiFunction;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/BiFunction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/function/BiFunction$Util$2;->val$function:Lcom/annimon/stream/function/BiFunction;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;TT;)TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/function/BiFunction$Util$2;->val$function:Lcom/annimon/stream/function/BiFunction;

    .line 2
    .line 3
    invoke-interface {v0, p2, p1}, Lcom/annimon/stream/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
