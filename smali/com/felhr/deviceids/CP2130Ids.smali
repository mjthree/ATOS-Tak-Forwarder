.class public Lcom/felhr/deviceids/CP2130Ids;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final cp2130Devices:[J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0x10c4

    .line 2
    .line 3
    const v1, 0x87a0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const/4 v2, 0x1

    .line 11
    new-array v2, v2, [J

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    aput-wide v0, v2, v3

    .line 15
    .line 16
    invoke-static {v2}, Lcom/felhr/deviceids/Helpers;->createTable([J)[J

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/felhr/deviceids/CP2130Ids;->cp2130Devices:[J

    .line 21
    .line 22
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
    sget-object v0, Lcom/felhr/deviceids/CP2130Ids;->cp2130Devices:[J

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
