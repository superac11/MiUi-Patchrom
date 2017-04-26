.class public abstract Lcyanogenmod/media/ICMAudioService$Stub;
.super Landroid/os/Binder;
.source "ICMAudioService.java"

# interfaces
.implements Lcyanogenmod/media/ICMAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/media/ICMAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/media/ICMAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.media.ICMAudioService"

.field static final TRANSACTION_listAudioSessions:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string/jumbo v0, "cyanogenmod.media.ICMAudioService"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/media/ICMAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/media/ICMAudioService;
    .registers 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 37
    if-nez p0, :cond_4

    .line 38
    return-object v1

    .line 40
    :cond_4
    const-string/jumbo v1, "cyanogenmod.media.ICMAudioService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcyanogenmod/media/ICMAudioService;

    if-eqz v1, :cond_14

    .line 42
    check-cast v0, Lcyanogenmod/media/ICMAudioService;

    .end local v0           #iin:Landroid/os/IInterface;
    return-object v0

    .line 44
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcyanogenmod/media/ICMAudioService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/media/ICMAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 48
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 52
    sparse-switch p1, :sswitch_data_26

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 56
    :sswitch_9
    const-string/jumbo v2, "cyanogenmod.media.ICMAudioService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return v3

    .line 61
    :sswitch_10
    const-string/jumbo v2, "cyanogenmod.media.ICMAudioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcyanogenmod/media/ICMAudioService$Stub;->listAudioSessions(I)Ljava/util/List;

    move-result-object v1

    .line 65
    .local v1, _result:Ljava/util/List;,"Ljava/util/List<Lcyanogenmod/media/AudioSessionInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 67
    return v3

    .line 52
    nop

    :sswitch_data_26
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
