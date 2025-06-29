.class public abstract Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToOpenCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# instance fields
.field private final backgroundColor:I

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

.field private final openDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToOpenCallback;->pluginContext:Landroid/content/Context;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToOpenCallback;->mBackground:Landroid/graphics/drawable/ColorDrawable;

    .line 17
    .line 18
    const v0, -0xffff01

    .line 19
    .line 20
    .line 21
    iput v0, p0, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToOpenCallback;->backgroundColor:I

    .line 22
    .line 23
    new-instance v0, Landroid/graphics/Paint;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToOpenCallback;->mClearPaint:Landroid/graphics/Paint;

    .line 29
    .line 30
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 31
    .line 32
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 33
    .line 34
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 38
    .line 39
    .line 40
    sget v0, Lcom/atakmap/android/atos/plugin/R$drawable;->open_caret:I

    .line 41
    .line 42
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToOpenCallback;->openDrawable:Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput v0, p0, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToOpenCallback;->intrinsicWidth:I

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iput p1, p0, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToOpenCallback;->intrinsicHeight:I

    .line 62
    .line 63
    return-void
.end method

.method private final clearCanvas(Landroid/graphics/Canvas;FFFF)V
    .locals 6

    .line 1
    iget-object v5, p0, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToOpenCallback;->mClearPaint:Landroid/graphics/Paint;

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
    const/4 p2, 0x4

    .line 13
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final getPluginContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToOpenCallback;->pluginContext:Landroid/content/Context;

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

    const p1, 0x3e99999a    # 0.3f

    return p1
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 15
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
    move-object v6, p0

    .line 2
    move-object/from16 v7, p1

    .line 3
    .line 4
    move-object/from16 v8, p3

    .line 5
    .line 6
    move/from16 v9, p4

    .line 7
    .line 8
    const-string v0, "c"

    .line 9
    .line 10
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "recyclerView"

    .line 14
    .line 15
    move-object/from16 v10, p2

    .line 16
    .line 17
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "viewHolder"

    .line 21
    .line 22
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 26
    .line 27
    .line 28
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 29
    .line 30
    const-string v1, "itemView"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    cmpg-float v1, v9, v1

    .line 40
    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    if-nez p7, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    int-to-float v1, v1

    .line 50
    add-float v2, v1, v9

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    int-to-float v3, v1

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    int-to-float v4, v1

    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    int-to-float v5, v0

    .line 67
    move-object v0, p0

    .line 68
    move-object/from16 v1, p1

    .line 69
    .line 70
    invoke-direct/range {v0 .. v5}, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToOpenCallback;->clearCanvas(Landroid/graphics/Canvas;FFFF)V

    .line 71
    .line 72
    .line 73
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_0
    iget-object v1, v6, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToOpenCallback;->mBackground:Landroid/graphics/drawable/ColorDrawable;

    .line 78
    .line 79
    iget v2, v6, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToOpenCallback;->backgroundColor:I

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 82
    .line 83
    .line 84
    iget-object v1, v6, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToOpenCallback;->mBackground:Landroid/graphics/drawable/ColorDrawable;

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    float-to-int v3, v9

    .line 91
    add-int/2addr v2, v3

    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 105
    .line 106
    .line 107
    iget-object v1, v6, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToOpenCallback;->mBackground:Landroid/graphics/drawable/ColorDrawable;

    .line 108
    .line 109
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    int-to-double v1, v1

    .line 117
    const-wide v3, 0x3fc999999999999aL    # 0.2

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    mul-double/2addr v1, v3

    .line 123
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    int-to-double v3, v3

    .line 128
    const/4 v5, 0x2

    .line 129
    int-to-double v11, v5

    .line 130
    mul-double/2addr v11, v1

    .line 131
    sub-double/2addr v3, v11

    .line 132
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    int-to-double v11, v5

    .line 137
    add-double/2addr v11, v1

    .line 138
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    int-to-double v13, v5

    .line 143
    add-double/2addr v13, v1

    .line 144
    add-double/2addr v13, v3

    .line 145
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    int-to-double v8, v5

    .line 150
    sub-double/2addr v8, v1

    .line 151
    sub-double/2addr v8, v3

    .line 152
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    int-to-double v3, v0

    .line 157
    sub-double/2addr v3, v1

    .line 158
    iget-object v0, v6, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToOpenCallback;->openDrawable:Landroid/graphics/drawable/Drawable;

    .line 159
    .line 160
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    double-to-int v1, v8

    .line 164
    double-to-int v2, v11

    .line 165
    double-to-int v3, v3

    .line 166
    double-to-int v4, v13

    .line 167
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 168
    .line 169
    .line 170
    iget-object v0, v6, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToOpenCallback;->openDrawable:Landroid/graphics/drawable/Drawable;

    .line 171
    .line 172
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 173
    .line 174
    .line 175
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 176
    .line 177
    .line 178
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
