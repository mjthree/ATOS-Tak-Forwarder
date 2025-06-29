.class public final enum Lorg/sqlite/SQLiteConfig$TransactionMode;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/sqlite/SQLiteConfig$PragmaValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/SQLiteConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransactionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sqlite/SQLiteConfig$TransactionMode;",
        ">;",
        "Lorg/sqlite/SQLiteConfig$PragmaValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sqlite/SQLiteConfig$TransactionMode;

.field public static final enum DEFERRED:Lorg/sqlite/SQLiteConfig$TransactionMode;

.field public static final enum DEFFERED:Lorg/sqlite/SQLiteConfig$TransactionMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum EXCLUSIVE:Lorg/sqlite/SQLiteConfig$TransactionMode;

.field public static final enum IMMEDIATE:Lorg/sqlite/SQLiteConfig$TransactionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 2
    .line 3
    const-string v1, "DEFFERED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/sqlite/SQLiteConfig$TransactionMode;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/sqlite/SQLiteConfig$TransactionMode;->DEFFERED:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 10
    .line 11
    new-instance v1, Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 12
    .line 13
    const-string v2, "DEFERRED"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lorg/sqlite/SQLiteConfig$TransactionMode;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lorg/sqlite/SQLiteConfig$TransactionMode;->DEFERRED:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 20
    .line 21
    new-instance v2, Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 22
    .line 23
    const-string v3, "IMMEDIATE"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lorg/sqlite/SQLiteConfig$TransactionMode;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lorg/sqlite/SQLiteConfig$TransactionMode;->IMMEDIATE:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 30
    .line 31
    new-instance v3, Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 32
    .line 33
    const-string v4, "EXCLUSIVE"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Lorg/sqlite/SQLiteConfig$TransactionMode;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lorg/sqlite/SQLiteConfig$TransactionMode;->EXCLUSIVE:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 40
    .line 41
    filled-new-array {v0, v1, v2, v3}, [Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lorg/sqlite/SQLiteConfig$TransactionMode;->$VALUES:[Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 46
    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getMode(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$TransactionMode;
    .locals 1

    .line 1
    const-string v0, "DEFFERED"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lorg/sqlite/SQLiteConfig$TransactionMode;->DEFERRED:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lorg/sqlite/SQLiteConfig$TransactionMode;->valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$TransactionMode;
    .locals 1

    .line 1
    const-class v0, Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/sqlite/SQLiteConfig$TransactionMode;
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$TransactionMode;->$VALUES:[Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/sqlite/SQLiteConfig$TransactionMode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
