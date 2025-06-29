.class public interface abstract Lcom/felhr/usbserial/UsbSerialInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felhr/usbserial/UsbSerialInterface$UsbReadCallback;,
        Lcom/felhr/usbserial/UsbSerialInterface$UsbParityCallback;,
        Lcom/felhr/usbserial/UsbSerialInterface$UsbOverrunCallback;,
        Lcom/felhr/usbserial/UsbSerialInterface$UsbFrameCallback;,
        Lcom/felhr/usbserial/UsbSerialInterface$UsbBreakCallback;,
        Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;,
        Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;
    }
.end annotation


# static fields
.field public static final DATA_BITS_5:I = 0x5

.field public static final DATA_BITS_6:I = 0x6

.field public static final DATA_BITS_7:I = 0x7

.field public static final DATA_BITS_8:I = 0x8

.field public static final FLOW_CONTROL_DSR_DTR:I = 0x2

.field public static final FLOW_CONTROL_OFF:I = 0x0

.field public static final FLOW_CONTROL_RTS_CTS:I = 0x1

.field public static final FLOW_CONTROL_XON_XOFF:I = 0x3

.field public static final PARITY_EVEN:I = 0x2

.field public static final PARITY_MARK:I = 0x3

.field public static final PARITY_NONE:I = 0x0

.field public static final PARITY_ODD:I = 0x1

.field public static final PARITY_SPACE:I = 0x4

.field public static final STOP_BITS_1:I = 0x1

.field public static final STOP_BITS_15:I = 0x3

.field public static final STOP_BITS_2:I = 0x2


# virtual methods
.method public abstract close()V
.end method

.method public abstract getBreak(Lcom/felhr/usbserial/UsbSerialInterface$UsbBreakCallback;)V
.end method

.method public abstract getCTS(Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;)V
.end method

.method public abstract getDSR(Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;)V
.end method

.method public abstract getFrame(Lcom/felhr/usbserial/UsbSerialInterface$UsbFrameCallback;)V
.end method

.method public abstract getOverrun(Lcom/felhr/usbserial/UsbSerialInterface$UsbOverrunCallback;)V
.end method

.method public abstract getParity(Lcom/felhr/usbserial/UsbSerialInterface$UsbParityCallback;)V
.end method

.method public abstract open()Z
.end method

.method public abstract read(Lcom/felhr/usbserial/UsbSerialInterface$UsbReadCallback;)I
.end method

.method public abstract setBaudRate(I)V
.end method

.method public abstract setBreak(Z)V
.end method

.method public abstract setDTR(Z)V
.end method

.method public abstract setDataBits(I)V
.end method

.method public abstract setFlowControl(I)V
.end method

.method public abstract setParity(I)V
.end method

.method public abstract setRTS(Z)V
.end method

.method public abstract setStopBits(I)V
.end method

.method public abstract syncClose()V
.end method

.method public abstract syncOpen()Z
.end method

.method public abstract syncRead([BI)I
.end method

.method public abstract syncRead([BIII)I
.end method

.method public abstract syncWrite([BI)I
.end method

.method public abstract syncWrite([BIII)I
.end method

.method public abstract write([B)V
.end method
