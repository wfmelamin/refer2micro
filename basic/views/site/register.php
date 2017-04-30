<?php
/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model app\models\RegisterForm */
/* @var $date_birth_months */
/* @var $date_birth_days */
/* @var $date_birth_years */
/* @var $hospitals */
use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
$this->title = 'Register';
?>
<div class="page_register">

	<div class="form-box panel panel-regular">
		<div class="panel-heading">Registration</div>
		<div class="panel-body">
			<div class="col-md-12">
				<div class="row">
					<?php if (Yii::$app->session->hasFlash('registration_success')) { ?>
						<div class="alert alert-success"><?php echo Yii::$app->session->getFlash('registration_success'); ?></div>
						<?php Yii::$app->session->removeFlash('registration_success'); ?>
					<?php } ?>
				</div>

				<?php $form = ActiveForm::begin(['id' => 'form-register']); ?>

				<?= $form->field($model, 'name')->textInput(['autofocus' => true, 'placeholder' => 'Name']) ?>

				<?= $form->field($model, 'surname')->textInput(['placeholder' => 'Surname']) ?>

				<div class="form-group">
					<label class="control-label">Date of birth</label>

					<div class="row">
						<div class="col-md-4">
							<?= Html::activeDropDownList($model, 'date_birth_month', $date_birth_months, ['class' => 'form-control']) ?>
						</div>
						<div class="col-md-4">
							<?= Html::activeDropDownList($model, 'date_birth_day', $date_birth_days, ['class' => 'form-control']) ?>
						</div>
						<div class="col-md-4">
							<?= Html::activeDropDownList($model, 'date_birth_year', $date_birth_years, ['class' => 'form-control']) ?>
						</div>
					</div>
				</div>

				<?= $form->field($model, 'phone')->textInput(['placeholder' => 'Phone']) ?>

				<?= $form->field($model, 'email')->textInput(['placeholder' => 'Email']) ?>

				<div class="form-group">
					<label class="control-label">Hospital No.</label>

					<?= Html::activeDropDownList($model, 'hospital_id', $hospitals, ['class' => 'form-control']) ?>
				</div>

				<?= $form->field($model, 'password')->passwordInput(['placeholder' => 'Password']) ?>

				<div class="form-group">
					<?= Html::submitButton('Register', ['class' => 'submit-button btn btn-warning', 'name' => 'register-button']) ?>
				</div>

				<?= $form->errorSummary($model); ?>

				<?php ActiveForm::end(); ?>
			</div>
		</div>
	</div>
</div>