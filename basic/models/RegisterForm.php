<?php
namespace app\models;
use Yii;
use yii\base\Model;
use app\models\User;
use yii\helpers\ArrayHelper;

/**
 * Signup form
 */
class RegisterForm extends Model
{
	public $name;
	public $surname;
	public $date_birth_month;
	public $date_birth_day;
	public $date_birth_year;
	public $phone;
	public $email;
	public $hospital_id;
	public $password;

	public static function getMonthsList() {
		$result = [];
		for($i = 1; $i < 13; $i++ ) {
			$str = $i;
			if($i < 10) $str = '0' . $i;
			$result[$str] = $str;
		}
		return $result;
	}

	public static function getDaysList() {
		$result = [];
		for($i = 1; $i < 32; $i++ ) {
			$str = $i;
			if($i < 10) $str = '0' . $i;
			$result[$str] = $str;
		}
		return $result;
	}

	public static function getYearsList() {
		$result = [];
		for($i = date('Y'); $i > 1930; $i--) {
			$result[$i] = $i;
		}
		return $result;
	}

	public static function getHospitals() {
		return ArrayHelper::map(Hospital::find()->all(), 'id', 'name');
	}

	/**
	 * @inheritdoc
	 */
	public function rules()
	{
		return [

			['name', 'trim'],
			['name', 'required'],
			['name', 'string', 'min' => 2, 'max' => 255],

			['surname', 'trim'],
			['surname', 'required'],
			['surname', 'string', 'min' => 2, 'max' => 255],

			['date_birth_month', 'required'],
			['date_birth_month', 'string', 'min' => 2, 'max' => 2],

			['date_birth_day', 'required'],
			['date_birth_day', 'string', 'min' => 2, 'max' => 2],

			['date_birth_year', 'required'],
			['date_birth_year', 'string', 'min' => 4, 'max' => 4],

			['phone', 'string', 'max' => 255],

			['email', 'trim'],
			['email', 'required'],
			['email', 'email'],
			['email', 'string', 'max' => 255],
			['email', 'unique', 'targetClass' => 'app\models\User', 'message' => 'This email address has already been taken.'],

			['hospital_id', 'integer'],
			['hospital_id', 'required'],

			['password', 'required'],
			['password', 'string', 'min' => 6],
		];
	}
	/**
	 * Signs user up.
	 *
	 * @return User|null the saved model or null if saving fails
	 */
	public function register()
	{
		if (!$this->validate()) {
			return null;
		}

		$user              = new User();
		$user->name        = $this->name;
		$user->surname     = $this->surname;
		$user->email       = $this->email;
		$user->date_birth  = strtotime($this->date_birth_day . '/' . $this->date_birth_month . '/' . $this->date_birth_year);
		$user->phone       = $this->phone;
		$user->hospital_id = $this->hospital_id;
		$user->status      = 0;

		$user->role_id     = Yii::$app->params['ROLE_DOCTOR'];

		$user->setPassword($this->password);
		$user->generateAuthKey();

		if($user->validate()) {
			$user->save(false);

			$this->sendRegistrationMessages($user);

			//assign role
			$auth = Yii::$app->authManager;
			$role = $auth->getRole('doctor');
			$auth->assign($role, $user->getId());

			return $user;
		}

		return null;
	}

	/**
	 * @param $user User
	 */
	private function sendRegistrationMessages($user) {
		$content = "Hi, please approve my registration!<br />";
		$content.= "Name: {$user->name}<br />";
		$content.= "Surname: {$user->surname}<br />";
		$content.= "Email: {$user->email}<br />";
		$content.= "Phone: {$user->phone}<br />";
		$content.= "Hospital name: {$user->hospital->name}<br />";
		$content.= "Date of birth: " . date('m/d/Y', $user->date_birth);

		$hospital_administrators = User::getHospitalAdministrators($user->hospital_id);

		$approval_message = new Message();
		$approval_message->user_from_id = $user->getPrimaryKey();
		$approval_message->content      = $content;
		$approval_message->date_created = time();
		$approval_message->type         = 2;
		$approval_message->is_read      = 0;

		foreach((array)$hospital_administrators as $hospital_administrator) {
			$approval_message->setIsNewRecord( true );
			$approval_message->id = null;

			$approval_message->user_to_id = $hospital_administrator->id;

			if(!$approval_message->save()) {
				echo '<pre>';//TODO::remove
				print_r($approval_message->errors);
				echo '</pre>';
				die();
			}

		}
	}
}