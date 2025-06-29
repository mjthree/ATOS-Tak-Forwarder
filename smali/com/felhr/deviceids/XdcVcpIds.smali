.class public Lcom/felhr/deviceids/XdcVcpIds;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final xdcvcpDevices:[J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const/16 v0, 0x232

    .line 2
    .line 3
    const/16 v1, 0x264d

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const/16 v0, 0x120

    .line 10
    .line 11
    invoke-static {v1, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const/16 v4, 0x483

    .line 16
    .line 17
    const/16 v5, 0x5740

    .line 18
    .line 19
    invoke-static {v4, v5}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    const/4 v6, 0x3

    .line 24
    new-array v6, v6, [J

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    aput-wide v2, v6, v7

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    aput-wide v0, v6, v2

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    aput-wide v4, v6, v0

    .line 34
    .line 35
    invoke-static {v6}, Lcom/felhr/deviceids/Helpers;->createTable([J)[J

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/felhr/deviceids/XdcVcpIds;->xdcvcpDevices:[J

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>()V
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
    sget-object v0, Lcom/felhr/deviceids/XdcVcpIds;->xdcvcpDevices:[J

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
