.class public final Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$refreshAttributeView$$inlined$doAfterTextChanged$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->refreshAttributeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 ManifestTagDialogFragment.kt\ncom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,82:1\n266#2:83\n59#3:84\n62#4:85\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 ManifestTagDialogFragment.kt\ncom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,82:1\n266#2:83\n59#3:84\n62#4:85\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;


# direct methods
.method public constructor <init>(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$refreshAttributeView$$inlined$doAfterTextChanged$1;->this$0:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$refreshAttributeView$$inlined$doAfterTextChanged$1;->this$0:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->access$updateManifestTagAttributes(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
