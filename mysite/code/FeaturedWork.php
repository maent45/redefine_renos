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
            DateField::create('ProjectDate', 'Completion Date')->setConfig('dateformat', 'dd-MM-yyyy'),
            //images for project phases upload fields
            HeaderField::create('Project Phase Images'),
            $imgPhase1 = UploadField::create('ProjectPhaseImg1', 'Phase 1 Image'),
            $imgPhase2 = UploadField::create('ProjectPhaseImg2', 'Phase 2 Image'),
            $imgPhase3 = UploadField::create('ProjectPhaseImg3', 'Phase 3 Image'),
            $imgPhase4 = UploadField::create('ProjectPhaseImg4', 'Phase 4 Image'),
            $imgPhase5 = UploadField::create('ProjectPhaseImg5', 'Phase 5 Image'),
            $imgPhase6 = UploadField::create('ProjectPhaseImg6', 'Phase 6 Image')
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
}