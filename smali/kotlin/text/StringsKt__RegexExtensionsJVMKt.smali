.class Lkotlin/text/StringsKt__RegexExtensionsJVMKt;
.super Lkotlin/text/StringsKt__IndentKt;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/text/StringsKt__IndentKt;-><init>()V

    return-void
.end method

.method private static final toRegex(Ljava/util/regex/Pattern;)Lkotlin/text/Regex;
    .locals 1
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/text/Regex;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lkotlin/text/Regex;-><init>(Ljava/util/regex/Pattern;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
