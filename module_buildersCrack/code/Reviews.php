<?php

/**
 * Created by PhpStorm.
 * User: Luke Hardiman
 * Date: 15/10/2015
 * Time: 10:20 PM
 */
class Reviews extends DataObject
{

    private static $db = array(
        //db fields for customer reviews section
        'comment' => 'Varchar',
        'date' => 'Date',
        'title' => 'Varchar',
        'link' => 'Text',
        'jobNumber' => 'Text'
    );

    //declare parent page
    private static $has_one = array(
        'Reviews' => 'Reviews'
    );

    //create summary fields to be shown on GridField
    // 'Reviews' => 'ClientReviews'
    private static $summary_fields = array(
        'comment' => 'Customer Comment',
        'date' => 'Date',
        'title' => 'Job Title'
    );

    //update CMS interface and add GridField input fields
    public function getCMSFields()
    {

    }

    //allow content authors to view
    function canView($member = null)
    {
        return true;
    }

    //allow create
    function canCreate($member = null)
    {
        return true;
    }

    //allow edit
    function canEdit($member = null)
    {
        return true;
    }

    //allow delete
    function canDelete($member = null)
    {
        return true;
    }
}