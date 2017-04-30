<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "bloods".
 *
 * @property integer $id
 * @property integer $micro_referral_id
 * @property integer $date_created
 * @property string $wcc
 * @property string $n0
 * @property string $crp
 * @property string $egfr
 * @property string $others
 */
class Blood extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'bloods';
    }

    public static function savePatientBloods( $bloods_table_data, $micro_referral_id ) {

        self::deleteAll(['micro_referral_id' => $micro_referral_id]);

        foreach ( (array)$bloods_table_data as $row ) {
            $model = new Blood();
            $model->micro_referral_id = $micro_referral_id;
            $model->date_created = strtotime($row['date_created']);
            $model->wcc = $row['wcc'];
            $model->n0 = $row['n0'];
            $model->crp = $row['crp'];
            $model->egfr = $row['egfr'];
            $model->others = $row['others'];

            if(!$model->save()) {
                echo '<pre>';//TODO::remove
                print_r($model->errors);
                echo '</pre>';
                die();
            }
        }

        return true;
    }

    public static function getAllBloodsOfMicroReferral( $micro_referral_id ) {
        $results = self::find()
                    ->select([
                            '*',
                            'IF( date_created = \'0\', 0, DATE_FORMAT( FROM_UNIXTIME( date_created ) ,  \'%m/%d/%Y\' ) ) AS date_created'
                    ])
                    ->where(['micro_referral_id' => $micro_referral_id])
                    ->asArray()
                    ->all();
        return $results;
    }

    public static function deletePatientBloods( $micro_referral_id ) {
        return self::deleteAll(['micro_referral_id' => $micro_referral_id]);
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
//            [['micro_referral_id', 'date_created', 'wcc', 'n0', 'crp', 'egfr', 'others'], 'required'],
//            [['micro_referral_id', 'date_created'], 'integer'],
            [['micro_referral_id'], 'required'],
            [['micro_referral_id'], 'integer'],
            [['wcc', 'n0', 'crp', 'egfr', 'others'], 'string', 'max' => 20],
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
            'date_created' => 'Date Log',
            'wcc' => 'Wcc',
            'n0' => 'N0',
            'crp' => 'Crp',
            'egfr' => 'Egfr',
            'others' => 'Others',
        ];
    }
}
