<?php
$module_name = 'pat_Patients';
$searchdefs [$module_name] = 
array (
  'layout' => 
  array (
    'basic_search' => 
    array (
      'genre' => 
      array (
        'type' => 'enum',
        'studio' => 'visible',
        'label' => 'LBL_GENRE',
        'width' => '10%',
        'default' => true,
        'name' => 'genre',
      ),
      'age_min' => 
          array(
            'type' => 'numeric',
            'studio' => 'visible',
            'label' => 'LBL_AGE_MIN',
            'width' => '10%',
            'default' => true,
            'name' => 'age_min',
        ),
      'age_max' => 
          array(
            'type' => 'numeric',
            'studio' => 'visible',
            'label' => 'LBL_AGE_MAX',
            'width' => '10%',
            'default' => true,
            'name' => 'age_max',
        ),
      'prob_sant_pa' => 
      array (
        'type' => 'SmartDropdown',
        'studio' => 'visible',
        'label' => 'LBL_PROB_SANT_PA',
        'width' => '10%',
        'default' => true,
        'name' => 'prob_sant_pa',
      ),
      
      'exp_illn_keyw' => 
      array (
        'type' => 'varchar',
        'studio' => 'visible',
        'label' => 'LBL_EXP_W_ILLNESS_KEYW',
        'width' => '40%',
        'default' => true,
        'name' => 'exp_illn_keyw',
      )
    ),
    'advanced_search' => 
    array (
      'code_ident' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_CODE_IDENT',
        'width' => '10%',
        'default' => true,
        'name' => 'code_ident',
      ),
      'first_name' => 
      array (
        'name' => 'first_name',
        'default' => true,
        'width' => '10%',
      ),
      'last_name' => 
      array (
        'name' => 'last_name',
        'default' => true,
        'width' => '10%',
      ),
      'langue_parlee' => 
      array (
        'type' => 'SmartDropdown',
        'studio' => 'visible',
        'label' => 'LBL_LANGUE_PARLEE',
        'width' => '10%',
        'default' => true,
        'name' => 'langue_parlee',
      ),
      'org_ref_recrut' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_ORG_REF_RECRUT',
        'width' => '10%',
        'default' => true,
        'name' => 'org_ref_recrut',
      ),
      'created_by' => 
      array (
        'type' => 'assigned_user_name',
        'label' => 'LBL_CREATED',
        'width' => '10%',
        'default' => true,
        'name' => 'created_by',
      ),
    ),
  ),
  'templateMeta' => 
  array (
    'maxColumns' => '3',
    'maxColumnsBasic' => '4',
    'widths' => 
    array (
      'label' => '30',
      'field' => '30',
    ),
  ),
);
;
?>
