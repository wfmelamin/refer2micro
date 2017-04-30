<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "opat".
 *
 * @property integer $id
 * @property integer $patient_id
 * @property integer $date_created
 * @property string $sex
 * @property string $weight
 * @property integer $age
 * @property integer $specialty_id
 * @property integer $managing_doctor_id
 * @property integer $referring_consultant_id
 * @property integer $primary_infective_id
 * @property integer $date_referral
 * @property integer $commisioning_board_id
 * @property integer $vad_type_id
 * @property integer $vad_insertion_date
 * @property integer $vad_removal_date
 * @property integer $complications_id
 * @property integer $outcome_id
 * @property integer $discharge_date
 */
class Opat extends \yii\db\ActiveRecord {
	/**
	 * @inheritdoc
	 */
	public static function tableName() {
		return 'opat';
	}

	public static function getInfo($opat_id) {
		$data = [];

		$data['opat'] = self::getOpatInfo($opat_id);

		$data['referring_consultants_list'] = Hospital::getListTable('referring_consultants_list');
		$data['managing_doctors_list']      = Hospital::getListTable('managing_doctors_list');
		$data['commisioning_boards_list']   = Hospital::getListTable('commisioning_boards_list');
		$data['vad_types_list']             = Hospital::getListTable('vad_types_list');
		$data['primary_infective_list']     = Hospital::getListTable('primary_infective_list');
		$data['complications_list']         = Hospital::getListTable('complications_list');
		$data['outcomes_list']              = Hospital::getListTable('outcomes_list');

		$data['antibiotics_table_data']     = Antibiotic::getAllAntibioticsOfOpat($opat_id);

		return $data;
	}

	public static function saveInfo($data) {
		$data['opat']['patient_id'] = Patient::savePatientData($data['opat']['patient']);

		if(empty($data['opat']['id'])) {
			$data['opat']['id'] = self::saveOpatData($data['opat'], true);
		} else {
			self::saveOpatData($data['opat']);
		}

		Hospital::saveListTable('referring_consultants_list', $data['referring_consultants_list']);
		Hospital::saveListTable('managing_doctors_list', $data['managing_doctors_list']);
		Hospital::saveListTable('commisioning_boards_list', $data['commisioning_boards_list']);
		Hospital::saveListTable('vad_types_list', $data['vad_types_list']);
		Hospital::saveListTable('primary_infective_list', $data['primary_infective_list']);
		Hospital::saveListTable('complications_list', $data['complications_list']);
		Hospital::saveListTable('outcomes_list', $data['outcomes_list']);

		Antibiotic::saveOpatAntibiotics($data['antibiotics_table_data'], $data['opat']['id']);

		return [
			'success'           => true,
			'id' => $data['opat']['id']
		];
	}

	public static function deleteInfo($opat_id) {
		Antibiotic::deleteOpatAntibiotics($opat_id);
		return self::findOne(['id' => $opat_id])->delete();
	}

	private static function getOpatInfo($opat_id) {
		$data = self::find()
		            ->select([
			            self::tableName() . '.*',
			            'CONCAT( users.name, " ", users.surname ) AS doctor_name',
			            'hospitals.name as hospital_name'
		            ])
		            ->where([ self::tableName() . '.id' => $opat_id ])
		            ->joinWith([ 'patient', 'patient.user', 'patient.user.hospital' ])
		            ->asArray()
		            ->one();

		if($data['date_created']       != 0) $data['date_created']       = date('m/d/Y', $data['date_created']);
		if($data['vad_insertion_date'] != 0) $data['vad_insertion_date'] = date('m/d/Y', $data['vad_insertion_date']);
		if($data['vad_removal_date']   != 0) $data['vad_removal_date']   = date('m/d/Y', $data['vad_removal_date']);
		if($data['discharge_date']     != 0) $data['discharge_date']     = date('m/d/Y', $data['discharge_date']);
		if($data['date_referral']      != 0) $data['date_referral']      = date('m/d/Y', $data['date_referral']);

		$data['patient']['date_created'] = date('m/d/Y', $data['patient']['date_created']);
		$data['patient']['date_birth']   = date('m/d/Y', $data['patient']['date_birth']);

		return $data;
	}

	private static function saveOpatData($data, $is_new = false) {
		if($is_new) {
			$model = new Opat();
		} else {
			$model = Opat::findOne($data['id']);
			$data['date_created'] = strtotime($data['date_created']);
		}

		$data['date_referral']      = strtotime($data['date_referral']);
		$data['discharge_date']     = strtotime($data['discharge_date']);
		$data['vad_insertion_date'] = strtotime($data['vad_insertion_date']);
		$data['vad_removal_date']   = strtotime($data['vad_removal_date']);

		$model->load($data, '');

		if ($is_new) $model->date_created = time();
		if ($is_new) $model->date_referral = time();

		$model->patient_id = $data['patient_id'];

		if($model->save()) {
			return $model->getPrimaryKey();
		} else {
			echo '<pre>saveOpatData';//TODO::remove
			print_r($model->errors);
			echo '</pre>';
			die();
		}
	}

	/**
	 * @inheritdoc
	 */
	public function rules() {
		return [
			[[ 'patient_id' ], 'required'],
			[[ 'patient_id' ], 'integer'],
			/*[
				[
					'date_created',
					'age',
					'specialty_id',
					'managing_doctor_id',
					'referring_consultant_id',
					'primary_infective_id',
					'date_referral',
					'commisioning_board_id',
					'vad_type_id',
					'vad_insertion_date',
					'vad_removal_date',
					'complications_id',
					'outcome_id',
					'discharge_date'
				],
				'integer',
				'min' => 0
			],*/

			[ [ 'sex' ], 'string', 'max' => 10 ],
			[ [ 'weight' ], 'string', 'max' => 30 ],
		];
	}

	/**
	 * @inheritdoc
	 */
	public function attributeLabels() {
		return [
			'id'                      => 'ID',
			'patient_id'              => 'Patient ID',
			'date_created'            => 'Date Created',
			'sex'                     => 'Sex',
			'weight'                  => 'Weight',
			'age'                     => 'Age',
			'specialty_id'            => 'Specialty ID',
			'managing_doctor_id'      => 'Managing Doctor ID',
			'referring_consultant_id' => 'Referring Consultant ID',
			'primary_infective_id'    => 'Primary Infective ID',
			'date_referral'           => 'Date Referral',
			'commisioning_board_id'   => 'Commisioning Board ID',
			'vad_type_id'             => 'Vad Type ID',
			'vad_insertion_date'      => 'Vad Insertion Date',
			'vad_removal_date'        => 'Vad Removal Date',
			'complications_id'        => 'Complications ID',
			'outcome_id'              => 'Outcome ID',
			'discharge_date'          => 'Discharge Date',
		];
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

	public function getPatient() {
		return $this->hasOne(Patient::className(), ['id' => 'patient_id']);
	}

}
