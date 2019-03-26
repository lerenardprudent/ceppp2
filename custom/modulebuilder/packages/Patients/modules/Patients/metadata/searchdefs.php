<?php
$module_name = 'pat_Patients';
$searchdefs [$module_name] = 
array (
  'layout' => 
  array (
    'basic_search' => 
    array (
      'code_ident' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_CODE_IDENT',
        'width' => '10%',
        'default' => true,
        'name' => 'code_ident',
      ),
      'prenom' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_PRENOM',
        'width' => '10%',
        'default' => true,
        'name' => 'prenom',
      ),
      'nom' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_NOM',
        'width' => '10%',
        'default' => true,
        'name' => 'nom',
      ),
      'centre_recrutement' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_CENTRE_RECRUTEMENT',
        'width' => '10%',
        'default' => true,
        'name' => 'centre_recrutement',
      ),
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
      'prob_sant' => 
      array (
        'type' => 'SmartDropdown',
        'studio' => 'visible',
        'label' => 'LBL_PROB_SANT',
        'width' => '10%',
        'default' => true,
        'name' => 'prob_sant',
      ),
      'etabl_sante' => 
      array (
        'type' => 'SmartDropdown',
        'label' => 'LBL_ETABL_SANTE',
        'width' => '10%',
        'default' => true,
        'name' => 'etabl_sante',
      ),
      'domaine_soin' => 
      array (
        'type' => 'SmartDropdown',
        'label' => 'LBL_DOMAINE_SOIN',
        'width' => '10%',
        'default' => true,
        'name' => 'domaine_soin',
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
      'label' => '10',
      'field' => '30',
    ),
  ),
);
;
?>
