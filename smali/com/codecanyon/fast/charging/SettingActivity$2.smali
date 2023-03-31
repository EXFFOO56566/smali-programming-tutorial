.class Lcom/codecanyon/fast/charging/SettingActivity$2;
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
    .line 75
    iput-object p1, p0, Lcom/codecanyon/fast/charging/SettingActivity$2;->this$0:Lcom/codecanyon/fast/charging/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/codecanyon/fast/charging/SettingActivity$2;->this$0:Lcom/codecanyon/fast/charging/SettingActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://search?q=pub:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/codecanyon/fast/charging/SettingActivity$2;->this$0:Lcom/codecanyon/fast/charging/SettingActivity;

    const v5, 0x7f080044

    invoke-virtual {v4, v5}, Lcom/codecanyon/fast/charging/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/codecanyon/fast/charging/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 81
    const/4 v0, 0x1

    return v0
.end method
