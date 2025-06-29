.class public final Lcom/toughstump/atos/atak/cot/AtosCotUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "AtosCotUtils"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static final toCotEvent(Lcom/toughstump/atos/kot/AtosKotEvent;)Lcom/atakmap/coremap/cot/event/CotEvent;
    .locals 1
    .param p0    # Lcom/toughstump/atos/kot/AtosKotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/toughstump/atos/kot/AtosKotEvent;->Companion:Lcom/toughstump/atos/kot/AtosKotEvent$Companion;

    invoke-virtual {v0, p0}, Lcom/toughstump/atos/kot/AtosKotEvent$Companion;->toKot(Lcom/toughstump/atos/kot/AtosKotEvent;)Lkot/KotEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/toughstump/atos/atak/cot/AtosCotUtilsKt;->toCotEvent(Lkot/KotEvent;)Lcom/atakmap/coremap/cot/event/CotEvent;

    move-result-object p0

    return-object p0
.end method

.method public static final toCotEvent(Lkot/KotEvent;)Lcom/atakmap/coremap/cot/event/CotEvent;
    .locals 1
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lkot/xml/KotXml;->toXml(Lkot/KotEvent;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/atakmap/coremap/cot/event/CotEvent;->parse(Ljava/lang/String;)Lcom/atakmap/coremap/cot/event/CotEvent;

    move-result-object p0

    const-string v0, "parse(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
