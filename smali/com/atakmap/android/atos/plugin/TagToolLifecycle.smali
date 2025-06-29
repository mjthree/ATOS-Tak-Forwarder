.class public Lcom/atakmap/android/atos/plugin/TagToolLifecycle;
.super Lcom/atak/plugins/impl/AbstractPlugin;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lgov/tak/api/plugin/a;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/atakmap/android/atos/plugin/TagTool;

    .line 2
    .line 3
    const-class v1, Lcom/atak/plugins/impl/PluginContextProvider;

    .line 4
    .line 5
    invoke-interface {p1, v1}, Lgov/tak/api/plugin/a;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/atak/plugins/impl/PluginContextProvider;

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/atak/plugins/impl/PluginContextProvider;->getPluginContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Lcom/atakmap/android/atos/plugin/TagTool;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/atakmap/android/atos/TagToolMapComponent;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/atakmap/android/atos/TagToolMapComponent;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1, v0, v1}, Lcom/atak/plugins/impl/AbstractPlugin;-><init>(Lgov/tak/api/plugin/a;Lcom/atak/plugins/impl/IToolbarItem;Lcom/atakmap/android/maps/ae;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
