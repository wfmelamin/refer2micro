<?php
namespace app\commands\seeds;

use app\models\Antibiotic;
use app\models\Opat;
use yii\console\Controller;
use app\models\MicroReferral;
use app\models\Blood;

class AntibioticsController extends Controller {
	public function actionIndex($args) {
		$faker = \Faker\Factory::create();

		$opats = Opat::find()->all();

		if(!empty($opats)) {
			foreach ( $opats as $opat ) {
				for ( $i = 1; $i <= $args[0]; $i ++ ) {
					$model = new Antibiotic();

					$model->setIsNewRecord(true);
					$model->id = null;

					$model->opat_id = $opat->id;

					$model->antibiotic_id = $faker->numberBetween(1, 3);
					$model->start_date    = strtotime($faker->date('d.m.Y'));
					$model->stop_date     = strtotime($faker->date('d.m.Y'));
					$model->dose          = (string) $faker->word;
					$model->duration      = (string) $faker->word;
					$model->frequency     = (string) $faker->word;
					$model->need_change   = $faker->numberBetween(0, 1);


					if($model->save()) {
						echo $model->id . " antibiotic added \n";
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