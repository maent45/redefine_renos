<?php
/**
 * Created by PhpStorm.
 * User: Maen Terawasi
 * Date: 3/10/2015
 * Time: 6:56 PM
 */

//create HomePage model
class HomePage extends Page {
    //create database fields
    private static $db = array (
        //db fields for the 3 services div
        'ServiceTitle1' => 'Varchar',
        'ServiceDesc1' => 'Text',
        'ServiceTitle2' => 'Varchar',
        'ServiceDesc2' => 'Text',
        'ServiceTitle3' => 'Varchar',
        'ServiceDesc3' => 'Text',

        //db fields for quotes
        'Quote1' => 'Text',
        'Quote2' => 'Text',

        //db fields for Footer section
        'PhoneNumber' => 'Varchar',
        'EmailAddress' => 'Varchar'
    );

    //updating the CMS interface
    public function getCMSFields() {
        //declare var $fields
        $fields = parent::getCMSFields();

        //add new fields to the CMS interface
        //CMS fields for services
        $fields->addFieldToTab('Root.KeyServices', TextField::create('ServiceTitle1', 'Left Service Title'));
        $fields->addFieldToTab('Root.KeyServices', TextareaField::create('ServiceDesc1', 'Left Service Description'));
        $fields->addFieldToTab('Root.KeyServices', TextField::create('ServiceTitle2', 'Middle Service Title'));
        $fields->addFieldToTab('Root.KeyServices', TextareaField::create('ServiceDesc2', 'Middle Service Description'));
        $fields->addFieldToTab('Root.KeyServices', TextField::create('ServiceTitle3', 'Right Service Title'));
        $fields->addFieldToTab('Root.KeyServices', TextareaField::create('ServiceDesc3', 'Right Service Description'));

        //CMS fields for quotes
        $fields->addFieldToTab('Root.Main', TextareaField::create('Quote1', 'First Quote'));
        $fields->addFieldToTab('Root.Main', TextareaField::create('Quote2', 'Second Quote'));

        //CMS fields for Footer contact details
        $fields->addFieldToTab('Root.Footer', TextField::create('PhoneNumber', 'Phone Number'));
        $fields->addFieldToTab('Root.Footer', TextField::create('EmailAddress', 'Email Address'));

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

//create HomePage controller
class HomePage_Controller extends Page_Controller {

}