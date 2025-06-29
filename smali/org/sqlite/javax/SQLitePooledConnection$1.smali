.class Lorg/sqlite/javax/SQLitePooledConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sqlite/javax/SQLitePooledConnection;->getConnection()Ljava/sql/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isClosed:Z

.field final synthetic this$0:Lorg/sqlite/javax/SQLitePooledConnection;


# direct methods
.method constructor <init>(Lorg/sqlite/javax/SQLitePooledConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/sqlite/javax/SQLitePooledConnection$1;->this$0:Lorg/sqlite/javax/SQLitePooledConnection;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string v1, "close"

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    new-instance p2, Ljavax/sql/ConnectionEvent;

    .line 15
    .line 16
    iget-object p3, p0, Lorg/sqlite/javax/SQLitePooledConnection$1;->this$0:Lorg/sqlite/javax/SQLitePooledConnection;

    .line 17
    .line 18
    invoke-direct {p2, p3}, Ljavax/sql/ConnectionEvent;-><init>(Ljavax/sql/PooledConnection;)V

    .line 19
    .line 20
    .line 21
    iget-object p3, p0, Lorg/sqlite/javax/SQLitePooledConnection$1;->this$0:Lorg/sqlite/javax/SQLitePooledConnection;

    .line 22
    .line 23
    iget-object p3, p3, Lorg/sqlite/javax/SQLitePooledConnection;->listeners:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    sub-int/2addr p3, p1

    .line 30
    :goto_0
    if-ltz p3, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection$1;->this$0:Lorg/sqlite/javax/SQLitePooledConnection;

    .line 33
    .line 34
    iget-object v0, v0, Lorg/sqlite/javax/SQLitePooledConnection;->listeners:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljavax/sql/ConnectionEventListener;

    .line 41
    .line 42
    invoke-interface {v0, p2}, Ljavax/sql/ConnectionEventListener;->connectionClosed(Ljavax/sql/ConnectionEvent;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 p3, p3, -0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p1

    .line 49
    goto :goto_1

    .line 50
    :catch_1
    move-exception p2

    .line 51
    goto :goto_2

    .line 52
    :cond_0
    iget-object p2, p0, Lorg/sqlite/javax/SQLitePooledConnection$1;->this$0:Lorg/sqlite/javax/SQLitePooledConnection;

    .line 53
    .line 54
    iget-object p2, p2, Lorg/sqlite/javax/SQLitePooledConnection;->physicalConn:Lorg/sqlite/SQLiteConnection;

    .line 55
    .line 56
    invoke-virtual {p2}, Lorg/sqlite/SQLiteConnection;->getAutoCommit()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-nez p2, :cond_1

    .line 61
    .line 62
    iget-object p2, p0, Lorg/sqlite/javax/SQLitePooledConnection$1;->this$0:Lorg/sqlite/javax/SQLitePooledConnection;

    .line 63
    .line 64
    iget-object p2, p2, Lorg/sqlite/javax/SQLitePooledConnection;->physicalConn:Lorg/sqlite/SQLiteConnection;

    .line 65
    .line 66
    invoke-virtual {p2}, Lorg/sqlite/SQLiteConnection;->rollback()V

    .line 67
    .line 68
    .line 69
    :cond_1
    iget-object p2, p0, Lorg/sqlite/javax/SQLitePooledConnection$1;->this$0:Lorg/sqlite/javax/SQLitePooledConnection;

    .line 70
    .line 71
    iget-object p2, p2, Lorg/sqlite/javax/SQLitePooledConnection;->physicalConn:Lorg/sqlite/SQLiteConnection;

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Lorg/sqlite/SQLiteConnection;->setAutoCommit(Z)V

    .line 74
    .line 75
    .line 76
    iput-boolean p1, p0, Lorg/sqlite/javax/SQLitePooledConnection$1;->isClosed:Z

    .line 77
    .line 78
    const/4 p1, 0x0

    .line 79
    return-object p1

    .line 80
    :cond_2
    const-string v1, "isClosed"

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    iget-boolean v0, p0, Lorg/sqlite/javax/SQLitePooledConnection$1;->isClosed:Z

    .line 89
    .line 90
    if-nez v0, :cond_3

    .line 91
    .line 92
    iget-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection$1;->this$0:Lorg/sqlite/javax/SQLitePooledConnection;

    .line 93
    .line 94
    iget-object v0, v0, Lorg/sqlite/javax/SQLitePooledConnection;->physicalConn:Lorg/sqlite/SQLiteConnection;

    .line 95
    .line 96
    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    check-cast p2, Ljava/lang/Boolean;

    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    iput-boolean p2, p0, Lorg/sqlite/javax/SQLitePooledConnection$1;->isClosed:Z

    .line 107
    .line 108
    :cond_3
    iget-boolean p2, p0, Lorg/sqlite/javax/SQLitePooledConnection$1;->isClosed:Z

    .line 109
    .line 110
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    return-object p1

    .line 115
    :cond_4
    iget-boolean v0, p0, Lorg/sqlite/javax/SQLitePooledConnection$1;->isClosed:Z

    .line 116
    .line 117
    if-nez v0, :cond_5

    .line 118
    .line 119
    iget-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection$1;->this$0:Lorg/sqlite/javax/SQLitePooledConnection;

    .line 120
    .line 121
    iget-object v0, v0, Lorg/sqlite/javax/SQLitePooledConnection;->physicalConn:Lorg/sqlite/SQLiteConnection;

    .line 122
    .line 123
    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    return-object p1

    .line 128
    :cond_5
    new-instance p2, Ljava/sql/SQLException;

    .line 129
    .line 130
    const-string p3, "Connection is closed"

    .line 131
    .line 132
    invoke-direct {p2, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_1
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    throw p1

    .line 141
    :goto_2
    const-string p3, "database connection closed"

    .line 142
    .line 143
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p3

    .line 151
    if-eqz p3, :cond_6

    .line 152
    .line 153
    new-instance p3, Ljavax/sql/ConnectionEvent;

    .line 154
    .line 155
    iget-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection$1;->this$0:Lorg/sqlite/javax/SQLitePooledConnection;

    .line 156
    .line 157
    invoke-direct {p3, v0, p2}, Ljavax/sql/ConnectionEvent;-><init>(Ljavax/sql/PooledConnection;Ljava/sql/SQLException;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection$1;->this$0:Lorg/sqlite/javax/SQLitePooledConnection;

    .line 161
    .line 162
    iget-object v0, v0, Lorg/sqlite/javax/SQLitePooledConnection;->listeners:Ljava/util/List;

    .line 163
    .line 164
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    sub-int/2addr v0, p1

    .line 169
    :goto_3
    if-ltz v0, :cond_6

    .line 170
    .line 171
    iget-object p1, p0, Lorg/sqlite/javax/SQLitePooledConnection$1;->this$0:Lorg/sqlite/javax/SQLitePooledConnection;

    .line 172
    .line 173
    iget-object p1, p1, Lorg/sqlite/javax/SQLitePooledConnection;->listeners:Ljava/util/List;

    .line 174
    .line 175
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    check-cast p1, Ljavax/sql/ConnectionEventListener;

    .line 180
    .line 181
    invoke-interface {p1, p3}, Ljavax/sql/ConnectionEventListener;->connectionErrorOccurred(Ljavax/sql/ConnectionEvent;)V

    .line 182
    .line 183
    .line 184
    add-int/lit8 v0, v0, -0x1

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_6
    throw p2
.end method
