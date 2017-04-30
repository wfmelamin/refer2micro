<?php

namespace app\controllers;

use app\models\Patient;
use yii\web\NotFoundHttpException;
use yii\web\Response;

class PatientController extends \yii\web\Controller
{

    public function actionGetAll($type) {
        \Yii::$app->response->format = Response::FORMAT_JSON;

        return Patient::getAllPatients($type);
    }
}
