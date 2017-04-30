<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "allergies".
 *
 * @property integer $id
 * @property integer $micro_referral_id
 * @property integer $allergy_id
 * @property string $description
 */
class Allergy extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'allergies';
    }

    public static function getAllAllergiesOfMicroReferral( $micro_referral_id ) {
        $results = Allergy::find()
                    ->where(['micro_referral_id' => $micro_referral_id])
                    ->asArray()
                    ->all();

        return $results;
    }

    public static function deletePatientAllergies( $micro_referral_id ) {
        return self::deleteAll(['micro_referral_id' => $micro_referral_id]);
    }


    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
//            [['micro_referral_id', 'allergy_id', 'description'], 'required'],
//            [['micro_referral_id', 'allergy_id'], 'integer'],
            [['micro_referral_id'], 'required'],
            [['micro_referral_id'], 'integer'],
            [['description'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'micro_referral_id' => 'Micro Referral ID',
            'allergy_id' => 'Allergy ID',
            'description' => 'Description',
        ];
    }

    public static function savePatientAllergies( $allergies_table_data, $micro_referral_id ) {
        self::deleteAll(['micro_referral_id' => $micro_referral_id]);

        foreach ( (array)$allergies_table_data as $row ) {
            $model = new Allergy();

            $model->micro_referral_id = $micro_referral_id;
            $model->allergy_id = $row['allergy_id'];
            $model->description = $row['description'];

            if(!$model->save()) {
                echo '<pre>';//TODO::remove
                print_r($model->errors);
                echo '</pre>';
                die();
            }
        }

        return true;
    }
}
