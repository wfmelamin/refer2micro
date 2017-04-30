<?php

namespace app\models;

use Yii;
use app\models\BloodCulture;
use app\models\GramStain;
use app\models\Organism;

/**
 * This is the model class for table "blood_cultures".
 *
 * @property integer $id
 * @property integer $date_created
 * @property integer $patient_id
 */
class BloodCultureMain extends \yii\db\ActiveRecord {
	/**
	 * @inheritdoc
	 */
	public static function tableName() {
		return 'blood_cultures_main';
	}

	public static function getInfo($blood_culture_main_id) {
		$data = [];

		$data['blood_culture_main'] = self::getBloodCultureInfo($blood_culture_main_id);

		$data['organisms_list']            = Hospital::getListTable('organisms_list');
		$data['significants_list']         = Hospital::getListTable('significants_list');
		$data['gram_stains_list']          = Hospital::getListTable('gram_stains_list');

		$data['blood_cultures_table_data'] = BloodCulture::getAllBloodCultures($blood_culture_main_id);
		$data['gram_stains_table_data']    = GramStain::getAllGramStains($blood_culture_main_id);
		$data['organisms_table_data']      = Organism::getAllOrgansisms($blood_culture_main_id);

		return $data;
	}

	public static function saveInfo($data) {
		$data['blood_culture_main']['patient_id'] = Patient::savePatientData($data['blood_culture_main']['patient']);

		if(empty($data['blood_culture_main']['id'])) {
			$data['blood_culture_main']['id'] = self::saveBloodCultureMainData($data['blood_culture_main'], true);
		} else {
			self::saveBloodCultureMainData($data['blood_culture_main']);
		}

		Hospital::saveListTable('organisms_list', $data['organisms_list']);
		Hospital::saveListTable('significants_list', $data['significants_list']);
		Hospital::saveListTable('gram_stains_list', $data['gram_stains_list']);

		BloodCulture::saveBloodCultures($data['blood_cultures_table_data'], $data['blood_culture_main']['id']);

		return [
			'success' => true,
			'id' => $data['blood_culture_main']['id']
		];
	}

	public static function deleteInfo($blood_culture_main_id) {

		GramStain::deleteGramStains($blood_culture_main_id);
		Organism::deleteOrgansisms($blood_culture_main_id);
		BloodCulture::deleteBloodCultures($blood_culture_main_id);

		self::findOne(['id' => $blood_culture_main_id])->delete();

		return true;
	}

	public static function getAll() {
		$result = self::find()
			->where([
				User::tableName() . '.hospital_id' => User::getCurrentUser()->hospital_id
			])
			->joinWith(['patient', 'patient.user'])
			->asArray()
			->all();

		return $result;
	}

	private static function getBloodCultureInfo($blood_culture_main_id) {
		$data = self::find()
			->select([self::tableName() . '.*', 'CONCAT( users.name, " ", users.surname ) AS doctor_name', 'hospitals.name as hospital_name'])
			->where([self::tableName() . '.id' => $blood_culture_main_id])
			->joinWith(['patient', 'patient.user', 'patient.user.hospital'])
			->asArray()
			->one();

		$data['date_created']            = date('m/d/Y', $data['date_created']);
		$data['patient']['date_created'] = date('m/d/Y', $data['patient']['date_created']);
		$data['patient']['date_birth']   = date('m/d/Y', $data['patient']['date_birth']);

		return $data;
	}

	private static function saveBloodCultureMainData($data, $is_new = false) {
		if($is_new) {
			$model = new BloodCultureMain();
		} else {
			$model = BloodCultureMain::findOne($data['id']);
			$data['date_created'] = strtotime($data['date_created']);
		}

		$model->load($data, '');

		if ($is_new) $model->date_created = time();

		$model->patient_id = $data['patient_id'];

		if($model->save()) {
			return $model->getPrimaryKey();
		} else {
			echo '<pre>';//TODO::remove
			print_r($model->errors);
			echo '</pre>';
			die();
		}
	}

	public function getPatient() {
		return $this->hasOne(Patient::className(), ['id' => 'patient_id']);
	}

	/**
	 * @inheritdoc
	 */
	public function rules() {
		return [
			[ [ 'date_created', 'patient_id' ], 'required' ],
			[ [ 'date_created', 'patient_id' ], 'integer' ],
		];
	}



	/**
	 * @inheritdoc
	 */
	public function attributeLabels() {
		return [
			'id'           => 'ID',
			'date_created' => 'Date Created',
			'patient_id'   => 'Patient ID',
		];
	}
}
