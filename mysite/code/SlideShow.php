<?php
/**
 * Created by PhpStorm.
 * User: Maen Terawasi
 * Date: 4/10/2015
 * Time: 2:22 PM
 */

//create SlideShow DataObject
class SlideShow extends DataObject {

    //create db image fields
    private static $has_one = array (
        'SlideShowImage' => 'Image',
        'HomePage' => 'HomePage'
    );

    //set CMS GridField summary fields
    private static $summary_fields = array (
        //GridThumbnail references getGridThumbnail() method
        'GridThumbnail' => ''
    );

    //set method to resize GridField image thumbnail
    public function getGridThumbnail() {
        //if thumbnail photo exists then resize it
        if($this->SlideShowImage()->exists())
        {
            return $this->SlideShowImage()->SetWidth(300);
        }
        else
        {
            return ('Image does not exist.');
        }
    }

    //create image upload field in CMS
    public function getCMSFields() {
        //declare $fields var
        $fields = FieldList::create(
            $imageUploadField = UploadField::create('SlideShowImage')
        );

        //set image upload folder
        $imageUploadField->setFolderName('Slide Show Images');
        //validate image upload types
        $imageUploadField->getValidator()->setAllowedExtensions(array(
           'png','gif','jpg','jpeg'
        ));

        //return the $fields
        return $fields;
    }

    //allow content authors to edit content
    function canEdit($member = null) {
        return true;
    }
    //allow delete
    function canDelete($member = null) {
        return true;
    }
    //allow view
    function canView($member = null) {
        return true;
    }
    //allow create
    function canCreate($member = null) {
        return true;
    }
    //allow publish
    function canPublish($member = null) {
        return true;
    }
}