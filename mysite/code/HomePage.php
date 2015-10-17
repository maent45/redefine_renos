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

        //db fields for Contact Details
        'ContactMenuTitle' => 'Varchar',
        'PhoneNumber' => 'Varchar',
        'EmailAddress' => 'Varchar',

        //temporary db fields for customer reviews section
        /*'CustReviewTitle' => 'Text',
        'CustReviewDate' => 'Date',
        'CustReviewName' => 'Text',
        'CustReview' => 'Varchar'*/
    );

    //set $has_many relationship
    private static $has_many = array (
        'SlideShows' => 'SlideShow',
        'Categories' => 'ProjectCategory',
        'FeaturedWorks' => 'FeaturedWork',
        'Reviews' => 'ClientReviews'
    );

    //updating the CMS interface
    public function getCMSFields() {
        //declare var $fields
        $fields = parent::getCMSFields();

        //create SlideShow GridField
        $fields->addFieldToTab('Root.SlideShowImages', GridField::create(
            'SlideShows',
            'Home Page Slide Show Images',
            //$this->SlideShows() relates to the 'SlideShows' $has_many relationship
            $this->SlideShows(),
            //following argument provides GridField UI components (pagination, add, delete buttons etc.)
            GridFieldConfig_RecordEditor::create()
        ));

        //create Categories GridField
        $fields->addFieldToTab('Root.ProjectCategories', GridField::create(
            //'Categories' relates to the has_many relationship
            'Categories',
            'Project Categories',
            //$this->Categories() relates to the 'Categories' $has_many relationship
            $this->Categories(),
            GridFieldConfig_RecordEditor::create()
        ));

        //create FeaturedWorks GridField
        $fields->addFieldToTab('Root.FeaturedWorks', GridField::create(
            'FeaturedWorks',
            'Featured Works',
            //$this->Categories() relates to the 'Categories' $has_many relationship
            $this->FeaturedWorks(),
            GridFieldConfig_RecordEditor::create()
        ));

        //create Reviews Section GridField
        /*$fields->addFieldToTab('Root.ClientReviews', GridField::create(
            'Reviews',
            'Client Reviews',
            $this->Reviews(),
            GridFieldConfig_RecordEditor::create()
        ));*/

        //add new fields to the CMS interface
        //CMS fields for services
        $fields->addFieldToTab('Root.Main', HeaderField::create('Service Boxes'));
        $fields->addFieldToTab('Root.Main', TextField::create('ServiceTitle1', 'Left Service Title'));
        $fields->addFieldToTab('Root.Main', TextareaField::create('ServiceDesc1', 'Left Service Description'));
        $fields->addFieldToTab('Root.Main', TextField::create('ServiceTitle2', 'Middle Service Title'));
        $fields->addFieldToTab('Root.Main', TextareaField::create('ServiceDesc2', 'Middle Service Description'));
        $fields->addFieldToTab('Root.Main', TextField::create('ServiceTitle3', 'Right Service Title'));
        $fields->addFieldToTab('Root.Main', TextareaField::create('ServiceDesc3', 'Right Service Description'));

        //CMS fields for quotes
        $fields->addFieldToTab('Root.Main', HeaderField::create('Quote Areas'));
        $fields->addFieldToTab('Root.Main', TextareaField::create('Quote1', 'First Quote'));
        $fields->addFieldToTab('Root.Main', TextareaField::create('Quote2', 'Second Quote'));

        //CMS fields for Reviews Section
        /*$fields->addFieldToTab('Root.ClientReviews', TextField::create('CustReviewTitle', 'Review Title'));
        $fields->addFieldToTab('Root.ClientReviews', TextField::create('CustReviewDate', 'Review Date'));
        $fields->addFieldToTab('Root.ClientReviews', TextField::create('CustReviewName', 'Client Name'));
        $fields->addFieldToTab('Root.ClientReviews', TextareaField::create('CustReview', 'Client Review'));*/

        //CMS fields for Contact details ContactMenuTitle
        $fields->addFieldToTab('Root.ContactInfo', TextField::create('ContactMenuTitle', 'Contact Form Menu Title'));
        $fields->addFieldToTab('Root.ContactInfo', TextField::create('PhoneNumber', 'Phone Number'));
        $fields->addFieldToTab('Root.ContactInfo', TextField::create('EmailAddress', 'Email Address'));

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