.class Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay$BluetoothStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothStatus"
.end annotation


# instance fields
.field public message:Ljava/lang/String;

.field public state:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

.field final synthetic this$0:Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;


# direct methods
.method constructor <init>(Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay$BluetoothStatus;->this$0:Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay$BluetoothStatus;->message:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay$BluetoothStatus;->state:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 9
    .line 10
    return-void
.end method
