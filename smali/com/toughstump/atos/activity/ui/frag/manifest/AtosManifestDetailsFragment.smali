.class public final Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagUpdatedInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtosManifestDetailsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosManifestDetailsFragment.kt\ncom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,162:1\n295#2,2:163\n1#3:165\n*S KotlinDebug\n*F\n+ 1 AtosManifestDetailsFragment.kt\ncom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment\n*L\n58#1:163,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAtosManifestDetailsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosManifestDetailsFragment.kt\ncom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,162:1\n295#2,2:163\n1#3:165\n*S KotlinDebug\n*F\n+ 1 AtosManifestDetailsFragment.kt\ncom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment\n*L\n58#1:163,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AtosManifestDetailsFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final activityContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private addTagButton:Landroid/widget/ImageButton;

.field private isManifestEmpty:Z

.field private manifestEmptyTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private manifestNameText:Landroid/widget/TextView;

.field private manifestTagAdapter:Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final manifestUid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pluginContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private root:Landroid/view/View;

.field private visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->Companion:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "pluginContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "activityContext"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "manifestUid"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->pluginContext:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->activityContext:Landroid/content/Context;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->manifestUid:Ljava/lang/String;

    .line 24
    .line 25
    new-instance p2, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;

    .line 26
    .line 27
    invoke-direct {p2, p1, p0}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->manifestTagAdapter:Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->isManifestEmpty:Z

    .line 34
    .line 35
    return-void
.end method

.method public static final synthetic access$getManifestTagAdapter$p(Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;)Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->manifestTagAdapter:Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$onAtosTagUpdated(Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;Ljava/lang/Object;Lcom/toughstump/atos/state/AtosTag;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->onAtosTagUpdated(Ljava/lang/Object;Lcom/toughstump/atos/state/AtosTag;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onRepoManifestTagUpdated(Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;Ljava/lang/Object;Lcom/toughstump/atos/manifest/AtosManifestRepository$ManifestUpdateArgs;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->onRepoManifestTagUpdated(Ljava/lang/Object;Lcom/toughstump/atos/manifest/AtosManifestRepository$ManifestUpdateArgs;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onRepoManifestUpdated(Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;Ljava/lang/Object;Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->onRepoManifestUpdated(Ljava/lang/Object;Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$showAddTagDialog(Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->showAddTagDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getLowestAvailableTagId()I
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_0
    const/16 v1, 0x64

    .line 3
    .line 4
    if-ge v0, v1, :cond_4

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->getManifest$ATAK_Plugin_atos_atak_plugin_2_4_0_1_9910af0a_5_4_0_civRelease()Lcom/toughstump/atos/manifest/AtosManifest;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/toughstump/atos/manifest/AtosManifest;->getTags()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    move-object v4, v3

    .line 40
    check-cast v4, Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getTagId()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-ne v4, v0, :cond_0

    .line 47
    .line 48
    move-object v2, v3

    .line 49
    :cond_1
    check-cast v2, Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 50
    .line 51
    :cond_2
    if-nez v2, :cond_3

    .line 52
    .line 53
    return v0

    .line 54
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    return v1
.end method

.method private final isManifestEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->getManifest$ATAK_Plugin_atos_atak_plugin_2_4_0_1_9910af0a_5_4_0_civRelease()Lcom/toughstump/atos/manifest/AtosManifest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifest;->getTags()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    :goto_0
    return v0
.end method

.method private final onAtosTagUpdated(Ljava/lang/Object;Lcom/toughstump/atos/state/AtosTag;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->visible:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->getManifest$ATAK_Plugin_atos_atak_plugin_2_4_0_1_9910af0a_5_4_0_civRelease()Lcom/toughstump/atos/manifest/AtosManifest;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    invoke-virtual {p2}, Lcom/toughstump/atos/state/AtosTag;->getManifestUid()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->getManifest$ATAK_Plugin_atos_atak_plugin_2_4_0_1_9910af0a_5_4_0_civRelease()Lcom/toughstump/atos/manifest/AtosManifest;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->root:Landroid/view/View;

    .line 36
    .line 37
    if-nez p1, :cond_3

    .line 38
    .line 39
    const-string p1, "root"

    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    :cond_3
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onAtosTagUpdated$1;

    .line 46
    .line 47
    invoke-direct {v0, p0, p2}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onAtosTagUpdated$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;Lcom/toughstump/atos/state/AtosTag;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private final onRepoManifestTagUpdated(Ljava/lang/Object;Lcom/toughstump/atos/manifest/AtosManifestRepository$ManifestUpdateArgs;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->visible:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/toughstump/atos/manifest/AtosManifestRepository$ManifestUpdateArgs;->getManifest()Lcom/toughstump/atos/manifest/AtosManifest;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->manifestUid:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->manifestTagAdapter:Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/toughstump/atos/manifest/AtosManifestRepository$ManifestUpdateArgs;->getTag()Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->update(Lcom/toughstump/atos/manifest/AtosManifestTag;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->isManifestEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-direct {p0, p1}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->setManifestEmpty(Z)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method private final onRepoManifestUpdated(Ljava/lang/Object;Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->visible:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->manifestTagAdapter:Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/toughstump/atos/manifest/AtosManifest;->getTags()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->updateAll(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->isManifestEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-direct {p0, p1}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->setManifestEmpty(Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private final setManifestEmpty(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->manifestEmptyTextView:Landroid/widget/TextView;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->manifestEmptyTextView:Landroid/widget/TextView;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->isManifestEmpty:Z

    .line 22
    .line 23
    return-void
.end method

.method private final showAddTagDialog()V
    .locals 15

    .line 1
    new-instance v8, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->pluginContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->activityContext:Landroid/content/Context;

    .line 6
    .line 7
    sget-object v9, Lcom/toughstump/atos/manifest/AtosManifestTag;->Companion:Lcom/toughstump/atos/manifest/AtosManifestTag$Companion;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->getLowestAvailableTagId()I

    .line 10
    .line 11
    .line 12
    move-result v10

    .line 13
    const/4 v13, 0x6

    .line 14
    const/4 v14, 0x0

    .line 15
    const/4 v11, 0x0

    .line 16
    const/4 v12, 0x0

    .line 17
    invoke-static/range {v9 .. v14}, Lcom/toughstump/atos/manifest/AtosManifestTag$Companion;->newDefaultManifestTag$default(Lcom/toughstump/atos/manifest/AtosManifestTag$Companion;ILcom/toughstump/atos/AtosTrackType;Lcom/toughstump/atos/AtosColor;ILjava/lang/Object;)Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const/4 v6, 0x4

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    move-object v0, v8

    .line 25
    move-object v4, p0

    .line 26
    invoke-direct/range {v0 .. v7}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagUpdatedInterface;Lcom/toughstump/atos/manifest/AtosManifestTag;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v1, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->Companion:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$Companion;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v8, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final getManifest$ATAK_Plugin_atos_atak_plugin_2_4_0_1_9910af0a_5_4_0_civRelease()Lcom/toughstump/atos/manifest/AtosManifest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getCurrentManifest()Lcom/toughstump/atos/manifest/AtosManifest;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final getManifestUid$ATAK_Plugin_atos_atak_plugin_2_4_0_1_9910af0a_5_4_0_civRelease()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->manifestUid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p3, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->pluginContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget p3, Lcom/atakmap/android/atos/plugin/R$layout;->atos_frag_manifest_details:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->root:Landroid/view/View;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    const-string p1, "root"

    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    :cond_0
    return-object p1
.end method

.method public onManifestTagDeleted(Lcom/toughstump/atos/manifest/AtosManifestTag;)V
    .locals 4
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifestTag;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tagData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getTagId()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v1, 0x2

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static {v0, p1, v3, v1, v2}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->deleteTag$default(Lcom/toughstump/atos/manifest/AtosManifestRepository;IZILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onManifestTagUpdated(Lcom/toughstump/atos/manifest/AtosManifestTag;)V
    .locals 4
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifestTag;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tagData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x2

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {v0, p1, v3, v1, v2}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->updateTag$default(Lcom/toughstump/atos/manifest/AtosManifestRepository;Lcom/toughstump/atos/manifest/AtosManifestTag;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->visible:Z

    .line 6
    .line 7
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getManifestTagUpdated()Lcom/toughstump/event/Event;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onPause$1;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onPause$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getManifestUpdated()Lcom/toughstump/event/Event;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onPause$2;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onPause$2;-><init>(Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 39
    .line 40
    .line 41
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosStateProvider;->getTagTrackUpdateEvent()Lcom/toughstump/event/Event;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onPause$3;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onPause$3;-><init>(Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->visible:Z

    .line 6
    .line 7
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getManifestUpdated()Lcom/toughstump/event/Event;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onResume$1;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onResume$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getManifestTagUpdated()Lcom/toughstump/event/Event;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onResume$2;

    .line 34
    .line 35
    invoke-direct {v2, p0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onResume$2;-><init>(Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getCurrentManifest()Lcom/toughstump/atos/manifest/AtosManifest;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifest;->getTags()Ljava/util/Map;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->manifestTagAdapter:Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->updateAll(Ljava/util/List;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosStateProvider;->getTagTrackUpdateEvent()Lcom/toughstump/event/Event;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onResume$4;

    .line 81
    .line 82
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onResume$4;-><init>(Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lcom/atakmap/android/atos/utilities/RunnableManager;->getInstance()Lcom/atakmap/android/atos/utilities/RunnableManager;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onResume$5;

    .line 93
    .line 94
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onResume$5;-><init>(Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/atakmap/android/atos/utilities/RunnableManager;->post(Ljava/lang/Runnable;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->root:Landroid/view/View;

    .line 10
    .line 11
    const-string p2, "root"

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move-object p1, v0

    .line 20
    :cond_0
    sget v1, Lcom/atakmap/android/atos/plugin/R$id;->txt_atos_manifest_details_manifest_name:I

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/widget/TextView;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->manifestNameText:Landroid/widget/TextView;

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    const-string p1, "manifestNameText"

    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    move-object p1, v0

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->getManifest$ATAK_Plugin_atos_atak_plugin_2_4_0_1_9910af0a_5_4_0_civRelease()Lcom/toughstump/atos/manifest/AtosManifest;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/toughstump/atos/manifest/AtosManifest;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move-object v1, v0

    .line 50
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->root:Landroid/view/View;

    .line 54
    .line 55
    if-nez p1, :cond_3

    .line 56
    .line 57
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    move-object p1, v0

    .line 61
    :cond_3
    sget v1, Lcom/atakmap/android/atos/plugin/R$id;->btn_atos_manifest_details_add_tag:I

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Landroid/widget/ImageButton;

    .line 68
    .line 69
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->addTagButton:Landroid/widget/ImageButton;

    .line 70
    .line 71
    if-nez p1, :cond_4

    .line 72
    .line 73
    const-string p1, "addTagButton"

    .line 74
    .line 75
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    move-object p1, v0

    .line 79
    :cond_4
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onViewCreated$1;

    .line 80
    .line 81
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onViewCreated$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->root:Landroid/view/View;

    .line 88
    .line 89
    if-nez p1, :cond_5

    .line 90
    .line 91
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    move-object p1, v0

    .line 95
    :cond_5
    sget v1, Lcom/atakmap/android/atos/plugin/R$id;->txt_atos_manifest_details_empty:I

    .line 96
    .line 97
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Landroid/widget/TextView;

    .line 102
    .line 103
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->manifestEmptyTextView:Landroid/widget/TextView;

    .line 104
    .line 105
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->isManifestEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    invoke-direct {p0, p1}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->setManifestEmpty(Z)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->root:Landroid/view/View;

    .line 113
    .line 114
    if-nez p1, :cond_6

    .line 115
    .line 116
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    move-object p1, v0

    .line 120
    :cond_6
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->recycler_atos_manifest_details_tags:I

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 127
    .line 128
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 129
    .line 130
    const-string p2, "recyclerView"

    .line 131
    .line 132
    if-nez p1, :cond_7

    .line 133
    .line 134
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    move-object p1, v0

    .line 138
    :cond_7
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 139
    .line 140
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->pluginContext:Landroid/content/Context;

    .line 141
    .line 142
    const/4 v3, 0x1

    .line 143
    const/4 v4, 0x0

    .line 144
    invoke-direct {v1, v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 151
    .line 152
    if-nez p1, :cond_8

    .line 153
    .line 154
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_8
    move-object v0, p1

    .line 159
    :goto_1
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->manifestTagAdapter:Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;

    .line 160
    .line 161
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 162
    .line 163
    .line 164
    return-void
.end method

.method public final showEditTagDialog$ATAK_Plugin_atos_atak_plugin_2_4_0_1_9910af0a_5_4_0_civRelease(Lcom/toughstump/atos/manifest/AtosManifestTag;)V
    .locals 7
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
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->pluginContext:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->activityContext:Landroid/content/Context;

    .line 9
    .line 10
    sget-object v4, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->EDIT:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 11
    .line 12
    new-instance v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;

    .line 13
    .line 14
    move-object v1, v0

    .line 15
    move-object v5, p0

    .line 16
    move-object v6, p1

    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagUpdatedInterface;Lcom/toughstump/atos/manifest/AtosManifestTag;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget-object v1, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->Companion:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$Companion;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
