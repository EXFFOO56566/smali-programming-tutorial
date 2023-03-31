.class public Lcom/codecanyon/fast/charging/SettingActivity;
.super Landroid/preference/PreferenceFragment;
.source "SettingActivity.java"


# instance fields
.field i:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 33
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 34
    .local v0, "arr":[C
    const/4 v2, 0x1

    .line 35
    .local v2, "capitalizeNext":Z
    const-string v3, ""

    .line 36
    .local v3, "phrase":Ljava/lang/String;
    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_3

    aget-char v1, v0, v4

    .line 37
    .local v1, "c":C
    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 38
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

    .line 39
    const/4 v2, 0x0

    .line 36
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 41
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 42
    const/4 v2, 0x1

    .line 44
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

    .line 46
    goto :goto_0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 21
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 22
    .local v0, "manufacturer":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 23
    .local v1, "model":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    invoke-static {v1}, Lcom/codecanyon/fast/charging/SettingActivity;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/codecanyon/fast/charging/SettingActivity;->capitalize(Ljava/lang/String;)Ljava/lang/String;

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


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const/high16 v12, 0x7f070000

    invoke-virtual {p0, v12}, Lcom/codecanyon/fast/charging/SettingActivity;->addPreferencesFromResource(I)V

    .line 54
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/SettingActivity;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 55
    .local v10, "manager":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    .line 57
    .local v9, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/SettingActivity;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 62
    :goto_0
    iget-object v11, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 64
    .local v11, "version":Ljava/lang/String;
    const-string v12, "Licence"

    invoke-virtual {p0, v12}, Lcom/codecanyon/fast/charging/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 65
    .local v2, "Licence":Landroid/preference/Preference;
    new-instance v12, Lcom/codecanyon/fast/charging/SettingActivity$1;

    invoke-direct {v12, p0}, Lcom/codecanyon/fast/charging/SettingActivity$1;-><init>(Lcom/codecanyon/fast/charging/SettingActivity;)V

    invoke-virtual {v2, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 74
    const-string v12, "MoreApp"

    invoke-virtual {p0, v12}, Lcom/codecanyon/fast/charging/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 75
    .local v3, "MoreApp":Landroid/preference/Preference;
    new-instance v12, Lcom/codecanyon/fast/charging/SettingActivity$2;

    invoke-direct {v12, p0}, Lcom/codecanyon/fast/charging/SettingActivity$2;-><init>(Lcom/codecanyon/fast/charging/SettingActivity;)V

    invoke-virtual {v3, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 85
    const-string v12, "RateUs"

    invoke-virtual {p0, v12}, Lcom/codecanyon/fast/charging/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 86
    .local v4, "RateUs":Landroid/preference/Preference;
    new-instance v12, Lcom/codecanyon/fast/charging/SettingActivity$3;

    invoke-direct {v12, p0}, Lcom/codecanyon/fast/charging/SettingActivity$3;-><init>(Lcom/codecanyon/fast/charging/SettingActivity;)V

    invoke-virtual {v4, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 100
    const-string v12, "ShareApp"

    invoke-virtual {p0, v12}, Lcom/codecanyon/fast/charging/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 101
    .local v5, "ShareApp":Landroid/preference/Preference;
    new-instance v12, Lcom/codecanyon/fast/charging/SettingActivity$4;

    invoke-direct {v12, p0}, Lcom/codecanyon/fast/charging/SettingActivity$4;-><init>(Lcom/codecanyon/fast/charging/SettingActivity;)V

    invoke-virtual {v5, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 120
    const-string v12, "About"

    invoke-virtual {p0, v12}, Lcom/codecanyon/fast/charging/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 121
    .local v0, "About":Landroid/preference/Preference;
    new-instance v12, Lcom/codecanyon/fast/charging/SettingActivity$5;

    invoke-direct {v12, p0}, Lcom/codecanyon/fast/charging/SettingActivity$5;-><init>(Lcom/codecanyon/fast/charging/SettingActivity;)V

    invoke-virtual {v0, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 132
    const-string v12, "FeedBack"

    invoke-virtual {p0, v12}, Lcom/codecanyon/fast/charging/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 133
    .local v1, "FeedBack":Landroid/preference/Preference;
    new-instance v12, Lcom/codecanyon/fast/charging/SettingActivity$6;

    invoke-direct {v12, p0, v11}, Lcom/codecanyon/fast/charging/SettingActivity$6;-><init>(Lcom/codecanyon/fast/charging/SettingActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 162
    const-string v12, "Update"

    invoke-virtual {p0, v12}, Lcom/codecanyon/fast/charging/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 163
    .local v6, "Update":Landroid/preference/Preference;
    new-instance v12, Lcom/codecanyon/fast/charging/SettingActivity$7;

    invoke-direct {v12, p0}, Lcom/codecanyon/fast/charging/SettingActivity$7;-><init>(Lcom/codecanyon/fast/charging/SettingActivity;)V

    invoke-virtual {v6, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 177
    const-string v12, "Version"

    invoke-virtual {p0, v12}, Lcom/codecanyon/fast/charging/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 178
    .local v7, "Version":Landroid/preference/Preference;
    invoke-virtual {v7, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 179
    return-void

    .line 58
    .end local v0    # "About":Landroid/preference/Preference;
    .end local v1    # "FeedBack":Landroid/preference/Preference;
    .end local v2    # "Licence":Landroid/preference/Preference;
    .end local v3    # "MoreApp":Landroid/preference/Preference;
    .end local v4    # "RateUs":Landroid/preference/Preference;
    .end local v5    # "ShareApp":Landroid/preference/Preference;
    .end local v6    # "Update":Landroid/preference/Preference;
    .end local v7    # "Version":Landroid/preference/Preference;
    .end local v11    # "version":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 60
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
