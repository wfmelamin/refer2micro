<?php

namespace app\controllers;

use Yii;
use app\models\User;
use yii\data\ActiveDataProvider;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\Response;

/**
 * UserController implements the CRUD actions for User model.
 */
class UserController extends Controller
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
                        'actions' => ['get-access-data', 'get-all-doctors'],
                        'allow' => true,
                        'roles' => ['doctor', 'master_doctor', 'administrator']
                    ],
                    [
                        'actions' => ['approve-register', 'disapprove-register'],
                        'allow' => true,
                        'roles' => ['master_doctor', 'administrator']
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

    /**
     * Lists all User models.
     * @return mixed
     */
    public function actionIndex()
    {
        $dataProvider = new ActiveDataProvider([
            'query' => User::find(),
        ]);

        return $this->render('index', [
            'dataProvider' => $dataProvider,
        ]);
    }

    public function actionGetAccessData() {
        \Yii::$app->response->format = Response::FORMAT_JSON;

        return [
            'access_data' => User::getAccessData(),
            'success' => true
        ];
    }

    public function actionGetAllDoctors() {
        \Yii::$app->response->format = Response::FORMAT_JSON;

        return [
            'doctors' => User::getAllDoctors(),
            'success' => true
        ];
    }

    public function actionApproveRegister() {
        \Yii::$app->response->format = Response::FORMAT_JSON;

        return User::approveRegister(Yii::$app->request->post('user_id'));
    }

    public function actionDisapproveRegister() {
        \Yii::$app->response->format = Response::FORMAT_JSON;

        return User::disapproveRegister(Yii::$app->request->post('user_id'));
    }

    /**
     * Finds the User model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return User the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = User::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
