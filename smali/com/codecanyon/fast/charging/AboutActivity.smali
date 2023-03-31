.class public Lcom/codecanyon/fast/charging/AboutActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AboutActivity.java"


# instance fields
.field CardViewRate:Landroid/support/v7/widget/CardView;

.field about_1:Landroid/support/v7/widget/CardView;

.field btn_feedback:Landroid/widget/Button;

.field btn_ratenow:Landroid/widget/Button;

.field i:Landroid/content/Intent;

.field mCardViewShare:Landroid/support/v7/widget/CardView;

.field toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 40
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 41
    .local v0, "arr":[C
    const/4 v2, 0x1

    .line 42
    .local v2, "capitalizeNext":Z
    const-string v3, ""

    .line 43
    .local v3, "phrase":Ljava/lang/String;
    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_3

    aget-char v1, v0, v4

    .line 44
    .local v1, "c":C
    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 46
    const/4 v2, 0x0

    .line 43
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 48
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 49
    const/4 v2, 0x1

    .line 51
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .end local v1    # "c":C
    :cond_3
    move-object p0, v3

    .line 53
    goto :goto_0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 28
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 29
    .local v0, "manufacturer":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 30
    .local v1, "model":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    invoke-static {v1}, Lcom/codecanyon/fast/charging/AboutActivity;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/codecanyon/fast/charging/AboutActivity;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private setInitialConfiguration()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 73
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/AboutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const-string v1, "About Super Fast Charger"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/AboutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/AboutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 77
    return-void
.end method

.method private setScreenElements()V
    .locals 4

    .prologue
    const v3, 0x7f0d005a

    const/4 v2, 0x0

    .line 80
    const v0, 0x7f0e0093

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/AboutActivity;->about_1:Landroid/support/v7/widget/CardView;

    .line 81
    const v0, 0x7f0e009b

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/AboutActivity;->mCardViewShare:Landroid/support/v7/widget/CardView;

    .line 82
    const v0, 0x7f0e0099

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/AboutActivity;->btn_feedback:Landroid/widget/Button;

    .line 83
    const v0, 0x7f0e009a

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/AboutActivity;->btn_ratenow:Landroid/widget/Button;

    .line 84
    const v0, 0x7f0e0094

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/AboutActivity;->CardViewRate:Landroid/support/v7/widget/CardView;

    .line 86
    iget-object v0, p0, Lcom/codecanyon/fast/charging/AboutActivity;->about_1:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    .line 87
    iget-object v0, p0, Lcom/codecanyon/fast/charging/AboutActivity;->mCardViewShare:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    .line 88
    iget-object v0, p0, Lcom/codecanyon/fast/charging/AboutActivity;->CardViewRate:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    .line 89
    iget-object v0, p0, Lcom/codecanyon/fast/charging/AboutActivity;->about_1:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    .line 90
    iget-object v0, p0, Lcom/codecanyon/fast/charging/AboutActivity;->CardViewRate:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    .line 91
    iget-object v0, p0, Lcom/codecanyon/fast/charging/AboutActivity;->mCardViewShare:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    .line 93
    iget-object v0, p0, Lcom/codecanyon/fast/charging/AboutActivity;->about_1:Landroid/support/v7/widget/CardView;

    new-instance v1, Lcom/codecanyon/fast/charging/AboutActivity$1;

    invoke-direct {v1, p0}, Lcom/codecanyon/fast/charging/AboutActivity$1;-><init>(Lcom/codecanyon/fast/charging/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/codecanyon/fast/charging/AboutActivity;->btn_ratenow:Landroid/widget/Button;

    new-instance v1, Lcom/codecanyon/fast/charging/AboutActivity$2;

    invoke-direct {v1, p0}, Lcom/codecanyon/fast/charging/AboutActivity$2;-><init>(Lcom/codecanyon/fast/charging/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/codecanyon/fast/charging/AboutActivity;->btn_feedback:Landroid/widget/Button;

    new-instance v1, Lcom/codecanyon/fast/charging/AboutActivity$3;

    invoke-direct {v1, p0}, Lcom/codecanyon/fast/charging/AboutActivity$3;-><init>(Lcom/codecanyon/fast/charging/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/codecanyon/fast/charging/AboutActivity;->mCardViewShare:Landroid/support/v7/widget/CardView;

    new-instance v1, Lcom/codecanyon/fast/charging/AboutActivity$4;

    invoke-direct {v1, p0}, Lcom/codecanyon/fast/charging/AboutActivity$4;-><init>(Lcom/codecanyon/fast/charging/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 189
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 190
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/AboutActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 61
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/AboutActivity;->setContentView(I)V

    .line 63
    const v0, 0x7f0e008d

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/AboutActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 64
    iget-object v0, p0, Lcom/codecanyon/fast/charging/AboutActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/AboutActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 65
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/AboutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 67
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/AboutActivity;->setInitialConfiguration()V

    .line 68
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/AboutActivity;->setScreenElements()V

    .line 70
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 178
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 183
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 180
    :pswitch_0
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/AboutActivity;->finish()V

    .line 181
    const/4 v0, 0x1

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
