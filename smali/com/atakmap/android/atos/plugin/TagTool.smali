.class public Lcom/atakmap/android/atos/plugin/TagTool;
.super Lcom/atak/plugins/impl/AbstractPluginTool;
.source "SourceFile"

# interfaces
.implements Latak/core/akb;


# static fields
.field private static final TAG:Ljava/lang/String; = "AtosTool"


# instance fields
.field private navButtonModel:Latak/core/od;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    sget v0, Lcom/atakmap/android/atos/plugin/R$string;->app_name:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget v1, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_atos:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    const-string v6, "com.atakmap.android.atos.SHOW_DROP_DOWN"

    .line 18
    .line 19
    const-string v4, "Android Tactical Object Surveillance"

    .line 20
    .line 21
    move-object v1, p0

    .line 22
    move-object v2, p1

    .line 23
    invoke-direct/range {v1 .. v6}, Lcom/atak/plugins/impl/AbstractPluginTool;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lcom/toughstump/atos/track/ActiveTrackCountProvider;->INSTANCE:Lcom/toughstump/atos/track/ActiveTrackCountProvider;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/toughstump/atos/track/ActiveTrackCountProvider;->getTagCountUpdatedEvent()Lcom/toughstump/event/Event;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance v0, Latakplugin/atos/R1;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Latakplugin/atos/R1;-><init>(Lcom/atakmap/android/atos/plugin/TagTool;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static synthetic a(Lcom/atakmap/android/atos/plugin/TagTool;Ljava/lang/Object;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/atakmap/android/atos/plugin/TagTool;->onCountUpdated(Ljava/lang/Object;Ljava/lang/Integer;)V

    return-void
.end method

.method private onCountUpdated(Ljava/lang/Object;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/atakmap/android/atos/plugin/TagTool;->navButtonModel:Latak/core/od;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/atakmap/android/navigation/a;->a()Lcom/atakmap/android/navigation/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p0}, Lcom/atakmap/android/navigation/a;->a(Lcom/atak/plugins/impl/IToolbarItem;)Latak/core/od;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/atakmap/android/atos/plugin/TagTool;->navButtonModel:Latak/core/od;

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/atakmap/android/atos/plugin/TagTool;->navButtonModel:Latak/core/od;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-virtual {p1, p2}, Latak/core/od;->a(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 1
    sget-object v0, Lcom/toughstump/atos/track/ActiveTrackCountProvider;->INSTANCE:Lcom/toughstump/atos/track/ActiveTrackCountProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/track/ActiveTrackCountProvider;->getTagCountUpdatedEvent()Lcom/toughstump/event/Event;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Latakplugin/atos/R1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Latakplugin/atos/R1;-><init>(Lcom/atakmap/android/atos/plugin/TagTool;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
