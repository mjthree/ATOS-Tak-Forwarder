.class public final Lkotlinx/coroutines/internal/LocalAtomics_commonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getValue(Ljava/util/concurrent/atomic/AtomicInteger;)I
    .locals 0
    .param p0    # Ljava/util/concurrent/atomic/AtomicInteger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final setValue(Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 0
    .param p0    # Ljava/util/concurrent/atomic/AtomicInteger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
