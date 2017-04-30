<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "pcat".
 *
 * @property integer $id
 * @property integer $micro_referral_id
 * @property integer $agent_id
 * @property integer $date_commenced
 * @property integer $date_stop
 * @property integer $indication_id
 */
class Pcat extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'pcat';
    }

    public static function savePatientPcats( $pcat_table_data, $micro_referral_id ) {
        self::deleteAll(['micro_referral_id' => $micro_referral_id]);

        foreach ( (array)$pcat_table_data as $row ) {
            $model = new Pcat();
            $model->micro_referral_id = $micro_referral_id;
            $model->agent_id = $row['agent_id'];
            $model->date_commenced = strtotime($row['date_commenced']);
            $model->date_stop = strtotime($row['date_stop']);
            $model->indication_id = $row['indication_id'];

            if(!$model->save()) {
                echo '<pre>';//TODO::remove
                print_r($model->errors);
                echo '</pre>';
                die();
            }
        }

        return true;
    }

    public static function getAllPcatsOfMicroReferral( $micro_referral_id ) {
        $results = Pcat::find()
                    ->select([
                        '*',
                        'IF( date_commenced = \'0\', 0, DATE_FORMAT( FROM_UNIXTIME( date_commenced ) ,  \'%m/%d/%Y\' ) ) AS date_commenced',
                        'IF( date_stop = \'0\', 0, DATE_FORMAT( FROM_UNIXTIME( date_stop ) ,  \'%m/%d/%Y\' ) ) AS date_stop',
                    ])
                    ->where(['micro_referral_id' => $micro_referral_id])
                    ->asArray()
                    ->all();
        return $results;
    }

    public static function deletePatientPcats( $micro_referral_id ) {
        return self::deleteAll(['micro_referral_id' => $micro_referral_id]);
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
//            [['micro_referral_id', 'agent_id', 'date_commenced', 'date_stop'], 'required'],
//            [['micro_referral_id', 'agent_id', 'date_commenced', 'date_stop', 'indication_id'], 'integer'],
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
            'agent_id' => 'Agent ID',
            'date_commenced' => 'Date Commenced',
            'date_stop' => 'Date Stop',
            'indication_id' => 'Indication ID',
        ];
    }
}
