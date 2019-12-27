<?php
$module_name = 'pat_Formation';
$viewdefs [$module_name] = 
array (
  'EditView' => 
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
          0 => 'name',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'formation_par_qui',
            'label' => 'LBL_FORMATION_PAR_QUI',
          ),
          1 => 
          array (
            'name' => 'date_formation',
            'label' => 'LBL_DATE_FORMATION',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'exp_sante',
            'studio' => 'visible',
            'label' => 'LBL_EXP_SANTE',
          ),
          1 => 
          array (
            'name' => 'exp_sante_details',
            'studio' => 'visible',
            'label' => 'LBL_EXP_SANTE_DETAILS',
          ),
        ),
      ),
    ),
  ),
);
;
?>
