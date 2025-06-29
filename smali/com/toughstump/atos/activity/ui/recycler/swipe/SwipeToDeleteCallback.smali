.class public abstract Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToDeleteCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# instance fields
.field private final backgroundColor:I

.field private final deleteDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final intrinsicHeight:I

.field private final intrinsicWidth:I

.field private final mBackground:Landroid/graphics/drawable/ColorDrawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mClearPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pluginContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
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
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToDeleteCallback;->pluginContext:Landroid/content/Context;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToDeleteCallback;->mBackground:Landroid/graphics/drawable/ColorDrawable;

    .line 17
    .line 18
    const/high16 v0, -0x10000

    .line 19
    .line 20
    iput v0, p0, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToDeleteCallback;->backgroundColor:I

    .line 21
    .line 22
    new-instance v0, Landroid/graphics/Paint;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToDeleteCallback;->mClearPaint:Landroid/graphics/Paint;

    .line 28
    .line 29
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 30
    .line 31
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 32
    .line 33
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 37
    .line 38
    .line 39
    sget v0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_delete:I

    .line 40
    .line 41
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToDeleteCallback;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iput v0, p0, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToDeleteCallback;->intrinsicWidth:I

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iput p1, p0, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToDeleteCallback;->intrinsicHeight:I

    .line 61
    .line 62
    return-void
.end method

.method private final clearCanvas(Landroid/graphics/Canvas;FFFF)V
    .locals 6

    .line 1
    iget-object v5, p0, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToDeleteCallback;->mClearPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    move-object v0, p1

    .line 4
    move v1, p2

    .line 5
    move v2, p3

    .line 6
    move v3, p4

    .line 7
    move v4, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "viewHolder"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    const/16 p2, 0x8

    .line 13
    .line 14
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public final getPluginContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToDeleteCallback;->pluginContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x3f333333    # 0.7f

    return p1
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 17
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p3

    .line 6
    .line 7
    move/from16 v9, p4

    .line 8
    .line 9
    const-string v0, "c"

    .line 10
    .line 11
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "recyclerView"

    .line 15
    .line 16
    move-object/from16 v10, p2

    .line 17
    .line 18
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "viewHolder"

    .line 22
    .line 23
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 27
    .line 28
    .line 29
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 30
    .line 31
    const-string v1, "itemView"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    cmpg-float v1, v9, v1

    .line 41
    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    if-nez p7, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    int-to-float v1, v1

    .line 51
    add-float v2, v1, v9

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    int-to-float v3, v1

    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    int-to-float v4, v1

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    int-to-float v5, v0

    .line 68
    move-object/from16 v0, p0

    .line 69
    .line 70
    move-object/from16 v1, p1

    .line 71
    .line 72
    invoke-direct/range {v0 .. v5}, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToDeleteCallback;->clearCanvas(Landroid/graphics/Canvas;FFFF)V

    .line 73
    .line 74
    .line 75
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_0
    iget-object v1, v6, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToDeleteCallback;->mBackground:Landroid/graphics/drawable/ColorDrawable;

    .line 80
    .line 81
    iget v2, v6, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToDeleteCallback;->backgroundColor:I

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v6, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToDeleteCallback;->mBackground:Landroid/graphics/drawable/ColorDrawable;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    float-to-int v5, v9

    .line 101
    add-int/2addr v4, v5

    .line 102
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 107
    .line 108
    .line 109
    iget-object v1, v6, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToDeleteCallback;->mBackground:Landroid/graphics/drawable/ColorDrawable;

    .line 110
    .line 111
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    int-to-double v1, v1

    .line 119
    const-wide v3, 0x3fc999999999999aL    # 0.2

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    mul-double/2addr v1, v3

    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    int-to-double v3, v3

    .line 130
    const/4 v5, 0x2

    .line 131
    int-to-double v11, v5

    .line 132
    mul-double/2addr v11, v1

    .line 133
    sub-double/2addr v3, v11

    .line 134
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    int-to-double v11, v5

    .line 139
    add-double/2addr v11, v1

    .line 140
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    int-to-double v13, v5

    .line 145
    add-double/2addr v13, v1

    .line 146
    add-double/2addr v13, v3

    .line 147
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    int-to-double v8, v5

    .line 152
    add-double/2addr v8, v1

    .line 153
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    move-wide v15, v13

    .line 158
    int-to-double v13, v0

    .line 159
    add-double/2addr v13, v1

    .line 160
    add-double/2addr v13, v3

    .line 161
    iget-object v0, v6, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToDeleteCallback;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 162
    .line 163
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    double-to-int v1, v8

    .line 167
    double-to-int v2, v11

    .line 168
    double-to-int v3, v13

    .line 169
    move-wide v13, v15

    .line 170
    double-to-int v4, v13

    .line 171
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 172
    .line 173
    .line 174
    iget-object v0, v6, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToDeleteCallback;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 175
    .line 176
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 177
    .line 178
    .line 179
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 180
    .line 181
    .line 182
    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "viewHolder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "viewHolder1"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
