<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

require_once('modules/DynamicFields/templates/Fields/TemplateField.php');
class TemplateNumeric extends TemplateField{
    var $type='numeric';

    function get_field_def(){
        $def = parent::get_field_def();
        $def['dbType'] = 'int';
        return $def;
    }
}