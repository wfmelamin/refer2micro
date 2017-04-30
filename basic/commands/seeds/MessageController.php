<?php
namespace app\commands\seeds;

use app\models\Message;
use app\models\User;
use yii\console\Controller;
use app\models\MicroReferral;
use app\models\Pcat;

class MessageController extends Controller {
	public function actionIndex($args) {
		$faker = \Faker\Factory::create();

		$users = User::find()->all();

		if(!empty($users)) {
			foreach ( $users as $user ) {
				$model = new Message();
				for ( $i = 1; $i <= $args[0]; $i ++ ) {
					$model->setIsNewRecord( true );
					$model->id = null;

					$model->user_from_id = $user->id;
					$model->user_to_id   = $faker->numberBetween(1, count($users));
					$model->content      = $faker->text(200);
					$model->date_created = time();
					$model->type         = 1;
					$model->is_read      = 0;

					if($model->save()) {
						echo $model->id . " message added \n";
					} else {
						print_r($model->errors);
						echo "someError \n";
						return 1;
					}

				}
			}

		} else {
			echo "Firstly add some users \n";
		}

		return 0;
	}
}