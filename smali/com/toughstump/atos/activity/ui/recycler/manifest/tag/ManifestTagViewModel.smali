.class public final Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isActive:Z

.field private manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/toughstump/atos/manifest/AtosManifestTag;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifestTag;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "manifestTag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getCallsign()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getCallsign()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getColor()Lcom/toughstump/atos/AtosColor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getColor()Lcom/toughstump/atos/AtosColor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getManifestTag()Lcom/toughstump/atos/manifest/AtosManifestTag;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTagId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getTagId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getTrackType()Lcom/toughstump/atos/AtosTrackType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getType()Lcom/toughstump/atos/AtosTrackType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final isActive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;->isActive:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setActive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;->isActive:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setManifestTag(Lcom/toughstump/atos/manifest/AtosManifestTag;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifestTag;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 7
    .line 8
    return-void
.end method
