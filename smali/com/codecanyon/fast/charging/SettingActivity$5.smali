.class Lcom/codecanyon/fast/charging/SettingActivity$5;
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
    .line 121
    iput-object p1, p0, Lcom/codecanyon/fast/charging/SettingActivity$5;->this$0:Lcom/codecanyon/fast/charging/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/codecanyon/fast/charging/SettingActivity$5;->this$0:Lcom/codecanyon/fast/charging/SettingActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/codecanyon/fast/charging/SettingActivity$5;->this$0:Lcom/codecanyon/fast/charging/SettingActivity;

    invoke-virtual {v2}, Lcom/codecanyon/fast/charging/SettingActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/codecanyon/fast/charging/AboutActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, v0, Lcom/codecanyon/fast/charging/SettingActivity;->i:Landroid/content/Intent;

    .line 126
    iget-object v0, p0, Lcom/codecanyon/fast/charging/SettingActivity$5;->this$0:Lcom/codecanyon/fast/charging/SettingActivity;

    iget-object v1, p0, Lcom/codecanyon/fast/charging/SettingActivity$5;->this$0:Lcom/codecanyon/fast/charging/SettingActivity;

    iget-object v1, v1, Lcom/codecanyon/fast/charging/SettingActivity;->i:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/codecanyon/fast/charging/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    const/4 v0, 0x1

    return v0
.end method
