.class public final Lkot/net/functions/Consumers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/JvmName;
    name = "Consumers"
.end annotation


# static fields
.field private static final LOG_EXCEPTION:Lkot/net/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkot/net/functions/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NO_OP:Lkot/net/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkot/net/functions/Consumer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final THROW_EXCEPTION:Lkot/net/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkot/net/functions/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Latakplugin/atos/A;

    .line 2
    .line 3
    invoke-direct {v0}, Latakplugin/atos/A;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkot/net/functions/Consumers;->NO_OP:Lkot/net/functions/Consumer;

    .line 7
    .line 8
    new-instance v0, Latakplugin/atos/B;

    .line 9
    .line 10
    invoke-direct {v0}, Latakplugin/atos/B;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lkot/net/functions/Consumers;->THROW_EXCEPTION:Lkot/net/functions/Consumer;

    .line 14
    .line 15
    new-instance v0, Latakplugin/atos/C;

    .line 16
    .line 17
    invoke-direct {v0}, Latakplugin/atos/C;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lkot/net/functions/Consumers;->LOG_EXCEPTION:Lkot/net/functions/Consumer;

    .line 21
    .line 22
    return-void
.end method

.method private static final LOG_EXCEPTION$lambda-2(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final NO_OP$lambda-0(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static final THROW_EXCEPTION$lambda-1(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public static synthetic a(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lkot/net/functions/Consumers;->LOG_EXCEPTION$lambda-2(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lkot/net/functions/Consumers;->NO_OP$lambda-0(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lkot/net/functions/Consumers;->THROW_EXCEPTION$lambda-1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final getLOG_EXCEPTION()Lkot/net/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkot/net/functions/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkot/net/functions/Consumers;->LOG_EXCEPTION:Lkot/net/functions/Consumer;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getNO_OP()Lkot/net/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkot/net/functions/Consumer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkot/net/functions/Consumers;->NO_OP:Lkot/net/functions/Consumer;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getTHROW_EXCEPTION()Lkot/net/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkot/net/functions/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkot/net/functions/Consumers;->THROW_EXCEPTION:Lkot/net/functions/Consumer;

    .line 2
    .line 3
    return-object v0
.end method
