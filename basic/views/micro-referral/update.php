<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\MicroReferral */

$this->title = 'Update Micro Referral: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Micro Referrals', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="micro-referral-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
