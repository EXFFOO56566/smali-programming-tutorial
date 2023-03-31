.class Lcom/codecanyon/fast/charging/BatteryDetailActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codecanyon/fast/charging/BatteryDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codecanyon/fast/charging/BatteryDetailActivity;


# direct methods
.method constructor <init>(Lcom/codecanyon/fast/charging/BatteryDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/codecanyon/fast/charging/BatteryDetailActivity;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity$1;->this$0:Lcom/codecanyon/fast/charging/BatteryDetailActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v9, 0xb0

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 35
    iget-object v1, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity$1;->this$0:Lcom/codecanyon/fast/charging/BatteryDetailActivity;

    iget-object v1, v1, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->detail_value:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "temperature"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " C"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 36
    iget-object v1, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity$1;->this$0:Lcom/codecanyon/fast/charging/BatteryDetailActivity;

    iget-object v1, v1, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->detail_value:[Ljava/lang/String;

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "voltage"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " V"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 37
    iget-object v1, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity$1;->this$0:Lcom/codecanyon/fast/charging/BatteryDetailActivity;

    iget-object v1, v1, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->detail_value:[Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "level"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 38
    iget-object v1, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity$1;->this$0:Lcom/codecanyon/fast/charging/BatteryDetailActivity;

    iget-object v1, v1, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->detail_value:[Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "technology"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 39
    iget-object v1, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity$1;->this$0:Lcom/codecanyon/fast/charging/BatteryDetailActivity;

    iget-object v1, v1, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->detail_value:[Ljava/lang/String;

    aget-object v1, v1, v8

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity$1;->this$0:Lcom/codecanyon/fast/charging/BatteryDetailActivity;

    iget-object v1, v1, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->detail_value:[Ljava/lang/String;

    const-string v2, "-"

    aput-object v2, v1, v8

    .line 43
    :cond_0
    const-string v1, "health"

    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 45
    .local v0, "battery_helth":I
    packed-switch v0, :pswitch_data_0

    .line 70
    :goto_0
    iget-object v1, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity$1;->this$0:Lcom/codecanyon/fast/charging/BatteryDetailActivity;

    new-instance v2, Lcom/codecanyon/fast/charging/ListAdepter;

    iget-object v3, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity$1;->this$0:Lcom/codecanyon/fast/charging/BatteryDetailActivity;

    iget-object v4, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity$1;->this$0:Lcom/codecanyon/fast/charging/BatteryDetailActivity;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->detail_name:[Ljava/lang/String;

    iget-object v5, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity$1;->this$0:Lcom/codecanyon/fast/charging/BatteryDetailActivity;

    iget-object v5, v5, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->detail_value:[Ljava/lang/String;

    iget-object v6, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity$1;->this$0:Lcom/codecanyon/fast/charging/BatteryDetailActivity;

    iget-object v6, v6, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->detailImage:[Ljava/lang/Integer;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/codecanyon/fast/charging/ListAdepter;-><init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Integer;)V

    iput-object v2, v1, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->listAdepter:Lcom/codecanyon/fast/charging/ListAdepter;

    .line 71
    iget-object v1, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity$1;->this$0:Lcom/codecanyon/fast/charging/BatteryDetailActivity;

    iget-object v1, v1, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->detailList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity$1;->this$0:Lcom/codecanyon/fast/charging/BatteryDetailActivity;

    iget-object v2, v2, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->listAdepter:Lcom/codecanyon/fast/charging/ListAdepter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    return-void

    .line 47
    :pswitch_0
    iget-object v1, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity$1;->this$0:Lcom/codecanyon/fast/charging/BatteryDetailActivity;

    iget-object v1, v1, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->detail_value:[Ljava/lang/String;

    const-string v2, "UNKNOWN"

    aput-object v2, v1, v6

    goto :goto_0

    .line 50
    :pswitch_1
    iget-object v1, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity$1;->this$0:Lcom/codecanyon/fast/charging/BatteryDetailActivity;

    iget-object v1, v1, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->detail_value:[Ljava/lang/String;

    const-string v2, "GOOD"

    aput-object v2, v1, v6

    goto :goto_0

    .line 53
    :pswitch_2
    iget-object v1, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity$1;->this$0:Lcom/codecanyon/fast/charging/BatteryDetailActivity;

    iget-object v1, v1, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->detail_value:[Ljava/lang/String;

    const-string v2, "OVERHEAT"

    aput-object v2, v1, v6

    goto :goto_0

    .line 56
    :pswitch_3
    iget-object v1, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity$1;->this$0:Lcom/codecanyon/fast/charging/BatteryDetailActivity;

    iget-object v1, v1, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->detail_value:[Ljava/lang/String;

    const-string v2, "DEAD"

    aput-object v2, v1, v6

    goto :goto_0

    .line 59
    :pswitch_4
    iget-object v1, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity$1;->this$0:Lcom/codecanyon/fast/charging/BatteryDetailActivity;

    iget-object v1, v1, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->detail_value:[Ljava/lang/String;

    const-string v2, "OVER_VOLTAGE"

    aput-object v2, v1, v6

    goto :goto_0

    .line 62
    :pswitch_5
    iget-object v1, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity$1;->this$0:Lcom/codecanyon/fast/charging/BatteryDetailActivity;

    iget-object v1, v1, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->detail_value:[Ljava/lang/String;

    const-string v2, "UNSPECIFIED_FAILURE"

    aput-object v2, v1, v6

    goto :goto_0

    .line 65
    :pswitch_6
    iget-object v1, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity$1;->this$0:Lcom/codecanyon/fast/charging/BatteryDetailActivity;

    iget-object v1, v1, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->detail_value:[Ljava/lang/String;

    const-string v2, "COLD"

    aput-object v2, v1, v6

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
