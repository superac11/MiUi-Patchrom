.class Lcyanogenmod/themes/IThemeService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IThemeService.java"

# interfaces
.implements Lcyanogenmod/themes/IThemeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/themes/IThemeService$Stub;
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
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lcyanogenmod/themes/IThemeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 217
    return-void
.end method


# virtual methods
.method public applyDefaultTheme()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 276
    .local v0, _data:Landroid/os/Parcel;
    :try_start_4
    const-string/jumbo v1, "cyanogenmod.themes.IThemeService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcyanogenmod/themes/IThemeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 272
    return-void

    .line 279
    :catchall_16
    move-exception v1

    .line 280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 279
    throw v1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcyanogenmod/themes/IThemeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 227
    const-string/jumbo v0, "cyanogenmod.themes.IThemeService"

    return-object v0
.end method

.method public getLastThemeChangeRequestType()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 408
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 411
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "cyanogenmod.themes.IThemeService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 412
    iget-object v3, p0, Lcyanogenmod/themes/IThemeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 413
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 414
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    move-result v2

    .line 417
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 420
    return v2

    .line 416
    .end local v2           #_result:I
    :catchall_24
    move-exception v3

    .line 417
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 416
    throw v3
.end method

.method public getLastThemeChangeTime()J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 391
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 394
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v4, "cyanogenmod.themes.IThemeService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 395
    iget-object v4, p0, Lcyanogenmod/themes/IThemeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 396
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 397
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    move-result-wide v2

    .line 400
    .local v2, _result:J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 403
    return-wide v2

    .line 399
    .end local v2           #_result:J
    :catchall_24
    move-exception v4

    .line 400
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 399
    throw v4
.end method

.method public getProgress()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 303
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 306
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "cyanogenmod.themes.IThemeService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 307
    iget-object v3, p0, Lcyanogenmod/themes/IThemeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 308
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    move-result v2

    .line 312
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 315
    return v2

    .line 311
    .end local v2           #_result:I
    :catchall_23
    move-exception v3

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 311
    throw v3
.end method

.method public isThemeApplying()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 286
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 289
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "cyanogenmod.themes.IThemeService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 290
    iget-object v3, p0, Lcyanogenmod/themes/IThemeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 291
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_28

    move-result v3

    if-eqz v3, :cond_26

    const/4 v2, 0x1

    .line 295
    .local v2, _result:Z
    :goto_1f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 298
    return v2

    .line 292
    .end local v2           #_result:Z
    :cond_26
    const/4 v2, 0x0

    .restart local v2       #_result:Z
    goto :goto_1f

    .line 294
    .end local v2           #_result:Z
    :catchall_28
    move-exception v3

    .line 295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 294
    throw v3
.end method

.method public isThemeBeingProcessed(Ljava/lang/String;)Z
    .registers 8
    .parameter "themePkgName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 338
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 341
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "cyanogenmod.themes.IThemeService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    iget-object v3, p0, Lcyanogenmod/themes/IThemeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 344
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 345
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2c

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v2, 0x1

    .line 348
    .local v2, _result:Z
    :goto_23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 351
    return v2

    .line 345
    .end local v2           #_result:Z
    :cond_2a
    const/4 v2, 0x0

    .restart local v2       #_result:Z
    goto :goto_23

    .line 347
    .end local v2           #_result:Z
    :catchall_2c
    move-exception v3

    .line 348
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 347
    throw v3
.end method

.method public processThemeResources(Ljava/lang/String;)Z
    .registers 8
    .parameter "themePkgName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 320
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 323
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "cyanogenmod.themes.IThemeService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    iget-object v3, p0, Lcyanogenmod/themes/IThemeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 326
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 327
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2b

    move-result v3

    if-eqz v3, :cond_29

    const/4 v2, 0x1

    .line 330
    .local v2, _result:Z
    :goto_22
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 333
    return v2

    .line 327
    .end local v2           #_result:Z
    :cond_29
    const/4 v2, 0x0

    .restart local v2       #_result:Z
    goto :goto_22

    .line 329
    .end local v2           #_result:Z
    :catchall_2b
    move-exception v3

    .line 330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 329
    throw v3
.end method

.method public rebuildResourceCache()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 381
    .local v0, _data:Landroid/os/Parcel;
    :try_start_4
    const-string/jumbo v1, "cyanogenmod.themes.IThemeService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcyanogenmod/themes/IThemeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 377
    return-void

    .line 384
    :catchall_17
    move-exception v1

    .line 385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 384
    throw v1
.end method

.method public registerThemeProcessingListener(Lcyanogenmod/themes/IThemeProcessingListener;)V
    .registers 7
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 357
    .local v0, _data:Landroid/os/Parcel;
    :try_start_5
    const-string/jumbo v2, "cyanogenmod.themes.IThemeService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 358
    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcyanogenmod/themes/IThemeProcessingListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_11
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 359
    iget-object v1, p0, Lcyanogenmod/themes/IThemeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_21

    .line 362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 353
    return-void

    .line 361
    :catchall_21
    move-exception v1

    .line 362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 361
    throw v1
.end method

.method public removeUpdates(Lcyanogenmod/themes/IThemeChangeListener;)V
    .registers 7
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 245
    .local v0, _data:Landroid/os/Parcel;
    :try_start_5
    const-string/jumbo v2, "cyanogenmod.themes.IThemeService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 246
    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcyanogenmod/themes/IThemeChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_11
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 247
    iget-object v1, p0, Lcyanogenmod/themes/IThemeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_20

    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 241
    return-void

    .line 249
    :catchall_20
    move-exception v1

    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 249
    throw v1
.end method

.method public requestThemeChange(Lcyanogenmod/themes/ThemeChangeRequest;Z)V
    .registers 8
    .parameter "request"
    .parameter "removePerAppThemes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 257
    .local v0, _data:Landroid/os/Parcel;
    :try_start_6
    const-string/jumbo v3, "cyanogenmod.themes.IThemeService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 258
    if-eqz p1, :cond_27

    .line 259
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcyanogenmod/themes/ThemeChangeRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 265
    :goto_16
    if-eqz p2, :cond_31

    :goto_18
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-object v1, p0, Lcyanogenmod/themes/IThemeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_2c

    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 253
    return-void

    .line 263
    :cond_27
    const/4 v3, 0x0

    :try_start_28
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_16

    .line 268
    :catchall_2c
    move-exception v1

    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 268
    throw v1

    :cond_31
    move v1, v2

    .line 265
    goto :goto_18
.end method

.method public requestThemeChangeUpdates(Lcyanogenmod/themes/IThemeChangeListener;)V
    .registers 7
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 233
    .local v0, _data:Landroid/os/Parcel;
    :try_start_5
    const-string/jumbo v2, "cyanogenmod.themes.IThemeService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 234
    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcyanogenmod/themes/IThemeChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_11
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 235
    iget-object v1, p0, Lcyanogenmod/themes/IThemeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_20

    .line 238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 229
    return-void

    .line 237
    :catchall_20
    move-exception v1

    .line 238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 237
    throw v1
.end method

.method public unregisterThemeProcessingListener(Lcyanogenmod/themes/IThemeProcessingListener;)V
    .registers 7
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 367
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 369
    .local v0, _data:Landroid/os/Parcel;
    :try_start_5
    const-string/jumbo v2, "cyanogenmod.themes.IThemeService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 370
    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcyanogenmod/themes/IThemeProcessingListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_11
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 371
    iget-object v1, p0, Lcyanogenmod/themes/IThemeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_21

    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 365
    return-void

    .line 373
    :catchall_21
    move-exception v1

    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 373
    throw v1
.end method
