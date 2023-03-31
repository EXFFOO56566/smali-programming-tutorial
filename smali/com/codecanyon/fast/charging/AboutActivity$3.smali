.class Lcom/codecanyon/fast/charging/AboutActivity$3;
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
    .line 120
    iput-object p1, p0, Lcom/codecanyon/fast/charging/AboutActivity$3;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x0

    .line 126
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 127
    .local v0, "displaymetrics":Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/codecanyon/fast/charging/AboutActivity$3;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    invoke-virtual {v7}, Lcom/codecanyon/fast/charging/AboutActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 128
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 129
    .local v2, "height":I
    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 130
    .local v6, "width":I
    iget-object v7, p0, Lcom/codecanyon/fast/charging/AboutActivity$3;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    invoke-virtual {v7}, Lcom/codecanyon/fast/charging/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 131
    .local v4, "manager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 133
    .local v3, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v7, p0, Lcom/codecanyon/fast/charging/AboutActivity$3;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    invoke-virtual {v7}, Lcom/codecanyon/fast/charging/AboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 138
    :goto_0
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 140
    .local v5, "version":Ljava/lang/String;
    iget-object v7, p0, Lcom/codecanyon/fast/charging/AboutActivity$3;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v8, v7, Lcom/codecanyon/fast/charging/AboutActivity;->i:Landroid/content/Intent;

    .line 141
    iget-object v7, p0, Lcom/codecanyon/fast/charging/AboutActivity$3;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    iget-object v7, v7, Lcom/codecanyon/fast/charging/AboutActivity;->i:Landroid/content/Intent;

    const-string v8, "message/rfc822"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object v7, p0, Lcom/codecanyon/fast/charging/AboutActivity$3;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    iget-object v7, v7, Lcom/codecanyon/fast/charging/AboutActivity;->i:Landroid/content/Intent;

    const-string v8, "android.intent.extra.EMAIL"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    iget-object v10, p0, Lcom/codecanyon/fast/charging/AboutActivity$3;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    const v11, 0x7f080043

    invoke-virtual {v10, v11}, Lcom/codecanyon/fast/charging/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object v7, p0, Lcom/codecanyon/fast/charging/AboutActivity$3;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    iget-object v7, v7, Lcom/codecanyon/fast/charging/AboutActivity;->i:Landroid/content/Intent;

    const-string v8, "android.intent.extra.SUBJECT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/codecanyon/fast/charging/AboutActivity$3;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    invoke-virtual {v10}, Lcom/codecanyon/fast/charging/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f08003d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    iget-object v7, p0, Lcom/codecanyon/fast/charging/AboutActivity$3;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    iget-object v7, v7, Lcom/codecanyon/fast/charging/AboutActivity;->i:Landroid/content/Intent;

    const-string v8, "android.intent.extra.TEXT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n Device :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 145
    invoke-static {}, Lcom/codecanyon/fast/charging/AboutActivity;->getDeviceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n SystemVersion:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n Display Height  :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "px\n Display Width  :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "px\n\n Please write your problem to us we will try our best to solve it ..\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 144
    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object v7, p0, Lcom/codecanyon/fast/charging/AboutActivity$3;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    iget-object v8, p0, Lcom/codecanyon/fast/charging/AboutActivity$3;->this$0:Lcom/codecanyon/fast/charging/AboutActivity;

    iget-object v8, v8, Lcom/codecanyon/fast/charging/AboutActivity;->i:Landroid/content/Intent;

    const-string v9, "Send Email"

    invoke-static {v8, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/codecanyon/fast/charging/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void

    .line 134
    .end local v5    # "version":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method
