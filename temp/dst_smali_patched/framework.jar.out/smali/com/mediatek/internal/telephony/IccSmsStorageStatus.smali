.class public Lcom/mediatek/internal/telephony/IccSmsStorageStatus;
.super Ljava/lang/Object;
.source "IccSmsStorageStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/IccSmsStorageStatus$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/internal/telephony/IccSmsStorageStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mTotal:I

.field public mUsed:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/mediatek/internal/telephony/IccSmsStorageStatus$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/IccSmsStorageStatus$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;->mUsed:I

    iput v0, p0, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;->mTotal:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "used"    # I
    .param p2, "total"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;->mUsed:I

    iput p2, p0, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;->mTotal:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;->mTotal:I

    return v0
.end method

.method public getUnused()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;->mTotal:I

    iget v1, p0, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;->mUsed:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getUsedCount()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;->mUsed:I

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;->mUsed:I

    iput v0, p0, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;->mTotal:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;->mUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;->mTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method