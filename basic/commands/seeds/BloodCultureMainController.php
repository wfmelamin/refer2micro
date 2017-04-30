<?php
namespace app\commands\seeds;

use app\models\BloodCultureMain;
use yii\console\Controller;
use app\models\Patient;

class BloodCultureMainController extends Controller {
	public function actionIndex() {
		$faker = \Faker\Factory::create();

		$patients = Patient::find()->all();
		if(!empty($patients)) {
			$model = new BloodCultureMain();
			foreach($patients as $patient) {
				$model->setIsNewRecord(true);
				$model->id = null;

				$model->patient_id = $patient->id;
				$model->date_created = time();

				if($model->save()) {
					echo $model->id . " blood culture main added \n";
				} else {
					print_r($model->errors);
					echo "someError \n";
					return 1;
				}

			}
		} else {
			echo "Firstly add some patients \n";
		}

		return 0;
	}
}