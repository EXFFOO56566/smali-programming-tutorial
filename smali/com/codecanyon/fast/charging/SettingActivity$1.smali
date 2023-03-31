.class Lcom/codecanyon/fast/charging/SettingActivity$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codecanyon/fast/charging/SettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codecanyon/fast/charging/SettingActivity;


# direct methods
.method constructor <init>(Lcom/codecanyon/fast/charging/SettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/codecanyon/fast/charging/SettingActivity;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/codecanyon/fast/charging/SettingActivity$1;->this$0:Lcom/codecanyon/fast/charging/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/codecanyon/fast/charging/SettingActivity$1;->this$0:Lcom/codecanyon/fast/charging/SettingActivity;

    invoke-virtual {v1}, Lcom/codecanyon/fast/charging/SettingActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/codecanyon/fast/charging/LicenseActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/codecanyon/fast/charging/SettingActivity$1;->this$0:Lcom/codecanyon/fast/charging/SettingActivity;

    invoke-virtual {v1, v0}, Lcom/codecanyon/fast/charging/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 70
    const/4 v1, 0x1

    return v1
.end method
