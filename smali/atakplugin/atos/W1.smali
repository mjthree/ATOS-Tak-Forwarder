.class public final synthetic Latakplugin/atos/W1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    check-cast p2, Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    invoke-static {p1, p2}, Lcom/toughstump/atos/history/TrackRecordingManager;->a(Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
