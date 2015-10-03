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
        //fields for the 3 services div
        'ServiceTitle1' => 'Varchar',
        'ServiceDesc1' => 'Text',
        'ServiceTitle2' => 'Varchar',
        'ServiceDesc2' => 'Text',
        'ServiceTitle3' => 'Varchar',
        'ServiceDesc3' => 'Text'
    );

    //updating the CMS interface
    public function getCMSFields() {
        //declare var $fields
        $fields = parent::getCMSFields();

        //add new fields to the CMS interface
        $fields->addFieldToTab('Root.Main', TextField::create('ServiceTitle1', 'Left Service Title'));
        $fields->addFieldToTab('Root.Main', TextareaField::create('ServiceDesc1', 'Left Service Description'));

        $fields->addFieldToTab('Root.Main', TextField::create('ServiceTitle2', 'Middle Service Title'));
        $fields->addFieldToTab('Root.Main', TextareaField::create('ServiceDesc2', 'Middle Service Description'));

        $fields->addFieldToTab('Root.Main', TextField::create('ServiceTitle3', 'Right Service Title'));
        $fields->addFieldToTab('Root.Main', TextareaField::create('ServiceDesc3', 'Right Service Description'));

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