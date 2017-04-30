<?php

namespace app\controllers;

use app\models\BloodCultureMain;
use app\models\User;
use Yii;
use app\models\BloodCulture;
use yii\data\ActiveDataProvider;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\Response;

/**
 * BloodCulturesController implements the CRUD actions for BloodCultures model.
 */
class BloodCultureMainController extends Controller
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
                        'actions' => ['get-all', 'get-all-laboratories'],
                        'allow' => true,
                        'roles' => ['master_doctor']
                    ],
                    [
                        'actions' => ['get-info'],
                        'allow' => true,
                        'matchCallback' => function ($rule, $action) {
                            $id = Yii::$app->request->get('id');

                            if($id == 0) return true; //is new

                            return User::isBloodCultureMainOwner($id);
                        }
                    ],
                    [
                        'actions' => ['save-info'],
                        'allow' => true,
                        'matchCallback' => function ($rule, $action) {
                            $id = Yii::$app->request->post('data')['blood_culture_main']['id'];

                            if($id == 0) return true; //is new

                            return User::isBloodCultureMainOwner($id);
                        }
                    ],
                    [
                        'actions' => ['delete-info'],
                        'allow' => true,
                        'matchCallback' => function ($rule, $action) {
                            return User::isBloodCultureMainOwner(\Yii::$app->request->post('data')['blood_culture_id']); //TODO:: change to blood_culture_main_id
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

    public function actionGetAll() {
        \Yii::$app->response->format = Response::FORMAT_JSON;

        return BloodCultureMain::getAll();
    }

    public function actionGetInfo($id) {
        \Yii::$app->response->format = Response::FORMAT_JSON;

        return BloodCultureMain::getInfo($id);
    }

    public function actionSaveInfo() {
        \Yii::$app->response->format = Response::FORMAT_JSON;

        $data = \Yii::$app->request->post('data');

        return BloodCultureMain::saveInfo($data);
    }

    public function actionDeleteInfo() {
        \Yii::$app->response->format = Response::FORMAT_JSON;

        return [
            'success' => BloodCultureMain::deleteInfo(\Yii::$app->request->post('data')['blood_culture_id'])
        ];
    }

    public function actionGetAllLaboratories() {
        \Yii::$app->response->format = Response::FORMAT_JSON;

        return BloodCulture::getAllLaboratories();
    }

    /**
     * Finds the BloodCultures model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return BloodCulture the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = BloodCulture::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
