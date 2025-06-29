.class public final enum Lorg/sqlite/SQLiteConfig$Encoding;
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
    name = "Encoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sqlite/SQLiteConfig$Encoding;",
        ">;",
        "Lorg/sqlite/SQLiteConfig$PragmaValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sqlite/SQLiteConfig$Encoding;

.field public static final enum UTF16:Lorg/sqlite/SQLiteConfig$Encoding;

.field public static final enum UTF16_BIG_ENDIAN:Lorg/sqlite/SQLiteConfig$Encoding;

.field public static final enum UTF16_LITTLE_ENDIAN:Lorg/sqlite/SQLiteConfig$Encoding;

.field public static final enum UTF8:Lorg/sqlite/SQLiteConfig$Encoding;

.field public static final enum UTF_16:Lorg/sqlite/SQLiteConfig$Encoding;

.field public static final enum UTF_16BE:Lorg/sqlite/SQLiteConfig$Encoding;

.field public static final enum UTF_16LE:Lorg/sqlite/SQLiteConfig$Encoding;

.field public static final enum UTF_8:Lorg/sqlite/SQLiteConfig$Encoding;


# instance fields
.field public final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lorg/sqlite/SQLiteConfig$Encoding;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "\'UTF-8\'"

    .line 5
    .line 6
    const-string v3, "UTF8"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lorg/sqlite/SQLiteConfig$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lorg/sqlite/SQLiteConfig$Encoding;->UTF8:Lorg/sqlite/SQLiteConfig$Encoding;

    .line 12
    .line 13
    new-instance v1, Lorg/sqlite/SQLiteConfig$Encoding;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const-string v3, "\'UTF-16\'"

    .line 17
    .line 18
    const-string v4, "UTF16"

    .line 19
    .line 20
    invoke-direct {v1, v4, v2, v3}, Lorg/sqlite/SQLiteConfig$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lorg/sqlite/SQLiteConfig$Encoding;->UTF16:Lorg/sqlite/SQLiteConfig$Encoding;

    .line 24
    .line 25
    new-instance v2, Lorg/sqlite/SQLiteConfig$Encoding;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    const-string v4, "\'UTF-16le\'"

    .line 29
    .line 30
    const-string v5, "UTF16_LITTLE_ENDIAN"

    .line 31
    .line 32
    invoke-direct {v2, v5, v3, v4}, Lorg/sqlite/SQLiteConfig$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lorg/sqlite/SQLiteConfig$Encoding;->UTF16_LITTLE_ENDIAN:Lorg/sqlite/SQLiteConfig$Encoding;

    .line 36
    .line 37
    new-instance v3, Lorg/sqlite/SQLiteConfig$Encoding;

    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    const-string v5, "\'UTF-16be\'"

    .line 41
    .line 42
    const-string v6, "UTF16_BIG_ENDIAN"

    .line 43
    .line 44
    invoke-direct {v3, v6, v4, v5}, Lorg/sqlite/SQLiteConfig$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v3, Lorg/sqlite/SQLiteConfig$Encoding;->UTF16_BIG_ENDIAN:Lorg/sqlite/SQLiteConfig$Encoding;

    .line 48
    .line 49
    new-instance v4, Lorg/sqlite/SQLiteConfig$Encoding;

    .line 50
    .line 51
    const-string v5, "UTF_8"

    .line 52
    .line 53
    const/4 v6, 0x4

    .line 54
    invoke-direct {v4, v5, v6, v0}, Lorg/sqlite/SQLiteConfig$Encoding;-><init>(Ljava/lang/String;ILorg/sqlite/SQLiteConfig$Encoding;)V

    .line 55
    .line 56
    .line 57
    sput-object v4, Lorg/sqlite/SQLiteConfig$Encoding;->UTF_8:Lorg/sqlite/SQLiteConfig$Encoding;

    .line 58
    .line 59
    new-instance v5, Lorg/sqlite/SQLiteConfig$Encoding;

    .line 60
    .line 61
    const-string v6, "UTF_16"

    .line 62
    .line 63
    const/4 v7, 0x5

    .line 64
    invoke-direct {v5, v6, v7, v1}, Lorg/sqlite/SQLiteConfig$Encoding;-><init>(Ljava/lang/String;ILorg/sqlite/SQLiteConfig$Encoding;)V

    .line 65
    .line 66
    .line 67
    sput-object v5, Lorg/sqlite/SQLiteConfig$Encoding;->UTF_16:Lorg/sqlite/SQLiteConfig$Encoding;

    .line 68
    .line 69
    new-instance v6, Lorg/sqlite/SQLiteConfig$Encoding;

    .line 70
    .line 71
    const-string v7, "UTF_16LE"

    .line 72
    .line 73
    const/4 v8, 0x6

    .line 74
    invoke-direct {v6, v7, v8, v2}, Lorg/sqlite/SQLiteConfig$Encoding;-><init>(Ljava/lang/String;ILorg/sqlite/SQLiteConfig$Encoding;)V

    .line 75
    .line 76
    .line 77
    sput-object v6, Lorg/sqlite/SQLiteConfig$Encoding;->UTF_16LE:Lorg/sqlite/SQLiteConfig$Encoding;

    .line 78
    .line 79
    new-instance v7, Lorg/sqlite/SQLiteConfig$Encoding;

    .line 80
    .line 81
    const-string v8, "UTF_16BE"

    .line 82
    .line 83
    const/4 v9, 0x7

    .line 84
    invoke-direct {v7, v8, v9, v3}, Lorg/sqlite/SQLiteConfig$Encoding;-><init>(Ljava/lang/String;ILorg/sqlite/SQLiteConfig$Encoding;)V

    .line 85
    .line 86
    .line 87
    sput-object v7, Lorg/sqlite/SQLiteConfig$Encoding;->UTF_16BE:Lorg/sqlite/SQLiteConfig$Encoding;

    .line 88
    .line 89
    filled-new-array/range {v0 .. v7}, [Lorg/sqlite/SQLiteConfig$Encoding;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sput-object v0, Lorg/sqlite/SQLiteConfig$Encoding;->$VALUES:[Lorg/sqlite/SQLiteConfig$Encoding;

    .line 94
    .line 95
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lorg/sqlite/SQLiteConfig$Encoding;->typeName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/sqlite/SQLiteConfig$Encoding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sqlite/SQLiteConfig$Encoding;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Lorg/sqlite/SQLiteConfig$Encoding;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/sqlite/SQLiteConfig$Encoding;->typeName:Ljava/lang/String;

    return-void
.end method

.method public static getEncoding(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$Encoding;
    .locals 2

    .line 1
    const-string v0, "-"

    .line 2
    .line 3
    const-string v1, "_"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lorg/sqlite/SQLiteConfig$Encoding;->valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$Encoding;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$Encoding;
    .locals 1

    .line 1
    const-class v0, Lorg/sqlite/SQLiteConfig$Encoding;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/sqlite/SQLiteConfig$Encoding;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/sqlite/SQLiteConfig$Encoding;
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Encoding;->$VALUES:[Lorg/sqlite/SQLiteConfig$Encoding;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/sqlite/SQLiteConfig$Encoding;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/sqlite/SQLiteConfig$Encoding;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig$Encoding;->typeName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
