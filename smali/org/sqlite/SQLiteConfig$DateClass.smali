.class public final enum Lorg/sqlite/SQLiteConfig$DateClass;
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
    name = "DateClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sqlite/SQLiteConfig$DateClass;",
        ">;",
        "Lorg/sqlite/SQLiteConfig$PragmaValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sqlite/SQLiteConfig$DateClass;

.field public static final enum INTEGER:Lorg/sqlite/SQLiteConfig$DateClass;

.field public static final enum REAL:Lorg/sqlite/SQLiteConfig$DateClass;

.field public static final enum TEXT:Lorg/sqlite/SQLiteConfig$DateClass;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/sqlite/SQLiteConfig$DateClass;

    .line 2
    .line 3
    const-string v1, "INTEGER"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/sqlite/SQLiteConfig$DateClass;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/sqlite/SQLiteConfig$DateClass;->INTEGER:Lorg/sqlite/SQLiteConfig$DateClass;

    .line 10
    .line 11
    new-instance v1, Lorg/sqlite/SQLiteConfig$DateClass;

    .line 12
    .line 13
    const-string v2, "TEXT"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lorg/sqlite/SQLiteConfig$DateClass;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lorg/sqlite/SQLiteConfig$DateClass;->TEXT:Lorg/sqlite/SQLiteConfig$DateClass;

    .line 20
    .line 21
    new-instance v2, Lorg/sqlite/SQLiteConfig$DateClass;

    .line 22
    .line 23
    const-string v3, "REAL"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lorg/sqlite/SQLiteConfig$DateClass;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lorg/sqlite/SQLiteConfig$DateClass;->REAL:Lorg/sqlite/SQLiteConfig$DateClass;

    .line 30
    .line 31
    filled-new-array {v0, v1, v2}, [Lorg/sqlite/SQLiteConfig$DateClass;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lorg/sqlite/SQLiteConfig$DateClass;->$VALUES:[Lorg/sqlite/SQLiteConfig$DateClass;

    .line 36
    .line 37
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

.method public static getDateClass(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$DateClass;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lorg/sqlite/SQLiteConfig$DateClass;->valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$DateClass;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$DateClass;
    .locals 1

    .line 1
    const-class v0, Lorg/sqlite/SQLiteConfig$DateClass;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/sqlite/SQLiteConfig$DateClass;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/sqlite/SQLiteConfig$DateClass;
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$DateClass;->$VALUES:[Lorg/sqlite/SQLiteConfig$DateClass;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/sqlite/SQLiteConfig$DateClass;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/sqlite/SQLiteConfig$DateClass;

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
