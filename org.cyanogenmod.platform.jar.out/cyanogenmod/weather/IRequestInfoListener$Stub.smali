.class public abstract Lcyanogenmod/weather/IRequestInfoListener$Stub;
.super Landroid/os/Binder;
.source "IRequestInfoListener.java"

# interfaces
.implements Lcyanogenmod/weather/IRequestInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/IRequestInfoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/weather/IRequestInfoListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.weather.IRequestInfoListener"

.field static final TRANSACTION_onLookupCityRequestCompleted:I = 0x2

.field static final TRANSACTION_onWeatherRequestCompleted:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string/jumbo v0, "cyanogenmod.weather.IRequestInfoListener"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/weather/IRequestInfoListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/weather/IRequestInfoListener;
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
    const-string/jumbo v1, "cyanogenmod.weather.IRequestInfoListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcyanogenmod/weather/IRequestInfoListener;

    if-eqz v1, :cond_14

    .line 44
    check-cast v0, Lcyanogenmod/weather/IRequestInfoListener;

    .end local v0           #iin:Landroid/os/IInterface;
    return-object v0

    .line 46
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcyanogenmod/weather/IRequestInfoListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/weather/IRequestInfoListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 11
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
    const/4 v5, 0x1

    .line 54
    sparse-switch p1, :sswitch_data_62

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 58
    :sswitch_9
    const-string/jumbo v4, "cyanogenmod.weather.IRequestInfoListener"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return v5

    .line 63
    :sswitch_10
    const-string/jumbo v4, "cyanogenmod.weather.IRequestInfoListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3a

    .line 66
    sget-object v4, Lcyanogenmod/weather/RequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/weather/RequestInfo;

    .line 72
    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 74
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3c

    .line 75
    sget-object v4, Lcyanogenmod/weather/WeatherInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/weather/WeatherInfo;

    .line 80
    :goto_36
    invoke-virtual {p0, v0, v1, v2}, Lcyanogenmod/weather/IRequestInfoListener$Stub;->onWeatherRequestCompleted(Lcyanogenmod/weather/RequestInfo;ILcyanogenmod/weather/WeatherInfo;)V

    .line 81
    return v5

    .line 69
    .end local v1           #_arg1:I
    :cond_3a
    const/4 v0, 0x0

    .local v0, _arg0:Lcyanogenmod/weather/RequestInfo;
    goto :goto_24

    .line 78
    .end local v0           #_arg0:Lcyanogenmod/weather/RequestInfo;
    .restart local v1       #_arg1:I
    :cond_3c
    const/4 v2, 0x0

    .local v2, _arg2:Lcyanogenmod/weather/WeatherInfo;
    goto :goto_36

    .line 85
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Lcyanogenmod/weather/WeatherInfo;
    :sswitch_3e
    const-string/jumbo v4, "cyanogenmod.weather.IRequestInfoListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_60

    .line 88
    sget-object v4, Lcyanogenmod/weather/RequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/weather/RequestInfo;

    .line 94
    :goto_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 96
    .restart local v1       #_arg1:I
    sget-object v4, Lcyanogenmod/weather/WeatherLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 97
    .local v3, _arg2:Ljava/util/List;,"Ljava/util/List<Lcyanogenmod/weather/WeatherLocation;>;"
    invoke-virtual {p0, v0, v1, v3}, Lcyanogenmod/weather/IRequestInfoListener$Stub;->onLookupCityRequestCompleted(Lcyanogenmod/weather/RequestInfo;ILjava/util/List;)V

    .line 98
    return v5

    .line 91
    .end local v1           #_arg1:I
    .end local v3           #_arg2:Ljava/util/List;,"Ljava/util/List<Lcyanogenmod/weather/WeatherLocation;>;"
    :cond_60
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcyanogenmod/weather/RequestInfo;
    goto :goto_52

    .line 54
    :sswitch_data_62
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_3e
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
