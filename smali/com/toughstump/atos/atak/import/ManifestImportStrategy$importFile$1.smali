.class final Lcom/toughstump/atos/atak/import/ManifestImportStrategy$importFile$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/atak/import/ManifestImportStrategy;->importFile(Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $manifest:Lcom/toughstump/atos/manifest/AtosManifest;

.field final synthetic this$0:Lcom/toughstump/atos/atak/import/ManifestImportStrategy;


# direct methods
.method constructor <init>(Lcom/toughstump/atos/atak/import/ManifestImportStrategy;Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 0

    iput-object p1, p0, Lcom/toughstump/atos/atak/import/ManifestImportStrategy$importFile$1;->this$0:Lcom/toughstump/atos/atak/import/ManifestImportStrategy;

    iput-object p2, p0, Lcom/toughstump/atos/atak/import/ManifestImportStrategy$importFile$1;->$manifest:Lcom/toughstump/atos/manifest/AtosManifest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/atak/import/ManifestImportStrategy$importFile$1;->this$0:Lcom/toughstump/atos/atak/import/ManifestImportStrategy;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/toughstump/atos/atak/import/ManifestImportStrategy$importFile$1;->$manifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/toughstump/atos/atak/import/ManifestImportStrategy;->access$showImportDialog(Lcom/toughstump/atos/atak/import/ManifestImportStrategy;Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
