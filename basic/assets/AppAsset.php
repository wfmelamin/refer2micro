<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\assets;

use yii\web\AssetBundle;

/**
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'css/style.css',
    ];
    public $js = [
          'js/dist/app.min.js',
//        'js/helpers.js',
//        'js/app.js',
//        'js/controllers/patientCtrl.js',
//        'js/directives/simpleTable.js',
//        'js/directives/fullTable.js',
//        'js/directives/textInput.js',
//        'js/directives/textareaInput.js',
//        'js/directives/dateInput.js',
//        'js/directives/selectInput.js',
//        'js/directives/searchModal.js',
//        'js/directives/jqueryUse.js',
//          'css/bootstrap.min.css'
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
//        'yii\jui\JuiAsset',
        'app\assets\AngularAsset',
    ];
}

//"bower-asset/angular": "*",
//        "bower-asset/angular-route": "*",
//        "bower-asset/angular-strap": "*"