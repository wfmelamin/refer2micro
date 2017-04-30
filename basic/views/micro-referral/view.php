<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\MicroReferral */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Micro Referrals', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="micro-referral-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'patient_id',
            'specialty_id',
            'ward',
            'team_bleeps',
            'referring_doctor',
            'date_created',
            'date_referral',
            'reason_id',
            'clinical_details:ntext',
            'medical_history:ntext',
            'investigations:ntext',
            'clinical_advice:ntext',
        ],
    ]) ?>

</div>
