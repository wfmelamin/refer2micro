<?php
namespace app\commands\seeds;

use app\models\Opat;
use yii\console\Controller;
use app\models\Patient;

class OpatController extends Controller {
	public function actionIndex() {
		$faker = \Faker\Factory::create();

		$patients = Patient::find()->all();
		if(!empty($patients)) {
			$model = new Opat();
			foreach($patients as $patient) {
				$model->setIsNewRecord(true);
				$model->id = null;

				$model->patient_id              = $patient->id;
				$model->date_created            = strtotime($faker->date('d.m.Y'));
				$model->sex                     = $faker->randomLetter;
				$model->weight                  = (string)$faker->numberBetween(1,3);
				$model->age                     = $faker->numberBetween(1,3);
				$model->specialty_id            = $faker->numberBetween(1,3);
				$model->managing_doctor_id      = $faker->numberBetween(1,3);
				$model->referring_consultant_id = $faker->numberBetween(1,3);
				$model->primary_infective_id    = $faker->numberBetween(1,3);
				$model->date_referral           = strtotime($faker->date('d.m.Y'));
				$model->commisioning_board_id   = $faker->numberBetween(1,3);
				$model->vad_type_id             = $faker->numberBetween(1,3);
				$model->vad_insertion_date      = strtotime($faker->date('d.m.Y'));
				$model->vad_removal_date        = strtotime($faker->date('d.m.Y'));
				$model->complications_id        = $faker->numberBetween(1,3);
				$model->outcome_id              = $faker->numberBetween(1,3);
				$model->discharge_date          = strtotime($faker->date('d.m.Y'));

				if($model->save()) {
					echo $model->id . " added \n";
				} else {
					print_r($model->errors);
					echo "someError \n";

					return 1;
				}
			}
		}


		return 0;
	}
}