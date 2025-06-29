.class public final enum Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

.field public static final enum CLEAR:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

.field public static final enum CURRENT_MANIFEST_CHECKED:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

.field public static final enum CURRENT_MANIFEST_UNCHECKED:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

.field public static final enum HISTORY:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

.field public static final enum MANIFEST:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

.field public static final enum REGULATORY:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

.field public static final enum SEARCH:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

.field public static final enum SETTINGS:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

.field public static final enum STALE_CHECKED:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

.field public static final enum STALE_UNCHECKED:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;


# instance fields
.field private final drawableId:I

.field private final title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;
    .locals 10

    sget-object v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->SEARCH:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    sget-object v1, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->HISTORY:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    sget-object v2, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->MANIFEST:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    sget-object v3, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->CLEAR:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    sget-object v4, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->STALE_CHECKED:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    sget-object v5, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->STALE_UNCHECKED:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    sget-object v6, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->SETTINGS:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    sget-object v7, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->CURRENT_MANIFEST_CHECKED:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    sget-object v8, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->CURRENT_MANIFEST_UNCHECKED:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    sget-object v9, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->REGULATORY:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    filled-new-array/range {v0 .. v9}, [Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 2
    .line 3
    const-string v1, "Search"

    .line 4
    .line 5
    sget v2, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_search:I

    .line 6
    .line 7
    const-string v3, "SEARCH"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->SEARCH:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 14
    .line 15
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 16
    .line 17
    const-string v1, "Track History"

    .line 18
    .line 19
    sget v2, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_history:I

    .line 20
    .line 21
    const-string v3, "HISTORY"

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->HISTORY:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 28
    .line 29
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 30
    .line 31
    const-string v1, "Manifest Manager"

    .line 32
    .line 33
    sget v2, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_paw_check:I

    .line 34
    .line 35
    const-string v3, "MANIFEST"

    .line 36
    .line 37
    const/4 v4, 0x2

    .line 38
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->MANIFEST:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 42
    .line 43
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 44
    .line 45
    const-string v1, "Clear Map Icons"

    .line 46
    .line 47
    sget v2, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_delete_foreground:I

    .line 48
    .line 49
    const-string v3, "CLEAR"

    .line 50
    .line 51
    const/4 v4, 0x3

    .line 52
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->CLEAR:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 56
    .line 57
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 58
    .line 59
    sget v1, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_checkbox_checked:I

    .line 60
    .line 61
    const-string v2, "STALE_CHECKED"

    .line 62
    .line 63
    const/4 v3, 0x4

    .line 64
    const-string v4, "Hide Stale List Items"

    .line 65
    .line 66
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->STALE_CHECKED:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 70
    .line 71
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 72
    .line 73
    const/4 v1, 0x5

    .line 74
    sget v2, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_checkbox_unchecked:I

    .line 75
    .line 76
    const-string v3, "STALE_UNCHECKED"

    .line 77
    .line 78
    invoke-direct {v0, v3, v1, v4, v2}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->STALE_UNCHECKED:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 82
    .line 83
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 84
    .line 85
    const-string v1, "Settings"

    .line 86
    .line 87
    sget v2, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_settings_24dp:I

    .line 88
    .line 89
    const-string v3, "SETTINGS"

    .line 90
    .line 91
    const/4 v4, 0x6

    .line 92
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->SETTINGS:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 96
    .line 97
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 98
    .line 99
    sget v1, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_checkbox_checked:I

    .line 100
    .line 101
    const-string v2, "CURRENT_MANIFEST_CHECKED"

    .line 102
    .line 103
    const/4 v3, 0x7

    .line 104
    const-string v4, "View Only Current Manifest"

    .line 105
    .line 106
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->CURRENT_MANIFEST_CHECKED:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 110
    .line 111
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 112
    .line 113
    const/16 v1, 0x8

    .line 114
    .line 115
    sget v2, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_checkbox_unchecked:I

    .line 116
    .line 117
    const-string v3, "CURRENT_MANIFEST_UNCHECKED"

    .line 118
    .line 119
    invoke-direct {v0, v3, v1, v4, v2}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 120
    .line 121
    .line 122
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->CURRENT_MANIFEST_UNCHECKED:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 123
    .line 124
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 125
    .line 126
    const-string v1, "Regulatory"

    .line 127
    .line 128
    sget v2, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_fcc_white:I

    .line 129
    .line 130
    const-string v3, "REGULATORY"

    .line 131
    .line 132
    const/16 v4, 0x9

    .line 133
    .line 134
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 135
    .line 136
    .line 137
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->REGULATORY:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 138
    .line 139
    invoke-static {}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->$values()[Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->$VALUES:[Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 144
    .line 145
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 150
    .line 151
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->title:Ljava/lang/String;

    .line 5
    .line 6
    iput p4, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->drawableId:I

    .line 7
    .line 8
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;
    .locals 1

    .line 1
    const-class v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->$VALUES:[Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDrawableId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->drawableId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
