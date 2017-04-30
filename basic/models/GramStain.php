<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "gram_stains".
 *
 * @property integer $id
 * @property integer $gram_stain_id
 * @property integer $blood_culture_id
 */
class GramStain extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'gram_stains';
    }

    public static function getAllGramStains($blood_culture_main_id) {
        $results = self::find()
                       ->select([
                           '*'
                       ])
                       ->where(['blood_culture_id' => $blood_culture_main_id])
                       ->asArray()
                       ->all();
        return $results;
    }

    public static function saveBloodCultureMainGramStains($data, $blood_culture_id) {
        self::deleteAll(['blood_culture_id' => $blood_culture_id]);

        foreach ( (array)$data as $row ) {
            $model = new GramStain();

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

    public static function deleteGramStains($blood_culture_main_id) {
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
            [['gram_stain_id'], 'required'],
//            [['gram_stain_id', 'blood_culture_id'], 'integer'],
            [['gram_stain_id'], 'integer'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'gram_stain_id' => 'Gram Stain ID',
            'blood_culture_id' => 'Blood Culture ID'
        ];
    }
}
