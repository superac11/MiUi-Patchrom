.class public abstract Lcyanogenmod/app/IPartnerInterface$Stub;
.super Landroid/os/Binder;
.source "IPartnerInterface.java"

# interfaces
.implements Lcyanogenmod/app/IPartnerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/IPartnerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/IPartnerInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.app.IPartnerInterface"

.field static final TRANSACTION_getCurrentHotwordPackageName:I = 0x6

.field static final TRANSACTION_reboot:I = 0x5

.field static final TRANSACTION_setAirplaneModeEnabled_0:I = 0x1

.field static final TRANSACTION_setMobileDataEnabled:I = 0x2

.field static final TRANSACTION_setZenMode:I = 0x3

.field static final TRANSACTION_setZenModeWithDuration:I = 0x7

.field static final TRANSACTION_shutdown:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string/jumbo v0, "cyanogenmod.app.IPartnerInterface"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/app/IPartnerInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/IPartnerInterface;
    .registers 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 57
    if-nez p0, :cond_4

    .line 58
    return-object v1

    .line 60
    :cond_4
    const-string/jumbo v1, "cyanogenmod.app.IPartnerInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcyanogenmod/app/IPartnerInterface;

    if-eqz v1, :cond_14

    .line 62
    check-cast v0, Lcyanogenmod/app/IPartnerInterface;

    .end local v0           #iin:Landroid/os/IInterface;
    return-object v0

    .line 64
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcyanogenmod/app/IPartnerInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/app/IPartnerInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 68
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
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
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 72
    sparse-switch p1, :sswitch_data_9c

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 76
    :sswitch_a
    const-string/jumbo v6, "cyanogenmod.app.IPartnerInterface"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    return v7

    .line 81
    :sswitch_11
    const-string/jumbo v6, "cyanogenmod.app.IPartnerInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_25

    const/4 v1, 0x1

    .line 84
    .local v1, _arg0:Z
    :goto_1e
    invoke-virtual {p0, v1}, Lcyanogenmod/app/IPartnerInterface$Stub;->setAirplaneModeEnabled(Z)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    return v7

    .line 83
    .end local v1           #_arg0:Z
    :cond_25
    const/4 v1, 0x0

    .restart local v1       #_arg0:Z
    goto :goto_1e

    .line 90
    .end local v1           #_arg0:Z
    :sswitch_27
    const-string/jumbo v6, "cyanogenmod.app.IPartnerInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3b

    const/4 v1, 0x1

    .line 93
    .restart local v1       #_arg0:Z
    :goto_34
    invoke-virtual {p0, v1}, Lcyanogenmod/app/IPartnerInterface$Stub;->setMobileDataEnabled(Z)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    return v7

    .line 92
    .end local v1           #_arg0:Z
    :cond_3b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Z
    goto :goto_34

    .line 99
    .end local v1           #_arg0:Z
    :sswitch_3d
    const-string/jumbo v8, "cyanogenmod.app.IPartnerInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcyanogenmod/app/IPartnerInterface$Stub;->setZenMode(I)Z

    move-result v5

    .line 103
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v5, :cond_51

    move v6, v7

    :cond_51
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    return v7

    .line 109
    .end local v0           #_arg0:I
    .end local v5           #_result:Z
    :sswitch_55
    const-string/jumbo v6, "cyanogenmod.app.IPartnerInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcyanogenmod/app/IPartnerInterface$Stub;->shutdown()V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    return v7

    .line 116
    :sswitch_62
    const-string/jumbo v6, "cyanogenmod.app.IPartnerInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcyanogenmod/app/IPartnerInterface$Stub;->reboot()V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    return v7

    .line 123
    :sswitch_6f
    const-string/jumbo v6, "cyanogenmod.app.IPartnerInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcyanogenmod/app/IPartnerInterface$Stub;->getCurrentHotwordPackageName()Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    return v7

    .line 131
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_80
    const-string/jumbo v8, "cyanogenmod.app.IPartnerInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 135
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 136
    .local v2, _arg1:J
    invoke-virtual {p0, v0, v2, v3}, Lcyanogenmod/app/IPartnerInterface$Stub;->setZenModeWithDuration(IJ)Z

    move-result v5

    .line 137
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v5, :cond_98

    move v6, v7

    :cond_98
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    return v7

    .line 72
    :sswitch_data_9c
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_27
        0x3 -> :sswitch_3d
        0x4 -> :sswitch_55
        0x5 -> :sswitch_62
        0x6 -> :sswitch_6f
        0x7 -> :sswitch_80
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
