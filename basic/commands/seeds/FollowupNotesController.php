<?php
namespace app\commands\seeds;

use yii\console\Controller;
use app\models\MicroReferral;
use app\models\FollowupNote;

class FollowupNotesController extends Controller {
	public function actionIndex($args) {
		$faker = \Faker\Factory::create();

		$micro_referrals = MicroReferral::find()->all();

		if(!empty($micro_referrals)) {
			foreach ( $micro_referrals as $micro_referral ) {
				$note = new FollowupNote();
				for ( $i = 1; $i <= $args[0]; $i ++ ) {
					$note->setIsNewRecord( true );
					$note->id = null;

					$note->micro_referral_id = $micro_referral->id;
					$note->date_created = strtotime($faker->date('d.m.Y'));
					$note->note = $faker->text(100);

					if($note->save()) {
						echo $note->id . " pcat added \n";
					} else {
						print_r($note->errors);
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