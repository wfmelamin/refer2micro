<?php
namespace app\commands\seeds;

use yii\console\Controller;
use app\models\MicroReferral;
use app\models\Blood;

class BloodController extends Controller {
	public function actionIndex($args) {
		$faker = \Faker\Factory::create();

		$micro_referrals = MicroReferral::find()->all();

		if(!empty($micro_referrals)) {
			foreach ( $micro_referrals as $micro_referral ) {
				$blood = new Blood();
				for ( $i = 1; $i <= $args[0]; $i ++ ) {
					$blood->setIsNewRecord( true );
					$blood->id = null;

					$blood->micro_referral_id = $micro_referral->id;
					$blood->date_created = strtotime($faker->date('d.m.Y'));
					$blood->wcc = (string)$faker->numberBetween(1,9);
					$blood->n0 = (string)$faker->numberBetween(1,9);
					$blood->crp = (string)$faker->numberBetween(1,9);
					$blood->egfr = (string)$faker->numberBetween(1,9);
					$blood->others = (string)$faker->numberBetween(1,9);

					if($blood->save()) {
						echo $blood->id . " blood added \n";
					} else {
						print_r($blood->errors);
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