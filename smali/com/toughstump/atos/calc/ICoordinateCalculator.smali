.class public interface abstract Lcom/toughstump/atos/calc/ICoordinateCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract bearingBetweenDegTrue(Lkot/KotPoint;Lkot/KotPoint;)D
    .param p1    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getMgrsDisplay(Lkot/KotPoint;)Ljava/lang/String;
    .param p1    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract rangeBetweenM(Lkot/KotPoint;Lkot/KotPoint;)D
    .param p1    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
