<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "antibiotics".
 *
 * @property integer $id
 * @property integer $opat_id
 * @property integer $antibiotic_id
 * @property string $dose
 * @property integer $start_date
 * @property integer $stop_date
 * @property string $duration
 * @property string $frequency
 * @property integer $need_change
 */
class Antibiotic extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'antibiotics';
    }

    public static function getAllAntibioticsOfOpat($opat_id) {
        $results = self::find()
                        ->select([
                            '*',
                            'IF( start_date = \'0\', 0, DATE_FORMAT( FROM_UNIXTIME( start_date ) ,  \'%m/%d/%Y\' ) ) AS start_date',
                            'IF( stop_date = \'0\', 0, DATE_FORMAT( FROM_UNIXTIME( stop_date ) ,  \'%m/%d/%Y\' ) ) AS stop_date'
                        ])
                        ->where(['opat_id' => $opat_id])
                        ->asArray()
                        ->all();
        return $results;
    }

    public static function saveOpatAntibiotics($data, $opat_id) {
        self::deleteAll(['opat_id' => $opat_id]);

        foreach ( (array)$data as $row ) {
            $model = new Antibiotic();

            $model->load($row, '');
            $model->opat_id    = $opat_id;
            $model->start_date = strtotime($row['start_date']);
            $model->stop_date  = strtotime($row['stop_date']);

            if(!$model->save()) {
                echo '<pre>';//TODO::remove
                print_r($model->errors);
                echo '</pre>';
                die();
            }
        }
    }

    public static function deleteOpatAntibiotics($opat_id) {
        return self::deleteAll(['opat_id' => $opat_id]);
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
//            [['opat_id', 'antibiotic_id', 'dose', 'start_date', 'stop_date', 'duration', 'frequency', 'need_change'], 'required'],
//            [['opat_id', 'antibiotic_id', 'start_date', 'stop_date', 'need_change'], 'integer'],
            [['opat_id'], 'required'],
            [['opat_id'], 'integer'],
            [['dose'], 'string', 'max' => 50],
            [['duration', 'frequency'], 'string', 'max' => 30],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'opat_id' => 'Opat ID',
            'antibiotic_id' => 'Antibiotic ID',
            'dose' => 'Dose',
            'start_date' => 'Start Date',
            'stop_date' => 'Stop Date',
            'duration' => 'Duration',
            'frequency' => 'Frequency',
            'need_change' => 'Need Change',
        ];
    }
}
