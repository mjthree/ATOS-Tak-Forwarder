.class public final Lcom/toughstump/atos/manifest/AtosManifestFileExtensionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final openAtosManifestFile(Ljava/io/File;)Lcom/toughstump/atos/manifest/AtosManifest;
    .locals 2
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x1

    .line 4
    invoke-static {p0, v0, v1, v0}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 5
    sget-object v0, Lcom/toughstump/atos/manifest/AtosManifest;->Companion:Lcom/toughstump/atos/manifest/AtosManifest$Companion;

    invoke-virtual {v0, p0}, Lcom/toughstump/atos/manifest/AtosManifest$Companion;->fromJson(Ljava/lang/String;)Lcom/toughstump/atos/manifest/AtosManifest;

    move-result-object p0

    return-object p0
.end method

.method public static final openAtosManifestFile(Ljava/lang/String;)Lcom/toughstump/atos/manifest/AtosManifest;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "manifestPath"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lcom/toughstump/atos/manifest/AtosManifestFileExtensionsKt;->openAtosManifestFile(Ljava/io/File;)Lcom/toughstump/atos/manifest/AtosManifest;

    move-result-object p0

    return-object p0
.end method
