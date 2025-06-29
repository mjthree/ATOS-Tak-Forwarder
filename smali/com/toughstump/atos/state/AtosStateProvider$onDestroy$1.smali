.class final synthetic Lcom/toughstump/atos/state/AtosStateProvider$onDestroy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/toughstump/event/EventHandler;
.implements Lkotlin/jvm/internal/FunctionAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/state/AtosStateProvider;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# instance fields
.field final synthetic $tmp0:Lcom/toughstump/atos/state/AtosStateProvider;


# direct methods
.method constructor <init>(Lcom/toughstump/atos/state/AtosStateProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/toughstump/atos/state/AtosStateProvider$onDestroy$1;->$tmp0:Lcom/toughstump/atos/state/AtosStateProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/toughstump/event/EventHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/toughstump/atos/state/AtosStateProvider$onDestroy$1;->getFunctionDelegate()Lkotlin/Function;

    move-result-object v0

    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public final getFunctionDelegate()Lkotlin/Function;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Function<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v7, Lkotlin/jvm/internal/AdaptedFunctionReference;

    iget-object v2, p0, Lcom/toughstump/atos/state/AtosStateProvider$onDestroy$1;->$tmp0:Lcom/toughstump/atos/state/AtosStateProvider;

    const-string v5, "onOwnshipLocated(Ljava/lang/Object;Lkot/KotPoint;)Lkotlinx/coroutines/Job;"

    const/16 v6, 0x8

    const/4 v1, 0x2

    const-class v3, Lcom/toughstump/atos/state/AtosStateProvider;

    const-string v4, "onOwnshipLocated"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v7
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/toughstump/atos/state/AtosStateProvider$onDestroy$1;->getFunctionDelegate()Lkotlin/Function;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lkot/KotPoint;

    invoke-virtual {p0, p1, p2}, Lcom/toughstump/atos/state/AtosStateProvider$onDestroy$1;->onNext(Ljava/lang/Object;Lkot/KotPoint;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;Lkot/KotPoint;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/toughstump/atos/state/AtosStateProvider$onDestroy$1;->$tmp0:Lcom/toughstump/atos/state/AtosStateProvider;

    invoke-static {v0, p1, p2}, Lcom/toughstump/atos/state/AtosStateProvider;->access$onOwnshipLocated(Lcom/toughstump/atos/state/AtosStateProvider;Ljava/lang/Object;Lkot/KotPoint;)Lkotlinx/coroutines/Job;

    return-void
.end method
