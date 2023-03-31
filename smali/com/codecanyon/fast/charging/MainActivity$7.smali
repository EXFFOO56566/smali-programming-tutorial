.class Lcom/codecanyon/fast/charging/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codecanyon/fast/charging/MainActivity;->setupdialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codecanyon/fast/charging/MainActivity;


# direct methods
.method constructor <init>(Lcom/codecanyon/fast/charging/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/codecanyon/fast/charging/MainActivity;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/codecanyon/fast/charging/MainActivity$7;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, "intent":Landroid/content/Intent;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 339
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity$7;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    invoke-virtual {v1, v0}, Lcom/codecanyon/fast/charging/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 343
    return-void
.end method
