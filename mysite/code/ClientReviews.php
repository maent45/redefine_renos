<?php
/**
 * Created by PhpStorm.
 * User: 21103436
 * Date: 10/10/2015
 * Time: 12:19 AM
 *
 * SUMMARY
 * -------
 * This class is built as a temp fix for the reviews section, later the reviews will be scraped from another site
 * -------
 */

class ClientReviews extends DataObject {

    private static $db = array (
        //db fields for customer reviews section
        'CustReviewTitle' => 'Varchar',
        'CustReviewDate' => 'Date',
        'CustReviewName' => 'Varchar',
        'CustReview' => 'Text'
    );

    private static $has_one = array (
        'HomePage' => 'HomePage'
    );

    //create summary fields to be shown on GridField
    private static $summary_fields = array (
        'CustReviewTitle' => 'Review Title',
        'CustReviewDate' => 'Date',
        'CustReviewName' => 'Client Name',
        'CustReview' => 'Review'
    );

    //update CMS interface and add GridField input fields
    public function getCMSFields() {
        return FieldList::create(
            TextField::create('CustReviewTitle', 'Review Title'),
            DateField::create('CustReviewDate','Review Date'),
            TextField::create('CustReviewName', 'Client Name'),
            TextareaField::create('CustReview', 'Client Review')
        );
    }
}