<?php
namespace app\commands\seeds;

use app\models\Antibiotic;
use app\models\BloodCulture;
use app\models\BloodCultureMain;
use app\models\Opat;
use app\models\Organism;
use yii\console\Controller;
use app\models\MicroReferral;
use app\models\Blood;

class OrganismController extends Controller {
	/**
	 * @param $args
	 *
	 * @return int
	 */
	public function actionIndex($args) {
		$faker = \Faker\Factory::create();

		$blood_cultures = BloodCulture::find()->all();

		if(!empty($blood_cultures)) {
			foreach ( $blood_cultures as $bc ) {
				for ( $i = 1; $i <= $args[0]; $i ++ ) {
					$model = new Organism();

					$model->setIsNewRecord(true);
					$model->id = null;

					$model->blood_culture_id = $bc->id;
					$model->organism_id = $faker->numberBetween(1,3);

					if($model->save()) {
						echo $model->id . " organism added \n";
					} else {
						print_r($model->errors);
						echo "someError \n";

						return 1;
					}
				}
			}

		} else {
			echo "Firstly add some blood cultures \n";
		}

		return 0;
	}
}