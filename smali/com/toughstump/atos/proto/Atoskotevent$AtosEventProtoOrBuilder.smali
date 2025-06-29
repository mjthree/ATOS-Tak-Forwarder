.class public interface abstract Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/toughstump/atos/proto/Atoskotevent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AtosEventProtoOrBuilder"
.end annotation


# virtual methods
.method public abstract containsTagAttributes(Ljava/lang/String;)Z
.end method

.method public abstract getAlarmActive()Z
.end method

.method public abstract getAtosColor()I
.end method

.method public abstract getAtosType()I
.end method

.method public abstract getBatteryVoltage()F
.end method

.method public abstract getCallsign()Ljava/lang/String;
.end method

.method public abstract getCallsignBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getLink()Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;
.end method

.method public abstract getManifestName()Ljava/lang/String;
.end method

.method public abstract getManifestNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getManifestUid()Ljava/lang/String;
.end method

.method public abstract getManifestUidBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPoint()Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;
.end method

.method public abstract getStaleMillis()J
.end method

.method public abstract getTagAttributes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getTagAttributesCount()I
.end method

.method public abstract getTagAttributesMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTagAttributesOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTagAttributesOrThrow(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTagId()I
.end method

.method public abstract getTempDegC()I
.end method

.method public abstract getTimeMillis()J
.end method

.method public abstract getTrack()Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;
.end method

.method public abstract hasBatteryVoltage()Z
.end method

.method public abstract hasLink()Z
.end method

.method public abstract hasPoint()Z
.end method

.method public abstract hasTempDegC()Z
.end method

.method public abstract hasTrack()Z
.end method
