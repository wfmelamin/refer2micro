<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\MicroReferral */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="micro-referral-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'patient_id')->textInput() ?>

    <?= $form->field($model, 'specialty_id')->textInput() ?>

    <?= $form->field($model, 'ward')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'team_bleeps')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'referring_doctor')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'date_created')->textInput() ?>

    <?= $form->field($model, 'date_referral')->textInput() ?>

    <?= $form->field($model, 'reason_id')->textInput() ?>

    <?= $form->field($model, 'clinical_details')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'medical_history')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'investigations')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'clinical_advice')->textarea(['rows' => 6]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
