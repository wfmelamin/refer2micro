<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "organisms".
 *
 * @property integer $id
 * @property integer $organism_id
 * @property mixed blood_culture_id
 */
class Organism extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'organisms';
    }

    public static function getAllOrgansisms($blood_culture_main_id) {
        $results = self::find()
                       ->select([
                           '*'
                       ])
                       ->where(['blood_culture_id' => $blood_culture_main_id])
                       ->asArray()
                       ->all();
        return $results;
    }

    public static function saveBloodCultureMainOrganisms($data, $blood_culture_id) {
        self::deleteAll(['blood_culture_id' => $blood_culture_id]);

        foreach ( (array)$data as $row ) {
            $model = new Organism();

            $model->load($row, '');
            $model->blood_culture_id    = $blood_culture_id;

            if(!$model->save()) {
                echo '<pre>';//TODO::remove
                print_r($model->errors);
                echo '</pre>';
                die();
            }
        }
    }

    public static function deleteOrgansisms($blood_culture_main_id) {
        $models = BloodCulture::find(['blood_culture_main_id' => $blood_culture_main_id])->all();

        foreach((array)$models as $model) {
            self::deleteAll(['blood_culture_id' => $model->id]);
        }

        return true;
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['organism_id'], 'required'],
//            [['organism_id', 'blood_culture_id'], 'integer'],
            [['organism_id'], 'integer'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'organism_id' => 'Organism ID',
            'blood_culture_id' => 'Blood culture ID'
        ];
    }
}
