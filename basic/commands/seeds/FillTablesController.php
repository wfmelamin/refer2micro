<?php
namespace app\commands\seeds;

use yii\console\Controller;

class FillTablesController extends Controller {
	public function actionIndex($args) {
		if($args[0] == 1) {
			\Yii::$app->runAction('seeds/patient', array('3'));
			\Yii::$app->runAction('seeds/micro-referral');
			\Yii::$app->runAction('seeds/allergy', array('3'));
			\Yii::$app->runAction('seeds/blood', array('3'));
			\Yii::$app->runAction('seeds/pcat', array('3'));
			\Yii::$app->runAction('seeds/stewardship', array('3'));
			\Yii::$app->runAction('seeds/followup-notes', array('3'));
		} else if($args[0] == 2) {
			\Yii::$app->runAction('seeds/opat');
			\Yii::$app->runAction('seeds/antibiotics', array('3'));
		} else if($args[0] == 3) {
			\Yii::$app->runAction('seeds/blood-culture-main');
			\Yii::$app->runAction('seeds/blood-culture', array('3'));
			\Yii::$app->runAction('seeds/organism', array('3'));
			\Yii::$app->runAction('seeds/gram-stain', array('3'));
		} else if($args[0] == 4) {
			\Yii::$app->runAction('seeds/message', array('3'));
		}
	}
}

