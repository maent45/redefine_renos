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
        'ProjectDate' => 'Date',

        //db text fields for project phases descriptions
        'ProjectPhaseDesc1' => 'Text',
        'ProjectPhaseDesc2' => 'Text',
        'ProjectPhaseDesc3' => 'Text',
        'ProjectPhaseDesc4' => 'Text',
        'ProjectPhaseDesc5' => 'Text',
        'ProjectPhaseDesc6' => 'Text'
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
        //following links ProjectCategory to FeaturedWork
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
        'ProjectTitle' => 'Title'
        /*'ProjectDate' => 'Completion Date'*/
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
            HeaderField::create('Outer Captions'),
            $category = DropdownField::create('FeaturedWorkCategoryID','Category', ProjectCategory::get()->map('ID', 'Title')),
            $imgUploadField = UploadField::create('ProjectCoverImage', 'Cover Image'),
            TextareaField::create('ProjectBriefDesc', 'Hover Over Description'),
            TextField::create('ProjectTitle', 'Title'),
            //DateField::create('ProjectDate', 'Completion Date')->setConfig('dateformat', 'dd-MM-yyyy'),

            HeaderField::create('Project Phases'),
            //images and descriptions for project phases
            $imgPhase1 = UploadField::create('ProjectPhaseImg1', 'Phase 1 Image'),
            TextareaField::create('ProjectPhaseDesc1', 'Phase 1 Description'),
            $imgPhase2 = UploadField::create('ProjectPhaseImg2', 'Phase 2 Image'),
            TextareaField::create('ProjectPhaseDesc2', 'Phase 2 Description'),
            $imgPhase3 = UploadField::create('ProjectPhaseImg3', 'Phase 3 Image'),
            TextareaField::create('ProjectPhaseDesc3', 'Phase 3 Description'),
            $imgPhase4 = UploadField::create('ProjectPhaseImg4', 'Phase 4 Image'),
            TextareaField::create('ProjectPhaseDesc4', 'Phase 4 Description'),
            $imgPhase5 = UploadField::create('ProjectPhaseImg5', 'Phase 5 Image'),
            TextareaField::create('ProjectPhaseDesc5', 'Phase 5 Description'),
            $imgPhase6 = UploadField::create('ProjectPhaseImg6', 'Phase 6 Image'),
            TextareaField::create('ProjectPhaseDesc6', 'Phase 6 Description')
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

        //project phase img 1
        $imgPhase1->setFolderName('Project Phase Images');
        $imgPhase1->getValidator()->setAllowedExtensions(array(
            'png','gif','jpg','jpeg'
        ));

        //project phase img 2
        $imgPhase2->setFolderName('Project Phase Images');
        $imgPhase2->getValidator()->setAllowedExtensions(array(
            'png','gif','jpg','jpeg'
        ));

        //project phase img 3
        $imgPhase3->setFolderName('Project Phase Images');
        $imgPhase3->getValidator()->setAllowedExtensions(array(
            'png','gif','jpg','jpeg'
        ));

        //project phase img 4
        $imgPhase4->setFolderName('Project Phase Images');
        $imgPhase4->getValidator()->setAllowedExtensions(array(
            'png','gif','jpg','jpeg'
        ));

        //project phase img 5
        $imgPhase5->setFolderName('Project Phase Images');
        $imgPhase5->getValidator()->setAllowedExtensions(array(
            'png','gif','jpg','jpeg'
        ));

        //project phase img 6
        $imgPhase6->setFolderName('Project Phase Images');
        $imgPhase6->getValidator()->setAllowedExtensions(array(
            'png','gif','jpg','jpeg'
        ));

        //return the fields
        return $fields;
    }

    //allow content authors to view
    function canView($member = null) {
        return true;
    }
    //allow create
    function canCreate($member = null) {
        return true;
    }
    //allow edit
    function canEdit($member = null) {
        return true;
    }
    //allow delete
    function canDelete($member = null) {
        return true;
    }
}