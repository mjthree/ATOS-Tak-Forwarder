.class public Lcom/marshallradio/gpstracking/Config;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static appId:Ljava/lang/String; = ""

.field public static params:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/marshallradio/gpstracking/Config;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getParams()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/marshallradio/gpstracking/Config;->params:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public static setAppId(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/marshallradio/gpstracking/Config;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setParams(Ljava/lang/Object;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/marshallradio/gpstracking/Config;->params:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method
