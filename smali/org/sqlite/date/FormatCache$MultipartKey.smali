.class Lorg/sqlite/date/FormatCache$MultipartKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/date/FormatCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultipartKey"
.end annotation


# instance fields
.field private hashCode:I

.field private final keys:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/sqlite/date/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/date/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lorg/sqlite/date/FormatCache$MultipartKey;

    .line 4
    .line 5
    iget-object p1, p1, Lorg/sqlite/date/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    .line 6
    .line 7
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Lorg/sqlite/date/FormatCache$MultipartKey;->hashCode:I

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lorg/sqlite/date/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    if-ge v2, v1, :cond_1

    .line 11
    .line 12
    aget-object v4, v0, v2

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    mul-int/lit8 v3, v3, 0x7

    .line 17
    .line 18
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    add-int/2addr v3, v4

    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iput v3, p0, Lorg/sqlite/date/FormatCache$MultipartKey;->hashCode:I

    .line 27
    .line 28
    :cond_2
    iget v0, p0, Lorg/sqlite/date/FormatCache$MultipartKey;->hashCode:I

    .line 29
    .line 30
    return v0
.end method
