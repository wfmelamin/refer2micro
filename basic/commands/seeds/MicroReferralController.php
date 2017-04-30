<?php
namespace app\commands\seeds;

use yii\console\Controller;
use app\models\Patient;
use app\models\MicroReferral;

class MicroReferralController extends Controller {
	public function actionIndex() {
		$faker = \Faker\Factory::create();

		$patients = Patient::find()->all();
		if(!empty($patients)) {
			$micro_referral = new MicroReferral();
			foreach($patients as $patient) {
				$micro_referral->setIsNewRecord(true);
				$micro_referral->id = null;

				$micro_referral->patient_id = $patient->id;
				$micro_referral->specialty_id = $faker->numberBetween(1,3);
				$micro_referral->ward = $faker->word;
				$micro_referral->team_bleeps = $faker->word;
				$micro_referral->referring_doctor = $faker->firstName . " " . $faker->lastName;
				$micro_referral->date_created = strtotime($faker->date('d.m.Y'));
				$micro_referral->date_referral = strtotime($faker->date('d.m.Y'));
				$micro_referral->reason_id = $faker->numberBetween(1,3);
				$micro_referral->clinical_details = $faker->text(200);
				$micro_referral->medical_history = $faker->text(200);
				$micro_referral->investigations = $faker->text(200);
				$micro_referral->clinical_advice = $faker->text(150);

				if($micro_referral->save()) {
					echo $micro_referral->id . " micro_referral added \n";
				} else {
					print_r($micro_referral->errors);
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