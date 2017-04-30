<?php
//TODO:: когда чётко буду знать какие у нас есть действия что бы приписать их ролям
namespace app\commands;

use app\models\User;
use Yii;
use yii\console\Controller;

class RbacController extends Controller
{
	public function actionRun() {
		$this->actionInit();
		$this->actionSetRoles();
		$this->actionSetRules();
	}
	public function actionInit()
	{
		$auth = Yii::$app->authManager;

		$auth->removeAll();

		$administrator = $auth->createRole('administrator');
		$auth->add($administrator);

		$master_doctor = $auth->createRole('master_doctor');
		$auth->add($master_doctor);

		$doctor = $auth->createRole('doctor');
		$auth->add($doctor);

		//doctor->master_doctor->administrator
		$auth->addChild($master_doctor, $doctor);
		$auth->addChild($administrator, $master_doctor);
	}

	//just for test
	public function actionSetRoles() {
		$auth = Yii::$app->authManager;

		$administrator = $auth->getRole('administrator');
		$master_doctor = $auth->getRole('master_doctor');
		$doctor        = $auth->getRole('doctor');

		$users = User::find()->all();

		foreach((array)$users as $user) {
			switch($user->role_id) {
				case Yii::$app->params['ROLE_ADMINISTRATOR']:
					$auth->assign($administrator, $user->id);
				break;
				case Yii::$app->params['ROLE_MASTER_DOCTOR']:
					$auth->assign($master_doctor, $user->id);
				break;
				default:
					$auth->assign($doctor, $user->id);
				break;
			}
		}
	}

	public function actionSetRules() {
		$auth = Yii::$app->authManager;

		//interfaces
		$microReferralInterface = $auth->createPermission('microReferralInterface');
		$microReferralInterface->description = 'Micro Referral interface';
		$auth->add($microReferralInterface);

		$bloodCulturesInterface = $auth->createPermission('bloodCulturesInterface');
		$bloodCulturesInterface->description = 'Blood cultures interface';
		$auth->add($bloodCulturesInterface);

		$opatInterface = $auth->createPermission('opatInterface');
		$opatInterface->description = 'Opat interface';
		$auth->add($opatInterface);

		$notificationsInterface = $auth->createPermission('notificationsInterface');
		$notificationsInterface->description = 'Notifications interface';
		$auth->add($notificationsInterface);

		//actions
		$changePatientDoctor= $auth->createPermission('changePatientDoctor');
		$changePatientDoctor->description = '';
		$auth->add($changePatientDoctor);

		$changePatientHospital = $auth->createPermission('changePatientHospital');
		$changePatientHospital->description = '';
		$auth->add($changePatientHospital);

		$changeListTables = $auth->createPermission('changeListTables');
		$changeListTables->description = '';
		$auth->add($changeListTables);

		$searchByHospitalName = $auth->createPermission('searchByHospitalName');
		$searchByHospitalName->description = '';
		$auth->add($searchByHospitalName);

		$approveDoctors = $auth->createPermission('approveDoctors');
		$approveDoctors->description = '';
		$auth->add($approveDoctors);

//		$ = $auth->createPermission('');
//		$->description = '';
//		$auth->add($);

		$doctor        = $auth->getRole('doctor');
		$master_doctor = $auth->getRole('master_doctor');
		$administrator = $auth->getRole('administrator');


		$auth->addChild($doctor, $microReferralInterface);
		$auth->addChild($doctor, $notificationsInterface);

		$auth->addChild($master_doctor, $bloodCulturesInterface);
		$auth->addChild($master_doctor, $opatInterface);
		$auth->addChild($master_doctor, $changePatientDoctor);
		$auth->addChild($master_doctor, $approveDoctors);

		$auth->addChild($administrator, $changePatientHospital);
		$auth->addChild($administrator, $changeListTables);
		$auth->addChild($administrator, $searchByHospitalName);
	}
}