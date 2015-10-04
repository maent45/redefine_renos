<?php
/**
 * Created by PhpStorm.
 * User: Maen Terawasi
 * Date: 4/10/2015
 * Time: 12:50 PM
 */

//create ServicesPage model
class ServicesPage extends Page {
    //create db text fields
    private static $db = array (
        //page header db fields
        'PageHeader' => 'Varchar',
        'PageSubHeader' => 'Text',

        //page services db fields
        'ServiceHead1' => 'Varchar',
        'ServiceDesc1' => 'Text',
        'ServiceHead2' => 'Varchar',
        'ServiceDesc2' => 'Text',
        'ServiceHead3' => 'Varchar',
        'ServiceDesc3' => 'Text'
    );

    //update CMS interface
    public function getCMSFields() {
        //declare $fields var
        $fields = parent::getCMSFields();

        //create page header input fields
        $fields->addFieldToTab('Root.Main', TextField::create('PageHeader', 'Page Heading'));
        $fields->addFieldToTab('Root.Main', TextField::create('PageSubHeader', 'Page Sub Heading'));

        //create services input fields
        $fields->addFieldToTab('Root.Services', TextField::create('ServiceHead1', 'Service 1 Title'));
        $fields->addFieldToTab('Root.Services', TextField::create('ServiceDesc1', 'Service 1 Description'));
        $fields->addFieldToTab('Root.Services', TextField::create('ServiceHead2', 'Service 2 Title'));
        $fields->addFieldToTab('Root.Services', TextField::create('ServiceDesc2', 'Service 2 Description'));
        $fields->addFieldToTab('Root.Services', TextField::create('ServiceHead3', 'Service 3 Title'));
        $fields->addFieldToTab('Root.Services', TextField::create('ServiceDesc3', 'Service 3 Description'));
    }
}

//create ServicesPage controller
class ServicesPage_Controller extends Page_Controller {

}

