.class public final enum Lorg/sqlite/SQLiteOpenMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sqlite/SQLiteOpenMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sqlite/SQLiteOpenMode;

.field public static final enum CREATE:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum DELETEONCLOSE:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum EXCLUSIVE:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum FULLMUTEX:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum MAIN_DB:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum MAIN_JOURNAL:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum MASTER_JOURNAL:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum NOMUTEX:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum OPEN_MEMORY:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum OPEN_URI:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum PRIVATECACHE:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum READONLY:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum READWRITE:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum SHAREDCACHE:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum SUBJOURNAL:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum TEMP_DB:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum TEMP_JOURNAL:Lorg/sqlite/SQLiteOpenMode;

.field public static final enum TRANSIENT_DB:Lorg/sqlite/SQLiteOpenMode;


# instance fields
.field public final flag:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v1, Lorg/sqlite/SQLiteOpenMode;

    .line 2
    .line 3
    move-object v0, v1

    .line 4
    const-string v2, "READONLY"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    invoke-direct {v1, v2, v3, v4}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v1, Lorg/sqlite/SQLiteOpenMode;->READONLY:Lorg/sqlite/SQLiteOpenMode;

    .line 12
    .line 13
    new-instance v2, Lorg/sqlite/SQLiteOpenMode;

    .line 14
    .line 15
    move-object v1, v2

    .line 16
    const-string v3, "READWRITE"

    .line 17
    .line 18
    const/4 v5, 0x2

    .line 19
    invoke-direct {v2, v3, v4, v5}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    .line 20
    .line 21
    .line 22
    sput-object v2, Lorg/sqlite/SQLiteOpenMode;->READWRITE:Lorg/sqlite/SQLiteOpenMode;

    .line 23
    .line 24
    new-instance v3, Lorg/sqlite/SQLiteOpenMode;

    .line 25
    .line 26
    move-object v2, v3

    .line 27
    const-string v4, "CREATE"

    .line 28
    .line 29
    const/4 v6, 0x4

    .line 30
    invoke-direct {v3, v4, v5, v6}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    sput-object v3, Lorg/sqlite/SQLiteOpenMode;->CREATE:Lorg/sqlite/SQLiteOpenMode;

    .line 34
    .line 35
    new-instance v4, Lorg/sqlite/SQLiteOpenMode;

    .line 36
    .line 37
    move-object v3, v4

    .line 38
    const-string v5, "DELETEONCLOSE"

    .line 39
    .line 40
    const/4 v7, 0x3

    .line 41
    const/16 v9, 0x8

    .line 42
    .line 43
    invoke-direct {v4, v5, v7, v9}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    .line 44
    .line 45
    .line 46
    sput-object v4, Lorg/sqlite/SQLiteOpenMode;->DELETEONCLOSE:Lorg/sqlite/SQLiteOpenMode;

    .line 47
    .line 48
    new-instance v5, Lorg/sqlite/SQLiteOpenMode;

    .line 49
    .line 50
    move-object v4, v5

    .line 51
    const-string v7, "EXCLUSIVE"

    .line 52
    .line 53
    const/16 v15, 0x10

    .line 54
    .line 55
    invoke-direct {v5, v7, v6, v15}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    .line 56
    .line 57
    .line 58
    sput-object v5, Lorg/sqlite/SQLiteOpenMode;->EXCLUSIVE:Lorg/sqlite/SQLiteOpenMode;

    .line 59
    .line 60
    new-instance v6, Lorg/sqlite/SQLiteOpenMode;

    .line 61
    .line 62
    move-object v5, v6

    .line 63
    const/4 v7, 0x5

    .line 64
    const/16 v8, 0x40

    .line 65
    .line 66
    const-string v10, "OPEN_URI"

    .line 67
    .line 68
    invoke-direct {v6, v10, v7, v8}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    .line 69
    .line 70
    .line 71
    sput-object v6, Lorg/sqlite/SQLiteOpenMode;->OPEN_URI:Lorg/sqlite/SQLiteOpenMode;

    .line 72
    .line 73
    new-instance v7, Lorg/sqlite/SQLiteOpenMode;

    .line 74
    .line 75
    move-object v6, v7

    .line 76
    const/4 v8, 0x6

    .line 77
    const/16 v10, 0x80

    .line 78
    .line 79
    const-string v11, "OPEN_MEMORY"

    .line 80
    .line 81
    invoke-direct {v7, v11, v8, v10}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    .line 82
    .line 83
    .line 84
    sput-object v7, Lorg/sqlite/SQLiteOpenMode;->OPEN_MEMORY:Lorg/sqlite/SQLiteOpenMode;

    .line 85
    .line 86
    new-instance v8, Lorg/sqlite/SQLiteOpenMode;

    .line 87
    .line 88
    move-object v7, v8

    .line 89
    const/4 v10, 0x7

    .line 90
    const/16 v11, 0x100

    .line 91
    .line 92
    const-string v12, "MAIN_DB"

    .line 93
    .line 94
    invoke-direct {v8, v12, v10, v11}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    .line 95
    .line 96
    .line 97
    sput-object v8, Lorg/sqlite/SQLiteOpenMode;->MAIN_DB:Lorg/sqlite/SQLiteOpenMode;

    .line 98
    .line 99
    new-instance v10, Lorg/sqlite/SQLiteOpenMode;

    .line 100
    .line 101
    move-object v8, v10

    .line 102
    const-string v11, "TEMP_DB"

    .line 103
    .line 104
    const/16 v12, 0x200

    .line 105
    .line 106
    invoke-direct {v10, v11, v9, v12}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    .line 107
    .line 108
    .line 109
    sput-object v10, Lorg/sqlite/SQLiteOpenMode;->TEMP_DB:Lorg/sqlite/SQLiteOpenMode;

    .line 110
    .line 111
    new-instance v10, Lorg/sqlite/SQLiteOpenMode;

    .line 112
    .line 113
    move-object v9, v10

    .line 114
    const/16 v11, 0x9

    .line 115
    .line 116
    const/16 v12, 0x400

    .line 117
    .line 118
    const-string v13, "TRANSIENT_DB"

    .line 119
    .line 120
    invoke-direct {v10, v13, v11, v12}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    .line 121
    .line 122
    .line 123
    sput-object v10, Lorg/sqlite/SQLiteOpenMode;->TRANSIENT_DB:Lorg/sqlite/SQLiteOpenMode;

    .line 124
    .line 125
    new-instance v11, Lorg/sqlite/SQLiteOpenMode;

    .line 126
    .line 127
    move-object v10, v11

    .line 128
    const/16 v12, 0xa

    .line 129
    .line 130
    const/16 v13, 0x800

    .line 131
    .line 132
    const-string v14, "MAIN_JOURNAL"

    .line 133
    .line 134
    invoke-direct {v11, v14, v12, v13}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    .line 135
    .line 136
    .line 137
    sput-object v11, Lorg/sqlite/SQLiteOpenMode;->MAIN_JOURNAL:Lorg/sqlite/SQLiteOpenMode;

    .line 138
    .line 139
    new-instance v12, Lorg/sqlite/SQLiteOpenMode;

    .line 140
    .line 141
    move-object v11, v12

    .line 142
    const/16 v13, 0xb

    .line 143
    .line 144
    const/16 v14, 0x1000

    .line 145
    .line 146
    const-string v15, "TEMP_JOURNAL"

    .line 147
    .line 148
    invoke-direct {v12, v15, v13, v14}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    .line 149
    .line 150
    .line 151
    sput-object v12, Lorg/sqlite/SQLiteOpenMode;->TEMP_JOURNAL:Lorg/sqlite/SQLiteOpenMode;

    .line 152
    .line 153
    new-instance v13, Lorg/sqlite/SQLiteOpenMode;

    .line 154
    .line 155
    move-object v12, v13

    .line 156
    const/16 v14, 0xc

    .line 157
    .line 158
    const/16 v15, 0x2000

    .line 159
    .line 160
    move-object/from16 v18, v0

    .line 161
    .line 162
    const-string v0, "SUBJOURNAL"

    .line 163
    .line 164
    invoke-direct {v13, v0, v14, v15}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    .line 165
    .line 166
    .line 167
    sput-object v13, Lorg/sqlite/SQLiteOpenMode;->SUBJOURNAL:Lorg/sqlite/SQLiteOpenMode;

    .line 168
    .line 169
    new-instance v0, Lorg/sqlite/SQLiteOpenMode;

    .line 170
    .line 171
    move-object v13, v0

    .line 172
    const/16 v14, 0xd

    .line 173
    .line 174
    const/16 v15, 0x4000

    .line 175
    .line 176
    move-object/from16 v19, v1

    .line 177
    .line 178
    const-string v1, "MASTER_JOURNAL"

    .line 179
    .line 180
    invoke-direct {v0, v1, v14, v15}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    .line 181
    .line 182
    .line 183
    sput-object v0, Lorg/sqlite/SQLiteOpenMode;->MASTER_JOURNAL:Lorg/sqlite/SQLiteOpenMode;

    .line 184
    .line 185
    new-instance v0, Lorg/sqlite/SQLiteOpenMode;

    .line 186
    .line 187
    move-object v14, v0

    .line 188
    const/16 v1, 0xe

    .line 189
    .line 190
    const v15, 0x8000

    .line 191
    .line 192
    .line 193
    move-object/from16 v20, v2

    .line 194
    .line 195
    const-string v2, "NOMUTEX"

    .line 196
    .line 197
    invoke-direct {v0, v2, v1, v15}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    .line 198
    .line 199
    .line 200
    sput-object v0, Lorg/sqlite/SQLiteOpenMode;->NOMUTEX:Lorg/sqlite/SQLiteOpenMode;

    .line 201
    .line 202
    new-instance v0, Lorg/sqlite/SQLiteOpenMode;

    .line 203
    .line 204
    const/16 v1, 0x10

    .line 205
    .line 206
    move-object v15, v0

    .line 207
    const/16 v2, 0xf

    .line 208
    .line 209
    const/high16 v1, 0x10000

    .line 210
    .line 211
    move-object/from16 v21, v3

    .line 212
    .line 213
    const-string v3, "FULLMUTEX"

    .line 214
    .line 215
    invoke-direct {v0, v3, v2, v1}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    .line 216
    .line 217
    .line 218
    sput-object v0, Lorg/sqlite/SQLiteOpenMode;->FULLMUTEX:Lorg/sqlite/SQLiteOpenMode;

    .line 219
    .line 220
    new-instance v0, Lorg/sqlite/SQLiteOpenMode;

    .line 221
    .line 222
    move-object/from16 v16, v0

    .line 223
    .line 224
    const-string v1, "SHAREDCACHE"

    .line 225
    .line 226
    const/high16 v2, 0x20000

    .line 227
    .line 228
    const/16 v3, 0x10

    .line 229
    .line 230
    invoke-direct {v0, v1, v3, v2}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    .line 231
    .line 232
    .line 233
    sput-object v0, Lorg/sqlite/SQLiteOpenMode;->SHAREDCACHE:Lorg/sqlite/SQLiteOpenMode;

    .line 234
    .line 235
    new-instance v0, Lorg/sqlite/SQLiteOpenMode;

    .line 236
    .line 237
    move-object/from16 v17, v0

    .line 238
    .line 239
    const/16 v1, 0x11

    .line 240
    .line 241
    const/high16 v2, 0x40000

    .line 242
    .line 243
    const-string v3, "PRIVATECACHE"

    .line 244
    .line 245
    invoke-direct {v0, v3, v1, v2}, Lorg/sqlite/SQLiteOpenMode;-><init>(Ljava/lang/String;II)V

    .line 246
    .line 247
    .line 248
    sput-object v0, Lorg/sqlite/SQLiteOpenMode;->PRIVATECACHE:Lorg/sqlite/SQLiteOpenMode;

    .line 249
    .line 250
    move-object/from16 v0, v18

    .line 251
    .line 252
    move-object/from16 v1, v19

    .line 253
    .line 254
    move-object/from16 v2, v20

    .line 255
    .line 256
    move-object/from16 v3, v21

    .line 257
    .line 258
    filled-new-array/range {v0 .. v17}, [Lorg/sqlite/SQLiteOpenMode;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    sput-object v0, Lorg/sqlite/SQLiteOpenMode;->$VALUES:[Lorg/sqlite/SQLiteOpenMode;

    .line 263
    .line 264
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lorg/sqlite/SQLiteOpenMode;->flag:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteOpenMode;
    .locals 1

    .line 1
    const-class v0, Lorg/sqlite/SQLiteOpenMode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/sqlite/SQLiteOpenMode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/sqlite/SQLiteOpenMode;
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteOpenMode;->$VALUES:[Lorg/sqlite/SQLiteOpenMode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/sqlite/SQLiteOpenMode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/sqlite/SQLiteOpenMode;

    .line 8
    .line 9
    return-object v0
.end method
