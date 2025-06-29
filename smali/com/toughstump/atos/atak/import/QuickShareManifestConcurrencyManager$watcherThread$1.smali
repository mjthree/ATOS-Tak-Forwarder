.class public final Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager$watcherThread$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;->INSTANCE:Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;->access$startWatcher(Lcom/toughstump/atos/atak/import/QuickShareManifestConcurrencyManager;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
