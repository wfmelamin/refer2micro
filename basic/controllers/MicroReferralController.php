<?php

namespace app\controllers;

use app\models\Patient;
use app\models\User;
use Yii;
use app\models\MicroReferral;
use app\models\Allergy;
use yii\data\ActiveDataProvider;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\Response;

/**
 * MicroReferralController implements the CRUD actions for MicroReferral model.
 */
class MicroReferralController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'actions' => ['get-all'],
                        'allow' => true,
                        'roles' => ['doctor']
                    ],
                    [
                        'actions' => ['get-info'],
                        'allow' => true,
                        'matchCallback' => function ($rule, $action) {
							return User::isMicroReferralOwner(Yii::$app->request->get('id'));
						}
                    ],
                    [
                        'actions' => ['save-info'],
                        'allow' => true,
                        'matchCallback' => function ($rule, $action) {
                            $id = Yii::$app->request->post('data')['micro_referral']['id'];

                            if($id == 0) return true; //is new

                            return User::isMicroReferralOwner($id);
                        }
                    ],
                    [
                        'actions' => ['delete-info'],
                        'allow' => true,
                        'matchCallback' => function ($rule, $action) {
                            return User::isMicroReferralOwner(\Yii::$app->request->post('data')['micro_referral_id']);
                        }
                    ],
                    [
                        'actions' => ['upload-file'],
                        'allow' => true,
                        'matchCallback' => function ($rule, $action) {
                            return User::isMicroReferralOwner(\Yii::$app->request->post('micro_referral_id'));
                        }
                    ]
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    public function actionGetAll() {
        \Yii::$app->response->format = Response::FORMAT_JSON;

        return MicroReferral::getAll();
    }


    /**
     * Get all info about micro referral interface
     *
     * @param $id
     *
     * @return mixed
     * @internal param $patient_id
     *
     */
    public function actionGetInfo($id) {
        \Yii::$app->response->format = Response::FORMAT_JSON;

        return MicroReferral::getInfo($id);
    }

    public function actionSaveInfo() {
        \Yii::$app->response->format = Response::FORMAT_JSON;

        $data = \Yii::$app->request->post('data');

        return MicroReferral::saveInfo($data);
    }

    public function actionDeleteInfo() {
        \Yii::$app->response->format = Response::FORMAT_JSON;

        return [
            'success' => MicroReferral::deleteInfo(\Yii::$app->request->post('data')['micro_referral_id'])
        ];
    }

    public function actionUploadFile() {
        \Yii::$app->response->format = Response::FORMAT_JSON;

        return MicroReferral::uploadFile(\Yii::$app->request->post('micro_referral_id'));
    }

    /**
     * Finds the MicroReferral model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return MicroReferral the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = MicroReferral::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
