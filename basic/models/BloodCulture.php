<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "blood_culture_childs".
 *
 * @property integer $id
 * @property integer $blood_culture_main_id
 * @property string  $lab_no
 * @property integer $date_sample
 * @property integer $sensitivity_complete
 * @property integer $significant_id
 * @property string  $follow_up_required
 * @property integer $active_case
 */
class BloodCulture extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'blood_cultures';
    }

    public static function getAllBloodCultures($blood_culture_main_id) {
        $results = self::find()
                       ->select([
                           '*',
                           'IF( date_sample = \'0\', 0, DATE_FORMAT( FROM_UNIXTIME( date_sample ) ,  \'%m/%d/%Y\' ) ) AS date_sample'
                       ])
                       ->where(['blood_culture_main_id' => $blood_culture_main_id])
                       ->asArray()
                       ->all();

        foreach((array)$results as $key => $result) {
            $results[$key]['gram_stains_table_data'] = GramStain::getAllGramStains($result['id']);
            $results[$key]['organisms_table_data'] = Organism::getAllOrgansisms($result['id']);
        }

        return $results;
    }

    public static function saveBloodCultures($data, $blood_culture_main_id) {
        self::deleteAll(['blood_culture_main_id' => $blood_culture_main_id]);

        foreach ( (array)$data as $row ) {
            $model = new BloodCulture();

            $model->load($row, '');
            $model->blood_culture_main_id    = $blood_culture_main_id;
            $model->date_sample = strtotime($row['date_sample']);

            if($model->save()) {
                GramStain::saveBloodCultureMainGramStains($row['gram_stains_table_data'], $model->getPrimaryKey());
                Organism::saveBloodCultureMainOrganisms( $row['organisms_table_data'], $model->getPrimaryKey());
            } else {
                echo '<pre>';//TODO::remove
                print_r($model->errors);
                echo '</pre>';
                die();
            }
        }
    }

    public static function deleteBloodCultures($blood_culture_main_id) {
        return self::deleteAll(['blood_culture_main_id' => $blood_culture_main_id]);
    }

    public static function getAllLaboratories() {
	    $result = [];

        $query = self::find()->joinWith(['bloodCultureMain.patient.user']);

        if(\Yii::$app->user->can('administrator') === false) {
            if(\Yii::$app->user->can('master_doctor')) {
                $query->andWhere(['users.hospital_id' => User::getCurrentUser()->hospital_id]);
            } else if(\Yii::$app->user->can('doctor') === true) {
                $query->andWhere(['patients.doctor_id' => \Yii::$app->user->id]);
            } else {
                return [];
            }
        }

        $blood_cultures = $query->asArray()->all();

        foreach($blood_cultures as $key => $item) {
            $result[] = [
	            'id'      => $item['bloodCultureMain']['patient']['id'],
	            'lab_no'  => $item['lab_no'],
	            'name'    => $item['bloodCultureMain']['patient']['name'],
	            'surname' => $item['bloodCultureMain']['patient']['surname']
            ];
        } unset($key); unset($item);

        return $result;
    }

    public function getBloodCultureMain() {
        return $this->hasOne(BloodCultureMain::className(), ['id' => 'blood_culture_main_id']);
    }


    public function getHospital() {
        return $this->hasOne(Hospital::className(), ['id' => 'hospital_id'])->via('user');
    }


    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
//            [['blood_culture_main_id', 'lab_no', 'date_sample', 'sensitivity_complete', 'significant_id', 'follow_up_required', 'active_case'], 'required'],
//            [['blood_culture_main_id', 'date_sample', 'sensitivity_complete', 'significant_id', 'active_case'], 'integer'],
            [['blood_culture_main_id'], 'required'],
            [['blood_culture_main_id'], 'integer'],
//            [['follow_up_required'], 'string'],
            [['lab_no'], 'string', 'max' => 30],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'blood_culture_main_id' => 'Blood Culture ID',
            'lab_no' => 'Lab No',
            'date_sample' => 'Date Sample',
            'sensitivity_complete' => 'Sensitivity Complete',
            'significant_id' => 'Significant ID',
            'follow_up_required' => 'Follow Up Required',
            'active_case' => 'Active Case',
        ];
    }
}
