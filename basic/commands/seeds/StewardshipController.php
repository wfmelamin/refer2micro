<?php
namespace app\commands\seeds;

use app\models\Stewardship;
use yii\console\Controller;
use app\models\MicroReferral;

class StewardshipController extends Controller {
	public function actionIndex($args) {
		$faker = \Faker\Factory::create();

		$micro_referrals = MicroReferral::find()->all();

		if(!empty($micro_referrals)) {
			foreach ( $micro_referrals as $micro_referral ) {
				$model = new Stewardship();
				for ( $i = 1; $i <= $args[0]; $i ++ ) {
					$model->setIsNewRecord( true );
					$model->id = null;

					$model->micro_referral_id = $micro_referral->id;
					$model->idic = $faker->numberBetween(0,1);
					$model->sdic = $faker->numberBetween(0,1);
					$model->ppi = $faker->numberBetween(0,1);
					$model->rv_id = $faker->numberBetween(1,3);
					$model->intervention_id = $faker->numberBetween(1,3);
					$model->outcome_id = $faker->numberBetween(1,1);

					if($model->save()) {
						echo $model->id . " stewardship added \n";
					} else {
						print_r($model->errors);
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