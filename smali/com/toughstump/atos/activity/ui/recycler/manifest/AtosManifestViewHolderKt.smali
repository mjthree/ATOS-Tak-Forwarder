.class public final Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getButtonLayoutVisibility(Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;)I
    .locals 1
    .param p0    # Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;->isCurrentManifest()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 p0, 0x8

    .line 15
    .line 16
    :goto_0
    return p0
.end method
