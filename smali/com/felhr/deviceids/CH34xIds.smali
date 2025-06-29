.class public Lcom/felhr/deviceids/CH34xIds;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ch34xDevices:[J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const/16 v0, 0x4348

    .line 2
    .line 3
    const/16 v1, 0x5523

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const/16 v0, 0x7523

    .line 10
    .line 11
    const/16 v4, 0x1a86

    .line 12
    .line 13
    invoke-static {v4, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    .line 14
    .line 15
    .line 16
    move-result-wide v5

    .line 17
    invoke-static {v4, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    const/16 v7, 0x445

    .line 22
    .line 23
    invoke-static {v4, v7}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    .line 24
    .line 25
    .line 26
    move-result-wide v7

    .line 27
    const/4 v4, 0x4

    .line 28
    new-array v4, v4, [J

    .line 29
    .line 30
    const/4 v9, 0x0

    .line 31
    aput-wide v2, v4, v9

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    aput-wide v5, v4, v2

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    aput-wide v0, v4, v2

    .line 38
    .line 39
    const/4 v0, 0x3

    .line 40
    aput-wide v7, v4, v0

    .line 41
    .line 42
    invoke-static {v4}, Lcom/felhr/deviceids/Helpers;->createTable([J)[J

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lcom/felhr/deviceids/CH34xIds;->ch34xDevices:[J

    .line 47
    .line 48
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

.method public static isDeviceSupported(II)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/felhr/deviceids/CH34xIds;->ch34xDevices:[J

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/felhr/deviceids/Helpers;->exists([JII)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
