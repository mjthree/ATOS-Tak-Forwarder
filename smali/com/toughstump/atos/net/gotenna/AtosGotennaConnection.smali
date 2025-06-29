.class public final Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final API_KEY:Ljava/lang/String; = "B0EEGjRKDF4MIi4cXkwSG0BLKCw+PD5qAwxPeCE3IVwhCTx5CT5PZyMz"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final INTENT_ACTION_RECEIVE_MESSAGE:Ljava/lang/String; = "com.gotenna.atak.plugin.anymessage.RECEIVED_MESSAGE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final INTENT_ACTION_RESULT_MESSAGE:Ljava/lang/String; = "com.gotenna.atak.plugin.anymessage.RESULT"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final INTENT_ACTION_SEND_MESSAGE:Ljava/lang/String; = "com.gotenna.atak.plugin.anymessage.SEND_MESSAGE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final INTENT_EXTRA_API_KEY:Ljava/lang/String; = "apiKey"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final INTENT_EXTRA_DEST:Ljava/lang/String; = "dest"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final INTENT_EXTRA_LOGGING:Ljava/lang/String; = "logging"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final INTENT_EXTRA_MESSAGE_ID:Ljava/lang/String; = "msgId"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final INTENT_EXTRA_PAYLOAD:Ljava/lang/String; = "payload"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final INTENT_EXTRA_STATUS:Ljava/lang/String; = "status"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MAX_SEND_TRIES:I = 0x5

.field private static final TAG:Ljava/lang/String; = "AtosGoTenna"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TRACK_SOURCE:Ljava/lang/String; = "goTenna"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static isEnabled:Z

.field private static messageCount:I

.field private static final messageIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lkotlin/Pair<",
            "Lcom/toughstump/atos/kot/AtosKotEvent;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;->INSTANCE:Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;

    .line 7
    .line 8
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;->messageIdMap:Ljava/util/Map;

    .line 14
    .line 15
    sget-object v1, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getGoTennaEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    sput-boolean v2, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;->isEnabled:Z

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getGoTennaEnabledEvent()Lcom/toughstump/event/Event;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection$1;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection$1;-><init>(Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onGotennaStateChanged(Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;->onGotennaStateChanged(Ljava/lang/Object;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic broadcast$default(Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;Lcom/toughstump/atos/kot/AtosKotEvent;IILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, -0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;->broadcast(Lcom/toughstump/atos/kot/AtosKotEvent;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final onGotennaStateChanged(Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    sput-boolean p2, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;->isEnabled:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;->start()V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;->onDestroy()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const-string p1, "AtosGoTenna"

    .line 12
    .line 13
    const-string p2, "GoTenna state changed"

    .line 14
    .line 15
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final processInboundIntent(Landroid/content/Intent;)V
    .locals 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "Processing Inbound Intent"

    .line 4
    .line 5
    const-string v2, "AtosGoTenna"

    .line 6
    .line 7
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const-string v1, "apiKey"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v3, "B0EEGjRKDF4MIi4cXkwSG0BLKCw+PD5qAwxPeCE3IVwhCTx5CT5PZyMz"

    .line 17
    .line 18
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    const-string v1, "goTenna API Key Invalid cannot process"

    .line 25
    .line 26
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    const-string v1, "payload"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    array-length v1, v0

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-static {}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->newBuilder()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 56
    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    const-string v0, "goTenna payload invalid failed to process"

    .line 60
    .line 61
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    invoke-static {v0}, Lcom/toughstump/atos/proto/AtosProtoKt;->toAtosKotEvent(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const v21, 0x1bfff

    .line 70
    .line 71
    .line 72
    const/16 v22, 0x0

    .line 73
    .line 74
    const/4 v4, 0x0

    .line 75
    const/4 v5, 0x0

    .line 76
    const/4 v6, 0x0

    .line 77
    const/4 v7, 0x0

    .line 78
    const/4 v8, 0x0

    .line 79
    const/4 v9, 0x0

    .line 80
    const/4 v10, 0x0

    .line 81
    const/4 v11, 0x0

    .line 82
    const/4 v12, 0x0

    .line 83
    const/4 v13, 0x0

    .line 84
    const/4 v14, 0x0

    .line 85
    const/4 v15, 0x0

    .line 86
    const/16 v16, 0x0

    .line 87
    .line 88
    const/16 v17, 0x0

    .line 89
    .line 90
    const-string v18, "goTenna"

    .line 91
    .line 92
    const/16 v19, 0x0

    .line 93
    .line 94
    const/16 v20, 0x0

    .line 95
    .line 96
    invoke-static/range {v3 .. v22}, Lcom/toughstump/atos/kot/AtosKotEvent;->copy$default(Lcom/toughstump/atos/kot/AtosKotEvent;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/toughstump/atos/AtosColor;Lcom/toughstump/atos/AtosTrackType;Ljava/util/Map;Lkot/KotTime;Lkot/KotTime;Lkot/KotPoint;Lkot/utils/model/Track;Lkot/utils/model/Link;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;ILjava/lang/Object;)Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    sget-object v1, Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;->INSTANCE:Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;

    .line 101
    .line 102
    invoke-virtual {v1, v0}, Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;->send(Lcom/toughstump/atos/kot/AtosKotEvent;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_3
    :goto_0
    const-string v0, "goTenna payload null/empty cannot process"

    .line 107
    .line 108
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method private final processResult(Landroid/content/Intent;)V
    .locals 7

    .line 1
    const-string v0, "status"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_5

    .line 8
    .line 9
    sget-object v1, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->NONE:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {}, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->values()[Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    aget-object v0, v1, v0

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "Result_GoTennaStatus: "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->getDesc()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "AtosGoTenna"

    .line 47
    .line 48
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    const-string v1, "msgId"

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_0

    .line 58
    .line 59
    const-string p1, "No Message ID"

    .line 60
    .line 61
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_0
    sget-object v3, Lcom/toughstump/atos/net/gotenna/GoTennaStatus;->SEND_FAILED:Lcom/toughstump/atos/net/gotenna/GoTennaStatus;

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    if-ne v0, v3, :cond_4

    .line 69
    .line 70
    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    sget-object v0, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;->messageIdMap:Ljava/util/Map;

    .line 75
    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lkotlin/Pair;

    .line 85
    .line 86
    if-eqz v1, :cond_3

    .line 87
    .line 88
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Ljava/lang/Number;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lkotlin/Pair;

    .line 107
    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 115
    .line 116
    if-nez v0, :cond_1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v4, "TAG "

    .line 125
    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTagId()I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v5, " | MESSAGE "

    .line 137
    .line 138
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v6, " | ~~ Failed to send, send count "

    .line 145
    .line 146
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const/16 v6, 0x20

    .line 153
    .line 154
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    const/4 v3, 0x5

    .line 165
    if-lt v1, v3, :cond_2

    .line 166
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTagId()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string p1, " | ~~~ Exceeded max send attempts"

    .line 189
    .line 190
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;->broadcast(Lcom/toughstump/atos/kot/AtosKotEvent;I)V

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_3
    :goto_0
    return-void

    .line 206
    :cond_4
    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    sget-object v0, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;->messageIdMap:Ljava/util/Map;

    .line 211
    .line 212
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public final broadcast(Lcom/toughstump/atos/kot/AtosKotEvent;I)V
    .locals 10
    .param p1    # Lcom/toughstump/atos/kot/AtosKotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, " | MESSAGE "

    .line 2
    .line 3
    const-string v1, "TAG "

    .line 4
    .line 5
    const-string v2, "AtosGoTenna"

    .line 6
    .line 7
    const-string v3, "atosKotEvent"

    .line 8
    .line 9
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-boolean v3, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;->isEnabled:Z

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v3, Landroid/content/Intent;

    .line 18
    .line 19
    const-string v4, "com.gotenna.atak.plugin.anymessage.SEND_MESSAGE"

    .line 20
    .line 21
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v4, "apiKey"

    .line 25
    .line 26
    const-string v5, "B0EEGjRKDF4MIi4cXkwSG0BLKCw+PD5qAwxPeCE3IVwhCTx5CT5PZyMz"

    .line 27
    .line 28
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x1

    .line 33
    const/4 v6, 0x0

    .line 34
    invoke-static {p1, v4, v5, v6}, Lcom/toughstump/atos/proto/AtosProtoKt;->toProto$default(Lcom/toughstump/atos/kot/AtosKotEvent;ZILjava/lang/Object;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    if-eqz v7, :cond_1

    .line 39
    .line 40
    invoke-virtual {v7}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-object v7, v6

    .line 46
    :goto_0
    const-string v8, "payload"

    .line 47
    .line 48
    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    const-string v7, "dest"

    .line 52
    .line 53
    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    const/4 v6, -0x1

    .line 57
    if-ne p2, v6, :cond_2

    .line 58
    .line 59
    sget p2, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;->messageCount:I

    .line 60
    .line 61
    :cond_2
    const-string v6, "msgId"

    .line 62
    .line 63
    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    const-string v6, "logging"

    .line 67
    .line 68
    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    sget-object v6, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;->messageIdMap:Ljava/util/Map;

    .line 72
    .line 73
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    check-cast v7, Lkotlin/Pair;

    .line 82
    .line 83
    if-eqz v7, :cond_3

    .line 84
    .line 85
    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    check-cast v7, Ljava/lang/Number;

    .line 90
    .line 91
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    goto :goto_1

    .line 96
    :cond_3
    move v7, v4

    .line 97
    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    new-instance v9, Lkotlin/Pair;

    .line 102
    .line 103
    add-int/2addr v7, v5

    .line 104
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    invoke-direct {v9, p1, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :try_start_0
    invoke-static {}, Lcom/atakmap/android/ipc/AtakBroadcast;->a()Lcom/atakmap/android/ipc/AtakBroadcast;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-virtual {v6, v3}, Lcom/atakmap/android/ipc/AtakBroadcast;->a(Landroid/content/Intent;)Z

    .line 119
    .line 120
    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTagId()I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v6, " | ~ Sending Gotenna"

    .line 143
    .line 144
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    sget v3, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;->messageCount:I

    .line 155
    .line 156
    const v6, 0x7fffffff

    .line 157
    .line 158
    .line 159
    if-ne v3, v6, :cond_4

    .line 160
    .line 161
    sput v4, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;->messageCount:I

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :catch_0
    move-exception v3

    .line 165
    goto :goto_3

    .line 166
    :cond_4
    :goto_2
    sget v3, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;->messageCount:I

    .line 167
    .line 168
    add-int/2addr v3, v5

    .line 169
    sput v3, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;->messageCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTagId()I

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string p1, " | ~~ Failed to send gotenna "

    .line 194
    .line 195
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    :goto_4
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/atakmap/android/ipc/AtakBroadcast;->a()Lcom/atakmap/android/ipc/AtakBroadcast;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/atakmap/android/ipc/AtakBroadcast;->a(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "com.gotenna.atak.plugin.anymessage.RESULT"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-direct {p0, p2}, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;->processResult(Landroid/content/Intent;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "com.gotenna.atak.plugin.anymessage.RECEIVED_MESSAGE"

    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-direct {p0, p2}, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;->processInboundIntent(Landroid/content/Intent;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method

.method public final start()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;->isEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    new-instance v0, Lcom/atakmap/android/ipc/AtakBroadcast$DocumentedIntentFilter;

    .line 7
    .line 8
    const-string v1, "com.gotenna.atak.plugin.anymessage.RESULT"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/atakmap/android/ipc/AtakBroadcast$DocumentedIntentFilter;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "com.gotenna.atak.plugin.anymessage.RECEIVED_MESSAGE"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    .line 17
    .line 18
    :try_start_1
    invoke-static {}, Lcom/atakmap/android/ipc/AtakBroadcast;->a()Lcom/atakmap/android/ipc/AtakBroadcast;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, p0}, Lcom/atakmap/android/ipc/AtakBroadcast;->a(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    .line 24
    .line 25
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/atakmap/android/ipc/AtakBroadcast;->a()Lcom/atakmap/android/ipc/AtakBroadcast;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1, p0, v0}, Lcom/atakmap/android/ipc/AtakBroadcast;->a(Landroid/content/BroadcastReceiver;Lcom/atakmap/android/ipc/AtakBroadcast$DocumentedIntentFilter;)V
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_1

    .line 30
    .line 31
    .line 32
    :catch_1
    return-void
.end method
