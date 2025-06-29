.class public final Lcom/toughstump/atos/AtosTrackTypeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/AtosTrackTypeKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtosTrackType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosTrackType.kt\ncom/toughstump/atos/AtosTrackTypeKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,166:1\n1849#2,2:167\n*S KotlinDebug\n*F\n+ 1 AtosTrackType.kt\ncom/toughstump/atos/AtosTrackTypeKt\n*L\n91#1:167,2\n*E\n"
.end annotation


# direct methods
.method public static final getAttributeDefaults(Lcom/toughstump/atos/AtosTrackType;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/toughstump/atos/AtosTrackType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/toughstump/atos/AtosTrackType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

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
    sget-object v0, Lcom/toughstump/atos/AtosTrackTypeKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    aget p0, v0, p0

    .line 13
    .line 14
    packed-switch p0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 18
    .line 19
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw p0

    .line 23
    :pswitch_0
    sget-object p0, Lcom/toughstump/atos/TagDetailDefaults;->INSTANCE:Lcom/toughstump/atos/TagDetailDefaults;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/toughstump/atos/TagDetailDefaults;->getROTARY_WING()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    goto :goto_0

    .line 30
    :pswitch_1
    sget-object p0, Lcom/toughstump/atos/TagDetailDefaults;->INSTANCE:Lcom/toughstump/atos/TagDetailDefaults;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/toughstump/atos/TagDetailDefaults;->getWEAPON()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    goto :goto_0

    .line 37
    :pswitch_2
    sget-object p0, Lcom/toughstump/atos/TagDetailDefaults;->INSTANCE:Lcom/toughstump/atos/TagDetailDefaults;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/toughstump/atos/TagDetailDefaults;->getMEDICAL()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    goto :goto_0

    .line 44
    :pswitch_3
    sget-object p0, Lcom/toughstump/atos/TagDetailDefaults;->INSTANCE:Lcom/toughstump/atos/TagDetailDefaults;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/toughstump/atos/TagDetailDefaults;->getFIXED_WING()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    goto :goto_0

    .line 51
    :pswitch_4
    sget-object p0, Lcom/toughstump/atos/TagDetailDefaults;->INSTANCE:Lcom/toughstump/atos/TagDetailDefaults;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/toughstump/atos/TagDetailDefaults;->getEQUIPMENT()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    goto :goto_0

    .line 58
    :pswitch_5
    sget-object p0, Lcom/toughstump/atos/TagDetailDefaults;->INSTANCE:Lcom/toughstump/atos/TagDetailDefaults;

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/toughstump/atos/TagDetailDefaults;->getUAS()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    goto :goto_0

    .line 65
    :pswitch_6
    sget-object p0, Lcom/toughstump/atos/TagDetailDefaults;->INSTANCE:Lcom/toughstump/atos/TagDetailDefaults;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/toughstump/atos/TagDetailDefaults;->getBOAT()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    goto :goto_0

    .line 72
    :pswitch_7
    sget-object p0, Lcom/toughstump/atos/TagDetailDefaults;->INSTANCE:Lcom/toughstump/atos/TagDetailDefaults;

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/toughstump/atos/TagDetailDefaults;->getCUSTOM()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    goto :goto_0

    .line 79
    :pswitch_8
    sget-object p0, Lcom/toughstump/atos/TagDetailDefaults;->INSTANCE:Lcom/toughstump/atos/TagDetailDefaults;

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/toughstump/atos/TagDetailDefaults;->getBUNDLE()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    goto :goto_0

    .line 86
    :pswitch_9
    sget-object p0, Lcom/toughstump/atos/TagDetailDefaults;->INSTANCE:Lcom/toughstump/atos/TagDetailDefaults;

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/toughstump/atos/TagDetailDefaults;->getVEHICLE()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    goto :goto_0

    .line 93
    :pswitch_a
    sget-object p0, Lcom/toughstump/atos/TagDetailDefaults;->INSTANCE:Lcom/toughstump/atos/TagDetailDefaults;

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/toughstump/atos/TagDetailDefaults;->getHOUND()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    goto :goto_0

    .line 100
    :pswitch_b
    sget-object p0, Lcom/toughstump/atos/TagDetailDefaults;->INSTANCE:Lcom/toughstump/atos/TagDetailDefaults;

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/toughstump/atos/TagDetailDefaults;->getPAX()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    :goto_0
    return-object p0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getDefaultAttributeMap(Lcom/toughstump/atos/AtosTrackType;)Ljava/util/Map;
    .locals 3
    .param p0    # Lcom/toughstump/atos/AtosTrackType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/toughstump/atos/AtosTrackType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

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
    invoke-static {p0}, Lcom/toughstump/atos/AtosTrackTypeKt;->getAttributeDefaults(Lcom/toughstump/atos/AtosTrackType;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    const-string v2, ""

    .line 32
    .line 33
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-object v0
.end method
