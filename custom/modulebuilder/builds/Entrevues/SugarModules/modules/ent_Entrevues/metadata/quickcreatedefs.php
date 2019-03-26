<?php
$module_name = 'ent_Entrevues';
$viewdefs [$module_name] = 
array (
  'QuickCreate' => 
  array (
    'templateMeta' => 
    array (
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'useTabs' => false,
      'tabDefs' => 
      array (
        'DEFAULT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'date_entrevue',
            'label' => 'LBL_DATE_ENTREVUE',
          ),
          1 => 
          array (
            'name' => 'ent_entrevues_users_name',
            'label' => 'LBL_ENT_ENTREVUES_USERS_FROM_USERS_TITLE',
          ),
        ),
      ),
    ),
  ),
);
;
?>
