.class public final Lkotlinx/coroutines/flow/internal/SafeCollectorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final emitFun:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/internal/SafeCollectorKt$emitFun$1;->INSTANCE:Lkotlinx/coroutines/flow/internal/SafeCollectorKt$emitFun$1;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lkotlin/jvm/functions/Function3;

    .line 9
    .line 10
    sput-object v0, Lkotlinx/coroutines/flow/internal/SafeCollectorKt;->emitFun:Lkotlin/jvm/functions/Function3;

    .line 11
    .line 12
    return-void
.end method

.method public static final synthetic access$getEmitFun$p()Lkotlin/jvm/functions/Function3;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/internal/SafeCollectorKt;->emitFun:Lkotlin/jvm/functions/Function3;

    .line 2
    .line 3
    return-object v0
.end method

.method private static synthetic getEmitFun$annotations()V
    .locals 0

    return-void
.end method
