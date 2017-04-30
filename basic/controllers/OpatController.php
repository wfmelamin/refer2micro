<?php

namespace app\controllers;

use app\models\User;
use Yii;
use app\models\Opat;
use yii\data\ActiveDataProvider;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\Response;

/**
 * OpatController implements the CRUD actions for Opat model.
 */
class OpatController extends Controller
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
                        'roles' => ['master_doctor']
                    ],
                    [
                        'actions' => ['get-info'],
                        'allow' => true,
                        'matchCallback' => function ($rule, $action) {
                            $id = Yii::$app->request->get('id');

                            if($id == 0) return true; //is new

                            return User::isOpatOwner($id);
                        }
                    ],
                    [
                        'actions' => ['save-info'],
                        'allow' => true,
                        'matchCallback' => function ($rule, $action) {
                            $id = Yii::$app->request->post('data')['opat']['id'];

                            if($id == 0) return true; //is new

                            return User::isOpatOwner($id);
                        }
                    ],
                    [
                        'actions' => ['delete-info'],
                        'allow' => true,
                        'matchCallback' => function ($rule, $action) {
                            return User::isOpatOwner(Yii::$app->request->post('data')['opat_id']);
                        }
                    ],
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

    public function actionGetInfo($id) {
        \Yii::$app->response->format = Response::FORMAT_JSON;

        return Opat::getInfo($id);
    }

    public function actionSaveInfo() {
        \Yii::$app->response->format = Response::FORMAT_JSON;

        $data = \Yii::$app->request->post('data');

        return Opat::saveInfo($data);
    }

    public function actionDeleteInfo() {
        \Yii::$app->response->format = Response::FORMAT_JSON;

        return [
            'success' => Opat::deleteInfo(\Yii::$app->request->post('data')['opat_id'])
        ];
    }

    public function actionGetAll() {
        \Yii::$app->response->format = Response::FORMAT_JSON;

        return Opat::getAll();
    }



    /**
     * Finds the Opat model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Opat the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Opat::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
