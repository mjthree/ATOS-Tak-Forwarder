.class public final synthetic Lcom/atakmap/android/atos/service/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;


# direct methods
.method public synthetic constructor <init>(Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/atakmap/android/atos/service/b;->a:Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/service/b;->a:Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;

    invoke-static {v0}, Lcom/atakmap/android/atos/service/CommandLinkManager$2;->a(Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;)V

    return-void
.end method
