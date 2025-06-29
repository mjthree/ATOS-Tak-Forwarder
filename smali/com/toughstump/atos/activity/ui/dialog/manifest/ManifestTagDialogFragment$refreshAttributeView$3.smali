.class final Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$refreshAttributeView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->refreshAttributeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $attribute:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;


# direct methods
.method constructor <init>(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;Lkotlin/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$refreshAttributeView$3;->this$0:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;

    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$refreshAttributeView$3;->$attribute:Lkotlin/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$refreshAttributeView$3;->this$0:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$refreshAttributeView$3;->$attribute:Lkotlin/Pair;

    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->access$deleteAttribute(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
