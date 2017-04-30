<?php

namespace app\models;
use Yii;
use yii\db\ActiveRecord;
use yii\web\IdentityInterface;

/**
 * This is the model class for table "users".
 *
 * @property integer $id
 * @property string  $name
 * @property string  $surname
 * @property string  $email
 * @property string  $auth_key
 * @property string  $date_birth
 * @property string  $phone
 * @property string  $hospital_id
 * @property string  $role_id
 * @property string  $status
 * @property string  $password
 */

class User extends ActiveRecord implements IdentityInterface
{
    public static function tableName()
    {
        return 'users';
    }

    /**
     * Finds an identity by the given ID.
     *
     * @param string|integer $id the ID to be looked for
     * @return IdentityInterface|null the identity object that matches the given ID.
     */
    public static function findIdentity($id)
    {
        return static::findOne($id);
    }

    /**
     * Finds an identity by the given token.
     *
     * @param string $token the token to be looked for
     * @return IdentityInterface|null the identity object that matches the given token.
     */
    public static function findIdentityByAccessToken($token, $type = null)
    {
        return static::findOne(['access_token' => $token]);
    }

    public static function findByUsername( $username ) {
        return self::find()->where(['email' => $username])->one();
    }

    public static function getAccessData() {
        $data = [
            'microReferralInterface' => false,
            'bloodCulturesInterface' => false,
            'opatInterface'          => false,
            'notificationsInterface' => false,
            'changeListTables'       => false,
            'changePatientDoctor'    => false,
            'changePatientHospital'  => false,
            'searchByHospitalName'   => false,
            'approveDoctors'         => false,
        ];

        foreach($data as $key => $value) {
            $data[$key] = \Yii::$app->user->can($key);
        }

        return $data;

        /*$roles = \Yii::$app->authManager->getRolesByUser(\Yii::$app->user->getId());

        $role_name = '';

        foreach($roles as $name => $role)
            $role_name = $name;*/
    }

	/**
     * @return User
     */
    public static function getCurrentUser() {
        $id = \Yii::$app->user->getId();
        return self::findOne($id);
    }

    public static function getAllDoctors() {
        $messagesBasicQuery = Message::find()->select(['COUNT(id) as count'])
            ->where('user_to_id =' . (int)\Yii::$app->user->id . ' AND user_from_id = '. self::tableName() . '.id');

        //messages count - for both doctors
        $messagesCountSubQuery = clone $messagesBasicQuery;
        $messagesCountSubQuery->orWhere('user_from_id =' . (int)\Yii::$app->user->id . ' AND user_to_id = '. self::tableName() . '.id');

        //new messages count
        $newMessagesCountSubQuery = clone $messagesBasicQuery;
        $newMessagesCountSubQuery->andWhere(['is_read' => 0]);

        //last messages data
        $lastMessageDataSubQuery = clone $messagesBasicQuery;
        $lastMessageDataSubQuery->select([
            'IF( date_created = \'0\', 0, DATE_FORMAT( FROM_UNIXTIME( date_created ) ,  \'%m/%d/%Y %H:%i\' ) ) AS date_created'
        ]);

        $result = self::find()->select([
            'id',
            'name' => 'CONCAT(name, \' \', surname)',
            'messages_count'     => $messagesCountSubQuery,
            'new_messages_count' => $newMessagesCountSubQuery,
            'last_message_date'  => $lastMessageDataSubQuery
        ]);

        if(\Yii::$app->user->can('administrator') === false ) {
            $result->where(['hospital_id' => User::getCurrentUser()->hospital_id]);
        }

//        $result->andWhere(['!=', 'id',  \Yii::$app->user->id]);

        $result->orderBy([
            'last_message_date' => SORT_DESC,
            'new_messages_count' => SORT_DESC,
            'messages_count' => SORT_DESC
        ]);

        $result = $result->asArray()->all();

        foreach((array)$result as $key => $value) {
            //if self, set true, else - false
            $value['self'] = $value['id'] == Yii::$app->user->id;

            $result[$key] = $value;
        }

        return $result;
    }

    public static function getHospitalAdministrators($hospital_id) {
        $result = self::find()->where([
            'or',
            [
                'and',
                ['hospital_id' => $hospital_id],
                ['role_id'     => Yii::$app->params['ROLE_MASTER_DOCTOR']]
            ],
            [
                'role_id' => Yii::$app->params['ROLE_ADMINISTRATOR']
            ]
        ]);

        return $result->all();
    }

    public static function approveRegister($user_id) {
        if(Yii::$app->user->can('approveDoctors')) {
            $user = User::findOne($user_id);

            if(Yii::$app->user->can('master_doctor')) {
                if(User::getCurrentUser()->hospital_id !== $user->hospital_id) {
                    return ['success' => false];
                }
            }

            $user->status = 1;

            $messages = Message::find()->where(['user_from_id' => $user->id, 'type' => Yii::$app->params['MESSAGE_REGISTER']])->all();

            foreach((array)$messages as $message) {
                $message->type = Yii::$app->params['MESSAGE_REGISTER_APPROVED'];
                $message->save();
            }

            return ['success' => $user->save()];
        } else {
            return ['success' => false];
        }
    }

    public static function disapproveRegister($user_id) {
        if(Yii::$app->user->can('approveDoctors')) {
            $user = User::findOne($user_id);

            if(Yii::$app->user->can('master_doctor')) {
                if(User::getCurrentUser()->hospital_id !== $user->hospital_id) {
                    return ['success' => false];
                }
            }

            $user->status = 2;

            $messages = Message::find()->where(['user_from_id' => $user->id, 'type' => Yii::$app->params['MESSAGE_REGISTER']])->all();

            foreach((array)$messages as $message) {
                $message->type = Yii::$app->params['MESSAGE_REGISTER_DISAPPROVED'];
                $message->save();
            }

            return ['success' => $user->save()];
        } else {
            return ['success' => false];
        }
    }

    //main rule for access
    public static function isMicroReferralOwner($micro_referral_id) {
        if(Yii::$app->user->can('administrator')) return true;

        $micro_referral = MicroReferral::find()->where([MicroReferral::tableName() . '.id' => $micro_referral_id])->joinWith(['patient', 'patient.user'])->one();

        //master doctor only at his hospital
        if(Yii::$app->user->can('master_doctor')) {
            return $micro_referral->patient->user->hospital_id === User::getCurrentUser()->hospital_id;
        } elseif(Yii::$app->user->can('doctor')) {
            return $micro_referral->patient->doctor_id === Yii::$app->user->getId();
        }

        return false;
    }

    //main rule for access
    public static function isBloodCultureMainOwner($blood_culture_main_id) {
        if(Yii::$app->user->can('administrator')) return true;

        $blood_culture_main = BloodCultureMain::find()->where([BloodCultureMain::tableName() . '.id' => $blood_culture_main_id])->joinWith(['patient', 'patient.user'])->one();

        //master doctor only at his hospital
        if(Yii::$app->user->can('master_doctor')) {
            return $blood_culture_main->patient->user->hospital_id === User::getCurrentUser()->hospital_id;
        }

        return false;
    }

    //main rule for access
    public static function isOpatOwner($opat_id) {
        if(Yii::$app->user->can('administrator')) return true;

        $opat = Opat::find()->where([Opat::tableName() . '.id' => $opat_id])->joinWith(['patient', 'patient.user'])->one();

        //master doctor only at his hospital
        if(Yii::$app->user->can('master_doctor')) {
            return $opat->patient->user->hospital_id === User::getCurrentUser()->hospital_id;
        }

        return false;
    }

    /**
     * @return int|string current user ID
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @return string current user auth key
     */
    public function getAuthKey()
    {
        return $this->auth_key;
    }

    /**
     * @param string $authKey
     * @return boolean if auth key is valid for current user
     */
    public function validateAuthKey($authKey)
    {
        return $this->getAuthKey() === $authKey;
    }

   /* public function validatePassword($password) {
        return $this->password === $password;
    }*/

    /**
     * Validates password
     *
     * @param string $password password to validate
     * @return boolean if password provided is valid for current user
     */
    public function validatePassword($password)
    {
        return Yii::$app->security->validatePassword($password, $this->password);
    }


    /**
     * Generates password hash from password and sets it to the model
     *
     * @param string $password
     */
    public function setPassword($password)
    {
        $this->password = \Yii::$app->security->generatePasswordHash($password);
    }

    /**
     * Generates "remember me" authentication key
     */
    public function generateAuthKey()
    {
        $this->auth_key = \Yii::$app->security->generateRandomString();
    }


    public function getHospital()
    {
        return $this->hasOne(Hospital::className(), ['id' => 'hospital_id']);
    }
}