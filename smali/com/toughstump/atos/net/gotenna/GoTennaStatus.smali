.class public final enum Lcom/toughstump/atos/net/gotenna/GoTennaStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/toughstump/atos/net/gotenna/GoTennaStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

.field public static final enum DELIVERED:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

.field public static final enum DELIVERY_FAILED:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

.field public static final enum FAILED:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

.field public static final enum FAILED_INVALID_DEST:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

.field public static final enum FAILED_INVALID_KEY:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

.field public static final enum FAILED_INVALID_MSG_ID:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

.field public static final enum FAILED_PAYLOAD_EMPTY:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

.field public static final enum FAILED_PAYLOAD_LIMIT:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

.field public static final enum FAILED_RADIO_ACQUIRE:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

.field public static final enum FAILED_RADIO_CONNECT:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

.field public static final enum NONE:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

.field public static final enum SEND_FAILED:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

.field public static final enum SENT:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;


# instance fields
.field private final desc:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/toughstump/atos/net/gotenna/GoTennaStatus;
    .locals 13

    sget-object v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->NONE:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    sget-object v1, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->SENT:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    sget-object v2, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->SEND_FAILED:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    sget-object v3, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->DELIVERED:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    sget-object v4, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->DELIVERY_FAILED:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    sget-object v5, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->FAILED_PAYLOAD_LIMIT:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    sget-object v6, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->FAILED_INVALID_KEY:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    sget-object v7, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->FAILED_INVALID_DEST:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    sget-object v8, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->FAILED_INVALID_MSG_ID:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    sget-object v9, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->FAILED_PAYLOAD_EMPTY:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    sget-object v10, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->FAILED:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    sget-object v11, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->FAILED_RADIO_ACQUIRE:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    sget-object v12, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->FAILED_RADIO_CONNECT:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    filled-new-array/range {v0 .. v12}, [Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "not used by goTenna, start=1, not 0."

    .line 5
    .line 6
    const-string v3, "NONE"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->NONE:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 12
    .line 13
    new-instance v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "the message was broadcast over the goTenna network."

    .line 17
    .line 18
    const-string v3, "SENT"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->SENT:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 24
    .line 25
    new-instance v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "the message failed to be sent."

    .line 29
    .line 30
    const-string v3, "SEND_FAILED"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->SEND_FAILED:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 36
    .line 37
    new-instance v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "for private (unicast) message, meaning the message was delivered to the recipient."

    .line 41
    .line 42
    const-string v3, "DELIVERED"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->DELIVERED:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 48
    .line 49
    new-instance v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "a private (unicast) message fails to be delivered."

    .line 53
    .line 54
    const-string v3, "DELIVERY_FAILED"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->DELIVERY_FAILED:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 60
    .line 61
    new-instance v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "the payload exceeds the limit."

    .line 65
    .line 66
    const-string v3, "FAILED_PAYLOAD_LIMIT"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->FAILED_PAYLOAD_LIMIT:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 72
    .line 73
    new-instance v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "the SEND_MESSAGE has an invalid key."

    .line 77
    .line 78
    const-string v3, "FAILED_INVALID_KEY"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->FAILED_INVALID_KEY:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 84
    .line 85
    new-instance v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const-string v2, "the dest field is invalid. For example, the ATAK UUID is incorrect."

    .line 89
    .line 90
    const-string v3, "FAILED_INVALID_DEST"

    .line 91
    .line 92
    invoke-direct {v0, v3, v1, v2}, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->FAILED_INVALID_DEST:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 96
    .line 97
    new-instance v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    .line 101
    const-string v2, "msgId used is invalid."

    .line 102
    .line 103
    const-string v3, "FAILED_INVALID_MSG_ID"

    .line 104
    .line 105
    invoke-direct {v0, v3, v1, v2}, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->FAILED_INVALID_MSG_ID:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 109
    .line 110
    new-instance v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 111
    .line 112
    const/16 v1, 0x9

    .line 113
    .line 114
    const-string v2, "payload is empty or null."

    .line 115
    .line 116
    const-string v3, "FAILED_PAYLOAD_EMPTY"

    .line 117
    .line 118
    invoke-direct {v0, v3, v1, v2}, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sput-object v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->FAILED_PAYLOAD_EMPTY:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 122
    .line 123
    new-instance v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 124
    .line 125
    const/16 v1, 0xa

    .line 126
    .line 127
    const-string v2, "catch all generic failure."

    .line 128
    .line 129
    const-string v3, "FAILED"

    .line 130
    .line 131
    invoke-direct {v0, v3, v1, v2}, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->FAILED:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 135
    .line 136
    new-instance v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 137
    .line 138
    const/16 v1, 0xb

    .line 139
    .line 140
    const-string v2, "Failed to acquire radio"

    .line 141
    .line 142
    const-string v3, "FAILED_RADIO_ACQUIRE"

    .line 143
    .line 144
    invoke-direct {v0, v3, v1, v2}, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sput-object v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->FAILED_RADIO_ACQUIRE:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 148
    .line 149
    new-instance v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 150
    .line 151
    const/16 v1, 0xc

    .line 152
    .line 153
    const-string v2, " Failed to connect to radio"

    .line 154
    .line 155
    const-string v3, "FAILED_RADIO_CONNECT"

    .line 156
    .line 157
    invoke-direct {v0, v3, v1, v2}, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    sput-object v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->FAILED_RADIO_CONNECT:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 161
    .line 162
    invoke-static {}, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->$values()[Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    sput-object v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->$VALUES:[Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 167
    .line 168
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    sput-object v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 173
    .line 174
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->desc:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/toughstump/atos/net/gotenna/GoTennaStatus;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/toughstump/atos/net/gotenna/GoTennaStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/toughstump/atos/net/gotenna/GoTennaStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->$VALUES:[Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDesc()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->desc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
