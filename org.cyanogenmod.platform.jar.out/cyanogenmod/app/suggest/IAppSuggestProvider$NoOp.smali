.class public Lcyanogenmod/app/suggest/IAppSuggestProvider$NoOp;
.super Ljava/lang/Object;
.source "IAppSuggestProvider.java"

# interfaces
.implements Lcyanogenmod/app/suggest/IAppSuggestProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/suggest/IAppSuggestProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoOp"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuggestions(Landroid/content/Intent;)Ljava/util/List;
    .registers 3
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/app/suggest/ApplicationSuggestion;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public handles(Landroid/content/Intent;)Z
    .registers 3
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method
