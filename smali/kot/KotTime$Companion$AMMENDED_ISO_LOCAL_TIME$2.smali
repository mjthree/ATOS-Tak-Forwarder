.class final Lkot/KotTime$Companion$AMMENDED_ISO_LOCAL_TIME$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkot/KotTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/time/format/DateTimeFormatter;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkot/KotTime$Companion$AMMENDED_ISO_LOCAL_TIME$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkot/KotTime$Companion$AMMENDED_ISO_LOCAL_TIME$2;

    invoke-direct {v0}, Lkot/KotTime$Companion$AMMENDED_ISO_LOCAL_TIME$2;-><init>()V

    sput-object v0, Lkot/KotTime$Companion$AMMENDED_ISO_LOCAL_TIME$2;->INSTANCE:Lkot/KotTime$Companion$AMMENDED_ISO_LOCAL_TIME$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkot/KotTime$Companion$AMMENDED_ISO_LOCAL_TIME$2;->invoke()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/time/format/DateTimeFormatter;
    .locals 5

    .line 2
    invoke-static {}, Latakplugin/atos/S0;->a()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 3
    invoke-static {}, Latakplugin/atos/R0;->a()Ljava/time/temporal/ChronoField;

    move-result-object v1

    invoke-static {v1}, Latakplugin/atos/T0;->a(Ljava/lang/Object;)Ljava/time/temporal/TemporalField;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Latakplugin/atos/U0;->a(Ljava/time/format/DateTimeFormatterBuilder;Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    .line 4
    invoke-static {v0, v1}, Latakplugin/atos/Y0;->a(Ljava/time/format/DateTimeFormatterBuilder;C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 5
    invoke-static {}, Latakplugin/atos/Z0;->a()Ljava/time/temporal/ChronoField;

    move-result-object v3

    invoke-static {v3}, Latakplugin/atos/T0;->a(Ljava/lang/Object;)Ljava/time/temporal/TemporalField;

    move-result-object v3

    invoke-static {v0, v3, v2}, Latakplugin/atos/U0;->a(Ljava/time/format/DateTimeFormatterBuilder;Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 6
    invoke-static {v0}, Latakplugin/atos/a1;->a(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 7
    invoke-static {v0, v1}, Latakplugin/atos/Y0;->a(Ljava/time/format/DateTimeFormatterBuilder;C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 8
    invoke-static {}, Latakplugin/atos/b1;->a()Ljava/time/temporal/ChronoField;

    move-result-object v1

    invoke-static {v1}, Latakplugin/atos/T0;->a(Ljava/lang/Object;)Ljava/time/temporal/TemporalField;

    move-result-object v1

    invoke-static {v0, v1, v2}, Latakplugin/atos/U0;->a(Ljava/time/format/DateTimeFormatterBuilder;Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 9
    invoke-static {}, Latakplugin/atos/V0;->a()Ljava/time/temporal/ChronoField;

    move-result-object v1

    invoke-static {v1}, Latakplugin/atos/T0;->a(Ljava/lang/Object;)Ljava/time/temporal/TemporalField;

    move-result-object v1

    const/16 v3, 0x9

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Latakplugin/atos/W0;->a(Ljava/time/format/DateTimeFormatterBuilder;Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 10
    invoke-static {v0}, Latakplugin/atos/X0;->a(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method
