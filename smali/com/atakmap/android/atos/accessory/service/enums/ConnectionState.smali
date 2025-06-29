.class public final enum Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

.field public static final enum CONNECTED:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

.field public static final enum DISCONNECTED:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

.field public static final enum ERROR:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

.field public static final enum GATT_CONNECTED:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

.field public static final enum GATT_INIT:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

.field public static final enum OFF:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

.field public static final enum OPERATIONAL:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

.field public static final enum SCANNING:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

.field public static final enum USB_ACTIVE:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

.field public static final enum USB_CONNECTED:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

.field public static final enum USB_DISCONNECTED:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;


# direct methods
.method private static synthetic $values()[Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;
    .locals 11

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->OFF:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 2
    .line 3
    sget-object v1, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->DISCONNECTED:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 4
    .line 5
    sget-object v2, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->SCANNING:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 6
    .line 7
    sget-object v3, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->CONNECTED:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 8
    .line 9
    sget-object v4, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->GATT_INIT:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 10
    .line 11
    sget-object v5, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->GATT_CONNECTED:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 12
    .line 13
    sget-object v6, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->OPERATIONAL:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 14
    .line 15
    sget-object v7, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->ERROR:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 16
    .line 17
    sget-object v8, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->USB_CONNECTED:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 18
    .line 19
    sget-object v9, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->USB_ACTIVE:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 20
    .line 21
    sget-object v10, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->USB_DISCONNECTED:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 22
    .line 23
    filled-new-array/range {v0 .. v10}, [Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 2
    .line 3
    const-string v1, "OFF"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->OFF:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 10
    .line 11
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 12
    .line 13
    const-string v1, "DISCONNECTED"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->DISCONNECTED:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 20
    .line 21
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 22
    .line 23
    const-string v1, "SCANNING"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->SCANNING:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 30
    .line 31
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 32
    .line 33
    const-string v1, "CONNECTED"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->CONNECTED:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 40
    .line 41
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 42
    .line 43
    const-string v1, "GATT_INIT"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->GATT_INIT:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 50
    .line 51
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 52
    .line 53
    const-string v1, "GATT_CONNECTED"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->GATT_CONNECTED:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 60
    .line 61
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 62
    .line 63
    const-string v1, "OPERATIONAL"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->OPERATIONAL:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 70
    .line 71
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 72
    .line 73
    const-string v1, "ERROR"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->ERROR:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 80
    .line 81
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 82
    .line 83
    const-string v1, "USB_CONNECTED"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->USB_CONNECTED:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 91
    .line 92
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 93
    .line 94
    const-string v1, "USB_ACTIVE"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2}, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->USB_ACTIVE:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 102
    .line 103
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 104
    .line 105
    const-string v1, "USB_DISCONNECTED"

    .line 106
    .line 107
    const/16 v2, 0xa

    .line 108
    .line 109
    invoke-direct {v0, v1, v2}, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->USB_DISCONNECTED:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 113
    .line 114
    invoke-static {}, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->$values()[Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sput-object v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->$VALUES:[Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 119
    .line 120
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

.method public static valueOf(Ljava/lang/String;)Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;
    .locals 1

    .line 1
    const-class v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;
    .locals 1

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->$VALUES:[Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 8
    .line 9
    return-object v0
.end method
