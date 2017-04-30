<?php
namespace app\commands\seeds;

use yii\console\Controller;
use app\models\MicroReferral;
use app\models\Allergy;

class AllergyController extends Controller {
	public function actionIndex($args) {
		$faker = \Faker\Factory::create();

		$micro_referrals = MicroReferral::find()->all();

		if(!empty($micro_referrals)) {
			foreach ( $micro_referrals as $micro_referral ) {
				$allergy = new Allergy();
				for ( $i = 1; $i <= $args[0]; $i ++ ) {
					$allergy->setIsNewRecord( true );
					$allergy->id = null;

					$allergy->micro_referral_id = $micro_referral->id;
					$allergy->allergy_id = $faker->numberBetween(1,3);
					$allergy->description = $faker->text;

					if($allergy->save()) {
						echo $allergy->id . " allergy added \n";
					} else {
						print_r($allergy->errors);
						echo "someError \n";
						return 1;
					}

				}
			}

		} else {
			echo "Firstly add some micro referrals \n";
		}

		return 0;
	}
}