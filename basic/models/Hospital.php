<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "hospitals".
 *
 * @property integer $id
 * @property string $name
 */
class Hospital extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'hospitals';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name'], 'required'],
            [['name'], 'string', 'max' => 255],
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
        ];
    }

    public static function getListTable($table_name) {
        $records = \Yii::$app->db->createCommand("SELECT id, name FROM $table_name")->queryAll();
        return $records;
    }

    /**
     * @param $table_name
     * @param $raw_list_data
     *
     * @return mixed
     * @throws \Exception
     * @throws \yii\db\Exception
     */
    public static function saveListTable($table_name, $raw_list_data) {

        if(empty($raw_list_data) || !is_array($raw_list_data[0])) return true;

        $transaction = \Yii::$app->db->beginTransaction();

        try {
            //convert list_data to [ ['1', 'name 1'], ['2', 'name 2'], ]
            foreach ( (array)$raw_list_data as $key => $value ) {
                $list_data[] = array_values($value);
            }

            //firstly remove everything from table
            \Yii::$app->db->createCommand()->truncateTable($table_name)->execute();

            //then insert all rows
            \Yii::$app->db->createCommand()->batchInsert($table_name, ['id', 'name'], $raw_list_data)->execute();

            $transaction->commit();
        } catch (\Exception $e) {
            $transaction->rollBack();
            throw $e;
        }


        return true;
    }
}
