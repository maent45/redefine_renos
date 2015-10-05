<?php
/**
 * Created by PhpStorm.
 * User: Maen Terawasi
 * Date: 5/10/2015
 * Time: 11:32 PM
 */

class FeaturedWorks extends DataObject {
    //create database fields
    private static $db = array (
        'ProjectBriefDesc' => 'Text',
        'ProjectTitle' => 'Varchar',
        'ProjectDate' => 'Date'
    );

    //create db image field
    private static $has_one = array (
        'ProjectCoverImage' => 'Image',
        'HomePage' => 'HomePage'
    );

    //update GridField CMS interface
    public function getCMSFields() {
        $fields = FieldList::create(
            TextareaField::create('ProjectBriefDesc'),
            TextField::create('ProjectTitle'),
            DateField::create('ProjectDate'),
            $imgUploadField = UploadField::create('ProjectCoverImage')
        );

        //set image upload getTempFolder
        $imgUploadField->setFolderName('Featured Works Images');
        //validate image upload types
        $imgUploadField->getValidator()->setAllowedExtensions(array(
            'png','gif','jpg','jpeg'
        ));

        //return the fields
        return $fields;
    }
}