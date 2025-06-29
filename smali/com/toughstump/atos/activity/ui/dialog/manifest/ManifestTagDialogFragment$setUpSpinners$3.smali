.class public final Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$3;
.super Lcom/toughstump/atos/activity/ui/spin/AtosItemSelectedListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->setUpSpinners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nManifestTagDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManifestTagDialogFragment.kt\ncom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,350:1\n1#2:351\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nManifestTagDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManifestTagDialogFragment.kt\ncom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,350:1\n1#2:351\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;


# direct methods
.method constructor <init>(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$3;->this$0:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/spin/AtosItemSelectedListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$3;->onItemSelected$lambda$1(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static final onItemSelected$lambda$1(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "null cannot be cast to non-null type java.lang.String"

    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "toUpperCase(...)"

    .line 38
    .line 39
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string v1, "substring(...)"

    .line 51
    .line 52
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    :cond_0
    return-object p0
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$3;->this$0:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;

    .line 7
    .line 8
    invoke-static {v3}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->access$getUserInteraction$p(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v3, v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$3;->this$0:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;

    .line 16
    .line 17
    invoke-static {v3, v2}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->access$setUserInteraction$p(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;Z)V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    move/from16 v4, p3

    .line 24
    .line 25
    invoke-virtual {v1, v4}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v1, v3

    .line 31
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const-string v5, "ManifestTagDialogFragment"

    .line 36
    .line 37
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    check-cast v1, Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 45
    .line 46
    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    const-string v1, "toLowerCase(...)"

    .line 51
    .line 52
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    if-eqz v6, :cond_2

    .line 56
    .line 57
    const/4 v10, 0x4

    .line 58
    const/4 v11, 0x0

    .line 59
    const/16 v7, 0x5f

    .line 60
    .line 61
    const/16 v8, 0x20

    .line 62
    .line 63
    const/4 v9, 0x0

    .line 64
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v12

    .line 68
    if-eqz v12, :cond_2

    .line 69
    .line 70
    const/4 v1, 0x1

    .line 71
    new-array v13, v1, [C

    .line 72
    .line 73
    const/16 v1, 0x20

    .line 74
    .line 75
    aput-char v1, v13, v2

    .line 76
    .line 77
    const/16 v16, 0x6

    .line 78
    .line 79
    const/16 v17, 0x0

    .line 80
    .line 81
    const/4 v14, 0x0

    .line 82
    const/4 v15, 0x0

    .line 83
    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v18

    .line 87
    if-eqz v18, :cond_2

    .line 88
    .line 89
    new-instance v24, Latakplugin/atos/n1;

    .line 90
    .line 91
    invoke-direct/range {v24 .. v24}, Latakplugin/atos/n1;-><init>()V

    .line 92
    .line 93
    .line 94
    const/16 v25, 0x1e

    .line 95
    .line 96
    const/16 v26, 0x0

    .line 97
    .line 98
    const-string v19, " "

    .line 99
    .line 100
    const/16 v20, 0x0

    .line 101
    .line 102
    const/16 v21, 0x0

    .line 103
    .line 104
    const/16 v22, 0x0

    .line 105
    .line 106
    const/16 v23, 0x0

    .line 107
    .line 108
    invoke-static/range {v18 .. v26}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    sget-object v1, Lcom/toughstump/atos/AtosColor;->Companion:Lcom/toughstump/atos/AtosColor$Companion;

    .line 119
    .line 120
    invoke-virtual {v1, v3}, Lcom/toughstump/atos/AtosColor$Companion;->get(Ljava/lang/String;)Lcom/toughstump/atos/AtosColor;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    iget-object v1, v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$3;->this$0:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;

    .line 132
    .line 133
    invoke-static {v1}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->access$getManifestTag$p(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getColor()Lcom/toughstump/atos/AtosColor;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    if-ne v10, v1, :cond_3

    .line 142
    .line 143
    return-void

    .line 144
    :cond_3
    iget-object v1, v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$3;->this$0:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;

    .line 145
    .line 146
    invoke-static {v1}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->access$getManifestTag$p(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    const/16 v12, 0x17

    .line 151
    .line 152
    const/4 v13, 0x0

    .line 153
    const/4 v7, 0x0

    .line 154
    const/4 v8, 0x0

    .line 155
    const/4 v9, 0x0

    .line 156
    const/4 v11, 0x0

    .line 157
    invoke-static/range {v6 .. v13}, Lcom/toughstump/atos/manifest/AtosManifestTag;->copy$default(Lcom/toughstump/atos/manifest/AtosManifestTag;ILjava/lang/String;Lcom/toughstump/atos/AtosTrackType;Lcom/toughstump/atos/AtosColor;Ljava/util/Map;ILjava/lang/Object;)Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-static {v1, v2}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->access$setManifestTag$p(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;Lcom/toughstump/atos/manifest/AtosManifestTag;)V

    .line 162
    .line 163
    .line 164
    iget-object v1, v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$3;->this$0:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;

    .line 165
    .line 166
    invoke-static {v1}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->access$updateColorButtonText(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)V

    .line 167
    .line 168
    .line 169
    return-void
.end method
