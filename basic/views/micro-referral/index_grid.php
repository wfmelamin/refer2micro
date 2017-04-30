<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Micro Referrals';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="micro-referral-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Micro Referral', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'patient_id',
            'specialty_id',
            'ward',
            'team_bleeps',
            // 'referring_doctor',
            // 'date_created',
            // 'date_referral',
            // 'reason_id',
            // 'clinical_details:ntext',
            // 'medical_history:ntext',
            // 'investigations:ntext',
            // 'clinical_advice:ntext',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
