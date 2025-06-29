.class public final Lcom/toughstump/atos/activity/ui/dialog/history/ConfirmArchiveCsvSingleTrackDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final csvFileNameEntry:Landroid/widget/EditText;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final database:Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dialogContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pluginContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final uid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;)V
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
    .param p4    # Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;
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
    const-string v0, "dialogContext"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "uid"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "database"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/history/ConfirmArchiveCsvSingleTrackDialog;->pluginContext:Landroid/content/Context;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/history/ConfirmArchiveCsvSingleTrackDialog;->dialogContext:Landroid/content/Context;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/toughstump/atos/activity/ui/dialog/history/ConfirmArchiveCsvSingleTrackDialog;->uid:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p4, p0, Lcom/toughstump/atos/activity/ui/dialog/history/ConfirmArchiveCsvSingleTrackDialog;->database:Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 31
    .line 32
    new-instance p1, Landroid/widget/EditText;

    .line 33
    .line 34
    invoke-direct {p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/history/ConfirmArchiveCsvSingleTrackDialog;->csvFileNameEntry:Landroid/widget/EditText;

    .line 38
    .line 39
    return-void
.end method

.method private final getCsvArchiveDirectory()Ljava/io/File;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {}, Lcom/atakmap/android/atos/utilities/AtosFileUtils;->getPluginDir()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "history_csv"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final getDatabase()Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/history/ConfirmArchiveCsvSingleTrackDialog;->database:Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/history/ConfirmArchiveCsvSingleTrackDialog;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, -0x1

    .line 2
    if-eq p2, p1, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/history/ConfirmArchiveCsvSingleTrackDialog;->getCsvArchiveDirectory()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 12
    .line 13
    .line 14
    :cond_1
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/history/ConfirmArchiveCsvSingleTrackDialog;->csvFileNameEntry:Landroid/widget/EditText;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 p2, 0x2

    .line 25
    const/4 v0, 0x0

    .line 26
    const-string v1, ".csv"

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-static {p1, v1, v2, p2, v0}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/history/ConfirmArchiveCsvSingleTrackDialog;->csvFileNameEntry:Landroid/widget/EditText;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/history/ConfirmArchiveCsvSingleTrackDialog;->csvFileNameEntry:Landroid/widget/EditText;

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :goto_0
    sget-object p2, Lcom/toughstump/atos/record/db/AtosTrackRecordingCsvExporter;->INSTANCE:Lcom/toughstump/atos/record/db/AtosTrackRecordingCsvExporter;

    .line 68
    .line 69
    new-instance v0, Ljava/io/File;

    .line 70
    .line 71
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/history/ConfirmArchiveCsvSingleTrackDialog;->getCsvArchiveDirectory()Ljava/io/File;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v0, "getPath(...)"

    .line 83
    .line 84
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/history/ConfirmArchiveCsvSingleTrackDialog;->database:Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 88
    .line 89
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/history/ConfirmArchiveCsvSingleTrackDialog;->uid:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;->getAllTracksByUid(Ljava/lang/String;)Ljava/util/Collection;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p2, p1, v0}, Lcom/toughstump/atos/record/db/AtosTrackRecordingCsvExporter;->exportToCsv(Ljava/lang/String;Ljava/util/Collection;)Ljava/io/File;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    new-instance p2, Lcom/toughstump/atos/activity/ui/dialog/history/ArchiveCsvNotificationDialog;

    .line 102
    .line 103
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/history/ConfirmArchiveCsvSingleTrackDialog;->pluginContext:Landroid/content/Context;

    .line 104
    .line 105
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/history/ConfirmArchiveCsvSingleTrackDialog;->dialogContext:Landroid/content/Context;

    .line 106
    .line 107
    invoke-direct {p2, v0, v1, p1}, Lcom/toughstump/atos/activity/ui/dialog/history/ArchiveCsvNotificationDialog;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/io/File;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Lcom/toughstump/atos/activity/ui/dialog/history/ArchiveCsvNotificationDialog;->show()V

    .line 111
    .line 112
    .line 113
    :cond_3
    return-void
.end method

.method public final show()V
    .locals 4

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/history/ConfirmArchiveCsvSingleTrackDialog;->dialogContext:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    const/4 v3, -0x2

    .line 13
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/dialog/history/ConfirmArchiveCsvSingleTrackDialog;->csvFileNameEntry:Landroid/widget/EditText;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/history/ConfirmArchiveCsvSingleTrackDialog;->csvFileNameEntry:Landroid/widget/EditText;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/dialog/history/ConfirmArchiveCsvSingleTrackDialog;->database:Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;->getDbFile()Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "Export to CSV"

    .line 37
    .line 38
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "Cancel"

    .line 43
    .line 44
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/history/ConfirmArchiveCsvSingleTrackDialog;->csvFileNameEntry:Landroid/widget/EditText;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "Enter Export Name"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 61
    .line 62
    .line 63
    return-void
.end method
