<?php

namespace app\models;

use Yii;
use yii\db\ActiveQuery;
use yii\db\oci\QueryBuilder;

/**
 * This is the model class for table "messages".
 *
 * @property integer $id
 * @property integer $user_from_id
 * @property integer $user_to_id
 * @property string  $content
 * @property integer $date_created
 * @property integer $type
 * @property integer $is_read
 */
class Message extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'messages';
    }

    public static function getAll($user_to_id) {
        return self::find()
            ->select([
                '*',
                'IF( date_created = \'0\', 0, DATE_FORMAT( FROM_UNIXTIME( date_created ) ,  \'%H:%i %m/%d/%Y\' ) ) AS date_created',
                '(SELECT CONCAT(name, \' \', surname) FROM users WHERE id = messages.user_from_id) as from_name'
            ])
            ->where([
                'or',
                ['and', ['user_from_id' => $user_to_id], ['user_to_id' => Yii::$app->user->id]],
                ['and', ['user_to_id' => $user_to_id], ['user_from_id' => Yii::$app->user->id]]
            ])
            ->asArray()
            ->all();
    }

    public static function saveMessage($user_to_id, $content) {
        $user_from_id = Yii::$app->user->id;

        $model = new self;
        $model->user_from_id = $user_from_id;
        $model->user_to_id   = $user_to_id;
        $model->content      = $content;
        $model->date_created = time();
        $model->type         = 1;
        $model->is_read      = 0;

        return ['success' => $model->save()];
    }

    public static function readMessages($user_to_id) {
        $user_from_id = Yii::$app->user->id;
        $models = self::find()->where(['and', ['user_from_id' => $user_to_id], ['user_to_id' => $user_from_id]])->all();

        foreach((array)$models as $model) {
            $model->is_read = 1;
            $model->save();
        }

        return ['success' => true];
    }

    public static function getNewMessagesCount() {
        return self::find()->where(['user_to_id' => Yii::$app->user->id, 'is_read' => '0'])->count();
    }

    public function getFromUser() {
        return $this->hasOne(User::className(), ['id' => 'user_from_id']);
    }

    public function getToUser() {
        return $this->hasOne(User::className(), ['id' => 'user_to_id']);
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_from_id', 'user_to_id', 'content', 'date_created', 'type', 'is_read'], 'required'],
            [['user_from_id', 'user_to_id', 'date_created', 'type', 'is_read'], 'integer'],
            [['content'], 'string'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'user_from_id' => 'User From ID',
            'user_to_id' => 'User To ID',
            'content' => 'Content',
            'date_created' => 'Date Created',
            'type' => 'Type',
            'is_read' => 'Is Read',
        ];
    }
}
