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

    //set has_one relationships
    private static $has_one = array (
        'ProjectCoverImage' => 'Image',
        //images for project phases
        'ProjectPhaseImg1' => 'Image',
        'ProjectPhaseImg2' => 'Image',
        'ProjectPhaseImg3' => 'Image',
        'ProjectPhaseImg4' => 'Image',
        'ProjectPhaseImg5' => 'Image',
        'ProjectPhaseImg6' => 'Image',

        'FeaturedWorkCategory' => 'ProjectCategory',
        //name following relationship based on parent class
        'HomePage' => 'HomePage'
    );

    /*private static $has_many = array (
        'ProjectPhases' => 'FeaturedWorkPhases'
    );*/

    //----------------------------------- --------------------------------------
    /*private static $many_many = array (
        'Categories' => 'ProjectCategory'
    );*/
    //----------------------------------- --------------------------------------

    //create GridField summary fields
    private static $summary_fields = array (
        //key = db column, value = GridField column name to display
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
            $category = DropdownField::create('FeaturedWorkCategoryID','Category', ProjectCategory::get()->map('ID', 'Title')),
            $imgUploadField = UploadField::create('ProjectCoverImage', 'Cover Image'),
            TextareaField::create('ProjectBriefDesc', 'Brief Description'),
            TextField::create('ProjectTitle', 'Title'),
            DateField::create('ProjectDate', 'Completion Date')->setConfig('dateformat', 'dd-MM-yyyy')
        );

        //create inner GridField for ProjectPhases images
        /*$fields->addFieldToTab('Root.Phases', GridField::create(
            'ProjectPhases',
            'Project Phases',
            $this->ProjectPhases(),
            GridFieldConfig_RecordEditor::create()
        ));*/

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