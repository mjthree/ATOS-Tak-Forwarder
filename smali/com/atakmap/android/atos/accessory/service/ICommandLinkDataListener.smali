.class public interface abstract Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener$_Parcel;,
        Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener$Stub;,
        Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.atakmap.android.atos.accessory.service.ICommandLinkDataListener"


# virtual methods
.method public abstract onBatteryUpdateReceived(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDataReceived(Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
