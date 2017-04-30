<?php
namespace app\commands\seeds;

use app\models\User;
use yii\console\Controller;
use app\models\Patient;

class PatientController extends Controller {
	public function actionIndex($args) {
		$faker = \Faker\Factory::create();

		$doctors = User::find()->all();

		foreach($doctors as $doctor) {
			$patient = new Patient();
			for ( $i = 1; $i <= $args[0]; $i ++ ) {
				$patient->setIsNewRecord( true );
				$patient->id = null;

				$patient->name = $faker->firstName;
				$patient->surname = $faker->lastName;
				$patient->date_birth = strtotime($faker->date('d.m.Y'));
				$patient->date_created = strtotime($faker->date('d.m.Y'));
				$patient->status = 1;
				$patient->doctor_id = $doctor->id;

				if($patient->save()) {
					echo $patient->name . " added \n";
				} else {
					print_r($patient->errors);
					echo "someError \n";
					return 1;
				}
			}
		}

		return 0;
	}
}