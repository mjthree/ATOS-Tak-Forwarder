.class final synthetic Lcom/atakmap/android/atos/AtosLifecycle$activityStart$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/toughstump/event/EventHandler;
.implements Lkotlin/jvm/internal/FunctionAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/atakmap/android/atos/AtosLifecycle;->activityStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# instance fields
.field final synthetic $tmp0:Lcom/atakmap/android/atos/AtosLifecycle;


# direct methods
.method constructor <init>(Lcom/atakmap/android/atos/AtosLifecycle;)V
    .locals 0

    iput-object p1, p0, Lcom/atakmap/android/atos/AtosLifecycle$activityStart$1;->$tmp0:Lcom/atakmap/android/atos/AtosLifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/toughstump/event/EventHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

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

    new-instance v7, Lkotlin/jvm/internal/FunctionReferenceImpl;

    iget-object v2, p0, Lcom/atakmap/android/atos/AtosLifecycle$activityStart$1;->$tmp0:Lcom/atakmap/android/atos/AtosLifecycle;

    const-string v5, "onHideStaleChanged(Ljava/lang/Object;Z)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Lcom/atakmap/android/atos/AtosLifecycle;

    const-string v4, "onHideStaleChanged"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v7
.end method

.method public final hashCode()I
    .locals 1

    invoke-interface {p0}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/atakmap/android/atos/AtosLifecycle$activityStart$1;->onNext(Ljava/lang/Object;Z)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;Z)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/atakmap/android/atos/AtosLifecycle$activityStart$1;->$tmp0:Lcom/atakmap/android/atos/AtosLifecycle;

    invoke-static {v0, p1, p2}, Lcom/atakmap/android/atos/AtosLifecycle;->access$onHideStaleChanged(Lcom/atakmap/android/atos/AtosLifecycle;Ljava/lang/Object;Z)V

    return-void
.end method
