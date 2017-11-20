.class public Lcom/google/android/gsf/login/VerifyProfileActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "VerifyProfileActivity.java"


# instance fields
.field private mBackButton:Landroid/view/View;

.field private mFirstNameEdit:Landroid/widget/EditText;

.field private mLastNameEdit:Landroid/widget/EditText;

.field private mNextButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 61
    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/VerifyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/gsf/login/VerifyProfileActivity;->mFirstNameEdit:Landroid/widget/EditText;

    .line 62
    iget-object v0, p0, Lcom/google/android/gsf/login/VerifyProfileActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 64
    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/VerifyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/gsf/login/VerifyProfileActivity;->mLastNameEdit:Landroid/widget/EditText;

    .line 65
    iget-object v0, p0, Lcom/google/android/gsf/login/VerifyProfileActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 67
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/VerifyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/VerifyProfileActivity;->mNextButton:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/google/android/gsf/login/VerifyProfileActivity;->mNextButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/VerifyProfileActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 70
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/VerifyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/VerifyProfileActivity;->mBackButton:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/google/android/gsf/login/VerifyProfileActivity;->mBackButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/VerifyProfileActivity;->setBackButton(Landroid/view/View;)V

    .line 72
    return-void
.end method

.method private populateFields()V
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lcom/google/android/gsf/login/VerifyProfileActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/google/android/gsf/login/VerifyProfileActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v0

    sget-object v2, Lcom/google/android/gsf/loginservice/JsonKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p0, Lcom/google/android/gsf/login/VerifyProfileActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/google/android/gsf/login/VerifyProfileActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v0

    sget-object v2, Lcom/google/android/gsf/loginservice/JsonKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/VerifyProfileActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gsf/login/VerifyProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 48
    invoke-direct {p0}, Lcom/google/android/gsf/login/VerifyProfileActivity;->initViews()V

    .line 49
    invoke-direct {p0}, Lcom/google/android/gsf/login/VerifyProfileActivity;->populateFields()V

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gsf/login/VerifyProfileActivity;->updateWidgetState()V

    .line 51
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onResume()V

    .line 57
    iget-object v0, p0, Lcom/google/android/gsf/login/VerifyProfileActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 58
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/android/gsf/login/VerifyProfileActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/loginservice/JsonKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/VerifyProfileActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gsf/login/VerifyProfileActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/loginservice/JsonKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/VerifyProfileActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3f4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/VerifyProfileActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gsf/login/VerifyProfileActivity;->finish()V

    .line 93
    return-void
.end method