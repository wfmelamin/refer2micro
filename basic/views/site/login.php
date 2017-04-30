<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model app\models\LoginForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

$this->title = 'Login';
?>
<div class="page_login">
    <div class="form-box panel panel-regular">
        <div class="panel-heading">Sign In</div>
        <div class="panel-body">
            <div class="col-md-12">

                <div class="row">
                    <?php if (Yii::$app->session->hasFlash('account_in_review')) { ?>
                        <div class="alert alert-danger"><?php echo Yii::$app->session->getFlash('account_in_review'); ?></div>
                        <?php Yii::$app->session->removeFlash('account_in_review'); ?>
                    <?php } ?>
                </div>

                <?php $form = ActiveForm::begin([
                    'id' => 'login-form',
                    'options' => ['class' => 'form-horizontal'],
                    'fieldConfig' => ['template' => '{input}'],
                ]); ?>

                <?= $form->field($model, 'username')->textInput(['autofocus' => true, 'placeholder' => 'Email']) ?>

                <?= $form->field($model, 'password')->passwordInput(['placeholder' => 'Password']) ?>

                <div class="form-group">
                    <?= Html::submitButton('Login', ['class' => 'submit-button btn btn-warning', 'name' => 'login-button']) ?>
                </div>

                <?= $form->errorSummary($model); ?>

                <?php ActiveForm::end(); ?>
            </div>
        </div>
    </div>
</div>