.class public Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;
.super Landroid/widget/FrameLayout;
.source "MaskableFrameLayout.java"


# static fields
.field private static final MODE_ADD:I = 0x0

.field private static final MODE_CLEAR:I = 0x1

.field private static final MODE_DARKEN:I = 0x2

.field private static final MODE_DST:I = 0x3

.field private static final MODE_DST_ATOP:I = 0x4

.field private static final MODE_DST_IN:I = 0x5

.field private static final MODE_DST_OUT:I = 0x6

.field private static final MODE_DST_OVER:I = 0x7

.field private static final MODE_LIGHTEN:I = 0x8

.field private static final MODE_MULTIPLY:I = 0x9

.field private static final MODE_OVERLAY:I = 0xa

.field private static final MODE_SCREEN:I = 0xb

.field private static final MODE_SRC:I = 0xc

.field private static final MODE_SRC_ATOP:I = 0xd

.field private static final MODE_SRC_IN:I = 0xe

.field private static final MODE_SRC_OUT:I = 0xf

.field private static final MODE_SRC_OVER:I = 0x10

.field private static final MODE_XOR:I = 0x11

.field private static final TAG:Ljava/lang/String; = "MaskableFrameLayout"


# instance fields
.field private mDrawableMask:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mFinalMask:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mPaint:Landroid/graphics/Paint;

.field private mPorterDuffXferMode:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    iput-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mDrawableMask:Landroid/graphics/drawable/Drawable;

    .line 59
    iput-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mFinalMask:Landroid/graphics/Bitmap;

    .line 63
    iput-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mPaint:Landroid/graphics/Paint;

    .line 64
    iput-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mPorterDuffXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mDrawableMask:Landroid/graphics/drawable/Drawable;

    .line 59
    iput-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mFinalMask:Landroid/graphics/Bitmap;

    .line 63
    iput-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mPaint:Landroid/graphics/Paint;

    .line 64
    iput-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mPorterDuffXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->construct(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    iput-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mDrawableMask:Landroid/graphics/drawable/Drawable;

    .line 59
    iput-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mFinalMask:Landroid/graphics/Bitmap;

    .line 63
    iput-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mPaint:Landroid/graphics/Paint;

    .line 64
    iput-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mPorterDuffXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->construct(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mDrawableMask:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->makeBitmapMask(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->swapBitmapMask(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private construct(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 81
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mHandler:Landroid/os/Handler;

    .line 82
    invoke-virtual {p0, v5}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->setDrawingCacheEnabled(Z)V

    .line 83
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 84
    const/4 v2, 0x0

    invoke-virtual {p0, v5, v2}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->createPaint()Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mPaint:Landroid/graphics/Paint;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 88
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    if-eqz v1, :cond_3

    .line 89
    sget-object v2, Lcom/christophesmet/android/view/maskablelayout/R$styleable;->MaskableLayout:[I

    invoke-virtual {v1, p2, v2, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->loadMask(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->initMask(Landroid/graphics/drawable/Drawable;)V

    .line 97
    sget v2, Lcom/christophesmet/android/view/maskablelayout/R$styleable;->MaskableLayout_porterduffxfermode:I

    const/4 v3, 0x0

    .line 98
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 97
    invoke-direct {p0, v2}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->getModeFromInteger(I)Landroid/graphics/PorterDuffXfermode;

    move-result-object v2

    iput-object v2, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mPorterDuffXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 100
    iget-object v2, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mDrawableMask:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->initMask(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->registerMeasure()V

    .line 110
    return-void

    .line 102
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    throw v2

    .line 107
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_3
    const-string v2, "Couldn\'t load theme, mask in xml won\'t be loaded."

    invoke-direct {p0, v2}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createPaint()Landroid/graphics/Paint;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 114
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 115
    .local v0, "output":Landroid/graphics/Paint;
    iget-object v1, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mPorterDuffXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 116
    return-object v0
.end method

.method private getModeFromInteger(I)Landroid/graphics/PorterDuffXfermode;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0xb

    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, "mode":Landroid/graphics/PorterDuff$Mode;
    packed-switch p1, :pswitch_data_0

    .line 336
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 338
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->log(Ljava/lang/String;)V

    .line 339
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    return-object v1

    .line 276
    :pswitch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_0

    .line 277
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    .line 282
    :goto_1
    :pswitch_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 283
    goto :goto_0

    .line 279
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MODE_ADD is not supported on api lvl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 285
    :pswitch_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    .line 286
    goto :goto_0

    .line 288
    :pswitch_3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    .line 289
    goto :goto_0

    .line 291
    :pswitch_4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 292
    goto :goto_0

    .line 294
    :pswitch_5
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 295
    goto :goto_0

    .line 297
    :pswitch_6
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 298
    goto :goto_0

    .line 300
    :pswitch_7
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 301
    goto :goto_0

    .line 303
    :pswitch_8
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    .line 304
    goto :goto_0

    .line 306
    :pswitch_9
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 307
    goto :goto_0

    .line 309
    :pswitch_a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    .line 310
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    .line 315
    :goto_2
    :pswitch_b
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    .line 316
    goto :goto_0

    .line 312
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MODE_OVERLAY is not supported on api lvl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 318
    :pswitch_c
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 319
    goto :goto_0

    .line 321
    :pswitch_d
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 322
    goto/16 :goto_0

    .line 324
    :pswitch_e
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 325
    goto/16 :goto_0

    .line 327
    :pswitch_f
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 328
    goto/16 :goto_0

    .line 330
    :pswitch_10
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 331
    goto/16 :goto_0

    .line 333
    :pswitch_11
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    .line 334
    goto/16 :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private initMask(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "input"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 126
    if-eqz p1, :cond_1

    .line 127
    iput-object p1, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mDrawableMask:Landroid/graphics/drawable/Drawable;

    .line 128
    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mDrawableMask:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mDrawableMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    const-string v0, "Are you sure you don\'t want to provide a mask ?"

    invoke-direct {p0, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadMask(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 122
    sget v0, Lcom/christophesmet/android/view/maskablelayout/R$styleable;->MaskableLayout_mask:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 235
    const-string v0, "MaskableFrameLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method

.method private makeBitmapMask(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 143
    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->getMeasuredWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->getMeasuredHeight()I

    move-result v2

    if-lez v2, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->getMeasuredHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 147
    .local v1, "mask":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 148
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 149
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 158
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "mask":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 152
    :cond_0
    const-string v2, "Can\'t create a mask with height 0 or width 0. Or the layout has no children and is wrap content"

    invoke-direct {p0, v2}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_1
    const-string v2, "No bitmap mask loaded, view will NOT be masked !"

    invoke-direct {p0, v2}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerMeasure()V
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 210
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    new-instance v1, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout$1;

    invoke-direct {v1, p0, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout$1;-><init>(Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 231
    :cond_0
    return-void
.end method

.method private setSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 184
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 185
    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mDrawableMask:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mDrawableMask:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->makeBitmapMask(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->swapBitmapMask(Landroid/graphics/Bitmap;)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    const-string v0, "Width and height must be higher than 0"

    invoke-direct {p0, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private swapBitmapMask(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "newMask"    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 263
    if-eqz p1, :cond_1

    .line 264
    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mFinalMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mFinalMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mFinalMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 267
    :cond_0
    iput-object p1, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mFinalMask:Landroid/graphics/Bitmap;

    .line 269
    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 197
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 198
    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mFinalMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mPorterDuffXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 200
    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mFinalMask:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 201
    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    const-string v0, "Mask or paint is null ..."

    invoke-direct {p0, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDrawableMask()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mDrawableMask:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 241
    if-eqz p1, :cond_0

    .line 242
    invoke-direct {p0, p1}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->initMask(Landroid/graphics/drawable/Drawable;)V

    .line 243
    invoke-direct {p0, p1}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->makeBitmapMask(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->swapBitmapMask(Landroid/graphics/Bitmap;)V

    .line 244
    invoke-virtual {p0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->invalidate()V

    .line 246
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->setSize(II)V

    .line 181
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 250
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 251
    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 253
    :cond_0
    return-void
.end method

.method public setMask(I)V
    .locals 2
    .param p1, "drawableRes"    # I

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 163
    .local v0, "res":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->setMask(Landroid/graphics/drawable/Drawable;)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    const-string v1, "Unable to load resources, mask will not be loaded as drawable"

    invoke-direct {p0, v1}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMask(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "input"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->initMask(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mDrawableMask:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->makeBitmapMask(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->swapBitmapMask(Landroid/graphics/Bitmap;)V

    .line 173
    invoke-virtual {p0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->invalidate()V

    .line 174
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 257
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 258
    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 260
    :cond_0
    return-void
.end method
