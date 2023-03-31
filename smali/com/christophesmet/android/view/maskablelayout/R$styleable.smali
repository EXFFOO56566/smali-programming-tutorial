.class public final Lcom/christophesmet/android/view/maskablelayout/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/christophesmet/android/view/maskablelayout/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final MaskableLayout:[I

.field public static final MaskableLayout_mask:I = 0x0

.field public static final MaskableLayout_porterduffxfermode:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/christophesmet/android/view/maskablelayout/R$styleable;->MaskableLayout:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f01010c
        0x7f01010d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
