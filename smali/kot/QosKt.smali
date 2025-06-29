.class public final Lkot/QosKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final minus(Lkot/Priority;Lkot/Overtaking;)Lkot/PartialQos;
    .locals 1
    .param p0    # Lkot/Priority;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkot/Overtaking;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overtaking"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkot/PartialQos;

    invoke-direct {v0, p0, p1}, Lkot/PartialQos;-><init>(Lkot/Priority;Lkot/Overtaking;)V

    return-object v0
.end method

.method public static final minus(Lkot/PartialQos;Lkot/Assurance;)Lkot/Qos;
    .locals 2
    .param p0    # Lkot/PartialQos;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkot/Assurance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assurance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lkot/Qos;

    invoke-virtual {p0}, Lkot/PartialQos;->getPriority()Lkot/Priority;

    move-result-object v1

    invoke-virtual {p0}, Lkot/PartialQos;->getOvertaking()Lkot/Overtaking;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lkot/Qos;-><init>(Lkot/Priority;Lkot/Overtaking;Lkot/Assurance;)V

    return-object v0
.end method
