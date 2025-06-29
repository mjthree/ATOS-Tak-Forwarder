.class public final Latak/core/En;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtf8.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utf8.kt\nokio/Utf8\n+ 2 -Util.kt\nokio/-Util\n*L\n1#1,546:1\n390#1,9:549\n124#1:558\n399#1,18:560\n431#1,4:579\n124#1:583\n437#1,10:585\n124#1:595\n447#1,5:597\n124#1:602\n452#1,22:604\n489#1,4:627\n124#1:631\n495#1,2:633\n124#1:635\n499#1,10:637\n124#1:647\n509#1,5:649\n124#1:654\n514#1,5:656\n124#1:661\n519#1,26:663\n390#1,9:690\n124#1:699\n399#1,18:701\n431#1,4:720\n124#1:724\n437#1,10:726\n124#1:736\n447#1,5:738\n124#1:743\n452#1,22:745\n489#1,4:768\n124#1:772\n495#1,2:774\n124#1:776\n499#1,10:778\n124#1:788\n509#1,5:790\n124#1:795\n514#1,5:797\n124#1:802\n519#1,26:804\n124#1:830\n124#1:832\n124#1:834\n124#1:836\n124#1:838\n124#1:840\n124#1:842\n124#1:844\n124#1:846\n63#2:547\n57#2:548\n63#2:559\n57#2:578\n63#2:584\n63#2:596\n63#2:603\n57#2:626\n63#2:632\n63#2:636\n63#2:648\n63#2:655\n63#2:662\n57#2:689\n63#2:700\n57#2:719\n63#2:725\n63#2:737\n63#2:744\n57#2:767\n63#2:773\n63#2:777\n63#2:789\n63#2:796\n63#2:803\n63#2:831\n63#2:833\n63#2:835\n63#2:837\n63#2:839\n63#2:841\n63#2:843\n63#2:845\n63#2:847\n*E\n*S KotlinDebug\n*F\n+ 1 Utf8.kt\nokio/Utf8\n*L\n222#1,9:549\n222#1:558\n222#1,18:560\n226#1,4:579\n226#1:583\n226#1,10:585\n226#1:595\n226#1,5:597\n226#1:602\n226#1,22:604\n230#1,4:627\n230#1:631\n230#1,2:633\n230#1:635\n230#1,10:637\n230#1:647\n230#1,5:649\n230#1:654\n230#1,5:656\n230#1:661\n230#1,26:663\n270#1,9:690\n270#1:699\n270#1,18:701\n274#1,4:720\n274#1:724\n274#1,10:726\n274#1:736\n274#1,5:738\n274#1:743\n274#1,22:745\n278#1,4:768\n278#1:772\n278#1,2:774\n278#1:776\n278#1,10:778\n278#1:788\n278#1,5:790\n278#1:795\n278#1,5:797\n278#1:802\n278#1,26:804\n398#1:830\n434#1:832\n446#1:834\n451#1:836\n492#1:838\n496#1:840\n508#1:842\n513#1:844\n518#1:846\n124#1:547\n220#1:548\n222#1:559\n224#1:578\n226#1:584\n226#1:596\n226#1:603\n228#1:626\n230#1:632\n230#1:636\n230#1:648\n230#1:655\n230#1:662\n268#1:689\n270#1:700\n272#1:719\n274#1:725\n274#1:737\n274#1:744\n276#1:767\n278#1:773\n278#1:777\n278#1:789\n278#1:796\n278#1:803\n398#1:831\n434#1:833\n446#1:835\n451#1:837\n492#1:839\n496#1:841\n508#1:843\n513#1:845\n518#1:847\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "Utf8"
.end annotation


# static fields
.field public static final a:B = 0x3ft

.field public static final b:C = '\ufffd'

.field public static final c:I = 0xfffd

.field public static final d:I = 0xd7c0

.field public static final e:I = 0xdc00

.field public static final f:I = 0xf80

.field public static final g:I = -0x1e080

.field public static final h:I = 0x381f80


# direct methods
.method public static final a(I)Z
    .locals 1

    .line 1
    if-ltz p0, :cond_0

    const/16 v0, 0x1f

    if-ge v0, p0, :cond_2

    :cond_0
    const/16 v0, 0x7f

    if-le v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x9f

    if-lt v0, p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final b(B)Z
    .locals 1

    .line 1
    and-int/lit16 p0, p0, 0xc0

    const/16 v0, 0x80

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final c([BIILkotlin/jvm/functions/Function1;)I
    .locals 3
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    .line 1
    const-string v0, "$receiver"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "yield"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    add-int/lit8 v0, p1, 0x1

    .line 12
    .line 13
    const v1, 0xfffd

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    if-gt p2, v0, :cond_0

    .line 22
    .line 23
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return v2

    .line 27
    :cond_0
    aget-byte p1, p0, p1

    .line 28
    .line 29
    aget-byte p0, p0, v0

    .line 30
    .line 31
    and-int/lit16 p2, p0, 0xc0

    .line 32
    .line 33
    const/16 v0, 0x80

    .line 34
    .line 35
    if-ne p2, v0, :cond_2

    .line 36
    .line 37
    xor-int/lit16 p0, p0, 0xf80

    .line 38
    .line 39
    shl-int/lit8 p1, p1, 0x6

    .line 40
    .line 41
    xor-int/2addr p0, p1

    .line 42
    if-ge p0, v0, :cond_1

    .line 43
    .line 44
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :goto_0
    const/4 p0, 0x2

    .line 56
    return p0

    .line 57
    :cond_2
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    return v2
.end method

.method public static final d([BIILkotlin/jvm/functions/Function1;)I
    .locals 6
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    .line 1
    const-string v0, "$receiver"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "yield"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    add-int/lit8 v0, p1, 0x2

    .line 12
    .line 13
    const/16 v1, 0x80

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const v3, 0xfffd

    .line 17
    .line 18
    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v4, 0x2

    .line 24
    if-gt p2, v0, :cond_1

    .line 25
    .line 26
    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    add-int/2addr p1, v2

    .line 30
    if-le p2, p1, :cond_0

    .line 31
    .line 32
    aget-byte p0, p0, p1

    .line 33
    .line 34
    and-int/lit16 p0, p0, 0xc0

    .line 35
    .line 36
    if-ne p0, v1, :cond_0

    .line 37
    .line 38
    return v4

    .line 39
    :cond_0
    return v2

    .line 40
    :cond_1
    aget-byte p2, p0, p1

    .line 41
    .line 42
    add-int/2addr p1, v2

    .line 43
    aget-byte p1, p0, p1

    .line 44
    .line 45
    and-int/lit16 v5, p1, 0xc0

    .line 46
    .line 47
    if-ne v5, v1, :cond_6

    .line 48
    .line 49
    aget-byte p0, p0, v0

    .line 50
    .line 51
    and-int/lit16 v0, p0, 0xc0

    .line 52
    .line 53
    if-ne v0, v1, :cond_5

    .line 54
    .line 55
    const v0, -0x1e080

    .line 56
    .line 57
    .line 58
    xor-int/2addr p0, v0

    .line 59
    shl-int/lit8 p1, p1, 0x6

    .line 60
    .line 61
    xor-int/2addr p0, p1

    .line 62
    shl-int/lit8 p1, p2, 0xc

    .line 63
    .line 64
    xor-int/2addr p0, p1

    .line 65
    const/16 p1, 0x800

    .line 66
    .line 67
    if-ge p0, p1, :cond_2

    .line 68
    .line 69
    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const p1, 0xd800

    .line 74
    .line 75
    .line 76
    if-le p1, p0, :cond_3

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    const p1, 0xdfff

    .line 80
    .line 81
    .line 82
    if-lt p1, p0, :cond_4

    .line 83
    .line 84
    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    :goto_1
    const/4 p0, 0x3

    .line 96
    return p0

    .line 97
    :cond_5
    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    return v4

    .line 101
    :cond_6
    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    return v2
.end method

.method public static final e([BIILkotlin/jvm/functions/Function1;)I
    .locals 8
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    .line 1
    const-string v0, "$receiver"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "yield"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    add-int/lit8 v0, p1, 0x3

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    const/4 v2, 0x1

    .line 15
    const/16 v3, 0x80

    .line 16
    .line 17
    const v4, 0xfffd

    .line 18
    .line 19
    .line 20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const/4 v5, 0x3

    .line 25
    if-gt p2, v0, :cond_2

    .line 26
    .line 27
    invoke-interface {p3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    add-int/lit8 p3, p1, 0x1

    .line 31
    .line 32
    if-le p2, p3, :cond_1

    .line 33
    .line 34
    aget-byte p3, p0, p3

    .line 35
    .line 36
    and-int/lit16 p3, p3, 0xc0

    .line 37
    .line 38
    if-ne p3, v3, :cond_1

    .line 39
    .line 40
    add-int/2addr p1, v1

    .line 41
    if-le p2, p1, :cond_0

    .line 42
    .line 43
    aget-byte p0, p0, p1

    .line 44
    .line 45
    and-int/lit16 p0, p0, 0xc0

    .line 46
    .line 47
    if-ne p0, v3, :cond_0

    .line 48
    .line 49
    return v5

    .line 50
    :cond_0
    return v1

    .line 51
    :cond_1
    return v2

    .line 52
    :cond_2
    aget-byte p2, p0, p1

    .line 53
    .line 54
    add-int/lit8 v6, p1, 0x1

    .line 55
    .line 56
    aget-byte v6, p0, v6

    .line 57
    .line 58
    and-int/lit16 v7, v6, 0xc0

    .line 59
    .line 60
    if-ne v7, v3, :cond_9

    .line 61
    .line 62
    add-int/2addr p1, v1

    .line 63
    aget-byte p1, p0, p1

    .line 64
    .line 65
    and-int/lit16 v2, p1, 0xc0

    .line 66
    .line 67
    if-ne v2, v3, :cond_8

    .line 68
    .line 69
    aget-byte p0, p0, v0

    .line 70
    .line 71
    and-int/lit16 v0, p0, 0xc0

    .line 72
    .line 73
    if-ne v0, v3, :cond_7

    .line 74
    .line 75
    const v0, 0x381f80

    .line 76
    .line 77
    .line 78
    xor-int/2addr p0, v0

    .line 79
    shl-int/lit8 p1, p1, 0x6

    .line 80
    .line 81
    xor-int/2addr p0, p1

    .line 82
    shl-int/lit8 p1, v6, 0xc

    .line 83
    .line 84
    xor-int/2addr p0, p1

    .line 85
    shl-int/lit8 p1, p2, 0x12

    .line 86
    .line 87
    xor-int/2addr p0, p1

    .line 88
    const p1, 0x10ffff

    .line 89
    .line 90
    .line 91
    if-le p0, p1, :cond_3

    .line 92
    .line 93
    invoke-interface {p3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    const p1, 0xd800

    .line 98
    .line 99
    .line 100
    if-le p1, p0, :cond_4

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    const p1, 0xdfff

    .line 104
    .line 105
    .line 106
    if-lt p1, p0, :cond_5

    .line 107
    .line 108
    invoke-interface {p3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    :goto_0
    const/high16 p1, 0x10000

    .line 113
    .line 114
    if-ge p0, p1, :cond_6

    .line 115
    .line 116
    invoke-interface {p3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    :goto_1
    const/4 p0, 0x4

    .line 128
    return p0

    .line 129
    :cond_7
    invoke-interface {p3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    return v5

    .line 133
    :cond_8
    invoke-interface {p3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    return v1

    .line 137
    :cond_9
    invoke-interface {p3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    return v2
.end method

.method public static final f([BIILkotlin/jvm/functions/Function1;)V
    .locals 11
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Character;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "$receiver"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "yield"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    if-ge p1, p2, :cond_19

    .line 12
    .line 13
    aget-byte v0, p0, p1

    .line 14
    .line 15
    if-ltz v0, :cond_1

    .line 16
    .line 17
    int-to-char v0, v0

    .line 18
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    add-int/lit8 p1, p1, 0x1

    .line 26
    .line 27
    :goto_1
    if-ge p1, p2, :cond_0

    .line 28
    .line 29
    aget-byte v0, p0, p1

    .line 30
    .line 31
    if-ltz v0, :cond_0

    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    int-to-char v0, v0

    .line 36
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    shr-int/lit8 v1, v0, 0x5

    .line 45
    .line 46
    const/4 v2, -0x2

    .line 47
    const/4 v3, 0x2

    .line 48
    const/16 v4, 0x80

    .line 49
    .line 50
    const/4 v5, 0x1

    .line 51
    const v6, 0xfffd

    .line 52
    .line 53
    .line 54
    if-ne v1, v2, :cond_7

    .line 55
    .line 56
    add-int/lit8 v1, p1, 0x1

    .line 57
    .line 58
    if-gt p2, v1, :cond_4

    .line 59
    .line 60
    :cond_2
    int-to-char v0, v6

    .line 61
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_2
    move v3, v5

    .line 69
    goto :goto_4

    .line 70
    :cond_4
    aget-byte v1, p0, v1

    .line 71
    .line 72
    and-int/lit16 v2, v1, 0xc0

    .line 73
    .line 74
    if-ne v2, v4, :cond_2

    .line 75
    .line 76
    xor-int/lit16 v1, v1, 0xf80

    .line 77
    .line 78
    shl-int/lit8 v0, v0, 0x6

    .line 79
    .line 80
    xor-int/2addr v0, v1

    .line 81
    if-ge v0, v4, :cond_5

    .line 82
    .line 83
    int-to-char v0, v6

    .line 84
    :goto_3
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_5
    int-to-char v0, v0

    .line 93
    goto :goto_3

    .line 94
    :cond_6
    :goto_4
    add-int/2addr p1, v3

    .line 95
    goto :goto_0

    .line 96
    :cond_7
    shr-int/lit8 v1, v0, 0x4

    .line 97
    .line 98
    const v7, 0xd800

    .line 99
    .line 100
    .line 101
    const v8, 0xdfff

    .line 102
    .line 103
    .line 104
    const/4 v9, 0x3

    .line 105
    if-ne v1, v2, :cond_e

    .line 106
    .line 107
    add-int/lit8 v1, p1, 0x2

    .line 108
    .line 109
    if-gt p2, v1, :cond_8

    .line 110
    .line 111
    int-to-char v0, v6

    .line 112
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    add-int/lit8 v0, p1, 0x1

    .line 120
    .line 121
    if-le p2, v0, :cond_3

    .line 122
    .line 123
    aget-byte v0, p0, v0

    .line 124
    .line 125
    and-int/lit16 v0, v0, 0xc0

    .line 126
    .line 127
    if-ne v0, v4, :cond_3

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_8
    add-int/lit8 v2, p1, 0x1

    .line 131
    .line 132
    aget-byte v2, p0, v2

    .line 133
    .line 134
    and-int/lit16 v10, v2, 0xc0

    .line 135
    .line 136
    if-ne v10, v4, :cond_d

    .line 137
    .line 138
    aget-byte v1, p0, v1

    .line 139
    .line 140
    and-int/lit16 v5, v1, 0xc0

    .line 141
    .line 142
    if-ne v5, v4, :cond_c

    .line 143
    .line 144
    const v3, -0x1e080

    .line 145
    .line 146
    .line 147
    xor-int/2addr v1, v3

    .line 148
    shl-int/lit8 v2, v2, 0x6

    .line 149
    .line 150
    xor-int/2addr v1, v2

    .line 151
    shl-int/lit8 v0, v0, 0xc

    .line 152
    .line 153
    xor-int/2addr v0, v1

    .line 154
    const/16 v1, 0x800

    .line 155
    .line 156
    if-ge v0, v1, :cond_9

    .line 157
    .line 158
    :goto_5
    int-to-char v0, v6

    .line 159
    :goto_6
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    goto :goto_8

    .line 167
    :cond_9
    if-le v7, v0, :cond_a

    .line 168
    .line 169
    goto :goto_7

    .line 170
    :cond_a
    if-lt v8, v0, :cond_b

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_b
    :goto_7
    int-to-char v0, v0

    .line 174
    goto :goto_6

    .line 175
    :goto_8
    move v3, v9

    .line 176
    goto :goto_4

    .line 177
    :cond_c
    int-to-char v0, v6

    .line 178
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_d
    int-to-char v0, v6

    .line 187
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_e
    shr-int/lit8 v1, v0, 0x3

    .line 196
    .line 197
    if-ne v1, v2, :cond_18

    .line 198
    .line 199
    add-int/lit8 v1, p1, 0x3

    .line 200
    .line 201
    if-gt p2, v1, :cond_f

    .line 202
    .line 203
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    add-int/lit8 v0, p1, 0x1

    .line 211
    .line 212
    if-le p2, v0, :cond_3

    .line 213
    .line 214
    aget-byte v0, p0, v0

    .line 215
    .line 216
    and-int/lit16 v0, v0, 0xc0

    .line 217
    .line 218
    if-ne v0, v4, :cond_3

    .line 219
    .line 220
    add-int/lit8 v0, p1, 0x2

    .line 221
    .line 222
    if-le p2, v0, :cond_6

    .line 223
    .line 224
    aget-byte v0, p0, v0

    .line 225
    .line 226
    and-int/lit16 v0, v0, 0xc0

    .line 227
    .line 228
    if-ne v0, v4, :cond_6

    .line 229
    .line 230
    :goto_9
    goto :goto_8

    .line 231
    :cond_f
    add-int/lit8 v2, p1, 0x1

    .line 232
    .line 233
    aget-byte v2, p0, v2

    .line 234
    .line 235
    and-int/lit16 v10, v2, 0xc0

    .line 236
    .line 237
    if-ne v10, v4, :cond_17

    .line 238
    .line 239
    add-int/lit8 v5, p1, 0x2

    .line 240
    .line 241
    aget-byte v5, p0, v5

    .line 242
    .line 243
    and-int/lit16 v10, v5, 0xc0

    .line 244
    .line 245
    if-ne v10, v4, :cond_16

    .line 246
    .line 247
    aget-byte v1, p0, v1

    .line 248
    .line 249
    and-int/lit16 v3, v1, 0xc0

    .line 250
    .line 251
    if-ne v3, v4, :cond_15

    .line 252
    .line 253
    const v3, 0x381f80

    .line 254
    .line 255
    .line 256
    xor-int/2addr v1, v3

    .line 257
    shl-int/lit8 v3, v5, 0x6

    .line 258
    .line 259
    xor-int/2addr v1, v3

    .line 260
    shl-int/lit8 v2, v2, 0xc

    .line 261
    .line 262
    xor-int/2addr v1, v2

    .line 263
    shl-int/lit8 v0, v0, 0x12

    .line 264
    .line 265
    xor-int/2addr v0, v1

    .line 266
    const v1, 0x10ffff

    .line 267
    .line 268
    .line 269
    if-le v0, v1, :cond_11

    .line 270
    .line 271
    :cond_10
    :goto_a
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    goto :goto_c

    .line 279
    :cond_11
    if-le v7, v0, :cond_12

    .line 280
    .line 281
    goto :goto_b

    .line 282
    :cond_12
    if-lt v8, v0, :cond_13

    .line 283
    .line 284
    goto :goto_a

    .line 285
    :cond_13
    :goto_b
    const/high16 v1, 0x10000

    .line 286
    .line 287
    if-ge v0, v1, :cond_14

    .line 288
    .line 289
    goto :goto_a

    .line 290
    :cond_14
    if-eq v0, v6, :cond_10

    .line 291
    .line 292
    ushr-int/lit8 v1, v0, 0xa

    .line 293
    .line 294
    const v2, 0xd7c0

    .line 295
    .line 296
    .line 297
    add-int/2addr v1, v2

    .line 298
    int-to-char v1, v1

    .line 299
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    and-int/lit16 v0, v0, 0x3ff

    .line 307
    .line 308
    const v1, 0xdc00

    .line 309
    .line 310
    .line 311
    add-int/2addr v0, v1

    .line 312
    int-to-char v0, v0

    .line 313
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    :goto_c
    const/4 v3, 0x4

    .line 321
    goto/16 :goto_4

    .line 322
    .line 323
    :cond_15
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    goto :goto_9

    .line 331
    :cond_16
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    goto/16 :goto_4

    .line 339
    .line 340
    :cond_17
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    goto/16 :goto_2

    .line 348
    .line 349
    :cond_18
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    add-int/lit8 p1, p1, 0x1

    .line 357
    .line 358
    goto/16 :goto_0

    .line 359
    .line 360
    :cond_19
    return-void
.end method

.method public static final g(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Byte;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "$receiver"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "yield"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    if-ge p1, p2, :cond_7

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x80

    .line 18
    .line 19
    if-ge v0, v1, :cond_1

    .line 20
    .line 21
    int-to-byte v0, v0

    .line 22
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    add-int/lit8 p1, p1, 0x1

    .line 30
    .line 31
    :goto_1
    if-ge p1, p2, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-ge v0, v1, :cond_0

    .line 38
    .line 39
    add-int/lit8 v0, p1, 0x1

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    int-to-byte p1, p1

    .line 46
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move p1, v0

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/16 v2, 0x800

    .line 56
    .line 57
    if-ge v0, v2, :cond_2

    .line 58
    .line 59
    shr-int/lit8 v2, v0, 0x6

    .line 60
    .line 61
    or-int/lit16 v2, v2, 0xc0

    .line 62
    .line 63
    int-to-byte v2, v2

    .line 64
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    and-int/lit8 v0, v0, 0x3f

    .line 72
    .line 73
    or-int/2addr v0, v1

    .line 74
    int-to-byte v0, v0

    .line 75
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    const v2, 0xd800

    .line 86
    .line 87
    .line 88
    const/16 v3, 0x3f

    .line 89
    .line 90
    if-gt v2, v0, :cond_6

    .line 91
    .line 92
    const v2, 0xdfff

    .line 93
    .line 94
    .line 95
    if-ge v2, v0, :cond_3

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_3
    const v4, 0xdbff

    .line 99
    .line 100
    .line 101
    if-gt v0, v4, :cond_5

    .line 102
    .line 103
    add-int/lit8 v4, p1, 0x1

    .line 104
    .line 105
    if-le p2, v4, :cond_5

    .line 106
    .line 107
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    const v6, 0xdc00

    .line 112
    .line 113
    .line 114
    if-gt v6, v5, :cond_5

    .line 115
    .line 116
    if-ge v2, v5, :cond_4

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_4
    shl-int/lit8 v0, v0, 0xa

    .line 120
    .line 121
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    add-int/2addr v0, v2

    .line 126
    const v2, -0x35fdc00

    .line 127
    .line 128
    .line 129
    add-int/2addr v0, v2

    .line 130
    shr-int/lit8 v2, v0, 0x12

    .line 131
    .line 132
    or-int/lit16 v2, v2, 0xf0

    .line 133
    .line 134
    int-to-byte v2, v2

    .line 135
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    shr-int/lit8 v2, v0, 0xc

    .line 143
    .line 144
    and-int/2addr v2, v3

    .line 145
    or-int/2addr v2, v1

    .line 146
    int-to-byte v2, v2

    .line 147
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    shr-int/lit8 v2, v0, 0x6

    .line 155
    .line 156
    and-int/2addr v2, v3

    .line 157
    or-int/2addr v2, v1

    .line 158
    int-to-byte v2, v2

    .line 159
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    and-int/2addr v0, v3

    .line 167
    or-int/2addr v0, v1

    .line 168
    int-to-byte v0, v0

    .line 169
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    add-int/lit8 p1, p1, 0x2

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_5
    :goto_3
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_6
    :goto_4
    shr-int/lit8 v2, v0, 0xc

    .line 189
    .line 190
    or-int/lit16 v2, v2, 0xe0

    .line 191
    .line 192
    int-to-byte v2, v2

    .line 193
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    shr-int/lit8 v2, v0, 0x6

    .line 201
    .line 202
    and-int/2addr v2, v3

    .line 203
    or-int/2addr v2, v1

    .line 204
    int-to-byte v2, v2

    .line 205
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    and-int/lit8 v0, v0, 0x3f

    .line 213
    .line 214
    or-int/2addr v0, v1

    .line 215
    int-to-byte v0, v0

    .line 216
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    goto/16 :goto_2

    .line 224
    .line 225
    :cond_7
    return-void
.end method

.method public static final h([BIILkotlin/jvm/functions/Function1;)V
    .locals 11
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "$receiver"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "yield"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    if-ge p1, p2, :cond_18

    .line 12
    .line 13
    aget-byte v0, p0, p1

    .line 14
    .line 15
    if-ltz v0, :cond_1

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    add-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    :goto_1
    if-ge p1, p2, :cond_0

    .line 27
    .line 28
    aget-byte v0, p0, p1

    .line 29
    .line 30
    if-ltz v0, :cond_0

    .line 31
    .line 32
    add-int/lit8 p1, p1, 0x1

    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    shr-int/lit8 v1, v0, 0x5

    .line 43
    .line 44
    const/4 v2, -0x2

    .line 45
    const/4 v3, 0x2

    .line 46
    const/16 v4, 0x80

    .line 47
    .line 48
    const/4 v5, 0x1

    .line 49
    const v6, 0xfffd

    .line 50
    .line 51
    .line 52
    if-ne v1, v2, :cond_7

    .line 53
    .line 54
    add-int/lit8 v1, p1, 0x1

    .line 55
    .line 56
    if-gt p2, v1, :cond_4

    .line 57
    .line 58
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_3
    :goto_2
    move v3, v5

    .line 66
    goto :goto_4

    .line 67
    :cond_4
    aget-byte v1, p0, v1

    .line 68
    .line 69
    and-int/lit16 v2, v1, 0xc0

    .line 70
    .line 71
    if-ne v2, v4, :cond_2

    .line 72
    .line 73
    xor-int/lit16 v1, v1, 0xf80

    .line 74
    .line 75
    shl-int/lit8 v0, v0, 0x6

    .line 76
    .line 77
    xor-int/2addr v0, v1

    .line 78
    if-ge v0, v4, :cond_5

    .line 79
    .line 80
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :goto_3
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    goto :goto_3

    .line 93
    :cond_6
    :goto_4
    add-int/2addr p1, v3

    .line 94
    goto :goto_0

    .line 95
    :cond_7
    shr-int/lit8 v1, v0, 0x4

    .line 96
    .line 97
    const v7, 0xd800

    .line 98
    .line 99
    .line 100
    const v8, 0xdfff

    .line 101
    .line 102
    .line 103
    const/4 v9, 0x3

    .line 104
    if-ne v1, v2, :cond_e

    .line 105
    .line 106
    add-int/lit8 v1, p1, 0x2

    .line 107
    .line 108
    if-gt p2, v1, :cond_8

    .line 109
    .line 110
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    add-int/lit8 v0, p1, 0x1

    .line 118
    .line 119
    if-le p2, v0, :cond_3

    .line 120
    .line 121
    aget-byte v0, p0, v0

    .line 122
    .line 123
    and-int/lit16 v0, v0, 0xc0

    .line 124
    .line 125
    if-ne v0, v4, :cond_3

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_8
    add-int/lit8 v2, p1, 0x1

    .line 129
    .line 130
    aget-byte v2, p0, v2

    .line 131
    .line 132
    and-int/lit16 v10, v2, 0xc0

    .line 133
    .line 134
    if-ne v10, v4, :cond_d

    .line 135
    .line 136
    aget-byte v1, p0, v1

    .line 137
    .line 138
    and-int/lit16 v5, v1, 0xc0

    .line 139
    .line 140
    if-ne v5, v4, :cond_c

    .line 141
    .line 142
    const v3, -0x1e080

    .line 143
    .line 144
    .line 145
    xor-int/2addr v1, v3

    .line 146
    shl-int/lit8 v2, v2, 0x6

    .line 147
    .line 148
    xor-int/2addr v1, v2

    .line 149
    shl-int/lit8 v0, v0, 0xc

    .line 150
    .line 151
    xor-int/2addr v0, v1

    .line 152
    const/16 v1, 0x800

    .line 153
    .line 154
    if-ge v0, v1, :cond_9

    .line 155
    .line 156
    :goto_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    :goto_6
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    goto :goto_8

    .line 164
    :cond_9
    if-le v7, v0, :cond_a

    .line 165
    .line 166
    goto :goto_7

    .line 167
    :cond_a
    if-lt v8, v0, :cond_b

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_b
    :goto_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    goto :goto_6

    .line 175
    :goto_8
    move v3, v9

    .line 176
    goto :goto_4

    .line 177
    :cond_c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_e
    shr-int/lit8 v1, v0, 0x3

    .line 194
    .line 195
    if-ne v1, v2, :cond_17

    .line 196
    .line 197
    add-int/lit8 v1, p1, 0x3

    .line 198
    .line 199
    if-gt p2, v1, :cond_f

    .line 200
    .line 201
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    add-int/lit8 v0, p1, 0x1

    .line 209
    .line 210
    if-le p2, v0, :cond_3

    .line 211
    .line 212
    aget-byte v0, p0, v0

    .line 213
    .line 214
    and-int/lit16 v0, v0, 0xc0

    .line 215
    .line 216
    if-ne v0, v4, :cond_3

    .line 217
    .line 218
    add-int/lit8 v0, p1, 0x2

    .line 219
    .line 220
    if-le p2, v0, :cond_6

    .line 221
    .line 222
    aget-byte v0, p0, v0

    .line 223
    .line 224
    and-int/lit16 v0, v0, 0xc0

    .line 225
    .line 226
    if-ne v0, v4, :cond_6

    .line 227
    .line 228
    :goto_9
    goto :goto_8

    .line 229
    :cond_f
    add-int/lit8 v2, p1, 0x1

    .line 230
    .line 231
    aget-byte v2, p0, v2

    .line 232
    .line 233
    and-int/lit16 v10, v2, 0xc0

    .line 234
    .line 235
    if-ne v10, v4, :cond_16

    .line 236
    .line 237
    add-int/lit8 v5, p1, 0x2

    .line 238
    .line 239
    aget-byte v5, p0, v5

    .line 240
    .line 241
    and-int/lit16 v10, v5, 0xc0

    .line 242
    .line 243
    if-ne v10, v4, :cond_15

    .line 244
    .line 245
    aget-byte v1, p0, v1

    .line 246
    .line 247
    and-int/lit16 v3, v1, 0xc0

    .line 248
    .line 249
    if-ne v3, v4, :cond_14

    .line 250
    .line 251
    const v3, 0x381f80

    .line 252
    .line 253
    .line 254
    xor-int/2addr v1, v3

    .line 255
    shl-int/lit8 v3, v5, 0x6

    .line 256
    .line 257
    xor-int/2addr v1, v3

    .line 258
    shl-int/lit8 v2, v2, 0xc

    .line 259
    .line 260
    xor-int/2addr v1, v2

    .line 261
    shl-int/lit8 v0, v0, 0x12

    .line 262
    .line 263
    xor-int/2addr v0, v1

    .line 264
    const v1, 0x10ffff

    .line 265
    .line 266
    .line 267
    if-le v0, v1, :cond_10

    .line 268
    .line 269
    :goto_a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    :goto_b
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    goto :goto_d

    .line 277
    :cond_10
    if-le v7, v0, :cond_11

    .line 278
    .line 279
    goto :goto_c

    .line 280
    :cond_11
    if-lt v8, v0, :cond_12

    .line 281
    .line 282
    goto :goto_a

    .line 283
    :cond_12
    :goto_c
    const/high16 v1, 0x10000

    .line 284
    .line 285
    if-ge v0, v1, :cond_13

    .line 286
    .line 287
    goto :goto_a

    .line 288
    :cond_13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    goto :goto_b

    .line 293
    :goto_d
    const/4 v3, 0x4

    .line 294
    goto/16 :goto_4

    .line 295
    .line 296
    :cond_14
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    goto :goto_9

    .line 304
    :cond_15
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    goto/16 :goto_4

    .line 312
    .line 313
    :cond_16
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    goto/16 :goto_2

    .line 321
    .line 322
    :cond_17
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    add-int/lit8 p1, p1, 0x1

    .line 330
    .line 331
    goto/16 :goto_0

    .line 332
    .line 333
    :cond_18
    return-void
.end method

.method public static final i(Ljava/lang/String;)J
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "size"
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v0, v1}, Latak/core/En;->l(Ljava/lang/String;IIILjava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final j(Ljava/lang/String;I)J
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "size"
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Latak/core/En;->l(Ljava/lang/String;IIILjava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final k(Ljava/lang/String;II)J
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "size"
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "$receiver"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-ltz p1, :cond_a

    .line 7
    .line 8
    if-lt p2, p1, :cond_9

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-gt p2, v0, :cond_8

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    :goto_0
    if-ge p1, p2, :cond_7

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/16 v3, 0x80

    .line 25
    .line 26
    const-wide/16 v4, 0x1

    .line 27
    .line 28
    if-ge v2, v3, :cond_0

    .line 29
    .line 30
    add-long/2addr v0, v4

    .line 31
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/16 v3, 0x800

    .line 35
    .line 36
    if-ge v2, v3, :cond_1

    .line 37
    .line 38
    const/4 v2, 0x2

    .line 39
    :goto_2
    int-to-long v2, v2

    .line 40
    add-long/2addr v0, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const v3, 0xd800

    .line 43
    .line 44
    .line 45
    if-lt v2, v3, :cond_6

    .line 46
    .line 47
    const v3, 0xdfff

    .line 48
    .line 49
    .line 50
    if-le v2, v3, :cond_2

    .line 51
    .line 52
    goto :goto_5

    .line 53
    :cond_2
    add-int/lit8 v6, p1, 0x1

    .line 54
    .line 55
    if-ge v6, p2, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    const/4 v7, 0x0

    .line 63
    :goto_3
    const v8, 0xdbff

    .line 64
    .line 65
    .line 66
    if-gt v2, v8, :cond_5

    .line 67
    .line 68
    const v2, 0xdc00

    .line 69
    .line 70
    .line 71
    if-lt v7, v2, :cond_5

    .line 72
    .line 73
    if-le v7, v3, :cond_4

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_4
    const/4 v2, 0x4

    .line 77
    int-to-long v2, v2

    .line 78
    add-long/2addr v0, v2

    .line 79
    add-int/lit8 p1, p1, 0x2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    :goto_4
    add-long/2addr v0, v4

    .line 83
    move p1, v6

    .line 84
    goto :goto_0

    .line 85
    :cond_6
    :goto_5
    const/4 v2, 0x3

    .line 86
    goto :goto_2

    .line 87
    :cond_7
    return-wide v0

    .line 88
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v0, "endIndex > string.length: "

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p2, " > "

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p1

    .line 127
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v0, "endIndex < beginIndex: "

    .line 133
    .line 134
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string p2, " < "

    .line 141
    .line 142
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 153
    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw p1

    .line 162
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string p2, "beginIndex < 0: "

    .line 168
    .line 169
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 180
    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p1
.end method

.method public static bridge synthetic l(Ljava/lang/String;IIILjava/lang/Object;)J
    .locals 0
    .annotation build Lkotlin/jvm/JvmName;
        name = "size"
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    :cond_1
    invoke-static {p0, p1, p2}, Latak/core/En;->k(Ljava/lang/String;II)J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    return-wide p0
.end method
