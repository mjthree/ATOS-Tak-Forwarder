.class public final enum Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

.field public static final enum ADD:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

.field public static final enum EDIT:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

.field public static final enum VIEW:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;


# instance fields
.field private final isEditable:Z

.field private final negativeText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final positiveText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;
    .locals 3

    sget-object v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->VIEW:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    sget-object v1, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->ADD:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    sget-object v2, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->EDIT:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    filled-new-array {v0, v1, v2}, [Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v7, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 2
    .line 3
    const-string v5, "OK"

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    const-string v1, "VIEW"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "ATOS Tag Details"

    .line 10
    .line 11
    const-string v4, ""

    .line 12
    .line 13
    move-object v0, v7

    .line 14
    invoke-direct/range {v0 .. v6}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    sput-object v7, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->VIEW:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 18
    .line 19
    new-instance v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 20
    .line 21
    const-string v13, "CANCEL"

    .line 22
    .line 23
    const/4 v14, 0x1

    .line 24
    const-string v9, "ADD"

    .line 25
    .line 26
    const/4 v10, 0x1

    .line 27
    const-string v11, "Add Tag Details"

    .line 28
    .line 29
    const-string v12, "ADD TAG"

    .line 30
    .line 31
    move-object v8, v0

    .line 32
    invoke-direct/range {v8 .. v14}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->ADD:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 36
    .line 37
    new-instance v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 38
    .line 39
    const-string v6, "CANCEL"

    .line 40
    .line 41
    const/4 v7, 0x1

    .line 42
    const-string v2, "EDIT"

    .line 43
    .line 44
    const/4 v3, 0x2

    .line 45
    const-string v4, "Edit Tag Details"

    .line 46
    .line 47
    const-string v5, "SAVE"

    .line 48
    .line 49
    move-object v1, v0

    .line 50
    invoke-direct/range {v1 .. v7}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->EDIT:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 54
    .line 55
    invoke-static {}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->$values()[Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->$VALUES:[Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 60
    .line 61
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 66
    .line 67
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->title:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->positiveText:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->negativeText:Ljava/lang/String;

    .line 9
    .line 10
    iput-boolean p6, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->isEditable:Z

    .line 11
    .line 12
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;
    .locals 1

    .line 1
    const-class v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->$VALUES:[Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNegativeText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->negativeText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPositiveText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->positiveText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isEditable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->isEditable:Z

    .line 2
    .line 3
    return v0
.end method
