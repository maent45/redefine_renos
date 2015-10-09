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
        'CustReviewTitle' => 'Text',
        'CustReviewDate' => 'Date',
        'CustReviewName' => 'Text',
        'CustReview' => 'Varchar'
    );

    private static $has_one = array (
        'HomePage' => 'HomePage'
    );

    //update CMS interface and add GridField input fields
    public function getCMSFields() {
        return FieldList::create(
            TextField::create('CustReviewTitle'),
            DateField::create('CustReviewDate'),
            TextField::create('CustReviewName'),
            TextareaField::create('CustReview')
        );
    }
}