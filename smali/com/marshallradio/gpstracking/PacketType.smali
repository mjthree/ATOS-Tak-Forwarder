.class public final enum Lcom/marshallradio/gpstracking/PacketType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/marshallradio/gpstracking/PacketType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/marshallradio/gpstracking/PacketType;

.field public static final enum FIFTYFIVE:Lcom/marshallradio/gpstracking/PacketType;

.field public static final enum FIFTYSIX:Lcom/marshallradio/gpstracking/PacketType;

.field public static final enum FOURTY:Lcom/marshallradio/gpstracking/PacketType;

.field public static final enum NINETEEN:Lcom/marshallradio/gpstracking/PacketType;

.field public static final enum ONE:Lcom/marshallradio/gpstracking/PacketType;

.field public static final enum SIXTY:Lcom/marshallradio/gpstracking/PacketType;

.field public static final enum SV_INFO:Lcom/marshallradio/gpstracking/PacketType;

.field public static final enum THIRTEEN:Lcom/marshallradio/gpstracking/PacketType;

.field public static final enum THIRTYONE:Lcom/marshallradio/gpstracking/PacketType;

.field public static final enum THREE:Lcom/marshallradio/gpstracking/PacketType;

.field public static final enum TWELVE:Lcom/marshallradio/gpstracking/PacketType;

.field public static final enum TWENTYFOUR:Lcom/marshallradio/gpstracking/PacketType;

.field public static final enum UNKNOWN:Lcom/marshallradio/gpstracking/PacketType;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/marshallradio/gpstracking/PacketType;

    .line 2
    .line 3
    const-string v1, "ONE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/marshallradio/gpstracking/PacketType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/marshallradio/gpstracking/PacketType;->ONE:Lcom/marshallradio/gpstracking/PacketType;

    .line 10
    .line 11
    new-instance v1, Lcom/marshallradio/gpstracking/PacketType;

    .line 12
    .line 13
    const-string v2, "THREE"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/marshallradio/gpstracking/PacketType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/marshallradio/gpstracking/PacketType;->THREE:Lcom/marshallradio/gpstracking/PacketType;

    .line 20
    .line 21
    new-instance v2, Lcom/marshallradio/gpstracking/PacketType;

    .line 22
    .line 23
    const-string v3, "SV_INFO"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/marshallradio/gpstracking/PacketType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/marshallradio/gpstracking/PacketType;->SV_INFO:Lcom/marshallradio/gpstracking/PacketType;

    .line 30
    .line 31
    new-instance v3, Lcom/marshallradio/gpstracking/PacketType;

    .line 32
    .line 33
    const-string v4, "TWENTYFOUR"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Lcom/marshallradio/gpstracking/PacketType;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/marshallradio/gpstracking/PacketType;->TWENTYFOUR:Lcom/marshallradio/gpstracking/PacketType;

    .line 40
    .line 41
    new-instance v4, Lcom/marshallradio/gpstracking/PacketType;

    .line 42
    .line 43
    const-string v5, "THIRTYONE"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Lcom/marshallradio/gpstracking/PacketType;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Lcom/marshallradio/gpstracking/PacketType;->THIRTYONE:Lcom/marshallradio/gpstracking/PacketType;

    .line 50
    .line 51
    new-instance v5, Lcom/marshallradio/gpstracking/PacketType;

    .line 52
    .line 53
    const-string v6, "TWELVE"

    .line 54
    .line 55
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7}, Lcom/marshallradio/gpstracking/PacketType;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v5, Lcom/marshallradio/gpstracking/PacketType;->TWELVE:Lcom/marshallradio/gpstracking/PacketType;

    .line 60
    .line 61
    new-instance v6, Lcom/marshallradio/gpstracking/PacketType;

    .line 62
    .line 63
    const-string v7, "THIRTEEN"

    .line 64
    .line 65
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v7, v8}, Lcom/marshallradio/gpstracking/PacketType;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v6, Lcom/marshallradio/gpstracking/PacketType;->THIRTEEN:Lcom/marshallradio/gpstracking/PacketType;

    .line 70
    .line 71
    new-instance v7, Lcom/marshallradio/gpstracking/PacketType;

    .line 72
    .line 73
    const-string v8, "NINETEEN"

    .line 74
    .line 75
    const/4 v9, 0x7

    .line 76
    invoke-direct {v7, v8, v9}, Lcom/marshallradio/gpstracking/PacketType;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v7, Lcom/marshallradio/gpstracking/PacketType;->NINETEEN:Lcom/marshallradio/gpstracking/PacketType;

    .line 80
    .line 81
    new-instance v8, Lcom/marshallradio/gpstracking/PacketType;

    .line 82
    .line 83
    const-string v9, "FIFTYFIVE"

    .line 84
    .line 85
    const/16 v10, 0x8

    .line 86
    .line 87
    invoke-direct {v8, v9, v10}, Lcom/marshallradio/gpstracking/PacketType;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v8, Lcom/marshallradio/gpstracking/PacketType;->FIFTYFIVE:Lcom/marshallradio/gpstracking/PacketType;

    .line 91
    .line 92
    new-instance v9, Lcom/marshallradio/gpstracking/PacketType;

    .line 93
    .line 94
    const-string v10, "FIFTYSIX"

    .line 95
    .line 96
    const/16 v11, 0x9

    .line 97
    .line 98
    invoke-direct {v9, v10, v11}, Lcom/marshallradio/gpstracking/PacketType;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v9, Lcom/marshallradio/gpstracking/PacketType;->FIFTYSIX:Lcom/marshallradio/gpstracking/PacketType;

    .line 102
    .line 103
    new-instance v10, Lcom/marshallradio/gpstracking/PacketType;

    .line 104
    .line 105
    const-string v11, "FOURTY"

    .line 106
    .line 107
    const/16 v12, 0xa

    .line 108
    .line 109
    invoke-direct {v10, v11, v12}, Lcom/marshallradio/gpstracking/PacketType;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    sput-object v10, Lcom/marshallradio/gpstracking/PacketType;->FOURTY:Lcom/marshallradio/gpstracking/PacketType;

    .line 113
    .line 114
    new-instance v11, Lcom/marshallradio/gpstracking/PacketType;

    .line 115
    .line 116
    const-string v12, "SIXTY"

    .line 117
    .line 118
    const/16 v13, 0xb

    .line 119
    .line 120
    invoke-direct {v11, v12, v13}, Lcom/marshallradio/gpstracking/PacketType;-><init>(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    sput-object v11, Lcom/marshallradio/gpstracking/PacketType;->SIXTY:Lcom/marshallradio/gpstracking/PacketType;

    .line 124
    .line 125
    new-instance v12, Lcom/marshallradio/gpstracking/PacketType;

    .line 126
    .line 127
    const-string v13, "UNKNOWN"

    .line 128
    .line 129
    const/16 v14, 0xc

    .line 130
    .line 131
    invoke-direct {v12, v13, v14}, Lcom/marshallradio/gpstracking/PacketType;-><init>(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    sput-object v12, Lcom/marshallradio/gpstracking/PacketType;->UNKNOWN:Lcom/marshallradio/gpstracking/PacketType;

    .line 135
    .line 136
    filled-new-array/range {v0 .. v12}, [Lcom/marshallradio/gpstracking/PacketType;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    sput-object v0, Lcom/marshallradio/gpstracking/PacketType;->$VALUES:[Lcom/marshallradio/gpstracking/PacketType;

    .line 141
    .line 142
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/marshallradio/gpstracking/PacketType;
    .locals 1

    .line 1
    const-class v0, Lcom/marshallradio/gpstracking/PacketType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/marshallradio/gpstracking/PacketType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/marshallradio/gpstracking/PacketType;
    .locals 1

    .line 1
    sget-object v0, Lcom/marshallradio/gpstracking/PacketType;->$VALUES:[Lcom/marshallradio/gpstracking/PacketType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/marshallradio/gpstracking/PacketType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/marshallradio/gpstracking/PacketType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getLength()I
    .locals 2

    .line 1
    sget-object v0, Lcom/marshallradio/gpstracking/PacketType$1;->$SwitchMap$com$marshallradio$gpstracking$PacketType:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    :pswitch_0
    const/16 v0, 0x17

    .line 13
    .line 14
    return v0

    .line 15
    :pswitch_1
    const/16 v0, 0x1c

    .line 16
    .line 17
    return v0

    .line 18
    :pswitch_2
    const/16 v0, 0x9

    .line 19
    .line 20
    return v0

    .line 21
    :pswitch_3
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :pswitch_4
    const/16 v0, 0x11

    .line 24
    .line 25
    return v0

    .line 26
    :pswitch_5
    const/16 v0, 0x12

    .line 27
    .line 28
    return v0

    .line 29
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
