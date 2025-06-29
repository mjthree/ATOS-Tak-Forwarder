.class public final synthetic Lcom/toughstump/atos/AtosTrackTypeKt$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/toughstump/atos/AtosTrackTypeKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/toughstump/atos/AtosTrackType;->values()[Lcom/toughstump/atos/AtosTrackType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/toughstump/atos/AtosTrackType;->PAX:Lcom/toughstump/atos/AtosTrackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/toughstump/atos/AtosTrackType;->K9:Lcom/toughstump/atos/AtosTrackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/toughstump/atos/AtosTrackType;->VEHICLE:Lcom/toughstump/atos/AtosTrackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/toughstump/atos/AtosTrackType;->BUNDLE:Lcom/toughstump/atos/AtosTrackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/toughstump/atos/AtosTrackType;->CUSTOM:Lcom/toughstump/atos/AtosTrackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/toughstump/atos/AtosTrackType;->BOAT:Lcom/toughstump/atos/AtosTrackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcom/toughstump/atos/AtosTrackType;->UAS:Lcom/toughstump/atos/AtosTrackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lcom/toughstump/atos/AtosTrackType;->EQUIPMENT:Lcom/toughstump/atos/AtosTrackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v1, Lcom/toughstump/atos/AtosTrackType;->FIXED_WING:Lcom/toughstump/atos/AtosTrackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sget-object v1, Lcom/toughstump/atos/AtosTrackType;->MEDICAL:Lcom/toughstump/atos/AtosTrackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1

    sget-object v1, Lcom/toughstump/atos/AtosTrackType;->WEAPON:Lcom/toughstump/atos/AtosTrackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1

    sget-object v1, Lcom/toughstump/atos/AtosTrackType;->ROTARY_WING:Lcom/toughstump/atos/AtosTrackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1

    sput-object v0, Lcom/toughstump/atos/AtosTrackTypeKt$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
