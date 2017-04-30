<?php
namespace app\assets;

use yii\web\AssetBundle;
use yii\web\View;

class AngularAsset extends AssetBundle
{
	public $sourcePath = '@bower';
	public $js = [
		'angular/angular.js',
		'angular-route/angular-route.min.js',
		'angular-sanitize/angular-sanitize.js',
		'angular-animate/angular-animate.min.js',
//		'angular-touch/angular-touch.min.js',
//		'angular-bootstrap/ui-bootstrap.min.js',
//		'angular-bootstrap/ui-bootstrap-tpls.min.js',
		'angular-strap/dist/angular-strap.min.js',
		'angular-strap/dist/angular-strap.tpl.min.js',
//		'angular-disable-all/dist/angular-disable-all.js', //already at web
//		'angucomplete/angucomplete.js',
		'angucomplete-alt/dist/angucomplete-alt.min.js',
		'ng-file-upload/ng-file-upload-shim.min.js',
		'ng-file-upload/ng-file-upload.min.js',
		'moment/min/moment.min.js',
		'bootstrap/dist/js/bootstrap.min.js'
	];
	public $jsOptions = [
		'position' => View::POS_END,
	];
}