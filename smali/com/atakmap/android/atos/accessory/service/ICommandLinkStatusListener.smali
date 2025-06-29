.class public interface abstract Lcom/atakmap/android/atos/accessory/service/ICommandLinkStatusListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/atakmap/android/atos/accessory/service/ICommandLinkStatusListener$Stub;,
        Lcom/atakmap/android/atos/accessory/service/ICommandLinkStatusListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.atakmap.android.atos.accessory.service.ICommandLinkStatusListener"


# virtual methods
.method public abstract onStatusUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
