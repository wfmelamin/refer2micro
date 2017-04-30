<?php

/* @var $this yii\web\View */

$this->title = 'My Yii Application';
?>
<div class="page_site-index">

    <div class="jumbotron">
        <h1>Welcome to hospital</h1>
    </div>

    <div class="body-content">
        <div class="row">
            <div class="col-md-4">
                <a class="btn btn-lg btn-block btn-success" href="<?=\Yii::$app->urlManager->createUrl('micro-referral/index#/')?>">Micro Referral</a>
            </div>
            <div class="col-md-4">
                <a class="btn btn-lg btn-block btn-success" href="javascript:void();" disabled>Blood cultures</a>
            </div>
            <div class="col-md-4">
                <a class="btn btn-lg btn-block btn-success" href="javascript:void();" disabled>PCAT</a>
            </div>
        </div>
    </div>
</div>
