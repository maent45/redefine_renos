<?php
/**
 * Created by PhpStorm.
 * User: 21103436
 * Date: 4/10/2015
 * Time: 12:45 AM
 */

//create AboutPage Model
class AboutPage extends Page {
    //create database fields
    private static $db  = array (
        //create db fields for AboutPage title and sub-title
        'PageHeading' => 'Varchar',
        'PageSubHeading' => 'Text',

        //create db fields for main AboutPage titles and descriptions
        'LeftSectionTitle' => 'Varchar',
        'LeftSectionDesc' => 'Text',
        'RightSectionTitle' => 'Varchar',
        'RightSectionDesc' => 'Text'
    );

    //create database fields for images
    private static $has_one = array (
        'LeftSectionImage' => 'Image',
        'RightSectionImage' => 'Image'
    );

    //update the CMS interface with new fields
    public function getCMSFields() {
        //declare var $fields
        $fields = parent::getCMSFields();

        //create read-only fields
        $fields->addFieldToTab('Root.Metadata', new ReadonlyField('URLSegment', 'URL'));
        $fields->removeFieldFromTab('Root.Content.Metadata', 'MenuTitle');
        $fields->addFieldToTab("Root.Content.Metadata", new ReadonlyField('MenuTitle','URL'));

        /*--- remove the default HTML editor section from CMS ---*/
        $fields->removeFieldFromTab("Root.Main","Content");
        //temporarily remove MetaData field
        $fields->removeByName('Metadata');

        //add new fields to CMS interface
        //main header and sub-header fields
        $fields->addFieldToTab('Root.Main', TextField::create('PageHeading', 'Page Heading'));
        $fields->addFieldToTab('Root.Main', TextareaField::create('PageSubHeading', 'Page Sub Heading'));

        //add upload fields for images
        $fields->addFieldToTab('Root.AboutUsInformation', $LeftSectionImage = new UploadField('LeftSectionImage','Left Section Image'));

        //left & right info section fields
        $fields->addFieldToTab('Root.AboutUsInformation', TextField::create('LeftSectionTitle', 'Left Section Heading'));
        $fields->addFieldToTab('Root.AboutUsInformation', TextareaField::create('LeftSectionDesc', 'Left Section Description'));
        //right section image upload field
        $fields->addFieldToTab('Root.AboutUsInformation', $RightSectionImage = new UploadField('RightSectionImage','Right Section Image'));
        $fields->addFieldToTab('Root.AboutUsInformation', TextField::create('RightSectionTitle', 'Right Section Heading'));
        $fields->addFieldToTab('Root.AboutUsInformation', TextareaField::create('RightSectionDesc', 'Right Section Description'));

        //validate image types
        $LeftSectionImage->getValidator()->setAllowedExtensions(array('png','gif','jpg','jpeg'));
        $RightSectionImage->getValidator()->setAllowedExtensions(array('png','gif','jpg','jpeg'));
        //set image upload folder
        $LeftSectionImage->setFolderName('About Page Images');
        $RightSectionImage->setFolderName('About Page Images');

        return $fields;
    }

}

//create AboutPage Controller
class AboutPage_Controller extends Page_Controller {

}