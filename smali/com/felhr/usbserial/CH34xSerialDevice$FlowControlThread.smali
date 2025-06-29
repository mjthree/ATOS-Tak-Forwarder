.class Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;
.super Lcom/felhr/usbserial/AbstractWorkerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felhr/usbserial/CH34xSerialDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlowControlThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felhr/usbserial/CH34xSerialDevice;

.field private final time:J


# direct methods
.method private constructor <init>(Lcom/felhr/usbserial/CH34xSerialDevice;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CH34xSerialDevice;

    invoke-direct {p0}, Lcom/felhr/usbserial/AbstractWorkerThread;-><init>()V

    const-wide/16 v0, 0x64

    .line 2
    iput-wide v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;->time:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/felhr/usbserial/CH34xSerialDevice;Lcom/felhr/usbserial/CH34xSerialDevice$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;-><init>(Lcom/felhr/usbserial/CH34xSerialDevice;)V

    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/felhr/usbserial/AbstractWorkerThread;->firstTime:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CH34xSerialDevice;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/felhr/usbserial/CH34xSerialDevice;->access$100(Lcom/felhr/usbserial/CH34xSerialDevice;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;->pollForCTS()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CH34xSerialDevice;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/felhr/usbserial/CH34xSerialDevice;->access$200(Lcom/felhr/usbserial/CH34xSerialDevice;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eq v1, v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CH34xSerialDevice;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/felhr/usbserial/CH34xSerialDevice;->access$200(Lcom/felhr/usbserial/CH34xSerialDevice;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    xor-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/felhr/usbserial/CH34xSerialDevice;->access$202(Lcom/felhr/usbserial/CH34xSerialDevice;Z)Z

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CH34xSerialDevice;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/felhr/usbserial/CH34xSerialDevice;->access$300(Lcom/felhr/usbserial/CH34xSerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CH34xSerialDevice;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/felhr/usbserial/CH34xSerialDevice;->access$300(Lcom/felhr/usbserial/CH34xSerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CH34xSerialDevice;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/felhr/usbserial/CH34xSerialDevice;->access$200(Lcom/felhr/usbserial/CH34xSerialDevice;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-interface {v0, v1}, Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;->onCTSChanged(Z)V

    .line 57
    .line 58
    .line 59
    :cond_0
    iget-object v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CH34xSerialDevice;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/felhr/usbserial/CH34xSerialDevice;->access$400(Lcom/felhr/usbserial/CH34xSerialDevice;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;->pollForDSR()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iget-object v1, p0, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CH34xSerialDevice;

    .line 72
    .line 73
    invoke-static {v1}, Lcom/felhr/usbserial/CH34xSerialDevice;->access$500(Lcom/felhr/usbserial/CH34xSerialDevice;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eq v1, v0, :cond_4

    .line 78
    .line 79
    iget-object v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CH34xSerialDevice;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/felhr/usbserial/CH34xSerialDevice;->access$500(Lcom/felhr/usbserial/CH34xSerialDevice;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    xor-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    invoke-static {v0, v1}, Lcom/felhr/usbserial/CH34xSerialDevice;->access$502(Lcom/felhr/usbserial/CH34xSerialDevice;Z)Z

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CH34xSerialDevice;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/felhr/usbserial/CH34xSerialDevice;->access$600(Lcom/felhr/usbserial/CH34xSerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    iget-object v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CH34xSerialDevice;

    .line 99
    .line 100
    invoke-static {v0}, Lcom/felhr/usbserial/CH34xSerialDevice;->access$600(Lcom/felhr/usbserial/CH34xSerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CH34xSerialDevice;

    .line 105
    .line 106
    invoke-static {v1}, Lcom/felhr/usbserial/CH34xSerialDevice;->access$500(Lcom/felhr/usbserial/CH34xSerialDevice;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-interface {v0, v1}, Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;->onDSRChanged(Z)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CH34xSerialDevice;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/felhr/usbserial/CH34xSerialDevice;->access$100(Lcom/felhr/usbserial/CH34xSerialDevice;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_2

    .line 121
    .line 122
    iget-object v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CH34xSerialDevice;

    .line 123
    .line 124
    invoke-static {v0}, Lcom/felhr/usbserial/CH34xSerialDevice;->access$300(Lcom/felhr/usbserial/CH34xSerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    if-eqz v0, :cond_2

    .line 129
    .line 130
    iget-object v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CH34xSerialDevice;

    .line 131
    .line 132
    invoke-static {v0}, Lcom/felhr/usbserial/CH34xSerialDevice;->access$300(Lcom/felhr/usbserial/CH34xSerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CH34xSerialDevice;

    .line 137
    .line 138
    invoke-static {v1}, Lcom/felhr/usbserial/CH34xSerialDevice;->access$200(Lcom/felhr/usbserial/CH34xSerialDevice;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-interface {v0, v1}, Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;->onCTSChanged(Z)V

    .line 143
    .line 144
    .line 145
    :cond_2
    iget-object v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CH34xSerialDevice;

    .line 146
    .line 147
    invoke-static {v0}, Lcom/felhr/usbserial/CH34xSerialDevice;->access$400(Lcom/felhr/usbserial/CH34xSerialDevice;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_3

    .line 152
    .line 153
    iget-object v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CH34xSerialDevice;

    .line 154
    .line 155
    invoke-static {v0}, Lcom/felhr/usbserial/CH34xSerialDevice;->access$600(Lcom/felhr/usbserial/CH34xSerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-eqz v0, :cond_3

    .line 160
    .line 161
    iget-object v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CH34xSerialDevice;

    .line 162
    .line 163
    invoke-static {v0}, Lcom/felhr/usbserial/CH34xSerialDevice;->access$600(Lcom/felhr/usbserial/CH34xSerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CH34xSerialDevice;

    .line 168
    .line 169
    invoke-static {v1}, Lcom/felhr/usbserial/CH34xSerialDevice;->access$500(Lcom/felhr/usbserial/CH34xSerialDevice;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    invoke-interface {v0, v1}, Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;->onDSRChanged(Z)V

    .line 174
    .line 175
    .line 176
    :cond_3
    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/felhr/usbserial/AbstractWorkerThread;->firstTime:Z

    .line 178
    .line 179
    :cond_4
    :goto_0
    return-void
.end method

.method public pollForCTS()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x64

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_1

    .line 10
    :catch_0
    move-exception v0

    .line 11
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    iget-object v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CH34xSerialDevice;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/felhr/usbserial/CH34xSerialDevice;->access$700(Lcom/felhr/usbserial/CH34xSerialDevice;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    throw v0
.end method

.method public pollForDSR()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x64

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_1

    .line 10
    :catch_0
    move-exception v0

    .line 11
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    iget-object v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CH34xSerialDevice;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/felhr/usbserial/CH34xSerialDevice;->access$800(Lcom/felhr/usbserial/CH34xSerialDevice;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    throw v0
.end method
