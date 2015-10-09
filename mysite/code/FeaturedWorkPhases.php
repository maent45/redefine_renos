<?php
/**
 * Created by PhpStorm.
 * User: Maen Terawasi
 * Date: 6/10/2015
 * Time: 11:15 PM
 */

class FeaturedWorkPhases extends DataObject {
    //create db fields
    private static $db = array (
        'ProjectDescription' => 'Text'
    );

    private static $has_one = array (
        'ProjectPhaseImage' => 'Image',
        //'FeaturedWork' => 'FeaturedWork'
    );

    //create project Phases Images GridField
    public function getCMSFields() {
        $fields = FieldList::create(
            TextareaField::create('ProjectDescription', 'Phase Description'),
            $imageUploadField = UploadField::create('ProjectPhaseImage', 'Phase Image')
        );

        return $fields;
    }
}