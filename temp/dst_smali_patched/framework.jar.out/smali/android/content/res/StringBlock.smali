.class final Landroid/content/res/StringBlock;
.super Ljava/lang/Object;
.source "StringBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/StringBlock$StyleIDs;,
        Landroid/content/res/StringBlock$Height;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AssetManager"

.field private static final localLOGV:Z


# instance fields
.field private final mNative:J

.field private final mOwnsNative:Z

.field private mSparseStrings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mStrings:[Ljava/lang/CharSequence;

.field mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

.field private final mUseSparse:Z


# direct methods
.method constructor <init>(JZ)V
    .locals 1
    .param p1, "obj"    # J
    .param p3, "useSparse"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iput-wide p1, p0, Landroid/content/res/StringBlock;->mNative:J

    iput-boolean p3, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "useSparse"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {p1, p2, p3}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    iput-boolean p4, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "useSparse"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    iput-boolean p2, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    return-void
.end method

.method private static addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 3
    .param p0, "buffer"    # Landroid/text/Spannable;
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/16 v2, 0xa

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    .local v0, "len":I
    if-eqz p2, :cond_0

    if-eq p2, v0, :cond_0

    add-int/lit8 v1, p2, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-lez p2, :cond_0

    add-int/lit8 v1, p2, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    if-eq p3, v0, :cond_1

    add-int/lit8 v1, p3, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_1

    add-int/lit8 p3, p3, 0x1

    :goto_1
    if-ge p3, v0, :cond_1

    add-int/lit8 v1, p3, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_3

    :cond_1
    const/16 v1, 0x33

    invoke-interface {p0, p1, p2, p3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1
.end method

.method private applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;)Ljava/lang/CharSequence;
    .locals 18
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "style"    # [I
    .param p3, "ids"    # Landroid/content/res/StringBlock$StyleIDs;

    .prologue
    move-object/from16 v0, p2

    array-length v14, v0

    if-nez v14, :cond_0

    return-object p1

    :cond_0
    new-instance v2, Landroid/text/SpannableString;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .local v2, "buffer":Landroid/text/SpannableString;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v14, v0

    if-ge v4, v14, :cond_15

    aget v12, p2, v4

    .local v12, "type":I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get1(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_2

    new-instance v14, Landroid/text/style/StyleSpan;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x3

    goto :goto_0

    :cond_2
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get2(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_3

    new-instance v14, Landroid/text/style/StyleSpan;

    const/4 v15, 0x2

    invoke-direct {v14, v15}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_3
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get10(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_4

    new-instance v14, Landroid/text/style/UnderlineSpan;

    invoke-direct {v14}, Landroid/text/style/UnderlineSpan;-><init>()V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_4
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get9(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_5

    new-instance v14, Landroid/text/style/TypefaceSpan;

    const-string v15, "monospace"

    invoke-direct {v14, v15}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_5
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get0(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_6

    new-instance v14, Landroid/text/style/RelativeSizeSpan;

    const/high16 v15, 0x3fa00000    # 1.25f

    invoke-direct {v14, v15}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    :cond_6
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get5(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_7

    new-instance v14, Landroid/text/style/RelativeSizeSpan;

    const v15, 0x3f4ccccd    # 0.8f

    invoke-direct {v14, v15}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    :cond_7
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get7(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_8

    new-instance v14, Landroid/text/style/SubscriptSpan;

    invoke-direct {v14}, Landroid/text/style/SubscriptSpan;-><init>()V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    :cond_8
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get8(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_9

    new-instance v14, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v14}, Landroid/text/style/SuperscriptSpan;-><init>()V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    :cond_9
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get6(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_a

    new-instance v14, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v14}, Landroid/text/style/StrikethroughSpan;-><init>()V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    :cond_a
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get3(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_b

    new-instance v14, Landroid/text/style/BulletSpan;

    const/16 v15, 0xa

    invoke-direct {v14, v15}, Landroid/text/style/BulletSpan;-><init>(I)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    invoke-static {v2, v14, v15, v0}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    goto/16 :goto_1

    :cond_b
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-get4(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_c

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x12

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v14, v15, v12}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v11

    .local v11, "tag":Ljava/lang/String;
    const-string v14, "font;"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_12

    const-string v14, ";height="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "sub":Ljava/lang/String;
    if-eqz v9, :cond_d

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .local v8, "size":I
    new-instance v14, Landroid/content/res/StringBlock$Height;

    invoke-direct {v14, v8}, Landroid/content/res/StringBlock$Height;-><init>(I)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    invoke-static {v2, v14, v15, v0}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .end local v8    # "size":I
    :cond_d
    const-string v14, ";size="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .restart local v8    # "size":I
    new-instance v14, Landroid/text/style/AbsoluteSizeSpan;

    const/4 v15, 0x1

    invoke-direct {v14, v8, v15}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .end local v8    # "size":I
    :cond_e
    const-string v14, ";fgcolor="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_f

    const/4 v14, 0x1

    invoke-static {v9, v14}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v14

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_f
    const-string v14, ";color="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_10

    const/4 v14, 0x1

    invoke-static {v9, v14}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v14

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_10
    const-string v14, ";bgcolor="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_11

    const/4 v14, 0x0

    invoke-static {v9, v14}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v14

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_11
    const-string v14, ";face="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    new-instance v14, Landroid/text/style/TypefaceSpan;

    invoke-direct {v14, v9}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .end local v9    # "sub":Ljava/lang/String;
    :cond_12
    const-string v14, "a;"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_13

    const-string v14, ";href="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "sub":Ljava/lang/String;
    if-eqz v9, :cond_1

    new-instance v14, Landroid/text/style/URLSpan;

    invoke-direct {v14, v9}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .end local v9    # "sub":Ljava/lang/String;
    :cond_13
    const-string v14, "annotation;"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, "len":I
    const/16 v14, 0x3b

    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .local v10, "t":I
    :goto_2
    if-ge v10, v6, :cond_1

    const/16 v14, 0x3d

    invoke-virtual {v11, v14, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .local v3, "eq":I
    if-ltz v3, :cond_1

    const/16 v14, 0x3b

    invoke-virtual {v11, v14, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .local v7, "next":I
    if-gez v7, :cond_14

    move v7, v6

    :cond_14
    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v11, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .local v5, "key":Ljava/lang/String;
    add-int/lit8 v14, v3, 0x1

    invoke-virtual {v11, v14, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .local v13, "value":Ljava/lang/String;
    new-instance v14, Landroid/text/Annotation;

    invoke-direct {v14, v5, v13}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move v10, v7

    goto :goto_2

    .end local v3    # "eq":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "len":I
    .end local v7    # "next":I
    .end local v10    # "t":I
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    .end local v13    # "value":Ljava/lang/String;
    :cond_15
    new-instance v14, Landroid/text/SpannedString;

    invoke-direct {v14, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v14
.end method

.method private static getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;
    .locals 11
    .param p0, "color"    # Ljava/lang/String;
    .param p1, "foreground"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v6, -0x1000000

    .local v6, "c":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    .local v10, "res":Landroid/content/res/Resources;
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "name":Ljava/lang/String;
    const-string v0, "color"

    const-string v3, "android"

    invoke-virtual {v10, v9, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .local v7, "colorRes":I
    if-eqz v7, :cond_1

    invoke-virtual {v10, v7, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v4

    .local v4, "colors":Landroid/content/res/ColorStateList;
    if-eqz p1, :cond_0

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v0

    :cond_0
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    .end local v4    # "colors":Landroid/content/res/ColorStateList;
    .end local v7    # "colorRes":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "res":Landroid/content/res/Resources;
    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    return-object v0

    :cond_2
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_0

    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const/high16 v6, -0x1000000

    goto :goto_0

    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v0, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    return-object v0
.end method

.method private static native nativeCreate([BII)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetSize(J)I
.end method

.method private static native nativeGetString(JI)Ljava/lang/String;
.end method

.method private static native nativeGetStyle(JI)[I
.end method

.method private static subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "full"    # Ljava/lang/String;
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, "start":I
    if-gez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x3b

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .local v0, "end":I
    if-gez v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->nativeDestroy(J)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    if-eqz v1, :cond_1

    iget-wide v2, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->nativeDestroy(J)V

    :cond_1
    throw v0
.end method

.method public get(I)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "idx"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    aget-object v1, v7, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "res":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    monitor-exit p0

    return-object v1

    .end local v1    # "res":Ljava/lang/CharSequence;
    :cond_0
    :try_start_1
    iget-object v7, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v1    # "res":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    monitor-exit p0

    return-object v1

    .end local v1    # "res":Ljava/lang/CharSequence;
    :cond_1
    :try_start_2
    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9}, Landroid/content/res/StringBlock;->nativeGetSize(J)I

    move-result v0

    .local v0, "num":I
    iget-boolean v7, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    if-eqz v7, :cond_5

    const/16 v7, 0xfa

    if-le v0, v7, :cond_5

    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iput-object v7, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    .end local v0    # "num":I
    :cond_2
    :goto_0
    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9, p1}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v2

    .local v2, "str":Ljava/lang/String;
    move-object v1, v2

    .restart local v1    # "res":Ljava/lang/CharSequence;
    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9, p1}, Landroid/content/res/StringBlock;->nativeGetStyle(JI)[I

    move-result-object v3

    .local v3, "style":[I
    if-eqz v3, :cond_12

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    if-nez v7, :cond_3

    new-instance v7, Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {v7}, Landroid/content/res/StringBlock$StyleIDs;-><init>()V

    iput-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    :cond_3
    const/4 v5, 0x0

    .local v5, "styleIndex":I
    :goto_1
    array-length v7, v3

    if-ge v5, v7, :cond_11

    aget v4, v3, v5

    .local v4, "styleId":I
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get1(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get2(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-ne v4, v7, :cond_6

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x3

    goto :goto_1

    .end local v1    # "res":Ljava/lang/CharSequence;
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "style":[I
    .end local v4    # "styleId":I
    .end local v5    # "styleIndex":I
    .restart local v0    # "num":I
    :cond_5
    new-array v7, v0, [Ljava/lang/CharSequence;

    iput-object v7, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "num":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .restart local v1    # "res":Ljava/lang/CharSequence;
    .restart local v2    # "str":Ljava/lang/String;
    .restart local v3    # "style":[I
    .restart local v4    # "styleId":I
    .restart local v5    # "styleIndex":I
    :cond_6
    :try_start_3
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get10(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get9(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get0(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get5(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get7(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get8(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get6(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get3(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->-get4(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_4

    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9, v4}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v6

    .local v6, "styleTag":Ljava/lang/String;
    const-string v7, "b"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set1(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_2

    :cond_7
    const-string v7, "i"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set2(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_2

    :cond_8
    const-string v7, "u"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set10(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    :cond_9
    const-string v7, "tt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set9(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    :cond_a
    const-string v7, "big"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set0(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    :cond_b
    const-string v7, "small"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set5(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    :cond_c
    const-string v7, "sup"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set8(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    :cond_d
    const-string v7, "sub"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set7(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    :cond_e
    const-string v7, "strike"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set6(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    :cond_f
    const-string v7, "li"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set3(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    :cond_10
    const-string v7, "marquee"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->-set4(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    .end local v4    # "styleId":I
    .end local v6    # "styleTag":Ljava/lang/String;
    :cond_11
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {p0, v2, v3, v7}, Landroid/content/res/StringBlock;->applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v5    # "styleIndex":I
    :cond_12
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_13

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    aput-object v1, v7, p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    monitor-exit p0

    return-object v1

    :cond_13
    :try_start_4
    iget-object v7, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v7, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method