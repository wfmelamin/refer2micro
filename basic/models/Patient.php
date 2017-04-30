<?php

namespace app\models;

use Yii;
use app\models\MicroReferral;

/**
 * This is the model class for table "patients".
 *
 * @property integer $id
 * @property string $name
 * @property string $surname
 * @property integer $date_birth
 * @property integer $date_created
 * @property integer $status
 * @property integer $doctor_id
 */
class Patient extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'patients';
    }

    public static function getPatient($patient_id) {
        $model = self::find()
            ->select(['patients.*', 'CONCAT( users.name, " ", users.surname ) AS doctor_name', 'hospitals.name as hospital_name'])
            ->where([ 'patients.id' => $patient_id ])
            ->joinWith('user')
            ->joinWith('user.hospital')
            ->asArray()
            ->one();

        return $model;
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'surname', 'date_created'], 'required'],
            [['date_created', 'doctor_id'], 'integer'],
            [['name', 'surname'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'surname' => 'Surname',
            'date_birth' => 'Date Birth',
            'date_created' => 'Date Created',
            'status' => 'Status',
            'doctor_id' => 'Doctor ID',
        ];
    }

    /**
     * Get all patients info
     *
     * @return array|\yii\db\ActiveRecord[]
     */
    public static function getAllPatients($type) {
        $data = [];

        $patients = Patient::find()
                    ->select([
                        'patients.*',
                        'IF( patients.date_birth = \'0\', 0, DATE_FORMAT( FROM_UNIXTIME( patients.date_birth ) ,  \'%m/%d/%Y\' ) ) AS date_birth',
                        'IF( patients.date_created = \'0\', 0, DATE_FORMAT( FROM_UNIXTIME( patients.date_created ) ,  \'%m/%d/%Y\' ) ) AS date_created',
                        'hospitals.name as hospital_name'
                    ])->joinWith(['hospital']);

        $subQuery = '';

        switch($type) {
            case 'micro_referral':
                $subQuery = MicroReferral::find()->select('patient_id');
//                $patients->joinWith(['microReferral']);
                break;
            case 'blood_culture_main':
                $subQuery = BloodCultureMain::find()->select('patient_id');
//                $patients->joinWith(['bloodCultureMain']);
                break;
            case 'opat':
                $subQuery = Opat::find()->select('patient_id');
//                $patients->joinWith(['opat']);
                break;
        }


        $patients->where(['in', 'patients.id', $subQuery]);

        if(\Yii::$app->user->can('administrator') === false) {
            if(\Yii::$app->user->can('master_doctor') === true) {
                $subQueryDoctorsOfHospital = User::find([ 'hospital_id' => User::getCurrentUser()->hospital_id ])->select('id');
                $patients->andWhere([ 'in', 'patients.doctor_id', $subQueryDoctorsOfHospital ]);
            } else if(\Yii::$app->user->can('doctor') === true) {
                $patients->andWhere(['patients.doctor_id' => \Yii::$app->user->id]);
            }
        }

        $data['patients_all'] = $patients->asArray()->all();

        $patients->where(['not in', 'patients.id', $subQuery]);

        if(\Yii::$app->user->can('administrator') === false) {
            if(\Yii::$app->user->can('master_doctor') === true) {
                $subQueryDoctorsOfHospital = User::find([ 'hospital_id' => User::getCurrentUser()->hospital_id ])->select('id');
                $patients->andWhere([ 'in', 'patients.doctor_id', $subQueryDoctorsOfHospital ]);
            } else if(\Yii::$app->user->can('doctor') === true) {
                $patients->andWhere(['patients.doctor_id' => \Yii::$app->user->id]);
            }
        }

        $data['patients_free'] = $patients->asArray()->all();

        return $data;
    }



    public static function savePatientData($data, $is_new = false) { //make "create" and "save" functions separate
        if($data['id'] == 0) $is_new = true;

        if($is_new) {
            $model = new Patient();
        } else {
            $model = Patient::findOne($data['id']);
        }

        $data['date_birth'] = strtotime($data['date_birth']);

	    $model->name        = $data['name'];
        $model->surname     = $data['surname'];
        $model->date_birth  = $data['date_birth'];

        if(\Yii::$app->user->can('changePatientDoctor')) {
            $model->doctor_id  = $data['doctor_id'];
        }

        if($is_new) $model->date_created = time();
        if($is_new) $model->status = 1;
        if($is_new) $model->doctor_id  = \Yii::$app->user->id;

        if($model->save()) {
            return $model->getPrimaryKey();
        } else {
            echo '<pre>';//TODO::remove
            print_r($model->errors);
            echo '</pre>';
            die();
        }
    }

    public function getMicroReferral()
    {
        return $this->hasOne(MicroReferral::className(), ['patient_id' => 'id']);
    }
    public function getBloodCultureMain()
    {
        return $this->hasOne(BloodCultureMain::className(), ['patient_id' => 'id']);
    }
    public function getOpat()
    {
        return $this->hasOne(Opat::className(), ['patient_id' => 'id']);
    }

    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'doctor_id'])->select('id, name, hospital_id');
    }
    public function getHospital() {
        return $this->hasOne(Hospital::className(), ['id' => 'hospital_id'])->via('user');
    }
}
