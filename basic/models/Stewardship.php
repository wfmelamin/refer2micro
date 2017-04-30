<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "stewardships".
 *
 * @property integer $id
 * @property integer $micro_referral_id
 * @property integer $idic
 * @property integer $sdic
 * @property integer $ppi
 * @property integer $rv_id
 * @property integer $intervention_id
 * @property integer $outcome_id
 */
class Stewardship extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'stewardships';
    }

    public static function saveMicroReferralStewadships($data, $micro_referral_id) {
        self::deleteAll(['micro_referral_id' => $micro_referral_id]);

        foreach ( (array)$data as $row ) {
            $model = new Stewardship();

            $model->load($row, '');
            $model->micro_referral_id = $micro_referral_id;

            if(!$model->save()) {
                echo '<pre>';//TODO::remove
                print_r($model->errors);
                echo '</pre>';
                die();
            }
        }

        return true;
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
//            [['micro_referral_id', 'idic', 'sdic', 'ppi', 'rv_id', 'intervention_id', 'outcome_id'], 'required'],
//            [['micro_referral_id', 'idic', 'sdic', 'ppi', 'rv_id', 'intervention_id', 'outcome_id'], 'integer'],
            [['micro_referral_id'], 'required'],
            [['micro_referral_id'], 'integer'],
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
            'idic' => 'Idic',
            'sdic' => 'Sdic',
            'ppi' => 'Ppi',
            'rv_id' => 'Rv ID',
            'intervention_id' => 'Intervention ID',
            'outcome_id' => 'Otucome ID',
        ];
    }

    public static function getAllStewardshipsOfMicroReferral($micro_referral_id) {
        $results = self::find()
                               ->select([
                                   '*',
                               ])
                               ->where(['micro_referral_id' => $micro_referral_id])
                               ->asArray()
                               ->all();
        return $results;
    }
}
