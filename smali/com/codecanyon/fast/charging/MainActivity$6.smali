.class Lcom/codecanyon/fast/charging/MainActivity$6;
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
    .line 322
    iput-object p1, p0, Lcom/codecanyon/fast/charging/MainActivity$6;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 324
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/codecanyon/fast/charging/MainActivity$6;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    invoke-virtual {v2}, Lcom/codecanyon/fast/charging/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 326
    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity$6;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    invoke-virtual {v1, v0}, Lcom/codecanyon/fast/charging/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 327
    return-void
.end method
