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

    //create database image fields
    private static $has_one = array (
        'ServiceImage1' => 'Image',
        'ServiceImage2' => 'Image',
        'ServiceImage3' => 'Image'
    );

    //update CMS interface
    public function getCMSFields() {
        //declare $fields var
        $fields = parent::getCMSFields();

        //create read-only fields
        $fields->addFieldToTab('Root.Metadata', new ReadonlyField('URLSegment', 'URL'));
        $fields->removeFieldFromTab('Root.Content.Metadata', 'MenuTitle');
        $fields->addFieldToTab("Root.Content.Metadata", new ReadonlyField('MenuTitle','URL'));

        /*--- remove the default HTML editor section from CMS ---*/
        $fields->removeFieldFromTab("Root.Main","Content");
        //temporarily remove MetaData field
        $fields->removeByName('Metadata');

        //create page header input fields
        $fields->addFieldToTab('Root.Main', HeaderField::create('Page Header Information'));
        $fields->addFieldToTab('Root.Main', TextField::create('PageHeader', 'Page Heading'));
        $fields->addFieldToTab('Root.Main', TextareaField::create('PageSubHeader', 'Page Sub Heading'));

        $fields->addFieldToTab('Root.Main', HeaderField::create('Service 1 Information'));
        //add image upload fields
        $fields->addFieldToTab('Root.Main', $ServiceImage1 = new UploadField('ServiceImage1','Service 1 Image'));
        $fields->addFieldToTab('Root.Main', TextField::create('ServiceHead1', 'Service 1 Title'));
        $fields->addFieldToTab('Root.Main', TextareaField::create('ServiceDesc1', 'Service 1 Description'));

        $fields->addFieldToTab('Root.Main', HeaderField::create('Service 2 Information'));
        //add image upload fields
        $fields->addFieldToTab('Root.Main', $ServiceImage2 = new UploadField('ServiceImage2','Service 2 Image'));
        $fields->addFieldToTab('Root.Main', TextField::create('ServiceHead2', 'Service 2 Title'));
        $fields->addFieldToTab('Root.Main', TextareaField::create('ServiceDesc2', 'Service 2 Description'));

        $fields->addFieldToTab('Root.Main', HeaderField::create('Service 3 Information'));
        //add image upload fields
        $fields->addFieldToTab('Root.Main', $ServiceImage3 = new UploadField('ServiceImage3','Service 3 Image'));
        $fields->addFieldToTab('Root.Main', TextField::create('ServiceHead3', 'Service 3 Title'));
        $fields->addFieldToTab('Root.Main', TextareaField::create('ServiceDesc3', 'Service 3 Description'));

        //validate image types
        $ServiceImage1->getValidator()->setAllowedExtensions(array(
            'png','gif','jpg','jpeg'
        ));
        $ServiceImage2->getValidator()->setAllowedExtensions(array(
            'png','gif','jpg','jpeg'
        ));
        $ServiceImage3->getValidator()->setAllowedExtensions(array(
            'png','gif','jpg','jpeg'
        ));
        //set image upload folder
        $ServiceImage1->setFolderName('Service Page Images');
        $ServiceImage2->setFolderName('Service Page Images');
        $ServiceImage3->setFolderName('Service Page Images');

        //return the fields
        return $fields;
    }
}

//create ServicesPage controller
class ServicesPage_Controller extends Page_Controller {

}

