.class public final Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic access$getDisplayName(Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolderKt;->getDisplayName(Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final formatDate(J)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "d MMM \'\'yy hh:mm"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private static final getDisplayName(Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;->getDatabase()Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    move-result-object p0

    invoke-static {p0}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolderKt;->getDisplayName(Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getDisplayName(Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;)Ljava/lang/String;
    .locals 8
    .param p0    # Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;->getDbFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5f

    const/16 v1, 0x3a

    .line 3
    invoke-static {p0, v0, v1}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolderKt;->replaceLast(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 4
    const-string v3, "_"

    const-string v4, " "

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final replaceLast(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v5, 0x6

    .line 7
    const/4 v6, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    move-object v1, p0

    .line 11
    move v2, p1

    .line 12
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v0, -0x1

    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string v0, "toCharArray(...)"

    .line 25
    .line 26
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    aput-char p2, p0, p1

    .line 30
    .line 31
    new-instance p1, Ljava/lang/String;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    .line 34
    .line 35
    .line 36
    return-object p1
.end method
