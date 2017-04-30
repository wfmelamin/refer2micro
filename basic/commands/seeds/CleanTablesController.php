<?php
namespace app\commands\seeds;

use yii\console\Controller;

class CleanTablesController extends Controller {
	public function actionIndex() {
		$tables = [
			'allergies',
			'bloods',
			'micro_referrals',
			'patients',
			'followup_notes',
			'pcat',
			'opat',
			'antibiotics',
			'blood_cultures_main',
			'blood_cultures',
			'gram_stains',
			'organisms',
			'stewardships',
			'uploads', //TODO:: remove files also!
			'messages'
		];

		foreach ( $tables as $table_name ) {
			\Yii::$app->db->createCommand()->truncateTable($table_name)->execute();

			echo $table_name . " truncated \n";
		}
	}
}