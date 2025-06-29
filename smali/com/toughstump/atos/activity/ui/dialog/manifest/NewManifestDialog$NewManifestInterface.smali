.class public interface abstract Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NewManifestInterface"
.end annotation


# virtual methods
.method public abstract onManifestCreated(Lcom/toughstump/atos/manifest/AtosManifest;)V
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onManifestRenamed(Lcom/toughstump/atos/manifest/AtosManifest;)V
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
