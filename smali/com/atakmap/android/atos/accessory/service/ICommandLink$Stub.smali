.class public abstract Lcom/atakmap/android/atos/accessory/service/ICommandLink$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/atakmap/android/atos/accessory/service/ICommandLink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atakmap/android/atos/accessory/service/ICommandLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/atakmap/android/atos/accessory/service/ICommandLink$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_registerDataInterface:I = 0x2

.field static final TRANSACTION_registerStatusInterface:I = 0x4

.field static final TRANSACTION_unregisterDataInterface:I = 0x1

.field static final TRANSACTION_unregisterStatusInterface:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.atakmap.android.atos.accessory.service.ICommandLink"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/atakmap/android/atos/accessory/service/ICommandLink;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.atakmap.android.atos.accessory.service.ICommandLink"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Lcom/atakmap/android/atos/accessory/service/ICommandLink;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/atakmap/android/atos/accessory/service/ICommandLink;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/ICommandLink$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/atakmap/android/atos/accessory/service/ICommandLink$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const-string v0, "com.atakmap.android.atos.accessory.service.ICommandLink"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    .line 6
    const v2, 0xffffff

    .line 7
    .line 8
    .line 9
    if-gt p1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const v2, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-ne p1, v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    if-eq p1, v1, :cond_5

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    if-eq p1, v0, :cond_4

    .line 27
    .line 28
    const/4 v0, 0x3

    .line 29
    if-eq p1, v0, :cond_3

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    if-eq p1, v0, :cond_2

    .line 33
    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lcom/atakmap/android/atos/accessory/service/ICommandLinkStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/atakmap/android/atos/accessory/service/ICommandLinkStatusListener;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p0, p1}, Lcom/atakmap/android/atos/accessory/service/ICommandLink;->registerStatusInterface(Lcom/atakmap/android/atos/accessory/service/ICommandLinkStatusListener;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1}, Lcom/atakmap/android/atos/accessory/service/ICommandLinkStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/atakmap/android/atos/accessory/service/ICommandLinkStatusListener;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {p0, p1}, Lcom/atakmap/android/atos/accessory/service/ICommandLink;->unregisterStatusInterface(Lcom/atakmap/android/atos/accessory/service/ICommandLinkStatusListener;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {p1}, Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {p0, p1}, Lcom/atakmap/android/atos/accessory/service/ICommandLink;->registerDataInterface(Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {p1}, Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-interface {p0, p1}, Lcom/atakmap/android/atos/accessory/service/ICommandLink;->unregisterDataInterface(Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    .line 97
    .line 98
    :goto_0
    return v1
.end method
