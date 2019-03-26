<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

require_once('modules/DynamicFields/templates/Fields/TemplateField.php');
class TemplateBlockingRadioenum extends TemplateField{
    var $type='BlockingRadioenum';

    function get_field_def(){
        $def = parent::get_field_def();
        $def['dbType'] = 'varchar';
        return $def;
    }
}