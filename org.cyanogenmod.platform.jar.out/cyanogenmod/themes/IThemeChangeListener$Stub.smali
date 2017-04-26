.class public abstract Lcyanogenmod/themes/IThemeChangeListener$Stub;
.super Landroid/os/Binder;
.source "IThemeChangeListener.java"

# interfaces
.implements Lcyanogenmod/themes/IThemeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/themes/IThemeChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/themes/IThemeChangeListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.themes.IThemeChangeListener"

.field static final TRANSACTION_onFinish:I = 0x2

.field static final TRANSACTION_onProgress_0:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string/jumbo v0, "cyanogenmod.themes.IThemeChangeListener"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/themes/IThemeChangeListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/themes/IThemeChangeListener;
    .registers 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 39
    if-nez p0, :cond_4

    .line 40
    return-object v1

    .line 42
    :cond_4
    const-string/jumbo v1, "cyanogenmod.themes.IThemeChangeListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcyanogenmod/themes/IThemeChangeListener;

    if-eqz v1, :cond_14

    .line 44
    check-cast v0, Lcyanogenmod/themes/IThemeChangeListener;

    .end local v0           #iin:Landroid/os/IInterface;
    return-object v0

    .line 46
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcyanogenmod/themes/IThemeChangeListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/themes/IThemeChangeListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 50
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

    .line 54
    sparse-switch p1, :sswitch_data_32

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 58
    :sswitch_9
    const-string/jumbo v2, "cyanogenmod.themes.IThemeChangeListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return v3

    .line 63
    :sswitch_10
    const-string/jumbo v2, "cyanogenmod.themes.IThemeChangeListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcyanogenmod/themes/IThemeChangeListener$Stub;->onProgress(I)V

    .line 67
    return v3

    .line 71
    .end local v0           #_arg0:I
    :sswitch_1e
    const-string/jumbo v2, "cyanogenmod.themes.IThemeChangeListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v1, 0x1

    .line 74
    .local v1, _arg0:Z
    :goto_2b
    invoke-virtual {p0, v1}, Lcyanogenmod/themes/IThemeChangeListener$Stub;->onFinish(Z)V

    .line 75
    return v3

    .line 73
    .end local v1           #_arg0:Z
    :cond_2f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Z
    goto :goto_2b

    .line 54
    nop

    :sswitch_data_32
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1e
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
