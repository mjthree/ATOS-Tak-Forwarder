.class final Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onResume$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtosManifestDetailsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosManifestDetailsFragment.kt\ncom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onResume$5\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,162:1\n1863#2,2:163\n*S KotlinDebug\n*F\n+ 1 AtosManifestDetailsFragment.kt\ncom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onResume$5\n*L\n116#1:163,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAtosManifestDetailsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosManifestDetailsFragment.kt\ncom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onResume$5\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,162:1\n1863#2,2:163\n*S KotlinDebug\n*F\n+ 1 AtosManifestDetailsFragment.kt\ncom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onResume$5\n*L\n116#1:163,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;


# direct methods
.method constructor <init>(Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onResume$5;->this$0:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosStateProvider;->getTrackMap()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onResume$5;->this$0:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/toughstump/atos/state/AtosTag;

    .line 28
    .line 29
    invoke-static {v1, v1, v2}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->access$onAtosTagUpdated(Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;Ljava/lang/Object;Lcom/toughstump/atos/state/AtosTag;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method
