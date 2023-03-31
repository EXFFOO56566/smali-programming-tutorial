.class Lcom/codecanyon/fast/charging/AboutActivity$1;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codecanyon/fast/charging/AboutActivity;->setScreenElements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codecanyon/fast/charging/AboutActivity;


# direct methods
.method constructor <init>(Lcom/codecanyon/fast/charging/AboutActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/codecanyon/fast/charging/AboutActivity;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/codecanyon/fast/charging/AboutActivity$1;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/codecanyon/fast/charging/AboutActivity$1;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/codecanyon/fast/charging/AboutActivity;->i:Landroid/content/Intent;

    .line 97
    iget-object v0, p0, Lcom/codecanyon/fast/charging/AboutActivity$1;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    iget-object v0, v0, Lcom/codecanyon/fast/charging/AboutActivity;->i:Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://search?q=pub:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/codecanyon/fast/charging/AboutActivity$1;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    invoke-virtual {v2}, Lcom/codecanyon/fast/charging/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 98
    iget-object v0, p0, Lcom/codecanyon/fast/charging/AboutActivity$1;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    invoke-virtual {v0}, Lcom/codecanyon/fast/charging/AboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/codecanyon/fast/charging/AboutActivity$1;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    iget-object v1, v1, Lcom/codecanyon/fast/charging/AboutActivity;->i:Landroid/content/Intent;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/codecanyon/fast/charging/AboutActivity$1;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    iget-object v1, p0, Lcom/codecanyon/fast/charging/AboutActivity$1;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    iget-object v1, v1, Lcom/codecanyon/fast/charging/AboutActivity;->i:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/codecanyon/fast/charging/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    :cond_0
    return-void
.end method
