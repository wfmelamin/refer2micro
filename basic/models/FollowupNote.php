<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "followup_notes".
 *
 * @property integer $id
 * @property integer $micro_referral_id
 * @property integer $date_created
 * @property string $note
 */
class FollowupNote extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'followup_notes';
    }

    public static function savePatientFollowupNotes( $followup_notes_table_data, $micro_referral_id ) {
        self::deleteAll(['micro_referral_id' => $micro_referral_id]);

        foreach ( (array)$followup_notes_table_data as $row ) {
            $model = new FollowupNote();

            $model->micro_referral_id = $micro_referral_id;
            $model->date_created = strtotime($row['date_created']);
            $model->note = $row['note'];

            if(!$model->save()) {
                echo '<pre>';//TODO::remove
                print_r($model->errors);
                echo '</pre>';
                die();
            }
        }

        return true;
    }

    public static function getAllFollowupNotesOfMicroReferral( $micro_referral_id ) {
        $results = FollowupNote::find()
                        ->select([
                            '*',
                            'IF( date_created = \'0\', 0, DATE_FORMAT( FROM_UNIXTIME( date_created ) ,  \'%m/%d/%Y\' ) ) AS date_created'
                        ])
                        ->where(['micro_referral_id' => $micro_referral_id])
                        ->asArray()
                        ->all();

        return $results;
    }

    public static function deletePatientFollowupNotes( $micro_referral_id ) {
        return self::deleteAll(['micro_referral_id' => $micro_referral_id]);
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
//            [['micro_referral_id', 'date_created', 'note'], 'required'],
//            [['micro_referral_id', 'date_created'], 'integer'],
            [['micro_referral_id'], 'required'],
            [['micro_referral_id'], 'integer'],
            [['note'], 'string', 'max' => 255],
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
            'date_created' => 'Date Created',
            'note' => 'Note',
        ];
    }
}
