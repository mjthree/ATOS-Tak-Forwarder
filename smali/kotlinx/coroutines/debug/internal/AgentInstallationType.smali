.class public final Lkotlinx/coroutines/debug/internal/AgentInstallationType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/debug/internal/AgentInstallationType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static isInstalledStatically:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/debug/internal/AgentInstallationType;

    invoke-direct {v0}, Lkotlinx/coroutines/debug/internal/AgentInstallationType;-><init>()V

    sput-object v0, Lkotlinx/coroutines/debug/internal/AgentInstallationType;->INSTANCE:Lkotlinx/coroutines/debug/internal/AgentInstallationType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final isInstalledStatically$kotlinx_coroutines_core()Z
    .locals 1

    .line 1
    sget-boolean v0, Lkotlinx/coroutines/debug/internal/AgentInstallationType;->isInstalledStatically:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setInstalledStatically$kotlinx_coroutines_core(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lkotlinx/coroutines/debug/internal/AgentInstallationType;->isInstalledStatically:Z

    .line 2
    .line 3
    return-void
.end method
