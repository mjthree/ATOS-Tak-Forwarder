.class final Lcom/annimon/stream/Collectors$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/Collectors;->summingInt(Lcom/annimon/stream/function/ToIntFunction;)Lcom/annimon/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/Supplier<",
        "[I>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/annimon/stream/Collectors$21;->get()[I

    move-result-object v0

    return-object v0
.end method

.method public get()[I
    .locals 1

    const/4 v0, 0x0

    .line 2
    filled-new-array {v0}, [I

    move-result-object v0

    return-object v0
.end method
