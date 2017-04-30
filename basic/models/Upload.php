<?php

namespace app\models;

use Yii;
use yii\helpers\FileHelper;
use yii\web\UploadedFile;

/**
 * This is the model class for table "uploads".
 *
 * @property integer $id
 * @property string $filename
 * @property integer $item_id
 * @property string $item_type
 * @property string $folder
 * @property integer $date_created
 */
class Upload extends \yii\db\ActiveRecord
{

    /**
     * @var UploadedFile
     */
    public $fileObject;

    public $file_link;

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'uploads';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['filename', 'item_id', 'item_type', 'folder', 'date_created'], 'required'],
            [['item_id', 'date_created'], 'integer'],
            [['filename', 'item_type', 'folder'], 'string', 'max' => 255],
            [['fileObject'], 'file', 'skipOnEmpty' => false, 'extensions' => 'png, jpg, jpeg, pdf']
        ];
    }

    public function upload() {
        if($this->validate()) {
            $dir_path = 'uploads/' . $this->item_type . '/' . $this->folder . '/';

            if(is_dir($dir_path)) {
                FileHelper::removeDirectory($dir_path);
            }

            FileHelper::createDirectory($dir_path);

            $this->file_link = $dir_path . $this->fileObject->baseName . '.' . $this->fileObject->extension;

            $this->fileObject->saveAs($this->file_link);

            $this->save(false);
            return true;
        } else {
            echo '<pre>';//TODO::remove
            print_r($this->errors);
            echo '</pre>';

            return false;
        }
    }

    public function removeFile() {
        $dir_path = 'uploads/' . $this->item_type . '/' . $this->folder . '/';

        if(is_dir($dir_path)) {
            FileHelper::removeDirectory($dir_path);
        }
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'filename' => 'Filename',
            'item_id' => 'Item ID',
            'item_type' => 'Item Type',
            'folder' => 'Folder',
            'date_created' => 'Date Created',
        ];
    }
}
