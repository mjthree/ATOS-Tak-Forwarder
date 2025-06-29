.class public interface abstract Lcom/atakmap/android/atos/accessory/service/ICommandLink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/atakmap/android/atos/accessory/service/ICommandLink$Stub;,
        Lcom/atakmap/android/atos/accessory/service/ICommandLink$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.atakmap.android.atos.accessory.service.ICommandLink"


# virtual methods
.method public abstract registerDataInterface(Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerStatusInterface(Lcom/atakmap/android/atos/accessory/service/ICommandLinkStatusListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterDataInterface(Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterStatusInterface(Lcom/atakmap/android/atos/accessory/service/ICommandLinkStatusListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
