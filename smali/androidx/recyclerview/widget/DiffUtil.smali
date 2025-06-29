.class public Landroidx/recyclerview/widget/DiffUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;,
        Landroidx/recyclerview/widget/DiffUtil$DiffResult;,
        Landroidx/recyclerview/widget/DiffUtil$Range;,
        Landroidx/recyclerview/widget/DiffUtil$Snake;,
        Landroidx/recyclerview/widget/DiffUtil$ItemCallback;,
        Landroidx/recyclerview/widget/DiffUtil$Callback;
    }
.end annotation


# static fields
.field private static final SNAKE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/recyclerview/widget/DiffUtil$Snake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/recyclerview/widget/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 1
    .param p0    # Landroidx/recyclerview/widget/DiffUtil$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p0

    return-object p0
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 15
    .param p0    # Landroidx/recyclerview/widget/DiffUtil$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    move-result v1

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$Range;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v0, v5, v1}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int v3, v0, v1

    sub-int/2addr v0, v1

    .line 7
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v3, v0

    mul-int/lit8 v0, v3, 0x2

    .line 8
    new-array v1, v0, [I

    .line 9
    new-array v0, v0, [I

    .line 10
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 11
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 12
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 13
    iget v6, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iget v7, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v8, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iget v9, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    move-object v5, p0

    move-object v10, v1

    move-object v11, v0

    move v12, v3

    invoke-static/range {v5 .. v12}, Landroidx/recyclerview/widget/DiffUtil;->diffPartial(Landroidx/recyclerview/widget/DiffUtil$Callback;IIII[I[II)Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 14
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    if-lez v6, :cond_0

    .line 15
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_0
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v7, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    add-int/2addr v6, v7

    iput v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    .line 17
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iget v7, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    add-int/2addr v6, v7

    iput v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    .line 18
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Landroidx/recyclerview/widget/DiffUtil$Range;

    invoke-direct {v6}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>()V

    goto :goto_1

    .line 19
    :cond_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 20
    invoke-interface {v13, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 21
    :goto_1
    iget v7, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 22
    iget v7, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 23
    iget-boolean v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    if-eqz v7, :cond_2

    .line 24
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 25
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    goto :goto_2

    .line 26
    :cond_2
    iget-boolean v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    if-eqz v7, :cond_3

    .line 27
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 28
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    goto :goto_2

    .line 29
    :cond_3
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 30
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 31
    :goto_2
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-boolean v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    if-eqz v6, :cond_5

    .line 33
    iget-boolean v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    if-eqz v6, :cond_4

    .line 34
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    iput v6, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 35
    iget v5, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    add-int/2addr v5, v7

    iput v5, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    goto :goto_3

    .line 36
    :cond_4
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v6, v7

    iput v6, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 37
    iget v5, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x1

    iput v5, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    goto :goto_3

    .line 38
    :cond_5
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v6, v7

    iput v6, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 39
    iget v5, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    add-int/2addr v5, v7

    iput v5, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 40
    :goto_3
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 41
    :cond_6
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 42
    :cond_7
    sget-object v2, Landroidx/recyclerview/widget/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 43
    new-instance v8, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-object v2, v8

    move-object v3, p0

    move-object v5, v1

    move-object v6, v0

    move/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;-><init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[IZ)V

    return-object v8
.end method

.method private static diffPartial(Landroidx/recyclerview/widget/DiffUtil$Callback;IIII[I[II)Landroidx/recyclerview/widget/DiffUtil$Snake;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    sub-int v3, p2, p1

    .line 8
    .line 9
    sub-int v4, p4, p3

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    if-lt v3, v5, :cond_f

    .line 13
    .line 14
    if-ge v4, v5, :cond_0

    .line 15
    .line 16
    goto/16 :goto_a

    .line 17
    .line 18
    :cond_0
    sub-int v6, v3, v4

    .line 19
    .line 20
    add-int v7, v3, v4

    .line 21
    .line 22
    add-int/2addr v7, v5

    .line 23
    div-int/lit8 v7, v7, 0x2

    .line 24
    .line 25
    sub-int v8, p7, v7

    .line 26
    .line 27
    sub-int/2addr v8, v5

    .line 28
    add-int v9, p7, v7

    .line 29
    .line 30
    add-int/2addr v9, v5

    .line 31
    const/4 v10, 0x0

    .line 32
    invoke-static {v1, v8, v9, v10}, Ljava/util/Arrays;->fill([IIII)V

    .line 33
    .line 34
    .line 35
    add-int/2addr v8, v6

    .line 36
    add-int/2addr v9, v6

    .line 37
    invoke-static {v2, v8, v9, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 38
    .line 39
    .line 40
    rem-int/lit8 v8, v6, 0x2

    .line 41
    .line 42
    if-eqz v8, :cond_1

    .line 43
    .line 44
    move v8, v5

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v8, v10

    .line 47
    :goto_0
    move v9, v10

    .line 48
    :goto_1
    if-gt v9, v7, :cond_e

    .line 49
    .line 50
    neg-int v11, v9

    .line 51
    move v12, v11

    .line 52
    :goto_2
    if-gt v12, v9, :cond_6

    .line 53
    .line 54
    if-eq v12, v11, :cond_3

    .line 55
    .line 56
    if-eq v12, v9, :cond_2

    .line 57
    .line 58
    add-int v13, p7, v12

    .line 59
    .line 60
    add-int/lit8 v14, v13, -0x1

    .line 61
    .line 62
    aget v14, v1, v14

    .line 63
    .line 64
    add-int/2addr v13, v5

    .line 65
    aget v13, v1, v13

    .line 66
    .line 67
    if-ge v14, v13, :cond_2

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_2
    add-int v13, p7, v12

    .line 71
    .line 72
    sub-int/2addr v13, v5

    .line 73
    aget v13, v1, v13

    .line 74
    .line 75
    add-int/2addr v13, v5

    .line 76
    move v14, v5

    .line 77
    goto :goto_4

    .line 78
    :cond_3
    :goto_3
    add-int v13, p7, v12

    .line 79
    .line 80
    add-int/2addr v13, v5

    .line 81
    aget v13, v1, v13

    .line 82
    .line 83
    move v14, v10

    .line 84
    :goto_4
    sub-int v15, v13, v12

    .line 85
    .line 86
    :goto_5
    if-ge v13, v3, :cond_4

    .line 87
    .line 88
    if-ge v15, v4, :cond_4

    .line 89
    .line 90
    add-int v10, p1, v13

    .line 91
    .line 92
    add-int v5, p3, v15

    .line 93
    .line 94
    invoke-virtual {v0, v10, v5}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_4

    .line 99
    .line 100
    add-int/lit8 v13, v13, 0x1

    .line 101
    .line 102
    add-int/lit8 v15, v15, 0x1

    .line 103
    .line 104
    const/4 v5, 0x1

    .line 105
    const/4 v10, 0x0

    .line 106
    goto :goto_5

    .line 107
    :cond_4
    add-int v5, p7, v12

    .line 108
    .line 109
    aput v13, v1, v5

    .line 110
    .line 111
    if-eqz v8, :cond_5

    .line 112
    .line 113
    sub-int v10, v6, v9

    .line 114
    .line 115
    const/4 v15, 0x1

    .line 116
    add-int/2addr v10, v15

    .line 117
    if-lt v12, v10, :cond_5

    .line 118
    .line 119
    add-int v10, v6, v9

    .line 120
    .line 121
    sub-int/2addr v10, v15

    .line 122
    if-gt v12, v10, :cond_5

    .line 123
    .line 124
    aget v10, v2, v5

    .line 125
    .line 126
    if-lt v13, v10, :cond_5

    .line 127
    .line 128
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Snake;

    .line 129
    .line 130
    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    .line 131
    .line 132
    .line 133
    aget v2, v2, v5

    .line 134
    .line 135
    iput v2, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    .line 136
    .line 137
    sub-int v3, v2, v12

    .line 138
    .line 139
    iput v3, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    .line 140
    .line 141
    aget v1, v1, v5

    .line 142
    .line 143
    sub-int/2addr v1, v2

    .line 144
    iput v1, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    .line 145
    .line 146
    iput-boolean v14, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    .line 147
    .line 148
    const/4 v15, 0x0

    .line 149
    iput-boolean v15, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    .line 150
    .line 151
    return-object v0

    .line 152
    :cond_5
    const/4 v15, 0x0

    .line 153
    add-int/lit8 v12, v12, 0x2

    .line 154
    .line 155
    move v10, v15

    .line 156
    const/4 v5, 0x1

    .line 157
    goto :goto_2

    .line 158
    :cond_6
    move v15, v10

    .line 159
    move v5, v11

    .line 160
    :goto_6
    if-gt v5, v9, :cond_d

    .line 161
    .line 162
    add-int v10, v5, v6

    .line 163
    .line 164
    add-int v12, v9, v6

    .line 165
    .line 166
    if-eq v10, v12, :cond_9

    .line 167
    .line 168
    add-int v12, v11, v6

    .line 169
    .line 170
    if-eq v10, v12, :cond_7

    .line 171
    .line 172
    add-int v12, p7, v10

    .line 173
    .line 174
    add-int/lit8 v13, v12, -0x1

    .line 175
    .line 176
    aget v13, v2, v13

    .line 177
    .line 178
    const/4 v14, 0x1

    .line 179
    add-int/2addr v12, v14

    .line 180
    aget v12, v2, v12

    .line 181
    .line 182
    if-ge v13, v12, :cond_8

    .line 183
    .line 184
    goto :goto_7

    .line 185
    :cond_7
    const/4 v14, 0x1

    .line 186
    :cond_8
    add-int v12, p7, v10

    .line 187
    .line 188
    add-int/2addr v12, v14

    .line 189
    aget v12, v2, v12

    .line 190
    .line 191
    sub-int/2addr v12, v14

    .line 192
    move v13, v14

    .line 193
    goto :goto_8

    .line 194
    :cond_9
    const/4 v14, 0x1

    .line 195
    :goto_7
    add-int v12, p7, v10

    .line 196
    .line 197
    sub-int/2addr v12, v14

    .line 198
    aget v12, v2, v12

    .line 199
    .line 200
    move v13, v15

    .line 201
    :goto_8
    sub-int v16, v12, v10

    .line 202
    .line 203
    :goto_9
    if-lez v12, :cond_a

    .line 204
    .line 205
    if-lez v16, :cond_a

    .line 206
    .line 207
    add-int v17, p1, v12

    .line 208
    .line 209
    add-int/lit8 v15, v17, -0x1

    .line 210
    .line 211
    add-int v17, p3, v16

    .line 212
    .line 213
    move/from16 v18, v3

    .line 214
    .line 215
    add-int/lit8 v3, v17, -0x1

    .line 216
    .line 217
    invoke-virtual {v0, v15, v3}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    if-eqz v3, :cond_b

    .line 222
    .line 223
    add-int/lit8 v12, v12, -0x1

    .line 224
    .line 225
    add-int/lit8 v16, v16, -0x1

    .line 226
    .line 227
    move/from16 v3, v18

    .line 228
    .line 229
    const/4 v14, 0x1

    .line 230
    const/4 v15, 0x0

    .line 231
    goto :goto_9

    .line 232
    :cond_a
    move/from16 v18, v3

    .line 233
    .line 234
    :cond_b
    add-int v3, p7, v10

    .line 235
    .line 236
    aput v12, v2, v3

    .line 237
    .line 238
    if-nez v8, :cond_c

    .line 239
    .line 240
    if-lt v10, v11, :cond_c

    .line 241
    .line 242
    if-gt v10, v9, :cond_c

    .line 243
    .line 244
    aget v14, v1, v3

    .line 245
    .line 246
    if-lt v14, v12, :cond_c

    .line 247
    .line 248
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Snake;

    .line 249
    .line 250
    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    .line 251
    .line 252
    .line 253
    aget v2, v2, v3

    .line 254
    .line 255
    iput v2, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    .line 256
    .line 257
    sub-int v4, v2, v10

    .line 258
    .line 259
    iput v4, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    .line 260
    .line 261
    aget v1, v1, v3

    .line 262
    .line 263
    sub-int/2addr v1, v2

    .line 264
    iput v1, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    .line 265
    .line 266
    iput-boolean v13, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    .line 267
    .line 268
    const/4 v3, 0x1

    .line 269
    iput-boolean v3, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    .line 270
    .line 271
    return-object v0

    .line 272
    :cond_c
    const/4 v3, 0x1

    .line 273
    add-int/lit8 v5, v5, 0x2

    .line 274
    .line 275
    move/from16 v3, v18

    .line 276
    .line 277
    const/4 v15, 0x0

    .line 278
    goto :goto_6

    .line 279
    :cond_d
    move/from16 v18, v3

    .line 280
    .line 281
    const/4 v3, 0x1

    .line 282
    add-int/lit8 v9, v9, 0x1

    .line 283
    .line 284
    move v5, v3

    .line 285
    move/from16 v3, v18

    .line 286
    .line 287
    const/4 v10, 0x0

    .line 288
    goto/16 :goto_1

    .line 289
    .line 290
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 291
    .line 292
    const-string v1, "DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation."

    .line 293
    .line 294
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw v0

    .line 298
    :cond_f
    :goto_a
    const/4 v0, 0x0

    .line 299
    return-object v0
.end method
