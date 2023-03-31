.class Lcom/codecanyon/fast/charging/AboutActivity$4;
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
    .line 156
    iput-object p1, p0, Lcom/codecanyon/fast/charging/AboutActivity$4;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v5, 0x7f08003d

    .line 161
    iget-object v2, p0, Lcom/codecanyon/fast/charging/AboutActivity$4;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iput-object v3, v2, Lcom/codecanyon/fast/charging/AboutActivity;->i:Landroid/content/Intent;

    .line 162
    iget-object v2, p0, Lcom/codecanyon/fast/charging/AboutActivity$4;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    iget-object v2, v2, Lcom/codecanyon/fast/charging/AboutActivity;->i:Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    iget-object v2, p0, Lcom/codecanyon/fast/charging/AboutActivity$4;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    iget-object v2, v2, Lcom/codecanyon/fast/charging/AboutActivity;->i:Landroid/content/Intent;

    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check out "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/codecanyon/fast/charging/AboutActivity$4;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    .line 165
    invoke-virtual {v3}, Lcom/codecanyon/fast/charging/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", the free app for save your battery with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/codecanyon/fast/charging/AboutActivity$4;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    .line 166
    invoke-virtual {v3}, Lcom/codecanyon/fast/charging/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". https://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/codecanyon/fast/charging/AboutActivity$4;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    .line 167
    invoke-virtual {v3}, Lcom/codecanyon/fast/charging/AboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/codecanyon/fast/charging/AboutActivity$4;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    iget-object v2, v2, Lcom/codecanyon/fast/charging/AboutActivity;->i:Landroid/content/Intent;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    iget-object v2, p0, Lcom/codecanyon/fast/charging/AboutActivity$4;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    iget-object v2, v2, Lcom/codecanyon/fast/charging/AboutActivity;->i:Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Share "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/codecanyon/fast/charging/AboutActivity$4;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    invoke-virtual {v4}, Lcom/codecanyon/fast/charging/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 170
    .local v0, "sender":Landroid/content/Intent;
    iget-object v2, p0, Lcom/codecanyon/fast/charging/AboutActivity$4;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    invoke-virtual {v2, v0}, Lcom/codecanyon/fast/charging/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 171
    return-void
.end method
