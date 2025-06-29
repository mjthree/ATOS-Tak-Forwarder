.class public interface abstract Lcom/toughstump/atos/state/db/IAtosTagStateDatabase;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getActiveFilter()Lcom/toughstump/atos/filter/AtosFilterCriteria;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getTagState(Ljava/lang/String;)Lcom/toughstump/atos/state/model/AtosTagState;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract isValid()Z
.end method

.method public abstract onDestroy()V
.end method

.method public abstract setFilterCriteria(Lcom/toughstump/atos/filter/AtosFilterCriteria;)V
    .param p1    # Lcom/toughstump/atos/filter/AtosFilterCriteria;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setTagState(Lcom/toughstump/atos/state/model/AtosTagState;)V
    .param p1    # Lcom/toughstump/atos/state/model/AtosTagState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setValid(Z)V
.end method
