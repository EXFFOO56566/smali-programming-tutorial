.class public Lcom/codecanyon/fast/charging/ListAdepter;
.super Landroid/widget/ArrayAdapter;
.source "ListAdepter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/app/Activity;

.field private final detailImage:[Ljava/lang/Integer;

.field private final detail_name:[Ljava/lang/String;

.field private final detail_value:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Integer;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "detail_name"    # [Ljava/lang/String;
    .param p3, "detail_value"    # [Ljava/lang/String;
    .param p4, "detailImage"    # [Ljava/lang/Integer;

    .prologue
    .line 21
    const v0, 0x7f04002f

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 22
    iput-object p1, p0, Lcom/codecanyon/fast/charging/ListAdepter;->context:Landroid/app/Activity;

    .line 23
    iput-object p2, p0, Lcom/codecanyon/fast/charging/ListAdepter;->detail_name:[Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/codecanyon/fast/charging/ListAdepter;->detailImage:[Ljava/lang/Integer;

    .line 25
    iput-object p3, p0, Lcom/codecanyon/fast/charging/ListAdepter;->detail_value:[Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 31
    iget-object v6, p0, Lcom/codecanyon/fast/charging/ListAdepter;->context:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 32
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f04002f

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 35
    .local v3, "rowView":Landroid/view/View;
    const v6, 0x7f0e00d9

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 36
    .local v1, "detailImageView":Landroid/widget/ImageView;
    const v6, 0x7f0e00da

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 37
    .local v4, "text_detail_name":Landroid/widget/TextView;
    const v6, 0x7f0e00db

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 38
    .local v5, "text_detail_value":Landroid/widget/TextView;
    const v6, 0x7f0e0093

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    .line 40
    .local v0, "card":Landroid/support/v7/widget/CardView;
    iget-object v6, p0, Lcom/codecanyon/fast/charging/ListAdepter;->detail_name:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v6, p0, Lcom/codecanyon/fast/charging/ListAdepter;->detail_value:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v6, p0, Lcom/codecanyon/fast/charging/ListAdepter;->detailImage:[Ljava/lang/Integer;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    iget-object v6, p0, Lcom/codecanyon/fast/charging/ListAdepter;->context:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d005a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    .line 44
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    .line 46
    return-object v3
.end method
