.class interface abstract Lcom/google/protobuf/MutabilityOracle;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IMMUTABLE:Lcom/google/protobuf/MutabilityOracle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/MutabilityOracle$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/protobuf/MutabilityOracle$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/protobuf/MutabilityOracle;->IMMUTABLE:Lcom/google/protobuf/MutabilityOracle;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract ensureMutable()V
.end method
