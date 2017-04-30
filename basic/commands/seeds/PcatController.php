<?php
namespace app\commands\seeds;

use yii\console\Controller;
use app\models\MicroReferral;
use app\models\Pcat;

class PcatController extends Controller {
	public function actionIndex($args) {
		$faker = \Faker\Factory::create();

		$micro_referrals = MicroReferral::find()->all();

		if(!empty($micro_referrals)) {
			foreach ( $micro_referrals as $micro_referral ) {
				$pcat = new Pcat();
				for ( $i = 1; $i <= $args[0]; $i ++ ) {
					$pcat->setIsNewRecord( true );
					$pcat->id = null;

					$pcat->micro_referral_id = $micro_referral->id;
					$pcat->agent_id = $faker->numberBetween(1,3);
					$pcat->date_commenced = strtotime($faker->date('d.m.Y'));
					$pcat->date_stop = strtotime($faker->date('d.m.Y'));
					$pcat->indication_id = $faker->numberBetween(1,3);

					if($pcat->save()) {
						echo $pcat->id . " pcat added \n";
					} else {
						print_r($pcat->errors);
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