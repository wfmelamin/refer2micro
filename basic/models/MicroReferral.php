<?php

namespace app\models;

use Yii;
use yii\web\UploadedFile;
use yii\helpers\FileHelper;

/**
 * This is the model class for table "micro_referrals".
 *
 * @property integer $id
 * @property integer $patient_id
 * @property integer $specialty_id
 * @property string $ward
 * @property string $team_bleeps
 * @property integer $date_created
 * @property integer $date_referral
 * @property integer $reason_id
 * @property string $clinical_details
 * @property string $medical_history
 * @property string $investigations
 * @property string $clinical_advice
 */
class MicroReferral extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'micro_referrals';
    }

    public static function uploadFile($micro_referral_id) {
        $file = Upload::find()->where(['item_type' => 'micro_referral', 'item_id' => $micro_referral_id])->one();

        if($file === null) {
            $file = new Upload();
            $file->item_id = $micro_referral_id;
            $file->item_type = 'micro_referral';
            $file->folder = uniqid(time() . rand(1, 10000));
        }

        $file->fileObject = UploadedFile::getInstanceByName('file');
        $file->filename = $file->fileObject->name;
        $file->date_created = time();

        if($file->upload()) {
            return [
                'success' => true,
                'file_link' => $file->file_link
            ];
        } else {
            return [
                'success' => false
            ];
        }
    }

    /**
     * @param $micro_referral_id
     */
    public static function removeFile($micro_referral_id) {
        /**
         * @var $file Upload
         */
        $file = Upload::find()->where(['item_type' => 'micro_referral', 'item_id' => $micro_referral_id])->one();
        $file->removeFile();
    }


    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['patient_id'], 'required'],
            [['patient_id', 'specialty_id', 'date_created', 'date_referral', 'reason_id'], 'integer'],
            [['clinical_details', 'medical_history', 'investigations', 'clinical_advice'], 'string'],
            [['ward', 'team_bleeps'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'patient_id' => 'Patient ID',
            'specialty_id' => 'Speciality ID',
            'ward' => 'Ward',
            'team_bleeps' => 'Team Bleeps',
            'date_created' => 'Date Created',
            'date_referral' => 'Date Referral',
            'reason_id' => 'Reason Referral ID',
            'clinical_details' => 'Clinical Details',
            'medical_history' => 'Medical History',
            'investigations' => 'Investigations',
            'clinical_advice' => 'Clinical Advice',
        ];
    }


    public static function getAll() {
        $models = self::find();

        //if administrator - show all items
        if(\Yii::$app->user->can('administrator') === false) {

            //if master doctor - show items in hospital
            if(\Yii::$app->user->can('master_doctor') === true) {
                $subQueryDoctorsOfHospital = User::find()
                    ->select('id')
                    ->where([ 'hospital_id' => User::getCurrentUser()->hospital_id ]);

                $subQueryPatientsOfHospitalDoctors = Patient::find()
                    ->select('id')
                    ->where([ 'in', 'doctor_id', $subQueryDoctorsOfHospital]);

                $models->andWhere([ 'in', 'patient_id', $subQueryPatientsOfHospitalDoctors ]);

                //if regular doctor - show items only by this doctor
            } else if(\Yii::$app->user->can('doctor') === true) {

                $subQueryPatientsOfDoctor = Patient::find()
                    ->select('id')
                    ->where([ 'in', 'doctor_id', \Yii::$app->user->id]);

                $models->andWhere([ 'in', 'patient_id', $subQueryPatientsOfDoctor ]);
            }
        }

        return $models->asArray()->all();
    }


    public static function getInfo( $micro_referral_id ) {
        $data = [];

        $data['micro_referral'] = self::getMicroReferralInfo($micro_referral_id);

        $data['specialties_list']   = Hospital::getListTable('specialties_list');
        $data['agents_list']        = Hospital::getListTable('agents_list');
        $data['allergies_list']     = Hospital::getListTable('allergies_list');
        $data['reasons_list']       = Hospital::getListTable('reasons_list');
        $data['rvs_list']           = Hospital::getListTable('rvs_list');
        $data['interventions_list'] = Hospital::getListTable('interventions_list');
        $data['outcomes_list']      = Hospital::getListTable('outcomes_list');
        $data['indications_list']   = Hospital::getListTable('indications_list');

        $data['bloods_table_data']         = Blood::getAllBloodsOfMicroReferral($micro_referral_id);
        $data['pcat_table_data']           = Pcat::getAllPcatsOfMicroReferral($micro_referral_id);
        $data['allergies_table_data']      = Allergy::getAllAllergiesOfMicroReferral($micro_referral_id);
        $data['followup_notes_table_data'] = FollowupNote::getAllFollowupNotesOfMicroReferral($micro_referral_id);
        $data['stewardships_table_data']   = Stewardship::getAllStewardshipsOfMicroReferral($micro_referral_id);

        return $data;
    }

    public static function getNextMicroReferralLink($micro_referrals, $current_micro_referral_id) {
        $next_id = 0;
        foreach ( (array)$micro_referrals as $key => $micro_referral ) {
            if($micro_referral->id == $current_micro_referral_id) {
                if(isset($micro_referrals[$key+1])) {
                    $next_id = $micro_referrals[$key+1]->id;
                } else {
                    $next_id = $micro_referrals[0]->id;
                }
            }
        }
        return \Yii::$app->urlManager->createUrl(['micro-referral/index', 'id' => $next_id]);

    }

    public static function getPreviousMicroReferralLink($micro_referrals, $current_micro_referral_id) {
        $prev_id = 0;
        foreach ( (array)$micro_referrals as $key => $micro_referral ) {
            if($micro_referral->id == $current_micro_referral_id) {
                if(isset($micro_referrals[$key-1])) {
                    $prev_id = $micro_referrals[$key-1]->id;
                } else {
                    $prev_id = $micro_referrals[count($micro_referrals)-1]->id;
                }
            }
        }
        return \Yii::$app->urlManager->createUrl(['micro-referral/index', 'id' => $prev_id]);
    }

    public static function getMicroReferralInfo($micro_referral_id) {
        $micro_referral = self::find()
                    ->select([self::tableName() . '.*', 'CONCAT( users.name, " ", users.surname ) AS doctor_name', 'hospitals.name as hospital_name'])
                    ->where([self::tableName() . '.id' => $micro_referral_id])
                    ->joinWith(['patient', 'patient.user', 'patient.user.hospital'])
                    ->asArray()
                    ->one();

        $micro_referral['date_created']            = date('m/d/Y', $micro_referral['date_created']);
        $micro_referral['date_referral']           = date('m/d/Y', $micro_referral['date_referral']);
        $micro_referral['patient']['date_created'] = date('m/d/Y', $micro_referral['patient']['date_created']);
        $micro_referral['patient']['date_birth']   = date('m/d/Y', $micro_referral['patient']['date_birth']);

        $micro_referral['file_link'] = '';
        $micro_referral['file_name'] =  'No file';

        if($file = Upload::find()->where(['item_type' => 'micro_referral', 'item_id' => $micro_referral_id])->one()) {
            $micro_referral['file_link'] = Yii::$app->urlManager->baseUrl . '/uploads/micro_referral/' . $file->folder . '/' . $file->filename;
            $micro_referral['file_name'] = $file->filename;
        }

        return $micro_referral;
    }

    /**
     * Save the whole info
     *
     * @param $data
     *
     * @return bool
     * @throws \Exception
     */
    public static function saveInfo( $data ) {
        $data['micro_referral']['patient_id'] = Patient::savePatientData($data['micro_referral']['patient']);

        if(empty($data['micro_referral']['id'])) {
            $data['micro_referral']['id'] = self::saveMicroReferralData($data['micro_referral'], true);
        } else {
            self::saveMicroReferralData($data['micro_referral']);
        }

        Hospital::saveListTable('specialties_list', $data['specialties_list']);
        Hospital::saveListTable('agents_list', $data['agents_list']);
        Hospital::saveListTable('allergies_list', $data['allergies_list']);
        Hospital::saveListTable('reasons_list', $data['reasons_list']);
        Hospital::saveListTable('rvs_list', $data['rvs_list']);
        Hospital::saveListTable('interventions_list', $data['interventions_list']);
        Hospital::saveListTable('outcomes_list', $data['outcomes_list']);
        Hospital::saveListTable('indications_list', $data['indications_list']);

        Blood::savePatientBloods($data['bloods_table_data'], $data['micro_referral']['id']);
        Pcat::savePatientPcats($data['pcat_table_data'], $data['micro_referral']['id']);
        Allergy::savePatientAllergies( $data['allergies_table_data'], $data['micro_referral']['id']);
        FollowupNote::savePatientFollowupNotes($data['followup_notes_table_data'], $data['micro_referral']['id']);
        Stewardship::saveMicroReferralStewadships($data['stewardships_table_data'], $data['micro_referral']['id']);

        return [
            'success' => true,
            'id' => $data['micro_referral']['id']
        ];
    }

    public static function saveMicroReferralData($data, $is_new = false) {
        if($is_new) {
            $model = new MicroReferral();
        } else {
            $model = MicroReferral::findOne($data['id']);
        }

        $model->load($data, '');

        $model->date_referral = strtotime($data['date_referral']);

	    if($is_new) {
		    $model->date_created = time();
            $model->date_referral = time();
	    } else {
		    $model->date_created = strtotime($data['date_created']);
            $model->date_referral = strtotime($data['date_referral']);
	    }

        if($model->save()) {
            return $model->getPrimaryKey();
        } else {
            echo '<pre>';//TODO::remove
            print_r($model->errors);
            echo '</pre>';
            die();
        }
    }

    public static function deleteInfo($micro_referral_id) {
        Blood::deletePatientBloods($micro_referral_id);
        Pcat::deletePatientPcats($micro_referral_id);
        Allergy::deletePatientAllergies($micro_referral_id);
        FollowupNote::deletePatientFollowupNotes($micro_referral_id);
        self::findOne(['id' => $micro_referral_id])->delete();



        return true;
    }

    public function getPatient() {
        return $this->hasOne(Patient::className(), ['id' => 'patient_id']);
    }
}
