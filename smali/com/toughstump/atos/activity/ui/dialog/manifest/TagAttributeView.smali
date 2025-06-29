.class public final Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTagAttributeView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagAttributeView.kt\ncom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,60:1\n1#2:61\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTagAttributeView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagAttributeView.kt\ncom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,60:1\n1#2:61\n*E\n"
    }
.end annotation


# instance fields
.field private editKey:Landroid/widget/EditText;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private editValue:Landroid/widget/EditText;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private imageDelete:Landroid/widget/ImageButton;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final trackType:Lcom/toughstump/atos/AtosTrackType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private view:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlin/Pair;Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;Lcom/toughstump/atos/AtosTrackType;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/toughstump/atos/AtosTrackType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;",
            "Lcom/toughstump/atos/AtosTrackType;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "attribute"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object p4, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->trackType:Lcom/toughstump/atos/AtosTrackType;

    .line 10
    .line 11
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget p4, Lcom/atakmap/android/atos/plugin/R$layout;->atos_item_view_tag_attributes:I

    .line 16
    .line 17
    invoke-virtual {p1, p4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->view:Landroid/view/View;

    .line 22
    .line 23
    sget p4, Lcom/atakmap/android/atos/plugin/R$id;->edit_tag_attribute_key:I

    .line 24
    .line 25
    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/widget/EditText;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->editKey:Landroid/widget/EditText;

    .line 32
    .line 33
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->view:Landroid/view/View;

    .line 34
    .line 35
    sget p4, Lcom/atakmap/android/atos/plugin/R$id;->edit_tag_attribute_value:I

    .line 36
    .line 37
    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroid/widget/EditText;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->editValue:Landroid/widget/EditText;

    .line 44
    .line 45
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->view:Landroid/view/View;

    .line 46
    .line 47
    sget p4, Lcom/atakmap/android/atos/plugin/R$id;->btn_tag_attribute_delete:I

    .line 48
    .line 49
    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/widget/ImageButton;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->imageDelete:Landroid/widget/ImageButton;

    .line 56
    .line 57
    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Ljava/lang/String;

    .line 62
    .line 63
    iget-object p4, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->editKey:Landroid/widget/EditText;

    .line 64
    .line 65
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p4

    .line 72
    check-cast p4, Ljava/lang/String;

    .line 73
    .line 74
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 75
    .line 76
    .line 77
    move-result p4

    .line 78
    if-nez p4, :cond_1

    .line 79
    .line 80
    sget-object p2, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->VIEW:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 81
    .line 82
    if-eq p3, p2, :cond_0

    .line 83
    .line 84
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 85
    .line 86
    const/4 p2, 0x1

    .line 87
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p4

    .line 91
    invoke-static {p4, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    const-string p4, "enter: %s"

    .line 96
    .line 97
    invoke-static {p4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    const-string p4, "format(...)"

    .line 102
    .line 103
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    const-string p2, ""

    .line 108
    .line 109
    :goto_0
    iget-object p4, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->editValue:Landroid/widget/EditText;

    .line 110
    .line 111
    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_1
    iget-object p4, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->editValue:Landroid/widget/EditText;

    .line 116
    .line 117
    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    check-cast p2, Ljava/lang/CharSequence;

    .line 122
    .line 123
    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    :goto_1
    sget-object p2, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->VIEW:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 127
    .line 128
    if-ne p3, p2, :cond_2

    .line 129
    .line 130
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->editKey:Landroid/widget/EditText;

    .line 131
    .line 132
    const/4 p2, 0x0

    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->editValue:Landroid/widget/EditText;

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->imageDelete:Landroid/widget/ImageButton;

    .line 142
    .line 143
    const/16 p2, 0x8

    .line 144
    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_2
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->editKey:Landroid/widget/EditText;

    .line 150
    .line 151
    invoke-direct {p0, p1}, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->isCustomKey(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 156
    .line 157
    .line 158
    :goto_2
    return-void
.end method

.method private final isCustomKey(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->trackType:Lcom/toughstump/atos/AtosTrackType;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/toughstump/atos/AtosTrackTypeKt;->getAttributeDefaults(Lcom/toughstump/atos/AtosTrackType;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    xor-int/2addr p1, v1

    .line 16
    return p1
.end method


# virtual methods
.method public final getAttribute()Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->editKey:Landroid/widget/EditText;

    .line 2
    .line 3
    new-instance v1, Lkotlin/Pair;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->editValue:Landroid/widget/EditText;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v1, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object v1
.end method

.method public final getEditKey$ATAK_Plugin_atos_atak_plugin_2_4_0_1_9910af0a_5_4_0_civRelease()Landroid/widget/EditText;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->editKey:Landroid/widget/EditText;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEditValue$ATAK_Plugin_atos_atak_plugin_2_4_0_1_9910af0a_5_4_0_civRelease()Landroid/widget/EditText;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->editValue:Landroid/widget/EditText;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getImageDelete$ATAK_Plugin_atos_atak_plugin_2_4_0_1_9910af0a_5_4_0_civRelease()Landroid/widget/ImageButton;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->imageDelete:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTrackType()Lcom/toughstump/atos/AtosTrackType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->trackType:Lcom/toughstump/atos/AtosTrackType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setEditKey$ATAK_Plugin_atos_atak_plugin_2_4_0_1_9910af0a_5_4_0_civRelease(Landroid/widget/EditText;)V
    .locals 1
    .param p1    # Landroid/widget/EditText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->editKey:Landroid/widget/EditText;

    .line 7
    .line 8
    return-void
.end method

.method public final setEditValue$ATAK_Plugin_atos_atak_plugin_2_4_0_1_9910af0a_5_4_0_civRelease(Landroid/widget/EditText;)V
    .locals 1
    .param p1    # Landroid/widget/EditText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->editValue:Landroid/widget/EditText;

    .line 7
    .line 8
    return-void
.end method

.method public final setImageDelete$ATAK_Plugin_atos_atak_plugin_2_4_0_1_9910af0a_5_4_0_civRelease(Landroid/widget/ImageButton;)V
    .locals 1
    .param p1    # Landroid/widget/ImageButton;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->imageDelete:Landroid/widget/ImageButton;

    .line 7
    .line 8
    return-void
.end method
