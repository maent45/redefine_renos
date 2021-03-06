<?php
/**
 * Created by PhpStorm.
 * User: Maen Terawasi
 * Date: 5/10/2015
 * Time: 11:00 PM
 */

class ProjectCategory extends DataObject {

    //create db fields
    private static $db = array(
        'Title' => 'Varchar'
    );

    //set $has_one relationship
    private static $has_one = array (
        'HomePage' => 'HomePage'
    );

    //--------------------------------------------
    private static $belongs_many_many = array (
        'Categories' => 'FeaturedWork'
    );
    //--------------------------------------------

    //update CMS interface
    public function getCMSFields() {
        return FieldList::create(
            //'Title' relates to 'Title' created in db above
            TextField::create('Title')
        );
    }

    //allow content authors to view
    function canView($member = null) {
        return true;
    }
    //allow create
    function canCreate($member = null) {
        return true;
    }
    //allow edit
    function canEdit($member = null) {
        return true;
    }
    //allow delete
    function canDelete($member = null) {
        return true;
    }
}