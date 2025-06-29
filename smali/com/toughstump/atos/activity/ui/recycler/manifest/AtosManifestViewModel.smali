.class public final Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isCurrentManifest:Z

.field private manifest:Lcom/toughstump/atos/manifest/AtosManifest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/toughstump/atos/manifest/AtosManifest;Z)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "manifest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;->manifest:Lcom/toughstump/atos/manifest/AtosManifest;

    iput-boolean p2, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;->isCurrentManifest:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/toughstump/atos/manifest/AtosManifest;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;-><init>(Lcom/toughstump/atos/manifest/AtosManifest;Z)V

    return-void
.end method


# virtual methods
.method public final getManifest()Lcom/toughstump/atos/manifest/AtosManifest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;->manifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;->manifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifest;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getTagCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;->manifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifest;->getTags()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;->manifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final isCurrentManifest()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;->isCurrentManifest:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setCurrentManifest(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;->isCurrentManifest:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifest;
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
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;->manifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 7
    .line 8
    return-void
.end method
