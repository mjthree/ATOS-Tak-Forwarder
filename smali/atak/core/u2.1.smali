.class public final synthetic Latak/core/u2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:[Lkotlin/coroutines/CoroutineContext;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public synthetic constructor <init>([Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latak/core/u2;->a:[Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Latak/core/u2;->b:Lkotlin/jvm/internal/Ref$IntRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Latak/core/u2;->a:[Lkotlin/coroutines/CoroutineContext;

    iget-object v1, p0, Latak/core/u2;->b:Lkotlin/jvm/internal/Ref$IntRef;

    check-cast p1, Lkotlin/Unit;

    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    invoke-static {v0, v1, p1, p2}, Lkotlin/coroutines/CombinedContext;->b([Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/Unit;Lkotlin/coroutines/CoroutineContext$Element;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
