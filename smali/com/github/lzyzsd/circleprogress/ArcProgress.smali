.class public Lcom/github/lzyzsd/circleprogress/ArcProgress;
.super Landroid/view/View;
.source "ArcProgress.java"


# static fields
.field private static final INSTANCE_ARC_ANGLE:Ljava/lang/String; = "arc_angle"

.field private static final INSTANCE_BOTTOM_TEXT:Ljava/lang/String; = "bottom_text"

.field private static final INSTANCE_BOTTOM_TEXT_SIZE:Ljava/lang/String; = "bottom_text_size"

.field private static final INSTANCE_FINISHED_STROKE_COLOR:Ljava/lang/String; = "finished_stroke_color"

.field private static final INSTANCE_MAX:Ljava/lang/String; = "max"

.field private static final INSTANCE_PROGRESS:Ljava/lang/String; = "progress"

.field private static final INSTANCE_STATE:Ljava/lang/String; = "saved_instance"

.field private static final INSTANCE_STROKE_WIDTH:Ljava/lang/String; = "stroke_width"

.field private static final INSTANCE_SUFFIX:Ljava/lang/String; = "suffix"

.field private static final INSTANCE_SUFFIX_TEXT_PADDING:Ljava/lang/String; = "suffix_text_padding"

.field private static final INSTANCE_SUFFIX_TEXT_SIZE:Ljava/lang/String; = "suffix_text_size"

.field private static final INSTANCE_TEXT_COLOR:Ljava/lang/String; = "text_color"

.field private static final INSTANCE_TEXT_SIZE:Ljava/lang/String; = "text_size"

.field private static final INSTANCE_UNFINISHED_STROKE_COLOR:Ljava/lang/String; = "unfinished_stroke_color"


# instance fields
.field private arcAngle:F

.field private arcBottomHeight:F

.field private bottomText:Ljava/lang/String;

.field private bottomTextSize:F

.field private final default_arc_angle:F

.field private final default_bottom_text_size:F

.field private final default_finished_color:I

.field private final default_max:I

.field private final default_stroke_width:F

.field private final default_suffix_padding:F

.field private final default_suffix_text:Ljava/lang/String;

.field private final default_suffix_text_size:F

.field private final default_text_color:I

.field private default_text_size:F

.field private final default_unfinished_color:I

.field private finishedStrokeColor:I

.field private max:I

.field private final min_size:I

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private rectF:Landroid/graphics/RectF;

.field private strokeWidth:F

.field private suffixText:Ljava/lang/String;

.field private suffixTextPadding:F

.field private suffixTextSize:F

.field private textColor:I

.field protected textPaint:Landroid/graphics/Paint;

.field private textSize:F

.field private unfinishedStrokeColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->rectF:Landroid/graphics/RectF;

    .line 31
    iput v5, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->progress:I

    .line 36
    const-string v1, "%"

    iput-object v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->suffixText:Ljava/lang/String;

    .line 41
    const/4 v1, -0x1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->default_finished_color:I

    .line 42
    const/16 v1, 0x48

    const/16 v2, 0x6a

    const/16 v3, 0xb0

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->default_unfinished_color:I

    .line 43
    const/16 v1, 0x42

    const/16 v2, 0x91

    const/16 v3, 0xf1

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->default_text_color:I

    .line 49
    const/16 v1, 0x64

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->default_max:I

    .line 50
    const/high16 v1, 0x43900000    # 288.0f

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->default_arc_angle:F

    .line 80
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v1, v2}, Lcom/github/lzyzsd/circleprogress/Utils;->sp2px(Landroid/content/res/Resources;F)F

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->default_text_size:F

    .line 81
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v1, v2}, Lcom/github/lzyzsd/circleprogress/Utils;->dp2px(Landroid/content/res/Resources;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->min_size:I

    .line 82
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v1, v2}, Lcom/github/lzyzsd/circleprogress/Utils;->sp2px(Landroid/content/res/Resources;F)F

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->default_text_size:F

    .line 83
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v1, v2}, Lcom/github/lzyzsd/circleprogress/Utils;->sp2px(Landroid/content/res/Resources;F)F

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->default_suffix_text_size:F

    .line 84
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/github/lzyzsd/circleprogress/Utils;->dp2px(Landroid/content/res/Resources;F)F

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->default_suffix_padding:F

    .line 85
    const-string v1, "%"

    iput-object v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->default_suffix_text:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/github/lzyzsd/circleprogress/Utils;->sp2px(Landroid/content/res/Resources;F)F

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->default_bottom_text_size:F

    .line 87
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/github/lzyzsd/circleprogress/Utils;->dp2px(Landroid/content/res/Resources;F)F

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->default_stroke_width:F

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/github/lzyzsd/circleprogress/R$styleable;->ArcProgress:[I

    invoke-virtual {v1, p2, v2, p3, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    .local v0, "attributes":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->initByAttributes(Landroid/content/res/TypedArray;)V

    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->initPainters()V

    .line 94
    return-void
.end method


# virtual methods
.method public getArcAngle()F
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->arcAngle:F

    return v0
.end method

.method public getBottomText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->bottomText:Ljava/lang/String;

    return-object v0
.end method

.method public getBottomTextSize()F
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->bottomTextSize:F

    return v0
.end method

.method public getFinishedStrokeColor()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->finishedStrokeColor:I

    return v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->max:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->progress:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->strokeWidth:F

    return v0
.end method

.method public getSuffixText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->suffixText:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffixTextPadding()F
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->suffixTextPadding:F

    return v0
.end method

.method public getSuffixTextSize()F
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->suffixTextSize:F

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->min_size:I

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->min_size:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textSize:F

    return v0
.end method

.method public getUnfinishedStrokeColor()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->unfinishedStrokeColor:I

    return v0
.end method

.method protected initByAttributes(Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "attributes"    # Landroid/content/res/TypedArray;

    .prologue
    .line 97
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->ArcProgress_arc_finished_color:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->finishedStrokeColor:I

    .line 98
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->ArcProgress_arc_unfinished_color:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->default_unfinished_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->unfinishedStrokeColor:I

    .line 99
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->ArcProgress_arc_text_color:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->default_text_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textColor:I

    .line 100
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->ArcProgress_arc_text_size:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->default_text_size:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textSize:F

    .line 101
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->ArcProgress_arc_angle:I

    const/high16 v1, 0x43900000    # 288.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->arcAngle:F

    .line 102
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->ArcProgress_arc_max:I

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->setMax(I)V

    .line 103
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->ArcProgress_arc_progress:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->setProgress(I)V

    .line 104
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->ArcProgress_arc_stroke_width:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->default_stroke_width:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->strokeWidth:F

    .line 105
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->ArcProgress_arc_suffix_text_size:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->default_suffix_text_size:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->suffixTextSize:F

    .line 106
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->ArcProgress_arc_suffix_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->default_suffix_text:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->suffixText:Ljava/lang/String;

    .line 107
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->ArcProgress_arc_suffix_text_padding:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->default_suffix_padding:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->suffixTextPadding:F

    .line 108
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->ArcProgress_arc_bottom_text_size:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->default_bottom_text_size:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->bottomTextSize:F

    .line 109
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->ArcProgress_arc_bottom_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->bottomText:Ljava/lang/String;

    .line 110
    return-void

    .line 106
    :cond_0
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->ArcProgress_arc_suffix_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected initPainters()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 113
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textPaint:Landroid/graphics/Paint;

    .line 114
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 116
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->paint:Landroid/graphics/Paint;

    .line 119
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->default_unfinished_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->strokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 122
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 124
    return-void
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->initPainters()V

    .line 129
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 130
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 275
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 276
    const/high16 v1, 0x43870000    # 270.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->arcAngle:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float v3, v1, v2

    .line 277
    .local v3, "startAngle":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->progress:I

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->arcAngle:F

    mul-float v7, v1, v2

    .line 278
    .local v7, "finishedSweepAngle":F
    move v11, v3

    .line 279
    .local v11, "finishedStartAngle":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->unfinishedStrokeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->rectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->arcAngle:F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->finishedStrokeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 282
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->rectF:Landroid/graphics/RectF;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->paint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v6, v11

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 285
    .local v13, "text":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 288
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float v15, v1, v2

    .line 289
    .local v15, "textHeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v15

    const/high16 v2, 0x40000000    # 2.0f

    div-float v14, v1, v2

    .line 290
    .local v14, "textBaseline":F
    invoke-virtual/range {p0 .. p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getWidth()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v1, v14, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->suffixTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float v12, v1, v2

    .line 293
    .local v12, "suffixHeight":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->suffixText:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->suffixTextPadding:F

    add-float/2addr v2, v4

    add-float v4, v14, v15

    sub-float/2addr v4, v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 296
    .end local v12    # "suffixHeight":F
    .end local v14    # "textBaseline":F
    .end local v15    # "textHeight":F
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getBottomText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 297
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->bottomTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getHeight()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->arcBottomHeight:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float v10, v1, v2

    .line 299
    .local v10, "bottomTextBaseline":F
    invoke-virtual/range {p0 .. p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getBottomText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getBottomText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v10, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 301
    .end local v10    # "bottomTextBaseline":F
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 266
    iget-object v2, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->rectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->strokeWidth:F

    div-float/2addr v3, v8

    iget v4, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->strokeWidth:F

    div-float/2addr v4, v8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->strokeWidth:F

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->strokeWidth:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 267
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v8

    .line 268
    .local v1, "radius":F
    const/high16 v2, 0x43b40000    # 360.0f

    iget v3, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->arcAngle:F

    sub-float/2addr v2, v3

    div-float v0, v2, v8

    .line 269
    .local v0, "angle":F
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/high16 v4, 0x43340000    # 180.0f

    div-float v4, v0, v4

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->arcBottomHeight:F

    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->setMeasuredDimension(II)V

    .line 271
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 325
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 326
    check-cast v0, Landroid/os/Bundle;

    .line 327
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "stroke_width"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->strokeWidth:F

    .line 328
    const-string v1, "suffix_text_size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->suffixTextSize:F

    .line 329
    const-string v1, "suffix_text_padding"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->suffixTextPadding:F

    .line 330
    const-string v1, "bottom_text_size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->bottomTextSize:F

    .line 331
    const-string v1, "bottom_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->bottomText:Ljava/lang/String;

    .line 332
    const-string v1, "text_size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textSize:F

    .line 333
    const-string v1, "text_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textColor:I

    .line 334
    const-string v1, "max"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->setMax(I)V

    .line 335
    const-string v1, "progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->setProgress(I)V

    .line 336
    const-string v1, "finished_stroke_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->finishedStrokeColor:I

    .line 337
    const-string v1, "unfinished_stroke_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->unfinishedStrokeColor:I

    .line 338
    const-string v1, "suffix"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->suffixText:Ljava/lang/String;

    .line 339
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->initPainters()V

    .line 340
    const-string v1, "saved_instance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 344
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 305
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 306
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "saved_instance"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 307
    const-string v1, "stroke_width"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getStrokeWidth()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 308
    const-string v1, "suffix_text_size"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getSuffixTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 309
    const-string v1, "suffix_text_padding"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getSuffixTextPadding()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 310
    const-string v1, "bottom_text_size"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getBottomTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 311
    const-string v1, "bottom_text"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getBottomText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v1, "text_size"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 313
    const-string v1, "text_color"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getTextColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    const-string v1, "progress"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 315
    const-string v1, "max"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 316
    const-string v1, "finished_stroke_color"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getFinishedStrokeColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 317
    const-string v1, "unfinished_stroke_color"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getUnfinishedStrokeColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 318
    const-string v1, "arc_angle"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getArcAngle()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 319
    const-string v1, "suffix"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getSuffixText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-object v0
.end method

.method public setArcAngle(F)V
    .locals 0
    .param p1, "arcAngle"    # F

    .prologue
    .line 232
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->arcAngle:F

    .line 233
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->invalidate()V

    .line 234
    return-void
.end method

.method public setBottomText(Ljava/lang/String;)V
    .locals 0
    .param p1, "bottomText"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->bottomText:Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->invalidate()V

    .line 157
    return-void
.end method

.method public setBottomTextSize(F)V
    .locals 0
    .param p1, "bottomTextSize"    # F

    .prologue
    .line 187
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->bottomTextSize:F

    .line 188
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->invalidate()V

    .line 189
    return-void
.end method

.method public setFinishedStrokeColor(I)V
    .locals 0
    .param p1, "finishedStrokeColor"    # I

    .prologue
    .line 214
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->finishedStrokeColor:I

    .line 215
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->invalidate()V

    .line 216
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 176
    if-lez p1, :cond_0

    .line 177
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->max:I

    .line 178
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->invalidate()V

    .line 180
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 164
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->progress:I

    .line 165
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->progress:I

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getMax()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 166
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->progress:I

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getMax()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->progress:I

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->invalidate()V

    .line 169
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0
    .param p1, "strokeWidth"    # F

    .prologue
    .line 137
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->strokeWidth:F

    .line 138
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->invalidate()V

    .line 139
    return-void
.end method

.method public setSuffixText(Ljava/lang/String;)V
    .locals 0
    .param p1, "suffixText"    # Ljava/lang/String;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->suffixText:Ljava/lang/String;

    .line 242
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->invalidate()V

    .line 243
    return-void
.end method

.method public setSuffixTextPadding(F)V
    .locals 0
    .param p1, "suffixTextPadding"    # F

    .prologue
    .line 250
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->suffixTextPadding:F

    .line 251
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->invalidate()V

    .line 252
    return-void
.end method

.method public setSuffixTextSize(F)V
    .locals 0
    .param p1, "suffixTextSize"    # F

    .prologue
    .line 146
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->suffixTextSize:F

    .line 147
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->invalidate()V

    .line 148
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 205
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textColor:I

    .line 206
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->invalidate()V

    .line 207
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .param p1, "textSize"    # F

    .prologue
    .line 196
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->textSize:F

    .line 197
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->invalidate()V

    .line 198
    return-void
.end method

.method public setUnfinishedStrokeColor(I)V
    .locals 0
    .param p1, "unfinishedStrokeColor"    # I

    .prologue
    .line 223
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->unfinishedStrokeColor:I

    .line 224
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->invalidate()V

    .line 225
    return-void
.end method
