.class public Lorg/sqlite/SQLiteException;
.super Ljava/sql/SQLException;
.source "SourceFile"


# instance fields
.field private resultCode:Lorg/sqlite/SQLiteErrorCode;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/sqlite/SQLiteErrorCode;)V
    .locals 2

    .line 1
    iget v0, p2, Lorg/sqlite/SQLiteErrorCode;->code:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, p1, v1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lorg/sqlite/SQLiteException;->resultCode:Lorg/sqlite/SQLiteErrorCode;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getResultCode()Lorg/sqlite/SQLiteErrorCode;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteException;->resultCode:Lorg/sqlite/SQLiteErrorCode;

    .line 2
    .line 3
    return-object v0
.end method
