.class final Lkot/net/sockets/DatagramTxSocket$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkot/net/sockets/DatagramTxSocket;-><init>(Ljava/net/InetSocketAddress;Lkot/net/sockets/DatagramSocketFactory;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkot/net/sockets/DatagramTxSocket$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkot/net/sockets/DatagramTxSocket$1;

    invoke-direct {v0}, Lkot/net/sockets/DatagramTxSocket$1;-><init>()V

    sput-object v0, Lkot/net/sockets/DatagramTxSocket$1;->INSTANCE:Lkot/net/sockets/DatagramTxSocket$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lkot/net/sockets/DatagramTxSocket$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 0

    .line 1
    return-void
.end method
