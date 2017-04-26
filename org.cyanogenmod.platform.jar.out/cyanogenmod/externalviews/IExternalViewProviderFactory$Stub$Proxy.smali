.class Lcyanogenmod/externalviews/IExternalViewProviderFactory$Stub$Proxy;
.super Ljava/lang/Object;
.source "IExternalViewProviderFactory.java"

# interfaces
.implements Lcyanogenmod/externalviews/IExternalViewProviderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/externalviews/IExternalViewProviderFactory$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .parameter "remote"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcyanogenmod/externalviews/IExternalViewProviderFactory$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 80
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcyanogenmod/externalviews/IExternalViewProviderFactory$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public createExternalView(Landroid/os/Bundle;)Landroid/os/IBinder;
    .registers 8
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 95
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 98
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "cyanogenmod.externalviews.IExternalViewProviderFactory"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 99
    if-eqz p1, :cond_2d

    .line 100
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 106
    :goto_18
    iget-object v3, p0, Lcyanogenmod/externalviews/IExternalViewProviderFactory$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 107
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 108
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_32

    move-result-object v2

    .line 111
    .local v2, _result:Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 114
    return-object v2

    .line 104
    .end local v2           #_result:Landroid/os/IBinder;
    :cond_2d
    const/4 v3, 0x0

    :try_start_2e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_18

    .line 110
    :catchall_32
    move-exception v3

    .line 111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 110
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    const-string/jumbo v0, "cyanogenmod.externalviews.IExternalViewProviderFactory"

    return-object v0
.end method
