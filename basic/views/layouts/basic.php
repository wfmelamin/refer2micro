<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\web\View;
use app\assets\AppAsset;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>" ng-app="hospitalApp">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title>Hospital Application</title>
    <?php $this->head() ?>

    <script>paceOptions = {ajax: {trackMethods: ['GET', 'POST']}};</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pace/1.0.2/pace.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/pace/1.0.2/themes/red/pace-theme-minimal.css" rel="stylesheet" />
</head>
<body>
<?php $this->beginBody() ?>

<?php
    $this->registerJs(
        'window.base_url = "' . \Yii::$app->urlManager->createAbsoluteUrl('/') . '";',
        View::POS_HEAD
    );
?>

<div class="wrap">

    <nav class="header navbar-inverse navbar-fixed-top navbar" role="navigation" bs-navbar ng-controller="MenuController">
        <div class="container">
            <div class="navbar-header">
                <button ng-init="navCollapsed = true" ng-click="navCollapsed = !navCollapsed" type="button" class="navbar-toggle">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span></button>
                <a class="navbar-brand" href="#/">My Company</a>
            </div>
            <div ng-class="!navCollapsed && 'in'" ng-click="navCollapsed=true" class="collapse navbar-collapse" >
                <ul class="navbar-nav navbar-right nav">
                    <?php /*<li data-match-route="/$">
                        <a href="#/">Home</a>
                    </li> */ ?>

                    <li data-match-route="/micro-referral">
                        <a href="#/micro-referral/">Micro Referral</a>
                    </li>
                    <?php if (Yii::$app->user->can('master_doctor')) { ?>
                        <li data-match-route="/blood-cultures">
                            <a href="#/blood-cultures/">Bloods</a>
                        </li>
                        <li data-match-route="/opat">
                            <a href="#/opat/">OPAT</a>
                        </li>
                    <?php } ?>
                    <li data-match-route="/notifications">
                        <a href="#/notifications/">Notifications  <span class="label label-success" ng-bind="messageData.messages_new_count" ng-show="messageData.messages_new_count > 0"></span> </a>
                    </li>
                    <li>
                        <?php
                        echo Html::beginForm(['/site/logout'], 'post');
                        echo Html::submitButton(
                            'Logout (' . Yii::$app->user->identity->email . ')',
                            ['class' => 'btn btn-link']
                        );
                        echo Html::endForm();
                        ?>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <div ng-view></div>
    </div>

</div>

<footer class="footer">
    <div class="container">
        <p class="pull-left">&copy; My Company <?= date('Y') ?></p>

        <p class="pull-right"><?= Yii::powered() ?></p>
    </div>
</footer>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
