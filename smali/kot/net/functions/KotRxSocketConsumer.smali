.class public final Lkot/net/functions/KotRxSocketConsumer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkot/net/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkot/net/functions/Consumer<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final listener:Lkot/net/functions/KotEventReceiver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lkot/net/functions/KotRxSocketConsumer;-><init>(Lkot/net/functions/KotEventReceiver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkot/net/functions/KotEventReceiver;)V
    .locals 0
    .param p1    # Lkot/net/functions/KotEventReceiver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkot/net/functions/KotRxSocketConsumer;->listener:Lkot/net/functions/KotEventReceiver;

    return-void
.end method

.method public synthetic constructor <init>(Lkot/net/functions/KotEventReceiver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lkot/net/functions/KotRxSocketConsumer;-><init>(Lkot/net/functions/KotEventReceiver;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lkot/net/functions/KotRxSocketConsumer;->accept([B)V

    return-void
.end method

.method public accept([B)V
    .locals 2
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/String;

    .line 3
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 4
    sget-object p1, Lkot/KotEvent;->Companion:Lkot/KotEvent$Companion;

    invoke-static {p1, v0}, Lkot/xml/KotXml;->parse(Lkot/KotEvent$Companion;Ljava/lang/String;)Lkot/KotEvent;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lkot/net/functions/KotRxSocketConsumer;->listener:Lkot/net/functions/KotEventReceiver;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lkot/net/functions/KotEventReceiver;->onKotReceived(Lkot/KotEvent;)V

    :cond_1
    return-void
.end method
