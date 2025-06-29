.class public final Lkot/KotTypeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final affiliation(Lkot/KotType;)Lkot/Affiliation;
    .locals 2
    .param p0    # Lkot/KotType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lkot/KotTypeKt;->split(Lkot/KotType;)Lkot/KotTypeSplit;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lkot/KotTypeSplit;->getAffiliationString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x61

    .line 19
    .line 20
    if-eq v0, v1, :cond_11

    .line 21
    .line 22
    const/16 v1, 0x66

    .line 23
    .line 24
    if-eq v0, v1, :cond_f

    .line 25
    .line 26
    const/16 v1, 0x68

    .line 27
    .line 28
    if-eq v0, v1, :cond_d

    .line 29
    .line 30
    const/16 v1, 0x73

    .line 31
    .line 32
    if-eq v0, v1, :cond_b

    .line 33
    .line 34
    const/16 v1, 0x75

    .line 35
    .line 36
    if-eq v0, v1, :cond_9

    .line 37
    .line 38
    const/16 v1, 0x78

    .line 39
    .line 40
    if-eq v0, v1, :cond_7

    .line 41
    .line 42
    const/16 v1, 0x6a

    .line 43
    .line 44
    if-eq v0, v1, :cond_5

    .line 45
    .line 46
    const/16 v1, 0x6b

    .line 47
    .line 48
    if-eq v0, v1, :cond_3

    .line 49
    .line 50
    packed-switch v0, :pswitch_data_0

    .line 51
    .line 52
    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :pswitch_0
    const-string v0, "p"

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-nez p0, :cond_0

    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :cond_0
    sget-object p0, Lkot/Affiliation;->PENDING:Lkot/Affiliation;

    .line 66
    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :pswitch_1
    const-string v0, "o"

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-nez p0, :cond_1

    .line 76
    .line 77
    goto/16 :goto_0

    .line 78
    .line 79
    :cond_1
    sget-object p0, Lkot/Affiliation;->UNSPECIFIED:Lkot/Affiliation;

    .line 80
    .line 81
    goto/16 :goto_1

    .line 82
    .line 83
    :pswitch_2
    const-string v0, "n"

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-nez p0, :cond_2

    .line 90
    .line 91
    goto/16 :goto_0

    .line 92
    .line 93
    :cond_2
    sget-object p0, Lkot/Affiliation;->NEUTRAL:Lkot/Affiliation;

    .line 94
    .line 95
    goto/16 :goto_1

    .line 96
    .line 97
    :cond_3
    const-string v0, "k"

    .line 98
    .line 99
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-nez p0, :cond_4

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    sget-object p0, Lkot/Affiliation;->FAKER:Lkot/Affiliation;

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_5
    const-string v0, "j"

    .line 110
    .line 111
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-nez p0, :cond_6

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_6
    sget-object p0, Lkot/Affiliation;->JOKER:Lkot/Affiliation;

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_7
    const-string v0, "x"

    .line 122
    .line 123
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    if-nez p0, :cond_8

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_8
    sget-object p0, Lkot/Affiliation;->OTHER:Lkot/Affiliation;

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_9
    const-string v0, "u"

    .line 134
    .line 135
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    if-nez p0, :cond_a

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_a
    sget-object p0, Lkot/Affiliation;->UNKNOWN:Lkot/Affiliation;

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_b
    const-string v0, "s"

    .line 146
    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    if-nez p0, :cond_c

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_c
    sget-object p0, Lkot/Affiliation;->SUSPECT:Lkot/Affiliation;

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_d
    const-string v0, "h"

    .line 158
    .line 159
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    if-nez p0, :cond_e

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_e
    sget-object p0, Lkot/Affiliation;->HOSTILE:Lkot/Affiliation;

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_f
    const-string v0, "f"

    .line 170
    .line 171
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    if-nez p0, :cond_10

    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_10
    sget-object p0, Lkot/Affiliation;->FRIEND:Lkot/Affiliation;

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_11
    const-string v0, "a"

    .line 182
    .line 183
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    if-nez p0, :cond_12

    .line 188
    .line 189
    :goto_0
    sget-object p0, Lkot/Affiliation;->UNKNOWN:Lkot/Affiliation;

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_12
    sget-object p0, Lkot/Affiliation;->ASSUMED_FRIEND:Lkot/Affiliation;

    .line 193
    .line 194
    :goto_1
    return-object p0

    .line 195
    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final battleDimension(Lkot/KotType;)Lkot/BattleDimension;
    .locals 2
    .param p0    # Lkot/KotType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lkot/KotTypeKt;->split(Lkot/KotType;)Lkot/KotTypeSplit;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lkot/KotTypeSplit;->getBattleDimensionString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x41

    .line 19
    .line 20
    if-eq v0, v1, :cond_8

    .line 21
    .line 22
    const/16 v1, 0x47

    .line 23
    .line 24
    if-eq v0, v1, :cond_6

    .line 25
    .line 26
    const/16 v1, 0x53

    .line 27
    .line 28
    if-eq v0, v1, :cond_4

    .line 29
    .line 30
    const/16 v1, 0x55

    .line 31
    .line 32
    if-eq v0, v1, :cond_2

    .line 33
    .line 34
    const/16 v1, 0x58

    .line 35
    .line 36
    if-eq v0, v1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-string v0, "X"

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    sget-object p0, Lkot/BattleDimension;->OTHER:Lkot/BattleDimension;

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const-string v0, "U"

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    sget-object p0, Lkot/BattleDimension;->SUBSURFACE:Lkot/BattleDimension;

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_4
    const-string v0, "S"

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-nez p0, :cond_5

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_5
    sget-object p0, Lkot/BattleDimension;->SURFACE:Lkot/BattleDimension;

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_6
    const-string v0, "G"

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-nez p0, :cond_7

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_7
    sget-object p0, Lkot/BattleDimension;->GROUND:Lkot/BattleDimension;

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_8
    const-string v0, "A"

    .line 88
    .line 89
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-nez p0, :cond_9

    .line 94
    .line 95
    :goto_0
    sget-object p0, Lkot/BattleDimension;->UNKNOWN:Lkot/BattleDimension;

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_9
    sget-object p0, Lkot/BattleDimension;->AIR:Lkot/BattleDimension;

    .line 99
    .line 100
    :goto_1
    return-object p0
.end method

.method public static final describes(Lkot/KotType;)Lkot/Describes;
    .locals 2
    .param p0    # Lkot/KotType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lkot/KotTypeKt;->split(Lkot/KotType;)Lkot/KotTypeSplit;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lkot/KotTypeSplit;->getDescribesString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x79

    .line 19
    .line 20
    if-eq v0, v1, :cond_6

    .line 21
    .line 22
    packed-switch v0, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    packed-switch v0, :pswitch_data_1

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :pswitch_0
    const-string v0, "t"

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sget-object p0, Lkot/Describes;->TASKING:Lkot/Describes;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :pswitch_1
    const-string v0, "s"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    sget-object p0, Lkot/Describes;->SERVICE:Lkot/Describes;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :pswitch_2
    const-string v0, "r"

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-nez p0, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    sget-object p0, Lkot/Describes;->RESERVATION:Lkot/Describes;

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :pswitch_3
    const-string v0, "c"

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-nez p0, :cond_3

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    sget-object p0, Lkot/Describes;->CAPABILITY:Lkot/Describes;

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :pswitch_4
    const-string v0, "b"

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-nez p0, :cond_4

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    sget-object p0, Lkot/Describes;->BITS:Lkot/Describes;

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :pswitch_5
    const-string v0, "a"

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-nez p0, :cond_5

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    sget-object p0, Lkot/Describes;->ATOMS:Lkot/Describes;

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_6
    const-string v0, "y"

    .line 102
    .line 103
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-nez p0, :cond_7

    .line 108
    .line 109
    :goto_0
    sget-object p0, Lkot/Describes;->UNKNOWN:Lkot/Describes;

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_7
    sget-object p0, Lkot/Describes;->REPLY:Lkot/Describes;

    .line 113
    .line 114
    :goto_1
    return-object p0

    .line 115
    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    :pswitch_data_1
    .packed-switch 0x72
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final split(Lkot/KotType;)Lkot/KotTypeSplit;
    .locals 9
    .param p0    # Lkot/KotType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lkot/KotType;->getCot()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    invoke-virtual {p0}, Lkot/KotType;->getCot()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v0, "-"

    .line 21
    .line 22
    filled-new-array {v0}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v5, 0x6

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    const/4 v1, 0x1

    .line 45
    if-eq p0, v1, :cond_1

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    const/4 v3, 0x2

    .line 49
    if-eq p0, v3, :cond_0

    .line 50
    .line 51
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/lang/String;

    .line 62
    .line 63
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Ljava/lang/String;

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    add-int/lit8 v3, v3, -0x3

    .line 74
    .line 75
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->takeLast(Ljava/util/List;I)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v3, Lkot/KotTypeSplit;

    .line 80
    .line 81
    invoke-direct {v3, p0, v1, v2, v0}, Lkot/KotTypeSplit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    move-object v3, p0

    .line 90
    check-cast v3, Ljava/lang/String;

    .line 91
    .line 92
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    move-object v4, p0

    .line 97
    check-cast v4, Ljava/lang/String;

    .line 98
    .line 99
    new-instance p0, Lkot/KotTypeSplit;

    .line 100
    .line 101
    const/16 v7, 0xc

    .line 102
    .line 103
    const/4 v8, 0x0

    .line 104
    const/4 v5, 0x0

    .line 105
    const/4 v6, 0x0

    .line 106
    move-object v2, p0

    .line 107
    invoke-direct/range {v2 .. v8}, Lkot/KotTypeSplit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 108
    .line 109
    .line 110
    :goto_0
    move-object v3, p0

    .line 111
    goto :goto_1

    .line 112
    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    move-object v1, p0

    .line 117
    check-cast v1, Ljava/lang/String;

    .line 118
    .line 119
    new-instance p0, Lkot/KotTypeSplit;

    .line 120
    .line 121
    const/16 v5, 0xe

    .line 122
    .line 123
    const/4 v6, 0x0

    .line 124
    const/4 v2, 0x0

    .line 125
    const/4 v3, 0x0

    .line 126
    const/4 v4, 0x0

    .line 127
    move-object v0, p0

    .line 128
    invoke-direct/range {v0 .. v6}, Lkot/KotTypeSplit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :goto_1
    return-object v3

    .line 133
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v1, "Malformed CoT string "

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lkot/KotType;->getCot()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 155
    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw v0

    .line 164
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 165
    .line 166
    const-string v0, "CoT string is blank!"

    .line 167
    .line 168
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p0
.end method
