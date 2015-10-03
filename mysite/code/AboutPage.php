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

    //update the CMS interface with new fields
    public function getCMSFields() {
        //declare var $fields
        $fields = parent::getCMSFields();

        //add new fields to CMS interface
        //main header and sub-header fields
        $fields->addFieldToTab('Root.Main', TextField::create('PageHeading', 'Page Heading'));
        $fields->addFieldToTab('Root.Main', TextareaField::create('PageSubHeading', 'Page Sub Heading'));

        //left & right info section fields
        $fields->addFieldToTab('Root.Main', TextField::create('LeftSectionTitle', 'Left Section Heading'));
        $fields->addFieldToTab('Root.Main', TextareaField::create('LeftSectionDesc', 'Left Section Description'));
        $fields->addFieldToTab('Root.Main', TextField::create('RightSectionTitle', 'Right Section Heading'));
        $fields->addFieldToTab('Root.Main', TextareaField::create('RightSectionDesc', 'Right Section Description'));

        //create read-only fields
        $fields->addFieldToTab('Root.Metadata', new ReadonlyField('URLSegment', 'URL'));
        $fields->removeFieldFromTab('Root.Content.Metadata', 'MenuTitle');
        $fields->addFieldToTab("Root.Content.Metadata", new ReadonlyField('MenuTitle','URL'));

        /*--- remove the default HTML editor section from CMS ---*/
        $fields->removeFieldFromTab("Root.Main","Content");
        //temporarily remove MetaData field
        $fields->removeByName('Metadata');

        return $fields;
    }

}

//create AboutPage Controller
class AboutPage_Controller extends Page_Controller {

}