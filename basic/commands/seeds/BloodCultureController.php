<?php
namespace app\commands\seeds;

use app\models\Antibiotic;
use app\models\BloodCulture;
use app\models\BloodCultureMain;
use app\models\Opat;
use yii\console\Controller;
use app\models\MicroReferral;
use app\models\Blood;

class BloodCultureController extends Controller {
	/**
	 * @param $args
	 *
	 * @return int
	 */
	public function actionIndex($args) {
		$faker = \Faker\Factory::create();

		$blood_cultures_main = BloodCultureMain::find()->all();

		if(!empty($blood_cultures_main)) {
			foreach ( $blood_cultures_main as $bcm ) {
				for ( $i = 1; $i <= $args[0]; $i ++ ) {
					$model = new BloodCulture();

					$model->setIsNewRecord(true);
					$model->id = null;

					$model->blood_culture_main_id = $bcm->id;
					$model->lab_no = (string)$faker->numberBetween(1000,1050);
					$model->date_sample = time();
					$model->sensitivity_complete = $faker->numberBetween(0,1);
					$model->significant_id = $faker->numberBetween(1,3);
					$model->follow_up_required = $faker->text(200);
					$model->active_case = $faker->numberBetween(0,1);

					if($model->save()) {
						echo $model->id . " blood culture added \n";
					} else {
						print_r($model->errors);
						echo "someError \n";

						return 1;
					}
				}
			}

		} else {
			echo "Firstly add some opats \n";
		}

		return 0;
	}
}