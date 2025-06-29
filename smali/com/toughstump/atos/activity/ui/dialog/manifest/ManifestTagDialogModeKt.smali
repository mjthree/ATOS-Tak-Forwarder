.class public final Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogModeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nManifestTagDialogMode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManifestTagDialogMode.kt\ncom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogModeKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,19:1\n11158#2:20\n11493#2,3:21\n*S KotlinDebug\n*F\n+ 1 ManifestTagDialogMode.kt\ncom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogModeKt\n*L\n14#1:20\n14#1:21,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nManifestTagDialogMode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManifestTagDialogMode.kt\ncom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogModeKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,19:1\n11158#2:20\n11493#2,3:21\n*S KotlinDebug\n*F\n+ 1 ManifestTagDialogMode.kt\ncom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogModeKt\n*L\n14#1:20\n14#1:21,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final synthetic getNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    const-string v1, "T"

    .line 3
    .line 4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static final getVisibility(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;)I
    .locals 1
    .param p0    # Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;
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
    sget-object v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->ADD:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 7
    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    const/16 p0, 0x8

    .line 13
    .line 14
    return p0
.end method
