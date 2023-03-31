.class Lcn/fanrunqi/waveprogress/WaveProgressView$1;
.super Landroid/os/Handler;
.source "WaveProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/fanrunqi/waveprogress/WaveProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/fanrunqi/waveprogress/WaveProgressView;


# direct methods
.method constructor <init>(Lcn/fanrunqi/waveprogress/WaveProgressView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/fanrunqi/waveprogress/WaveProgressView;

    .prologue
    .line 48
    iput-object p1, p0, Lcn/fanrunqi/waveprogress/WaveProgressView$1;->this$0:Lcn/fanrunqi/waveprogress/WaveProgressView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 58
    :goto_0
    return-void

    .line 54
    :pswitch_0
    iget-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView$1;->this$0:Lcn/fanrunqi/waveprogress/WaveProgressView;

    invoke-virtual {v0}, Lcn/fanrunqi/waveprogress/WaveProgressView;->invalidate()V

    .line 55
    const/16 v0, 0x777

    iget-object v1, p0, Lcn/fanrunqi/waveprogress/WaveProgressView$1;->this$0:Lcn/fanrunqi/waveprogress/WaveProgressView;

    invoke-static {v1}, Lcn/fanrunqi/waveprogress/WaveProgressView;->access$000(Lcn/fanrunqi/waveprogress/WaveProgressView;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcn/fanrunqi/waveprogress/WaveProgressView$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x777
        :pswitch_0
    .end packed-switch
.end method
