<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\MicroReferral */

$this->title = 'Create Micro Referral';
$this->params['breadcrumbs'][] = ['label' => 'Micro Referrals', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="micro-referral-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
