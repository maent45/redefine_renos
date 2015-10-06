<?php
/**
 * Created by PhpStorm.
 * User: Maen Terawasi
 * Date: 5/10/2015
 * Time: 11:32 PM
 */

class FeaturedWork extends DataObject {
    //create database fields
    private static $db = array (
        'ProjectBriefDesc' => 'Text',
        'ProjectTitle' => 'Varchar',
        'ProjectDate' => 'Date'
    );

    private static $has_one = array (
        'ProjectCoverImage' => 'Image',
        'FeaturedWorkCategory' => 'ProjectCategory',
        //name following relationship based on parent class
        'HomePage' => 'HomePage'
    );

    //----------------------------------- --------------------------------------
    /*private static $many_many = array (
        'Categories' => 'ProjectCategory'
    );*/
    //----------------------------------- --------------------------------------

    //create GridField summary fields
    private static $summary_fields = array (
        'GridThumbnail' => 'Cover Image',
        'FeaturedWorkCategory.Title' => 'Category',
        'ProjectTitle' => 'Title',
        'ProjectDate' => 'Completion Date'
    );

    //resize GridField thumbnail
    public function getGridThumbnail() {
        if($this->ProjectCoverImage()->exists()){
            return $this->ProjectCoverImage()->SetWidth(250);
        } else {
            return ('No Cover Image has been added.');
        }
    }

    //update GridField CMS interface
    public function getCMSFields() {
        $fields = FieldList::create(
            $category = DropdownField::create('CategoryID','Category', ProjectCategory::get()->map('ID', 'Title')),
            $imgUploadField = UploadField::create('ProjectCoverImage', 'Cover Image'),
            TextareaField::create('ProjectBriefDesc', 'Brief Description'),
            TextField::create('ProjectTitle', 'Title'),
            DateField::create('ProjectDate', 'Completion Date')->setConfig('dateformat', 'dd-MM-yyyy')
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