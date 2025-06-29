.class public final Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "AtosManifestViewHolder"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private buttonLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private copyImageButton:Landroid/widget/ImageButton;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private deleteImageButton:Landroid/widget/ImageButton;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private detailsImageButton:Landroid/widget/ImageButton;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private nameTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private renameImageButton:Landroid/widget/ImageButton;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private resetImageButton:Landroid/widget/ImageButton;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private saveImageButton:Landroid/widget/ImageButton;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private sendImageButton:Landroid/widget/ImageButton;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tagCountTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->Companion:Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "itemView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->tv_manifest_item_name:I

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->nameTextView:Landroid/widget/TextView;

    .line 18
    .line 19
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->tv_manifest_item_tag_count:I

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/TextView;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->tagCountTextView:Landroid/widget/TextView;

    .line 28
    .line 29
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->linear_manifest_item_extras:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/LinearLayout;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->buttonLayout:Landroid/widget/LinearLayout;

    .line 38
    .line 39
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->ibtn_manifest_item_details:I

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/widget/ImageButton;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->detailsImageButton:Landroid/widget/ImageButton;

    .line 48
    .line 49
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->ibtn_manifest_item_rename:I

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/widget/ImageButton;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->renameImageButton:Landroid/widget/ImageButton;

    .line 58
    .line 59
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->ibtn_manifest_item_copy:I

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/widget/ImageButton;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->copyImageButton:Landroid/widget/ImageButton;

    .line 68
    .line 69
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->ibtn_manifest_item_send:I

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/widget/ImageButton;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->sendImageButton:Landroid/widget/ImageButton;

    .line 78
    .line 79
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->ibtn_manifest_item_delete:I

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/ImageButton;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->deleteImageButton:Landroid/widget/ImageButton;

    .line 88
    .line 89
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->ibtn_manifest_item_save:I

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Landroid/widget/ImageButton;

    .line 96
    .line 97
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->saveImageButton:Landroid/widget/ImageButton;

    .line 98
    .line 99
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->ibtn_manifest_item_reset:I

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Landroid/widget/ImageButton;

    .line 106
    .line 107
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->resetImageButton:Landroid/widget/ImageButton;

    .line 108
    .line 109
    return-void
.end method


# virtual methods
.method public final getButtonLayout()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->buttonLayout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCopyImageButton()Landroid/widget/ImageButton;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->copyImageButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDeleteImageButton()Landroid/widget/ImageButton;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->deleteImageButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDetailsImageButton()Landroid/widget/ImageButton;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->detailsImageButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNameTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->nameTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRenameImageButton()Landroid/widget/ImageButton;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->renameImageButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResetImageButton()Landroid/widget/ImageButton;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->resetImageButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSaveImageButton()Landroid/widget/ImageButton;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->saveImageButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSendImageButton()Landroid/widget/ImageButton;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->sendImageButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTagCountTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->tagCountTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final init(Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;)V
    .locals 7
    .param p1    # Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "viewModel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "parent"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "Init View holder "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 v1, 0x20

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;->getUid()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v2, "AtosManifestViewHolder"

    .line 45
    .line 46
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;->getManifest()Lcom/toughstump/atos/manifest/AtosManifest;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->nameTextView:Landroid/widget/TextView;

    .line 54
    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;->getName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->tagCountTextView:Landroid/widget/TextView;

    .line 65
    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;->getTagCount()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->buttonLayout:Landroid/widget/LinearLayout;

    .line 80
    .line 81
    if-eqz v3, :cond_2

    .line 82
    .line 83
    invoke-static {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolderKt;->getButtonLayoutVisibility(Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;)I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    :cond_2
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;->isCurrentManifest()Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 97
    .line 98
    .line 99
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 100
    .line 101
    invoke-virtual {v3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 105
    .line 106
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->detailsImageButton:Landroid/widget/ImageButton;

    .line 110
    .line 111
    if-eqz v3, :cond_3

    .line 112
    .line 113
    invoke-virtual {v3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->detailsImageButton:Landroid/widget/ImageButton;

    .line 117
    .line 118
    if-eqz v3, :cond_4

    .line 119
    .line 120
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_4
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->renameImageButton:Landroid/widget/ImageButton;

    .line 124
    .line 125
    if-eqz v3, :cond_5

    .line 126
    .line 127
    invoke-virtual {v3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    .line 129
    .line 130
    :cond_5
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->renameImageButton:Landroid/widget/ImageButton;

    .line 131
    .line 132
    if-eqz v3, :cond_6

    .line 133
    .line 134
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_6
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;->getUid()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    const-string v4, "atos_default_manifest"

    .line 142
    .line 143
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    const/16 v5, 0x8

    .line 148
    .line 149
    if-eqz v3, :cond_7

    .line 150
    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v6, "Rename btn View holder "

    .line 157
    .line 158
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;->getName()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;->getUid()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->renameImageButton:Landroid/widget/ImageButton;

    .line 186
    .line 187
    if-eqz v3, :cond_7

    .line 188
    .line 189
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    :cond_7
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->copyImageButton:Landroid/widget/ImageButton;

    .line 193
    .line 194
    if-eqz v3, :cond_8

    .line 195
    .line 196
    invoke-virtual {v3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    .line 198
    .line 199
    :cond_8
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->copyImageButton:Landroid/widget/ImageButton;

    .line 200
    .line 201
    if-eqz v3, :cond_9

    .line 202
    .line 203
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    :cond_9
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->sendImageButton:Landroid/widget/ImageButton;

    .line 207
    .line 208
    if-eqz v3, :cond_a

    .line 209
    .line 210
    invoke-virtual {v3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    .line 212
    .line 213
    :cond_a
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->sendImageButton:Landroid/widget/ImageButton;

    .line 214
    .line 215
    if-eqz v3, :cond_b

    .line 216
    .line 217
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    :cond_b
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->deleteImageButton:Landroid/widget/ImageButton;

    .line 221
    .line 222
    if-eqz v3, :cond_c

    .line 223
    .line 224
    invoke-virtual {v3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    .line 226
    .line 227
    :cond_c
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->deleteImageButton:Landroid/widget/ImageButton;

    .line 228
    .line 229
    if-eqz v3, :cond_d

    .line 230
    .line 231
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    :cond_d
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;->getUid()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    if-eqz v3, :cond_e

    .line 243
    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    const-string v6, "delete btn View holder "

    .line 250
    .line 251
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;->getName()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;->getUid()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->deleteImageButton:Landroid/widget/ImageButton;

    .line 279
    .line 280
    if-eqz v3, :cond_e

    .line 281
    .line 282
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 283
    .line 284
    .line 285
    :cond_e
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->resetImageButton:Landroid/widget/ImageButton;

    .line 286
    .line 287
    if-eqz v3, :cond_f

    .line 288
    .line 289
    invoke-virtual {v3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    .line 291
    .line 292
    :cond_f
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->resetImageButton:Landroid/widget/ImageButton;

    .line 293
    .line 294
    if-eqz v3, :cond_10

    .line 295
    .line 296
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    :cond_10
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;->getUid()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    if-eqz v3, :cond_11

    .line 308
    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .line 313
    .line 314
    const-string v4, "reset btn View holder "

    .line 315
    .line 316
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;->getName()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;->getUid()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .line 342
    .line 343
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->resetImageButton:Landroid/widget/ImageButton;

    .line 344
    .line 345
    if-eqz p1, :cond_11

    .line 346
    .line 347
    const/4 v1, 0x0

    .line 348
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 349
    .line 350
    .line 351
    :cond_11
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->saveImageButton:Landroid/widget/ImageButton;

    .line 352
    .line 353
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    .line 358
    .line 359
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->saveImageButton:Landroid/widget/ImageButton;

    .line 360
    .line 361
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    return-void
.end method

.method public final setButtonLayout(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->buttonLayout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-void
.end method

.method public final setCopyImageButton(Landroid/widget/ImageButton;)V
    .locals 0
    .param p1    # Landroid/widget/ImageButton;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->copyImageButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-void
.end method

.method public final setDeleteImageButton(Landroid/widget/ImageButton;)V
    .locals 0
    .param p1    # Landroid/widget/ImageButton;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->deleteImageButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-void
.end method

.method public final setDetailsImageButton(Landroid/widget/ImageButton;)V
    .locals 0
    .param p1    # Landroid/widget/ImageButton;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->detailsImageButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-void
.end method

.method public final setNameTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->nameTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-void
.end method

.method public final setRenameImageButton(Landroid/widget/ImageButton;)V
    .locals 0
    .param p1    # Landroid/widget/ImageButton;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->renameImageButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-void
.end method

.method public final setResetImageButton(Landroid/widget/ImageButton;)V
    .locals 0
    .param p1    # Landroid/widget/ImageButton;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->resetImageButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-void
.end method

.method public final setSaveImageButton(Landroid/widget/ImageButton;)V
    .locals 0
    .param p1    # Landroid/widget/ImageButton;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->saveImageButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-void
.end method

.method public final setSendImageButton(Landroid/widget/ImageButton;)V
    .locals 0
    .param p1    # Landroid/widget/ImageButton;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->sendImageButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-void
.end method

.method public final setTagCountTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->tagCountTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-void
.end method
